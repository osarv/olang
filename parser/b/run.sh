for f in "$@"; do
  out=$(/home/user/wt/review/build/out -t "$f" 2>&1); code=$?
  if [ $code -ne 0 ]; then echo "=== FAIL $f ($code)"; echo "$out" | head -20; else echo "ok $f"; fi
done
