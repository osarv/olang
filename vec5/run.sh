#!/bin/bash
# run.sh FILE.olang : compile with 7f1a37a (this round) under -b -d -s and run; then -i; then -b.
# Then whether 1bcfb72 (the previous tip) and master 8548b56 accept it. Each program builds in runs/<name>.
NEW=/home/user/wt/rvvec5/build/out
OLD=/home/user/review/vec5/base-1bcfb72/build/out
MASTER=/home/user/review/vec5/base-8548b56/build/out
f=$(readlink -f "$1"); n=$(basename "${f%.olang}")
d=/home/user/review/vec5/runs/$n; rm -rf $d; mkdir -p $d; cd $d
if $NEW -b -d -s "$f" > cc.log 2>&1; then
  b=$(ls build/*.debug.san 2>/dev/null | head -1)
  out=$(timeout 60 $b 2>&1); st=$?
  printf "  7f1a37a -b -d -s: %s (status %s)\n" "$(echo "$out" | tail -2 | tr '\n' '|')" $st
  printf "  7f1a37a -i      : %s\n" "$(timeout 120 $NEW -i "$f" 2>&1 | tail -2 | tr '\n' '|')"
  rm -rf build; $NEW -b "$f" > /dev/null 2>&1; b=$(ls build/ | grep -v '\.' | head -1)
  printf "  7f1a37a -b      : %s\n" "$(timeout 60 build/$b 2>&1 | tail -2 | tr '\n' '|')"
else
  printf "  7f1a37a: REFUSED %s\n" "$(grep -m2 'error' cc.log | tr '\n' '|')"
fi
if [ -z "$NOOLD" ]; then
for pair in "$OLD 1bcfb72" "$MASTER 8548b56"; do
  set -- $pair
  rm -rf build
  if $1 -b -d -s "$f" > $2.log 2>&1; then echo "  $2: accepted"; else echo "  $2: refused - $(grep -m1 error $2.log | cut -c1-170)"; fi
done
fi
rm -rf build
