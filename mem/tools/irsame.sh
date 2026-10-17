#!/bin/bash
# irsame.sh VARIANT FILE... : in /home/user/wt/memchk, -c each FILE with build/base and build/VARIANT, compare the .ll and stdout
cd /home/user/wt/memchk; r=${REF:-base}; v=$1; shift; d=/tmp/claude-0/irsame; mkdir -p $d
for f in "$@"; do
  n=$(echo "${f%.olang}" | sed 's|^\./||; s|/|_|g'); ll=build/$n.ll
  nice -n 19 build/$r -c $f > $d/base.out 2>&1; cp $ll $d/base.ll
  nice -n 19 build/$v -c $f > $d/v.out 2>&1; cp $ll $d/v.ll
  if cmp -s $d/base.ll $d/v.ll && cmp -s $d/base.out $d/v.out; then echo "SAME $f ($(wc -c <$d/v.ll) bytes IR)"; else echo "DIFF $f"; fi
done
