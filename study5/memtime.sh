#!/bin/bash
# memtime.sh CMD... : runs CMD, prints wall seconds and peak RSS (KB) to stderr
python3 - "$@" <<'PY'
import sys, subprocess, time, resource
t=time.time()
p=subprocess.run(sys.argv[1:])
el=time.time()-t
ru=resource.getrusage(resource.RUSAGE_CHILDREN)
sys.stderr.write("[memtime] %.2fs maxrss=%dKB exit=%d\n"%(el, ru.ru_maxrss, p.returncode))
sys.exit(p.returncode)
PY
