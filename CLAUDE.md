# Public Records Accessibility Project — website

Founders and only staff: Yesica Prado and Robbie Powelson.
Mission: pro se California Public Records Act requests and lawsuits for police shooting / use-of-force records (Penal Code 832.7(b), Gov. Code 7923.625), plus a newsroom publishing what is obtained.

## Layout
- `index.html` — the entire site (HTML, CSS, JS in one file). Sections: hero, what we do, request tracker, send a tip, documents, in the news, newsletter, donate, about.
- `start.sh` — local preview: `./start.sh` then open http://localhost:8000

## Design
- Spartan, black/white with yellow (#f5c518) as the action color; black hero band.
- Fonts: Public Sans (text), IBM Plex Mono (labels). Colors are CSS tokens in `:root`, with dark-mode overrides.

## Data
The forms were first built as a Claude artifact using `window.claude.use("db")`. Outside Claude that API is absent, so the forms show a "not open yet" message. To launch, replace with real services:
- Tips → Formspree / Netlify Forms
- Newsletter → Buttondown / Substack embed
- Donations → fiscal sponsor page / Givebutter / Patreon
- Tracker, documents, press → edit the HTML lists directly, linking to MuckRock / DocumentCloud

## Rules
- Never put graphic footage or anything under a protective order on the site.
- The site must say the project is not a law firm.
