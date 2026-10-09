#!/usr/bin/env bash
# bench/fused.sh - std/linalg's batched, fused and implicit products (GemmBatch, GemmAct, GemmPatches) against the
# products, passes and im2col they replace: bench/fused.olang, built for this machine, every comparison timed
# interleaved inside the program and given as medians. Not part of "make verify".
#
#   bench/fused.sh [attention|epilogue|conv|all] [repetitions]
#   BENCH_LOCK=FILE         take this flock while timing, as run.sh does
set -euo pipefail
cd "$(dirname "$0")"
OLANG=../build/out
[ -x $OLANG ] || make -C .. build/out >/dev/null
mkdir -p build/fused
(cd build/fused && ../../$OLANG -b ../../fused.olang >/dev/null)
if [ -n "${BENCH_LOCK:-}" ]; then
    exec 9>"$BENCH_LOCK"
    echo "waiting for $BENCH_LOCK ..." >&2
    flock 9
fi
build/fused/build/fused "${1:-all}" "${2:-15}"
