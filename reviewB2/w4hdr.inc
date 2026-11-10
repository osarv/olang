import "std/io"
type N struct(v I32) {
    v
}
type Cur struct(of mut N&) {
    at mut N& = of
}
fn churn() {
    for i in range 50 {
        junk := Array<I64>(1000, i)
        assert junk[999] == i
    }
}
