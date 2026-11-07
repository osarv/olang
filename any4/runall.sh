#!/bin/bash
# runall.sh OLANG [SUFFIX] [NAME...]: run.sh on every repro/*.olang (or the names given), outputs in repro/NAME[SUFFIX].out
O=${1:?pass the compiler}; S=${2:-}; shift 2 2>/dev/null
names=("$@"); [ ${#names[@]} -eq 0 ] && names=($(cd /home/user/review/any4/repro && ls *.olang | sed 's/\.olang$//'))
for n in "${names[@]}"; do echo "##### $n"; /home/user/review/any4/run.sh $n $O $S 2>&1 | grep -v "Aborted"; done
