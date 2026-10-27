#!/bin/bash
# scratch: every 2 s, the session's total RSS and its 6 largest processes
SID=$1; out=$2
while kill -0 $SID 2>/dev/null; do
  { echo "T $(date +%s) $(ps -o rss= -s $SID | awk '{s+=$1} END {print int(s/1024)}')"; ps -o rss=,args= -s $SID --sort=-rss | head -6 | awk '{printf "  %d %s %s %s %s\n", $1/1024, $2, $3, $4, $5}'; } >> $out
  sleep 2
done
