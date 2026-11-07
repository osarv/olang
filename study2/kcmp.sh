#!/bin/sh
D=/home/user/review/study2
$D/oracle/tokdump "$1" 2>/dev/null | grep -v '^error\|^ \|^$' | awk -f $D/oracle/kinds.awk > /tmp/claude-k1.$$
awk '{ lines[NR]=$0 } END { for (i=1;i<=NR;i++) { split(lines[i],a," "); split(lines[i+1],b," "); if (a[2]=="Tok.StmtEnd" && b[2]=="Tok.Catch") continue; print lines[i] } }' /tmp/claude-k1.$$ > /tmp/claude-k2.$$
$D/build/front -kinds "$1" > /tmp/claude-k3.$$ 2>/dev/null
if diff -q /tmp/claude-k2.$$ /tmp/claude-k3.$$ > /dev/null; then echo "same $1"; else echo "DIFF $1"; diff /tmp/claude-k2.$$ /tmp/claude-k3.$$ | head -6; fi
rm -f /tmp/claude-k?.$$
