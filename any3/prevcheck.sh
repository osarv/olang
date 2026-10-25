#!/bin/bash
# runs every second-review reproducer (prev/) with the compiler and compares with its f29a774 output (../any2/repro)
O=${1:?compiler}
cd /home/user/review/any3
for f in prev/*.olang; do
  n=$(basename $f .olang)
  ./run.sh -d prev $n $O > /dev/null 2>&1
  if [ -f ../any2/repro/$n.out ]; then
    if cmp -s prev/$n.out ../any2/repro/$n.out; then echo "SAME $n"; else echo "DIFF $n"; fi
  else echo "NEW  $n"; fi
done
