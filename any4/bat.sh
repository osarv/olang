#!/bin/bash
# bat.sh OLANG [NAME...]: each bat/NAME.olang (+ common.inc) built -debug -sanitize, built plainly, and interpreted; a
# one-line summary per mode, the full output in bat/out/NAME.out
B=/home/user/review/any4/bat
O=${1:?pass the compiler}; shift
names=("$@"); [ ${#names[@]} -eq 0 ] && names=($(cd $B && ls *.olang | sed 's/\.olang$//'))
mkdir -p $B/out$SFX
for n in "${names[@]}"; do
  G=$B/gen$SFX/$n; mkdir -p $G
  { grep -q 'import "std/io"' $B/$n.olang || echo 'import "std/io"'; cat $B/$n.olang /home/user/review/any4/common.inc; } > $G/$n.olang
  ( cd $G
    s1="refused"; s2="refused"; s3=""
    if $O build -debug -sanitize $n.olang > c1.txt 2>&1; then timeout 60 ./build/$n.debug.san > r1.txt 2>&1; s1="exit $? $(tr '\n' '|' < r1.txt | cut -c1-140)"; else s1="refused: $(grep -m1 'error' c1.txt | cut -c1-160)"; fi
    if $O build $n.olang > c2.txt 2>&1; then timeout 60 ./build/$n > r2.txt 2>&1; s2="exit $? $(tr '\n' '|' < r2.txt | cut -c1-140)"; else s2="refused"; fi
    timeout 120 $O interpret $n.olang > r3.txt 2>&1; s3="exit $? $(grep -v '^ ' r3.txt | tr '\n' '|' | cut -c1-140)"
    { echo "== $n"; echo "  san:    $s1"; echo "  O3:     $s2"; echo "  interp: $s3"; } | tee $B/out$SFX/$n.sum
    { cat $B/out$SFX/$n.sum; echo "--- compile (-debug -sanitize)"; cat c1.txt; echo "--- run san"; cat r1.txt 2>/dev/null; echo "--- run O3"; cat r2.txt 2>/dev/null; echo "--- interpret"; cat r3.txt; } > $B/out$SFX/$n.out
    rm -f r1.txt r2.txt )
done
