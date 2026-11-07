#!/usr/bin/env python3
# gen.py SEED - writes one program: a callee body built from random statements over its parameter c (mut V&), called
# on l[0] (a List's copy: the view lend) and on a[0] (an Array's place). Accepted and run, both must print the same.
import random, sys
seed = int(sys.argv[1]); R = random.Random(seed)
HDR = '''type State struct() {
    n I64 = 0
}
type Bag struct() {
    s mut State& = State()
}
type Pt struct() {
    X I64 = 0
}
type V struct(d mut Array<I64>&, n I64) {
    d
    n
    p Pt = Pt()
    items List<I64> = List<I64>()
    b Bag = Bag()
    w mut Pt& = Pt()
}
fn viewOk(c mut V&, k I64) { c.d[k % 3] = c.d[k % 3] + k + c.n }
fn writer(c mut V&, k I64) { c.n = c.n + k }
fn ro(c V&, k I64) I64 { return c.n + c.p.X + k }
fn byval(c V, k I64) I64 {
    c.n = c.n + k
    return c.n
}
fn (c mut V&) MView(k I64) { c.w.X = c.w.X + k }
fn (c mut V&) MWrite(k I64) { c.p.X = c.p.X + k }
fn (b mut Bag&) Bump(k I64) { b.s.n = b.s.n + k }
fn (b mut Bag&) Reset() { b.s = State() }
fn movePt(p mut Pt&, k I64) { p.X = p.X + k }
'''
STMTS = [
 'c.d[{k} % 3] = c.d[{k} % 3] * 2 + {k}',
 'c.n = {k}', 'c.p.X = {k}', 'c.p.X++', 'c.n += {k}',
 'viewOk(c, {k})', 'writer(c, {k})', 'c.d[0] = c.d[0] + ro(c, {k})', 'c.d[1] = c.d[1] + byval(c, {k})',
 'c.MView({k})', 'c.MWrite({k})', 'c.items.Push({k})', 'c.b.Bump({k})', 'c.b.Reset()',
 'movePt(c.w, {k})', 'movePt(c.p, {k})', 'c.w = Pt()',
 'q := c.n + {k}\n    c.d[2] = c.d[2] + q', 'c.w.X = c.w.X + c.p.X + {k}',
 'if c.n > {k} {{ c.d[0] = c.d[0] + 1 }} else {{ c.w.X = c.w.X + 2 }}',
 'for i in range 2 {{ c.d[i] = c.d[i] + {k} }}',
 'defer {{ c.d[1] = c.d[1] + {k} }}',
]
n = R.randint(1, 4)
body = '\n    '.join(R.choice(STMTS).format(k=R.randint(1, 9)) for _ in range(n))
init = R.randint(0, 5)
print(HDR + f'''fn f(c mut V&) {{
    {body}
}}
fn show(v V&) String& {{ return $v.n " " $v.p.X " " $v.d " " $v.items " " $v.b.s.n " " $v.w.X }}
fn main() ? {{
    l := List<V>()
    l.Push(V(Array<I64>(3), {init}))
    f(l[0])
    a := V[V(Array<I64>(3), {init})]
    f(a[0])
    println(show(l[0]))
    println(show(a[0]))
}}''')
