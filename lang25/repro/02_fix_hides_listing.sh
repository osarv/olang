#!/bin/sh
# 02 (pre-existing on master, found because of 01): x.Len() on a type with no Len compiles with no diagnostic. In an
# "or" it lowers to false - which is how compiler/fix.olang's "body.Lines().Len() > 1" never shows what a tool left for
# a person (LineIter has no Len). Alone it fails in lowering, "cannot build this yet".
# usage: 02_fix_hides_listing.sh OLANG
C=$1; D=$(mktemp -d); cd "$D"
cat > a.olang <<'EOF'
import "std/io"
type It struct() { n I64 = 0 }
fn main() ? {
  x := It()
  ok := x.n > 5 or x.Len() > 1
  io.Println($ok)!
}
EOF
cat > b.olang <<'EOF'
import "std/io"
import "std/os"
fn main() ? {
  body := "a\nb\nc" $os.Args().Len()
  io.Println($(body.Lines().Len()))!
}
EOF
echo "== a.olang (expected: an error, It has no Len)"; $C a.olang; echo "status $?"
echo "== b.olang (expected: an error, LineIter has no Len)"; $C b.olang; echo "status $?"
