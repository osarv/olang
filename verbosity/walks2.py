import re,glob
out=[]
for f in sorted(glob.glob('*.olang')):
    if f=='msgs.olang':continue
    L=open(f).read().split('\n')
    fn=None;fnl=0
    i=0
    while i<len(L):
        s=L[i]
        mf=re.match(r'^fn (?:\([^)]*\) )?(\w+)',s)
        if mf: fn=mf.group(1);fnl=i+1
        m=re.match(r'^(\s*)(?:return |[\w.]+ :?= )?match .*\{\s*$',s)
        if m:
            ind=len(m.group(1)); j=i+1;cases=[]
            while j<len(L):
                t=L[j]
                if t.strip()=='}' and len(t)-len(t.lstrip())==ind: break
                if len(t)-len(t.lstrip())==ind+4 and t.strip().startswith('case '):
                    cases.append(j)
                j+=1
            n=len(cases)
            if n>=8:
                rec=0;total=0;one=0
                for c in cases:
                    # body: single line "=> expr" or "{ expr }" on same line, or block until next case
                    line=L[c]
                    if '=>' in line or re.search(r'\{.*\}\s*$',line):
                        one+=1
                        if re.search(r'\b'+re.escape(fn)+r'\(',line): rec+=1
                    else:
                        # multi-line block
                        k=c+1;body=[]
                        while k<j and not (len(L[k])-len(L[k].lstrip())==ind+4 and L[k].strip().startswith(('case ','nomatch'))):
                            body.append(L[k]);k+=1
                        if len(body)<=4 and any(re.search(r'\b'+re.escape(fn)+r'\(',b) for b in body): rec+=1
                out.append((f,fn,fnl,j-i+1,n,one,rec))
            i=j
        i+=1
print("file fn line matchlines cases oneliners recursivecases")
for r in sorted(out,key=lambda r:-r[3])[:45]: print(*r)
tot=sum(r[3] for r in out if r[6]>=r[4]*0.6)
print('walk-like matches (>=60% recursive cases):',sum(1 for r in out if r[6]>=r[4]*0.6),'lines',tot)
for r in out:
    if r[6]>=r[4]*0.6: print('  ',*r)
