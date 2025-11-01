#!/usr/bin.env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New deployment'
git push -f git@github.com:raygba/web125-m10.git master: gh-pages

cd -