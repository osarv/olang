#!/bin/sh
# 06: an instance becomes a function value through its Call (E31) with the error sets never compared
# (check.olang's adapter: "errors in order" in its comment, no comparison in its code). Pre-existing, but the batch
# makes every Call with a contract fallible (D17b), so a master program passing such an instance where an infallible
# function type is wanted - which compiled and ran right - now compiles after olang fix and reads the error union's
# code word as the result. The other direction (infallible Call, fallible function type) reads the result as an error
# at run time and as a value under interpret: the two disagree.
# usage: 06_call_adapter_errors.sh NEW_OLANG [MASTER_OLANG]
NEW=$1; OLD=$2; R=$(dirname $(readlink -f $0)); D=$(mktemp -d); cd "$D"; mkdir src
cat > src/gate.olang <<'EOF'
import "std/io"
import "std/os"
type Gate struct(lim I64) { lim }
fn (g Gate&) Call(x I64) I64 [x < g.lim] { return x }
fn run(f fn(x I64) I64, v I64) I64 { return f(v) }
fn main() ? {
  k := os.Args().Len()
  g := Gate(5)
  io.Println("run " $run(g, k))!
}
EOF
[ -n "$OLD" ] && { echo "== master (contract in the old place, unchecked at run time):"; $OLD src/gate.olang; }
OLANG_CACHE=$D/cache $NEW fix src/gate.olang > /dev/null
echo "== after olang fix:"; sed -n 4p src/gate.olang; $R/run3.sh $NEW src/gate.olang
cat > other.olang <<'EOF'
import "std/io"
import "std/os"
error E { BAD }
type Gate struct(lim I64) { lim }
fn (g Gate&) Call(x I64) I64 { return x + 100 }
fn run2(f fn(x I64) I64 ? E, v I64) I64 { return try f(v) catch default -1 }
fn main() ? {
  io.Println("run2 " $run2(Gate(5), os.Args().Len()))!
}
EOF
echo "== an infallible Call as a fallible function type (want 'run2 101'):"; $R/run3.sh $NEW other.olang
