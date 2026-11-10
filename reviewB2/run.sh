#!/bin/bash
# usage: run.sh file.olang ... ; sanitized debug build+run, and interpret
cd /home/user/review/reviewB2
O=/home/user/wt/merge/build/olang
for f in "$@"; do
  echo "== $f"
  echo "-- san:"; timeout 300 $O -debug -sanitize "$f" 2>&1 | tail -8
  echo "   status ${PIPESTATUS[0]}"
  echo "-- interp:"; timeout 300 $O interpret "$f" 2>&1 | tail -8
  echo "   status ${PIPESTATUS[0]}"
done
