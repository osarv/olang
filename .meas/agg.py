import re, sys, collections
C=sys.argv[1]
def norm(p):
    p=p.replace('/cnt/w/','/bench/')
    if '/' not in p.split(':')[0]: p='/bench/'+p
    m=re.search(r'/(std|tests|compiler|bench|checks)/(.*)$', p)
    return m.group(1)+'/'+m.group(2) if m else None
rank={'loop':3,'clone':2,'straight':1}
def load(f, synt=False):
    d={}
    for line in open(f):
        s,c=line.rstrip('\n').split('\t'); s=norm(s)
        if not s: continue
        if synt: d[s]= d.get(s,False) or c=='loop'
        elif rank[c]>rank.get(d.get(s),0): d[s]=c
    return d
sy=load(C+'/sites.txt',True); A=load(C+'/a.txt'); H=load(C+'/h.txt')
tab=collections.defaultdict(collections.Counter); ex=collections.defaultdict(list)
for s,inl in sy.items():
    g=s.split('/')[0]
    a=A.get(s); h=H.get(s)
    if a is None: k='away'
    elif a=='loop' and h!='loop': k='hoisted'
    elif h=='loop' or (h is None and a=='loop'): k='loop'
    else: k='straight'
    tab[g][k]+=1; tab[g]['total']+=1; tab[g]['synloop']+=inl
    if k=='loop': ex[g].append(s)
for g in ['std','tests','compiler','bench']:
    t=tab[g]; print(g, t['total'], t['synloop'], t['away'], t['hoisted'], t['loop'], t['straight'])
import random; random.seed(1)
for g in ['std','compiler','bench']:
    for s in random.sample(ex[g], min(6,len(ex[g]))): print('EX',s)
