#!/bin/sh
# layoutgold.sh - captures compiler/goldens/layout.txt, the layouts M5a's acceptance compares the self-hosted type table
# with (compiler/DESIGN.md section 4, compiler/tools/layoutdiff.sh): every type stage 0 holds for every root program of
# the repository - the corpus, std, compiler/ and its tools, checks, fuzz and bench, each as an ordinary and as a test
# build - and for every checks case that builds or runs, with the case's flags. Each type is written once, under the
# first program that holds it ("== ROOT FLAGS"), as build/layoutdump prints it.
#
# Run from the repository root after "make build/layoutdump" (make layoutgold), after a change to a layout or to the
# types a program holds - a field added to a std type, a new instance. It takes minutes: stage 0 checks each program whole.
set -e
oracle=build/layoutdump
golden=compiler/goldens/layout.txt
[ -x "$oracle" ] || { echo "layoutgold: $oracle is not built (make $oracle)"; exit 1; }
work=$(mktemp -d "${TMPDIR:-/tmp}/layoutgold.XXXXXX")
trap 'rm -rf "$work"' EXIT
: > "$work/all"
runs=0
refused=0
one() {
    # one program: its flags, then its root
    flags=$1
    root=$2
    # shellcheck disable=SC2086
    if "$oracle" $flags "$root" > "$work/one" 2> /dev/null; then
        echo "== $root$flags" >> "$work/all"
        cat "$work/one" >> "$work/all"
        runs=$((runs + 1))
    else
        refused=$((refused + 1))
    fi
}
for mode in "" " -t"; do
    for f in tests/*.olang tests/geom/*.olang std/*.olang compiler/*.olang compiler/tools/*.olang checks/checks.olang fuzz/*.olang \
             bench/*.olang; do
        [ "$f" = usertest.olang ] && continue
        one "$mode" "$f"
    done
done
for c in checks/cases/*.olang; do
    head -1 "$c" | grep -q '^# check: \(build\|run\)' || continue
    flags=""
    want=""
    set -f
    for f in $(sed -n 's/^# flags: *//p' "$c" | head -1); do
        case "$f" in
            -t) flags="$flags -t" ;;
            -D) want=1; continue ;;
            *) [ -n "$want" ] && flags="$flags -D $f" ;;
        esac
        want=""
    done
    set +f
    one "$flags" "$c"
done
# each type under the first program holding it; a program holding none that came before it is left out
awk -F '\t' '
    /^== / { group = $0; said = 0; next }
    !($1 in seen) {
        seen[$1] = 1
        if (!said) { print group; said = 1 }
        print
    }
' "$work/all" > "$golden"
echo "layoutgold: $runs programs ($refused refused by stage 0), $(grep -vc '^== ' "$golden") types"
