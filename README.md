# Public Records Enforcement Project

Website for the Public Records Enforcement Project. The project files California Public Records Act requests and pro se lawsuits for police shooting and use-of-force records, then publishes what it obtains.

Founders: Yesica Prado and Robbie Powelson.

Live site: https://gettherecords.org (GetTheRecords.org)

![Home page](docs/screenshots/hero.jpg)

## Editing the site (no code needed)

1. Go to https://app.pagescms.org and sign in with GitHub.
2. Install the Pages CMS app on this repository when asked, then open the repository.
3. Edit any of these in plain forms, then click **Save**. The live site updates about a minute later.
   - **Press releases**: add a new release; untick *Published* to keep it off the site.
   - **Authors**: add a person, upload a photo, write a bio.
   - **Home page**: headline, intro and "What we do" text.
   - **Site settings**: tip line, media contact, contact email.

## How the files are organized

| File or folder | What it is |
| --- | --- |
| `_data/home.yml` | Home page text |
| `_data/settings.yml` | Tip line, media contact, contact email. A page only appears once its setting is filled in. |
| `_authors/` | One file per author |
| `_press/` | One file per press release (the Press menu link appears once there is one) |
| `images/` | Photos and images |
| `index.html`, `authors.html`, `press.html`, `tips.html` | Page templates |
| `_layouts/`, `_includes/` | Shared header, footer and press release layout |
| `styles.css` | Styles for every page |
| `_config.yml` | Site name and address (`https://gettherecords.org`) |
| `CNAME` | Tells GitHub Pages to serve the site at gettherecords.org. Don't delete it. |
| `.pages.yml` | Setup for the web editor |

## Status

Early version. Only finished content is published. Built and waiting for settings: tip line (fill in Site settings), press releases (add the first one). Planned additions, each to be added once it works:

| Feature | Options |
| --- | --- |
| Newsletter | Buttondown, Substack, or Mailchimp embed |
| Donations | Fiscal sponsor's donation page, Givebutter, Donorbox, or Patreon |
| Request tracker, documents, press | Edit the page directly, linking to MuckRock and DocumentCloud |

## Publishing with GitHub Pages

Settings > Pages > Deploy from a branch > `main` / root, custom domain `gettherecords.org`.

Domain: registered at Porkbun (auto-renew on). DNS: ALIAS `gettherecords.org` and CNAME `www` → `robbiepowelson-code.github.io`, plus GitHub's verification TXT record. Never add a wildcard (`*`) record.

## Preview on your computer (optional)

The site is built by Jekyll, the same tool GitHub Pages uses. Run `./start.sh`; the first time it prints the one-time setup steps. The web editor does not need this.
