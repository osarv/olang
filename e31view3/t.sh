#!/bin/bash
# usage: t.sh prog.olang - builds with new (193aec4: -b, -b -d -s) and runs; new -i; old 15841b0 -b (NOOLD=1 skips)
NEW=/home/user/wt/rve31c/build/out
OLD=/home/user/wt/rve31b/build/out
f=$1
cd "$(dirname "$f")"
f=$(basename "$f")
run() { # label compiler flags...
  local label=$1; shift; local comp=$1; shift
  local out; out=$($comp "$@" "$f" 2>&1)
  local st=$?
  if [ $st -ne 0 ]; then echo "[$label] COMPILE FAIL:"; echo "$out" | grep -v '^\s*$' | grep -v '^ *|\|^ *\^' | head -${ERRN:-8}; return; fi
  local bin; bin=$(echo "$out" | sed -n 's/^built \(.*\)$/\1/p' | tail -1)
  [ -z "$bin" ] && { echo "[$label] no binary: $out" | head -5; return; }
  local r; r=$(timeout 20 "$bin" 2>&1); local rs=$?
  echo "[$label] exit $rs:"; echo "$r" | head -12
}
run "new -b" $NEW -b
[ -z "$NOSAN" ] && run "new -b -d -s" $NEW -b -d -s
[ -z "$NOI" ] && { echo "[new -i]:"; timeout 60 $NEW -i "$f" 2>&1 | head -12; echo "  (exit ${PIPESTATUS[0]})"; }
[ -z "$NOOLD" ] && run "old -b" $OLD -b
