#!/bin/sh
# drvdiff.sh - compares the self-hosted driver's command line (compiler/olang.olang, M10) with stage 0's: for every
# command line below, what each writes and the status it ends with must be the same. These are the command lines whose
# outcome is decided before code is generated - the command line's own mistakes (B1, B10, B10a, B11a, B12, B12a), -e,
# and files that cannot be built - so they mean the same today, before the self-hosted back end exists.
#
# Run from the repository root after "make build/out build/compiler_olang".
set -e
stage0=build/out
driver=build/compiler_olang
work=$(mktemp -d "${TMPDIR:-/tmp}/drvdiff.XXXXXX")
trap 'rm -rf "$work"' EXIT
mkdir "$work/adir"
n=0
bad=0
while IFS= read -r line; do
    case "$line" in ''|'#'*) continue ;; esac
    n=$((n + 1))
    # shellcheck disable=SC2086
    set +e
    eval "\"$stage0\" $line" > "$work/a" 2>&1; sa=$?
    eval "\"$driver\" $line" > "$work/b" 2>&1; sb=$?
    set -e
    echo "status $sa" >> "$work/a"
    echo "status $sb" >> "$work/b"
    if ! cmp -s "$work/a" "$work/b"; then
        bad=$((bad + 1))
        echo "-- olang $line"
        diff "$work/a" "$work/b" | head -10
    fi
done <<CASES
# nothing to do, and modifiers alone
-d
-r -s -u
# unknown flags, the first said
-x
-race -b main.olang
-b main.olang -x -y
--help
# -a
-b main.olang -a
-a bogus-cpu -c main.olang
-a riscv64-linux-gnu -c main.olang
-a x86_64-apple-darwin -c main.olang
-a x86_64-linux-gnu:a:b -c main.olang
-a aarch64-linux-gnu -c main.olang
-a aarch64-linux-gnu -b main.olang
# -D
-D
-D X -b main.olang
-DX=1 -D X=2 -b main.olang
-D 1x=2 -b main.olang
-D X=1.2.3e -b main.olang
-D X=0xZZ -b main.olang
-D X=99999999999999999999 -b main.olang
-D X=-99999999999999999999 -b main.olang
-D X=1e400 -b main.olang
-D TargetOs=x -b main.olang
-D TestBuild=1 -t main.olang
# the modes
-b
-b a.olang b.olang
-c
-t
-i
main.olang
-q
# -e
-e
-e B1 B2
-e B1
-e t6b
-e Zz9
# files that cannot be built
-t $work/none.olang
-t $work/adir
-t /dev/null
-t $work/none.olang $work/adir /dev/null
-b $work/none.olang
-c $work/none.olang
-i $work/none.olang a b
CASES
if [ $bad -gt 0 ]; then
    echo "drvdiff: $bad of $n command lines differ"
    exit 1
fi
echo "drvdiff: no difference over $n command lines"
