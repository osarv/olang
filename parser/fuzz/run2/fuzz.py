import random, subprocess, sys, os, hashlib
random.seed(int(sys.argv[1]))
n = int(sys.argv[2])
srcs = sys.argv[3:]
os.chdir('/home/user/review/parser/fuzz/run2')
COMP = '/home/user/wt/review/build/out'
found = {}
toks = ['{', '}', '(', ')', '[', ']', '<', '>', '<<', '>>', '&', ',', '.', ':=', '=', '=>', 'if', 'else', 'for', 'in',
        'match', 'case', 'nomatch', 'try', 'catch', 'default', 'fn', 'type', 'struct', 'enum', 'error', 'mut', '?',
        '"', "'", '##', '#', '\n', '$', 'not', 'is', 'as', 'range', 'return', 'defer', 'spawn', 'join', 'x', '1', '1.5',
        '0x', '_', 'test', 'import', 'extern', '@', '%', '!', '|', 'and']
for it in range(n):
    src = open(random.choice(srcs)).read()
    kind = random.randrange(1, 5)
    if kind == 0:
        cut = random.randrange(len(src)); src = src[:cut]
    elif kind == 1:
        for _ in range(random.randrange(1, 4)):
            p = random.randrange(len(src)); src = src[:p] + random.choice(toks) + src[p:]
    elif kind == 2:
        for _ in range(random.randrange(1, 4)):
            p = random.randrange(len(src)); q = min(len(src), p + random.randrange(1, 8)); src = src[:p] + src[q:]
    elif kind == 3:
        lines = src.split('\n'); i = random.randrange(len(lines)); j = random.randrange(len(lines))
        lines.insert(j, lines[i]); src = '\n'.join(lines)
    else:
        lines = src.split('\n'); i = random.randrange(len(lines)); lines[i] = lines[i] + ' ' + random.choice(toks) + ' ' + random.choice(toks); src = '\n'.join(lines)
    fn = 'm%d.olang' % (it % 50)
    open(fn, 'w').write(src)
    try:
        r = subprocess.run([COMP, '-c', fn], capture_output=True, timeout=20)
        out = (r.stdout + r.stderr).decode('latin1')
        bad = None
        if r.returncode not in (0, 1): bad = 'signal/exit %d' % r.returncode
        elif 'bug found' in out: bad = 'bug found'
        elif 'error: ' not in out and r.returncode == 1 and 'skipping' not in out: bad = 'exit1 without error'
    except subprocess.TimeoutExpired:
        bad = 'timeout'
    if bad:
        h = hashlib.md5(src.encode()).hexdigest()[:8]
        keep = 'crash_%s_%s.olang' % (bad.replace(' ', '_').replace('/', '_'), h)
        open(keep, 'w').write(src)
        found.setdefault(bad, []).append(keep)
for k, v in found.items(): print(k, len(v), v[:5])
