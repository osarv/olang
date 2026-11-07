#!/bin/sh
# cmp.sh FILE - diffs our scanner's token stream against the C tokenizer's (LINE TEXT, ';' for a statement end);
# a statement end the C tokenizer puts before 'catch' is dropped (ours never emits one there; the C parser skips it)
f=$1
D=/home/user/review/study2
$D/oracle/tokdump "$f" 2>/dev/null | awk '{ if ($1==53) print $2" ;"; else print substr($0, length($1)+2) }' > /tmp/claude-study2-c.$$
# drop ';' lines immediately followed by a 'catch' line
awk '{ lines[NR]=$0 } END { for (i=1;i<=NR;i++) { split(lines[i],a," "); split(lines[i+1],b," "); if (a[2]==";" && b[2]=="catch") continue; print lines[i] } }' /tmp/claude-study2-c.$$ > /tmp/claude-study2-c2.$$
$D/build/front -tokens "$f" > /tmp/claude-study2-o.$$ 2>/tmp/claude-study2-e.$$
if diff -q /tmp/claude-study2-c2.$$ /tmp/claude-study2-o.$$ >/dev/null; then echo "same $(wc -l < /tmp/claude-study2-o.$$) $f"; else echo "DIFF $f"; diff /tmp/claude-study2-c2.$$ /tmp/claude-study2-o.$$ | head -${2:-10}; fi
cat /tmp/claude-study2-e.$$ | head -5
rm -f /tmp/claude-study2-*.$$
