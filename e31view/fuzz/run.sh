#!/bin/bash
# run.sh FROM TO - for each seed: generate, build with c9d14a7; refused -> counted; accepted -> run, the two lines
# (List copy, Array place) must match; a mismatch is kept in found/
cd /home/user/review/e31view/fuzz
NEW=/home/user/wt/rve31/build/out
mkdir -p w found
acc=0; ref=0; bad=0
for s in $(seq $1 $2); do
  d=w/s$s; mkdir -p $d
  python3 gen.py $s > $d/p.olang
  if (cd $d && $NEW -b p.olang > out.txt 2>&1); then
    acc=$((acc+1))
    o=$(timeout 10 $d/build/p 2>&1)
    a=$(echo "$o" | sed -n 1p); b=$(echo "$o" | sed -n 2p)
    if [ "$a" != "$b" ]; then bad=$((bad+1)); cp $d/p.olang found/s$s.olang; echo "MISMATCH $s: $a | $b"; fi
  else ref=$((ref+1)); fi
  rm -rf $d
done
echo "seeds $1-$2: accepted $acc refused $ref mismatches $bad"
