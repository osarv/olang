#!/bin/sh
# namesdiff.sh [CASE...] - M4's acceptance for diagnostics (compiler/DESIGN.md section 4): on every checks/cases program,
# the errors load and names say - their rules are loading's and names' (M1-M23b, M19f, D2, D3a, B9a, B10, B10a, B10c) -
# are the errors of those rules stage 0 said (compiler/goldens/diag.txt), at the same file, line and column. A case whose
# golden has none of those rules must get none: no error where stage 0 found the program right. Prints the differences
# and exits 1 if there are any.
#
# Run from the repository root after "make build/compiler_tools_dump". A case's "# flags:" give "dump names" its -D
# constants and -t; the cases with none run in one process.
set -e
dump=${NAMESDIFF_DUMP:-build/compiler_tools_dump}
golden=compiler/goldens/diag.txt
[ -x "$dump" ] || { echo "namesdiff: $dump is not built (make $dump)"; exit 1; }
root=$(pwd)
[ $# -gt 0 ] || set -- $(cd checks/cases && ls *.olang)
work=$(mktemp -d "${TMPDIR:-/tmp}/namesdiff.XXXXXX")
trap 'rm -rf "$work"' EXIT
# the rows of a rendering whose rule is load's or names', as "CASE<TAB>FILE:LINE:COL RULE"
rows() {
    awk -v src="$1" '
        /^=== / { c = $2; next }
        /^== / { c = $2; next }
        /^[^ ]*: error\[/ || /^[^ ]*:[0-9]+:[0-9]+: error\[/ {
            match($0, /error\[[^]]*\]/); rule = substr($0, RSTART + 6, RLENGTH - 7)
            if (rule !~ /^(M1|M4|M5|M10|M14|M16|M17|M19f|M20|M22|M22a|M23|M23a|M23b|D2|D3a|D3a, E29|B9a|B10|B10a|B10c)$/) next
            match($0, /^[^ ]*: error/); at = substr($0, 1, RLENGTH - 7)
            print c "\t" at " " rule
        }
    '
}
plain=""
for c in "$@"; do
    flags=$(sed -n 's/^# flags: *//p' "checks/cases/$c" | head -1)
    args=""
    set -f
    for f in $flags; do
        case "$f" in
            -t) args="$args -t" ;;
            -define) want=1; continue ;;
            *) [ -n "$want" ] && args="$args -D $f" ;;
        esac
        want=""
    done
    set +f
    if [ -z "$args" ]; then
        plain="$plain $c"
    else
        (cd checks/cases && OLANG_STD="$root/std" "$root/$dump" names $args "$c") >> "$work/said"
    fi
done
[ -z "$plain" ] || (cd checks/cases && OLANG_STD="$root/std" "$root/$dump" names $plain) >> "$work/said"
n=$(grep -c '^== ' "$work/said" || true)
[ "$n" -eq $# ] || { echo "namesdiff: dump names printed $n of $# cases"; exit 1; }
rows < "$work/said" | LC_ALL=C sort > "$work/new"
printf '%s\n' "$@" | LC_ALL=C sort > "$work/cases"
rows < "$golden" | LC_ALL=C sort | awk -F '\t' 'NR == FNR { want[$1] = 1; next } $1 in want' "$work/cases" - > "$work/old"
if ! cmp -s "$work/old" "$work/new"; then
    echo "namesdiff: stage 0 (<) and the self-hosted load and names (>) differ:"
    diff "$work/old" "$work/new" | grep '^[<>]' | head -40
    exit 1
fi
echo "namesdiff: $# cases, $(wc -l < "$work/old") errors of load's and names' rules, all the same"
