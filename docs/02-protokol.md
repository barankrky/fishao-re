# 02 — Wire Protocol

Kaynak: `src/as3/2.4.0/com/ax3/jss/` (`JsonProtocol.as`, `FscConnection.as`, `requests/`) ve `src/as3/2.4.0/protocol/`.

---

## 1. Taşıma katmanı

| Öğe | Değer |
|---|---|
| Protokol | WebSocket, **text frame**, JSON |
| AIR sınıfı | `air.net.WebSocket` (extendedDesktop) |
| Prod endpoint | `wss://play.fishao.net/ws` |
| Lokal endpoint | `ws://localhost:8080/ws` (BuildConfig local modunda) |
| Asset/veri endpoint'i | `https://play.fishao.net/` — tam path listesi §4'te |
| Ping/keepalive | yok görünüyor — `ConnectionAliveExtension` uygulama seviyesinde |
| Yeniden bağlanma | `FscConnection` disconnect → `FscEvent.CONNECT_TO_SERVER_SOCKET` üzerinden akış yeniden kuruluyor |

İstemci hostname çözümü başarısız olursa `DNSResolver` ile A kaydı bakıp `connection.log`'a yazıyor (`FscConnection.as:380 lookupHost`) — debug için faydalı.

**Önemli:** `tracePackets = !BuildConfig.isProd()` (`FscConnection.as:36`). Prod'da `tracePacket()` tamamen no-op (`:423`, `if(!tracePackets) return;`). Ama `log()` (`:368`) **koşulsuz** çalışıyor: içindeki `if(tracePackets){}` bloğu boşaltılmış olsa da `logger(...)` ve `appendToLogFile(...)` her zaman çağrılıyor. Yani prod build'de de

```
%APPDATA%\net.fishao.game\Local Store\connection.log   (256 KB'da rotate → connection.old.log)
```

yazılıyor (connect/disconnect, DNS, socket hataları — paket içeriği değil). Paket dökümü için hâlâ proxy şart. Bu dosya, proxy yazmadan önce bile bağlantı davranışını doğrulamak için kullanılabilir.

---

## 2. Envelope

`JsonProtocol.encode()` (`:322`) / `decode()` (`:355`):

**Client → Server**

```json
{
  "t": "protocol.cr.LoginReq",
  "d": { "login": "user", "pass": "pass", "lang": "tr" },
  "reqId": 3
}
```

**Server → Client** — aynı yapı + 4 ek alan (hepsi `ServerResp`'ten gelir):

```json
{
  "t": "protocol.sr.LoginSuccessResp",
  "d": { "sid": "...", "login": "...", "lang": "tr", "isGuest": false, "unreadPrivateMessages": 0, "emailActivation": 1 },
  "reqId": 3,
  "maintenanceTime": 0,
  "maintenanceIn": 0,
  "needLog": true
}
```

Kurallar:

- `t` = **fully-qualified** AS3 sınıf adı, `::` yerine `.` (`getQualifiedClassName().replace("::",".")`). Katalog: `docs/wire-types.json` (294 tip).
- `d` = sınıfın public alanları (JSON'a serialize edilmiş hâli). `reqId` alanı `d` içinden silinip köke taşınıyor.
- `reqId`: istemci her istekte `++reqId` yapıyor (`FscConnection.as:171`); ilk değer **1**. Sunucu cevabında **aynı reqId** dönmek zorunda; istemci callback'i bu id ile eşliyor (`KeyCallbackDispatcher`). Şu an tek eşleşme mekanizması bu.
- `ServerResp.reqId` bir `int` ve default değeri **0** (AS3 int default'u). `handleSocketData` `reqId > -1` kontrolü yaptığı için reqId'siz push'lar key 0'a dispatch edilir; client 0'ı hiç kullanmadığından zararsızdır (`ServerResp.as:6`).
- `MvUsrToRq` (hareket) debug logunda filtreleniyor (`!(_loc3_ is MvUsrToRq)`) — yani en yüksek frekanslı mesaj bu.
- Bilinmeyen `t` gelirse client `globalLogger.error("JsonProtocol: unknown message type: ...")` yazıp `null` döner, bağlantı kopmaz. **Proxy'de yeni mesaj tipi denemek bu yüzden güvenli.**
- `decode` alanları tek tek `try/catch` içinde set ediyor → bilinmeyen fazladan alan sessizce yutulur.

---

## 3. Mesaj kataloğu (294 tip)

- `protocol.cr.*` — 58 client request
- `protocol.sr.*` — 58 server response
- `protocol.api.*` — 176 özellik mesajı (request/response çiftleri, `protocol.api.<feature>.<action>.Request*/Response*`)
- 2 tanesi özel: `com.ax3.jss.requests.client.ClientRequest` (soyut taban) ve `com.ax3.jss.requests.server.SteveMiniGameStartsResp`

### 3.1 Çekirdek akış (`protocol.cr` / `protocol.sr`)

```
LoginReq → LoginSuccessResp | LoginErrorResp
RegisterReq → RegisterErrorResp | (SuccessResp)
ActivationRequest → ActivationSuccessResp | ActivationErrorResp
GetDataReq → GetDataResp                      ← dünya/karakter/kullanıcı başlangıç verisi
EnterWorld → EnterWorldErrorResp
EnterLocation { locationId, lastLocationId } → EnterLocationSuccessResp | EnterLocationErrorResp
MvUsrToRq { x, y, r, cx, cy, crs } → MvUsrToResp          (hareket, yüksek frekans)
ChatReq { type, targetLogin, msg } → ChatResp
StartFishingReq { lakeId, blockId, x, y } → FishingResp
FishingRsltReq { isCaught, tournament_id, protect_key } → (SuccessResp | ErrorResp)
CancelFishingReq { } → (SuccessResp | ErrorResp)
SellFishReq { ... } → ...
OpenFishboxReq → OpenFishboxResp
UpdateReq → UpdateResp
ErrorResp { descr }                            ← "1008" = konum reddi; client bunu balık iptali olarak yorumluyor
```

`ErrorResp.descr == "1008"` iki taraflı davranıyor: `PlayerChar.as:529-532` → `cancelFishing(false,false)` (balık iptali), ama `FscConnectionMediator` aynı kodu genel hata olarak işleyip "Oraya yürüyemezsin!" dialog'u açıyor (`errorRespMessage_1008`). Yani kod hem "oraya gidemezsin" hem "olta iptal" anlamında kullanılmış — sentetik üretmek için uygun değil.

### 3.2 API özellik grupları (`protocol.api.*`)

| Grup | Adet | Grup | Adet |
|---|---|---|---|
| clubs | 36 | friends | 5 |
| trade | 14 | interior | 5 |
| tournaments | 12 | collections | 4 |
| events | 8 | featuresTemporary | 4 |
| moneyTree | 7 | npc | 4 |
| booster | 6 | sales | 4 |
| fishingLine | 6 | boat / breeding / holidays / miniGameBob / monster_fishes / periodicFeatures / quests / tutorial / worlds | 3'er |
| furniture_factory | 6 | announcements / base / features / fruits / profile | 2'şer |
| locations | 6 | plings | 1 |
| wheel_of_fortune | 6 | | |
| fishes | 5 | | |

Bu mesajlar `protocol.api.<grup>.<eylem>` paketlerinde yaşıyor; isimleri `Request*` / `Response*` önekiyle. Sunucu emülatörü yazarken bunların çoğu stub'lanabilir (`ResponseOk` veya boş liste dönebilir) — client çökmez.

Örnek: `FscExtensionFishingLine` (`protocol/api/fishingLine/`) → `RequestFishingLineInit` / `ResponseFishingLineInit`, `RequestFishingLineUpgradeLevel`, `RequestFishingLineUpdateColor`, `RequestFishingLineUpgradeLevelEarly`, `RequestFishingLineUpgradeLevelByTime`.

---

## 4. Endpoint yapılandırması

`com/ax3/fishao/Config.as` — tüm URL'ler `BuildConfig`'e bağlı:

```as3
:219  public static function get WS_URL() : String {
         if(BuildConfig.isLocal()) return "ws://localhost:8080/ws";      // :223
         if(BuildConfig.isProd())  return "wss://play.fishao.net/ws";     // :227
      }
```

Aynı mantık: `SERVER`, `ASSET_SERVER`, `ASSET_2_SERVER`, `DIALOG_SERVER`, `BUG_REPORT_URL`.

`com/ax3/fishao/model/info/BuildConfig.as:8`

```as3
public static const BUILD_TYPE:String = "prod";   // "local" yap → tüm URL'ler localhost:8080
```

`Config.as` ayrıca sunucudan çekilen veri dosyalarını tanımlıyor:

```as3
BAITS_DATA_URL = SERVER + "data/baits.json?r=" + rand
RODS_DATA_URL  = SERVER + "data/rods.json?r="  + rand
FISH_DATA_URL  = SERVER + "data/fish.json?r="  + rand
COUNTRIES_URL  = SERVER + "data/countries.json?r=" + rand
CHARACTER_EDITOR_URL = ASSET_SERVER + "data/swf/FlashFishaoCharacterEditor_1_0_218.swf?r=" + VERSION
```

**Sonuç:** `localhost:8080` üzerinde bir sunucu, hem WS hem HTTP tarafını karşılamalı. Pass-through bir relay için path listesi sabit değil — client'ın kullandığı **tüm** HTTP yüzeyi şu:

| Path | Kaynak | Not |
|---|---|---|
| `/ws` | `Config.WS_URL` | WebSocket upgrade |
| `/version` | `GameSwf.as:1091` | `{"minClient":"2.4.0"}`; `minClient` client'tan büyükse update dialog'u açılıp uygulama kapanır |
| `/data/fish.json`, `rods`, `baits`, `countries`, `timezones`, `clothes`, `resources`, `looks`, `bobbers`, `fossils`, `fruits`, `private.house.interior` | `Config.as:73-95` | hepsi `?r=<rand>` cache-buster ile |
| `/data/langs/<lang>.json` | `Config.as:127`, `I18n.as:108` | **kritik**: gelmezse "Can't load translations!" |
| `/data/swf/dialogs/<isim>.swf` | `GameSwf.as:993` | isimler küçük harf (`shopDialog.swf`, ...) |
| `/data/swf/FlashFishaoCharacterEditor_1_0_218.swf` | `Config.as:232` | 5 MB |
| `/data/swf/AnimatedCharacter_2.swf`, `/data/swf/locations/*` | `Config.as:237`, `LocationConfig.as:13` | karakter + harita asset'leri |
| `/data/sounds/*.swf` | `FishaoSoundManager.as:515` | |
| `/data/image/*`, `/data/image/flag/flag_xx.png`, `/img/flags/XX.png` | `FishaoBitmapLoader.as:86-91` | |
| `/bug_report`, `/bug_report.php` | `Config.as:193`, `CcCommands.as:128` | `Cc.sendToServer` POST'u |
| `/recover`, `/terms`, `/play` | `Config.as:131-135` | sadece link, oyun akışını etkilemez |

Relay'in en basit hâli: `/ws` dışındaki her şeyi upstream'e olduğu gibi proxy'le (query string dahil), sadece `/version`'ı sabitle (`minClient` ≤ `2.4.0`) ki sunucu sürümü ilerleyince client kendini kapatmasın.

---

## 5. Proxy için pratik notlar

- Frame'ler text; UTF-8 JSON. Binary frame yok (asset'ler HTTP).
- `reqId` monoton artıyor, oturum başına 1'den başlıyor → loglarken eşleştirmek kolay.
- Rewrite yaparken `d` içindeki alanları değiştirmek yeterli; `t` değiştirmek mesaj tipini değiştirir (client bilinmeyen tipi yutar, ama handler bulamaz → davranış değişmez).
- `MvUsrToRq` trafiğin çoğunluğu olacak; log dosyasını şişirmemek için filtre şart.
- Server frame'lerinde `reqId` yoksa default **0** olur; key 0'a dispatch edilir ama client 0'ı kullanmadığı için "push" gibi davranır — örn. `WeatherChangedResp`, `CharViewUpdResp`, `FishCatchEmoticonResp`.
- Server'ın `needLog` alanı her mesajda geliyor; görmezden gelinebilir.
- **Enjekte istekler için ayrı reqId aralığı kullan** (ör. 900000+). Client 1'den başlayıp artıyor; proxy'nin ürettiği `CancelFishingReq` gibi isteklerin cevabı client'ta bilinmeyen bir key'e düşer, zararsız kalır.
- **`FishingResp` sentinel'leri:** `fishLength == -1` → sunucunun "FISHING CALCULATION" debug frame'i (`GameSwf.as:323`); `fishId == -1` → client'ta temiz iptal yolu (`PlayerChar.as:507-528`, fishId kontrolü `:517-526`: `inFishingProcess=false`, `reelIn()`, `checkWaterPopup()`). İkincisi, kötü balığı iptal etmenin **dialog açmayan** tek yolu.
- `ErrorResp{descr:"1008"}`'i sentetik olarak gönderme: callback `cancelFishing(false,false)` yapar ama `FscConnectionMediator.onErrorResp` (`:80-162`) aynı mesajı genel hata dalına sokup kapatılamayan `IconMessageDialog` açıyor.
