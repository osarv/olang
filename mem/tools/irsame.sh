#!/bin/bash
# irsame.sh VARIANT FILE... : in /home/user/wt/memchk (or $WT), -c each FILE with build/$REF (default base) and build/VARIANT,
# compare the .ll and stdout. The module's object and IR are removed before each run, so neither build reuses the other's
# object (B7 reuses an object newer than the compiler binary, and then writes no IR).
cd ${WT:-/home/user/wt/memchk}; r=${REF:-base}; v=$1; shift; d=/tmp/claude-0/irsame; mkdir -p $d
for f in "$@"; do
  n=$(echo "${f%.olang}" | sed 's|^\./||; s|/|_|g'); ll=build/$n.ll
  rm -f $ll build/$n.*.o; nice -n 19 build/$r -c $f > $d/base.out 2>&1; [ -f $ll ] || { echo "NOIR $r $f"; continue; }; mv $ll $d/base.ll
  rm -f build/$n.*.o; nice -n 19 build/$v -c $f > $d/v.out 2>&1; [ -f $ll ] || { echo "NOIR $v $f"; continue; }; cp $ll $d/v.ll
  sed -i 's|build/[^ ]*\.o|OBJ|g' $d/base.out $d/v.out
  if cmp -s $d/base.ll $d/v.ll && cmp -s $d/base.out $d/v.out; then echo "SAME $f ($(wc -c <$d/v.ll) bytes IR)"; else echo "DIFF $f"; fi
done
