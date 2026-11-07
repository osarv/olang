#!/bin/bash
# E38: a remote repository's embed reads a file outside the repository through a symlink inside it.
# usage: run.sh [OLANG]   (default: /home/user/wt/bulk1/build/olang)
set -e
O=${1:-/home/user/wt/bulk1/build/olang}
d=$(mktemp -d)
cd $d
echo "A FILE OUTSIDE THE REPOSITORY" > outside.txt
mkdir -p remote/example.com/me/tools/lib
cd remote/example.com/me/tools
ln -s $d/outside.txt lib/data.txt
printf 'Data := String(embed "data.txt")\n' > lib/peek.olang
git -c user.name=t -c user.email=t@t init -q && git add . && git -c user.name=t -c user.email=t@t commit -qm v1
cd $d
printf 'import "std/io"\nimport "example.com/me/tools/lib/peek"\nfn main() { io.Print(peek.Data)! }\n' > em.olang
OLANG_GIT_BASE=file://$d/remote/ OLANG_CACHE=$d/cache $O build em.olang > /dev/null
./build/em
echo "(expected: error[E38] ... it leaves example.com/me/tools; work directory $d)"
