import "std/io"
fn churn() I64 {
    t I64 = 0
    for i in range 2000 {
        x := "churn " $i " " $(i * 3)
        a := Array<I64>(16, i)
        t += x.Len() + a[2] - i
    }
    return t
}
type P struct(x I64, y I64) {
    x
    y
}
