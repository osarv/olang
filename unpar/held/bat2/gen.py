import os
# (name, lib code defining fn K(x Array<I64>&) R, result type R, read expr on v)
cases = [
("enumcond", """type E enum {
    A(x Array<I64>&)
    N
}
fn K(x Array<I64>&) E {
    return E.A(x if x.Len() > 0 else Array<I64>(4))
}""", "E", "$v"),
("arrfillcond", """fn K(x Array<I64>&) Array<Array<I64>&> {
    return Array<Array<I64>&>(2, x if x.Len() > 0 else Array<I64>(4))
}""", "Array<Array<I64>&>", "$v[0][1]"),
("ctorargcond", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn K(x Array<I64>&) H {
    return H(x if x.Len() > 0 else Array<I64>(4))
}""", "H", "$v.X[1]"),
("ctorargmatch", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn K(x Array<I64>&) H {
    return H(match x.Len() {
        case 0 => Array<I64>(4)
        case _ if x[0] > 100 => Array<I64>(5)
        case _ => x
    })
}""", "H", "$v.X[1]"),
("nestedctorcond", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
type G struct(h H) {
    In H = h
}
fn K(x Array<I64>&) G {
    return G(H(x if x.Len() > 0 else Array<I64>(4)))
}""", "G", "$v.In.X[1]"),
("localcond", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn K(x Array<I64>&) H {
    y := x if x.Len() > 0 else Array<I64>(4)
    return H(y)
}""", "H", "$v.X[1]"),
("localcondref", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn K(x Array<I64>&) H {
    y Array<I64>& = x if x.Len() > 0 else Array<I64>(4)
    return H(y)
}""", "H", "$v.X[1]"),
("listcond", """fn K(x Array<I64>&) List<Array<I64>&> {
    l := List<Array<I64>&>()
    l.Push(x if x.Len() > 0 else Array<I64>(4))
    return l
}""", "List<Array<I64>&>", "$v[0][1]"),
("fieldstorecond", """type H struct() {
    X Array<I64>& = null
}
fn K(x Array<I64>&) H {
    h := H()
    h.X = x if x.Len() > 0 else Array<I64>(4)
    return h
}""", "H", "$v.X[1]"),
("condret", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn K(x Array<I64>&) H {
    return H(x) if x.Len() > 0 else H(Array<I64>(4))
}""", "H", "$v.X[1]"),
("matchret", """type H struct(x Array<I64>&) {
    X Array<I64>& = x
}
fn K(x Array<I64>&) H {
    return match x.Len() {
        case 0 => H(Array<I64>(4))
        case _ if x[0] > 1000 => H(Array<I64>(3))
        case _ => H(x)
    }
}""", "H", "$v.X[1]"),
("ctorfieldcondfield", """type H struct(x Array<I64>&, y Array<I64>&) {
    X Array<I64>& = (x if x.Len() > 9 else y)
}
fn K(x Array<I64>&) H {
    return H(Array<I64>(10), x)
}""", "H", "$v.X[1]"),
("ctorgenfield", """type H<T> struct(x T, n I64) {
    X T = x
    Y Array<T>& = (Array<T>(1, x) if n > 0 else Array<T>(0))
}
fn K(x Array<I64>&) H<Array<I64>&> {
    return H<Array<I64>&>(x, 1)
}""", "H<Array<I64>&>", "$v.Y[0][1]"),
("ctorfieldtry", """fn pick(x Array<I64>&) Array<I64>&x ? {
    if x.Len() > 100 { error }
    return x
}
type H struct(x Array<I64>&) {
    X Array<I64>& = try pick(x) catch default Array<I64>(4)
}
fn K(x Array<I64>&) H {
    return H(x)
}""", "H", "$v.X[1]"),
("ctorfieldmeth", """type H struct(x Array<I64>&) {
    X Array<I64>& = x.Trimmed()
}
fn (a Array<I64>&) Trimmed() Array<I64>&a { return a[0:2] if a.Len() > 2 else a }
fn K(x Array<I64>&) H {
    return H(x)
}""", "H", "$v.X[1]"),
("ctorfieldcondmeth", """type H struct(x Array<I64>&) {
    X Array<I64>& = (x.Trimmed() if x.Len() > 0 else Array<I64>(2))
}
fn (a Array<I64>&) Trimmed() Array<I64>&a { return a[0:2] if a.Len() > 2 else a }
fn K(x Array<I64>&) H {
    return H(x)
}""", "H", "$v.X[1]"),
("ctorfieldcondcall", """fn tr(a Array<I64>&) Array<I64>&a { return a[0:2] }
type H struct(x Array<I64>&) {
    X Array<I64>& = (tr(x) if x.Len() > 0 else Array<I64>(2))
}
fn K(x Array<I64>&) H {
    return H(x)
}""", "H", "$v.X[1]"),
("ctorfieldcondlist", """type H struct(x Array<I64>&) {
    X List<Array<I64>&> = (List<Array<I64>&>() if x.Len() > 9 else List<Array<I64>&>())
    X.Push(x)
}
fn K(x Array<I64>&) H {
    return H(x)
}""", "H", "$v.X[0][1]"),
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
