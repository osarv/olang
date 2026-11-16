#!/bin/bash
# alternated runs, ms each; prints min/median/max per binary
n=$1; shift
for i in $(seq $n); do for b in "$@"; do s=$(date +%s%N); ./$b >/dev/null; e=$(date +%s%N); echo "$b $(( (e-s)/1000000 ))"; done; done | sort -k1,1 -k2,2n | awk '{a[$1]=a[$1]" "$2; c[$1]++} END {for (k in a) {split(substr(a[k],2),v," "); printf "%s min %d med %d max %d\n", k, v[1], v[int((c[k]+1)/2)], v[c[k]]}}'
