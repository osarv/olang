#!/bin/bash
# runall.sh [repro.olang ...] - every repro through t.sh (15841b0: -b, -b -d -s, -i; base d05c915: -b); the F1-F3 repros
# also through the scratch patch (patch/, env RVPROJ=1 RVREREAD=1) under -b -d -s. Output in runall.out.
cd /home/user/review/e31view2
P=/home/user/review/e31view2/patch/build/out
files=("$@"); [ ${#files[@]} -eq 0 ] && files=(repro/*.olang)
for f in "${files[@]}"; do
  echo "### $f"
  head -1 "$f" | cut -c1-160
  ./t.sh "$PWD/$f" 2>&1 | grep -v '^ *|' | cut -c1-200
  case "$(basename $f)" in f1*|f2*|f3*)
    d=$(dirname "$f"); b=$(basename "$f" .olang)
    rm -rf "$d/build"
    out=$(cd "$d" && RVPROJ=1 RVREREAD=1 $P -b -d -s "$b.olang" 2>&1)
    if [ $? -ne 0 ]; then echo "[patched -b -d -s] COMPILE FAIL: $(echo "$out" | grep 'error\[' | head -1 | cut -c1-160)"
    else echo "[patched -b -d -s] $(timeout 10 "$d/build/$b.debug.san" 2>&1 | tr '\n' ' ' | cut -c1-120)"; fi
    rm -rf "$d/build" ;;
  esac
done | tee runall.out
