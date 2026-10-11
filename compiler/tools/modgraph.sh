#!/bin/sh
# modgraph.sh [ROOT...] - M4's acceptance for loading (compiler/DESIGN.md section 4): from every root program of the
# repository, the self-hosted loader reaches the modules stage 0's does, with the same identities and the same import
# edges, in an ordinary build and in a test build (-t: TestBuild true, so the prelude's tests are reached). Stage 0's
# graph comes from build/modgraph (bootstrap/oracle/modgraph.c), the self-hosted one from "dump modules". Prints the
# differences and exits 1 if there are any.
#
# Run from the repository root after "make build/modgraph build/compiler_tools_dump". A root here decides no top-level
# condition the token evaluator cannot (B9c), which only stage 0 decides now: the loader leaves such a chain to M5/M8.
set -e
dump=${MODGRAPH_DUMP:-build/compiler_tools_dump}
oracle=build/modgraph
for t in "$dump" "$oracle"; do [ -x "$t" ] || { echo "modgraph: $t is not built (make $t)"; exit 1; }; done
[ $# -gt 0 ] || set -- *.olang geom/*.olang std/*.olang compiler/*.olang compiler/tools/*.olang checks/checks.olang \
    fuzz/*.olang bench/*.olang
work=$(mktemp -d "${TMPDIR:-/tmp}/modgraph.XXXXXX")
trap 'rm -rf "$work"' EXIT
n=0
bad=0
skipped=0
for mode in "" -t; do
    for f in "$@"; do
        # the synthetic module of build constants is stage 0's way of holding them, not a module anyone imports
        if ! "$oracle" $mode "$f" > "$work/raw" 2>&1; then
            # a root stage 0 refuses has no graph to compare (bench/fused.olang does not check today)
            echo "modgraph: stage 0 refuses $mode $f, skipped"
            skipped=$((skipped + 1))
            continue
        fi
        grep -v '^module olang_build$' "$work/raw" > "$work/old" || true
        "$dump" modules $mode "$f" | grep -v '^== ' > "$work/new"
        n=$((n + 1))
        if ! cmp -s "$work/old" "$work/new"; then
            echo "modgraph: $mode $f: stage 0 (<) and the self-hosted loader (>) differ:"
            diff "$work/old" "$work/new" | grep '^[<>]' | head -20
            bad=1
        fi
    done
done
# a remote import, from a local repository: fetched, locked, and its relative imports kept inside it (M23, M23b)
if command -v git >/dev/null 2>&1; then
    root=$(pwd)
    r=$work/remote/remote/example.com/me/tools
    mkdir -p "$r/part"
    printf 'import "part/inner"\nfn F() I64 { return 1 }\n' > "$r/lib.olang"
    printf 'import "../lib"\n' > "$r/part/inner.olang"
    g="git -c user.name=t -c user.email=t@t -c commit.gpgsign=false"
    (cd "$r" && $g init -q && $g add . && $g commit -qm x)
    printf 'import T "example.com/me/tools/lib"\nfn main() ? { }\n' > "$work/remote/main.olang"
    for side in old new; do
        rm -rf "$work/remote/cache" "$work/remote/olang.lock"
        (cd "$work/remote" && export OLANG_CACHE="$work/remote/cache" OLANG_GIT_BASE="file://$work/remote/remote/" \
            OLANG_STD="$root/std" && if [ $side = old ]; then "$root/$oracle" main.olang 2>/dev/null
            else "$root/$dump" modules main.olang; fi) | grep -v '^module olang_build$' | grep -v '^== ' > "$work/$side"
        grep -v '^#' "$work/remote/olang.lock" | cut -d' ' -f1 > "$work/$side.lock"
    done
    n=$((n + 1))
    if ! cmp -s "$work/old" "$work/new" || ! cmp -s "$work/old.lock" "$work/new.lock"; then
        echo "modgraph: the remote program: stage 0 (<) and the self-hosted loader (>) differ:"
        diff "$work/old" "$work/new" | grep '^[<>]' | head -20
        diff "$work/old.lock" "$work/new.lock" | grep '^[<>]' | head -5
        bad=1
    fi
fi
[ $bad -eq 0 ] || exit 1
echo "modgraph: $n roots, every module graph the same ($skipped refused by stage 0)"
