# Generates Str programs (python3 held_fuzz_str_gen.py SEED COUNT; AVOID=1 leaves out the n1/n2 templates) and
# held_fuzz_runone.sh builds each with -b -s and runs it. Seed 1, 60 programs: 10 crashes, all n1/n2 or a test bug of
# mine (a Str rendering its own receiver through a generic helper, infinite recursion); AVOID=1 seed 2, 150 programs:
# 82 run correctly, 68 refused, 0 crashes, 0 internal errors.
import random, sys
seed = int(sys.argv[1]); count = int(sys.argv[2])
pre = '''type Node struct(v I64, next mut Node&, name String&) {
    v
    next
    name
}
type Ctr struct(v I64) {
    v
}
fn (c Ctr&) Call() I64 {
    s := $c.v "x"
    return s.Len()
}
type CtrR struct(v I64) {
    v
}
fn (c CtrR&) Call() I64 { return c.v }
fn apply(f fn() I64) I64 { return f() }
fn find(n Node&) Node&n ? {
    if n.v < 0 { error }
    return n
}
fn id(x <T>) T { return x }
fn bor(n Node&) Node&n { return n }
fn mkn(v I64) Node& { return Node(v, null, "m") }
fn hr(n Node&) I64 { return n.v }
fn htext(n Node&) I64 {
    s := $n.v "t" $n.name
    return s.Len()
}
fn hlr(n Node&) I64 {
    f := fn() I64 { return n.v }
    return f()
}
fn hlb(n Node&) I64 {
    return apply(fn() I64 {
        s := $n.v
        return s.Len()
    })
}
fn hcond(n Node&, k I64) I64 {
    x := n if k > 1 else n.next
    return 0 if x == null else x.v
}
fn htry(n Node&) I64 {
    x := try find(n) catch default n
    return x.v
}
fn hgen(n <T>&) I64 {
    s := $n
    return s.Len()
}
fn hrec(n Node&, d I64) I64 {
    if d <= 0 { return n.v }
    return hrec2(n, d - 1)
}
fn hrec2(n Node&, d I64) I64 {
    s := $d
    return hrec(n, d - 1) + s.Len()
}
fn hlist(n Node&) I64 {
    l := List<I64>()
    l.Push(n.v)
    return l.Len()
}
fn hsb(n Node&) I64 {
    sb := StringBuilder()
    sb.Push(n.name)
    return sb.ToString().Len()
}
fn hmatch(n Node&) I64 {
    x := match n.v {
        case 3 => n
        nomatch => n
    }
    return x.v
}
fn hdefer(n Node&) I64 {
    t I64 = 0
    {
        defer { t = n.v }
    }
    return t
}
fn hjoin(n Node&) I64 {
    x I64 = 0
    join { spawn x = hr(n) }
    return x
}
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
type Bag struct(head mut Node&, c mut Ctr&, cr mut CtrR&, name String&) {
    head
    c
    cr
    name
    k I64 = 2
    l List<I64> = List<I64>()
    m Map<String&, I64> = Map<String&, I64>()
    nodes List<mut Node&> = List<mut Node&>()
}
'''
post = '''fn main() ? {
    n := Node(3, Node(4, null, "n2"), "nm")
    b := Bag(n, Ctr(2), CtrR(5), "bagname")
    b.l.Push(4)
    b.l.Push(6)
    b.m.Put("a", 1)
    b.nodes.Push(Node(9, null, "x"))
    for i in range 3 {
        s := $b
        churn()
        println(s)
    }
}
'''
NS = ['b.head', 'b.head.next', 'b.nodes[0]', 'n0']
TS = ['b.name', '"lit"', 'b.head.name']
LS = ['b.l', 'b.nodes']
helpers = ['hr', 'htext', 'hlr', 'hlb', 'htry', 'hgen', 'hlist', 'hsb', 'hmatch', 'hdefer', 'hjoin']
def N(): return random.choice(NS)
def T(): return random.choice(TS)
def K(): return str(random.randint(0, 5))
tmpls = [
 lambda i: f'x{i} := {N()} if acc > {K()} else {N()}\n    acc += x{i}.v',
 lambda i: f'x{i} := {N()} if acc > {K()} else Node({K()}, null, "z")\n    acc += x{i}.v',
 lambda i: f'x{i} := try find({N()}) catch default {N()}\n    acc += x{i}.v',
 lambda i: f'x{i} := try find({N()}) catch default mkn({K()})\n    acc += x{i}.v',
 lambda i: f'x{i} := id({N()})\n    acc += x{i}.v',
 lambda i: f'x{i} := bor({N()})\n    acc += x{i}.v',
 lambda i: f'x{i} := match acc {{\n        case {K()} => {N()}\n        nomatch => {N()}\n    }}\n    acc += x{i}.v',
 lambda i: f's{i} := ${N()}.v "-" {T()}\n    acc += s{i}.Len()',
 lambda i: f'f{i} := fn() I64 {{ return {N()}.v }}\n    acc += f{i}()',
 lambda i: f'f{i} := fn() I64 {{\n        s := ${N()}.v\n        return s.Len()\n    }}\n    acc += f{i}()',
 lambda i: f'acc += apply(fn() I64 {{ return {N()}.v }})',
 lambda i: f'acc += b.l.Iter().Fold(0, fn(a I64, x I64) I64 {{ return a + x + {N()}.v }})',
 lambda i: f'join {{ spawn fn() {{ y := {N()}.v }} }}',
 lambda i: f'join {{ spawn fn() {{ s := ${N()}.v }} }}',
 lambda i: f'{{\n        defer {{ acc += {N()}.v }}\n    }}',
 lambda i: f'l{i} := List<I64>()\n    for z in b.l {{ l{i}.Push(z) }}\n    acc += l{i}.Len()',
 lambda i: f'acc += {random.choice(helpers)}({N()})',
 lambda i: f'acc += hcond({N()}, acc)',
 lambda i: f'acc += hrec({N()}, 3)',
 lambda i: f'p{i} := Pair({N()}.v, {K()})\n    acc += p{i}.First',
 lambda i: f'a{i} := Array<I64>({K()}, acc)\n    acc += a{i}.Len()',
 lambda i: f'c{i} := I64[z * 2 for z in b.l]\n    acc += c{i}.Len()',
 lambda i: f'g{i} fn() I64 = b.cr\n    acc += g{i}()',
 lambda i: f'g{i} fn() I64 = b.c\n    acc += g{i}()',
 lambda i: f'acc += apply(b.cr)',
 lambda i: f't{i} := {T()} if acc > {K()} else {T()}\n    acc += t{i}.Len()',
 lambda i: f'for e in b.m {{ acc += e.Value }}',
 lambda i: f'acc += $({N()}) .Len()',
 lambda i: f'n{i} := Node({K()}, {N()}, "q")\n    acc += n{i}.v',
 lambda i: f'acc += hgen({N()})',
 lambda i: f'w{i} := StringBuilder()\n    w{i}.Push({T()})\n    acc += w{i}.Len()',
]
import os
if os.environ.get('AVOID'):
    random.seed(0)
    keep = []
    for t in tmpls:
        o = t(0)
        if 'fn() I64 {\n        s :=' in o or 'spawn fn() { s :=' in o or 'I64 = b.c\n' in o: continue
        keep.append(t)
    tmpls = keep
for p in range(count):
    random.seed(seed * 100000 + p)
    k = random.randint(1, 4)
    body = ['acc I64 = 0', 'n0 := b.head']
    for i in range(k):
        body.append(random.choice(tmpls)(i))
    src = pre + 'fn (b Bag&) Str() String {\n    ' + '\n    '.join(body) + '\n    return "s" $acc\n}\n' + post
    open(f'p{seed}_{p}.olang', 'w').write(src)
