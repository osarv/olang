import re,glob
tot=0;ncase=0;allm=0;nm=0
for f in sorted(glob.glob('*.olang')):
    if f=='msgs.olang':continue
    L=open(f).read().split('\n')
    fn=None;i=0
    while i<len(L):
        s=L[i]
        mf=re.match(r'^fn (?:\([^)]*\) )?(\w+)',s)
        if mf: fn=mf.group(1)
        m=re.match(r'^(\s*)(?:return |[\w.]+ :?= )?match .*\{\s*$',s)
        j=i
        if m and fn:
            ind=len(m.group(1)); j=i+1;starts=[]
            while j<len(L):
                t=L[j]
                if t.strip()=='}' and len(t)-len(t.lstrip())==ind: break
                if len(t)-len(t.lstrip())==ind+4 and t.strip().startswith(('case ','nomatch')): starts.append(j)
                j+=1
            if len(starts)>=6 and re.search(r'case (typed|ast)\.(Expr|Stmt)\.',L[starts[0]]):
                nm+=1; allm+=j-i+1
                st=starts+[j]
                for a,b in zip(st,st[1:]):
                    body=L[a:b]
                    txt=' '.join(x.strip() for x in body)
                    head,_,rest=txt.partition('{') if '=>' not in txt.split('{')[0] else txt.partition('=>')
                    calls=len(re.findall(r'\b'+re.escape(fn)+r'\(',rest))
                    other=re.findall(r'\b(if|return|match|:=|\.Push|\.Put|break|continue)\b|[^=!<>]=[^=>]',rest)
                    if calls>=1 and not other and body[0].strip().startswith('case'):
                        tot+=len(body);ncase+=1
        i=j+1
print('walker matches (typed/ast Expr/Stmt, >=6 cases):',nm,'lines',allm)
print('pure-recursion cases:',ncase,'lines',tot)
