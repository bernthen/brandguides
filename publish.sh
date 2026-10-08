#!/bin/sh
# Publishes the guides to https://brandguide.studioblunt.com/<client>/
# This folder is the bernthen/brandguides repo; pushing to main runs
# .github/workflows/pages.yml, which builds and deploys GitHub Pages.
set -e
cd "$(dirname "$0")"
git add -A
git diff --cached --quiet && { echo "Nothing changed"; exit 0; }
git commit -qm "${1:-Update brand guides}"
git push -q
echo "Pushed. Live in a minute at https://brandguide.studioblunt.com/"
