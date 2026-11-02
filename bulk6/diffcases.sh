#!/bin/bash
# differential: the pre-refactor compiler (ae8e869, ../old) against the merged tip on every checks case:
# diagnostics and status of 'compile -quick'
N=/home/user/wt/rework/build/olang
O=/home/user/review/bulk6/old/build/olang
W=/home/user/review/bulk6/work/dc
mkdir -p $W; cd $W
out=/home/user/review/bulk6/diffcases.txt; : > $out
for f in /home/user/wt/rework/checks/cases/*.olang; do
  b=$(basename $f)
  a=$(timeout 120 $N compile -quick -output $W/n.o $f 2>&1; echo "status $?")
  o=$(timeout 120 $O compile -quick -output $W/o.o /home/user/review/bulk6/old/checks/cases/$b 2>&1; echo "status $?")
  a=$(echo "$a" | sed -e 's#/home/user/wt/rework/##g' -e 's#/home/user/review/bulk6/old/##g' -e 's#n\.o#X.o#g')
  o=$(echo "$o" | sed -e 's#/home/user/wt/rework/##g' -e 's#/home/user/review/bulk6/old/##g' -e 's#o\.o#X.o#g')
  if [ "$a" != "$o" ]; then echo "=== $b" >> $out; diff <(echo "$o") <(echo "$a") >> $out; fi
done
echo done >> $out
