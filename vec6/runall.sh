#!/bin/bash
# runall.sh [repro.olang ...] - every repro (repro/*.olang) through run.sh: d5ddcda -b -d -s, -i, -b; f743da5 accept/refuse.
# Output in runall.out.
cd /home/user/review/vec6
files=("$@"); [ ${#files[@]} -eq 0 ] && files=(repro/*.olang)
for f in "${files[@]}"; do
  echo "### $f"
  ./run.sh "$f" 2>&1 | cut -c1-300
done | tee runall.out
