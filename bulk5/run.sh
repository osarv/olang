#!/bin/bash
# usage: run.sh FILE [args]  - runs a program under the switches: built, -sanitize, interpret; and default path built
f=$(realpath $1)
O=/home/user/wt/review5/build/olang
P=/home/user/wt/review5/build/params
cd /tmp/r5
echo "== switches build"; OLANG_STD=$P/std OLANG_PARAMS=new OLANG_SCOPES=infer $O $f 2>&1 | head -${N:-12}
echo "== switches -sanitize"; OLANG_STD=$P/std OLANG_PARAMS=new OLANG_SCOPES=infer $O -sanitize $f 2>&1 | head -${N:-12}
echo "== switches interpret"; OLANG_STD=$P/std OLANG_PARAMS=new OLANG_SCOPES=infer $O interpret $f 2>&1 | head -${N:-12}
if [ -n "$DEF" ]; then echo "== default build"; $O $f 2>&1 | head -${N:-12}; fi
