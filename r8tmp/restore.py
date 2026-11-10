import re,subprocess,sys
log=open(sys.argv[1]).read()
hits={}
for m in re.finditer(r'^(compiler/[a-z_]+\.olang):(\d+):\d+: error',log,re.M):
    hits.setdefault(m.group(1),set()).add(int(m.group(2)))
n=0
for f,ls in hits.items():
    orig=subprocess.run(['git','show','HEAD:'+f],capture_output=True,text=True).stdout.split('\n')
    cur=open(f).read().split('\n')
    for l in ls:
        if cur[l-1]!=orig[l-1]:
            cur[l-1]=orig[l-1]; n+=1
    open(f,'w').write('\n'.join(cur))
print("restored",n)
