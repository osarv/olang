#!/bin/bash
# peak.sh CMD... : run and print the peak RSS (VmHWM) in KB
"$@" > /dev/null 2>&1 &
pid=$!
peak=0
while kill -0 $pid 2>/dev/null; do
  v=$(grep VmHWM /proc/$pid/status 2>/dev/null | awk '{print $2}')
  [ -n "$v" ] && peak=$v
  sleep 0.05
done
wait $pid
echo "status $? peak ${peak} KB"
