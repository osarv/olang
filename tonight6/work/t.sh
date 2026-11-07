#!/bin/bash
# usage: t.sh prog.olang  - builds with new (-b, -b -s, -b -d -s), runs; -i; old -b
NEW=/home/user/wt/rv6/build/out
OLD=/home/user/review/tonight6/base/build/out
f=$1
cd "$(dirname "$f")"
f=$(basename "$f")
run() { # label compiler flags...
  local label=$1; shift; local comp=$1; shift
  local out; out=$($comp "$@" "$f" 2>&1)
  local st=$?
  if [ $st -ne 0 ]; then echo "[$label] COMPILE FAIL:"; echo "$out" | grep -v '^\s*$' | head -12; return; fi
  local bin; bin=$(echo "$out" | sed -n 's/^built \(.*\)$/\1/p' | tail -1)
  local r; r=$(timeout 20 "$bin" 2>&1); local rs=$?
  echo "[$label] exit $rs:"; echo "$r" | head -12
}
run "new -b" $NEW -b
run "new -b -s" $NEW -b -s
run "new -b -d -s" $NEW -b -d -s
echo "[new -i]:"; timeout 60 $NEW -i "$f" 2>&1 | head -12; echo "  (exit ${PIPESTATUS[0]})"
[ -z "$NOOLD" ] && run "old -b" $OLD -b
