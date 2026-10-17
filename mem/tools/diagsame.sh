#!/bin/bash
# diagsame.sh SHARD N: every must-fail checks/cases program built with memir/build/base and memir/build/out; reports any
# difference in what they print
W=/home/user/wt/memir; s=$1; n=$2; d=/tmp/claude-0/diag/shard$s; mkdir -p $d; i=0
for f in $W/checks/cases/*.olang; do
  i=$((i+1)); [ $((i % n)) -eq $s ] || continue
  grep -aq "^# check: fail" $f || continue
  name=$(basename $f); flags=$(grep -a -m1 "^# flags: " $f | sed 's/^# flags: //'); cp $f $d/
  (cd $d && timeout 300 nice -n 19 $W/build/base -b $flags $name > base.txt 2>&1; echo "rc $?" >> base.txt
   timeout 300 nice -n 19 $W/build/out -b $flags $name > out.txt 2>&1; echo "rc $?" >> out.txt
   cmp -s base.txt out.txt && echo "SAME $name" || echo "DIFF $name")
done > /tmp/claude-0/diag/res$s.txt
