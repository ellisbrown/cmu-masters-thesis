#!/bin/bash

set -x

git filter-branch --force --index-filter \
    'git rm --cached --ignore-unmatch elbrown_thesis.pdf' \
    --prune-empty --tag-name-filter cat -- --all
make
git add -f elbrown_thesis.pdf
git commit -m 'Update PDF.'
git push -f
