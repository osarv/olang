#!/bin/bash
# regress.sh LISTFILE OUT : every program in LISTFILE built by d5ddcda with -b -d -s; if accepted, run it and -i it and
# compare (status and output). One line per program in OUT: REFUSED / SAME / DIFF / SAN (sanitizer report).
NEW=/home/user/wt/rvvec6/build/out
w=/home/user/review/vec6/runs/regress; mkdir -p $w
while read -r f; do
  d=$w/x; rm -rf $d; mkdir -p $d; cd $d
  if ! timeout 120 $NEW -b -d -s "$f" > cc.log 2>&1; then echo "REFUSED $f" >> $2; cd /; continue; fi
  b=$(ls build/*.debug.san 2>/dev/null | head -1)
  [ -z "$b" ] && { echo "NOBIN $f" >> $2; cd /; continue; }
  o1=$(timeout 30 $b 2>&1 < /dev/null); s1=$?
  o2=$(timeout 60 $NEW -i "$f" 2>&1 < /dev/null); s2=$?
  if echo "$o1" | grep -q 'use after scope closed'; then echo "SAN $f" >> $2
  elif [ "$o1" == "$o2" ] && [ $s1 == $s2 ]; then echo "SAME $f" >> $2
  else echo "DIFF $f s1=$s1 s2=$s2 | $(echo "$o1" | tail -1 | cut -c1-80) | $(echo "$o2" | tail -1 | cut -c1-80)" >> $2; fi
  cd /
done < $1
rm -rf $w/x
