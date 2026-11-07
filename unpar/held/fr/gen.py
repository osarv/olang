cases = {
"text": ("t String& = $n \" suffix\"", "$m.t"),
"textcond": ("t String& = ($n \" a\" if n > 1 else \"b\")", "$m.t"),
"compr": ("xs Array<I64>& = I64[k * 2 for k in range n]", "$m.xs"),
"slicefresh": ("xs Array<I64>& = Array<I64>(n, 5)[1:3]", "$m.xs"),
"matchfresh": ("xs Array<I64>& = match n {\n        case _ if n > 1 => Array<I64>(n, 6)\n        case _ => Array<I64>(1)\n    }", "$m.xs"),
"enumlam": ("e E = E.F(fn() I64 { return d[1] })", "$(match m.e { case E.F(f) => f() case _ => 0 })"),
"lamval": ("f fn() I64 = fn() I64 { return n * 3 }", "$m.f()"),
"lamref": ("f fn() I64 = fn() I64 { return d[1] }", "$m.f()"),
"lamrefcond": ("f fn() I64 = (fn() I64 { return d[1] }) if n > 1 else (fn() I64 { return 0 })", "$m.f()"),
"lamlist": ("fs List<fn() I64> = List<fn() I64>()\n    fs.Push(fn() I64 { return d[1] })", "$m.fs[0]()"),
"lamlocal": ("g := fn() I64 { return d[1] }\n    f fn() I64 = g", "$m.f()"),
"lamfresh": ("own Array<I64>& = Array<I64>(4, 8)\n    f fn() I64 = fn() I64 { return own[1] }", "$m.f()"),
"ctorlam": ("h H = H(fn() I64 { return d[1] })", "$m.h.F()"),
"listfresh": ("l List<String&> = List<String&>()\n    l.Push($n \"x\")", "$m.l"),
"nested": ("h H2 = H2(Array<I64>(n, 3))", "$m.h.X"),
"trydef": ("xs Array<I64>& = try mayfail(n) catch default Array<I64>(n, 4)", "$m.xs"),
}
pre = """import "std/io"

type E enum {
    F(f fn() I64)
    N
}

type H struct(f fn() I64) {
    F fn() I64 = f
}

type H2 struct(x Array<I64>&) {
    X Array<I64>& = x
}

fn mayfail(n I64) Array<I64> ? MyErr {
    if n > 1 { error MyErr.BAD }
    return Array<I64>(1)
}

error MyErr {
    BAD
}

"""
churn = open('churn.inc').read()
for k, (field, rd) in cases.items():
    prog = pre + f"""type M struct(n I64, d Array<I64>&) {{
    n
    {field}
}}

fn main() {{
    d := Array<I64>(4, 7)
    m := M(2, d)
    churn()
    io.Println({rd})!
}}

""" + churn
    open(f"fr/{k}.olang", "w").write(prog)
