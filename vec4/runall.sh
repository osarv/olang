#!/bin/bash
# runall.sh [repro.olang ...] - every repro (repro/*.olang, repro/over/*.olang) through run.sh:
#   1bcfb72 (this round, /home/user/wt/rvvec4/build/out) -b -d -s (scope sanitizer), -i (reference answer), -b;
#   then accept/refuse on 280ef76 (base-280ef76) and master 8548b56 (base-8548b56), both built from git archive here.
# Output in runall.out; per-repro build dirs under runs/ (deleted after each run).
cd /home/user/review/vec4
files=("$@"); [ ${#files[@]} -eq 0 ] && files=(repro/*.olang repro/over/*.olang)
for f in "${files[@]}"; do
  echo "### $f"
  ./run.sh "$f" 2>&1 | cut -c1-240
done | tee runall.out
