#!/bin/bash

FREQ_RESULT=$1
GITHUB_USER=$2
TIMESTAMP=$(date)

echo "DEBUG RESULT: $FREQ_RESULT"

echo -e "\n$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP" >> README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

git add README.md
git commit -m "Update README with vowel frequency"
git push
