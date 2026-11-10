#!/bin/bash
# run.sh FILE: plain build, sanitizer build (with counts of reclaims/frees), interpret
f=$(realpath $1); b=/tmp/claude-0/$(basename $f .olang)
cd /home/user/wt/merge
echo "== build"; build/olang $f; echo "status $?"
echo "== -debug -sanitize"; build/olang build -debug -sanitize -output ${b}s $f >/dev/null && ${b}s; echo "status $?"
gdb -batch -ex "dprintf __olang_gen_reclaim,\"@R\\n\"" -ex "dprintf __olang_gen_free,\"@F\\n\"" -ex "dprintf __olang_gen_buffree,\"@B\\n\"" -ex run ${b}s 2>&1 | grep "^@" | sort | uniq -c | tr "\n" " "; echo
echo "== interpret"; build/olang interpret $f; echo "status $?"
