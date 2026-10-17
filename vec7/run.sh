#!/bin/bash
# run.sh FILE.olang : compile with c7099f6 (this round) under -b -d -s and run; then -i; then -b.
# Then whether d5ddcda (the base, built from git archive in base-d5ddcda) accepts it. Each program builds in runs/<name>.
NEW=/home/user/wt/rvvec7/build/out
OLD=/home/user/review/vec7/base-d5ddcda/build/out
f=$(readlink -f "$1"); n=$(basename "${f%.olang}")
d=/home/user/review/vec7/runs/$n; rm -rf $d; mkdir -p $d; cd $d
if $NEW -b -d -s "$f" > cc.log 2>&1; then
  b=$(ls build/*.debug.san 2>/dev/null | head -1)
  out=$(timeout 60 $b 2>&1); st=$?
  printf "  c7099f6 -b -d -s: %s (status %s)\n" "$(echo "$out" | tail -3 | tr '\n' '|')" $st
  printf "  c7099f6 -i      : %s\n" "$(timeout 120 $NEW -i "$f" 2>&1 | tail -3 | tr '\n' '|')"
  rm -rf build; $NEW -b "$f" > /dev/null 2>&1; b=$(ls build/ | grep -v '\.' | head -1)
  out=$(timeout 60 build/$b 2>&1); st=$?
  printf "  c7099f6 -b      : %s (status %s)\n" "$(echo "$out" | tail -3 | tr '\n' '|')" $st
else
  printf "  c7099f6: REFUSED %s\n" "$(grep -m2 'error' cc.log | tr '\n' '|')"
fi
if [ -z "$NOOLD" ]; then
  rm -rf build
  if $OLD -b -d -s "$f" > old.log 2>&1; then echo "  d5ddcda: accepted"; else echo "  d5ddcda: refused - $(grep -m1 error old.log | cut -c1-170)"; fi
fi
rm -rf build
