#!/bin/bash
# build, sanitize, evaluate a fixture: name and small N
f=$1; n=$2
./ol build -memory $f.olang 2>&1 | grep -v "^built\|returns hand"
python3 /tmp/claude-0/peak.py ./build/$f
./ol build -sanitize -output build/${f}s $f.olang >/dev/null 2>&1 && ./build/${f}s > /dev/null; echo "san rc $?"
./ol build -define N=$n -output build/${f}n $f.olang > /dev/null 2>&1; a=$(./build/${f}n)
b=$(OLANG_EVALUATE=1 ./ol -define N=$n $f.olang 2>&1); echo "eval: $b"; [ "$a" == "$b" ] && echo agree || echo "DISAGREE built: $a"
