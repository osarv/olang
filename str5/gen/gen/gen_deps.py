# Enumerates Str programs handing a callback and the receiver's node to a helper; each helper reaches the callback in a
# different way. A program the compiler accepts must give, under -b -s, what -i gives and report no use after scope close.
import sys, os, itertools
CBS = {
 'none':  'fn(x mut Node&) { }',
 'read':  'fn(x mut Node&) { t := x.v + 1 }',
 'text':  'fn(x mut Node&) { s := $x.v "t" }',
 'build': 'fn(x mut Node&) { x.next = Node(x.v + 100) }',
 'nread': 'rdr',
 'nbuild': 'bld',
}
HELPERS = {
 'direct':   'fn H(g fn(x mut Node&), n mut Node&, c I64) { g(n) }',
 'pass':     'fn H2(g fn(x mut Node&), n mut Node&, c I64) { g(n) }\nfn H(g fn(x mut Node&), n mut Node&, c I64) { H2(g, n, c) }',
 'swap':     'fn H2(a fn(x mut Node&), b fn(x mut Node&), n mut Node&) { b(n) }\nfn H(g fn(x mut Node&), n mut Node&, c I64) { H2(INNER, g, n) }',
 'swap2':    'fn H2(a fn(x mut Node&), b fn(x mut Node&), n mut Node&) { b(n) }\nfn H(g fn(x mut Node&), n mut Node&, c I64) { H2(g, INNER, n) }',
 'reassign': 'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    g = INNER\n    g(n)\n}',
 'condre':   'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    if c > 5 { g = INNER }\n    g(n)\n}',
 'rec':      'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    if c > 0 { H(INNER, n, c - 1) }\n    g(n)\n}',
 'cycle':    'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    if c > 0 { H2(n, c - 1) }\n    g(n)\n}\nfn H2(n mut Node&, c I64) { H(INNER, n, c) }',
 'cycle2':   'fn H2(n mut Node&, c I64) { H(INNER, n, c) }\nfn H(g fn(x mut Node&), n mut Node&, c I64) {\n    if c > 0 { H2(n, c - 1) }\n    g(n)\n}',
 'cycle3':   'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    if c > 0 { H2(g, n, c - 1) }\n}\nfn H2(g fn(x mut Node&), n mut Node&, c I64) {\n    H3(INNER, n, c)\n    g(n)\n}\nfn H3(g fn(x mut Node&), n mut Node&, c I64) {\n    if c > 0 { H(g, n, c - 1) }\n    g(n)\n}',
 'generic':  'fn G(g fn(x <T>), x T) { g(x) }\nfn H(g fn(x mut Node&), n mut Node&, c I64) { G(g, n) }',
 'local':    'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    k := g\n    k(n)\n}',
 'lambda':   'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    L := fn() { g(n) }\n    L()\n}',
 'spawn':    'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    join { spawn g(n) }\n}',
 'elem':     'type View struct(ns Array<mut Node&>&) {\n    at Array<mut Node&>&ns = ns\n}\nfn H(g fn(x mut Node&), n mut Node&, c I64) {\n    a := Array<mut Node&>(1, n)\n    for x in View(a).at { g(x) }\n}',
 'twice':    'fn H(g fn(x mut Node&), n mut Node&, c I64) {\n    g(n)\n    H2(INNER, n)\n}\nfn H2(g fn(x mut Node&), n mut Node&) { g(n) }',
 'adapter':  'type Ad struct(k I64) {\n    k\n}\nfn (a Ad&) Call(x mut Node&) { if a.k > 99 { x.next = Node(x.v + 100) } }\nfn H2(g fn(x mut Node&), n mut Node&) { g(n) }\nfn H(g fn(x mut Node&), n mut Node&, c I64) { H2(Ad(c * 100), n) }',
}
PRE = '''type Node struct(v I64) {
    v
    next mut Node& = null
}
type Bag struct(head mut Node&) {
    head
}
fn rdr(x mut Node&) { t := x.v }
fn bld(x mut Node&) { x.next = Node(x.v + 100) }
fn churn(d I64) I64 {
    a := I64[d, d, d, d, d, d, d, d]
    l := List<I64>()
    for i in range 30 { l.Push(i) }
    if d == 0 { return 0 }
    return churn(d - 1) + a[3] - d
}
'''
out = sys.argv[1]
os.makedirs(out, exist_ok=True)
n = 0
for hname, htext in HELPERS.items():
    inners = list(CBS.keys()) if 'INNER' in htext else ['-']
    for inner in inners:
        for outer in CBS:
            src = PRE + htext.replace('INNER', CBS.get(inner, '')) + '\n'
            src += 'fn (b Bag&) Str() String {\n    H(' + CBS[outer] + ', b.head, 7)\n    return "b" $b.head.v\n}\n'
            src += 'fn main() ? {\n    b := Bag(Node(1))\n    println($b)\n    t := churn(100)\n    w := 0 if b.head.next == null else b.head.next.v\n    println($w " " $t)\n}\n'
            name = 'd_%s_%s_%s' % (hname, inner, outer)
            open(os.path.join(out, name + '.olang'), 'w').write(src)
            n += 1
print(n)
