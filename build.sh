#!/usr/bin/env bash

cp roam-export/*.md TAS-LTS.wiki

# This would be nice but doesn't matter
# Fix Roam Research TODOs
#for f in TAS-LTS.wiki/Curriculum*.md ; do
#  sed -i 's/\{\{\[\[TODO\]\]\}\}/\[ \]/g' "${f}"
#done
