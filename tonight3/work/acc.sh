#!/bin/bash
# usage: acc.sh files... - reports ACCEPTED or the first error line for each
O=${O:-/home/user/wt/s3c/build/out}
for f in "$@"; do
  out=$($O -b $f 2>&1)
  if [ $? -eq 0 ]; then
    b=$(basename $f .olang); r=$(timeout 20 ./build/$b 2>&1 | tr '\n' ' '); echo "ACCEPTED $f :: $r"
  else echo "REJECTED $f :: $(echo "$out" | grep -m1 error)"; fi
done
