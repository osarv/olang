#!/bin/bash
# gen.sh: writes kNN.olang - each a callee keeping a borrow of a returned local by one route, probe() run and baked
cd /home/user/review/any5/bat
mk() { # name defs call
cat > $1.olang <<EOT
$2
fn f(keep mut List<String&>&, h mut Holder&, i I64) String {
    s := "abc" \$i
    $3
    return s
}
fn probe(i I64) String {
    keep := List<String&>()
    h := Holder(keep)
    v := f(keep, h, i)
    v[0] = 'Q'
    return "keep " \$keep " h " \$h.l
}
G := probe(1)
fn main() {
    say("run:   " \$probe(1))
    say("baked: " \$G)
}
EOT
}
H='type Holder struct(l mut List<String&>&) { l }
fn (h mut Holder&) Add(x String&h) I64 {
    h.l.Push(x)
    return 1
}'
mk k01_set "$H
fn (h mut Holder&) Set(x String&) I64 {
    h.l.Push(x)
    return 1
}" "h.Set(s)"
mk k02_nestedshare "$H
fn add2(h mut Holder&, x String&) I64 { return h.Add(x) }" "add2(h, s)"
mk k03_generic "$H
fn keepIn<T>(l mut List<T>&, x T) I64 {
    l.Push(x)
    return 3
}" "keepIn(keep, s)"
mk k04_genericshare "$H
fn keepIn<T>(l mut List<T>&, x T&l) I64 {
    l.Push(x)
    return 3
}" "keepIn(keep, s)"
mk k05_map "$H
fn put(m mut Map<I64, String&>&, x String&m) I64 {
    m.Put(1, x)
    return 1
}
GM := 0" "mm := Map<I64, String&>()
    put(mm, s)
    keep.Push(try mm.Get(1) catch default \"none\")"
mk k06_slice "$H" "h.Add(s[0:2])"
mk k07_receiver "$H
type Box struct(x String&) { x }
fn (b Box&) Into(h mut Holder&b) I64 { return h.Add(b.x) }" "Box(s).Into(h)"
mk k08_method "$H
fn (x String&) AddTo(h mut Holder&x) I64 { return h.Add(x) }" "s.AddTo(h)"
mk k09_genericvalue "$H
fn keepV<T>(l mut List<T&>&, x T) I64 {
    l.Push(x)
    return 9
}" "keepV(keep, s)"
mk k10_sharedslice "$H" "h.Add(s[1:3])"
mk k11_shareddefer "$H" "defer { h.Add(s) }"
