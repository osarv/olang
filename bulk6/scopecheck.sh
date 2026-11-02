#!/bin/bash
# compile each test file's tests with OLANG_SCOPECHECK=1 (the component-reuse cache checked)
cd /home/user/review/bulk6/work
for f in "$@"; do
  out=$(OLANG_SCOPECHECK=1 timeout 600 /home/user/wt/rework/build/olang test -quick $f 2>&1 | grep -i "SCOPECHECK\|panic\|internal\|FAIL\|abort" | head -3)
  echo "$(basename $f): ${out:-ok}"
done
