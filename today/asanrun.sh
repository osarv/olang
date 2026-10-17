#!/bin/bash
# runs the ASan/UBSan compiler over every test program, reporting sanitizer findings
A=/home/user/review/today/asan/build/out
export ASAN_OPTIONS=detect_leaks=0:abort_on_error=0 UBSAN_OPTIONS=print_stacktrace=1
for d in constgen privacy small native pool; do
  cd /home/user/review/today/$d
  for f in [0-9]*.olang; do
    case $f in 02.olang|02b.olang|02c.olang|01.olang) [ $d = constgen ] && continue;; esac
    out=$(timeout 120 nice -n 10 $A -b $f 2>&1)
    if echo "$out" | grep -q "AddressSanitizer\|runtime error:\|LeakSanitizer"; then
      echo "=== $d/$f"; echo "$out" | grep -A12 "AddressSanitizer\|runtime error:" | head -30
    fi
  done
done
echo done
