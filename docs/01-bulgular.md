# 01 — Bulgular

Tarih: 2026-11-05. Tüm bulgular `C:\Program Files (x86)\Fishao` kurulumu ve `clients/2.4.0/FlashFishaoGame.swf` üzerinde yapılan statik analize dayanır (çalıştırılmadı).

---

## 1. Kurulum yapısı

```
C:\Program Files (x86)\Fishao\
├─ FishaoGame.exe              437 KB   AIR captive runtime launcher
├─ Adobe\AIR\Versions\1.0\     gömülü AIR runtime (Adobe AIR.dll, CaptiveAppEntry.exe)
├─ META-INF\AIR\
│  ├─ application.xml          app descriptor
│  ├─ hash                     32 byte (imza yok — aşağıya bak)
│  └─ license.txt
├─ icons\                      16..512 px
├─ out\
│  ├─ FlashFishaoGame.swf      8,484,494 B   ← asıl oyun
│  └─ discord-rpc.exe          3.2 MB        Rich Presence yardımcısı
├─ mimetype                    application/vnd.adobe.air-application-installer-package+zip
└─ unins000.exe/.dat           Inno Setup uninstaller
```

`application.xml` özeti:

```xml
<id>net.fishao.game</id>
<versionNumber>2.4.0</versionNumber>
<filename>FishaoGame</filename>
<initialWindow>
  <title>FISHAO - Reborn</title>
  <content>out/FlashFishaoGame.swf</content>
  <renderMode>gpu</renderMode>
  <requestedDisplayResolution>high</requestedDisplayResolution>
  <width>1280</width><height>720</height>
</initialWindow>
```

Yani bu, `fishao.net` tarafından orijinal Flash istemcisinin AIR için yeniden derlenmiş hâli ("FISHAO – Reborn"). Blog'da anlatılan yaklaşımın somut çıktısı.

### İmza durumu — önemli

`META-INF/AIR/signatures.xml` **yok**. Sadece 32 byte'lık `hash` dosyası var. Yani paket imzasız; içerik hash doğrulaması yapan bir imza bloğu bulunmuyor.

**Sonuç (2026-11-05 ampirik):** `out/FlashFishaoGame.swf`'i değiştirmek **yetmiyor**. HARMAN AIR captive runtime, `META-INF/AIR/license.txt` içindeki imzalı lisansı paket içeriğine bağlıyor; ABC değişince `Security warning - invalid license` verip açılmıyor. Aynı SWF'in yeniden sıkıştırılmış hâli (aynı uncompressed gövde) açılıyor → kontrol içerik hash'i. Çözüm: AIR SDK `adl` debug launcher (README §Client patch).

Alternatif çalıştırma yolları: AIR SDK `adl` (doğrulanan yol), Flash Player projector 32.0.0.465 veya Ruffle (ikisi de `air.net.WebSocket` / `flash.filesystem.File` için shim gerektirir).

---

## 2. SWF dosyası

| Özellik | Değer |
|---|---|
| Sıkıştırma | `CWS` (zlib) |
| SWF version byte | `51` (AIR 51.x hattı) |
| Dosya boyu | 8,484,494 B |
| Header'da yazan uncompressed | 11,189,458 B |
| Gerçek decompressed payload | 11,189,450 B (8 byte header sonrası) |
| ActionScript | AS3 (DoABC / AVM2) |
| Decompile edilen sınıf | **1,843** |

Decompress + decompile komutları:

```python
# ham gövde
import zlib
d = open('clients/2.4.0/FlashFishaoGame.swf','rb').read()
open('raw.bin','wb').write(zlib.decompress(d[8:]))
```

```bash
java -jar ffdec-cli.jar -export script <outdir> clients/2.4.0/FlashFishaoGame.swf
```

SWF içinde en az bir gömülü SWF binary'si var (`_assets/assets.swf` embed'leri — `assets.general.*` sınıflarındaki `[Embed(source="/_assets/assets.swf", symbol="symbolNNNN")]` anotasyonları). Yani sprite/ses/font kütüphanesinin büyük kısmı ana SWF'in içinde paketli.

**Ayrıca:** oyunun bir kısmı runtime'da HTTP üzerinden çekiliyor. Tam envanter `02-protokol.md` §4'te; özetle:

- `data/*.json` — `fish` (615 balık, 265 KB), `rods`, `baits`, `countries`, `timezones`, `clothes`, `resources`, `looks`, `bobbers`, `fossils`, `fruits`, `private.house.interior`
- `data/langs/<lang>.json` — `tr` 533 KB, `en` 429 KB (**yoksa oyun boot'ta durur**)
- `data/swf/dialogs/<isim>.swf` — dialog modülleri, **küçük harfli** dosya adları (`shopDialog.swf`, `trade_fish.swf`, ...)
- `data/swf/FlashFishaoCharacterEditor_1_0_218.swf` (5 MB), `data/swf/AnimatedCharacter_2.swf`, `data/swf/locations/*`
- `data/sounds/*.swf`, `data/image/*`, `img/flags/*`
- `/version` (minClient kontrolü), `/recover`, `/terms`, `/play`, `/bug_report`

Not: `DialogFishingLine` uzaktan yüklenmiyor — gömülü (`DialogFishingLineAsset`). Daha önce burada yazan `data/swf/DialogFishingLine.swf` yolu **404**; dialog'lar `data/swf/dialogs/` altında. Ayrıca `play.fishao.net`'de `crossdomain.xml` yok (404) ama AIR uygulama sandbox'ı veri yüklemeyi yine de yapıyor — lokal relay'de de policy dosyası gerekmiyor gibi görünüyor (Faz 1'de teyit edilecek).

### Kod tabanı

- Namespace: `com.ax3.*` (geliştirici stüdyo prefix'i; protocol katmanı `com.ax3.jss.*`)
- Oyun katmanı: `com.ax3.fishao.*` (locations, chars, dialogs, managers, tutorial)
- Protokol modelleri: `protocol.cr.*` (client→server request), `protocol.sr.*` (server→client response), `protocol.api.*` (özellik bazlı request/response çiftleri)
- Debug altyapısı hâlâ içinde: `com.junkbyte.console.Cc` (JunkByte Console), `com.demonsters.debugger` (Monster Debugger), `globalLogger`

Yani **release build'de debug konsolu bile duruyor** — `Cc` çağrıları kodda mevcut.

---

## 3. Wire protocol — özet

Detay `02-protokol.md`'de. Kısa hâli:

- **JSON over WebSocket text frame**
- Client→server: `{"t":"protocol.cr.LoginReq","d":{...},"reqId":17}`
- Server→client: aynı + `maintenanceTime`, `maintenanceIn`, `needLog`
- `t` alanı **fully-qualified** sınıf adı (`protocol.cr.FishingRsltReq`), 294 tip kayıtlı
- Endpoint'ler (prod): `wss://play.fishao.net/ws`, `https://play.fishao.net/`
- `BuildConfig.BUILD_TYPE = "prod"` — bunu `"local"` yapmak istemciyi `ws://localhost:8080/ws` + `http://localhost:8080/`'e çevirir. **Tek satır**, yerel sunucu geliştirmek için hazır anahtar.

---

## 4. Balık tutma akışı — en kritik bulgu

### 4.1 Akış

```
[CLIENT]  StartFishingReq { lakeId, blockId, x, y }
                 ↓
[SERVER]  FishingResp { fishId, fishLength, isShiny, timestamp, data }
                 ↓           ← balık BURADA belirleniyor, sunucuda
[CLIENT]  (1200 ms bekleme) → BiteProcessPanel minigame
                 ↓
[CLIENT]  FishingRsltReq { isCaught: true|false, tournament_id, protect_key }
                 ↓           ← karar BURADA, istemcide
[SERVER]  sonuç: envanter/XP/para
```

### 4.2 Kararı veren kod

`com/ax3/fishao/locations/entries/PlayerChar.as`

```as3
:148  private function get protectKey() : String
:150  { return MD5.hash(this._lastFishId.toString() + this._lastFishLength.toString() + this._biteTimeStart.toString()); }

:174  protected function onBiteLost(param1:Event) : void
:178  { ... FishaoFscModelManager.locationExtension.isCatched(false, this.getTournamentId(), this.protectKey); }

:203  private function onBiteCaught(param1:Event) : void
:207  { ... FishaoFscModelManager.locationExtension.isCatched(true,  this.getTournamentId(), this.protectKey); }
```

`protocol/cr/FishingRsltReq.as` — gönderilen her şey:

```as3
public class FishingRsltReq extends ClientRequest {
   public var isCaught:Boolean;      // ← tek gerçek bilgi
   public var tournament_id:String;
   public var protect_key:String;    // MD5(fishId + fishLength + biteTimeStart)
}
```

### 4.3 Değerlendirme

- `protect_key` bir HMAC değil: **istemcinin az önce aldığı üç public değerin MD5'i**. Sunucu bunu ancak "benim gönderdiğim değerlerle tutarlı mı" diye kontrol edebilir; client bu değerleri zaten biliyor, dolayısıyla taklit edilebilir.
- Sunucunun "yakaladın mı" bilgisini bağımsız doğrulayabileceği bir kanal yok — minigame tamamen yerel.
- Sunucu tarafında muhtemelen sadece **süre/eşleşme kontrolü** var (start ile sonuç arasındaki süre, `protect_key` tutarlılığı). Bu da "balığı ıskaladım" diyebilmeni engeller, ama "yakaladım" demeni engellemez.
- **Kanıt (yeni):** `FishingFscExtension.sendIsFishCaught` (`:23`) `protect_key`'i hiç set etmiyor; `FieldChar.sendResult()` (`:299`, ölü debug metodu) bu yolu `Math.random() > 0.5` ile çağırıp `Cc.error("sendResult with random")` + `sendReportToServer("sendResult")` yapıyor. Geliştiricilerin key'siz sonuç göndermiş olması, sunucunun `protect_key`'i katı doğrulamadığına dair güçlü ipucu — Faz 3'te teyit edilecek.

### 4.4 Minigame (tamamen yerel)

`com/ax3/fishao/display/panels/BiteProcessPanelAsset.as`

```as3
:254  start()          → _gameSize = randomGameSize (her ısırıkta rastgele zorluk)
:285  update(...)      → _progress 0.._gameSize; fare sol/sağ ile yeşil bölgede tut
:456  stopWithLose()   → dispatchEvent(Event.CANCEL)   → onBiteLost
:481  stopWithWin()    → dispatchEvent(Event.COMPLETE) → onBiteCaught
:
:403-434  _progress -= 5 / -= 3 / -- / ++ ; 0 → kayıp, _gameSize → kazanç
```

Yani kazanma koşulu = `_progress >= _gameSize`. Tek değişken.

**Ampirik (2026-11-05):** `update()`'i doğrudan `stopWithWin()` yapıp sonucu `FishingResp`'ten ~1.2 sn sonra göndermek **sunucu tarafında reddediliyor** — istemci kazanç sesini çalıyor, balık envantere düşmüyor. Pointer'ı her tick'te merkeze (`_relativePos = 50`) sabitleyip mini-game'ı normal sürede bitirmek kabul ediliyor. Yani sunucu `FishingResp` → `FishingRsltReq` arasında bir **minimum süre** (veya normal mini-game süresi) bekliyor; açık soru #1'in cevabı: evet, süre kontrolü var.

---

## 5. Anti-cheat

Tek client-side koruma: `com/ax3/fishao/utils/CheatProtection.as:62`

```as3
// her 6 saniyede bir: getTimer() ile Date.time farkı %4'ten fazla saparsa
// 6 ardışık sapmada SecurityErrorEvent
```

Bu **yalnızca SpeedHack / timer hilesi** dedektörü. Olmayan şeyler:

- SWF/kod integrity kontrolü: **yok**
- Bellek taraması / değişken doğrulama: **yok**
- Paket imzalama / nonce / server-issued challenge: **yok** (`protect_key` istemcide üretiliyor)
- Sunucu tarafı davranışı bilinmiyor (server kodu elimizde yok; canlı endpoint var). `BannedUsersListResp`, `ApplyPenaltyReq` gibi moderasyon mesajları var → sunucu tarafında bir şüphe/heuristic katmanı olabilir.

### 5.1 Raporlama kanalı (dokümantasyonda eksikti)

`possible_fishbucks_cheater` bir sunucu flag'i değil, **client-side rapor tag'i** (`ManagerTrade.as:474`). Zincir şu:

```
GameSwf.sendReportToServer(tag)            (GameSwf.as:567)
  → Cc.sendToServer(Config.BUG_REPORT_URL, true, tag)   (Cc.as:652)
  → HTTP POST: console.getAllLog() + tam ekran PNG + stack trace
```

- 49 çağrı noktası var (`location`, `updateResp`, `wrongNoFloatState`, `possible_fishbucks_cheater`, ...).
- `_sentReportToServer` guard'ı yüzünden oturum başına **yalnızca ilk rapor** gider.
- `CheatProtection` tetiklenirse `"6060.B"` tag'iyle rapor gidip bağlantı kopar (`GameSwf.as:1002-1013`).
- Yani "sadece saat-drift kontrolü" tespit tarafı için doğru; ama telemetri tarafı (screenshot + konsol logu) istemcide mevcut ve `BUILD_TYPE="local"` bunu da localhost'a yönlendirir.

`GameSwf.as:1002 initCheatProtection()` ve `:1148` çağrısı — devre dışı bırakmak için tek yol bu metodu no-op yapmak.

---

## 6. Ne yapılabilir / ne yapılamaz

### Yapılabilir

| Seviye | İş | Zorluk | Sunucuya görünürlük |
|---|---|---|---|
| QoL | Bite beklemesini 1200 ms → 0 | ★ | yok |
| QoL | Minigame'i kolaylaştır (yeşil bölge, sensitivity, `_gameSize`) | ★ | yok |
| QoL | `CheatProtection`'ı kapat | ★ | yok |
| Cheat | `isCaught` her zaman `true` (client patch **veya** proxy rewrite) | ★ | düşük — sunucu süre kontrolü yapıyorsa reddedilebilir |
| Cheat | Minigame'i anında bitir (`_progress = _gameSize`) | ★★ | aynı |
| **Akıllı** | **Kötü balık gelirse `CancelFishingReq` → yeniden at** (paket sahteleme yok) | ★★ | çok düşük — tamamen legal oyun akışı |
| Bot | Otomatik cast + reel döngüsü (AFK farm) | ★★★ | düşük ama tekdüzelik yakalanabilir |
| RE | Tüm asset + balık tablolarını çıkarmak | ★★ | — |
| RE | Kendi sunucun (client'ı `localhost:8080`'e çevirip) | ★★★★ | — |

### Yapılamaz / kısıtlı

- **Envanter, para, XP, level, turnuva skoru**: server-authoritative. İstemci sadece ne *yakaladığını* söyler; ne *aldığını* sunucu belirler.
- **Rastgele balık seçimi**: `fishId`/`fishLength` sunucudan geliyor. İstemci "şu balığı istiyorum" diyemez — sadece "bunu istemiyorum" diyebilir (cancel).
- **Diğer oyunculara görünen skorlar**: sunucudan geçtiği için istemci tarafında değiştirilemez.

---

## 7. Doğrulanmamış varsayımlar (Faz 3'te test edilecek)

1. Sunucu `isCaught: true`'yu süre kontrolü olmadan kabul ediyor mu? (`StartFishing` ile `FishingRslt` arasında min. süre var mı?) — **cevap (2026-11-05): evet, süre kontrolü var.** ~1.2 sn'de gönderilen sonuç reddediliyor (ses çalar, balık gelmez); normal mini-game süresinde (~3-5 sn) gönderilen sonuç kabul ediliyor.
2. `protect_key` gerçekten doğrulanıyor mu, yoksa görmezden mi geliniyor? — **ipucu:** `FieldChar.sendResult()` key'siz gönderiyor (bkz. §4.3), muhtemelen görmezden geliniyor.
3. `CancelFishingReq` sonrası sunucu ceza/cooldown uyguluyor mu?
4. WS handshake'te `Origin` veya başka bir header/token şartı var mı? — **ipucu:** AIR `WebSocket` browser Origin'i göndermez ve prod'a bağlanabiliyor → proxy için ek header gerekmiyor olabilir.
5. `FishingResp.data` alanı ne içeriyor? — **ipucu:** `GameSwf.onFishingResp` (`:323`), `fishLength == -1` olan frame'de `data`yı "FISHING CALCULATION" olarak konsola basıyor. Sunucu balık seçim hesabını debug frame'i olarak gönderiyor olabilir; Faz 1 logunda bu frame'leri ayrı işaretle.
6. İmzasız SWF değişimi AIR captive runtime'da sorunsuz çalışıyor mu?
7. `protocol.api.*` mesajları `reqId` ile mi eşleşiyor, yoksa ayrı bir correlation var mı?
