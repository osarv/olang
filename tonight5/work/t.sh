#!/bin/bash
# usage: t.sh file.olang [modes...]  modes: b d s ds i r ; O=compiler override
O=${O:-/home/user/wt/rv5/build/out}
f=$1; shift
modes=${@:-b s ds i}
base=$(basename $f .olang)
run() { local flags="$1" bin; out=$($O $flags -b $f 2>&1) || { echo "[$flags build failed] $out" | head -30; return; }
  bin=$(echo "$out" | sed -n 's/^built //p' | tail -1); echo "--- $flags ($bin):"; timeout 120 $bin 2>&1 | head -20; echo "status ${PIPESTATUS[0]}"; }
for m in $modes; do
  case $m in
    b) run "";;
    d) run "-d";;
    s) run "-s";;
    ds) run "-d -s";;
    r) run "-r";;
    i) echo "--- -i:"; timeout 120 $O -i $f 2>&1 | head -20; echo "status ${PIPESTATUS[0]}";;
  esac
done
