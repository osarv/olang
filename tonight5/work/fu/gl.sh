#!/bin/bash
cat base.inc > $1.olang
cat >> $1.olang <<EOF
$2
fn work(l List<fn(i I64)>&, base I64) {
$3
}
fn main() ? {
    a mut List<N&>& = List<N&>()
    b mut List<N&>& = List<N&>()
    la := List<fn(i I64)>()
    la.Push(fn(i I64) { a.Push(N(i)) })
    lb := List<fn(i I64)>()
    lb.Push(fn(i I64) { b.Push(N(i)) })
    join {
        spawn work(la, 0)
        spawn work(lb, 1000000)
    }
    report(a, b)
}
EOF
