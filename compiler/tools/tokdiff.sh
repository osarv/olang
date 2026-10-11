#!/bin/sh
# tokdiff.sh [FILE...] - compares the self-hosted scanner's token stream with the C tokenizer's (compiler/DESIGN.md
# section 4): every token's line and text, every statement end, and every lexical error's rule and position. With no
# FILE, every .olang file of the repository. Prints the first differences and exits 1 if there are any.
#
# Run from the repository root after "make build/tokdump build/compiler_tools_dump". The one documented difference is
# normalized away: the C tokenizer puts a statement end before a "catch" beginning a line, which its parser skips; the
# scanner puts none there (R9b).
set -e
oracle=build/tokdump
dump=build/compiler_tools_dump
[ $# -gt 0 ] || set -- $(git ls-files '*.olang' | sort)
work=$(mktemp -d "${TMPDIR:-/tmp}/tokdiff.XXXXXX")
trap 'rm -rf "$work"' EXIT
"$oracle" "$@" | awk '
    /^== / { flushp(); diag = 0; print; next }
    /^-- diagnostics$/ { flushp(); diag = 1; next }
    diag {
        if (match($0, /:[0-9]+:[0-9]+: error\[[^]]*\]/)) {
            s = substr($0, RSTART + 1, RLENGTH - 1)
            split(s, p, /: error\[/)
            sub(/\]$/, "", p[2])
            print "error " p[2] " " p[1]
        }
        next
    }
    {
        if (pending != "") {
            if (substr($0, index($0, " ") + 1) != "catch") print pending
            pending = ""
        }
        if (substr($0, index($0, " ") + 1) == ";") { pending = $0; next }
        print
    }
    function flushp() { if (pending != "") print pending; pending = "" }
    END { flushp() }
' > "$work/c"
"$dump" tokens "$@" > "$work/olang"
if cmp -s "$work/c" "$work/olang"; then
    echo "tokdiff: no difference over $# files"
else
    diff "$work/c" "$work/olang" | head -40
    echo "tokdiff: the streams differ"
    exit 1
fi
