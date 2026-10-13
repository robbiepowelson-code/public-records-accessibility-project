# Public Records Accessibility Project

Website for the Public Records Accessibility Project. The project files California Public Records Act requests and pro se lawsuits for police shooting and use-of-force records, then publishes what it obtains.

Founders: Yesica Prado and Robbie Powelson.

## What's here

- `index.html` is the whole site in one file: hero, what we do, request tracker, tip form, documents, press, newsletter, donate and about.

## Status

This is a draft. The tip form, tracker, documents, press list and newsletter sign-up were built to store data inside a Claude artifact. On a regular web host they show a "not open yet" message and save nothing. Before launch, connect them to real services:

| Feature | Options |
| --- | --- |
| Tip form | Formspree, Basin, Netlify Forms, or a Google Form |
| Newsletter | Buttondown, Substack, or Mailchimp embed |
| Donations | Fiscal sponsor's donation page, Givebutter, Donorbox, or Patreon |
| Tracker and documents | Edit the page directly, or link to MuckRock and DocumentCloud |

## Publishing with GitHub Pages

Settings > Pages > Deploy from a branch > `main` / root. The site will appear at `https://<username>.github.io/public-records-accessibility-project/`.
