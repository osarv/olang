#!/bin/bash
cd /home/user/wt/freeing7
export OLANG=$PWD/build/olang
for s in freeing earlyfree memoryplaced regions landing chunkpool scopefind fieldset twins; do
  CHECKS_SCENARIO=$s build/olang test checks/checks.olang > scen_$s.log 2>&1; echo "$s rc $?"
done
