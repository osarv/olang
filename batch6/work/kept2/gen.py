head = '''# O18c kept mode (2): a ":=" from a call that builds, kept beyond its block through: {name}
type Tok struct(text String&, kind I64) {{
    text
    kind
}}
type TokE enum {{
    Word(s String&)
    Num(n I64)
}}
type Lexer struct(n I64) {{
    n
    pos I64 = 0
}}
fn (lx mut Lexer&) next() Tok {{
    lx.pos = lx.pos + 1
    return Tok("w" $lx.pos "-abcdefghijklmnopqrstuvwxyz", lx.pos)
}}
fn (lx mut Lexer&) nextE() TokE {{
    lx.pos = lx.pos + 1
    return TokE.Word("e" $lx.pos "-abcdefghijklmnopqrstuvwxyz")
}}
fn (lx mut Lexer&) words(k I64) List<String&> {{
    l := List<String&>()
    for i in range k {{ l.Push("l" $i "-abcdefghijklmnopqrstuvwxyz") }}
    return l
}}
fn (lx mut Lexer&) toks() Array<Tok> {{
    return Tok[Tok("a" $lx.pos "-abcdefghijklmnopqrstuvwxyz", 1), Tok("b" $lx.pos "-abcdefghijklmnopqrstuvwxyz", 2)]
}}
type Bag struct() {{
    last String& = ""
    toks mut List<Tok>& = List<Tok>()
}}
fn churn() I64 {{
    t I64 = 0
    for i in range 300 {{
        s := $i $i "-" $(i * 3) "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        t = t + s.Len()
    }}
    return t
}}
fn put(b mut Bag&, s String&) {{
    b.last = s
}}
'''
shapes = {
 'matchbind': ('a match binding of an enum result', '''    for i in range 3 {
        e := lx.nextE()
        match e {
            case TokE.Word(w) { b.last = w }
            case _ { }
        }
        churn()
    }
'''),
 'asview': ('an as payload', '''    for i in range 3 {
        e := lx.nextE()
        w := e as TokE.Word
        b.last = w
        churn()
    }
'''),
 'forinelem': ('a for-in element of a built list', '''    for i in range 3 {
        for x in lx.words(2) { b.last = x }
        churn()
    }
'''),
 'forinlocal': ('a for-in element of a local built list', '''    for i in range 3 {
        ws := lx.words(2)
        for x in ws { b.last = x }
        churn()
    }
'''),
 'setatvalue': ('a SetAt of a value element holding text', '''    for i in range 3 { b.toks.Push(Tok("", 0)) }
    for i in range 3 {
        t := lx.next()
        b.toks[i] = t
        churn()
    }
'''),
 'pushvalue': ('a Push of a value holding text', '''    for i in range 3 {
        t := lx.next()
        b.toks.Push(t)
        churn()
    }
'''),
 'lambdacall': ('a lambda called where written', '''    for i in range 3 {
        t := lx.next()
        fn() { b.last = t.text }()
        churn()
    }
'''),
 'lambdacall2': ('a lambda called through a local', '''    for i in range 3 {
        t := lx.next()
        f := fn() { put(b, t.text) }
        f()
        churn()
    }
'''),
 'partfield': ('a := from a field of a call', '''    for i in range 3 {
        x := lx.next().text
        b.last = x
        churn()
    }
'''),
 'partelem': ('a := from an element of a call', '''    for i in range 3 {
        x := lx.toks()[1]
        b.last = x.text
        churn()
    }
'''),
 'partelempush': ('a := from an element of a call, pushed', '''    for i in range 3 {
        x := lx.toks()[1]
        b.toks.Push(x)
        churn()
    }
'''),
 'spawnarg': ('a task argument', '''    for i in range 3 {
        join {
            t := lx.next()
            spawn put(b, t.text)
        }
        churn()
    }
'''),
 'slicekeep': ('a slice of the text', '''    for i in range 3 {
        t := lx.next()
        b.last = t.text[0:5]
        churn()
    }
'''),
 'condkeep': ('a conditional of two call parts', '''    for i in range 3 {
        t := lx.next()
        u := lx.next()
        b.last = t.text if i == 1 else u.text
        churn()
    }
'''),
 'trydefault': ('a try default', '''    for i in range 3 {
        t := lx.next()
        b.last = try first(t) catch default t.text
        churn()
    }
'''),
}
tail = '''fn first(t Tok) String&t ? {{
    if t.kind > 1000 {{ error }}
    return t.text
}}
fn main() ? {{
    lx mut Lexer& = Lexer(0)
    b mut Bag& = Bag()
{body}    churn()
    print($b.last " ")
    for t in b.toks {{ print($t.text " ") }}
    println("")
}}
'''
for k,(desc,body) in shapes.items():
    open(k+'.olang','w').write(head.format(name=desc) + tail.format(body=body))
