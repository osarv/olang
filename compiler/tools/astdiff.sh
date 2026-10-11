#!/bin/sh
# astdiff.sh [FILE...] - compares the self-hosted parser's tree with the C parser's (compiler/DESIGN.md section 4):
# every declaration and statement, as its kind and the span of its tokens, and the syntax errors - each item's first,
# by rule and position, and the lexical ones - and that each tree, written back as source, holds the file's tokens and
# reads back as itself ("dump roundtrip"). With no FILE, every .olang file of the repository. Prints the first
# differences and exits 1 if there are any.
#
# Run from the repository root after "make build/astdump build/compiler_tools_dump". What is normalized away, as
# DESIGN.md section 4 lists: the order of lines (each file's structure, and its diagnostics, are sorted - the trees
# hold the same nodes in different shapes), the C diagnostics' text and notes (only "error RULE LINE:COL" is kept),
# the C parser's reports beyond an item's first (it reports one an item; the self-hosted parser goes on and the
# dump keeps its first), an L21 said inside an item kept whole (stage 0 says one where a form it tried and dropped
# reached the limit), and the position of an L21 that ends an item (for the same reason; the rows say which item
# ends). A missing tool, or one printing fewer files than it was given, is a failure.
set -e
oracle=${ASTDIFF_ORACLE:-build/astdump}
dump=${ASTDIFF_DUMP:-build/compiler_tools_dump}
[ $# -gt 0 ] || set -- $(git ls-files '*.olang' | sort)
work=$(mktemp -d "${TMPDIR:-/tmp}/astdiff.XXXXXX")
[ -n "$ASTDIFF_KEEP" ] && work=$ASTDIFF_KEEP && mkdir -p "$work" || trap 'rm -rf "$work"' EXIT
# each file's sections sorted; the C rows reduced to "error RULE LINE:COL". One sort for the whole stream: every row
# keyed by its section's number, a header before its rows
normalize() {
    awk '
        # an L21 said inside a statement or declaration the file keeps whole is not compared: stage 0 reads a
        # statement in several forms, and one that reaches the limit says so even where another form reads it whole
        function pos(t, k) { split(t, k, ":"); return k[1] * 1000000 + k[2] }
        function kept(at,   i) { for (i = 1; i <= nspans; i++) if (lo[i] <= at && at <= hi[i]) return 1; return 0 }
        # an L21 that ends an item is compared without its position: stage 0 says it where the first form it tried
        # reached the limit, which may be a reading it then dropped; that the item ends is in its rows
        function emit(rule, at) {
            if (rule == "L21") { if (!kept(pos(at))) print sec "\t1\terror L21"; return }
            print sec "\t1\terror " rule " " at
        }
        /^== / { nspans = 0 }
        /^== / || /^-- diagnostics$/ { sec++; diag = ($0 ~ /^-- /); print sec "\t0\t" $0; next }
        # "error RULE LINE:COL": the rule may be several ("T17, T19, C2") or none (a parse error)
        diag && /^error / { r = $0; sub(/^error /, "", r); sub(/ *[^ ]*$/, "", r); emit(r, $NF); next }
        diag {
            if (match($0, /^[^ ]*:[0-9]+:[0-9]+: error(\[[^]]*\])?:/)) {
                s = substr($0, 1, RLENGTH)
                rule = ""
                if (match(s, /\[[^]]*\]/)) rule = substr(s, RSTART + 1, RLENGTH - 2)
                match(s, /:[0-9]+:[0-9]+: error/)
                emit(rule, substr(s, RSTART + 1, RLENGTH - 8))
            } else if (match($0, /^[^ ]*: error(\[[^]]*\])?:/)) {
                s = substr($0, 1, RLENGTH)
                rule = ""
                if (match(s, /\[[^]]*\]/)) rule = substr(s, RSTART + 1, RLENGTH - 2)
                print sec "\t1\terror " rule " 0:0"
            }
            next
        }
        $2 ~ /^[0-9]+:[0-9]+-[0-9]+:[0-9]+$/ { split($2, ab, "-"); nspans++; lo[nspans] = pos(ab[1]); hi[nspans] = pos(ab[2]) }
        { print sec "\t1\t" $0 }
    ' | LC_ALL=C sort -t "$(printf '\t')" -k1,1n -k2,2n -k3 | cut -f3-
}
for t in "$oracle" "$dump"; do
    [ -x "$t" ] || { echo "astdiff: $t is not built (make $t)"; exit 1; }
done
# a tool that stops early prints fewer sections than files: that is a failure, never an empty match
sections() {
    n=$(grep -c '^== ' "$1" || true)
    [ "$n" -eq "$2" ] || { echo "astdiff: $3 printed $n of $2 files"; exit 1; }
}
"$oracle" "$@" > "$work/c.raw" || true
"$dump" ast "$@" > "$work/olang.raw" || true
sections "$work/c.raw" $# "$oracle"
sections "$work/olang.raw" $# "$dump ast"
normalize < "$work/c.raw" > "$work/c"
normalize < "$work/olang.raw" > "$work/olang"
if cmp -s "$work/c" "$work/olang"; then
    echo "astdiff: no difference over $# files"
else
    diff "$work/c" "$work/olang" | head -60
    echo "astdiff: the trees differ"
    exit 1
fi
# each tree written back as source holds the file's tokens, and reads back as itself ("dump roundtrip")
"$dump" roundtrip "$@" > "$work/rt" || true
sections "$work/rt" $# "$dump roundtrip"
awk '/^== /{f=$0; next} /^ok$/ || /^skipped/ {next} {print f; print; bad=1} END {exit bad}' "$work/rt" ||
    { echo "astdiff: a tree written back is not the file's"; exit 1; }
echo "astdiff: every tree written back reads as itself"
