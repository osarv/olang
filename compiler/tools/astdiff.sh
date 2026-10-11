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
# and the C parser's reports beyond an item's first (it reports one an item; the self-hosted parser goes on and the
# dump keeps its first).
set -e
oracle=build/astdump
dump=build/compiler_tools_dump
[ $# -gt 0 ] || set -- $(git ls-files '*.olang' | sort)
work=$(mktemp -d "${TMPDIR:-/tmp}/astdiff.XXXXXX")
[ -n "$ASTDIFF_KEEP" ] && work=$ASTDIFF_KEEP && mkdir -p "$work" || trap 'rm -rf "$work"' EXIT
# each file's sections sorted; the C rows reduced to "error RULE LINE:COL". One sort for the whole stream: every row
# keyed by its section's number, a header before its rows
normalize() {
    awk '
        /^== / || /^-- diagnostics$/ { sec++; diag = ($0 ~ /^-- /); print sec "\t0\t" $0; next }
        diag && /^error / { print sec "\t1\t" $0; next }
        diag {
            if (match($0, /^[^ ]*:[0-9]+:[0-9]+: error(\[[^]]*\])?:/)) {
                s = substr($0, 1, RLENGTH)
                rule = ""
                if (match(s, /\[[^]]*\]/)) rule = substr(s, RSTART + 1, RLENGTH - 2)
                match(s, /:[0-9]+:[0-9]+: error/)
                pos = substr(s, RSTART + 1, RLENGTH - 8)
                print sec "\t1\terror " rule " " pos
            } else if (match($0, /^[^ ]*: error(\[[^]]*\])?:/)) {
                s = substr($0, 1, RLENGTH)
                rule = ""
                if (match(s, /\[[^]]*\]/)) rule = substr(s, RSTART + 1, RLENGTH - 2)
                print sec "\t1\terror " rule " 0:0"
            }
            next
        }
        { print sec "\t1\t" $0 }
    ' | LC_ALL=C sort -t "$(printf '\t')" -k1,1n -k2,2n -k3 | cut -f3-
}
"$oracle" "$@" | normalize > "$work/c"
"$dump" ast "$@" | normalize > "$work/olang"
if cmp -s "$work/c" "$work/olang"; then
    echo "astdiff: no difference over $# files"
else
    diff "$work/c" "$work/olang" | head -60
    echo "astdiff: the trees differ"
    exit 1
fi
# each tree written back as source holds the file's tokens, and reads back as itself ("dump roundtrip")
"$dump" roundtrip "$@" | awk '/^== /{f=$0; next} /^ok$/ || /^skipped/ {next} {print f; print; bad=1} END {exit bad}' ||
    { echo "astdiff: a tree written back is not the file's"; exit 1; }
echo "astdiff: every tree written back reads as itself"
