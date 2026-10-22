#!/bin/bash
# cases.sh: every checks case that must fail, built by the port -debug -sanitize; one the port builds is run
P=/home/user/wt/rvport/build/compiler_olang; W=/home/user/wt/rvport/work/cases; mkdir -p $W; cd $W
for f in $(grep -l "^# check: fail" /home/user/wt/rvport/checks/cases/*.olang); do
  rm -rf build
  fl=$(grep -m1 "^# flags:" $f | sed 's/# flags://')
  out=$(timeout 120 $P build -debug -sanitize $fl $f 2>&1)
  if echo "$out" | grep -q "^built"; then
    b=$(basename $f .olang)
    r=$(timeout 30 ./build/$b.debug.san < /dev/null 2>&1 | tail -2 | tr '\n' ' ')
    echo "BUILT $(basename $f) [$(grep -m1 '^# check:' $f)] :: $r"
  fi
done
