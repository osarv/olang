import re,sys
# args: list file of sites "file:line:col:text"; strips the '$' at each
sites={}
for l in open(sys.argv[1]):
    f,ln,col,t=l.rstrip('\n').split(':',3)
    sites.setdefault(f,[]).append((int(ln),int(col),t))
for f,ss in sites.items():
    lines=open(f).read().split('\n')
    for ln,col,t in sorted(ss,key=lambda x:(x[0],-x[1])):
        L=lines[ln-1]
        assert L[col:col+len(t)]==t,(f,ln,col,t,L)
        lines[ln-1]=L[:col]+L[col+1:]
    open(f,'w').write('\n'.join(lines))
