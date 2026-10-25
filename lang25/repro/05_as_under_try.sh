#!/bin/sh
# 05: an "as" under a try aborted on master (checked alone made it fail); now it fails into the try's clauses, so an
# item-less "catch default" swallows a wrong case that used to stop the program. as_migrate is driven by E32's "no try
# covers this as", so it never sees these; olang fix only takes the parentheses off.
# usage: 05_as_under_try.sh NEW_OLANG [MASTER_OLANG]
NEW=$1; OLD=$2; D=$(mktemp -d); cd "$D"; mkdir src
cat > src/p.olang <<'EOF'
import "std/io"
import "std/os"
type Shape enum {
  Circle(r F64)
  Square(s F64)
}
error E { MISSING }
fn find(n I64) Shape ? E { if n > 100 { error E.MISSING }
  return Shape.Circle(1.0) if n > 5 else Shape.Square(2.0) }
fn main() ? {
  n := os.Args().Len()
  r := try (find(n) as Shape.Circle) catch default -1.0
  io.Println("radius " $r)!
}
EOF
[ -n "$OLD" ] && { echo "== master:"; $OLD src/p.olang; echo "status $?"; }
OLANG_CACHE=$D/cache $NEW fix src/p.olang > /dev/null
echo "== after olang fix, new compiler:"; sed -n 12p src/p.olang; $NEW src/p.olang; echo "status $?"
