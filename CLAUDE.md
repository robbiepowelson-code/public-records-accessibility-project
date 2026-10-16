# Public Records Enforcement Project — website

Founders and only staff: Yesica Prado and Robbie Powelson.
Formerly named Public Records Accessibility Project (renamed Oct 2026).
Mission: pro se California Public Records Act requests and lawsuits for police shooting / use-of-force records (Penal Code 832.7(b), Gov. Code 7923.625), plus a newsroom publishing what is obtained.

## Layout
- `index.html` — home page (no JavaScript). Sections: hero, what we do, who we are.
- `authors.html` — Authors page; one `<article class="author">` block per person, copy a block to add someone. Photos go in `images/authors/`.
- `styles.css` — styles shared by all pages. New pages link it instead of inlining CSS.
- `start.sh` — local preview: `./start.sh` then open http://localhost:8000

## Design
- Spartan, black/white with yellow (#f5c518) as the action color; black hero band.
- Fonts: Public Sans (text), IBM Plex Mono (labels). Colors are CSS tokens in `:root`, with dark-mode overrides.

## Planned features (not on the site yet)
Only publish a feature once it actually works. Removed in Oct 2026 because they were not connected: tip form, request tracker, documents, press list, newsletter, donate. Add back with real services:
- Tips → Formspree / Netlify Forms
- Newsletter → Buttondown / Substack embed
- Donations → fiscal sponsor page / Givebutter / Patreon
- Tracker, documents, press → plain HTML lists linking to MuckRock / DocumentCloud

## Rules
- Never put graphic footage or anything under a protective order on the site.
- The site must say the project is not a law firm.
- Internal planning documents (business plan, budgets, funder lists) never go in this public repository.

## Agents
Project agents live in `.claude/agents/`: `about-section`, `donate-page`, `newsletter`, `current-work`.
- Each agent writes its outline and draft to `drafts/<section>.md` (and later `drafts/<section>.html`).
- `drafts/` is git-ignored: drafts stay on this computer and are never pushed to the public repository.
- Agents do not edit `index.html`. A draft goes into the site only after Yesica or Robbie approves it.
