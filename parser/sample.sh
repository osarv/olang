#!/bin/bash
cd /home/user/review/parser
/home/user/wt/review/build/out -c "$1" > /dev/null 2>&1 &
P=$!
for t in 1 2 3 4 5 6; do
  sleep 2
  gdb -batch -p $P -ex "bt 8" 2>/dev/null | grep -E "^#[0-7] " | sed -E 's/^#[0-9]+ +(0x[0-9a-f]+ in )?([A-Za-z_0-9]+).*/\2/' | tr '\n' ' '
  echo
done
kill $P 2>/dev/null
