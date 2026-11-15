#!/bin/sh
# throwaway: run each file's tests, three at a time
cd /home/user/wt/facts2
ls tests/*.olang tests/geom/*.olang std/*.olang compiler/effects.olang compiler/typed.olang compiler/msgs.olang compiler/facts.olang | xargs -P 3 -I{} sh -c 'out=$(build/olang.c test {} 2>&1); s=$?; if [ $s != 0 ]; then echo "FAIL {} ($s)"; echo "$out" | tail -15; else echo "ok {}"; fi'
