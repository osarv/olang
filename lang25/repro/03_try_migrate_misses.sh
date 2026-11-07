#!/bin/sh
# 03: try_migrate (even with --old) reads only to the end of the try's line, so an operator that continues the
# expression on the next line inside brackets (L18a) is not seen: the try reads on silently, and nothing is listed.
# Also: in the master tree it lists nothing, in the batch's tools neither.
# usage: 03_try_migrate_misses.sh NEW_OLANG [MASTER_OLANG]   (run from anywhere; needs the batch's tools/)
NEW=$1; OLD=$2; T=$(dirname $(dirname $(readlink -f $NEW)))/tools
D=$(mktemp -d); cd "$D"; mkdir -p tools; cp $T/try_migrate.olang $T/srcmask.olang tools/
$NEW build tools/try_migrate.olang > /dev/null
cat > old.olang <<'EOF'
import "std/io"
import "std/os"
error E { BAD }
fn g(b Bool) Bool ? E { if not b and os.Args().Len() > 50 { error E.BAD } return b }
fn main() ? {
  n := os.Args().Len()
  y := (not try g(n > 5)
    or true)
  io.Println($y)!
}
EOF
[ -n "$OLD" ] && { echo "== master:"; $OLD old.olang; }
echo "== try_migrate --old:"; ./build/tools_try_migrate --old old.olang
echo "== the new compiler on the result:"; $NEW old.olang
