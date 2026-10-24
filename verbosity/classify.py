import sys,re,glob
rows=[];T=[0]*6
for f in sorted(glob.glob('*.olang')+glob.glob('tools/*.olang')):
    code=com=blank=test=0
    intest=False;depth=0
    for l in open(f,errors='replace'):
        s=l.strip()
        if not s: blank+=1;continue
        if s.startswith('#'): com+=1;continue
        if not intest and re.match(r'test\s+"',s):
            intest=True;depth=0
        if intest:
            test+=1
            depth+=s.count('{')-s.count('}')
            if depth<=0 and '}' in s or (depth<=0 and '{' in s and s.count('{')==s.count('}')): intest=False
            continue
        code+=1
    tot=code+com+blank+test
    rows.append((f,tot,code,com,blank,test))
    for i,v in enumerate((tot,code,com,blank,test)):T[i]+=v
print("file total code comment blank test")
for r in sorted(rows,key=lambda r:-r[1]): print(*r)
print("TOTAL",*T[:5])
