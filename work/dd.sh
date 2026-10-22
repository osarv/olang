#!/bin/bash
# dd.sh START COUNT: scenarios one compiler refuses and the other accepts
W=/home/user/wt/rvport/work; F=/home/user/wt/rvport/build/fuzz_fuzz.debug
P=/home/user/wt/rvport/build/compiler_olang; S=/home/user/wt/rvport/build/out
start=$1; count=$2; tag=${3:-x}
for ((seed=start; seed<start+count; seed++)); do
  d=$W/dd/$tag; mkdir -p $d/p $d/s; cd $d
  $F scopeshow $seed 12 > p.olang
  cp p.olang p/; cp p.olang s/
  (cd p; timeout 600 $P compile p.olang > c.txt 2>&1)
  (cd s; timeout 600 $S compile p.olang > c.txt 2>&1)
  for c in p s; do
    awk 'NR==FNR { if ($0 ~ /^# scenario /) cur=$3; if ($0 ~ /^fn main\(\)/) cur=-1; own[FNR]=cur; next }
         /^p.olang:[0-9]+:[0-9]+: error/ { split($0,a,":"); k=own[a[2]]; if (k!="" && k>=0) print k }' p.olang $c/c.txt | sort -u > $c.ids
  done
  pa=$(comm -13 p.ids s.ids | tr '\n' ' '); sa=$(comm -23 p.ids s.ids | tr '\n' ' ')
  [ -n "$pa" ] && echo "seed $seed: port ACCEPTS, stage 0 refuses: $pa"
  [ -n "$sa" ] && echo "seed $seed: port refuses, stage 0 accepts: $sa"
done
