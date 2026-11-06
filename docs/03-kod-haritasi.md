# 03 — Kod Haritası

Tüm yollar `E:\workspace\fishao_re\src\as3\2.4.0\` görecelidir. Satır numaraları `clients/2.4.0/FlashFishaoGame.swf` (v2.4.0) decompile çıktısına aittir.

---

## 1. Bağlantı / protokol katmanı

| Dosya | Satır | Ne yapar |
|---|---|---|
| `com/ax3/jss/JsonProtocol.as` | :305 | `WIRE_TYPES` — 294 mesaj tipinin kayıt tablosu |
| | :322 | `encode()` — envelope üretimi, `reqId` köke taşınır |
| | :355 | `decode()` — gelen JSON'u sınıfa çevirir, bilinmeyen tip → `null` |
| `com/ax3/jss/FscConnection.as` | :36 | `tracePackets = !isProd()` — release'te loglama gövdesi boş |
| | :120 | `connect(url)` — `air.net.WebSocket` |
| | :166 | `send(request, callback)` — `++reqId`, callback `KeyCallbackDispatcher`'a |
| | :269 | `handleSocketData()` — gelen frame → `JsonProtocol.decode` → handler |
| | :380 | `lookupHost()` — DNS hatasında A kaydı loglar |
| `com/ax3/jss/ConnectionPhase.as` | — | bağlantı durum makinesi |
| `com/ax3/jss/FscConnectionMediator.as` | — | UI ile bağlantı durumu köprüsü |
| `com/ax3/jss/requests/client/ClientRequest.as` | :6 | `reqId` alanı |
| `com/ax3/jss/requests/server/ServerResp.as` | :6 | `reqId`, `maintenanceTime`, `maintenanceIn`, `needLog` |
| `com/ax3/jss/ext/impl/*.as` | — | özellik bazlı extension'lar (`LocationFscExtension`, `FishingFscExtension`, `MissionExtension`, ...) |

### Handler kayıtları

`GameSwf.as:1139-1144` civarı:

```as3
FishaoFscModelManager.fscModel.addRequestHandler(FishingResp, onFishingResp);   // :1139
addRequestHandler(FishCatchEmoticonResp, onFishCatchEmoticon);
addRequestHandler(UpdateResp, updateResponseHandle);
addRequestHandler(ReportChangeStateResp, ...);
addRequestHandler(FishBlocksAtLakesDataResp, ...);
```

Yeni bir mesaj tipini dinlemek istiyorsan handler burada (veya ilgili extension'da) eklenir.

---

## 2. Balık tutma — uçtan uca

### 2.1 Tetikleme

`com/ax3/fishao/locations/entries/PlayerChar.as`

```
:333   sendStartFishing(cellName, x, y)      ← olta atma (click handler içinden)
:441   sendStartFishing()                     ← "lakeId_blockId" ayrıştırır
:445      fishingExtension.startFish(lakeId, blockId-1, x, y, this.onResponse)
```

### 2.2 Sunucu cevabı → minigame

```
:495   onResponse(resp)
:507      if (resp is FishingResp)
:519         onUserCatchFishOnHook(fishId, fishLength, fishInfo, isShiny, timestamp)
:526      else if (resp is ErrorResp && resp.descr == "1008") → cancelFishing(false,false)
```

```
:184   onUserCatchFishOnHook(param1:int, param2:int, param3:FishInfoVO, param4:Boolean, param5:int)
:186      _biteTimeStart = param5
:187      _lastFishId = param1
:188      _lastFishLength = param2
:192      multiplier = _managerFishes.getFishingDurationMultiplier(fishId)
:194      setTimeout(showBitePanel, 1200, fishLength, rating, isShiny, multiplier)   ← bekleme süresi
```

`FishInfoVO` (`com/ax3/fishao/model/vo/FishInfoVO.as`): `id, rating, minLength, avgLength, maxLength, breedingCost, ...` — sunucudan gelen `data/fish.json`'dan (`FishaoApp.as:86 FishResourceDict(Config.FISH_DATA_URL, FishInfoVO)`).

### 2.3 Minigame

`com/ax3/fishao/display/panels/BiteProcessPanelAsset.as`

```
:254   start()              → _gameSize = randomGameSize; _progress = 0
:285   update(dt, ...)      → fare sol/sağ basılıysa _progress artar/azalır
:403-434  _progress -= 5 / -= 3 / -- / ++ ; 0'a inerse kayıp, _gameSize'a ulaşırsa kazanç
:456   stopWithLose()       → dispatchEvent(Event.CANCEL)   → onBiteLost
:481   stopWithWin()        → dispatchEvent(Event.COMPLETE) → onBiteCaught
```

Animasyon asset'i: `assets/general/BitePanel.as` (`colorBar`, `progressBar`, `leftButton`, `rightButton`, `pointer`).

### 2.4 Sonuç raporu

```
:174   onBiteLost(e)    → :178  isCatched(false, tournamentId, protectKey)
:203   onBiteCaught(e)  → :207  isCatched(true,  tournamentId, protectKey)
:148   protectKey       → :150  MD5(fishId + fishLength + biteTimeStart)
```

`com/ax3/jss/ext/impl/LocationFscExtension.as:85 isCatched()` → `FishingRsltReq` oluşturup `_connection.send()`.

İkinci bir gönderim yolu var: `FishingFscExtension.sendIsFishCaught()` (`:23`) → `FishingRsltReq` ama **`protect_key` set edilmiyor**. Sadece ölü debug metodu `FieldChar.sendResult()` (`:299`) çağırıyor ve sonucu `Math.random() > 0.5` ile üretiyor.

### 2.5 İptal

`com/ax3/fishao/locations/entries/FieldChar.as:1645 cancelFishing(sendToServer=true, animate=true)`
→ `FishaoFscModelManager.fishingExtension.sendCancelFishing()` → `CancelFishingReq`

(FishingFscExtension içinde; `CancelFishingReq` gövdesiz.)

---

## 3. Patch noktaları — "şunu değiştirmek için şuraya bak"

| İstenen | Yer | Yöntem |
|---|---|---|
| Bite beklemesini kaldır | `PlayerChar.as:194` `setTimeout(...,1200,...)` | 1200 → 0 (proxy ile yapılamaz, client patch) |
| Her zaman yakala (client) | `PlayerChar.as:174-181` `onBiteLost` | gövdeyi `isCatched(true,...)` yap |
| **Minigame auto-hold (çalışan)** | `BiteProcessPanelAsset.update()` sonundaki `_relativePos += _sail` | `_relativePos = 50` yap (pointer yeşil merkezde kalır); oyun normal sürede kazanır, sunucu kabul eder |
| Her zaman yakala (instant, sunucu reddediyor) | `BiteProcessPanelAsset.as:285` `update()` | `stopWithWin()`'i hemen çağırma: `FishingRsltReq` ~1.2 sn'de gider, sunucu balığı vermez (ses çalar) |
| Her zaman yakala (proxy) | `FishingRsltReq.isCaught` frame'i | `false` → `true` rewrite |
| **Kötü balığı iptal et (proxy)** | `FishingResp` frame'i | `fishId = -1` yapıp geçir (aynı `reqId`) → `PlayerChar.as:517-526` temiz reel-in yapar; ayrıca upstream'e `CancelFishingReq` |
| ~~Kötü balığı iptal et (`ErrorResp{1008}`)~~ | — | **Kullanma:** `FscConnectionMediator.as:131-162` kapatılamayan hata dialog'u açıyor (1008 ne `IGNORED` ne `CLOSEABLE` listesinde; `FishaoBasePopup` ESC'yi kapatıyor) |
| Yeşil bölgeyi büyüt | `BiteProcessPanelAsset` `_greenZoneFrom/To` | aralığı genişlet |
| SpeedHack korumasını kapat | `GameSwf.as:1002 initCheatProtection()` | no-op |
| Sunucuyu localhost'a çevir | `BuildConfig.as:8` (`isLocal`/`isProd`) | P-code patch: `isLocal()` → `true` (string değiştirme, inline riski) |
| Belirli balığı hedefle | `PlayerChar.as:507` + `FishingResp` proxy kuralı | `FishingResp.fishId = -1` (client patch gerekmez) |
| Otomatik cast döngüsü | `PlayerChar.as:333` / `sendStartFishing` | zamanlayıcı + state takibi |

---

## 4. Diğer önemli sınıflar

| Sınıf | Dosya | Not |
|---|---|---|
| `GameSwf` | `GameSwf.as` | ana uygulama; handler kayıtları, `initCheatProtection` (:1002, :1148) |
| `Config` | `com/ax3/fishao/Config.as` | tüm URL'ler (:219 WS_URL) |
| `BuildConfig` | `com/ax3/fishao/model/info/BuildConfig.as` | `VERSION = "2.4.0"`, `BUILD_TYPE = "prod"` (:8) |
| `FishaoApp` | `com/ax3/fishao/core/FishaoApp.as` | `fishDict` (:53), kaynak yükleyiciler (:86) |
| `FishaoFscModelManager` | `com/ax3/jss/model/FishaoFscModelManager.as` | `fscModel`, `locationExtension`, `fishingExtension` |
| `CheatProtection` | `com/ax3/fishao/utils/CheatProtection.as` | saat-drift kontrolü (:62) |
| `ManagerFishes` | `com/ax3/fishao/view/dialogs/fishes/ManagerFishes.as` | `getFishingDurationMultiplier` (:58) |
| `FscConnectionMediator` | `com/ax3/fishao/mediators/FscConnectionMediator.as` | `onErrorResp` (:80); 1008 erken return'ü dialogdan **sonra** (:162) |
| `FishingFscExtension` | `com/ax3/jss/ext/impl/FishingFscExtension.as` | `startFish` (:17), `sendIsFishCaught` (:23, key'siz), `sendCancelFishing` (:30) |
| `FieldChar` | `com/ax3/fishao/locations/entries/FieldChar.as` | olta/karakter durum makinesi; `sendResult` ölü debug metodu (:299) |
| `ReelInFishingCommand` / `StartFishingCommand` / `BiteFishingCommand` | `com/ax3/fishao/locations/chars/commands/` | animasyon komutları (sunucu tarafı değil) |
| `DiscordPresence` | `com/ax3/.../DiscordPresence` | `discord-rpc.exe`'yi yönetir |
| `Cc` (JunkByte Console) | `com/junkbyte/console/` | debug konsolu build'de duruyor |

---

## 5. Debug altyapısı (build'de mevcut)

- `com.junkbyte.console.Cc` — JunkByte Console (klavye kısayolu ile açılıyor olabilir; `GameSwf` içinde `Cc` init var)
- `com.demonsters.debugger` — Monster Debugger bağlantı sınıfları
- `globalLogger` — `NullGlobalLogger` varsayılan, `tracePackets` kapalı

Bu, patch'li build'de canlı konsol demek: `Cc.log()` ile kendi çıktını görebilir, hatta `Cc` üzerinden eval benzeri komut çalıştırabilirsin (ConsoleConfig mevcut).
