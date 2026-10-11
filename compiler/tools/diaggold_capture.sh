#!/bin/sh
# Captures stage 0's diagnostics on every checks/cases program that must fail to compile (compiler/DESIGN.md section
# 4, item 3): compiler/goldens/diag.txt holds, for each such case, a line "=== CASE" and then what the C compiler
# printed on stdout for "olang -b FLAGS CASE", run in a directory of its own with the case copied in, as the checks
# run it. The repository's root is written $ROOT, so the file does not depend on where the checkout is.
# Usage, from the repository root: compiler/tools/diaggold_capture.sh [COMPILER]  (default build/out)
set -e
root=$(pwd -P)
olang=$(cd "$(dirname "${1:-build/out}")" && pwd -P)/$(basename "${1:-build/out}")
work="$root/build/diaggold"
rm -rf "$work"
mkdir -p "$work"
grep -l '^# check: fail' checks/cases/*.olang | sort > "$work/cases.txt"
# each case in its own directory, four at a time
export work olang
xargs -P 4 -I{} sh -c '
    name=$(basename "{}")
    dir="$work/cases/${name%.olang}"
    mkdir -p "$dir"
    cp "{}" "$dir/"
    flags=$(sed -n "s/^# flags: //p" "{}" | head -n 1)
    (cd "$dir" && "$olang" -b $flags "$name" > out.txt 2> err.txt) || true
' < "$work/cases.txt"
out="$root/compiler/goldens/diag.txt"
: > "$out.tmp"
while read -r f; do
    name=$(basename "$f")
    dir="$work/cases/${name%.olang}"
    echo "=== $name" >> "$out.tmp"
    sed "s#$root#\$ROOT#g" "$dir/out.txt" >> "$out.tmp"
    if [ -s "$dir/err.txt" ]; then echo "diaggold_capture: $name wrote to stderr" >&2; fi
done < "$work/cases.txt"
mv "$out.tmp" "$out"
echo "diaggold_capture: $(wc -l < "$work/cases.txt") cases captured into compiler/goldens/diag.txt"
