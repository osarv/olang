#!/bin/bash
E=/tmp/claude-0/-home-user/6ca8065a-e812-5852-abb7-f4f9afea01cb/scratchpad/exp
while IFS='|' read name prog cprog args; do
  declare -A t; t=([none]="" [all]="" [hoist]="")
  for r in 1 2 3 4 5 6 7; do for m in none all hoist; do
    cd $E/$m; s=$(date +%s%N); ./build/$prog $args > /dev/null 2>&1; e=$(date +%s%N); t[$m]="${t[$m]} $(( (e-s)/1000000 ))"
  done; done
  line="$name"; for m in none all hoist; do line="$line|$(printf "%s\n" ${t[$m]} | sort -n | sed -n 4p)"; done
  echo "$line"
done < $E/table.txt
