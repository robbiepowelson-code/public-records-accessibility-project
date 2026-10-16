#!/usr/bin/env bash
# Preview the site on your computer at http://localhost:4000
# The site is built with Jekyll (the same tool GitHub Pages uses).
cd "$(dirname "$0")"
if ! command -v bundle >/dev/null 2>&1; then
  echo "Jekyll isn't set up on this computer yet. One-time setup on a Mac:"
  echo "  brew install ruby"
  echo "  echo 'export PATH=\"/opt/homebrew/opt/ruby/bin:\$PATH\"' >> ~/.zshrc && source ~/.zshrc"
  echo "  gem install bundler && bundle install"
  echo "Then run ./start.sh again."
  echo
  echo "You don't need this to edit the site: the web editor at https://app.pagescms.org works without it."
  exit 1
fi
[ -f Gemfile.lock ] || bundle install
( sleep 4; open "http://localhost:4000/public-records-accessibility-project/" 2>/dev/null || true ) &
bundle exec jekyll serve --livereload
