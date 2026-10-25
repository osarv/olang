#!/bin/bash
# runall.sh OLANG [SUFFIX]: every repro/*.olang through run.sh, one summary line each
O=${1:?compiler}; S=${2:-}
cd /home/user/review/any5/repro
for f in *.olang; do
  n=${f%.olang}
  /home/user/review/any5/run.sh $n $O $S > /dev/null 2>&1
  printf '%-28s ' $n; grep -aE "^(run|baked):|status|error\[|use after|interpret:" $n$S.out | tr '\n' '|' | cut -c1-220; echo
done
