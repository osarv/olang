#!/bin/bash
# gen.sh name helperdecls workbody
cat base.inc > $1.olang
cat >> $1.olang <<EOF
$2
fn work(h H&, base I64) {
$3
}
fn main() ? {
    a mut List<N&>& = List<N&>()
    b mut List<N&>& = List<N&>()
    ha := H(fn(i I64) { a.Push(N(i)) })
    hb := H(fn(i I64) { b.Push(N(i)) })
    join {
        spawn work(ha, 0)
        spawn work(hb, 1000000)
    }
    report(a, b)
}
EOF
