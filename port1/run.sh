#!/bin/bash
# t.sh NAME  - build /home/user/review/port1/NAME.olang with the port and stage 0 (-debug -sanitize), run both
R=/home/user/review/port1; W=${W:-/tmp/port1work}
n=$1; shift
for c in port s0; do
  d=$W/$c; mkdir -p $d; cd $d
  if [ $c = port ]; then C=${PORT:?set PORT to the port binary (build/compiler_olang)}; else C=${STAGE0:?set STAGE0 to build/out}; fi
  out=$($C build -debug -sanitize $R/$n.olang 2>&1)
  if echo "$out" | grep -q "^built"; then
    res=$(timeout 60 ./build/$n.debug.san "$@" 2>&1 | tail -4); echo "[$c] RUN(rc=$?): $res"
  else
    echo "[$c] REFUSED: $(echo "$out" | grep -m3 'error')"
  fi
done
