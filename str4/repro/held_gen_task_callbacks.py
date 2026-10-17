import os, sys
sys.path.insert(0, '../gen')
src = open('../gen/gen_deps.py').read()
# reuse the helper table
ns = {}
exec(src.split("PRE = '''")[0].replace('import sys, os, itertools', 'import sys, os'), ns)
CBS, HELPERS = ns['CBS'], ns['HELPERS']
PRE = '''type Node struct(v I64) {
    v
    next mut Node& = null
}
fn rdr(x mut Node&) { t := x.v }
fn bld(x mut Node&) { x.next = Node(x.v + 100) }
fn nv(x Node&) I64 { return 0 if x.next == null else x.next.v }
'''
os.makedirs('progs', exist_ok=True)
n = 0
for hname, htext in HELPERS.items():
    if hname in ('spawn',): continue
    inners = ['build', 'nbuild', 'none'] if 'INNER' in htext else ['-']
    for inner in inners:
        for outer in ['none', 'build']:
            s = PRE + htext.replace('INNER', CBS.get(inner, '')) + '\n'
            s += 'fn cc(n mut Node&) {\n    for i in range 40 { H(' + CBS[outer] + ', n, 7) }\n}\n'
            s += '''fn main() ? {
    total I64 = 0
    for r in range 200 {
        a := Node(1)
        b := Node(2)
        c := Node(3)
        d := Node(4)
        join {
            spawn cc(a)
            spawn cc(b)
            spawn cc(c)
            spawn cc(d)
        }
        total += nv(a) + nv(b) + nv(c) + nv(d)
    }
    println($total)
}
'''
            open('progs/t_%s_%s_%s.olang' % (hname, inner, outer), 'w').write(s)
            n += 1
print(n)
