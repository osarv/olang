import os, sys
PRE = '''type Node struct(v I64) {
    v
    next mut Node& = null
}
type Bag struct(head mut Node&, ls List<List<I64>>, m Map<I64, List<I64>>, arr Array<mut Node&>&) {
    head
    ls
    m
    arr
}
fn churn(d I64) I64 {
    a := I64[d, d, d, d, d, d, d, d]
    l := List<I64>()
    for i in range 30 { l.Push(i) }
    if d == 0 { return 0 }
    return churn(d - 1) + a[3] - d
}
fn grow(l mut List<I64>&) { l.Push(77) }
fn growN(n mut Node&) { n.next = Node(n.v + 100) }
fn pick(n mut Node&) mut Node&n { return n }
'''
BODIES = {
 'e31b_push': 'b.ls[0].Push(5)',
 'e31b_try': '(try b.m.Get(1)).Push(5)',
 'mapupd': 'b.m.Update(2, List<I64>(), fn(l List<I64>) List<I64> { return l })',
 'elemnode': 'b.arr[0].next = Node(9)',
 'pickgrow': 'growN(pick(b.head))',
 'condgrow': 'x := b.head if b.head.v > 0 else b.arr[0]\n    growN(x)',
 'condgrow2': 'growN(b.head if b.head.v > 0 else b.arr[0])',
 'matchgrow': 'growN(match b.head.v { case 1 => b.head case _ => b.arr[0] })',
 'forgrow': 'for n in b.arr { growN(n) }',
 'forgrowls': 'for l in b.ls { grow(l) }',
 'whilecur': 'c := b.head\n    for c != null and c.v < 3 { c = c.next }\n    if c != null { growN(c) }',
 'deferg': 'defer { growN(b.head) }',
 'trycatch': 'x := try pickF(b.head) catch default b.arr[0]\n    growN(x)',
 'slice': 's := b.arr[0:1]\n    growN(s[0])',
 'local': 'h := b.head\n    growN(h)',
 'lambdaarg': 'k := fn(n mut Node&) { growN(n) }\n    k(b.head)',
 'iterfold': 'q := b.ls.Iter().Fold(0, fn(acc, l) { return acc + l.Len() })',
 'iterpush': 'q := b.ls.Iter().Fold(0, fn(acc, l) { grow(l)\n        return acc })',
 'mapeach': 'for e in b.m { grow(e.Value) }',
 'arrmap': 'q := b.arr.Map(fn(n mut Node&) I64 { growN(n)\n        return 1 })',
}
EXTRA = 'fn pickF(n mut Node&) mut Node&n ? {\n    if n.v < 0 { error }\n    return n\n}\n'
os.makedirs('progs', exist_ok=True)
for k, body in BODIES.items():
    src = PRE + EXTRA + 'fn (b Bag&) Str() String {\n    ' + body + '\n    return "b" $b.head.v\n}\n'
    src += '''fn main() ? {
    l := List<List<I64>>()
    l.Push(List<I64>())
    m := Map<I64, List<I64>>()
    m.Put(1, List<I64>())
    b := Bag(Node(1), l, m, Array<mut Node&>(1, Node(2)))
    println($b)
    t := churn(100)
    w := 0 if b.head.next == null else b.head.next.v
    w2 := 0 if b.arr[0].next == null else b.arr[0].next.v
    x := 0 if l[0].Len() == 0 else l[0][0]
    y := try m.Get(1) catch default List<I64>()
    z := 0 if y.Len() == 0 else y[0]
    println($w " " $w2 " " $x " " $z " " $t)
}
'''
    open('progs/m_%s.olang' % k, 'w').write(src)
print(len(BODIES))
