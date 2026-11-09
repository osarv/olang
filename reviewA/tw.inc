import "std/io"

type N struct(v I64) {
    v
    next N?& = null
}

fn link(a mut N&, b N&) { a.next = b }
fn noop(a mut N&, b N&) { }

fn churn(n I64) I64 {
    t := 0
    for i in range n {
        v := Vec<N>()
        for j in range 16 { v.Push(N(i * j)) }
        t += v[15].v
    }
    return t
}
