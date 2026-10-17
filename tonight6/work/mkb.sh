#!/bin/bash
# mkb.sh name 'loop body (t is loop text, bs List<Box>)' 'extra decls' 'after'
cat > $1.olang <<EOF
type Box struct(s String&) { s }
fn box(s String&) Box { return Box(s) }
fn idg(s <T>) T { return s }
fn wrap(b Box) Box { return b }
fn mayBox(s String&) Box ? {
    if s.Len() > 1000 { error }
    return Box(s)
}
fn two(s String&) (Box, I64) { return Box(s), 1 }
type Pairish struct(a Box, n I64) {
    a
    n
}
fn pairish(s String&) Pairish { return Pairish(Box(s), 1) }
fn churn() I64 {
    t I64 = 0
    for k in range 200 {
        junk := \$k "-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        t += junk.Len()
    }
    return t
}
$3
fn main() ? {
    bs := List<Box>()
    m := Map<I64, Box>()
    arr := Array<Box>(4, Box("init"))
    for k in range 4 {
        t := \$k "-some-text-of-moderate-length"
$2
    }
    c := churn()
    println(\$c)
$4
    for b in bs { println(b.s) }
}
EOF
