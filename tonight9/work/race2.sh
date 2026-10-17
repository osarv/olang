#!/bin/bash
# race2.sh NAME [runs]: build -b (report ICE), count capture_scope in lambdas, build -r and run N times, count races
O=${O:-/home/user/wt/rv9/build/out}
n=$1; runs=${2:-1}
out=$($O -b $n.olang 2>&1) || { echo "$n: BUILD FAILED: $(echo "$out" | grep -v '^\s*$' | head -4 | tr '\n' ' ')"; exit; }
ll=$(ls build/$n.main.ll 2>/dev/null)
cs=$(awk '/^define internal.*lambda/,/^}/' $ll | grep -c "capture_scope")
esc=$(grep -c "scope_escape" $ll)
$O -r -b $n.olang >/dev/null 2>&1 || { echo "$n: -r build failed"; exit; }
tot=0; outs=""
for k in $(seq $runs); do r=$(timeout 300 ./build/$n.race 2>&1); nr=$(echo "$r" | grep -c "WARNING: ThreadSanitizer"); tot=$((tot+nr)); outs="$outs|$(echo "$r" | grep -v '^\s*#\|ThreadSan\|^==\|SUMMARY\|^$\|Read of\|Write of\|Previous\|Location\|Thread T\|symbolizer\|Mutex\|^  \|is located\|^Atomic' | tail -1)"; done
echo "$n: capture_scope=$cs escape=$esc races=$tot out=$outs"
