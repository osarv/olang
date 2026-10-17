#!/bin/bash
# run.sh FILE.olang : compile with d5ddcda (this round) under -b -d -s and run; then -i; then -b.
# Then whether f743da5 (the base, built from git archive in base-f743da5) accepts it. Each program builds in runs/<name>.
NEW=/home/user/wt/rvvec6/build/out
OLD=/home/user/review/vec6/base-f743da5/build/out
f=$(readlink -f "$1"); n=$(basename "${f%.olang}")
d=/home/user/review/vec6/runs/$n; rm -rf $d; mkdir -p $d; cd $d
if $NEW -b -d -s "$f" > cc.log 2>&1; then
  b=$(ls build/*.debug.san 2>/dev/null | head -1)
  out=$(timeout 60 $b 2>&1); st=$?
  printf "  d5ddcda -b -d -s: %s (status %s)\n" "$(echo "$out" | tail -3 | tr '\n' '|')" $st
  printf "  d5ddcda -i      : %s\n" "$(timeout 120 $NEW -i "$f" 2>&1 | tail -3 | tr '\n' '|')"
  rm -rf build; $NEW -b "$f" > /dev/null 2>&1; b=$(ls build/ | grep -v '\.' | head -1)
  out=$(timeout 60 build/$b 2>&1); st=$?
  printf "  d5ddcda -b      : %s (status %s)\n" "$(echo "$out" | tail -3 | tr '\n' '|')" $st
else
  printf "  d5ddcda: REFUSED %s\n" "$(grep -m2 'error' cc.log | tr '\n' '|')"
fi
if [ -z "$NOOLD" ]; then
  rm -rf build
  if $OLD -b -d -s "$f" > old.log 2>&1; then echo "  f743da5: accepted"; else echo "  f743da5: refused - $(grep -m1 error old.log | cut -c1-170)"; fi
fi
rm -rf build
