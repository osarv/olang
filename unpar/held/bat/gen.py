import os
# (name, lib code defining fn K(x Array<I64>&) R, result type R, read expr on v)
cases = [
("lamstruct", """type B struct(f fn() I64) {
    F fn() I64 = f
}
fn K(x Array<I64>&) B {
    return B(fn() I64 { return x[1] })
}""", "B", "$v.F()"),
("lamenum", """type E enum {
    A(f fn() I64)
    N
}
fn K(x Array<I64>&) E {
    return E.A(fn() I64 { return x[1] })
}""", "E", "$(match v { case E.A(f) => f() case _ => 0 })"),
("lamlist", """fn K(x Array<I64>&) List<fn() I64> {
    l := List<fn() I64>()
    l.Push(fn() I64 { return x[1] })
    return l
}""", "List<fn() I64>", "$v[0]()"),
("lamarr", """fn K(x Array<I64>&) Array<fn() I64> {
    return Array<fn() I64>(1, fn() I64 { return x[1] })
}""", "Array<fn() I64>", "$v[0]()"),
("lamcond", """type B struct(f fn() I64) {
    F fn() I64 = f
}
fn K(x Array<I64>&) B {
    f := (fn() I64 { return x[1] }) if x.Len() > 0 else (fn() I64 { return 0 })
    return B(f)
}""", "B", "$v.F()"),
("spawnret", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn mk(x Array<I64>&) H { return H(x) }
fn K(x Array<I64>&) H {
    r H
    join {
        spawn r = mk(x)
    }
    return r
}""", "H", "$v.X[1]"),
("trydef", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn bad() H ? { error }
fn K(x Array<I64>&) H {
    return try bad() catch default H(x)
}""", "H", "$v.X[1]"),
("matchbind", """type E enum {
    A(x Array<I64>&)
    N
}
type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn K(x Array<I64>&) H {
    e := E.A(x)
    return match e {
        case E.A(y) => H(y)
        case _ => H(Array<I64>(4))
    }
}""", "H", "$v.X[1]"),
("forin", """fn K(x Array<I64>&) List<Array<I64>&> {
    src := List<Array<I64>&>()
    src.Push(x)
    out := List<Array<I64>&>()
    for y in src { out.Push(y) }
    return out
}""", "List<Array<I64>&>", "$v[0][1]"),
("compr", """fn K(x Array<I64>&) Array<Array<I64>&> {
    xs := Array<Array<I64>&>(2, x)
    return Array<Array<I64>&>[y for y in xs]
}""", "Array<Array<I64>&>", "$v[0][1]"),
("defer", """type H struct() {
    X Array<I64>& = null
}
fn K(x Array<I64>&) H {
    h := H()
    defer { h.X = x }
    return h
}""", "H", "$v.X[1]"),
("iterator", """type It struct(a Array<I64>&) {
    A Array<I64>& = a
    at I64 = 0
}
fn (i mut It&) Next() I64 ? Exhausted {
    if i.at >= i.A.Len() { error Exhausted.END }
    i.at++
    return i.A[i.at - 1]
}
fn K(x Array<I64>&) It {
    return It(x)
}""", "It", "$v.A[1]"),
("viaother", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn inner(x Array<I64>&, h mut H&) { h.X = x }
fn K(x Array<I64>&) H {
    h := H(Array<I64>(4))
    inner(x, h)
    return h
}""", "H", "$v.X[1]"),
("slicefield", """type H struct(x Array<I64>&) {
    X Array<I64>& = x[1:3]
}
fn K(x Array<I64>&) H {
    return H(x)
}""", "H", "$v.X[0]"),
("tuplecall", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn two(x Array<I64>&) (H, I64) { return H(x), 3 }
fn K(x Array<I64>&) H {
    h, n := two(x)
    return h
}""", "H", "$v.X[1]"),
("ctorcall", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
type G struct(x Array<I64>&) {
    In H = H(x)
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.In.X[1]"),
("ctormethod", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn (h H&) Again() H { return H(h.X) }
type G struct(x Array<I64>&) {
    In H = H(x).Again()
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.In.X[1]"),
("ctorlam2", """type G struct(x Array<I64>&) {
    F fn() I64 = (fn() I64 { return x[1] })
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.F()"),
("ctorhandle", """type G struct(x Array<I64>&) {
    L List<Array<I64>&> = List<Array<I64>&>()
    L.Push(x)
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.L[0][1]"),
("ctorhandle2", """type G struct(x Array<I64>&) {
    L List<Array<I64>&> = List<Array<I64>&>()
    if x.Len() > 0 { L.Push(x) }
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.L[0][1]"),
("ctorloop", """type G struct(x Array<I64>&) {
    L List<Array<I64>&> = List<Array<I64>&>()
    for i in range 2 { L.Push(x) }
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.L[0][1]"),
("ctorassign", """type G struct(x Array<I64>&) {
    X Array<I64>& = null
    if x.Len() > 2 { X = x }
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.X[1]"),
("ctormatch", """type G struct(x Array<I64>&) {
    X Array<I64>& = null
    match x.Len() {
        case 4 { X = x }
        case _ { }
    }
}
fn K(x Array<I64>&) G {
    return G(x)
}""", "G", "$v.X[1]"),
]
churn = open('../churn.inc').read()
for name, lib, rt, rd in cases:
    for mode in ("x", "s"):
        d = name + "_" + mode
        os.makedirs(d, exist_ok=True)
        q = "lib." if mode == "x" else ""
        rtq = rt
        if mode == "x":
            for t in ("B", "E", "H", "G", "It"):
                rtq = rtq.replace(t + "\b", "")
            import re
            rtq = re.sub(r'\b(B|E|H|G|It)\b', r'lib.\1', rt)
            rdq = re.sub(r'\bE\.', 'lib.E.', rd)
        else:
            rdq = rd
        caller = f"""fn get() {rtq} {{
    d := Array<I64>(4, 9)
    r := {q}K(d)
    return r
}}

fn getloop() {rtq} {{
    r {rtq}
    for i in range 3 {{
        d := Array<I64>(4, 5 + i)
        r = {q}K(d)
    }}
    return r
}}

fn main() {{
    v := get()
    churn()
    io.Println({rdq})!
    v = getloop()
    churn()
    io.Println({rdq})!
}}
"""
        if mode == "x":
            open(f"{d}/lib.olang", "w").write(lib + "\n")
            open(f"{d}/main.olang", "w").write('import "std/io"\nimport "lib"\n\n' + caller + "\n" + churn)
        else:
            open(f"{d}/main.olang", "w").write('import "std/io"\n\n' + lib + "\n\n" + caller + "\n" + churn)
