#!/bin/bash
# scratch: a SHELL for make that logs when each recipe line started and ended
s=$(date +%s.%N)
/bin/bash "$@"
rc=$?
e=$(date +%s.%N)
printf '%s %s %s %s\n' "$s" "$e" "$rc" "$(echo "$2" | tr '\n' ' ' | cut -c1-150)" >> /home/user/wt/fastverify/meas/trace.txt
exit $rc
