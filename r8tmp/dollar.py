import re,sys,glob
pat=re.compile(r'(?:(?<=\()|(?<=, )|(?<== )|(?<=return ))\$([A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)*)(?=\)|,|\s*$)')
out=[]
for f in sorted(glob.glob('compiler/*.olang')):
    for i,line in enumerate(open(f).read().split('\n')):
        s=line.lstrip()
        if s.startswith('#'): continue
        # skip lines in comments part
        code=line.split(' # ')[0] if '"' not in line else line
        for m in pat.finditer(code):
            # skip if inside a string literal: count quotes before
            if code[:m.start()].count('"')%2==1: continue
            out.append((f,i+1,m.start(),m.group(0)))
for o in out: print("%s:%d:%d:%s"%o)
