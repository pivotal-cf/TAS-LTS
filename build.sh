#!/usr/bin/env bash

#cp roam-export/*.md TAS-LTS.wiki

for f in roam-export/*.md ; do
  processed_f_name=$(basename "${f// /-}")
  cp "${f}" "TAS-LTS.wiki/$processed_f_name"
done

# This would be nice but doesn't matter
# Fix Roam Research TODOs
#for f in TAS-LTS.wiki/Curriculum*.md ; do
#  sed -i 's/\{\{\[\[TODO\]\]\}\}/\[ \]/g' "${f}"
#done
