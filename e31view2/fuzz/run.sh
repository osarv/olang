#!/bin/bash
# run.sh FROM TO - for each seed: generate, build with 15841b0 -b; refused -> counted; accepted -> run: the List copy and
# the Array place must print the same, and -i must print what -b does (and -b -d -s every 5th); a mismatch is kept in found/
cd /home/user/review/e31view2/fuzz
NEW=/home/user/wt/rve31b/build/out
mkdir -p w found
acc=0; ref=0; bad=0
for s in $(seq $1 $2); do
  d=w/s$s; mkdir -p $d
  python3 gen.py $s > $d/p.olang
  if (cd $d && $NEW -b p.olang > out.txt 2>&1); then
    acc=$((acc+1))
    o=$(timeout 10 $d/build/p 2>&1)
    a=$(echo "$o" | sed -n 1p); b=$(echo "$o" | sed -n 2p)
    i=$(cd $d && timeout 30 $NEW -i p.olang 2>&1)
    if [ "$a" != "$b" ] || [ "$o" != "$i" ]; then bad=$((bad+1)); cp $d/p.olang found/s$s.olang; echo "MISMATCH $s: $o || $i"; fi
    if [ $((s % 5)) -eq 0 ]; then
      if (cd $d && $NEW -b -d -s p.olang > out2.txt 2>&1); then
        o2=$(timeout 10 $d/build/p.debug.san 2>&1 || timeout 10 $(ls -t $d/build/p* | head -1) 2>&1)
      fi
    fi
  else ref=$((ref+1)); grep -h "error\[" $d/out.txt | sed 's/.*error\[\([^]]*\)\].*/\1/' | head -1 >> refused_rules.txt; fi
  rm -rf $d
done
echo "seeds $1-$2: accepted $acc refused $ref mismatches $bad"
