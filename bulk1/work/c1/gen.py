import sys
n=int(sys.argv[1])
decls="\n".join(f"    a{i} String&h = \"\"" for i in range(1,n+1))
chain="\n".join(f"        a{i} = a{i-1}" for i in range(n,1,-1))
src=f'''import "std/io"

type Holder struct() {{
    t String& = ""
}}

fn (h mut Holder&) set(i I64) {{ h.t = $"text number " $i " padded out to many bytes ........................................" }}

fn churn() I64 {{
    t I64 = 0
    for i in range 300 {{
        a := Array<I64>(64, -7)
        t += a[3]
        s := $i $i $i "-" $(i * 7) " some more text to fill the chunk ......"
        t += s.Len()
    }}
    return t
}}

# the text's view handed down a chain of locals written last to first, one step a turn of the loop - no let-go in it
fn step(h mut Holder&, i I64) {{
{decls}
    for k in range {n + 5} {{
{chain}
        a1 = h.t
    }}
    h.set(i)            # lets go of the text the chain's last local holds
    churn()
    io.Println(a{n})!
}}

fn main() {{
    h := Holder()
    h.set(-1)
    for i in range 5 {{ step(h, i) }}
}}
'''
open(f'c{n}.olang','w').write(src)
