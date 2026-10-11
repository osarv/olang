; LLVM 18, x86-64 without AVX512-BF16: selection takes the sign bit of "bitcast bfloat to i16" for a known zero
; whenever the bfloat is not an argument in a register - a load, a select, a phi - so a test of that bit folds to false.
; With the bfloat also stored, -O3 selection crashes instead (SimplifyDemandedBits). Every other bit is right.
; "clang -O0" prints 0 0 0 and "clang -O3" 1 1 0, where 1 1 1 is right. A freeze does not help, and InstCombine turns
; "fpext" plus shifts, or a <2 x bfloat> bitcast, back into this bitcast - so only an empty asm on the i16 keeps the bit
; (bootstrap/codegen.c, cgBF16Bits). bf16signbit.olang is std/math's SignBit, which failed at -d and -r for this.
declare i32 @printf(ptr, ...)
@fmt = private constant [10 x i8] c"%d %d %d\0A\00"
@neg = global i16 49152 ; -2.0
define i1 @fromload(ptr %p) noinline {
  %x = load bfloat, ptr %p
  %b = bitcast bfloat %x to i16
  %r = icmp slt i16 %b, 0
  ret i1 %r
}
define i1 @shifted(ptr %p) noinline {
  %x = load bfloat, ptr %p
  %b = bitcast bfloat %x to i16
  %s = lshr i16 %b, 15
  %r = icmp eq i16 %s, 1
  ret i1 %r
}
define i1 @selected(ptr %p, ptr %q, i1 %c) noinline {
  %a = load bfloat, ptr %p
  %o = load bfloat, ptr %q
  %x = select i1 %c, bfloat %a, bfloat %o
  %b = bitcast bfloat %x to i16
  %m = and i16 %b, 32768
  %r = icmp ne i16 %m, 0
  ret i1 %r
}
define i32 @main() {
  %r1 = call i1 @fromload(ptr @neg)
  %r2 = call i1 @shifted(ptr @neg)
  %r3 = call i1 @selected(ptr @neg, ptr @neg, i1 true)
  %z1 = zext i1 %r1 to i32
  %z2 = zext i1 %r2 to i32
  %z3 = zext i1 %r3 to i32
  call i32 (ptr, ...) @printf(ptr @fmt, i32 %z1, i32 %z2, i32 %z3)
  ret i32 0
}
