#!/bin/bash
# mem.sh PROG N... - build PROG.olang with -D N=n and print its first output line and peak RSS
p=$1; shift
for n in "$@"; do
  /home/user/wt/s3c/build/out -b -D N=$n $p.olang > /tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/mem.build 2>&1 || { head -5 /tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/mem.build; exit 1; }
  python3 -c "
import resource,subprocess,sys
r=subprocess.run(['./build/$p'],capture_output=True)
o=(r.stdout.decode().splitlines() or [''])[0][:70]
print('$p', $n, o, resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss//1024,'MB')"
done
