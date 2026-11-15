#!/bin/sh
# union-resolve a conflicted file: ours then theirs
f=$1
git show :1:$f > /tmp/u.base 2>/dev/null || : > /tmp/u.base
git show :2:$f > /tmp/u.ours; git show :3:$f > /tmp/u.theirs
git merge-file --union -p /tmp/u.ours /tmp/u.base /tmp/u.theirs > $f
git add $f
