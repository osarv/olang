#!/usr/bin/env bash
# bench/gemm.sh - std/linalg's matrix products against C: the square product C = A B at 64 .. 2048 in F32 and F64
# (olang's Gemm on 1 and 4 threads, its IR again with -march=native, a naive C loop, the same blocked algorithm in C,
# and OpenBLAS on 1 and 4 threads), the matrix-vector product at batch 1, and a training step of a small perceptron
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
# each olang program in a directory of its own, so its IR files can be linked again for the native target
for p in gemm mlp; do
    mkdir -p build/la/$p
    (cd build/la/$p && ../../../$OLANG -b ../../../$p.olang >/dev/null)
    clang -O3 -flto -march=native -o build/la/$p/build/$p.native build/la/$p/build/*.ll -lm -lpthread
done
clang -O3 -flto -o build/la/gemm_c c/gemm.c -lopenblas -lpthread
clang -O3 -flto -o build/la/mlp_c c/mlp.c -lopenblas -lpthread -lm
[ "${1:-}" = "-q" ] && exit 0

if [ -n "${BENCH_LOCK:-}" ]; then
    exec 9>"$BENCH_LOCK"
    echo "waiting for $BENCH_LOCK ..." >&2
    flock 9
fi

O=build/la/gemm/build/gemm
ON=build/la/gemm/build/gemm.native
C=build/la/gemm_c
gf() { awk '{for (i = 1; i < NF; i++) if ($(i + 1) == "GFLOPS") print $i}'; }
reps() { case $1 in 64|128|256) echo 30 ;; 512) echo 8 ;; 1024) echo 4 ;; *) echo 2 ;; esac; }

echo "| type | n | olang 1T | olang 4T | olang native 1T | C naive | C blocked | OpenBLAS 1T | OpenBLAS 4T |"
echo "|---|---:|---:|---:|---:|---:|---:|---:|---:|"
for t in f32 f64; do
    for n in 64 128 256 512 1024 2048; do
        r=$(reps $n)
        o1=$($O $t $n 1 $r | gf)
        o4=$($O $t $n 4 $r | gf)
        on=$($ON $t $n 1 $r | gf)
        cn=$( [ $n -le 1024 ] && $C $t $n naive $r | gf || $C $t $n naive 1 | gf)
        cb=$($C $t $n blocked $r | gf)
        b1=$(OPENBLAS_NUM_THREADS=1 $C $t $n blas $r | gf)
        b4=$(OPENBLAS_NUM_THREADS=4 $C $t $n blas $r | gf)
        echo "| $t | $n | $o1 | $o4 | $on | $cn | $cb | $b1 | $b4 |"
    done
done
echo
echo "matrix-vector y = x W^T (n x n W), ns a product:"
echo "| type | n | olang | olang native | C loop | OpenBLAS |"
echo "|---|---:|---:|---:|---:|---:|"
ns() { awk '{for (i = 1; i <= NF; i++) if ($i ~ /ns$/) { sub("ns", "", $i); print $i }}'; }
for t in f32 f64; do
    for n in 64 256 1024; do
        echo "| $t | $n | $($O $t $n 1 20 mv | ns) | $($ON $t $n 1 20 mv | ns) | $($C $t $n naive 20 mv | ns) | $(OPENBLAS_NUM_THREADS=1 $C $t $n blas 20 mv | ns) |"
    done
done
echo
echo "training step of a 784-128-10 perceptron, batch 64, F32 (us a step):"
us() { awk '{for (i = 1; i <= NF; i++) if ($i ~ /us$/) { sub("us", "", $i); print $i }}'; }
M=build/la/mlp/build/mlp
echo "| olang 1T | olang 4T | olang native 1T | C naive | OpenBLAS 1T | OpenBLAS 4T |"
echo "|---:|---:|---:|---:|---:|---:|"
echo "| $($M 300 1 | us) | $($M 300 4 | us) | $(build/la/mlp/build/mlp.native 300 1 | us) | $(build/la/mlp_c 30 naive | us) | $(OPENBLAS_NUM_THREADS=1 build/la/mlp_c 300 blas | us) | $(OPENBLAS_NUM_THREADS=4 build/la/mlp_c 300 blas | us) |"
