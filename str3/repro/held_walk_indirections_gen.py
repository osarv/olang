# Generates Strs reaching a build into the receiver through: a callee, a two-function cycle, a generic, a trait
# default, a lambda (local, handed on, spawned), defer, a spawned call, a conditional, match, try or multi-result
# argument, and local aliases. e27b83b refuses all 16 that build (error[E11c, O12]); generic2 is not valid olang (T(...)
# through a type variable) and for_arg is the control, which runs.
pre = '''type Node struct(v I64, next mut Node&, name String&) {
    v
    next
    name
}
fn b1(n Node&) I64 {
    x Node&n = Node(1, null, "q")
    return x.v
}
fn b2(n Node&) Node&n { return Node(2, null, "q") }
fn b3(n Node&, d I64) I64 {
    if d <= 0 { return b1(n) }
    return b4(n, d - 1)
}
fn b4(n Node&, d I64) I64 { return b3(n, d - 1) }
fn gh(n <T>&) I64 { return b1(n) }
fn gh2(n <T>&) I64 {
    x T&n = T(1, null, "q")
    return x.v
}
type Has trait {
    V() I64
}
fn (n Node&) V() I64 { return n.v }
fn (h <H Has>&) Built() I64 {
    return b1(h)
}
fn apply(f fn() I64) I64 { return f() }
fn churn() I64 {
    t I64 = 0
    for i in range 300 {
        a := Array<I64>(64, -7)
        t += a[3]
        s := $i "-" $(i * 7)
        t += s.Len()
    }
    return t
}
type Bag struct(head mut Node&) {
    head
}
'''
post = '''fn main() ? {
    b := Bag(Node(3, null, "nm"))
    for i in range 3 {
        s := $b
        churn()
        println(s)
    }
}
'''
bodies = {
 'direct_b1': 'return "s" $b1(b.head)',
 'direct_b2': 'return "s" $b2(b.head).v',
 'cycle': 'return "s" $b3(b.head, 5)',
 'generic': 'return "s" $gh(b.head)',
 'generic2': 'return "s" $gh2(b.head)',
 'traitdef': 'return "s" $b.head.Built()',
 'lambda_local': 'f := fn() I64 { return b1(b.head) }\n    return "s" $f()',
 'lambda_apply': 'return "s" $apply(fn() I64 { return b1(b.head) })',
 'defer': 't I64 = 0\n    {\n        defer { t = b1(b.head) }\n    }\n    return "s" $t',
 'spawn': 't I64 = 0\n    join { spawn t = b1(b.head) }\n    return "s" $t',
 'spawn_lambda': 't I64 = 0\n    join { spawn fn() { y := b1(b.head) } }\n    return "s" $t',
 'cond_arg': 'return "s" $b1(b.head if b.head.v > 0 else b.head)',
 'local_alias': 'x := b.head\n    return "s" $b1(x)',
 'local_alias_next': 'x := b.head\n    y := x.next if x.next != null else x\n    return "s" $b1(y)',
 'try_arg': 'x := try find(b.head) catch default b.head\n    return "s" $b1(x)',
 'match_arg': 'x := match b.head.v {\n        case 1 => b.head\n        nomatch => b.head\n    }\n    return "s" $b1(x)',
 'multi': 'a, c := two(b.head)\n    return "s" $b1(a)',
 'for_arg': 't I64 = 0\n    l := List<Node&>()\n    return "s" $t',
}
extra = '''fn find(n Node&) Node&n ? {
    if n.v < 0 { error }
    return n
}
fn two(n Node&) (Node&n, I64) { return n, 1 }
'''
for k, b in bodies.items():
    with open(k + '.olang', 'w') as f:
        f.write(pre + extra + 'fn (b Bag&) Str() String {\n    ' + b + '\n}\n' + post)
