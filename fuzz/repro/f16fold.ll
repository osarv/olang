declare i32 @printf(ptr, ...)
@fmt = private constant [4 x i8] c"%g\0A\00"
define double @f(i32 %x) noinline {
  %s = shl i32 %x, 24
  %h = sitofp i32 %s to half
  %d = fpext half %h to double
  ret double %d
}
define i32 @main() {
  %v = call double @f(i32 98)
  call i32 (ptr, ...) @printf(ptr @fmt, double %v)
  ret i32 0
}
