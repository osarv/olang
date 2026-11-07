#!/bin/bash
# gen3.sh NAME 'LAMBDA BODY' ['EXTRA DECLS'] - like gen.sh, but Node has a text field s, an array field arr, a list field l
name=$1; body=$2; extra=$3
bodyA=${body//@/a}; bodyB=${body//@/b}
cat > $name.olang <<EOT
type Node struct(v I64) {
    v
    next mut Node& = null
    s String& = ""
    arr Array<I64>& = null
    l List<I64> = List<I64>()
}
$extra
fn work(f fn(i I64), n I64) {
    for i in range n { f(i) }
}
fn main() ? {
    a mut Node& = Node(0)
    b mut Node& = Node(0)
    fa := fn(i I64) {
        $bodyA
    }
    fb := fn(i I64) {
        $bodyB
    }
    c mut Node& = Node(0)
    join {
        spawn work(fa, 200000)
        spawn work(fb, 200000)
        for i in range 200000 { c.next = Node(i) }
    }
    println(\$a.v " " \$b.v " " \$c.next.v " " \$a.s " " \$b.s " " \$a.l.Len())
}
EOT
