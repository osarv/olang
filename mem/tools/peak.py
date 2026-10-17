#!/usr/bin/env python3
# peak.py OUT -- CMD...: runs CMD, polls the direct child's /proc status every 50ms,
# writes VmHWM (peak RSS) and VmPeak (peak virtual) of the compiler process itself (not clang children).
import subprocess, sys, time, os
out = sys.argv[1]; cmd = sys.argv[3:]
LIMIT = int(os.environ.get("MAXRSS_MB", "6500")) * 1024
killed = False
t0 = time.time()
p = subprocess.Popen(cmd, stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)
hwm = peak = 0; last = {}
while p.poll() is None:
    try:
        with open(f"/proc/{p.pid}/status") as f:
            for l in f:
                if l.startswith(("VmHWM", "VmPeak", "VmRSS", "VmSize")):
                    k, v = l.split(":"); last[k] = int(v.split()[0])
        hwm = max(hwm, last.get("VmHWM", 0)); peak = max(peak, last.get("VmPeak", 0))
        if last.get("VmRSS", 0) > LIMIT and not killed: p.kill(); killed = True
    except Exception: pass
    time.sleep(0.05)
err = p.stderr.read().decode(errors="replace")
dt = time.time() - t0
line = f"{' '.join(cmd)}\trc={p.returncode}{" KILLED-AT-LIMIT" if killed else ""}\tpeakRSS_MB={hwm/1024:.0f}\tpeakVM_MB={peak/1024:.0f}\tsec={dt:.1f}"
print(line)
with open(out, "a") as f: f.write(line + "\n")
if p.returncode: sys.stderr.write(err[-2000:])
