#!/bin/bash
# run.sh [FILES...]: builds and runs each reproducer with the compiler under review (rv11 = 6af6a4e) as -b, -b -d -s
# and -i, and with the two comparison compilers where they exist: b6base (04f4a4d, before tonight9 and chk5) and rv10
# (771a922, chk5 round 1). A test file (08) runs under -t -d -s. Work happens in ./out/<compiler>/.
NEW=/home/user/wt/rv11/build/out
BASE=/home/user/wt/b6base/build/out
R1=/home/user/wt/rv10/build/out
here=$(cd $(dirname $0) && pwd)
files=${@:-$(ls $here/*.olang)}
one() {
  local O=$1 tag=$2 f=$3
  local b=$(basename $f .olang) d=$here/out/$tag
  mkdir -p $d && cp $f $d/
  cd $d
  if grep -q '^test ' $b.olang; then
    echo "  [$tag -t -d -s] $($O -t -d -s $b.olang 2>&1 | grep -v '^==' | tr '\n' '|' | cut -c1-300)"
    return
  fi
  local out
  out=$($O -b $b.olang 2>&1)
  if [ $? -ne 0 ]; then echo "  [$tag] refused: $(echo "$out" | grep -m1 error | cut -c1-200)"; return; fi
  echo "  [$tag -b]      $(timeout 60 ./build/$b 2>&1 | head -6 | tr '\n' '|')"
  $O -b -d -s $b.olang >/dev/null 2>&1 && echo "  [$tag -b -d -s] $(timeout 60 ./build/$b.debug.san 2>&1 | head -6 | tr '\n' '|')"
  [ $tag == new ] && echo "  [$tag -i]      $(timeout 120 $O -i $b.olang 2>&1 | head -6 | tr '\n' '|')"
}
for f in $files; do
  echo "== $(basename $f)"
  one $NEW new $f
  [ -x $BASE ] && one $BASE base $f
  [ -x $R1 ] && one $R1 round1 $f
done
