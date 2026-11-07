#!/bin/bash
# runs every repro: this round's compiler three ways, and older compilers' accept/refuse
# usage: ./runall.sh [repro-name ...]   (from /home/user/review/vec3; binaries go to runs/build)
NEW=/home/user/wt/rvvec3/build/out          # 280ef76
V2=/home/user/wt/rvvec2/build/out           # 2d1aabf
V1=/home/user/wt/rvvec1/build/out           # 91ff37e
BASE=/home/user/review/vec3/base/build/out  # 3a4f5e8 (master, before Vec)
mkdir -p runs; cd runs
files=("$@"); [ ${#files[@]} -eq 0 ] && files=($(cd ../repro && ls *.olang) f3c_alias/main.olang)
for f in "${files[@]}"; do
  p=/home/user/review/vec3/repro/$f; n=$(echo "${f%.olang}" | tr / _)
  echo "### $f"
  rm -rf build
  if $NEW -b -d -s $p > $n.new.log 2>&1; then
    b=$(ls build/*.debug.san | head -1)
    out=$(timeout 60 $b 2>&1); st=$?
    printf "  280ef76 -b -d -s: %s (status %s)\n" "$(echo "$out" | tail -1)" $st
    printf "  280ef76 -i      : %s\n" "$(timeout 120 $NEW -i $p 2>&1 | tail -1)"
    $NEW -b $p > /dev/null 2>&1; b=$(ls build/ | grep -v '\.' | head -1)
    printf "  280ef76 -b      : %s\n" "$(timeout 60 build/$b 2>&1 | tail -1)"
  else
    printf "  280ef76: REFUSED %s\n" "$(grep -m1 error $n.new.log)"
  fi
  for pair in "$V2 2d1aabf" "$V1 91ff37e" "$BASE 3a4f5e8"; do
    set -- $pair
    if $1 -b -d -s $p > $n.$2.log 2>&1; then echo "  $2: accepted"; else echo "  $2: refused - $(grep -m1 -o 'error\[[^]]*\]' $n.$2.log)"; fi
  done
done
