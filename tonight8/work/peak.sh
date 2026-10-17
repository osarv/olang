#!/bin/bash
# peak.sh CMD... : run, print output and peak RSS (VmHWM) in KB
"$@" & pid=$!
hwm=0
while kill -0 $pid 2>/dev/null; do h=$(grep VmHWM /proc/$pid/status 2>/dev/null | awk '{print $2}'); [ -n "$h" ] && hwm=$h; sleep 0.05; done
wait $pid; echo "exit=$? peakKB=$hwm"
