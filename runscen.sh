#!/bin/bash
c=$1; shift
for s in "$@"; do r=$(CHECKS_SCENARIO=$s OLANG=$c $c test checks/checks.olang 2>&1 | tail -1); echo "$s: $r"; done
