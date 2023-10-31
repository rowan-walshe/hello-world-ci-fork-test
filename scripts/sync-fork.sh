#!/bin/sh

set -e

echo "Setting upstream to 'https://github.com/rowan-walshe-2/hello-world-ci-fork-test'."
git remote add upstream "https://github.com/rowan-walshe-2/hello-world-ci-fork-test.git"

echo "Syncing changes from upstream/main."
git pull --no-edit upstream main

echo "Pushing updates"
git remote set-url origin "https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/rowan-walshe/hello-world-ci-fork-test.git"
git push origin main
