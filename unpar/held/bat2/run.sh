#!/bin/bash
# run.sh file...: for each, branch and master compile+run under -debug -sanitize
B=/home/user/wt/rvunpar/build/olang; M=/home/user/wt/rvunpar-m/build/olang
for f in "$@"; do
  ob=$(timeout 40 $B -debug -sanitize $f 2>&1); rb=$?
  om=$(timeout 40 $M -debug -sanitize $f 2>&1); rm=$?
  eb=$(echo "$ob" | grep -o 'error\[[A-Za-z0-9]*\]' | head -1); em=$(echo "$om" | grep -o 'error\[[A-Za-z0-9]*\]' | head -1)
  printf "%-28s branch rc=%-3s %-14s | master rc=%-3s %-14s | %s\n" "$f" "$rb" "$eb" "$rm" "$em" "$(echo "$ob" | grep -v '^ ' | head -1 | cut -c1-90)"
done
