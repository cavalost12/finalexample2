#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://cavalost12.github.io/finalexample2
git push -f git@github.com:cavalos/finalexample2.git master:gh-pages

cd -