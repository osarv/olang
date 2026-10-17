#!/bin/bash
# run a binary, report its peak RSS (VmHWM) in KB
"$@" > /tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/rss_out.txt 2>&1 &
pid=$!; peak=0
while kill -0 $pid 2>/dev/null; do h=$(awk '/VmHWM/{print $2}' /proc/$pid/status 2>/dev/null); [ -n "$h" ] && peak=$h; sleep 0.05; done
wait $pid; echo "status $? peak ${peak}KB out: $(cat /tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/rss_out.txt)"
