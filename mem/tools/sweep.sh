#!/bin/bash
# sweep.sh SHARD NSHARDS: builds every checks/cases program of shard SHARD with the ASan stage 0 (memfix/build/asan),
# as checks.olang builds it (-b + the case's "# flags:"), in a directory of the shard's own; ASan reports land in
# /tmp/claude-0/sweep/logs/<case>.asan.<pid>
W=/home/user/wt/memfix; A=$W/build/asan; s=$1; n=$2
d=/tmp/claude-0/sweep/shard$s; mkdir -p $d /tmp/claude-0/sweep/logs
i=0
for f in $W/checks/cases/*.olang; do
  i=$((i+1)); [ $((i % n)) -eq $s ] || continue
  name=$(basename $f); base=${name%.olang}
  flags=$(grep -m1 "^# flags: " $f | sed 's/^# flags: //')
  cp $f $d/
  ( cd $d && ASAN_OPTIONS=detect_leaks=0:handle_segv=0:log_path=/tmp/claude-0/sweep/logs/$base.asan OLANG_NOFORK=1 \
    timeout 900 nice -n 19 $A -b $flags $name > /tmp/claude-0/sweep/logs/$base.out 2>&1 )
  echo "$base $?" >> /tmp/claude-0/sweep/done$s.txt
done
