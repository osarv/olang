#!/bin/sh
# layoutdiff.sh - M5a's acceptance (compiler/DESIGN.md section 4): every type stage 0 holds for every root program of the
# repository (compiler/goldens/layout.txt, captured by compiler/tools/layoutgold.sh) has, in the self-hosted type table,
# stage 0's size, alignment, LLVM spelling, struct body and field offsets, a function type's result spelling and how it
# is passed, and an enum's payload offsets - read back from its canonical text, resolved in the program it came from and
# laid out once. A type may be left unlaid ("deferred") only where compiler/goldens/layout.deferred lists it. Prints the
# differences and exits 1 if there are any.
#
# Run from the repository root after "make build/compiler_tools_dump". If the golden is older than a change to std's
# types, "make layoutgold" captures it again (minutes: stage 0 checks each program whole).
set -e
dump=${LAYOUTDIFF_DUMP:-build/compiler_tools_dump}
golden=compiler/goldens/layout.txt
deferred=compiler/goldens/layout.deferred
[ -x "$dump" ] || { echo "layoutdiff: $dump is not built (make $dump)"; exit 1; }
work=$(mktemp -d "${TMPDIR:-/tmp}/layoutdiff.XXXXXX")
trap 'rm -rf "$work"' EXIT
"$dump" layout "$golden" > "$work/out" 2> "$work/err" || { cat "$work/err"; echo "layoutdiff: $dump layout failed"; exit 1; }
if [ -s "$work/err" ]; then cat "$work/err"; echo "layoutdiff: $dump layout wrote diagnostics"; exit 1; fi
grep -v '^#' "$deferred" | grep -v '^$' > "$work/allowed"
awk -F '\t' -v allowed="$work/allowed" '
    BEGIN { while ((getline k < allowed) > 0) ok[k] = 1 }
    NR == FNR { g[FNR] = $0; n = FNR; next }
    {
        m = FNR
        if (g[FNR] == $0) { if ($0 !~ /^== /) same++; next }
        split(g[FNR], gf, "\t")
        if ($2 == "deferred" && $1 == gf[1] && ($1 in ok)) { deferred++; seen[$1] = 1; next }
        bad++
        print "layoutdiff: " gf[1]
        print "  stage 0:   " g[FNR]
        print "  self-host: " $0
    }
    END {
        if (m != n) { print "layoutdiff: " m " lines, the golden has " n; bad++ }
        for (k in ok) if (!(k in seen)) { print "layoutdiff: " k " is listed as deferred and is laid out - take it off compiler/goldens/layout.deferred"; bad++ }
        printf "layoutdiff: %d types as stage 0 lays them out, %d deferred to the evaluator\n", same, deferred
        exit bad > 0
    }
' "$golden" "$work/out"
