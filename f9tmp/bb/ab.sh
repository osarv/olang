med() { tr ' ' '\n' | grep . | sort -n | awk '{a[NR]=$1} END {print a[int((NR+1)/2)]}'; }
row() { # name prog args...
  name=$1; p=$2; shift 2
  t0=""; t1=""; tc=""
  for i in 1 2 3 4 5 6 7; do
    for v in 0 1 c; do
      if [ $v = c ]; then [ $p = vec ] || continue; bin=./vec.c.bin; else bin=./$p.$v; fi
      s=$(date +%s%N); $bin "$@" > /dev/null; e=$(date +%s%N); ms=$(( (e-s)/1000000 ))
      case $v in 0) t0="$t0 $ms";; 1) t1="$t1 $ms";; c) tc="$tc $ms";; esac
    done
  done
  echo "$name | base $(echo $t0 | med) | new $(echo $t1 | med) | C $(echo $tc | med)"
}
row "Array Sort" vec sort array 1000000 0
row "Vec Sort" vec sort vec 1000000 0
row "Array Sort, through an unknown value" vec sort value 1000000 0
row "Array Sort, < written in" vec sort written 1000000 0
row "sum: List.Iter().Fold" sum listfold 100000 8000
row "sum: Array.Iter().Fold" sum arrayfold 100000 8000
row "Vec: for x in v" vec walk vec 1000000 100
row "nbody" nbody 5000000
row "gen: filter, iterator" gen filter iter 10000000 20
