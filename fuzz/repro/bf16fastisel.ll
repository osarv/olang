declare i32 @printf(ptr, ...)
@fmt = private constant [7 x i8] c"%g %g\0A\00"
define bfloat @mk(i64 %a) noinline {
  %f = uitofp i64 %a to bfloat
  ret bfloat %f
}
define float @f(i64 %a, i1 %c, bfloat %d) noinline {
entry:
  %x = call bfloat @mk(i64 %a)
  br i1 %c, label %l1, label %l2
l1:
  %q = fdiv bfloat %d, 0xR3D94
  br label %end
l2:
  %r = fdiv bfloat 0xRBDCD, %d
  br label %end
end:
  %m = phi bfloat [ %q, %l1 ], [ %r, %l2 ]
  %y = fmul bfloat %x, %m
  %e = fpext bfloat %y to float
  ret float %e
}
define i32 @main() {
  %v = call float @f(i64 0, i1 false, bfloat 0xR437F)
  %d = fpext float %v to double
  %w = call float @f(i64 1, i1 false, bfloat 0xR437F)
  %d2 = fpext float %w to double
  call i32 (ptr, ...) @printf(ptr @fmt, double %d, double %d2)
  ret i32 0
}
