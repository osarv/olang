#!/bin/bash
# race.sh NAME: build -r, run once, report races; also report whether lambdas call capture_scope
O=${O:-/home/user/wt/rv8/build/out}
n=$1
out=$($O -b $n.olang 2>&1) || { echo "$n: BUILD FAILED: $(echo "$out" | head -5)"; exit; }
cs=$(awk '/^define internal.*lambda/,/^}/' build/$n.main.ll | grep -c "capture_scope")
$O -r -b $n.olang >/dev/null 2>&1
r=$(timeout 120 ./build/$n.race 2>&1)
nr=$(echo "$r" | grep -c "WARNING: ThreadSanitizer")
echo "$n: capture_scope calls=$cs races=$nr out=$(echo "$r" | grep -v '^\s*#\|ThreadSan\|^==\|SUMMARY\|^$\|Read of\|Write of\|Previous\|Location\|Thread T\|symbolizer\|Mutex' | tail -1)"
