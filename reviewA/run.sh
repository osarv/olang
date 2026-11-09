#!/bin/bash
# usage: run.sh file.olang ... ; runs sanitized debug build and interpret
cd /home/user/wt/reviewa
for f in "$@"; do
  echo "== $f"
  echo "-- san:"; timeout 300 build/olang -debug -sanitize "$f" 2>&1 | tail -6
  echo "   status ${PIPESTATUS[0]}"
  echo "-- interp:"; timeout 300 build/olang interpret "$f" 2>&1 | tail -6
  echo "   status ${PIPESTATUS[0]}"
done
