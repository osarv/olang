#!/bin/bash
# runall.sh [repro.olang ...] - every repro (repro/*.olang) through run.sh:
#   7f1a37a (this round, /home/user/wt/rvvec5/build/out) -b -d -s (scope sanitizer), -i (reference answer), -b;
#   then accept/refuse on 1bcfb72 (base-1bcfb72) and master 8548b56 (base-8548b56), both built from git archive here.
# Output in runall.out; per-repro build dirs under runs/ (deleted after each run).
cd /home/user/review/vec5
files=("$@"); [ ${#files[@]} -eq 0 ] && files=(repro/*.olang)
for f in "${files[@]}"; do
  echo "### $f"
  ./run.sh "$f" 2>&1 | cut -c1-260
done | tee runall.out
