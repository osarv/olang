#!/bin/bash
# gen.sh: vNN.olang - a callee returning an array value from existing storage by one route; its result boxed in a
# mut any (decision 1: AnyItemNew holds an unscoped call's array as it is) and bumped, and also written as a value
# local; the source printed after - run and baked
cd /home/user/review/any5/vb
mk() { # name defs src-setup call
cat > $1.olang <<EOT
type Lab extends String
type W trait {
    mut Bump()
}
fn (l mut Lab&) Bump() { l[0] = 'Z' }
$2
fn probe(i I64) String {
$3
    b mut any W& = Lab($4)
    b.Bump()
    x := $4
    x[1] = 'Q'
    return "src " $5 " b " \$b " x " \$x
}
G := probe(1)
fn main() {
    say("run:   " \$probe(1))
    say("baked: " \$G)
}
EOT
}
mk v01_listelem 'fn get(l List<String&>&) String { return l[0] }' '    l := List<String&>()
    l.Push("abc" $i)' 'get(l)' '$l'
mk v02_mapvalue 'fn get(m Map<I64, String&>&) String { return try m.Get(1) catch default "none" }' '    m := Map<I64, String&>()
    m.Put(1, "abc" $i)' 'get(m)' '$m'
mk v03_refield 'type K struct(s String&) { s }
fn get(k K&) String { return k.s }' '    k := K("abc" $i)' 'get(k)' '$k.s'
mk v04_generic 'fn gid<T>(x T) T { return x }' '    s := "abc" $i' 'gid(s)' '$s'
mk v05_genericref 'fn gid<T>(x T) T { return x }
fn get(p String&) String { return gid(p) }' '    s := "abc" $i' 'get(s)' '$s'
mk v06_lambda '' '    s := "abc" $i
    g := fn(p String&) String { return p }' 'g(s)' '$s'
mk v07_capture '' '    s := "abc" $i
    g := fn() String { return s }' 'g()' '$s'
mk v08_slicecall 'fn id(p String&) String&p { return p }
fn get(p String&) String { return id(p)[0:3] }' '    s := "abc" $i' 'get(s)' '$s'
mk v09_global 'GS mut String = "abc"
fn get() String { return GS }' '' 'get()' '$GS'
mk v10_trim 'fn get(p String&) String { return p.Trim() }' '    s := "abc" $i' 'get(s)' '$s'
mk v11_cond 'fn get(p String&, q String&, c Bool) String { return p if c else q }' '    s := "abc" $i
    t := "def" $i' 'get(s, t, i > 0)' '$s'
mk v12_matchbind 'type E enum {
    T(s String&)
    N
}
fn get(e E&) String {
    return match e { case E.T(q) => q nomatch => "none" }
}' '    e := E.T("abc" $i)' 'get(e)' '$(e as E.T)'
mk v13_asconv 'type E enum {
    T(s String&)
    N
}
fn get(e E&) String { return e as E.T }' '    e := E.T("abc" $i)' 'get(e)' '$(e as E.T)'
mk v14_vecelem 'fn get(v Vec<String&>&) String { return v[0] }' '    v := Vec<String&>()
    v.Push("abc" $i)' 'get(v)' '$v[0]'
mk v15_convglobal 'GS mut String = "abc"
fn get() Lab { return Lab(GS) }' '' 'get()' '$GS'
mk v16_convlocalret 'fn get(i I64) Lab {
    s := "abc" $i
    return Lab(s)
}' '' 'get(i)' '"(no source)"'
mk v17_forin 'fn get(l List<String&>&) String {
    for x in l { return x }
    return "none"
}' '    l := List<String&>()
    l.Push("abc" $i)' 'get(l)' '$l'
mk v18_tuple 'fn two(p String&) String, I64 { return p, 1 }
fn get(p String&) String {
    a, n := two(p)
    return a
}' '    s := "abc" $i' 'get(s)' '$s'
