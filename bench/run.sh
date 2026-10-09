#!/usr/bin/env bash
# bench/run.sh - olang against C on the programs in this directory: builds both versions of each, checks that
# their outputs agree byte for byte at the timed size, then times them with interleaved repetitions and prints the
# median of each. Not part of "make verify" (and nothing here is a test: "make test" never sees this directory).
#
#   bench/run.sh [-r REPS] [-n] [-q] [NAME ...]
#     -r REPS  timed repetitions of every program, interleaved (default 7); the table gives the median and the minimum
#     -n       also build both with -march=native and time those (olang's own IR, compiled for this CPU)
#     -q       build and check the outputs only, no timing
#     NAME     only the rows whose name contains NAME
#   BENCH_LOCK=FILE  take this flock for the checking and timing runs - on a shared machine, the lock that other
#                    heavy jobs take, so nothing heavy runs beside the measurements
set -euo pipefail
cd "$(dirname "$0")"
OLANG=../build/out
# exactly what olang compiles and links its own output with (main.c, addModeFlags): -O3 and whole-program LTO,
# for the default target - no -march
FLAGS="-O3 -flto"
# -ffp-contract=off keeps C's floating point exactly as written, as olang's is: clang's default would fuse a*b+c
# into one FMA wherever the target has one, which changes results (and so the outputs would no longer agree)
NATIVE_FLAGS="-O3 -flto -march=native -ffp-contract=off"

REPS=7; NATIVE=0; QUICK=0
while getopts "r:nq" opt; do
    case $opt in
        r) REPS=$OPTARG ;;
        n) NATIVE=1 ;;
        q) QUICK=1 ;;
        *) exit 2 ;;
    esac
done
shift $((OPTIND - 1))

# name | olang program | C program | arguments (the same for both)
ROWS=(
    "nbody|nbody|nbody|10000000"
    "spectral-norm|spectral|spectral|3000"
    "mandelbrot|mandelbrot|mandelbrot|3000"
    "fannkuch-redux|fannkuch|fannkuch|10 4"
    "binary-trees|binarytrees|binarytrees|18"
    "binary-trees, C arena|binarytrees|binarytrees_arena|18"
    "k-nucleotide|knucleotide|knucleotide|2000000"
    "matmul F32|matmul|matmul|1536"
    "List push|sum|sum|push 20000000 0"
    "sum: for x in List|sum|sum|list 100000 8000"
    "sum: List.Iter().Fold|sum|sum|listfold 100000 8000"
    "sum: for x in Array|sum|sum|array 100000 8000"
    "sum: Array.Iter().Fold|sum|sum|arrayfold 100000 8000"
    "parallel, 4 tasks|parallel|parallel|10000000 4"
    "text|text|text|5000000"
)

selected=()
for row in "${ROWS[@]}"; do
    name=${row%%|*}
    if [ $# -eq 0 ]; then selected+=("$row"); continue; fi
    for want in "$@"; do
        if [[ $name == *"$want"* ]]; then selected+=("$row"); break; fi
    done
done
[ ${#selected[@]} -gt 0 ] || { echo "no benchmark matches $*" >&2; exit 2; }

# ---- build ----
[ -x $OLANG ] || make -C .. build/out >/dev/null
mkdir -p build
declare -A built
for row in "${selected[@]}"; do
    IFS='|' read -r name prog cprog args <<< "$row"
    if [ -z "${built[o.$prog]:-}" ]; then
        $OLANG -b $prog.olang >/dev/null || { echo "olang build of $prog failed" >&2; exit 1; }
        if [ $NATIVE = 1 ]; then
            # the IR olang just wrote for the program's own module, beside every other module's (link-time
            # optimization drops what this program does not use)
            others=$(ls build/*.ll | grep -v '\.main\.ll$' | grep -v '\.test\.ll$')
            clang $NATIVE_FLAGS -o build/$prog.native build/$prog.main.ll $others -lm -lpthread
        fi
        built[o.$prog]=1
    fi
    if [ -z "${built[c.$cprog]:-}" ]; then
        clang $FLAGS -o build/${cprog}_c c/$cprog.c -lm -lpthread
        [ $NATIVE = 1 ] && clang $NATIVE_FLAGS -o build/${cprog}_c.native c/$cprog.c -lm -lpthread
        built[c.$cprog]=1
    fi
done

if [ -n "${BENCH_LOCK:-}" ]; then
    exec 9>"$BENCH_LOCK"
    echo "waiting for $BENCH_LOCK ..." >&2
    flock 9
fi

# ---- check: both versions, at the timed size, must print the same ----
for row in "${selected[@]}"; do
    IFS='|' read -r name prog cprog args <<< "$row"
    variants=("build/$prog|build/${cprog}_c")
    [ $NATIVE = 1 ] && variants+=("build/$prog.native|build/${cprog}_c.native")
    for v in "${variants[@]}"; do
        a=$(${v%%|*} $args | md5sum)
        b=$(${v##*|} $args | md5sum)
        if [ "$a" != "$b" ]; then
            echo "OUTPUTS DIFFER: $name ($v $args)" >&2
            exit 1
        fi
    done
done
echo "outputs agree" >&2
[ $QUICK = 1 ] && exit 0

# ---- time: every program once per repetition, interleaved, so drift hits all of them alike ----
declare -A times
now() { date +%s%N; }
for ((r = 1; r <= REPS; r++)); do
    echo "repetition $r/$REPS" >&2
    for row in "${selected[@]}"; do
        IFS='|' read -r name prog cprog args <<< "$row"
        bins=("o|build/$prog" "c|build/${cprog}_c")
        [ $NATIVE = 1 ] && bins+=("on|build/$prog.native" "cn|build/${cprog}_c.native")
        for b in "${bins[@]}"; do
            t0=$(now)
            ${b#*|} $args >/dev/null
            t1=$(now)
            times[$name|${b%%|*}]+="$(( (t1 - t0) / 1000 )) "
        done
    done
done

# median and minimum of a list of microsecond counts, as seconds
stat() {
    local sorted=($(printf '%s\n' $1 | sort -n))
    local n=${#sorted[@]}
    local med=${sorted[$((n / 2))]}
    [ $((n % 2)) = 0 ] && med=$(( (sorted[n / 2 - 1] + sorted[n / 2]) / 2 ))
    echo "$med ${sorted[0]}"
}
secs() { awk -v u=$1 'BEGIN { printf "%.3f", u / 1e6 }'; }
ratio() { awk -v a=$1 -v b=$2 'BEGIN { printf "%.2f", a / b }'; }

{
    printf "%-26s %9s %9s %7s" "benchmark" "olang" "C" "olang/C"
    [ $NATIVE = 1 ] && printf " %10s %10s %7s" "olang -mn" "C -mn" "ratio"
    printf "     (median of %d; min in parentheses)\n" $REPS
    for row in "${selected[@]}"; do
        IFS='|' read -r name prog cprog args <<< "$row"
        read -r om omin <<< "$(stat "${times[$name|o]}")"
        read -r cm cmin <<< "$(stat "${times[$name|c]}")"
        printf "%-26s %9s %9s %7s" "$name" "$(secs $om)" "$(secs $cm)" "$(ratio $om $cm)"
        if [ $NATIVE = 1 ]; then
            read -r onm onmin <<< "$(stat "${times[$name|on]}")"
            read -r cnm cnmin <<< "$(stat "${times[$name|cn]}")"
            printf " %10s %10s %7s" "$(secs $onm)" "$(secs $cnm)" "$(ratio $onm $cnm)"
        fi
        printf "     (%s / %s)\n" "$(secs $omin)" "$(secs $cmin)"
    done
} | tee build/results.txt
