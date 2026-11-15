#!/bin/bash
# runs the named checks scenarios with the compiler $1, one after another
c=$1; shift
for s in "$@"; do
  r=$(CHECKS_SCENARIO=$s OLANG=$c $c test checks/checks.olang 2>&1 | tail -3 | tr '\n' ' ')
  echo "$s: $r"
done
