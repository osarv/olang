#!/bin/sh
# 01: "olang fix" on code written before the batch: it compiles afterwards and prints other numbers, and says nothing.
# usage: 01_fix_changes_meaning.sh NEW_OLANG [MASTER_OLANG]
NEW=$1; OLD=$2
D=$(mktemp -d); cd "$D"; mkdir src
cat > src/old.olang <<'EOF'
import "std/io"
import "std/os"
error E { BAD }
fn f(n I64) I64 ? E { if n > 100 { error E.BAD } return n }
fn main() ? {
  a := I64[1, 2, 3]
  n := os.Args().Len()
  x := 2 * checked a[n] + 1
  io.Println($x)!
  y := -try f(n) + 1
  io.Println($y)!
}
EOF
cp src/old.olang orig.olang
[ -n "$OLD" ] && { echo "== master runs it as written"; $OLD orig.olang; }
echo "== olang fix (all it prints):"; OLANG_CACHE=$D/cache $NEW fix src/old.olang; echo "fix status $?"
echo "== what fix changed:"; diff orig.olang src/old.olang
echo "== the fixed program on the new compiler:"; $NEW src/old.olang
