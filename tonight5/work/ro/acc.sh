#!/bin/bash
# usage: acc.sh files... - ACCEPTED (with output of -b run) or first error
O=${O:-/home/user/wt/rv5/build/out}
for f in "$@"; do
  out=$($O -b $f 2>&1)
  if [ $? -eq 0 ]; then bin=$(echo "$out" | sed -n 's/^built //p'); echo "$f: ACCEPTED: $(timeout 20 $bin 2>&1 | tr '\n' ' ')"; else echo "$f: $(echo "$out" | grep -m1 error)"; fi
done
