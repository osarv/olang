#!/bin/bash
# asanm.sh FILE...: rebuild /tmp/claude-0/m0 with ASan into /home/user/wt/mem/build/asan, -c (or "-t FILE") each, stop at the first report
cd /tmp/claude-0/m0 && nice gcc -O1 -g -w -fsanitize=address -fno-omit-frame-pointer *.c -o /home/user/wt/mem/build/asan -lm -lffi -ldl -lpthread || exit 1
cd /home/user/wt/mem
for f in "$@"; do
  ASAN_OPTIONS=detect_leaks=0:handle_segv=0 OLANG_NOFORK=1 nice -n 19 build/asan ${MODE:--c} $f > /tmp/claude-0/asan2.log 2>&1
  if grep -q "ERROR: AddressSanitizer: " /tmp/claude-0/asan2.log; then echo "ASAN $f"; grep -m1 "ERROR: Addr" /tmp/claude-0/asan2.log; grep -A3 "^READ\|^WRITE" /tmp/claude-0/asan2.log | head -4; grep -A6 "freed by" /tmp/claude-0/asan2.log | sed -n '3,6p'; exit 2; else echo "clean $f $(grep -c 'error' /tmp/claude-0/asan2.log) errlines"; fi
done
