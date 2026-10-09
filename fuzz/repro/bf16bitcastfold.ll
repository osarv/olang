; LLVM 18: InstCombine takes a bitcast between half and bfloat for a no-op cast and merges it with the conversion
; after it, so the bits are converted as the type they came from. clang -O0 prints "2048 2.3125 2 2048",
; clang -O2 prints "5 5 5 5".
declare i32 @printf(ptr, ...)
@fmt = private constant [13 x i8] c"%g %g %d %d\0A\00"
define double @hb(i32 %x) noinline {        ; F16 bits read as BF16, widened
  %h = uitofp i32 %x to half
  %i = bitcast half %h to i16
  %b = bitcast i16 %i to bfloat
  %d = fpext bfloat %b to double
  ret double %d
}
define double @bh(float %x) noinline {      ; BF16 bits read as F16, widened
  %b = fptrunc float %x to bfloat
  %i = bitcast bfloat %b to i16
  %h = bitcast i16 %i to half
  %d = fpext half %h to double
  ret double %d
}
define i32 @bhi(float %x) noinline {        ; BF16 bits read as F16, to an integer
  %b = fptrunc float %x to bfloat
  %i = bitcast bfloat %b to i16
  %h = bitcast i16 %i to half
  %r = fptosi half %h to i32
  ret i32 %r
}
define i32 @hbi(i32 %x) noinline {          ; F16 bits read as BF16, to an integer
  %h = sitofp i32 %x to half
  %i = bitcast half %h to i16
  %b = bitcast i16 %i to bfloat
  %r = fptosi bfloat %b to i32
  ret i32 %r
}
define i32 @main() {
  %a = call double @hb(i32 5)
  %b = call double @bh(float 5.0)
  %c = call i32 @bhi(float 5.0)
  %d = call i32 @hbi(i32 5)
  call i32 (ptr, ...) @printf(ptr @fmt, double %a, double %b, i32 %c, i32 %d)
  ret i32 0
}
