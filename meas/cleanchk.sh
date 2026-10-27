#!/bin/bash
cd /home/user/wt/fastverify
cp build/olang /tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/olang.keep
rm -rf build; mkdir build; cp /tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/olang.keep build/olang; chmod +x build/olang
CHECKS_TIMES=$PWD/meas/chktimes2.txt OLANG=$PWD/build/olang /usr/bin/time -f "cpu %U %S" build/olang test checks/checks.olang
