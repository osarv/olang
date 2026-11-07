#!/bin/bash
# gen.sh name 'extra decls' 'grow body'  -> b/name.olang
n=$1; decl=$2; body=$3
cat > b/$n.olang <<EOF
fn churn() I64 {
    t := 0
    for i in range 3000 {
        s := \$i "abcdefghijklmnopqrstuvwxyz0123456789"
        t += s.Len()
    }
    return t
}
fn view(v Vec<I64>&) Array<I64>&v { return v.View() }
fn pushRet(w mut Vec<I64>&, x I64) I64 {
    for i in range 1000 { w.Push(i + x) }
    return x
}
$decl
fn grow(w mut Vec<I64>&) {
$body
}
fn main() ? {
    v := Vec<I64>()
    v.Push(10)
    v.Push(20)
    grow(v)
}
EOF
