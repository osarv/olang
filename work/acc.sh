#!/bin/bash
# acc.sh LOG: each scenario the port accepts and stage 0 refuses, built -debug -sanitize by the port and run,
# against the port's interpreter
W=/home/user/wt/rvport/work; F=/home/user/wt/rvport/build/fuzz_fuzz.debug; P=/home/user/wt/rvport/build/compiler_olang
grep ACCEPTS $1 | while read -r _ seed _ _ _ _ _ scens; do
  seed=${seed%:}
  for k in $scens; do
    d=$W/acc/$seed-$k; mkdir -p $d; cd $d
    $F scopeshow $seed 12 $k > p.olang
    if ! timeout 600 $P build -debug -sanitize p.olang > c.txt 2>&1; then echo "$seed-$k: port refuses alone"; continue; fi
    timeout 60 ./build/p.debug.san > s.txt 2> serr.txt; st=$?
    timeout 300 $P interpret p.olang > i.txt 2> ierr.txt; it=$?
    if [ $st -ne 0 ] || ! cmp -s s.txt i.txt; then echo "$seed-$k: DIFF st=$st it=$it $(head -c 200 s.txt | tr '\n' ' ') | $(head -c 200 i.txt | tr '\n' ' ') | $(head -c 300 serr.txt| tr '\n' ' ')"; else echo "$seed-$k: same"; fi
  done
done
