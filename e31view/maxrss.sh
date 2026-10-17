#!/bin/bash
# maxrss.sh CMD... - runs CMD, prints its peak resident memory (VmHWM) in KB
"$@" > /tmp/claude-0/maxrss.out 2>&1 &
pid=$!
peak=0
while kill -0 $pid 2>/dev/null; do
  v=$(grep VmHWM /proc/$pid/status 2>/dev/null | awk '{print $2}')
  [ -n "$v" ] && [ "$v" -gt "$peak" ] && peak=$v
  sleep 0.02
done
wait $pid; st=$?
echo "exit $st peak ${peak} KB: $(head -c 200 /tmp/claude-0/maxrss.out)"
