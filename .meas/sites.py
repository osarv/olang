# one-off: classify index check sites in optimized IR. args: locmap-dir optimized.ll...
# prints per site: text<TAB>class  (class: loop / clone / straight)
import re, sys, subprocess, glob
locdir = sys.argv[1]
loc = {}
for f in glob.glob(locdir + '/*.ll'):
    for m in re.finditer(r'^@(\S+) = [^\n]*c"((?:[^"\\]|\\.)*)\\00"', open(f, errors='replace').read(), re.M):
        t = m.group(2)
        if t.endswith('index out of range\\0A'):
            loc[m.group(1)] = t[:-len(': index out of range\\0A')]
res = {}
def mark(site, cls):
    order = {'loop': 3, 'clone': 2, 'straight': 1}
    if order[cls] > order.get(res.get(site, 'x'), 0): res[site] = cls
for f in sys.argv[2:]:
    txt = open(f, errors='replace').read()
    loops = subprocess.run(['opt-19', '-passes=print<loops>', '-disable-output', f], capture_output=True, text=True).stderr
    # loops per function: "Loop info for function 'F':" then "Loop at depth N containing: %a<header>,%b..."
    fl = {}
    cur = None
    for line in loops.splitlines():
        m = re.match(r"Loop info for function '(.*)':", line)
        if m: cur = m.group(1); fl[cur] = []; continue
        m = re.search(r'containing: (.*)', line)
        if m and cur is not None:
            bs = [re.sub(r'<.*?>', '', b).lstrip('%') for b in m.group(1).split(',')]
            hdr = [re.sub(r'<.*?>', '', b).lstrip('%') for b in m.group(1).split(',') if '<header>' in b][0]
            fl[cur].append((set(bs), hdr))
    for fm in re.finditer(r'^define [^\n]*@("?[^"(]+"?)\(.*?\n}\n', txt, re.M | re.S):
        fname = fm.group(1).strip('"')
        body = fm.group(0)
        blocks = {}
        name = None
        for line in body.splitlines()[1:]:
            m = re.match(r'^([-\w.$"]+):', line)
            if m: name = m.group(1).strip('"'); blocks[name] = []; continue
            if name is None:
                name = '0' if False else '__entry'; blocks[name] = []
            blocks[name].append(line)
        # entry block unnamed: number of args.. map '__entry' as not in loop
        preds = {}
        for b, ls in blocks.items():
            for l in ls:
                if l.strip().startswith('br ') or l.strip().startswith('switch'):
                    for t in re.findall(r'label %([-\w.$"]+)', l): preds.setdefault(t.strip('"'), []).append(b)
        lps = fl.get(fname, [])
        def loopof(b):
            for bs, h in lps:
                if b in bs: return bs, h
            return None
        def isclone(bs, h):
            for b in bs:
                for l in blocks.get(b, []):
                    if ('label %' + h) in l and 'loop_constrainer.loop.clone' in l: return True
            return False
        for b, ls in blocks.items():
            for l in ls:
                m = re.search(r'call void @__olang_check_failed\(ptr (?:noundef )?(?:nonnull )?@(\S+?)\)', l)
                if not m or m.group(1) not in loc: continue
                site = loc[m.group(1)]
                cls = 'straight'
                for p in preds.get(b, []) + [b]:
                    lp = loopof(p)
                    if lp: cls = 'clone' if isclone(*lp) else 'loop'
                    if cls == 'loop': break
                mark(site, cls)
for s, c in sorted(res.items()): print(s + '\t' + c)
