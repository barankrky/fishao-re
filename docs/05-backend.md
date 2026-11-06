# 05 — Game Backend

> **EN abstract.** Reference for the FISHAO ("Reborn", AIR/AS3) server side, reconstructed entirely from the client: transport, session state machine, boot handshake, message contracts, the `UpdateResp` delta vocabulary, authority split, error codes, persistence model and a minimum viable backend blueprint. Facts are marked **[obs]** when observed from the client source or a live session, **[inf]** when inferred. No server code was available.
>
> **TR.** Bu doküman sunucu tarafının istemciden çıkarılmış referansıdır: taşıma, oturum akışı, boot handshake'i, mesaj sözleşmeleri, `UpdateResp` delta sözlüğü, yetki dağılımı, hata kodları, kalıcılık modeli ve minimum çalışan backend planı. `[obs]` = istemci kaynağından/canlı oturumdan gözlemlendi, `[inf]` = çıkarım.

Kaynak: `src/as3/2.4.0` (v2.4.0 decompile), `src/as3/2.5.1` (obfuscated, karşılaştırma), canlı `play.fishao.net`, `docs/02-protokol.md`, `docs/01-bulgular.md`.

---

## 1. Topoloji

```text
                    ┌──────────────────────────────────────────┐
  AIR client ──────►│ wss://play.fishao.net/ws   (game socket) │
              ──────►│ https://play.fishao.net/   (assets/data) │
                    └──────────────────────────────────────────┘
```

| Katman | Değer | Not |
|---|---|---|
| Oyun socket'i | `wss://play.fishao.net/ws` (`ws://localhost:8080/ws` local build) | `Config.WS_URL` |
| Asset/data | `https://play.fishao.net/` (local'de `http://localhost:8080/`) | `SERVER`, `ASSET_SERVER`, `ASSET_2_SERVER`, `DIALOG_SERVER` hepsi aynı host |
| Telemetri | `POST /bug_report` | `Config.BUG_REPORT_URL` |
| Çoklu dünya | `RequestWorldChange` → yeni `url`'e socket | `LoginFscExtension.enterWorld` |
| Keepalive | Uygulama seviyesinde `ConnectionAliveExtension` | 20 sn connect timeout, otomatik reconnect |

Local mod tek anahtar: `BuildConfig.isLocal()` (`BUILD_TYPE == "local"`). Tüm URL'ler tek noktadan `localhost:8080`'e döner. `[obs]`

---

## 2. Taşıma ve envelope

WebSocket **text frame**, UTF-8 JSON. Binary frame yok (asset'ler HTTP).

```json
// client → server
{ "t": "protocol.cr.StartFishingReq", "d": { "lakeId": 3, "blockId": 7, "x": 812, "y": 430 }, "reqId": 42 }

// server → client
{ "t": "protocol.sr.FishingResp", "d": { "fishId": 117, "fishLength": 43, "isShiny": false, "timestamp": 1762, "data": "" },
  "reqId": 42, "maintenanceTime": 0, "maintenanceIn": 0, "needLog": true }
```

| Kural | Değer |
|---|---|
| `t` | Fully-qualified AS3 sınıf adı, `::` → `.` (294 tip, `docs/wire-types.json`) |
| `d` | Sınıfın public alanları; `reqId` `d`'den köke taşınır |
| `reqId` | İstemci her istekte `++reqId` (1'den başlar). Sunucu **aynı** id'yi döndürmek zorunda |
| Push | `reqId` yok → istemcide `ServerResp.reqId` default `0`; callback yok, handler'lara gider |
| Bilinmeyen `t` | `JsonProtocol.decode` `null` döner, bağlantı kopmaz |
| Fazla/eksik alan | Alanlar tek tek `try/catch` içinde set edilir; fazlası yutulur, eksiği default kalır |
| `needLog` | Sadece `MvUsrToResp` `false`; gerisi `true` (istemci loglama seviyesi) |
| `maintenanceTime` / `maintenanceIn` | Her cevapta taşınabilir; bakım sayacı |

**Kritik:** `reqId` eşleşmesi tek korelasyon mekanizmasıdır (`KeyCallbackDispatcher`). Yanlış `reqId` = callback hiç çalışmaz (balık tutmada client kilitlenir).

---

## 3. Oturum yaşam döngüsü

`FscModelState`: `init → connecting → socketConnected → loginChecking → loginSuccess → connected`.

```text
[client]  ws connect
[client]  LoginReq { login, pass, lang }
[server]  LoginSuccessResp { sid, login, lang, isGuest, unreadPrivateMessages, emailActivation }
          │   ilk giriş / karakter yoksa: UpdateResp { sid, data.charView, data.colorStatistic }
          │   hata: LoginErrorResp { descr }  (4100 / 4101 / 4102 / 1026)
[client]  RequestWorldsInit → ResponseWorldsInit { list: {worldId, url, worldName, count, maxPlayers, enabled, langs, sortName} }
[client]  EnterWorld { worldId, fromUrl, sid }
[server]  UpdateResp  (dünya verisi; ayrı bir Success tipi YOK)
[client]  EnterLocation { locationId, lastLocationId, lastVirtualLocationId }
[server]  EnterLocationSuccessResp
[server]  UpdateResp { usersAtLoc: [...], shells, fishbox..., weather, ... }   ← ilk location snapshot'ı
[client]  MvUsrToRq ... (hareket), UpdateReq (ayar/karakter), StartFishingReq ...
```

Notlar:

- `EnterWorld` cevabı `UpdateResp`'tur. İstemci `remoteWorld` / `leaveFriendHouse` alanı görürse dünya değişimi sayar, aksi hâlde `LOGIN_SUCCESS`. `[obs]`
- `sid` login'de üretilir; `EnterWorld`'e taşınır. Reconnect'te yeniden login edilir (auto-reconnect), session sunucuda `sid` ile eşlenir.
- Aynı hesaptan ikinci socket → `ErrorResp 1003` + reconnect kapatılır.
- `EnterLocation` iki cevap üretir: önce `EnterLocationSuccessResp` (callback), sonra `UpdateResp` snapshot (push). Snapshot `usersAtLoc` içermezse istemci location'ı yüklenmiş saymaz. `[obs]`

### Location ID'leri

`1..10, 13` ana bölge; `11` Trout Farm, `12` Baker, `41` Coral (sublocation). `Config.LAKETOWN_ID = 1` … `AVALON_ID = 13`.

---

## 4. Boot handshake — cevaplanması gereken init RPC'leri

Login sonrası `GameSwf.initManagers()` 25 manager kurar, her biri `loadInitData()` çağırır. **Hepsi** callback bekler; cevap gelmezse yükleme ekranı kapanmaz. `[obs]`

| Manager | Init isteği | Cevap |
|---|---|---|
| Announcements | `RequestAnnouncements` | `ResponseAnnouncements { data: "[{...}]" }` |
| Clubs | `RequestClubsInit` | `ResponseClubsInit { levels_data, create_cost, ... }` |
| Collections | `RequestCollectionsInit` | `ResponseCollectionsInit { list }` |
| Events | `RequestEventsInit` | `ResponseEventsInit { data, data_coefficients }` |
| Features | `RequestFeaturesUpdate` | `ResponseFeaturesUpdate { featuresJson }` |
| FeaturesTemporary | `RequestFeaturesTemporaryInit` | `ResponseFeaturesTemporaryInit { features_temporary }` |
| FishingLine | `RequestFishingLineInit` | `ResponseFishingLineInit { levelInfo..., color }` |
| FurnitureFactory | `RequestFurnitureFactoryGetInfo` | `ResponseFurnitureFactoryGetInfo` |
| Holidays | `RequestHolidaysInit` | `ResponseHolidaysInit` |
| MoneyTree | `RequestMoneyTreeInit` | `ResponseMoneyTreeInit { timeToNextGenerate, fishcoinsLeft, fishbucksLeft, level }` |
| MonsterFishes | `RequestMonsterFishesInit` | `ResponseMonsterFishesInit { data: {info, progress} }` |
| PeriodicFeatures | `RequestPeriodicFeaturesInit` | `ResponsePeriodicFeaturesInit { data }` |
| Quests | `RequestQuestsInit` | `ResponseQuestsInit { questsData }` |
| Tutorial | `RequestTutorialInit` | `ResponseTutorialInit { list }` |
| WheelOfFortune | `RequestWheelOfFortuneInit` | `ResponseWheelOfFortuneInit { rewards_json }` |
| Worlds | `RequestWorldsInit` | `ResponseWorldsInit { list }` |
| Location / Trade / Interior / Fishes / Players / Sales / Boosters / Breeding / Maintenance | **override yok** | `FscExtensionBase.loadInitData` uyarı basıp `callback(null)` çağırır — cevap şart değil |

Boş `{}` / boş liste cevapları çoğu manager'da yeterlidir; `ResponseWithData` tabanlı olanlar `data` içindeki JSON-string alanları `decodeJson` ile açar (çift encode!). `[obs]`

---

## 5. Çekirdek mesaj sözleşmeleri

| Akış | Client → Server | Server → Client |
|---|---|---|
| Login | `LoginReq { login, pass, lang }` | `LoginSuccessResp` \| `LoginErrorResp` \| `UpdateResp(charView)` |
| Register | `RegisterReq { login, pass, dateOfBirth, email, lang, receiveMail, affId, promoCode, campaignId, campaignTrackId, sendWelcomeEmail, betaKey }` | `RegisterErrorResp` (203 = kullanıcı adı seçimi, `data.logins`) \| `LoginSuccessResp` |
| World | `EnterWorld { worldId, fromUrl, sid }` | `UpdateResp` \| `EnterWorldErrorResp { errDesc }` |
| World switch | `RequestWorldChange {}` | herhangi bir `ServerResp` → client yeni URL'e bağlanır |
| Location | `EnterLocation { locationId, lastLocationId, lastVirtualLocationId }` | `EnterLocationSuccessResp` + `UpdateResp` \| `EnterLocationErrorResp { errDesc }` |
| Sublocation | `EnterSublocationReq { sublocationId }` | `EnterSublocationSuccessResp { usersAtLoc, timeLeft }` |
| Leave | `LeaveLocationReq {}` / `LeaveSublocationReq { isTournamentLogin }` | `LeaveLocationResp` / `LeaveSublocationResp` |
| Movement | `MvUsrToRq { x, y, r, cx, cy, crs }` | `MvUsrToResp { login, x, y, r, cx, cy, cr }` (broadcast) |
| Chat | `ChatReq { type, targetLogin, msg }` (`100` oda, `200` PM) | `ChatResp { type, senderLogin, msg }` |
| Fishing start | `StartFishingReq { lakeId, blockId, x, y, isDebugMode }` | `FishingResp { fishId, fishLength, isShiny, timestamp, data }` |
| Fishing result | `FishingRsltReq { isCaught, tournament_id, protect_key }` | push `UpdateResp { fish_caught, experience, is_record, is_new }` |
| Fishing cancel | `CancelFishingReq {}` | `SuccessResp` \| `ErrorResp` |
| Shell | `CollectShellReq { x, y }` | `CollectShellSuccess` / `UpdateResp { shellCollected }` |
| Sell | `SellFishReq { fishId, fishType, amount }` | `UpdateResp { inventory, fishcoins }` |
| Fishbox | `OpenFishboxReq {}` | `OpenFishboxResp { prizeJson }` |
| Generic query | `GetDataReq { data: { <key>: <val> } }` | `GetDataResp { data: {...} }` |
| Generic update | `UpdateReq { sid, data: { <key>: <val> } }` | `UpdateResp` |

`GetDataReq` anahtarları (hepsi `[obs]`): `energyPrices`, `getTimeForTimeZone`, `closedClothing`, `paymentCurrency`, `rodsAmountToBuyLeft`, `plingHistory`, `newMsg`, `pageId`+`login` (log sayfaları).

---

## 6. `UpdateResp` — dünya delta sözlüğü

`UpdateResp` sunucunun ana push kanalıdır: hem login/world/location snapshot'ı, hem hareket/hâl değişimi, hem de ödül bildirimi. `data` içindeki değerlerin çoğu **JSON-string**'dir (`getJsonData` çözer); sayılar düz sayıdır. `[obs]`

### 6.1 Global anahtarlar (`GameSwf.updateResponseHandle`)

| Anahtar | Tip | Anlam |
|---|---|---|
| `inventory` | JSON array | `UserResource[]` (`resourceId, resourceType, qualityLeft, worth`) |
| `fishcoins`, `fishbucks` | int | Para |
| `level`, `experience`, `prevExpLimit`, `nextExpLimit` | int | Seviye/XP |
| `selectedBait`, `selectedUserRodId` | int | Seçili yem/olta |
| `settings` | JSON | Ülke, dil, ses ayarları |
| `fishingLog` | string | Sunucunun "FISHING CALCULATION" debug dökümü |
| `dailyQuestsComplete`, `unreadPrivateMessages`, `amountOfNewReports` | int/bool | Sayaçlar |
| `spendings` | string→number | Harcama istatistiği |
| `toSunRise`, `toSunSet`, `dayState` | int | Gün döngüsü |
| `maintenanceTime`, `maintenanceIn` | int (kök alan) | Bakım |

### 6.2 Location anahtarları (`LocationModel.updateHandler` + `LocationDialog.onUpdateResp`)

| Anahtar | Tip | Anlam |
|---|---|---|
| `usersAtLoc` | JSON array | Location snapshot'ı (ilk cevap; yoksa location yüklenmez) |
| `userEnter`, `userUpdates`, `userLeave` | JSON / array | Katılma, delta, çıkış |
| `weather` | int | `WeatherType` id |
| `shells`, `shellAppeared`, `shellCollected` | JSON | Kabuk listesi / doğdu / toplandı |
| `fishboxPos`, `fishboxAppeared`, `fishboxCollected` | JSON | Balık kutusu |
| `fishbones` | JSON | Günlük görev kemikleri |
| `npcesAtLoc`, `NPCLeave` | JSON / array | NPC'ler |
| `selectedRodInfoId` + `login` + `selectedRodColor` | int/string | Başka oyuncunun olta değişimi |
| `fishing_line_color` + `login` | string | Misina rengi |
| `busyBoats` | JSON | Tekne → oyuncu/pozisyon |
| `raft` | JSON | `{state, totalTime, timeLeft}` |
| `timeLeft` | JSON | Subelocation süresi |
| `sublocationNeedTime`, `boughtTime` | JSON | Giriş kısıtları |
| `energy` | JSON | `{energy, incLeftSec}` |
| `fishMarketTime`, `decorationMarketTime` | JSON/int | Pazar kapıları |
| `fish_caught` | JSON | `{fish_id, fish_length, fish_rarity, is_shiny, hue_shift_of_shiny}` |
| `experience`, `is_record`, `is_new` | int | `fish_caught` ile birlikte |
| `missionComplete`, `ice`, `isOpenFriendsDoor`, `leaveFriendHouse`, `remoteWorld`, `pondFishes`, `money_tree_level` | JSON/int | Modül bazlı |

### 6.3 `userUpdates` alt-nesnesi

`state`, `view`, `level`, `experience`, `prevExpLimit`, `nextExpLimit`, `newLocations`, `newClothes`, `energy`, `trading`, `country`, `language`, `floatId`, `prizeIsCollect`, `fishMarketTime`, `adminArbitrariness`, `manualLevelup`.

---

## 7. Yetki dağılımı — neyi sunucu belirler?

| Şey | Sahibi | Kanıt |
|---|---|---|
| Balık **kimliği, boyu, shiny** | **Sunucu** | `FishingResp` alanları `StartFishingReq`'e cevap |
| "Yakaladım" kararı | **İstemci** | `FishingRsltReq.isCaught` tek boolean |
| Envanter, para, XP, level | **Sunucu** | `UpdateResp` push'ları ezici |
| Turnuva skoru | **Sunucu** | `isCaught` + `tournament_id` |
| Diğer oyunculara görünen durum | **Sunucu** | `userUpdates` broadcast |
| Minigame sonucu | İstemci | `BiteProcessPanelAsset` tamamen yerel |
| `protect_key` | **İstemci** | `MD5(fishId + fishLength + biteTimeStart)` |
| Yürüme mesafesi / konum | Sunucu (kısmen) | `MvUsrToRq` doğrulaması, `ErrorResp 1008` |
| Kabuk toplama menzili | Sunucu (4 px) | `CollectShellReq` sunucu tarafı mesafe kontrolü |

**Sunucunun bilinen tek zaman kısıtı:** `FishingResp` → `FishingRsltReq` arası çok kısa (~1.2 sn) sonuç reddediliyor; normal minigame süresi (~3–5 sn) kabul ediliyor. `[obs, canlı test]` `protect_key`'in katı doğrulanmadığına dair güçlü ipucu: ölü debug yolu `FieldChar.sendResult()` anahtarı hiç göndermiyor.

---

## 8. Hata modeli

`ErrorResp { descr, params }`; `params` JSON-string olabilir (`{banEndTimeLeftSec}` gibi).

| Kod | Anlam | İstemci davranışı |
|---|---|---|
| 1001 | Oturum kapandı | disconnect |
| 1002 | Login yok | dialog |
| 1003 | Başka socket'ten login | reconnect kapat, logout |
| 1004 | Guest yasak | dialog |
| 1005 | Oturum bulunamadı | connection-lost dialog |
| 1007 | Yanlış bölge | dialog |
| 1008 | "Oraya yürüyemezsin" **+ balık iptali** | `cancelFishing` **ve** kapatılamayan dialog → sentetik üretme |
| 1009 | Burada balık tutulamaz | `stopFishing()` |
| 1013 | Enerji bitti | satın alma penceresi |
| 1016 | DB hatası | dialog |
| 1017 | Illegal input | dialog |
| 1024 | Buzda balık yok | ignore |
| 1025 | Yeterli fishcoin yok | satın alma |
| 1026 | Ban | reconnect kapat |
| 3101 | Location dolu (>170) | dialog + çıkış |
| 3102 | Location kapalı | dialog + çıkış |
| 4100/4101/4102/4103 | Login: yok / yanlış şifre / aktive değil / yetki | login dialog |
| 5102–5104, 5200 | Mesaj/rapor/arkadaşlık | dialog |

`IGNORED_ERROR_CODES` = `100, 206, 207, 1007, 1018, 1024, 1030, 3000, 6100, 6101, 6200, 6201`.
`CLOSEABLE_ERROR_CODES` = trade hataları, `1025, 1028, 1029, 1032, 1034, 1035, 1036, 1037, 1038, 2101, 3101, 5102, 5103, 5104, 5200`.
Listede olmayan kodlar **kapatılamayan** modal açar — backend yazarken bilinmeyen kod üretmeyin.

---

## 9. Telemetri ve anti-cheat (sunucu tarafı görünürlüğü)

| Bileşen | Davranış |
|---|---|
| `CheatProtection` | 6 sn'de bir `getTimer()` vs `Date.time` sapması > %4; 6 ardışık sapmada `SecurityErrorEvent` |
| Tetiklenince | `sendReportToServer("6060.B")` + disconnect |
| `sendReportToServer(tag)` | `POST /bug_report` — `log` (tam konsol), `screenshot` (base64 PNG), `tag`; oturumda **tek** kez |
| 49 çağrı noktası | `location`, `updateResp`, `wrongNoFloatState`, `possible_fishbucks_cheater`, `fishboneError`, `emailInUse`, … |
| `connection.log` | `%APPDATA%\net.fishao.game\Local Store\connection.log` (256 KB rotate) prod'da da yazılır |

Sunucu tarafı için pratik sonuç: client crash/desync durumunda **screenshot + konsol logu** sunucuya düşer; bir emülatörde `POST /bug_report`'u loglamak hata ayıklamada altın değerindedir.

---

## 10. Kalıcılık modeli (öneri)

```sql
users(id, login, pass_hash, email, lang, country, level, experience, fishcoins, fishbucks,
      energy, energy_updated_at, sid, banned_until, created_at, last_seen, settings_json)
inventory(user_id, resource_id, resource_type, quantity, worth)          -- balık, yem, olta, dekont
fish_catches(id, user_id, fish_id, length, is_shiny, hue_shift, caught_at, location_id, released)
fishdex(user_id, fish_id, max_length, count, first_caught_at)
sessions(sid, user_id, world_id, location_id, x, y, rotation, connected_at)
worlds(world_id, url, name, max_players, enabled, langs)
locations(location_id, name, max_players, type)
shells(location_id, x, y, spawned_at, collected_by)
fishbox(location_id, x, y, prize_json, spawned_at)
clubs / club_members / club_levels
tournaments / tournament_entries / tournament_scores
quests / quest_progress / daily_quest_state
trades / trade_items
pms(id, sender, recipient, subject, body, read_at)
reports / bans
```

Balık tablosu statiktir: `data/live/fish.json` (615 kayıt) sunucuda da aynı şema ile tutulur. `catch_req` alanı JSON-string'dir (`location_ids`, `bait_category`, `caught_time`, `caught_date`, `club_points`, `collections_complete`, …).

---

## 11. Minimum çalışan backend (MVP) planı

### 11.1 HTTP yüzeyi

| Path | Zorunlu | Not |
|---|---|---|
| `/ws` | ✅ | WebSocket upgrade |
| `/version` | ✅ | `{"minClient":"2.4.0"}` — daha büyükse client kapanır |
| `/data/langs/<lang>.json` | ✅ | Yoksa boot "Can't load translations!" ile durur |
| `/data/fish.json`, `rods`, `baits`, `resources` | ✅ | `data/live/` altındakiler birebir servis edilebilir |
| `/data/countries.json`, `timezones.json`, `clothes.json`, `looks.json`, `bobbers.json`, `fossils.json`, `fruits.json`, `private.house.interior.json` | ⚠️ | Yüklenmezse ilgili dialog boş kalır |
| `/data/swf/dialogs/*.swf`, `/data/swf/*.swf`, `/data/sounds/*`, `/data/image/*` | ⚠️ | Asset; yoksa dialog/ses eksik |
| `/bug_report` | ⚠️ | Log kabul et, 200 dön |
| `/recover`, `/terms`, `/play` | ❌ | Sadece link |

### 11.2 WebSocket handler sırası (MVP)

1. `LoginReq` → `LoginSuccessResp{sid}` (yeni hesapta `UpdateResp{data.charView, sid}`)
2. `RequestWorldsInit` → `ResponseWorldsInit{list:[{worldId,url,worldName,count,maxPlayers,enabled}]}`
3. `EnterWorld` → `UpdateResp{...}` (global state)
4. `EnterLocation` → `EnterLocationSuccessResp` + `UpdateResp{usersAtLoc:[], weather, shells:[]}`
5. `MvUsrToRq` → `MvUsrToResp` (echo + broadcast)
6. `StartFishingReq` → `FishingResp{fishId, fishLength, isShiny, timestamp}` (balık seçimi `catch_req` filtreleriyle)
7. `FishingRsltReq` → `UpdateResp{fish_caught, experience, is_record, is_new, inventory}` (± en az 1 sn gecikme)
8. `UpdateReq` / `GetDataReq` → ilgili `*Resp`
9. Kalan init RPC'leri → boş `{}` / `[]`
10. `Close` → session temizliği, diğerlerine `userLeave`

### 11.3 Bilinen tuzaklar

- `FishingResp`'i yutmadan ilet; `fishId = -1` "temiz iptal" sentinel'i, `fishLength = -1` debug frame'i.
- `reqId`'yi asla değiştirme; push'larda 0 kullan.
- `data` içindeki JSON-string alanları **çift encode** et (client `decodeJson` bekliyor).
- `EnterLocation` snapshot'ında `usersAtLoc` yoksa location yüklenmez.
- `ErrorResp 1008` sentetik gönderme → kapatılamayan modal.
- `UpdateResp`'te `inventory`/`fishcoins` yoksa UI eski değerde kalır.
- `minClient`'ı client sürümünden yüksek döndürme.
- `protocol.api.*` cevaplarında sınıf adı **tam** eşleşmeli; bilinmeyen tip sessizce yutulur ama handler çalışmaz.

---

## 12. Açık sorular

1. `protect_key` gerçekten doğrulanıyor mu? (ipucu: hayır)
2. Rate limit / heuristic var mı? (`CancelFishingReq` döngüsü, `CollectShellReq` burst)
3. `FishingResp.data` ne içeriyor? (`fishLength == -1` frame'i "FISHING CALCULATION")
4. `UpdateResp` push kadansı ne? (gözlem: olay bazlı, sabit tick yok)
5. `protocol.api.*` cevaplarında `reqId` eşleşmesi nasıl? (muhtemelen standart)
6. Sunucu `Origin`/token kontrolü yapıyor mu? (AIR `WebSocket` Origin göndermiyor, prod'a bağlanıyor → muhtemelen hayır)

Bu maddeler `docs/04-plan.md` §Faz 1/3 deneyleriyle kapanır.
