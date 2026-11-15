#!/bin/sh
# resolve conflicted hunks to theirs, keep the auto-merged rest
for f in "$@"; do
git show :1:$f > /tmp/u.base 2>/dev/null || : > /tmp/u.base
git show :2:$f > /tmp/u.ours; git show :3:$f > /tmp/u.theirs
git merge-file --theirs -p /tmp/u.ours /tmp/u.base /tmp/u.theirs > $f
done
