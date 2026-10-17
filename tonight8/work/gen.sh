#!/bin/bash
# gen.sh NAME 'LAMBDA BODY' ['EXTRA DECLS']  -> NAME.olang: two tasks call a closure built from BODY over captured a/b
# while main builds into the same scope; prints final values
name=$1; body=$2; extra=$3
bodyA=${body//@/a}; bodyB=${body//@/b}
cat > $name.olang <<EOT
type Node struct(v I64) {
    v
    next mut Node& = null
}
$extra
fn work(f fn(i I64), n I64) {
    for i in range n { f(i) }
}
fn main() ? {
    a mut Node& = Node(0)
    b mut Node& = Node(0)
    fa := fn(i I64) { $bodyA }
    fb := fn(i I64) { $bodyB }
    c mut Node& = Node(0)
    join {
        spawn work(fa, 300000)
        spawn work(fb, 300000)
        for i in range 300000 { c.next = Node(i) }
    }
    println(\$a.next.v " " \$b.next.v " " \$c.next.v)
}
EOT
