#!/usr/bin/env bash
# bench/gemm.sh - std/linalg's matrix products against C: the square product C = A B at 64 .. 2048 in F32 and F64
# (olang's Gemm on 1 and 4 threads - built for this machine, as olang builds by default (B12) - and on 1 thread built for
# baseline x86-64 (-a x86-64), a naive C loop, the same blocked algorithm in C,
# and OpenBLAS on 1 and 4 threads), the matrix-vector products at batch 1 both ways round, and a training step of a small perceptron
# (bench/mlp.olang against bench/c/mlp.c). Every time is the best of several runs inside the program. Not part of
# "make verify".
#
#   bench/gemm.sh [-q]      -q: build only
#   BENCH_LOCK=FILE         take this flock while timing, as run.sh does
set -euo pipefail
cd "$(dirname "$0")"
OLANG=../build/out
[ -x $OLANG ] || make -C .. build/out >/dev/null
mkdir -p build/la
# each olang program in a directory of its own, built for this machine and again for baseline x86-64; the C side is
# built for this machine too, with C's floating point kept as written (-ffp-contract=off), as olang's is (B12c)
for p in gemm mlp; do
    mkdir -p build/la/$p
    (cd build/la/$p && ../../../$OLANG -a x86-64 -b ../../../$p.olang >/dev/null && cp build/$p build/$p.base \
        && ../../../$OLANG -b ../../../$p.olang >/dev/null)
done
clang -O3 -flto -march=native -ffp-contract=off -o build/la/gemm_c c/gemm.c -lopenblas -lpthread
clang -O3 -flto -march=native -ffp-contract=off -o build/la/mlp_c c/mlp.c -lopenblas -lpthread -lm
[ "${1:-}" = "-q" ] && exit 0

if [ -n "${BENCH_LOCK:-}" ]; then
    exec 9>"$BENCH_LOCK"
    echo "waiting for $BENCH_LOCK ..." >&2
    flock 9
fi

O=build/la/gemm/build/gemm
OB=build/la/gemm/build/gemm.base
C=build/la/gemm_c
gf() { awk '{for (i = 1; i < NF; i++) if ($(i + 1) == "GFLOPS") print $i}'; }
reps() { case $1 in 64|128|256) echo 30 ;; 512) echo 8 ;; 1024) echo 4 ;; *) echo 2 ;; esac; }

echo "| type | n | olang 1T | olang 4T | olang x86-64 1T | C naive | C blocked | OpenBLAS 1T | OpenBLAS 4T |"
echo "|---|---:|---:|---:|---:|---:|---:|---:|---:|"
for t in f32 f64; do
    for n in 64 128 256 512 1024 2048; do
        r=$(reps $n)
        o1=$($O $t $n 1 $r | gf)
        o4=$($O $t $n 4 $r | gf)
        on=$($OB $t $n 1 $r | gf)
        cn=$( [ $n -le 1024 ] && $C $t $n naive $r | gf || $C $t $n naive 1 | gf)
        cb=$($C $t $n blocked $r | gf)
        b1=$(OPENBLAS_NUM_THREADS=1 $C $t $n blas $r | gf)
        b4=$(OPENBLAS_NUM_THREADS=4 $C $t $n blas $r | gf)
        echo "| $t | $n | $o1 | $o4 | $on | $cn | $cb | $b1 | $b4 |"
    done
done
echo
echo "matrix-vector products at batch 1 through Gemv, W n x m: mv is y = W x, mvt is y = W^T u - ns a product:"
echo "| type | form | n x m | olang | olang x86-64 | C loop | OpenBLAS |"
echo "|---|---|---:|---:|---:|---:|---:|"
ns() { awk '{for (i = 1; i <= NF; i++) if ($i ~ /ns$/) { sub("ns", "", $i); print $i }}'; }
for t in f32 f64; do
    for form in mv mvt; do
        for shape in "64 64" "256 128" "1024 1024"; do
            set -- $shape
            echo "| $t | $form | $1 x $2 | $($O $t $1 1 20 $form $2 | ns) | $($OB $t $1 1 20 $form $2 | ns) | $($C $t $1 naive 20 $form $2 | ns) | $(OPENBLAS_NUM_THREADS=1 $C $t $1 blas 20 $form $2 | ns) |"
        done
    done
done
echo
echo "training step of a 784-128-10 perceptron, batch 64, F32 (us a step):"
us() { awk '{for (i = 1; i <= NF; i++) if ($i ~ /us$/) { sub("us", "", $i); print $i }}'; }
M=build/la/mlp/build/mlp
echo "| olang 1T | olang 4T | olang x86-64 1T | C naive | OpenBLAS 1T | OpenBLAS 4T |"
echo "|---:|---:|---:|---:|---:|---:|"
echo "| $($M 300 1 | us) | $($M 300 4 | us) | $(build/la/mlp/build/mlp.base 300 1 | us) | $(build/la/mlp_c 30 naive | us) | $(OPENBLAS_NUM_THREADS=1 build/la/mlp_c 300 blas | us) | $(OPENBLAS_NUM_THREADS=4 build/la/mlp_c 300 blas | us) |"
