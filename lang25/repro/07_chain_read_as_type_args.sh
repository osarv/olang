#!/bin/sh
# 07: G12's C#-rule reads a comparison chain "a < b > (c)" (E30) - and "f(p.n < m, m > (d))", two arguments - as a call
# given type arguments, whatever a or p.n is and with spaces around ">". On a member it is G7's error ("'n' is not
# generic"); on a plain local it is no diagnostic at all and a lowering gap ("cannot build this yet"). Master runs all.
# The differential fuzzer writes such chains (gen.olang Orders): 2 of its first 40 programs fail so.
# usage: 07_chain_read_as_type_args.sh NEW_OLANG [MASTER_OLANG]
NEW=$1; OLD=$2; D=$(mktemp -d); cd "$D"
cat > local.olang <<'EOF'
import "std/io"
import "std/os"
fn main() ? {
  k := os.Args().Len()
  m := 5
  a := k < m > (0)
  io.Println($a)!
}
EOF
cat > member.olang <<'EOF'
import "std/io"
import "std/os"
type P struct(n I64) { n }
fn two(a Bool, b Bool) I64 { return (1 if a else 0) + (2 if b else 0) }
fn main() ? {
  p := P(os.Args().Len())
  m := 5
  d := 0
  io.Println($(p.n < m > (d)))!
  io.Println($two(p.n < m, m > (d)))!
}
EOF
for f in local member; do
  [ -n "$OLD" ] && { echo "== master $f:"; $OLD $f.olang; }
  echo "== new $f:"; $NEW $f.olang; echo "status $?"
done
