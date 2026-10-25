#!/bin/sh
# 08: the differential fuzzer's generator, as migrated, writes programs the batch's compiler refuses or that abort:
# gen.olang:559 "(try (e as E.C) catch ...)" (E24: parentheses around a try's whole operand), gen.olang:1976 viewElement
# "(try (x[0:n]).Get(i) ...)" - the slice is outside any check now (it was under "checked") and aborts when n is past
# the array (K2 at a baked global), and gen.olang:684's chains "a < b > (c)" (see 07). Seeds 7100-7139: 4 findings,
# all these; with 08_fuzz_gen.patch applied to a copy of fuzz/: 0 findings on 7100-7139 and on 8000-8149.
# usage: 08_fuzz_gen.sh REPO_CHECKOUT NEW_OLANG   (builds a patched copy of fuzz/ in a scratch directory)
R=$(dirname $(readlink -f $0)); REPO=$1; NEW=$2; D=$(mktemp -d); cp -r $REPO/fuzz $D/; cd $D
echo "== unpatched, seeds 7100-7139:"; $NEW build -debug fuzz/fuzz.olang > /dev/null && OLANG=$NEW ./build/fuzz_fuzz.debug run 7100 40 2 30 | tail -1
patch -p0 fuzz/gen.olang < $R/08_fuzz_gen.patch > /dev/null
echo "== patched:"; $NEW build -debug fuzz/fuzz.olang > /dev/null && OLANG=$NEW ./build/fuzz_fuzz.debug run 7100 40 2 30 | tail -1
