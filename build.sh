#!/usr/bin/env bash

#cp roam-export/*.md TAS-LTS.wiki

for f in roam-export/*.md ; do
  name_with_spaces_replaced=$(basename "${f// /-}")
  processed_file_name="${name_with_spaces_replaced/Curriculum---/}"
  cp "${f}" "TAS-LTS.wiki/$processed_file_name"
done

# This would be nice but doesn't matter
# Fix Roam Research TODOs
for f in TAS-LTS.wiki/*.md ; do
  sed -i '' -e 's/Curriculum - //g' "${f}"
  sed -i '' -e 's/{{\[\[TODO\]\]}}/\[ \]/g' "${f}"
done
