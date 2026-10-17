#!/bin/bash
# mkh.sh name 'main body' 'extra decls'
cat > $1.olang <<EOF
fn churnIt() {
    for k in range 300 {
        junk := \$k "-churn-churn-churn-churn-churn-churn-churn-churn-churn-churn"
        assert junk.Len() > 0
    }
}
$3
fn main() ? {
$2
}
EOF
