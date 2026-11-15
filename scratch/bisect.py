import re,subprocess,sys
orig=open('learn.orig.olang').read()
# methods/functions whose header ends with ') {' : no result
heads=[m for m in re.finditer(r'^fn [^\n]*\) \{\n', orig, re.M)]
def body_range(m):
    i=m.end()
    j=orig.index("\n}\n",i)
    return (i,j+1)
cands=[(m.group(0).strip(),body_range(m)) for m in heads]
def build(empty):
    s=orig
    for idx in sorted(empty, key=lambda k:-cands[k][1][0]):
        a,b=cands[idx][1]
        s=s[:a]+s[b:]
    open('oann/dyn/learn.olang','w').write(s)
    r=subprocess.run(['../../build/olang','build','-output','../la','repro/learnerarg.olang'],cwd='oann',capture_output=True,text=True)
    out=r.stdout+r.stderr
    if 'C2d' in out: return 'fail'
    if r.returncode==0: return 'ok'
    return 'other:'+out[:300]
print(len(cands))
for i,c in enumerate(cands): print(i,c[0])
print('all empty:',build(range(len(cands))))
