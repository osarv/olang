#!/bin/sh
# 04: checked_migrate rewrites "checked T(e)" and "checked a[e]" to Narrow/Get, dropping the checks "checked" made on
# the arithmetic inside e (E15a: "a call's arguments included") - and lists nothing. It also writes "2 * try a.Get(n) + 1"
# for "2 * checked a[n] + 1" (see 01), where the old reading needs "2 * (try a.Get(n)) + 1".
# usage: 04_checked_migrate_drops_checks.sh NEW_OLANG [MASTER_OLANG]
NEW=$1; OLD=$2; T=$(dirname $(dirname $(readlink -f $NEW)))/tools
D=$(mktemp -d); cd "$D"; mkdir -p tools; cp $T/checked_migrate.olang $T/srcmask.olang tools/
$NEW build tools/checked_migrate.olang > /dev/null
cat > old.olang <<'EOF'
import "std/io"
import "std/os"
fn main() ? {
  n := os.Args().Len()
  x := I64(1) << (31 + n)
  a := I64[1, 2, 3]
  b := checked I32(x * x) catch default -1
  i := 9223372036854775807 + n
  c := checked a[i - 9223372036854775807] catch default -1
  io.Println($b " " $c)!
}
EOF
cp old.olang orig.olang
[ -n "$OLD" ] && { echo "== master (both overflow, both default):"; $OLD orig.olang; }
echo "== checked_migrate:"; ./build/tools_checked_migrate old.olang; diff orig.olang old.olang
echo "== the new compiler on the result:"; $NEW old.olang
