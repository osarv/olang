#!/bin/bash
# mkl.sh name 'main body' 'extra decls'
cat > $1.olang <<EOF
type Reading struct(Sensor String&, Value F64) {
    Sensor
    Value
}
fn churn() I64 {
    t I64 = 0
    for k in range 200 {
        junk := \$k "-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        t += junk.Len()
    }
    return t
}
$3
fn main() ? {
$2
}
EOF
