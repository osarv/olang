import re,glob,sys
files=[f for f in glob.glob('*.olang') if f!='msgs.olang']
stats={'total':0,'one':0,'one_lines':0,'two':0,'val':0,'nm_empty':0,'nm_ret':0}
ex=[]
under=0;pat=0;patlines=0
for f in files:
    L=open(f).read().split('\n')
    i=0
    while i<len(L):
        m=re.match(r'^(\s*)(?:return |[a-z][\w.]* :?= )?match .*\{\s*$',L[i])
        if m:
            ind=len(m.group(1)); j=i+1; ncase=0;nm=None
            while j<len(L):
                s=L[j]
                if s.strip()=='}' and len(s)-len(s.lstrip())==ind: break
                if len(s)-len(s.lstrip())==ind+4:
                    if re.match(r'\s*case ',s): ncase+=1
                    if re.match(r'\s*nomatch',s): nm=s.strip()
                j+=1
            n=j-i+1
            stats['total']+=1
            if m.group(0).strip().startswith(('return','x','y')) or '=' in L[i].split('match')[0]: stats['val']+=1
            if ncase==1 and nm is not None:
                stats['one']+=1;stats['one_lines']+=n
                if nm.replace(' ','')=='nomatch{}': stats['nm_empty']+=1
                if len(ex)<400: ex.append((f,i+1,n))
            if ncase==2: stats['two']+=1
            i=j
        i+=1
print(stats)
import json
json.dump(ex,open('/home/user/review/verbosity/onecase.json','w'))
for f in files:
    for l in open(f):
        m=re.match(r'\s*case ([\w.]+)\((.*)\)\s*(if .*)?\{',l)
        if m:
            pat+=1
            args=[a.strip() for a in m.group(2).split(',')]
            under+=sum(1 for a in args if a=='_')
print('case patterns with args',pat,'underscore args',under)
