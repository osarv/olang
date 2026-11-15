import subprocess
orig=open('learn.orig.olang').read()
a=orig.index("type Learner<T> struct(s mut system.System<T>&) ? LearnError {")
b=orig.index("\n}\n",a)
lines=orig[a:b].split("\n")
hdr,fields=lines[:2],lines[2:]
def build(keep):
    body="\n".join(hdr+[f for i,f in enumerate(fields) if i in keep])
    s=orig[:a]+body+orig[b:]
    open('oann/dyn/learn.olang','w').write(s)
    r=subprocess.run(['../../build/olang','build','-output','../la','repro/learnerarg.olang'],cwd='oann',capture_output=True,text=True)
    out=r.stdout+r.stderr
    if 'C2d' in out: return 'fail'
    if r.returncode==0: return 'ok'
    return 'other:'+out[:400]
for i,f in enumerate(fields): print(i,f.strip()[:60])
import sys
for i in []:
    keep=set(range(len(fields)))-{i}
    print('without',i,build(keep))
print('only 0,3:', build({0,3}))
print('only 0,3,6,7:', build({0,3,6,7}))
