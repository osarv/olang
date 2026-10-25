#!/bin/bash
# runold.sh NAME OLANG: run.sh with the output in repro/NAME.2576a1d.out (the compiler before the round)
exec /home/user/review/any4/run.sh "$1" "$2" .2576a1d
