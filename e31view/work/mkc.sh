mkc() {
cat c_hdr.inc > $1.olang
cat >> $1.olang <<EOF
$2
fn main() ? {
    s := Rs(List<String&>())
    for k in range 3 { f(s[k]) }
    churn()
    println(\$s.l)
}
EOF
}
