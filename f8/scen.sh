#!/bin/bash
cd /home/user/wt/freeing8
export OLANG_STD=$PWD/std OLANG=$PWD/build/olang
for s in "$@"; do
  rm -rf build/rec
  CHECKS_SCENARIO=$s build/olang test checks/checks.olang > scen_$s.log 2>&1
  echo "$s exit $? $(grep -c '^FAIL\|check FAIL' scen_$s.log) $(tail -1 scen_$s.log)"
done
