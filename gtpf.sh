#!/bin/bash
git checkout devd
git add -A
git commit -m "tsk"
git push

git checkout staging
git merge devd
git push

git checkout t-prod
git merge staging
git push

git diff HEAD staging
git diff HEAD devd
git checkout devd

