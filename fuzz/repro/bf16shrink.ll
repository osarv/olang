; LLVM 18: InstCombine shrinks "fptrunc (op (fpext bfloat b) ...) to half" into the op done in half on b narrowed to
; half, as though bfloat's precision were all that mattered - but bfloat's range is float's, so 2^-126 narrows to 0
; and 2^-126 / 2^-126 is 0 / 0. clang -O0 prints 1, clang -O2 prints -nan.
declare i32 @printf(ptr, ...)
@fmt = private constant [4 x i8] c"%g\0A\00"
define half @f(bfloat %b) noinline {
  %x = fpext bfloat %b to float
  %q = fdiv float %x, %x
  %h = fptrunc float %q to half
  ret half %h
}
define i32 @main() {
  %h = call half @f(bfloat 0xR0080)
  %d = fpext half %h to double
  call i32 (ptr, ...) @printf(ptr @fmt, double %d)
  ret i32 0
}
