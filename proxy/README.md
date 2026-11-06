# proxy/

Şeffaf WebSocket + HTTP relay — **henüz yazılmadı** (kullanıcı talebiyle ertelendi).

Tasarım, dosya yapısı, kural API'si ve kabul kriterleri: [`../docs/04-plan.md`](../docs/04-plan.md) §Faz 1.

Planlanan yerleşim:

```
proxy/
├─ package.json
├─ src/
│  ├─ index.js        # config + iki sunucu
│  ├─ ws-relay.js     # client WS ↔ upstream WS, 1:1 frame
│  ├─ http-relay.js   # /data/*, /bug_report, /version
│  ├─ session.js      # bağlantı başına state
│  ├─ log.js          # JSONL
│  └─ rules/
├─ rules.local.js     # repo dışı (.gitignore)
└─ logs/              # repo dışı (.gitignore)
```
