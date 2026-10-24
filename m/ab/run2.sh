#!/bin/bash
# A/B compile-speed measurements (scratch). usage: run.sh MODEFLAGS TAG
M=/home/user/wt/speed9/m
export OLANG_STD=/home/user/wt/speed9/std
mode="$1"; tag="$2"
t() { /usr/bin/time -f "%e %U %S" "$@" 2>&1 >/dev/null | tail -1; }
for c in base final; do
  d=$M/ab/$tag.$c; rm -rf $d; mkdir -p $d; cp -r /home/user/wt/speed9/compiler $d/compiler
done
for round in 1 2; do
for c in base final; do
  d=$M/ab/$tag.$c; cd $d
  git -C /home/user/wt/speed9 show HEAD:compiler/fmt.olang > compiler/fmt.olang
  git -C /home/user/wt/speed9 show HEAD:compiler/check.olang > compiler/check.olang
  git -C /home/user/wt/speed9 show HEAD:compiler/names.olang > compiler/names.olang
  rm -rf build
  clean=$(t $M/olang.$c build $mode -output o compiler/olang.olang)
  noop=$(t $M/olang.$c build $mode -output o compiler/olang.olang)
  echo "fn speedProbeLeaf$round() I64 { return 41 }" >> compiler/fmt.olang
  leaf=$(t $M/olang.$c build $mode -output o compiler/olang.olang)
  sed -i "3544a\\fn speedProbeMid$round() I64 { return 7 }" compiler/check.olang
  mid=$(t $M/olang.$c build $mode -output o compiler/olang.olang)
  sed -i "70a\\type SpeedT$round struct(a I64, b I64) { a, b }\nfn speedNew$round() I64 {\n    l := List<SpeedT$round>()\n    l.Push(SpeedT$round(1, 2))\n    return l.Len()\n}" compiler/names.olang
  inst=$(t $M/olang.$c build $mode -output o compiler/olang.olang)
  echo "$tag $c round$round | clean $clean | noop $noop | leaf $leaf | midcheck $mid | newinst $inst"
done
done
