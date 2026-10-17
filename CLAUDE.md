# Public Records Enforcement Project — website

Founders and only staff: Yesica Prado and Robbie Powelson.
Formerly named Public Records Accessibility Project (renamed Oct 2026).
Mission: pro se California Public Records Act requests and lawsuits for police shooting / use-of-force records (Penal Code 832.7(b), Gov. Code 7923.625), plus a newsroom publishing what is obtained.

## Layout
The site is a Jekyll site built by GitHub Pages (no build step to run; pushing to `main` publishes).
- Content people edit: `_data/home.yml` (home text), `_data/settings.yml` (tip line, press contact, contact email), `_authors/*.md` (one per author), `_press/*.md` (one per press release).
- Templates: `index.html`, `authors.html` (/authors/), `press.html` (/press/), `tips.html` (/tips/), `_layouts/default.html`, `_layouts/press.html`, `_includes/flags.html` (decides which optional pages are on).
- `styles.css` — styles shared by all pages. Use `relative_url` for every internal link and asset.
- `_config.yml` — `url: https://gettherecords.org`, `baseurl: ""`. `CNAME` holds the custom domain; never delete it.
- Domain GetTheRecords.org (write it with capitals in copy) is registered at Porkbun; DNS = ALIAS apex + CNAME www to robbiepowelson-code.github.io, verified on GitHub.
- `.pages.yml` — web editor (Pages CMS, app.pagescms.org). Keep its fields in sync with the front matter and data files.
- `start.sh` — local Jekyll preview (needs Ruby; optional).
- Optional pages switch on by content: the Press link appears once a published release exists; the tip page and link appear once any tip setting is filled in.

## Design
- Spartan, black/white with yellow (#f5c518) as the action color; black hero band.
- Fonts: Public Sans (text), IBM Plex Mono (labels). Colors are CSS tokens in `:root`, with dark-mode overrides.

## Planned features (not on the site yet)
Only publish a feature once it actually works. Removed in Oct 2026 because they were not connected: request tracker, documents, newsletter, donate. (Tip line and press releases are built and turn on from settings/content.) Add back with real services:
- Newsletter → Buttondown / Substack embed
- Donations → fiscal sponsor page / Givebutter / Patreon
- Tracker, documents, press → plain HTML lists linking to MuckRock / DocumentCloud

## Rules
- Never put graphic footage or anything under a protective order on the site.
- The site must say the project is not a law firm.
- Internal planning documents (business plan, budgets, funder lists) never go in this public repository.
- Press releases must match the court record exactly (parties, court, case number, dates). Never publish an unconfirmed fact.
- Drafts of press releases stay in `drafts/` (git-ignored) or with `published: false`; remember the repository is public, so even unpublished files are visible on GitHub.

## Agents
Project agents live in `.claude/agents/`: `about-section`, `donate-page`, `newsletter`, `current-work`.
- Each agent writes its outline and draft to `drafts/<section>.md` (and later `drafts/<section>.html`).
- `drafts/` is git-ignored: drafts stay on this computer and are never pushed to the public repository.
- Agents do not edit the site's pages or content files. A draft goes into the site only after Yesica or Robbie approves it.
