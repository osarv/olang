# mk name 'callee body' - a callee g(a mut Acc&) given l[0] (a List's copy) and arr[0] (an array's place)
mk() {
cat hdr.inc > $1.olang
cat >> $1.olang <<EOF
fn g(a mut Acc&) {
$2
}
fn main() ? {
    l := List<Acc>()
    l.Push(Acc())
    g(l[0])
    println("list N " \$l[0].N " X " \$l[0].P.X " d " \$l[0].d[0])
    arr := Acc[Acc()]
    g(arr[0])
    println("array N " \$arr[0].N " X " \$arr[0].P.X " d " \$arr[0].d[0])
}
EOF
}
