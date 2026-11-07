#!/bin/bash
# batrun.sh OLANG [NAME...]: each bat/NAME.olang through run.sh -d vb, one summary line per mode
O=${1:?compiler}; shift
cd /home/user/review/any5/vb
names=${@:-$(ls v*.olang | sed 's/\.olang$//')}
for n in $names; do
  /home/user/review/any5/run.sh -d vb $n $O ${SFX:-} > /dev/null 2>&1
  printf '%-22s ' $n; grep -E "^(run|baked):|error|status|use after" $n${SFX:-}.out 2>/dev/null | tr '\n' '|' | cut -c1-260; echo
done
