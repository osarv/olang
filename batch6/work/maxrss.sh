#!/bin/bash
# maxrss.sh CMD...: runs CMD and prints its peak resident memory (VmHWM) in kB
"$@" &
pid=$!
peak=0
while kill -0 $pid 2>/dev/null; do
  h=$(grep VmHWM /proc/$pid/status 2>/dev/null | awk '{print $2}')
  [ -n "$h" ] && [ "$h" -gt "$peak" ] && peak=$h
  sleep 0.02
done
wait $pid; rc=$?
echo "peak ${peak} kB, exit $rc"
