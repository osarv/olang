#!/bin/bash
# scratch: sample total RSS (MB) of all processes in the measurement's session every 2s
sid=$1; out=$2
while kill -0 $sid 2>/dev/null; do
  echo "$(date +%s) $(ps -o rss= -s $sid | awk '{s+=$1} END {print int(s/1024)}')" >> $out
  sleep 2
done
