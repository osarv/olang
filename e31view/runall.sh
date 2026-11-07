#!/bin/bash
# runall.sh [repro.olang ...] - every repro through t.sh (c9d14a7: -b, -b -d -s, -i; base d05c915: -b); the memory
# repros (m1*) also through maxrss.sh, built by each compiler. Output in runall.out.
cd /home/user/review/e31view
NEW=/home/user/wt/rve31/build/out
OLD=/home/user/review/e31view/base/build/out
files=("$@"); [ ${#files[@]} -eq 0 ] && files=(repro/*.olang)
for f in "${files[@]}"; do
  echo "### $f"
  case "$f" in
    *m1*)
      d=$(dirname "$f"); b=$(basename "$f" .olang)
      for c in "new:$NEW" "base:$OLD"; do
        (cd "$d" && ${c#*:} -b "$b.olang" > /dev/null 2>&1) && echo "[${c%%:*} -b] $(./maxrss.sh "$d/build/$b")" \
          || echo "[${c%%:*} -b] compile fail: $(cd "$d" && ${c#*:} -b "$b.olang" 2>&1 | grep error | head -1)"
      done ;;
    *) ./t.sh "$PWD/$f" 2>&1 | grep -v '^ *|' | cut -c1-240 ;;
  esac
done | tee runall.out
