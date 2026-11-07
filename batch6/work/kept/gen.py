import os
head = '''# O18c kept mode: a ":=" from a call that builds, kept beyond its block through: {name}
type Tok struct(text String&, kind I64) {{
    text
    kind
}}
type Lexer struct(n I64) {{
    n
    pos I64 = 0
}}
fn (lx mut Lexer&) next() Tok {{
    lx.pos = lx.pos + 1
    return Tok("w" $lx.pos "-abcdefghijklmnopqrstuvwxyz", lx.pos)
}}
type Cell struct() {{
    s String& = ""
}}
type Bag struct() {{
    cells mut List<mut Cell&>& = List<mut Cell&>()
    last String& = ""
    f fn() String = fn() String {{ return "" }}
}}
fn (b mut Bag&) cell(i I64) mut Cell&b {{
    return b.cells[i]
}}
fn cellOf(b mut Bag&, i I64) mut Cell&b {{
    return b.cells[i]
}}
fn keep(b mut Bag&, s String&) {{
    b.last = s
}}
fn churn() I64 {{
    t I64 = 0
    for i in range 300 {{
        s := $i $i "-" $(i * 3) "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        t = t + s.Len()
    }}
    return t
}}
'''
shapes = {
 'resultstore': ('a store through a borrowed result', '''    for i in range 3 {
        t := lx.next()
        b.cell(i).s = t.text
        churn()
    }
'''),
 'resultstore2': ('a store through a borrowed result of a plain function', '''    for i in range 3 {
        t := lx.next()
        cellOf(b, i).s = t.text
        churn()
    }
'''),
 'lambda': ('a lambda kept in the bag', '''    for i in range 3 {
        t := lx.next()
        if i == 1 { b.f = fn() String { return t.text } }
        churn()
    }
'''),
 'task': ('a task storing it', '''    for i in range 3 {
        join {
            t := lx.next()
            spawn keep(b, t.text)
        }
        churn()
    }
'''),
 'writeback': ('an E31b write-back through At/SetAt', '''    for i in range 3 {
        t := lx.next()
        b.cells[i].s = t.text
        churn()
    }
'''),
 'defer': ('deferred code', '''    for i in range 3 {
        t := lx.next()
        defer { b.last = t.text }
        churn()
    }
'''),
 'parallel': ('a parallel assignment', '''    for i in range 3 {
        t := lx.next()
        k I64 = 0
        b.last, k = t.text, i
        churn()
    }
'''),
 'parallelswap': ('a parallel assignment through a local', '''    for i in range 3 {
        t := lx.next()
        u Tok = Tok("", 0)
        k I64 = 0
        u, k = t, i
        b.last = u.text
        churn()
    }
'''),
 'match': ('a match binding', '''    for i in range 3 {
        t := lx.next()
        match t.kind {
            case 2 { b.last = t.text }
            case _ { }
        }
        churn()
    }
'''),
 'cond': ('a conditional', '''    for i in range 3 {
        t := lx.next()
        b.last = t.text if i == 1 else b.last
        churn()
    }
'''),
 'nested': ('a nested block assignment', '''    for i in range 3 {
        t := lx.next()
        if i == 1 {
            if true { b.last = t.text }
        }
        churn()
    }
'''),
 'push': ('a push into a bag list', '''    for i in range 3 {
        t := lx.next()
        b.cells.Push(Cell())
        c := b.cells[b.cells.Len() - 1]
        c.s = t.text
        churn()
    }
'''),
 'viacopy': ('a copy into an outer value local', '''    keepTok Tok = Tok("", 0)
    for i in range 3 {
        t := lx.next()
        if i == 1 { keepTok = t }
        churn()
    }
    b.last = keepTok.text
'''),
 'viaref': ('a reference local of the block pointing outward', '''    for i in range 3 {
        t := lx.next()
        r mut Bag& = b
        r.last = t.text
        churn()
    }
'''),
 'callkeep': ('a call that keeps it', '''    for i in range 3 {
        t := lx.next()
        keep(b, t.text)
        churn()
    }
'''),
 'callkeepnested': ('a call that keeps it, nested in another call', '''    for i in range 3 {
        t := lx.next()
        churn2(keep2(b, t.text))
        churn()
    }
'''),
}
tail = '''fn main() ? {{
    lx mut Lexer& = Lexer(0)
    b mut Bag& = Bag()
    for i in range 3 {{ b.cells.Push(Cell()) }}
{body}    churn()
    print($b.last " ")
    for c in b.cells {{ print($c.s " ") }}
    println($b.f())
}}
'''
extra = '''fn keep2(b mut Bag&, s String&) I64 {
    b.last = s
    return 1
}
fn churn2(n I64) {
}
'''
for k,(desc,body) in shapes.items():
    src = head.format(name=desc) + extra + tail.format(body=body)
    open(k+'.olang','w').write(src)
print(' '.join(shapes))
