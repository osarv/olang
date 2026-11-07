import re,glob
res=[]
for f in sorted(glob.glob('*.olang')):
    if f=='msgs.olang':continue
    L=open(f).read().split('\n')
    i=0
    while i<len(L):
        m=re.match(r'^(\s*)(?:return |[\w.]+ :?= )?match .*\{\s*$',L[i])
        if m:
            ind=len(m.group(1)); j=i+1; cases=[]; 
            while j<len(L):
                s=L[j]
                if s.strip()=='}' and len(s)-len(s.lstrip())==ind: break
                if len(s)-len(s.lstrip())==ind+4 and s.strip().startswith('case '): cases.append(s.strip())
                j+=1
            kinds=set(re.match(r'case ([A-Za-z.]+?)\.[A-Z]\w*\(',c).group(1) for c in cases if re.match(r'case ([A-Za-z.]+?)\.[A-Z]\w*\(',c))
            # count distinct case ctor names
            names=[re.match(r'case ((?:[\w]+\.)*[A-Z]\w*)',c).group(1) for c in cases if re.match(r'case ((?:[\w]+\.)*[A-Z]\w*)',c)]
            if len(names)>=8: res.append((f,i+1,j-i+1,len(names),sorted(kinds)[:1]))
            i=j
        i+=1
tot=sum(r[2] for r in res)
print(len(res),tot)
import collections
by=collections.defaultdict(lambda:[0,0])
for r in res:
    k=r[4][0] if r[4] else '?'
    by[k][0]+=1;by[k][1]+=r[2]
for k,v in sorted(by.items(),key=lambda x:-x[1][1]):print(k,v)
for r in sorted(res,key=lambda r:-r[2])[:12]:print(r)
