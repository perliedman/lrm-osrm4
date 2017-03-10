#!/bin/bash

VERSION=`echo "console.log(require('./package.json').version)" | node`
ORIGIN=`git remote -v|grep origin|head -n1|cut -f2|cut -d" " -f1`
CWD=`pwd`

git checkout -b build

echo Building dist files for $VERSION...
npm install
echo Done.

git add dist/* -f
git add bower.json -f

git commit -m "v$VERSION"

git tag v$VERSION -f
git push origin build --tags -f

git checkout master
git branch -D build
