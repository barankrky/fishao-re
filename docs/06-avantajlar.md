# 06 — Kazanılabilecek Diğer Avantajlar

Tarih: 2026-11-05. Kaynak: `src/as3/2.4.0` (client 2.4.0), canlı `data/live/fish.json` / `rods.json` / `baits.json`, ve `runtime/out/FlashFishaoGame.hold.swf` üzerinde yapılan deneyler.

---

## 0. Özet

| # | Avantaj | Yöntem | Efor | Risk | Durum |
|---|---|---|---|---|---|
| 1 | **Kötü balığı iptal et / reroll** | `PlayerChar.showBitePanel`'e rating filtresi + `cancelFishing(true,true)` | Düşük | Düşük (normal `CancelFishingReq`) | Denenmedi |
| 2 | **Otomatik cast döngüsü** | `onBiteCaught`/`onBiteLost` → `setTimeout(sendStartFishing, ...)` | Orta | Orta (bot davranışı) | Denenmedi |
| 3 | **`fishingLog`'u yakala** | `UpdateResp.data.fishingLog` → `trace`/konsol | Düşük | Yok | Tespit edildi, yakalanmadı |
| 4 | **Daha hızlı ısırık** | `UPDATE_DELAY_MS` 35→daha düşük / `randomGameSize` küçült / 1200 ms→128 ms | Düşük | Düşük-orta (sunucu min süresi) | Kısmen test edildi |
| 5 | **Veri odaklı hedef** | `fish.json`'dan location/bait/time/rating | Yok | Yok | Analiz edildi |
| 6 | **`isDebugMode` denemesi** | `StartFishingReq.isDebugMode = true` | Düşük | Orta/yüksek (flag) | Denenmedi |
| 7 | **Auto-sell / fishbox** | `SellFishReq`, `OpenFishboxReq` | Orta | Düşük | Denenmedi |
| 8 | **CheatProtection'ı kapat** | `GameSwf.initCheatProtection()` no-op | Düşük | Düşük | Gerekmedi |
| 9 | **Hız / movement** | `FieldChar.updateSpeedMultiplier` | Orta | Yüksek (ban) | Önerilmez |
| 10 | **Auto-shell (menzilsiz)** | `LocationModel.parseShells` / `shellAppeared` → `CollectShellReq` kuyruğu | Düşük | Düşük-orta (rate limit) | ✅ Uygulandı — `hold_autoshell.swf` |

---

## 1. Enabler: AS3 sınıf importu (yeni)

FFDec `-importScript` ile **tek bir sınıf** yeniden derlenip SWF'e yazılabiliyor. Tüm ağacı import etmek compiler hatalarına takılıyor, ama tek dosya çalışıyor:

```bash
# sadece protocol/cr/StartFishingReq.as içeren klasör
java -jar ffdec-cli.jar -onerror abort -importScript clients/2.4.0/FlashFishaoGame.swf out.swf import_folder
```

Doğrulananlar:

- `protocol.cr.StartFishingReq` — `isDebugMode = true` eklendi, SWF açıldı, FFDec decompile etti.
- `com.ax3.fishao.locations.entries.PlayerChar` — no-op import başarılı (929 satır).
  - Decompiler artefaktı: `param3:Number = NaN` default'u FFDec compiler'ında "Default value must be compiletime constant" veriyor. Çözüm: `= -999999` + gövdede `if(param3 == -999999) param3 = NaN;` (davranış aynı).
- Bu yol, P-code byte patch'lerinden çok daha geniş: filtre, otomatik cast, log yakalama gibi özellikler AS3 ile yazılabilir.

`hold` patch'i de AS3 ile yapılabilir: `BiteProcessPanelAsset.update()` içinde `this._relativePos += this._sail;` → `this._relativePos = 50;`.

---

## 2. Kötü balığı iptal et (fish filter)

Akış:

```
FishingResp{fishId} → PlayerChar.onResponse → onUserCatchFishOnHook
   → setTimeout(showBitePanel, 1200, fishLength, rating, ...)
```

`showBitePanel(param1=fishLength, param2=rating, ...)` içinde rating eşiği:

```as3
public function showBitePanel(param1:int = 10, param2:int = 1, param3:Boolean = false, param4:Number = 1) : void
{
   if(app.user.inFishingProcess.value == false) return;
   if(param2 < 4)                 // 1-3 yıldızı iptal et
   {
      this.cancelFishing(true,true);   // CancelFishingReq + oltayı topla
      return;
   }
   this.showBitePanelInternal(param1,param2,param3,param4);
}
```

- `cancelFishing(true,true)` `FieldChar.as:1645`; sunucuya `CancelFishingReq` gönderir, `inFishingProcess=false`, oltayı toplar.
- Balık sunucuda zaten seçilmiş; iptal onu tüketir, yeniden cast yeni balık getirir.
- Eşik `4` (1-3★ iptal) veya `5` (sadece 5★) yapılabilir. 5★'da cast başına isabet düşer; sunucu cancel cooldown'u varsa 4 daha güvenli.
- **Test edilecek:** `CancelFishingReq` sonrası cooldown/ceza var mı? Hızlı iptal-cast döngüsü sunucuda rate limit tetikliyor mu?

---

## 3. Otomatik cast döngüsü

`PlayerChar` alanları: `_lastCellName` (private), `_lastX/_lastY` (FieldChar protected), `sendStartFishing(cell,x,y)` (private).

`onBiteCaught` sonuna:

```as3
setTimeout(this.sendStartFishing, 1500, this._lastCellName, this._lastX, this._lastY);
```

- `sendStartFishing` `PlayerChar.as:441`; `cellName` "lakeId_blockId" formatında.
- Filtre ile birleşince: kötü balık → iptal → 1.5 sn sonra tekrar cast; iyi balık → hold ile kazan → tekrar cast.
- Risk: tam AFK bot; sunucu tekdüzelik/rate limit görebilir. İnsan benzeri rastgele gecikme (1200-2500 ms) eklenmeli.
- `onBiteClose` (manuel iptal) otomatik cast'a bağlanmamalı; sadece `onBiteCaught`/`onBiteLost`.

---

## 4. `fishingLog` — sunucunun balık seçim hesabı

`UpdateResp.data` içinde `fishingLog` alanı var; `GameSwf.as:1228`:

```as3
case "fishingLog":
   fishingLog = response.getStringData(property);
   fishingLog = "------- FISHING CALCULATION: ----\n" + fishingLog + ...;
   Cc.logch("fishing", fishingLog);
```

Yani sunucu, her yakalamadan sonra **balık seçim hesabını** metin olarak gönderiyor ve client JunkByte konsolunun "fishing" kanalına yazıyor.

- Bu log; ağırlıklar, bait/rod/location/time etkisi, length RNG'si hakkında bilgi verebilir.
- Yakalama yolları:
  1. JunkByte konsolunu aç (`<fishadminconsoledebug>` + Ctrl+Shift) → "fishing" kanalı.
  2. `Cc.logch`'u `trace`'e yönlendiren bir logging SWF'i (AS3 import) → `adl` stdout.
  3. `GameSwf.updateResponseHandle` içindeki `Cc.logch` çağrısını P-code ile `trace`'e çevir.
- Bu, "hangi balık neden geldi" sorusunun en doğrudan cevabı; filtre/gear optimizasyonu için en değerli veri.

---

## 4.5 Auto-shell — menzilsiz toplama

Akış:

```
UpdateResp.data.shells / shellAppeared
    → LocationModel.parseShells() / updateHandler()
    → CollectShellReq { x, y }        (oyuncu hareket etmez)
    → UpdateResp { shellCollected: {x, y} }
```

Vanilla istemci `CollectShellReq`'i sadece `LocationDialog.inspectPlayerPosition()` içinde, oyuncu kabuğun 4 px yakınındayken gönderir. `LocationModel`'e eklenen kuyruk, sunucunun bildirdiği her kabuk için doğrudan `collectShellAt(x,y)` çağırır; mesafe kontrolü istemci tarafında yoktur.

- 150-300 ms aralık (jitter) (burst önleme), aynı nokta için duplicate filtre.
- `shellCollected` gelince nokta `shells` vektöründen de düşülür (tekrar deneme yok).
- `deactivate()` kuyruğu sıfırlar; konum değişiminde eski istekler taşınmaz.
- Uygulama: `tools/patch_autoshell.py` → `runtime/out/FlashFishaoGame.hold_autoshell.swf`.
- Test: `runtime/run-adl-autoshell.bat`.
- Sunucu mesafe doğruluyorsa istekler yok sayılabilir; o durumda `PlayerChar` tabanlı walker fallback gerekir.

---

## 5. Hız avantajları

| Parametre | Değer | Etki |
|---|---|---|
| `BiteProcessPanelAsset.UPDATE_DELAY_MS` | **35 ms** | 1 tick; 100-200 tick = 3.5-7 sn |
| `randomGameSize` | `floor(100 + rand*100) * multiplier` | 100-200 tick |
| `PlayerChar.onUserCatchFishOnHook` | `setTimeout(showBitePanel, 1200, ...)` | ısırık → panel 1.2 sn |

Ölçüm: instant `stopWithWin()` (~1.2 sn sonuç) **reddediliyor**; merkez-hold (3.5-7 sn) kabul ediliyor. Sunucuda bir **minimum süre** var.

Denenecek ayarlar:

- `setTimeout` 1200 → **128 ms** (aynı 2-byte u30: `b0 09` → `80 01`); sonuç ~1.1 sn öne gelir.
- `UPDATE_DELAY_MS` 35 → 25 (100-200 tick = 2.5-5 sn); min süreye yaklaşır.
- `randomGameSize` sabit 70-100 (2.45-3.5 sn).
- Her ayar tek tek denenmeli; reddedilen eşik `fishingLog`/`ErrorResp` ile görülür.

Not: `CheatProtection` `getTimer` vs `Date.time` bakıyor; tick süresini değiştirmek bunu tetiklemez.

---

## 6. `isDebugMode`

`protocol.cr.StartFishingReq` içinde `public var isDebugMode:Boolean;` var; **client hiç set etmiyor** (default false). Anlamı bilinmiyor:

- Sunucu debug modunda ek hesap/log/fish döndürüyor olabilir.
- `FishingResp.data` / `fishLength == -1` "FISHING CALCULATION" frame'i bununla tetikleniyor olabilir.
- Test: `StartFishingReq` importunda `isDebugMode = true`; tek cast; `FishingResp`/`UpdateResp` farkı.
- Risk: canlı sunucuda debug flag'i şüpheli görünebilir; test hesabında denenmeli.

---

## 7. Veri analizi (canlı `fish.json`, 615 balık)

- Rating: 5★ **162**, 4★ 150, 3★ 153, 2★ 102, 1★ 48.
- `catch_req` alanları: `location_ids` (615), `bait_category` (615), `fishing_place` (287), `caught_time` (115), `club_points` (56), `collections_complete` (50), `caught_date` (47), `club_unlock_by_fishcoins` (21), `fruit_combinations_done` (18).
- 5★ lokasyon yoğunluğu (ilk 10): `112` (26), `300` (20), `108` (18), `8` (15), `3` (11), `201` (11), `11` (11), `7` (6), `6` (6), `111` (6).
- **Ücretsiz hook ile 5★:** `172` (loc 1), `263` (loc 300), `517` (loc 204) — hook `bait_category:["hook"]`, time yok. Erişilebilir lokasyonda bedava 5★ hedefi.
- 5★ zaman pencereleri: `00:00-05:00` (8), `23:00-04:00` (5), `08:00-18:00` (5), `22:00-05:00` (5), `23:00-06:00` (4), `22:00-06:00` (4).
- Bait kategorileri: `fish` 2 coin (en geniş 5★ kapsamı), `meat` 1, `insects`/`lures` 1 coin + 150 fishbucks, `vegetal` 1+79, `dough`/`hook` bedava, `shark` 5, `monster` 0.
- Rodlar: length 105 (max); power 1250 (lvl 200), 1200 (lvl 22), 1000 (lvl 15), 650 (lvl 7, 199 coin), 450 (lvl 1, 75 coin). Yüksek power minigame'i kolaylaştırır (`rodSizeCm`).
- Filtre kriteri: `rating >= 4` + mevcut `location_ids` + `caught_time` + `bait_category`; `catch_req`'in club/collection/date koşulları varsa ve sağlanmıyorsa o balık zaten gelmez.

---

## 8. Auto-sell / fishbox / görevler

- `SellFishFscExtension.sellFish(fishId, fishType, amount, callback)` → `SellFishReq`; UI'daki satış akışını otomatikleştirmek mümkün.
- `UpdateCharacterFscExtension.openFishbox(callback)` → `OpenFishboxReq`; içerik sunucu RNG'si.
- `DailyQuestExtension.getPrizesData` → `DailyQuestCompleteReq`; `MissionExtension.collectReward` → `CollectMissionRewardReq`. Görev/ödül tamamlanma koşulları sunucuda; client sadece isteği gönderir.
- Bunlar "avantaj"dan çok **UI otomasyonu**; sunucu doğrulaması olmadan ekstra değer üretmez.

---

## 9. Yapılmaması gerekenler / sınırlar

- **Envanter, para, XP, level, turnuva skoru, balık kimliği/boyu/shiny**: server-authoritative; client değiştiremez.
- **`protect_key` / `isCaught` sahteleme**: süre kontrolü var; ayrıca `possible_fishbucks_cheater` rapor zinciri.
- **Movement speed / teleport**: `MvUsrToRq` sunucuya gidiyor; mesafe-zaman kontrolü/ban riski.
- **`isDebugMode`**: test hesabı olmadan canlıda denememek.
- **CheatProtection'ı kapatmak**: sadece timer drift false-positive'lerini engeller; hile tespitini değiştirmez.

---

## 10. Önerilen sıra

1. **Fish filter** (`rating >= 4`) + **hold** birleşik AS3 build; 20-30 cast ile cancel/recsat davranışını test et.
2. **`fishingLog` capture** (trace patch) → 5-10 yakalama; sunucu hesabını çıkar.
3. **Hız**: 1200→128 ms; sonra `UPDATE_DELAY_MS`/`randomGameSize`; reddedilen eşiği bul.
4. **Auto-cast** (filtre + hold + 1.5-2.5 sn rastgele gecikme).
5. **Veri/gear**: hedef lokasyon + bait + zaman penceresi; filtreyle birleştir.
