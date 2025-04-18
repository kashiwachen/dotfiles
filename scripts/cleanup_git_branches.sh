# !/usr/bin/env bash
set -euo pipefail -o posix
# script to clean the non-existing branches in remeote repo.
git fetch -p && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -r git branch -D
