#!/bin/bash
n=$1; shift
{ cat hdr.inc; echo "fn f(ro List<List<I64>>&) {"; echo "    $*"; echo "}"; echo 'fn main() ? {'; echo '    l := mk()'; echo '    f(l)'; echo '    println($l[0].Len())'; echo '}'; } | sed 's/; /\n    /g' > s$n.olang
