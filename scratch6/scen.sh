#!/bin/bash
cd /home/user/wt/freeing6
for s in freeing earlyfree memoryplaced regions landing chunkpool scopefind fieldset twins; do
  CHECKS_SCENARIO=$s OLANG=$PWD/scratch6/ol2 ./scratch6/ol2 test checks/checks.olang > scen-$s.log 2>&1
  echo "$s: $(grep -c '^FAIL\|check FAIL' scen-$s.log) fails, $(tail -1 scen-$s.log)"
done > scen-summary.log
