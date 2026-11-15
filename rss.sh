#!/bin/sh
# run "$@", kill at 3 GB RSS; print rc and peak
"$@" > rss.out 2>&1 & pid=$!; peak=0
while kill -0 $pid 2>/dev/null; do r=$(ps -o rss= -p $pid 2>/dev/null); [ -n "$r" ] && [ $r -gt $peak ] && peak=$r; [ "$peak" -gt 3000000 ] && kill -9 $pid; sleep 0.2; done
wait $pid; echo "rc=$? peakMB=$((peak/1024)) : $*"
