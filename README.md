# fishao_re — FISHAO (Reborn / AIR) reverse engineering & modding workspace

`fishao.net` "FISHAO – Reborn" AIR istemcisinin tersine mühendislik, protokol analizi ve mod geliştirme çalışma alanı. Tüm istemci kodu `com.ax3.*` (protokol katmanı `com.ax3.jss.*`), protokol modelleri `protocol.cr.*` / `protocol.sr.*` / `protocol.api.*`.

**Son güncelleme:** 2026-11-06 — depo yapısı sadeleştirildi, `docs/05-backend.md` eklendi, git deposu oluşturuldu.

---

## Durum

| Alan | Durum |
|---|---|
| İstemci analizi | ✅ 1843 AS3 sınıfı (v2.4.0) + 1847 (v2.5.1, obfuscated) decompile edildi |
| Wire protocol | ✅ JSON over WebSocket, 294 mesaj tipi (`docs/wire-types.json`) |
| Balık tutma akışı | ✅ Çözüldü — catch kararı tamamen client-side, balık seçimi server-side |
| Anti-cheat | ✅ Saat-drift kontrolü + HTTP `/bug_report` telemetrisi (screenshot + konsol logu) |
| Backend referansı | ✅ `docs/05-backend.md` — oturum akışı, mesaj sözleşmeleri, `UpdateResp` sözlüğü, MVP planı |
| Proxy | ⬜ Yazılmadı — tasarım `docs/04-plan.md` §Faz 1, yer `proxy/` |
| Client repoint | ⬜ Yapılmadı — P-code patch tarifi `docs/04-plan.md` §Faz 2 |
| Client patch (minigame auto-hold) | ✅ 2.5.1 + 2.4.0; canlı sunucu balığı veriyor |
| Client patch (auto-shell) | ✅ 2.4.0 + 2.5.1 build'leri mevcut (aşağıya bak) |
| Server trust doğrulaması | 🟡 Kısmi — süre kontrolü doğrulandı; `protect_key` / rate limit açık |

**Ana bulgu:** `FishingRsltReq` yalnızca `isCaught: bool` + client'ta hesaplanan `protect_key` taşır. Balığın kimliği ve boyu sunucudan gelir (`FishingResp`), "yakaladım" beyanı ise istemciden. Sunucu en az bir süre kontrolü uygular (~1.2 sn'de gönderilen sonuç reddedilir).

---

## Depo yapısı

```
fishao_re/
├─ README.md
├─ .gitignore
├─ docs/
│  ├─ 01-bulgular.md         # binary/SWF yapısı, anti-cheat, sınırlar
│  ├─ 02-protokol.md         # wire format, endpoint'ler, mesaj kataloğu
│  ├─ 03-kod-haritasi.md     # sınıf/dosya/satır referansları
│  ├─ 04-plan.md             # fazlar, proxy tasarımı, açık sorular
│  ├─ 05-backend.md          # ★ sunucu tarafı referansı + MVP backend planı
│  ├─ 06-avantajlar.md       # fish filter, otomasyon, veri analizi
│  └─ wire-types.json        # 294 mesaj tipinin fully-qualified adları
├─ src/as3/
│  ├─ 2.4.0/                 # FFDec decompile (kaynak gerçeği, satır numaraları buna göre)
│  └─ 2.5.1/                 # obfuscated decompile (hash'lenmiş sınıf adları)
├─ clients/
│  ├─ 2.4.0/FlashFishaoGame.swf   # orijinal 2.4.0 (8.484.494 B)
│  └─ 2.5.1/FlashFishaoGame.swf   # orijinal 2.5.1 (9.779.388 B)
├─ runtime/                  # AIR SDK `adl` harness (test kopyası)
│  ├─ adl-app.xml            # → out/FlashFishaoGame.hold.swf
│  ├─ adl-app-autoshell.xml  # → out/FlashFishaoGame.hold_autoshell.swf
│  ├─ run-adl.bat
│  ├─ run-adl-autoshell.bat
│  ├─ icons/
│  └─ out/
│     ├─ FlashFishaoGame.hold.swf                 # 2.5.1 auto-hold (canonical)
│     ├─ FlashFishaoGame.hold_autoshell.swf       # 2.5.1 hold + auto-shell (importScript, canonical)
│     ├─ FlashFishaoGame.hold_autoshell.helper.swf# 2.5.1 hold + auto-shell (helper ABC, fallback)
│     └─ FlashFishaoGame.hold_autoshell.2.4.0.swf # 2.4.0 hold + auto-shell (legacy)
├─ data/
│  ├─ live/                  # sunucudan çekilen client verisi (fish, rods, baits, resources, en, tr)
│  └─ reference/             # wiki/scrape kaynakları + türetilmiş tablolar
├─ tools/
│  ├─ swf.py                 # minimal SWF reader/writer (DoABC tag'leri)
│  ├─ patch_hold_green.py    # _relativePos = 50 (2.4.0 + 2.5.1 byte pattern)
│  ├─ patch_autoshell.py     # LocationModel burst (2.4.0, FFDec importScript)
│  └─ patch_autoshell_251.py # aynısı, obfuscated 2.5.1 sınıfı için
└─ proxy/                    # (plan) WS + HTTP relay
```

`runtime/` içindeki AIR kurulum kopyası (`Adobe AIR/`, `FishaoGame.exe`, `META-INF/`, `unins000.*`) `.gitignore`'da; gerektiğinde `C:\Program Files (x86)\Fishao`'dan kopyalanır.

---

## Çalıştırma — AIR SDK `adl`

HARMAN captive runtime, `META-INF/AIR/license.txt` lisansını paket içeriğine bağlar: ABC değişince `Security warning - invalid license` verir. Bu yüzden modlu SWF'ler `FishaoGame.exe` ile **açılmaz**; debug launcher `adl` kullanılır.

1. AIR SDK 51.5.1 kur (veya `AIR_HOME` ver): `C:\Users\barankrky\sdks\air\AIRSDK_51.5.1`
2. `runtime\run-adl.bat` (hold) veya `runtime\run-adl-autoshell.bat` (hold + auto-shell)
3. AIR aynı app ID için tek instance kabul eder — önce `FishaoGame.exe` / diğer `adl` kapatılmalı.

Yeniden üretim:

```bash
python tools/patch_hold_green.py clients/2.5.1/FlashFishaoGame.swf runtime/out/FlashFishaoGame.hold.swf
python tools/patch_autoshell_251.py runtime/out/FlashFishaoGame.hold.swf runtime/out/FlashFishaoGame.hold_autoshell.2.5.1.swf
```

FFDec (export/import) için `FFDEC` ortam değişkeni: varsayılan `C:\Users\barankrky\fishao_work\ffdec\ffdec-cli.jar`.

---

## Patch'ler

### Auto-hold (minigame)

`BiteProcessPanelAsset.update()` içindeki `_relativePos += _sail` satırı `_relativePos = 50` yapılır; pointer yeşil bölgenin merkezinde kalır. Oyun **normal sürede** kazanır (`_progress` her tick artar → `stopWithWin()`), sunucu balığı verir.

Instant `stopWithWin()` **çalışmaz**: `FishingRsltReq` `FishingResp`'ten ~1.2 sn sonra gider, sunucu reddeder (ses çalar, balık gelmez).

### Auto-shell

`UpdateResp.data.shells` / `shellAppeared` geldiğinde her kabuk için anında `CollectShellReq` burst'ü (5×) gönderilir; retry 80/160/320 ms. `AUTO_SHELL_SPOOF_POSITION` ile oyuncu pozisyonu kabuğa taşınıp geri alınır (sunucu mesafe kontrolü aşılmaz). 2.5.1'de sınıf adları obfuscated; patch `src/as3/2.5.1/.../_4039c287ddb4ef46ab65ab0e.as` (LocationModel) üzerinden FFDec `-importScript` ile gider.

```bash
# 2.5.1: hold + autoshell (tek komut, build sonrası otomatik doğrulama)
python tools/patch_autoshell_251.py runtime/out/FlashFishaoGame.hold.swf runtime/out/FlashFishaoGame.hold_autoshell.swf
#   ok hold patch preserved / vanilla hold removed / AUTO_SHELL_ENABLED / collectShellBurst / scheduleShellRetry
```

Hold yaması başka bir sınıfta (`BiteProcessPanelAsset`) olduğu için `-importScript` yeniden derlemesinden etkilenmez; araç bunu ve enjeksiyonu her build'de doğrular. `hold_autoshell.helper.swf` önceki ABC-helper yaklaşımının çalışan build'idir, fallback olarak durur.

---

## Ortam

| Araç | Konum / sürüm |
|---|---|
| Java | `C:\Program Files\Microsoft\jdk-21.0.12.101-hotspot` (21.0.12) |
| FFDec | `C:\Users\barankrky\fishao_work\ffdec\ffdec-cli.jar` (v26.4.0) |
| Python | `C:\Python315\python.exe` (3.15) |
| Node | v24.22.1 / npm 11.19.1 |
| AIR SDK | `C:\Users\barankrky\sdks\air\AIRSDK_51.5.1` |
| İstemci | `C:\Program Files (x86)\Fishao\` |

Yeniden decompile:

```bash
java -jar %FFDEC% -export script E:\workspace\fishao_re\src\as3\2.4.0 E:\workspace\fishao_re\clients\2.4.0\FlashFishaoGame.swf
```

---

## Sıradaki iş

1. **Faz 3 trust testleri** — bozuk `protect_key`, rate limit, `CancelFishingReq` cooldown (`docs/04-plan.md`).
2. **Faz 1 proxy** — `proxy/` iskeleti; `docs/05-backend.md` §11 mesaj sırası referans.
3. **Faz 4 fish filter** — `FishingResp.fishId = -1` mutasyonu (aynı `reqId`).
4. **Faz 6 kendi sunucun** — `docs/05-backend.md` MVP planı.

---

## Yasal not

İstemci kodu ve asset'leri GamoVation'a aittir; bu depo kişisel RE çalışmasıdır ve **private** tutulur. Değiştirilmiş istemciyi `fishao.net` / `fishao.eu` gibi fan sunucularında kullanmak hesap banı ile sonuçlanabilir (client-side rapor tag'leri ve `/bug_report` telemetrisi var). Yerel test ve özel sunucu geliştirme açısından sorun yoktur.
