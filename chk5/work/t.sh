#!/bin/bash
# usage: t.sh file.olang [modes...]   modes: b s ds i  (default b s i) ; C=new|base (default both)
f=$(readlink -f "$1"); shift
modes=${@:-b s i}
W=/home/user/review/chk5/work/runs
one() {
  name=$1; O=$2
  d=$W/$name/$(basename $f .olang); rm -rf $d; mkdir -p $d
  cp $(dirname $f)/*.olang $d/ 2>/dev/null
  cd $d
  echo "##### $name"
  for m in $modes; do
    case $m in
      b) fl="";; s) fl="-s";; ds) fl="-d -s";; d) fl="-d";; r) fl="-r";;
      i) echo "--- -i:"; timeout 120 $O -i $(basename $f) 2>&1 | head -15; echo "status ${PIPESTATUS[0]}"; continue;;
    esac
    out=$($O $fl -b $(basename $f) 2>&1) || { echo "[$fl build failed]"; echo "$out" | grep "error\|warning" | head -6; continue; }
    bin=$(echo "$out" | sed -n 's/^built //p' | tail -1)
    echo "--- $fl ($bin):"; timeout 60 $bin 2>&1 | head -15; echo "status ${PIPESTATUS[0]}"
  done
}
case ${C:-both} in
  new) one new /home/user/wt/rv10/build/out;;
  base) one base /home/user/wt/chk5base/build/out;;
  *) one new /home/user/wt/rv10/build/out; one base /home/user/wt/chk5base/build/out;;
esac
