# 04 — Plan

Bu dosya yeni session'ın yürütme listesidir. Fazlar sırayla; her fazın sonunda "kabul kriteri" var.

**Şu an:** Faz 0 + doküman revizyonu (Faz 0.1) + **client patch (merkez-hold + adl)** tamam. Sıradaki iş: **Faz 3 trust testleri** (`protect_key`, rate limit) veya **Faz 1 proxy iskeleti**. (Kullanıcı talimatı: "proxy yazmaya başlama" — 2026-11-05.)

> **Revizyon 2026-11-05:** kaynak-karşılaştırmalı review sonrası düzeltmeler işlendi. Öne çıkanlar: `ErrorResp{1008}` yerine `FishingResp.fishId = -1`; HTTP endpoint envanteri genişletildi; `connection.log`'un prod'da da yazıldığı; Faz 2'de string değil P-code patch'i; sunucunun canlı olduğu. Ayrıntı: `README.md` §Revizyon notları.

---

## Faz 0 — Analiz & dokümantasyon ✅

- [x] Kurulum binary'sini incele (AIR captive runtime, imzasız)
- [x] SWF'i decompile et (1843 AS3 sınıfı → `src/as3/2.4.0/`)
- [x] Wire protocol'ü çöz (JSON/WS, 294 tip → `docs/wire-types.json`)
- [x] Balık tutma akışını uçtan uca çıkar
- [x] Anti-cheat envanteri
- [x] Dokümantasyon (`docs/01..03`)
- [x] Review + düzeltmeler (2026-11-05): 1008 tuzağı, endpoint listesi, P-code patch, canlı sunucu

---

## Faz 1 — Proxy iskeleti (sıradaki)

**Hedef:** istemciyi `localhost:8080` üzerinden gerçek sunucuya bağlayan, tüm trafiği JSONL'e döken şeffaf relay. Henüz hiçbir kural yok — sadece gözlem.

### Mimari

```
┌──────────────┐   ws://localhost:8080/ws    ┌───────────┐   wss://play.fishao.net/ws   ┌────────┐
│ Fishao AIR   │ ──────────────────────────► │   PROXY   │ ───────────────────────────► │ Server │
│   client     │ ◄────────────────────────── │  (node)   │ ◄─────────────────────────── │        │
└──────────────┘                             └───────────┘                              └────────┘
        │                                      │
        └── http://localhost:8080/data/* ──────┴──► https://play.fishao.net/data/*  (HTTP relay)
```

İstemci local modda hem WS hem HTTP'yi `localhost:8080`'den bekliyor (`docs/02-protokol.md` §4). İkisi de aynı porttan servis edilecek.

### Dosya yapısı

```
proxy/
├─ package.json
├─ src/
│  ├─ index.js          # entry: config, iki server'ı ayağa kaldır
│  ├─ ws-relay.js       # WS sunucusu (client) + upstream WS client, 1:1 frame relay
│  ├─ http-relay.js     # /data/*, /bug_report, kök → https://play.fishao.net'e pass-through
│  ├─ session.js        # bağlantı başına state (reqId → tip eşlemesi, sayaçlar)
│  ├─ log.js            # JSONL writer + opsiyonel renkli konsol
│  └─ rules/
│     ├─ index.js       # kural yükleyici (sırayla uygular)
│     └─ passthrough.js # örnek: hiçbir şey yapmayan kural
├─ rules.local.js       # kullanıcı kuralları (git'e girmez)
└─ logs/
   └─ session-<ts>.jsonl
```

### Gereksinimler

- Node 24 + `ws` paketi (`npm i ws`) — sunucu tarafı WS için. Client tarafı için global `WebSocket` var ama upstream header kontrolü gerekirse `ws` client kullanmak daha esnek.
- Upstream header'ları: AIR `WebSocket` browser Origin'i göndermiyor ve prod'a bağlanabiliyor → **ek header muhtemelen gerekmiyor** (açık soru #4). Yine de `ws` client'ta `headers` opsiyonunu açık tut.
- **HTTP relay path listesi:** `02-protokol.md` §4'teki tam envanter. En az `/version`, `/data/langs/*`, `/data/*.json`, `/data/swf/*`, `/data/sounds/*`, `/data/image/*` geçmeli. `/version`'ı sabitle (`minClient` ≤ `2.4.0`) — sunucu sürümü ilerleyince client kendini kapatmasın.
- Reconnect: upstream koparsa client'a close frame gönder, client kendi reconnect'ini yapıyor (`FscConnection`).
- Binary frame gelirse dokunmadan geçir.
- `MvUsrToRq` log filtresi (trafo'nun %90'ı bu).
- **Enjekte istekler için ayrı `reqId` aralığı** (900000+) — client 1'den sayıyor, çakışma olmasın.
- **Log'da özel işaretler:** `FishingResp.fishLength == -1` (sunucunun "FISHING CALCULATION" debug frame'i) ve `FishingResp.fishId == -1` (temiz iptal sentinel'i).

### Log formatı (JSONL, satır başına bir frame)

```json
{"ts":1762..., "dir":"c2s", "t":"protocol.cr.StartFishingReq", "d":{"lakeId":3,"blockId":7,"x":812,"y":430,"isDebugMode":false}, "reqId":42, "bytes":96}
{"ts":1762..., "dir":"s2c", "t":"protocol.sr.FishingResp", "d":{"fishId":117,"fishLength":43,"isShiny":false,"timestamp":1762...,"data":""}, "reqId":42, "bytes":104}
{"ts":1762..., "dir":"c2s", "t":"protocol.cr.FishingRsltReq", "d":{"isCaught":true,"tournament_id":null,"protect_key":"a1b2..."}, "reqId":43, "bytes":133}
{"ts":1762..., "dir":"s2c", "t":"protocol.sr.FishingResp", "d":{"fishId":117,"fishLength":-1,"data":"..."}, "reqId":42, "bytes":2048, "flag":"fishing-calc"}
```

Dördüncü satır (varsa) sunucunun balık seçim debug frame'i — `data` alanı kısaltılmadan loglanmalı, açık soru #5'in cevabı orada.

Ek alanlar (session analizi için): `dt_since_start_ms`, `session`, `seq`.

### Kural API'si

```js
// rules.local.js
module.exports = [
  {
    name: 'force-catch',
    onClientToServer(msg, ctx) {          // msg = { t, d, reqId }
      if (msg.t === 'protocol.cr.FishingRsltReq') msg.d.isCaught = true;
      return msg;                          // null dönerse frame düşürülür
    },
    onServerToClient(msg, ctx) { return msg; },
    onConnect(upstreamCtx) {},
  },
];
```

`ctx` içinde: `session`, `log()`, `sendToClient(msg)`, `sendToServer(msg)`, `stats`.

### Kabul kriteri

- [ ] İstemci `localhost:8080` üzerinden login olup Pinheira Beach'e girebiliyor
- [ ] `logs/session-*.jsonl` içinde login → enter world → enter location → start fishing → fishing result zinciri eksiksiz
- [ ] Oyunda gözle görülür gecikme/fark yok

### Riskler

- Sunucu `Origin` veya başka header kontrolü yapıyorsa upstream el sıkışması reddedilebilir → header'ları client'tan birebir kopyalamak gerekir (Node `ws` bunu destekler).
- Asset relay'i atlanırsa istemci yükleme ekranında takılır (fish.json gelmezse `fishDict` boş kalır → balık tutma çalışmaz).

---

## Faz 2 — İstemciyi localhost'a çevirme

İki seçenek var; **A** daha temiz, **B** daha hızlı.

### A. `BuildConfig` patch'i (önerilen)

`src/as3/2.4.0/com/ax3/fishao/model/info/BuildConfig.as:8` — ama **string'i değil, metodu** yamala.

`BUILD_TYPE` bir `static const`; ASC derleyicisi primitif sabitleri kullanım yerlerine inline edebilir. Yani constant pool'daki `"prod"` string'ini değiştirmek her çağrıyı etkilemeyebilir (client'ta `isLocal()`/`isProd()` üzerinden gidiliyor). Güvenli yol — FFDec P-code editörü:

- `isLocal()` gövdesini `pushbyte 1; returnvalue` yap (veya `isProd()` → `pushbyte 0; returnvalue`)
- Böylece `SERVER`, `WS_URL`, `ASSET_SERVER`, `ASSET_2_SERVER`, `DIALOG_SERVER`, `BUG_REPORT_URL` tek noktadan localhost'a döner

**Test yöntemi:** kurulumu kopyalayarak çalıştır, `Program Files`'a dokunma. `C:\Program Files (x86)\Fishao` → `E:\workspace\fishao_re\runtime\` (captive runtime göreli yolları çözer), SWF'i **kopyada** değiştir, `runtime\FishaoGame.exe` başlat. Ters giderse orijinal kurulum etkilenmez.

**Hızlı doğrulama (proxy'den önce):** patch'li client'ı açmadan önce `python -m http.server 8080` çalıştır; istek logunda `/version` veya `/data/langs/...` görürsen repoint çalışıyor demektir. Sonra relay'i yaz.

- İmza yok → yeniden imzalama gerekmiyor
- Yan etki: `tracePackets = !isProd()` → `true`; ama `tracePacket()` gövdesi boş olduğu için yine paket logu yok

### B. Hosts + yerel TLS

`play.fishao.net` → `127.0.0.1` (hosts), proxy'de self-signed sertifika + Windows sertifika deposuna CA ekleme. Daha kırılgan, AIR'in güven davranışına bağlı.

**Kabul kriteri:** istemci, `Config.WS_URL` olarak `ws://localhost:8080/ws` kullanıyor (proxy logunda görünür).

---

## Faz 3 — Server trust testi (asıl soru)

**Soru:** sunucu `isCaught: true`'yu doğrulamadan kabul ediyor mu?

**Elimizdeki kanıt:** `protect_key` istemcide üretiliyor ve `FishingFscExtension.sendIsFishCaught` onu **hiç göndermiyor** (ölü debug yolu `FieldChar.sendResult`, `Math.random()`). Yani sunucunun key'i katı doğrulamadığı kuvvetle muhtemel — deney 4 bunu kesinleştirecek.

Deneyler (sırayla):

1. **Baseline:** normal oyna, `StartFishingReq` ile `FishingRsltReq` arasındaki süreyi logla → sunucunun beklediği min. süre hipotezini kur.
2. **Force-catch:** `isCaught=true` sabitle. Minigame'i kaybet, sonucu gör.
3. **Hız testi:** `StartFishingReq` gönderdikten 50 ms sonra `FishingRsltReq{true}` gönder (minigame'i bekleme) → sunucu kabul ediyor mu, yoksa `ErrorResp` mi?
4. **protect_key testi:** bilerek bozuk `protect_key` gönder → reddediliyor mu? (Reddediliyorsa key doğrulanıyor; ama bu bir engel değil, çünkü client zaten doğru key'i üretiyor.)
5. **Rate limit:** 10 saniyede 10 balık → ban/limit tetikleniyor mu?

**Kabul kriteri:** hangi alanların gerçekten doğrulandığını gösteren bir tablo (`docs/01-bulgular.md` §7'ye işlenecek).

---

## Faz 4 — Balık filtresi (en değerli özellik)

`FishingResp` geldiğinde `fishId`'yi kontrol et; istenmeyen balıksa frame'i **mutasyona uğratıp** geçir:

```
[SERVER] ──FishingResp{fishId:KÖTÜ, reqId:N}──► [PROXY]
                                                   ├─► client'a: aynı frame, fishId = -1, reqId = N
                                                   └─► upstream: CancelFishingReq (900000+ reqId aralığı)
```

**Neden `fishId = -1`:** `PlayerChar.onResponse` (`:495-533`) balığı `:517` satırında `fishId > -1 && fishInfo != null` ile doğruluyor; sağlanmazsa `inFishingProcess=false; reelIn(); checkWaterPopup()` çalışıyor. Minigame hiç açılmıyor, dialog çıkmıyor, `FishingRsltReq` gönderilmiyor. `reqId` aynı kaldığı için callback eşleşmesi sorunsuz.

**Yapılmaması gereken:** sentetik `ErrorResp{descr:"1008"}`. Callback `cancelFishing(false,false)` yapsa da `FscConnectionMediator.onErrorResp` (`:80-162`) aynı mesajı genel hata dalına sokuyor; 1008 ne `IGNORED_ERROR_CODES` ne `CLOSEABLE_ERROR_CODES` içinde, `FishaoBasePopup` ESC ile kapanmıyor → **kapatılamayan modal**. (Detay: `01` §5, `03` §3.)

**Filtre kriterleri:** `data/live/fish.json` (615 balık, canlıdan çekildi) artık elimizde:

- `rating` (1-5), `min/avg/max_length`, `rarity_factor`
- `catch_req`: `location_ids` (615), `bait_category` (615), `fishing_place` (287), `caught_time` (115), `club_points` (56), `collections_complete` (50), `caught_date` (47), `club_unlock_by_fishcoins` (21), `fruit_combinations_done` (18)
- `hue_shift_of_shiny`

Başlangıç whitelist'i: mevcut `lakeId` + `rating >= 4` + `caught_time` penceresi. Alternatif: sadece id listesi.

**Kabul kriteri:** 100 cast'te sadece whitelist'teki balıklar yakalanıyor; sunucu tarafında hata/ban yok; UI'da hata dialog'u kalmıyor.

---

## Faz 5 — Otomasyon (bot)

İki yaklaşım:

- **Proxy tarafı:** `FishingRsltReq` sonrası N ms bekle, aynı `lakeId/blockId/x/y` ile `StartFishingReq` enjekte et. Sorun: client'ın `inFishingProcess` state'i desync olur, animasyonlar bozulur.
- **Client tarafı (önerilen):** `PlayerChar.sendStartFishing` etrafına döngü + rastgele gecikme; `BiteProcessPanel`'i otomatik kazanacak şekilde yamala. Bot tamamen istemcide, insan gibi davranır.

**Kabul kriteri:** 10 dakika AFK'da kesintisiz cast döngüsü, sunucudan disconnect yok.

> **2026-11-05 — ilk parça uygulandı:** çalışan yol **merkez-hold**: `BiteProcessPanelAsset.update()` içinde `_relativePos += _sail` → `_relativePos = 50` (`runtime/out/FlashFishaoGame.hold.swf`, `tools/patch_hold_green.py`). Oyun normal sürede dolup kazanıyor, sunucu balığı veriyor. Instant `stopWithWin()` denendi: istemci sesi çalıyor ama sunucu ~1.2 sn'lik sonucu kabul etmiyor. Otomatik cast döngüsü henüz yok; fazın geri kalanı duruyor.

---

## Faz 6 — (opsiyonel) Kendi sunucun

`fishao.net`'in yaptığının aynısı. Gerekli minimum:

```
LoginReq          → LoginSuccessResp (sahte sid)
GetDataReq        → GetDataResp { data: {...} }        ← en karmaşık kısım, client her şeyi bekliyor
EnterWorld        → (SuccessResp)
EnterLocation     → EnterLocationSuccessResp
MvUsrToRq         → MvUsrToResp (echo)
StartFishingReq   → FishingResp { fishId, fishLength, isShiny, timestamp }
FishingRsltReq    → SuccessResp + envanter güncelle
+ data/fish.json, rods.json, baits.json HTTP tarafı
```

`GetDataResp`'un şeması client kodundan çıkarılabilir (`GetDataResp.data` bir `Object`; tüketicileri arayarak alan listesi çıkar). Bu faz büyük iş — gerekçesi "sunucu ölü" değil (play.fishao.net **canlı**: `/version` → `built 2026-11-04`, `minClient 2.4.0`, Go 1.27.3), bağımsızlık ve istemciyi tamamen kontrol etme isteği.

---

## Açık sorular (öncelik sırasıyla)

1. Sunucu `isCaught`'ı doğruluyor mu? → **cevap (2026-11-05 ampirik): evet, süre kontrolü var.** ~1.2 sn'de gönderilen instant sonuç reddediliyor; normal mini-game süresinde (~3-5 sn) gönderilen merkez-hold sonucu kabul ediliyor (`01` §4.4). Deney 2-3 kapandı; `protect_key` (deney 4) ve rate limit (deney 5) açık.
2. `protect_key` doğrulanıyor mu? → Faz 3, deney 4 — **ipucu:** `FieldChar.sendResult()` key'siz gönderiyor (`01` §4.3)
3. Rate limit / heuristic var mı? → Faz 3, deney 5
4. WS handshake'te `Origin`/token şartı var mı? → Faz 1 — **ipucu:** AIR `WebSocket` Origin göndermiyor, prod'a bağlanabiliyor; muhtemelen şart yok
5. `FishingResp.data` ne içeriyor? → Faz 1 log'u — **ipucu:** `fishLength == -1` frame'i "FISHING CALCULATION" olarak konsola basılıyor (`GameSwf.as:323`), muhtemelen sunucunun seçim hesabı
6. İmzasız SWF değişimi AIR captive runtime'da çalışıyor mu? → Faz 2 — **ipucu:** `signatures.xml` yok, sadece descriptor `hash`'i var (SWF değişiminden etkilenmez)
7. `CancelFishingReq` cooldown/ceza tetikliyor mu? → Faz 4 sırasında gözlem
8. `protocol.api.*` mesajlarında `reqId` eşleşmesi nasıl? → Faz 1 log'unda görülecek

---

## Karar bekleyen noktalar (kullanıcıya sorulacak)

- [ ] Proxy dili/stack: Node + `ws` (mevcut ortam) mi, yoksa başka bir şey mi? — **öneri:** Node 24 + `ws`
- [ ] Faz 2'de A (P-code patch) mi B (hosts+TLS) mi? — **öneri:** A, kopya kurulumda test
- [ ] Faz 3 testleri gerçek hesapta mı yapılacak, yoksa yeni bir hesap mı açılacak? (ban riski)
- [ ] Faz 4 filtresi hangi kriterle: rating mi, tür listesi mi, boy mu? — **öneri:** başlangıçta `location_ids` + `rating >= 4`, config'ten değiştirilebilir
- [ ] Amaç sadece "always catch" mi, yoksa tam otonom bot mu?

---

## Önerilen başlangıç sırası (2026-11-05)

Proxy'yi baştan yazmak yerine her adımda doğrulanabilir bir çıktı üret:

1. **Repoint doğrulaması (≈20 dk).** Kurulumu `runtime/` altına kopyala, `BuildConfig.isLocal()` P-code patch'ini uygula, `python -m http.server 8080` ile aç. İstemci `/version` veya `/data/langs/...` istiyorsa patch tuttu. Proxy kodu yok, risk yok.
2. **Tek dosya relay (≈1-2 sa).** Aynı portta HTTP pass-through + `/ws` upgrade + upstream `wss://play.fishao.net/ws` + JSONL. Kural yok. Kabul: login → Pinheira → ilk cast zinciri logda.
3. **Baseline oturumu (≈15 dk).** 5-10 normal cast; `StartFishingReq` → `FishingResp` → `FishingRsltReq` sürelerini ve `fishLength == -1` frame'i var mı bak. Açık soru #5 burada cevaplanır.
4. **Faz 3 deneyleri (≈30 dk).** Sırayla: force-catch → 50 ms hız testi → bozuk `protect_key` → 10/10 sn rate. Her deney arasında relog; sonuçları `01` §7'ye işle.
5. **İlk gerçek kural (≈30 dk).** `fishId = -1` filtresi (`rules.local.js`), config'te `location_ids`/`rating`. Kabul: 100 cast, sadece whitelist, dialog yok.
6. **Sonra:** bot (client tarafı) veya kendi sunucun — ilk 5 adım tamamlanmadan başlama.

Her adımın çıktısı `docs/` içine tarih damgalı işlenir; proxy kodu `proxy/` altında, `rules.local.js` ve `logs/` repo dışı.

---

## Bilinen tuzaklar

- `FishingResp`'i client'a iletmeden yutmak → `inFishingProcess` true kalır, client kilitlenir. Her zaman (mutasyona uğramış olsa da) bir `FishingResp` gönder.
- Sentetik cevapta yanlış `reqId` → callback çalışmaz, aynı kilitlenme.
- Sentetik `ErrorResp{descr:"1008"}` → kapatılamayan hata dialog'u (`FscConnectionMediator` 1008'i ignore etmiyor, `FishaoBasePopup` ESC'yi kapatıyor).
- `data/fish.json` yüklenmezse `fishDict` boş → `PlayerChar.onResponse` `fishId > -1 && fishInfo != null` kontrolünde düşer ve sessizce reel-in yapar. Balık tutma "çalışmıyor" gibi görünür.
- `data/langs/*.json` yüklenmezse boot "Can't load translations!" ile durur; HTTP relay'de bu path'i atlama.
- `/version` upstream'den geldiği gibi geçerse, sunucu `minClient`'ı yükselttiğinde client update dialog'u açıp kapanır → relay'de sabitle.
- İstemci `BuildConfig.VERSION` ile sunucuya versiyon bildiriyor; sunucu eski sürümü reddedebilir.
- Proxy'nin enjekte ettiği istekler client'ın `reqId` sayacıyla çakışırsa callback karışır → ayrı aralık (900000+).
- `CheatProtection` tetiklenirse `sendReportToServer("6060.B")` + disconnect gelir; `BUILD_TYPE=local` olduğunda rapor localhost'a gider, prod'a sızmaz.
- fishao.net hesabı: fan sunucusu, kurallarını bilmiyoruz. Cheat tespit edilirse ban.
