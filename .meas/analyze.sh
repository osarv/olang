#!/bin/bash
# one-off: $1 build dir, $2 out dir; optimizes each module IR twice (O3; IRCE pre-pipeline + O3) and classifies sites
B=$1; O=$2; mkdir -p $O/a $O/h
PRE='function(sroa,early-cse<memssa>,simplifycfg,instcombine<no-verify-fixpoint>),function(loop-mssa(loop-rotate,licm)),function(irce)'
for f in $B/*.ll; do
  case $f in *.loc.ll|*.loc.*.ll|*olang_runtime*|*_h_*) continue;; esac
  n=$(basename $f)
  grep -q "check_failed" $f || continue
  opt-19 -passes='default<O3>' $f -S -o $O/a/$n 2>/dev/null
  opt-19 -passes="$PRE,default<O3>" $f -S -o $O/h/$n 2>/dev/null
done
python3 $(dirname $0)/sites.py $B $O/a/*.ll > $O/a.txt
python3 $(dirname $0)/sites.py $B $O/h/*.ll > $O/h.txt
