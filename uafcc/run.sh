#!/bin/bash
# run.sh FILE: build under the scope sanitizer with the fixed and the previous compiler, and interpret with the fixed
NEW=/home/user/wt/rvuafcc/build/olang
OLD=/home/user/wt/rvuafcc-prev/build/olang
f=$1
echo "== $f  [fixed -debug -sanitize]"; timeout 300 $NEW -debug -sanitize "$f" 2>&1 | tail -6
echo "== $f  [prev  -debug -sanitize]"; timeout 300 $OLD -debug -sanitize "$f" 2>&1 | tail -6
echo "== $f  [fixed interpret]"; timeout 300 $NEW interpret "$f" 2>&1 | tail -4
