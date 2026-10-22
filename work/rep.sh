#!/bin/bash
# rep.sh LIST TAG: each review program built by the port -debug -sanitize and run; a sanitizer report, a crash or a
# compiler failure that is not a diagnostic is printed
P=/home/user/wt/rvport/build/compiler_olang; W=/home/user/wt/rvport/work/rep/$2; mkdir -p $W; cd $W
while read -r f; do
  rm -rf build
  out=$(timeout 60 $P build -debug -sanitize /home/user/review/$f 2>&1); rc=$?
  if ! echo "$out" | grep -q "^built"; then
    if [ $rc -ge 124 ] || echo "$out" | grep -qi "internal\|crash\|segment"; then echo "COMPILER $f rc=$rc $(echo "$out" | tail -2 | tr '\n' ' ')"; fi
    echo "refused $f" >> refused.txt
    continue
  fi
  b=$(basename $f .olang)
  r=$(timeout 30 $W/build/$b.debug.san < /dev/null 2>&1 | tail -3); rr=$?
  if echo "$r" | grep -q "use after scope\|stale view\|internal compiler"; then echo "SAN $f :: $(echo "$r" | tr '\n' ' ')"; 
  elif echo "$r" | grep -qi "segmentation\|core dumped"; then echo "CRASH $f :: $(echo "$r" | tr '\n' ' ')"; fi
  echo "ran $f" >> ran.txt
done < $1
