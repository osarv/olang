#!/bin/sh
# fmtdiff.sh [FILE...] - the formatter's acceptance (SPEC.md B13): every file of the repository - or each FILE - formatted
# in memory reads back as the same tree (compiler/tools/unparse), keeps its comments, and formatted again is unchanged
# ("fmt -v", compiler/tools/fmt.olang). Prints what failed and a count; exits 1 if anything failed. Writes nothing.
#
# Run from the repository root after "make build/compiler_tools_fmt".
set -e
tool=${FMTDIFF_TOOL:-build/compiler_tools_fmt}
[ -x "$tool" ] || { echo "fmtdiff: $tool is not built (make $tool)"; exit 1; }
[ $# -gt 0 ] || set -- $(git ls-files '*.olang' | sort)
out=$(mktemp "${TMPDIR:-/tmp}/fmtdiff.XXXXXX")
trap 'rm -f "$out"' EXIT
status=0
OLANG_STD=std "$tool" -v "$@" > "$out" || status=1
grep -v ': \(ok\|same\|skipped\|skipped (a branch does not parse)\)$' "$out" | sed 's/^/fmtdiff: /'
exit $status
