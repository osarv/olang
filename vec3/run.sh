#!/bin/bash
# run.sh FILE.olang : compile+run under -b -d -s, -i, -b ; print results
O=/home/user/wt/rvvec3/build/out
f=$(readlink -f "$1"); r=$(realpath --relative-to=/home/user/review/vec3/work "$f"); n=$(echo "${r%.olang}" | tr / _)
cd /home/user/review/vec3/work
echo "== check (-b -d -s)"
if $O -b -d -s "$f" > /home/user/review/vec3/work/$n.cc.log 2>&1; then
  echo "-- accepted"; timeout 60 ./build/$n.debug.san 2>&1 | tail -4; echo "status ${PIPESTATUS[0]}"
  echo "== -i"; timeout 120 $O -i "$f" 2>&1 | tail -4
  echo "== -b"; $O -b "$f" >/dev/null 2>&1 && timeout 60 ./build/$n 2>&1 | tail -4
else
  echo "-- REFUSED"; head -12 /home/user/review/vec3/work/$n.cc.log
fi
