#!/bin/bash
# asanloop.sh SRC FILE...: build SRC (a copy of bootstrap/) with ASan into memchk/build/asan, -c each FILE, print the first report's top frames
src=$1; shift; cd $src && nice gcc -O1 -g -w -fsanitize=address -fno-omit-frame-pointer *.c -o /home/user/wt/memchk/build/asan -lm -lffi -ldl -lpthread || exit 1
cd /home/user/wt/memchk
for f in "$@"; do
  ASAN_OPTIONS=detect_leaks=0:handle_segv=0 nice -n 19 build/asan -c $f > /tmp/claude-0/asan.log 2>&1
  if grep -q "ERROR: AddressSanitizer: " /tmp/claude-0/asan.log; then echo "ASAN $f"; grep -m1 "ERROR: Addr" /tmp/claude-0/asan.log; grep -A4 "^READ\|^WRITE" /tmp/claude-0/asan.log | head -5; grep -A6 "freed by" /tmp/claude-0/asan.log | sed -n '3,7p'; exit 2; else echo "clean $f"; fi
done
