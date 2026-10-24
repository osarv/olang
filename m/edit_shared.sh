#!/bin/sh
# toggles a probe assert inside one shared.olang test
f=/home/user/wt/speed9/m/src/tests/shared.olang
if grep -q 'speedprobe' $f; then
  n=$(grep -o 'MtShape.Square([0-9]*)) == [0-9]* # speedprobe' $f | grep -o '([0-9]*' | tr -d '(')
  m=$((n+1))
  sed -i "s/assert mtArea(MtShape.Square([0-9]*)) == [0-9]* # speedprobe/assert mtArea(MtShape.Square($m)) == $((m*m)) # speedprobe/" $f
else
  sed -i '5823a\    assert mtArea(MtShape.Square(4)) == 16 # speedprobe' $f
fi
