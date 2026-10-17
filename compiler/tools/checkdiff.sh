#!/bin/sh
# checkdiff.sh - M5b/M5c's acceptance (compiler/DESIGN.md section 4): the self-hosted checker against stage 0.
#
# 1. Every checks/cases program stage 0 refuses (compiler/goldens/diag.txt) whose first error's rule is the checker's -
#    not section 8's (O), the evaluator's (K, S18c, B5a) or a code generator's - must give that error at the same file,
#    line and column ("first"); "exact" counts the cases whose every error row, rule and position, is stage 0's.
# 2. Every root stage 0 accepts - the checks cases that build or run, and the corpus, std, compiler, checks, fuzz and
#    bench programs - must check clean: no error and no construct the checker leaves unchecked ("gap").
#
# Prints the fractions, and with -v the cases that differ. Run from the repository root after
# "make build/compiler_tools_checkdump". Exits 0: the acceptance is measured, not yet required.
dump=${CHECKDIFF_DUMP:-build/compiler_tools_checkdump}
golden=compiler/goldens/diag.txt
verbose=""
[ "$1" = "-v" ] && { verbose=1; shift; }
[ -x "$dump" ] || { echo "checkdiff: $dump is not built (make $dump)"; exit 1; }
root=$(pwd)
work=$(mktemp -d "${TMPDIR:-/tmp}/checkdiff.XXXXXX")
trap 'rm -rf "$work"' EXIT

# the error rows of a rendering, "CASE<TAB>FILE:LINE:COL RULE", and its gap rows, "CASE<TAB>gap"
rows() {
    awk '
        /^=== / { c = $2; next }
        /^== / { c = $2; next }
        /^gap / { print c "\tgap " $2; next }
        /^[^ ]*: error\[/ || /^[^ ]*:[0-9]+:[0-9]+: error\[/ {
            match($0, /error\[[^]]*\]/); rule = substr($0, RSTART + 6, RLENGTH - 7)
            match($0, /^[^ ]*: error/); at = substr($0, 1, RLENGTH - 7)
            print c "\t" at " " rule
        }
    '
}

# a case's flags as checkdump takes them: -t and -D only
flagsOf() {
    flags=$(sed -n 's/^# flags: *//p' "$1" | head -1)
    out=""
    want=""
    set -f
    for f in $flags; do
        case "$f" in
            -t) out="$out -t" ;;
            -D) want=1; continue ;;
            *) [ -n "$want" ] && out="$out -D $f" ;;
        esac
        want=""
    done
    set +f
    echo "$out"
}

# checks DIR FILE... with checkdump, cases with flags one by one, the rest in one process, appending to $work/said
run() {
    dir=$1; shift
    plain=""
    for c in "$@"; do
        args=$(flagsOf "$dir/$c")
        if [ -z "$args" ]; then plain="$plain $c"; else (cd "$dir" && OLANG_STD="$root/std" "$root/$dump" $args "$c") >> "$work/said" 2>&1; fi
    done
    [ -z "$plain" ] || (cd "$dir" && OLANG_STD="$root/std" "$root/$dump" $plain) >> "$work/said" 2>&1
}

# ---- 1. the cases stage 0 refuses ----
fails=$(cd checks/cases && grep -l '^# check: fail' *.olang)
: > "$work/said"
run checks/cases $fails
rows < "$work/said" | LC_ALL=C sort > "$work/new"
rows < "$golden" | grep -v '	gap' > "$work/old.all"
total=0; mine=0; first=0; exact=0
: > "$work/missed"
for c in $fails; do
    want=$(awk -F '\t' -v c="$c" '$1 == c { print $2; exit }' "$work/old.all")
    [ -n "$want" ] || continue
    total=$((total + 1))
    rule=${want##* }
    case "$rule" in
        O*|K*|B5a|S18c|B12*|B2*|X*|P7) continue ;;
    esac
    mine=$((mine + 1))
    if grep -qF "$c	$want" "$work/new"; then
        first=$((first + 1))
        a=$(awk -F '\t' -v c="$c" '$1 == c' "$work/old.all" | LC_ALL=C sort)
        b=$(awk -F '\t' -v c="$c" '$1 == c && $2 !~ /^gap/' "$work/new")
        [ "$a" = "$b" ] && exact=$((exact + 1))
    else
        echo "$c: want $want; got $(awk -F '\t' -v c="$c" '$1 == c && $2 !~ /^gap/ { printf "%s; ", $2 }' "$work/new")" >> "$work/missed"
    fi
done
echo "checkdiff: refused programs: $first of $mine checker cases give stage 0's first error ($exact give exactly its errors; $((total - mine)) cases are other passes')"

# ---- 2. the programs stage 0 accepts ----
: > "$work/said"
oks=$(cd checks/cases && grep -L '^# check: fail' *.olang)
run checks/cases $oks
tests=""
for f in tests/*.olang std/*.olang compiler/*.olang checks/checks.olang fuzz/*.olang bench/*.olang; do tests="$tests $f"; done
for f in $tests; do (OLANG_STD="$root/std" "$root/$dump" -t "$f") >> "$work/said" 2>&1; done
rows < "$work/said" > "$work/clean.rows"
n=0; clean=0
: > "$work/dirty"
for c in $oks $tests; do
    n=$((n + 1))
    k=$(awk -F '\t' -v c="$c" '$1 == c' "$work/clean.rows" | wc -l)
    if [ "$k" -eq 0 ]; then clean=$((clean + 1)); else echo "$c: $k" >> "$work/dirty"; fi
done
echo "checkdiff: accepted programs: $clean of $n check clean"
errs=$(grep -v '	gap' "$work/clean.rows" | sort -u | wc -l)
gaps=$(grep '	gap' "$work/clean.rows" | sort -u | wc -l)
echo "checkdiff: on them, $errs distinct error rows and $gaps distinct gap places"
if [ -n "$verbose" ]; then
    echo "-- refused programs not giving stage 0's first error:"; cat "$work/missed"
    echo "-- accepted programs not clean (rows):"; cat "$work/dirty"
    echo "-- errors said on accepted programs:"; grep -v '	gap' "$work/clean.rows" | cut -f2 | sort | uniq -c | sort -rn | head -60
fi
grep -h '^gap' "$work/said" | sed 's/^gap [^ ]* //' | sort | uniq -c | sort -rn > "$root/build/checkdiff.gaps" 2>/dev/null || true
cp "$work/said" "$root/build/checkdiff.said" 2>/dev/null || true
cp "$work/new" "$root/build/checkdiff.fails" 2>/dev/null || true
cp "$work/missed" "$root/build/checkdiff.missed" 2>/dev/null || true
exit 0
