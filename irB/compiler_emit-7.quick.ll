source_filename = "compiler_emit-7.quick.ll"
; olang - emitted by the self-hosted compiler (compiler/emit.olang)
target triple = "x86_64-pc-linux-gnu"

%olang.chunk = type { ptr, i64, i64, i64, i64, i64, ptr, i64 }
%olang.pool = type { [128 x ptr], i128, i64, i64, i64 }
%olang.dtornode = type { ptr, ptr, ptr, ptr, ptr }
%olang.unwind = type { ptr, ptr, ptr }
%olang.task = type { ptr, i64, ptr, i64, ptr }
%olang.worker = type { ptr, ptr, ptr, i64, ptr, [40 x i8], [48 x i8] }
%olang.merge = type { ptr, ptr }
%olang.scope = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"compiler/emit:cDecls" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/cabi:Regs" = type { i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/emit:scopeUse" = type { { i64, ptr }, i1 }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eHeader(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/emit:cDecls"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca %"compiler/emit:cDecls"
  %l37 = alloca %"std/prelude/text:StringBuilder"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca i64
  %l54 = alloca ptr
  %l63 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l80 = alloca %"std/prelude/text:StringBuilder"
  %l94 = alloca i64
  %l97 = alloca i64
  %l99 = alloca i64
  %l104 = alloca { i64, ptr }
  %l114 = alloca i64
  %l116 = alloca i64
  %l121 = alloca { i64, ptr }
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l129 = alloca i64
  %l133 = alloca i64
  %l135 = alloca i64
  %l141 = alloca i32
  %l153 = alloca ptr
  %l156 = alloca i32
  %l157 = alloca { i64, ptr }
  %l163 = alloca i64
  %l166 = alloca i64
  %l184 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l190 = alloca i32
  %l192 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l207 = alloca ptr
  %l209 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t10 = alloca %"compiler/emit:cDecls", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %v1, ptr %s0, { i64, ptr } %t6)
  store { i64, ptr } %t8, ptr %l35
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t9, ptr %l4, !tbaa !27
  call void @compiler_2femit_3acDecls_2ector(ptr %t10, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t10, i64 136, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l36, i64 136, i1 false)
  %t11 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t11, ptr %l37
  br label %bb3
bb3:
  %t12 = load %"std/prelude/text:StringBuilder", ptr %l37
  store %"std/prelude/text:StringBuilder" %t12, ptr %l6
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %s1, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l39
  br label %bb4
bb4:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t17 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  store ptr %t17, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load i64, ptr %l8, !tbaa !24
  store i64 %t19, ptr %l41, !tbaa !24
  %t20 = load ptr, ptr %l7, !tbaa !29
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t20)
  store i64 %t22, ptr %l43
  br label %bb6
bb6:
  %t23 = load i64, ptr %l41, !tbaa !24
  %t24 = load i64, ptr %l43, !tbaa !24
  %t25 = icmp slt i64 %t23, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l7, !tbaa !29
  %t30 = load i64, ptr %l8, !tbaa !24
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t29, i64 %t30)
  store i64 %t33, ptr %l48
  br label %bb10
bb10:
  %t34 = load i64, ptr %l48, !tbaa !24
  store i64 %t34, ptr %l9, !tbaa !24
  store i64 -1, ptr %l10, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/emit:Emitter", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/lower:Lowerer", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = load i64, ptr %l9, !tbaa !24
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t41, i64 %t43)
  store ptr %t46, ptr %l54
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l54, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Body", ptr %t47, i32 0, i32 1
  %t50 = load { i64, [2 x i64] }, ptr %t49
  store { i64, [2 x i64] } %t50, ptr %l11
  %t52 = load { i64, [2 x i64] }, ptr %l11
  %t54 = extractvalue { i64, [2 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t58 = getelementptr { i64 }, ptr %t57, i32 0, i32 0
  %t59 = load i64, ptr %t58
  store i64 %t59, ptr %l12, !tbaa !24
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/emit:Emitter", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i64, ptr %l12, !tbaa !24
  %t68 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t64, i64 %t65)
  store i64 %t68, ptr %l63
  br label %bb15
bb15:
  %t69 = load i64, ptr %l63, !tbaa !24
  store i64 %t69, ptr %l10, !tbaa !24
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb20:
  call void @__olang_check_failed(ptr @olang_loc_e4a7c1511235e6a9_9511e73f4ca5cc95)
  unreachable
bb21:
  store ptr %l6, ptr %l64, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l65, !tbaa !29
  %t71 = load i64, ptr %l10, !tbaa !24
  store i64 %t71, ptr %l66, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/emit:Emitter", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/lower:Lowerer", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t78, i64 %t80)
  store ptr %t83, ptr %l72
  br label %bb22
bb22:
  %t84 = load ptr, ptr %l72, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Body", ptr %t84, i32 0, i32 2
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = load ptr, ptr %l65, !tbaa !29
  %t89 = load i64, ptr %l66, !tbaa !24
  %t92 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecEntryDecl(ptr %v0, ptr %s0, ptr %s2, ptr %t88, i64 %t89, i32 %t87, ptr %l5)
  store { i64, ptr } %t92, ptr %l76
  br label %bb23
bb23:
  %t93 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t100, { i64, ptr } %t99)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t102 = load i64, ptr %l8, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l8, !tbaa !24
  br label %bb5
bb26:
  call void @__olang_scope_close(ptr %s1)
  %t106 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t106, ptr %l80
  br label %bb27
bb27:
  %t107 = load %"std/prelude/text:StringBuilder", ptr %l80
  store %"std/prelude/text:StringBuilder" %t107, ptr %l13
  %t108 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t111 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t114 = extractvalue { i64, ptr } %t108, 1
  %t115 = extractvalue { i64, ptr } %t108, 0
  %t116 = add i64 %t112, %t115
  %t117 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t119 = add i64 %t116, %t118
  %t121 = extractvalue { i64, ptr } %t109, 1
  %t122 = extractvalue { i64, ptr } %t109, 0
  %t123 = add i64 %t119, %t122
  %t124 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t126 = add i64 %t123, %t125
  %t128 = extractvalue { i64, ptr } %a2, 1
  %t129 = extractvalue { i64, ptr } %a2, 0
  %t130 = add i64 %t126, %t129
  %t131 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t132 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t133 = add i64 %t130, %t132
  %t134 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t133)
  call void @olang_textcopy(ptr %t134, ptr %t111, i64 %t112)
  %t135 = getelementptr i8, ptr %t134, i64 %t112
  call void @olang_textcopy(ptr %t135, ptr %t114, i64 %t115)
  %t136 = getelementptr i8, ptr %t135, i64 %t115
  call void @olang_textcopy(ptr %t136, ptr %t117, i64 %t118)
  %t137 = getelementptr i8, ptr %t136, i64 %t118
  call void @olang_textcopy(ptr %t137, ptr %t121, i64 %t122)
  %t138 = getelementptr i8, ptr %t137, i64 %t122
  call void @olang_textcopy(ptr %t138, ptr %t124, i64 %t125)
  %t139 = getelementptr i8, ptr %t138, i64 %t125
  call void @olang_textcopy(ptr %t139, ptr %t128, i64 %t129)
  %t140 = getelementptr i8, ptr %t139, i64 %t129
  call void @olang_textcopy(ptr %t140, ptr %t131, i64 %t132)
  %t141 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t134, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l13, { i64, ptr } %t149)
  br label %bb28
bb28:
  %t152 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t154 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t157 = extractvalue { i64, ptr } %t152, 1
  %t158 = extractvalue { i64, ptr } %t152, 0
  %t159 = add i64 %t155, %t158
  %t160 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t162 = add i64 %t159, %t161
  %t164 = extractvalue { i64, ptr } %t153, 1
  %t165 = extractvalue { i64, ptr } %t153, 0
  %t166 = add i64 %t162, %t165
  %t167 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t169)
  call void @olang_textcopy(ptr %t170, ptr %t154, i64 %t155)
  %t171 = getelementptr i8, ptr %t170, i64 %t155
  call void @olang_textcopy(ptr %t171, ptr %t157, i64 %t158)
  %t172 = getelementptr i8, ptr %t171, i64 %t158
  call void @olang_textcopy(ptr %t172, ptr %t160, i64 %t161)
  %t173 = getelementptr i8, ptr %t172, i64 %t161
  call void @olang_textcopy(ptr %t173, ptr %t164, i64 %t165)
  %t174 = getelementptr i8, ptr %t173, i64 %t165
  call void @olang_textcopy(ptr %t174, ptr %t167, i64 %t168)
  %t175 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t170, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = extractvalue { i64, ptr } %t176, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l13, { i64, ptr } %t183)
  br label %bb29
bb29:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l13, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb30
bb30:
  %t187 = getelementptr %"compiler/emit:cDecls", ptr %l5, i32 0, i32 0
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t187)
  store i64 %t189, ptr %l94
  br label %bb31
bb31:
  %t190 = load i64, ptr %l94, !tbaa !24
  %t191 = icmp sgt i64 %t190, 0
  br i1 %t191, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s8
  %t193 = getelementptr %"compiler/emit:cDecls", ptr %l5, i32 0, i32 0
  store ptr %t193, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb34
bb33:
  br label %bb44
bb34:
  store %olang.scope zeroinitializer, ptr %s10
  %t195 = load i64, ptr %l15, !tbaa !24
  store i64 %t195, ptr %l97, !tbaa !24
  %t196 = load ptr, ptr %l14, !tbaa !29
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t196)
  store i64 %t198, ptr %l99
  br label %bb35
bb35:
  %t199 = load i64, ptr %l97, !tbaa !24
  %t200 = load i64, ptr %l99, !tbaa !24
  %t201 = icmp slt i64 %t199, %t200
  %t203 = xor i1 %t201, true
  br i1 %t203, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s10)
  br label %bb42
bb37:
  br label %bb38
bb38:
  %t205 = load ptr, ptr %l14, !tbaa !29
  %t206 = load i64, ptr %l15, !tbaa !24
  %t209 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t205, i64 %t206)
  store { i64, ptr } %t209, ptr %l104
  br label %bb39
bb39:
  %t210 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t210, ptr %l16, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t212 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t213 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t216 = extractvalue { i64, ptr } %t211, 1
  %t217 = extractvalue { i64, ptr } %t211, 0
  %t218 = add i64 %t214, %t217
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t223 = extractvalue { i64, ptr } %t212, 1
  %t224 = extractvalue { i64, ptr } %t212, 0
  %t225 = add i64 %t221, %t224
  %t226 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t228 = add i64 %t225, %t227
  %t229 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t228)
  call void @olang_textcopy(ptr %t229, ptr %t213, i64 %t214)
  %t230 = getelementptr i8, ptr %t229, i64 %t214
  call void @olang_textcopy(ptr %t230, ptr %t216, i64 %t217)
  %t231 = getelementptr i8, ptr %t230, i64 %t217
  call void @olang_textcopy(ptr %t231, ptr %t219, i64 %t220)
  %t232 = getelementptr i8, ptr %t231, i64 %t220
  call void @olang_textcopy(ptr %t232, ptr %t223, i64 %t224)
  %t233 = getelementptr i8, ptr %t232, i64 %t224
  call void @olang_textcopy(ptr %t233, ptr %t226, i64 %t227)
  %t234 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t229, 1
  %t237 = extractvalue { i64, ptr } %t235, 0
  %t238 = extractvalue { i64, ptr } %t235, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %l13, { i64, ptr } %t242)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s10)
  br label %bb41
bb41:
  %t245 = load i64, ptr %l15, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l15, !tbaa !24
  br label %bb34
bb42:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l13, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s8)
  br label %bb44
bb44:
  %t250 = getelementptr %"compiler/emit:cDecls", ptr %l5, i32 0, i32 1
  store ptr %t250, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb45
bb45:
  %t252 = load i64, ptr %l18, !tbaa !24
  store i64 %t252, ptr %l114, !tbaa !24
  %t253 = load ptr, ptr %l17, !tbaa !29
  %t255 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t253)
  store i64 %t255, ptr %l116
  br label %bb46
bb46:
  %t256 = load i64, ptr %l114, !tbaa !24
  %t257 = load i64, ptr %l116, !tbaa !24
  %t258 = icmp slt i64 %t256, %t257
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb47, label %bb48
bb47:
  br label %bb53
bb48:
  br label %bb49
bb49:
  %t262 = load ptr, ptr %l17, !tbaa !29
  %t263 = load i64, ptr %l18, !tbaa !24
  %t266 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t262, i64 %t263)
  store { i64, ptr } %t266, ptr %l121
  br label %bb50
bb50:
  %t267 = load { i64, ptr }, ptr %l121, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l13, { i64, ptr } %t267)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t271 = load i64, ptr %l18, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l18, !tbaa !24
  br label %bb45
bb53:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eExportErrors(ptr %v0, ptr %s0, ptr %t275)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t277, ptr %l127
  br label %bb54
bb54:
  %t278 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %l20
  %t280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l20)
  store i64 %t280, ptr %l129
  br label %bb55
bb55:
  %t281 = load i64, ptr %l129, !tbaa !24
  %t282 = icmp sgt i64 %t281, 0
  br i1 %t282, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s16
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s16, ptr %l13, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb58
bb57:
  br label %bb90
bb58:
  store ptr %l20, ptr %l21, !tbaa !29
  store i64 0, ptr %l22, !tbaa !24
  br label %bb59
bb59:
  store %olang.scope zeroinitializer, ptr %s18
  %t286 = load i64, ptr %l22, !tbaa !24
  store i64 %t286, ptr %l133, !tbaa !24
  %t287 = load ptr, ptr %l21, !tbaa !29
  %t289 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t287)
  store i64 %t289, ptr %l135
  br label %bb60
bb60:
  %t290 = load i64, ptr %l133, !tbaa !24
  %t291 = load i64, ptr %l135, !tbaa !24
  %t292 = icmp slt i64 %t290, %t291
  %t294 = xor i1 %t292, true
  br i1 %t294, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s18)
  br label %bb88
bb62:
  br label %bb63
bb63:
  %t296 = load i64, ptr %l22, !tbaa !24
  store i64 %t296, ptr %l23, !tbaa !24
  %t298 = load ptr, ptr %l21, !tbaa !29
  %t299 = load i64, ptr %l22, !tbaa !24
  %t302 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t298, i64 %t299)
  store i32 %t302, ptr %l141
  br label %bb64
bb64:
  %t303 = load i32, ptr %l141, !tbaa !23
  store i32 %t303, ptr %l24, !tbaa !23
  %t304 = load i32, ptr %l24, !tbaa !23
  %t305 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t308 = icmp eq i32 %t304, %t305
  br i1 %t308, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s19
  %t310 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t311 = load i64, ptr %l23, !tbaa !24
  %t313 = add i64 %t311, 1
  %t315 = shl i64 %t313, 16
  %t316 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t319 = extractvalue { i64, ptr } %t310, 1
  %t320 = extractvalue { i64, ptr } %t310, 0
  %t321 = add i64 %t317, %t320
  %t322 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t324 = add i64 %t321, %t323
  %t326 = call i64 @__olang_fmt_i64(ptr null, i64 %t315)
  %t327 = add i64 %t324, %t326
  %t328 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t330 = add i64 %t327, %t329
  %t331 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t330)
  call void @olang_textcopy(ptr %t331, ptr %t316, i64 %t317)
  %t332 = getelementptr i8, ptr %t331, i64 %t317
  call void @olang_textcopy(ptr %t332, ptr %t319, i64 %t320)
  %t333 = getelementptr i8, ptr %t332, i64 %t320
  call void @olang_textcopy(ptr %t333, ptr %t322, i64 %t323)
  %t334 = getelementptr i8, ptr %t333, i64 %t323
  %t335 = call i64 @__olang_fmt_i64(ptr %t334, i64 %t315)
  %t336 = getelementptr i8, ptr %t334, i64 %t326
  call void @olang_textcopy(ptr %t336, ptr %t328, i64 %t329)
  %t337 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t331, 1
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t341 = extractvalue { i64, ptr } %t338, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s19, ptr %l13, { i64, ptr } %t345)
  br label %bb67
bb66:
  br label %bb68
bb67:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s18)
  br label %bb87
bb68:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/emit:Emitter", ptr %t348, i32 0, i32 0
  %t351 = load ptr, ptr %t350, !tbaa !29
  store ptr %t351, ptr %l153, !tbaa !29
  %t352 = load ptr, ptr %l3, !tbaa !29
  %t353 = load i32, ptr %l24, !tbaa !23
  %t356 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t352, i32 %t353)
  store i32 %t356, ptr %l156
  br label %bb69
bb69:
  %t357 = load ptr, ptr %l153, !tbaa !29
  %t358 = load i32, ptr %l156, !tbaa !23
  %t359 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s18, ptr %t357, i32 %t358)
  store { i64, ptr } %t359, ptr %l157
  br label %bb70
bb70:
  %t360 = load { i64, ptr }, ptr %l157, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t363 = extractvalue { i64, ptr } %t360, 0
  store i64 %t363, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t365 = load i64, ptr %l27, !tbaa !24
  %t366 = load i64, ptr %l26, !tbaa !24
  %t369 = icmp sgt i64 %t365, %t366
  br i1 %t369, label %bb71, label %bb72
bb71:
  %t371 = load i64, ptr %l28, !tbaa !24
  %t373 = icmp sgt i64 %t371, 0
  br i1 %t373, label %bb73, label %bb74
bb72:
  store i64 0, ptr %l163, !tbaa !24
  br label %bb76
bb73:
  %t375 = load i64, ptr %l27, !tbaa !24
  %t376 = load i64, ptr %l26, !tbaa !24
  %t379 = sub i64 %t375, %t376
  %t380 = load i64, ptr %l28, !tbaa !24
  %t383 = add i64 %t379, %t380
  %t385 = sub i64 %t383, 1
  %t386 = load i64, ptr %l28, !tbaa !24
  %t389 = sdiv i64 %t385, %t386
  store i64 %t389, ptr %l166, !tbaa !24
  br label %bb75
bb74:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb75
bb75:
  %t391 = load i64, ptr %l166, !tbaa !24
  store i64 %t391, ptr %l163, !tbaa !24
  br label %bb76
bb76:
  %t392 = load i64, ptr %l163, !tbaa !24
  store i64 %t392, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s22
  %t393 = load i64, ptr %l30, !tbaa !24
  %t394 = load i64, ptr %l29, !tbaa !24
  %t397 = icmp slt i64 %t393, %t394
  %t399 = xor i1 %t397, true
  br i1 %t399, label %bb78, label %bb79
bb78:
  call void @__olang_scope_close(ptr %s22)
  br label %bb86
bb79:
  br label %bb80
bb80:
  %t401 = load i64, ptr %l26, !tbaa !24
  %t402 = load i64, ptr %l30, !tbaa !24
  %t403 = load i64, ptr %l28, !tbaa !24
  %t406 = mul i64 %t402, %t403
  %t409 = add i64 %t401, %t406
  store i64 %t409, ptr %l31, !tbaa !24
  store ptr %l13, ptr %l184, !tbaa !29
  %t411 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t411, ptr %l185, !tbaa !27
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t414 = getelementptr %"compiler/emit:Emitter", ptr %t412, i32 0, i32 0
  %t415 = load ptr, ptr %t414, !tbaa !29
  store ptr %t415, ptr %l187, !tbaa !29
  %t416 = load ptr, ptr %l3, !tbaa !29
  %t417 = load i32, ptr %l24, !tbaa !23
  %t420 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t416, i32 %t417)
  store i32 %t420, ptr %l190
  br label %bb81
bb81:
  %t421 = load i64, ptr %l31, !tbaa !24
  %t422 = load ptr, ptr %l187, !tbaa !29
  %t423 = load i32, ptr %l190, !tbaa !23
  %t425 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %s22, ptr %t422, i32 %t423, i64 %t421)
  store { i64, ptr } %t425, ptr %l192
  br label %bb82
bb82:
  %t426 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t426, 0
  %t428 = extractvalue { i64, ptr } %t426, 1
  %t429 = mul i64 %t427, 1
  %t430 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t429)
  call void @llvm.memcpy.p0.p0.i64(ptr %t430, ptr %t428, i64 %t429, i1 false)
  %t431 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t430, 1
  %t434 = call { i64, ptr } @compiler_2femit_2ecWordName(ptr %s22, ptr %s22, { i64, ptr } %t432)
  store { i64, ptr } %t434, ptr %l194
  br label %bb83
bb83:
  %t435 = load i64, ptr %l23, !tbaa !24
  %t437 = add i64 %t435, 1
  %t439 = shl i64 %t437, 16
  %t440 = load i64, ptr %l31, !tbaa !24
  %t443 = or i64 %t439, %t440
  %t444 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t446 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 1
  %t448 = extractvalue { i64, ptr } %t446, 0
  %t449 = add i64 %t445, %t448
  %t450 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t452 = add i64 %t449, %t451
  %t453 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t454 = extractvalue { i64, ptr } %t453, 1
  %t455 = extractvalue { i64, ptr } %t453, 0
  %t456 = add i64 %t452, %t455
  %t457 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t461 = call i64 @__olang_fmt_i64(ptr null, i64 %t443)
  %t462 = add i64 %t459, %t461
  %t463 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t465 = add i64 %t462, %t464
  %t466 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t465)
  call void @olang_textcopy(ptr %t466, ptr %t444, i64 %t445)
  %t467 = getelementptr i8, ptr %t466, i64 %t445
  call void @olang_textcopy(ptr %t467, ptr %t447, i64 %t448)
  %t468 = getelementptr i8, ptr %t467, i64 %t448
  call void @olang_textcopy(ptr %t468, ptr %t450, i64 %t451)
  %t469 = getelementptr i8, ptr %t468, i64 %t451
  call void @olang_textcopy(ptr %t469, ptr %t454, i64 %t455)
  %t470 = getelementptr i8, ptr %t469, i64 %t455
  call void @olang_textcopy(ptr %t470, ptr %t457, i64 %t458)
  %t471 = getelementptr i8, ptr %t470, i64 %t458
  %t472 = call i64 @__olang_fmt_i64(ptr %t471, i64 %t443)
  %t473 = getelementptr i8, ptr %t471, i64 %t461
  call void @olang_textcopy(ptr %t473, ptr %t463, i64 %t464)
  %t474 = insertvalue { i64, ptr } undef, i64 %t465, 0
  %t475 = insertvalue { i64, ptr } %t474, ptr %t466, 1
  %t477 = extractvalue { i64, ptr } %t475, 0
  %t478 = extractvalue { i64, ptr } %t475, 1
  %t479 = mul i64 %t477, 1
  %t480 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t479)
  call void @llvm.memcpy.p0.p0.i64(ptr %t480, ptr %t478, i64 %t479, i1 false)
  %t481 = insertvalue { i64, ptr } undef, i64 %t477, 0
  %t482 = insertvalue { i64, ptr } %t481, ptr %t480, 1
  %t483 = load ptr, ptr %l184, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %t483, { i64, ptr } %t482)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s22)
  br label %bb85
bb85:
  %t485 = load i64, ptr %l30, !tbaa !24
  %t487 = add i64 %t485, 1
  store i64 %t487, ptr %l30, !tbaa !24
  br label %bb77
bb86:
  call void @__olang_scope_close(ptr %s18)
  br label %bb87
bb87:
  %t489 = load i64, ptr %l22, !tbaa !24
  %t491 = add i64 %t489, 1
  store i64 %t491, ptr %l22, !tbaa !24
  br label %bb59
bb88:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s16, ptr %l13, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s16)
  br label %bb90
bb90:
  store ptr %l13, ptr %l207, !tbaa !29
  %t495 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t495, ptr %l209
  br label %bb91
bb91:
  %t496 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t496, 0
  %t498 = extractvalue { i64, ptr } %t496, 1
  %t499 = mul i64 %t497, 1
  %t500 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t499)
  call void @llvm.memcpy.p0.p0.i64(ptr %t500, ptr %t498, i64 %t499, i1 false)
  %t501 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t502 = insertvalue { i64, ptr } %t501, ptr %t500, 1
  %t503 = load ptr, ptr %l207, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t503, { i64, ptr } %t502)
  br label %bb92
bb92:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l13, { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d21, i32 0, i32 1) })
  br label %bb93
bb93:
  %t507 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l13)
  store { i64, ptr } %t507, ptr %l213
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s0)
  %t508 = load { i64, ptr }, ptr %l213, !tbaa !27
  store { i64, ptr } %t508, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l12 = alloca i64
  %l15 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 67
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l12
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l15
  br label %bb6
bb6:
  %t26 = load i64, ptr %l12, !tbaa !24
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp eq i64 %t26, %t27
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamSpelled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"compiler/cabi:Way"
  %l8 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l30 = alloca i32
  %l33 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l42 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i32
  %l50 = alloca i1
  %l51 = alloca i1
  %l52 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i32
  %l59 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l69 = alloca i1
  %l77 = alloca %"compiler/cabi:Way"
  %l79 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca i1
  %l88 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i64
  %l107 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load i32, ptr %l13, !tbaa !23
  store i32 %t11, ptr %l5, !tbaa !23
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load i32, ptr %l5, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l16
  br label %bb2
bb2:
  %t17 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t19 = trunc i64 21 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  store i1 %a3, ptr %l19, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l19, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l2, !tbaa !29
  store ptr %t25, ptr %l21, !tbaa !29
  %t26 = load ptr, ptr %l21, !tbaa !29
  %t27 = getelementptr %"compiler/cabi:Regs", ptr %t26, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = sub i64 %t28, 2
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t33 = getelementptr %"compiler/cabi:Regs", ptr %t32, i32 0, i32 0
  store i64 %t30, ptr %t33, !tbaa !24
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t34, ptr %l25, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l26, !tbaa !24
  %t37 = load i64, ptr %l26, !tbaa !24
  %t38 = mul i64 %t37, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l27, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = mul i64 %t46, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %t45, i64 %t47, i1 false)
  %t48 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t48, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t49, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t51 = load i32, ptr %l5, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l30
  br label %bb9
bb9:
  %t55 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t57 = trunc i64 21 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb10, label %bb11
bb10:
  %t60 = load ptr, ptr %l2, !tbaa !29
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load ptr, ptr %l33, !tbaa !29
  %t62 = getelementptr %"compiler/cabi:Regs", ptr %t61, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  %t65 = sub i64 %t63, 1
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = getelementptr %"compiler/cabi:Regs", ptr %t67, i32 0, i32 0
  store i64 %t65, ptr %t68, !tbaa !24
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t69, ptr %l37, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  store i64 %t71, ptr %l38, !tbaa !24
  %t72 = load i64, ptr %l38, !tbaa !24
  %t73 = mul i64 %t72, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l39, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l38, !tbaa !24
  %t82 = mul i64 %t81, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  %t83 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t83, ptr %l37, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t84 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t84, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t86 = load i32, ptr %l5, !tbaa !23
  %t89 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t85, i32 %t86)
  store i1 %t89, ptr %l42
  br label %bb13
bb13:
  %t90 = load i1, ptr %l42, !tbaa !21
  br i1 %t90, label %bb14, label %bb15
bb14:
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t92 = load i32, ptr %l5, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l46
  br label %bb16
bb15:
  %t96 = load i32, ptr %l5, !tbaa !23
  store i32 %t96, ptr %l43, !tbaa !23
  br label %bb17
bb16:
  %t98 = load i32, ptr %l46, !tbaa !23
  store i32 %t98, ptr %l43, !tbaa !23
  br label %bb17
bb17:
  %t99 = load i32, ptr %l43, !tbaa !23
  store i32 %t99, ptr %l6, !tbaa !23
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t101 = load i32, ptr %l5, !tbaa !23
  %t104 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t100, i32 %t101)
  store i1 %t104, ptr %l50
  br label %bb18
bb18:
  %t105 = load i1, ptr %l50, !tbaa !21
  br i1 %t105, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb23
bb20:
  %t106 = load ptr, ptr %l4, !tbaa !29
  store ptr %t106, ptr %l52, !tbaa !29
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t108 = load i32, ptr %l6, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l55
  br label %bb21
bb21:
  %t112 = load ptr, ptr %l52, !tbaa !29
  %t113 = load i32, ptr %l55, !tbaa !23
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t114, ptr %l56
  br label %bb22
bb22:
  %t115 = load i32, ptr %l56, !range !{i32 0, i32 33}
  %t117 = trunc i64 19 to i32
  %t118 = icmp eq i32 %t115, %t117
  store i1 %t118, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t120 = load i1, ptr %l51, !tbaa !21
  br i1 %t120, label %bb24, label %bb25
bb24:
  %t121 = load ptr, ptr %l2, !tbaa !29
  store ptr %t121, ptr %l59, !tbaa !29
  %t122 = load ptr, ptr %l59, !tbaa !29
  %t123 = getelementptr %"compiler/cabi:Regs", ptr %t122, i32 0, i32 0
  %t124 = load i64, ptr %t123, !tbaa !24
  %t126 = sub i64 %t124, 1
  %t128 = load ptr, ptr %l59, !tbaa !29
  %t129 = getelementptr %"compiler/cabi:Regs", ptr %t128, i32 0, i32 0
  store i64 %t126, ptr %t129, !tbaa !24
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t130, ptr %l63, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l64, !tbaa !24
  %t133 = load i64, ptr %l64, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l65, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l64, !tbaa !24
  %t143 = mul i64 %t142, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %t141, i64 %t143, i1 false)
  %t144 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t144, ptr %l63, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t145 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t145, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/emit:Emitter", ptr %t146, i32 0, i32 0
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load i32, ptr %l1, !tbaa !23
  %t153 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t149, i32 %t150)
  store i1 %t153, ptr %l69
  br label %bb27
bb27:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/emit:Emitter", ptr %t154, i32 0, i32 3
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/emit:Emitter", ptr %t158, i32 0, i32 48
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t162 = load i32, ptr %l1, !tbaa !23
  %t163 = load ptr, ptr %l2, !tbaa !29
  %t165 = inttoptr i64 0 to ptr
  %t170 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v0, ptr %v1, ptr %s0, ptr %t165, ptr %t157, { i64, ptr } %t161, i32 %t162, ptr %t163)
  store %"compiler/cabi:Way" %t170, ptr %l77
  br label %bb28
bb28:
  %t171 = load %"compiler/cabi:Way", ptr %l77
  store %"compiler/cabi:Way" %t171, ptr %l7
  %t172 = getelementptr %"compiler/cabi:Way", ptr %l7, i32 0, i32 0
  %t173 = load i32, ptr %t172, !range !{i32 0, i32 5}
  store i32 %t173, ptr %l8
  %t175 = load i32, ptr %l8, !range !{i32 0, i32 5}
  %t177 = trunc i64 0 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb37
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i32, ptr %l1, !tbaa !23
  %t184 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s4, ptr %t180, i32 %t181)
  store { i64, ptr } %t184, ptr %l84
  br label %bb32
bb32:
  %t185 = getelementptr %"compiler/cabi:Way", ptr %l7, i32 0, i32 4
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t186, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t188, ptr %l86
  br label %bb33
bb33:
  %t189 = load i1, ptr %l86, !tbaa !21
  %t190 = xor i1 %t189, true
  br i1 %t190, label %bb34, label %bb35
bb34:
  %t192 = getelementptr %"compiler/cabi:Way", ptr %l7, i32 0, i32 4
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t197 = extractvalue { i64, ptr } %t193, 1
  %t198 = extractvalue { i64, ptr } %t193, 0
  %t199 = add i64 %t195, %t198
  %t200 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t199)
  call void @olang_textcopy(ptr %t200, ptr %t194, i64 %t195)
  %t201 = getelementptr i8, ptr %t200, i64 %t195
  call void @olang_textcopy(ptr %t201, ptr %t197, i64 %t198)
  %t202 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t200, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = extractvalue { i64, ptr } %t203, 1
  %t207 = mul i64 %t205, 1
  %t208 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t207)
  call void @llvm.memcpy.p0.p0.i64(ptr %t208, ptr %t206, i64 %t207, i1 false)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  store { i64, ptr } %t210, ptr %l88, !tbaa !27
  br label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l88, !tbaa !27
  br label %bb36
bb36:
  %t212 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t215 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t218 = add i64 %t214, %t217
  %t219 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t218)
  call void @olang_textcopy(ptr %t219, ptr %t213, i64 %t214)
  %t220 = getelementptr i8, ptr %t219, i64 %t214
  call void @olang_textcopy(ptr %t220, ptr %t216, i64 %t217)
  %t221 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t219, 1
  store { i64, ptr } %t222, ptr %l79, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb37:
  %t224 = load i32, ptr %l8, !range !{i32 0, i32 5}
  %t226 = trunc i64 1 to i32
  %t227 = icmp eq i32 %t224, %t226
  br i1 %t227, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t230 = call { i64, ptr } @compiler_2fcabi_2ePartsList(ptr %s0, ptr %v2, ptr %l7)
  store { i64, ptr } %t230, ptr %l96
  br label %bb41
bb41:
  %t231 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t231, ptr %l79, !tbaa !27
  br label %bb54
bb42:
  %t232 = load i32, ptr %l8, !range !{i32 0, i32 5}
  %t234 = trunc i64 2 to i32
  %t235 = icmp eq i32 %t232, %t234
  br i1 %t235, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb49
bb45:
  store %olang.scope zeroinitializer, ptr %s8
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i32, ptr %l1, !tbaa !23
  %t241 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s8, ptr %t237, i32 %t238)
  store { i64, ptr } %t241, ptr %l101
  br label %bb46
bb46:
  %t242 = load ptr, ptr %l4, !tbaa !29
  %t243 = load i32, ptr %l1, !tbaa !23
  %t246 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t242, i32 %t243)
  store i64 %t246, ptr %l104
  br label %bb47
bb47:
  %t247 = load i64, ptr %l104, !tbaa !24
  %t248 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t247, i64 8)
  store i64 %t248, ptr %l105
  br label %bb48
bb48:
  %t249 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t251 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = add i64 %t250, %t253
  %t255 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t257 = add i64 %t254, %t256
  %t258 = load i64, ptr %l105, !tbaa !24
  %t259 = call i64 @__olang_fmt_i64(ptr null, i64 %t258)
  %t260 = add i64 %t257, %t259
  %t261 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t260)
  call void @olang_textcopy(ptr %t261, ptr %t249, i64 %t250)
  %t262 = getelementptr i8, ptr %t261, i64 %t250
  call void @olang_textcopy(ptr %t262, ptr %t252, i64 %t253)
  %t263 = getelementptr i8, ptr %t262, i64 %t253
  call void @olang_textcopy(ptr %t263, ptr %t255, i64 %t256)
  %t264 = getelementptr i8, ptr %t263, i64 %t256
  %t265 = call i64 @__olang_fmt_i64(ptr %t264, i64 %t258)
  %t266 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t261, 1
  store { i64, ptr } %t267, ptr %l79, !tbaa !27
  call void @__olang_scope_close(ptr %s8)
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t269, ptr %l79, !tbaa !27
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_2854570d7fadf599_61afc1034d008305)
  unreachable
bb54:
  %t271 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  store i64 %t272, ptr %l109, !tbaa !24
  %t273 = load i64, ptr %l109, !tbaa !24
  %t274 = mul i64 %t273, 1
  %t275 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t274)
  %t276 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  store { i64, ptr } %t277, ptr %l110, !tbaa !27
  %t278 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = load i64, ptr %l109, !tbaa !24
  %t283 = mul i64 %t282, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t279, ptr %t281, i64 %t283, i1 false)
  %t284 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t284, ptr %l79, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t285 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t285, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFile(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l16 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i64
  %l35 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 64
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i1, ptr %l8, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 64
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t11, i64 %t12)
  %t16 = extractvalue { i32, i64 } %t15, 1
  %t17 = extractvalue { i32, i64 } %t15, 0
  store i32 %t17, ptr %l14
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb5, label %ok.19, !prof !99
ok.19:
  store i64 %t16, ptr %l13
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t20 = load i64, ptr %l13, !tbaa !24
  store i64 %t20, ptr %l9, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t21 = load i64, ptr %l9, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l16
  br label %bb9
bb9:
  %t25 = load i64, ptr %l16, !tbaa !24
  store i64 %t25, ptr %l2, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/emit:Emitter", ptr %t26, i32 0, i32 64
  %t29 = load i64, ptr %l1, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t28, i64 %t29, i64 %t30)
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/emit:Emitter", ptr %t34, i32 0, i32 2
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %s0, ptr %t37, i64 %t38)
  store { i64, ptr } %t41, ptr %l24
  br label %bb11
bb11:
  %t42 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t42, ptr %l3, !tbaa !27
  %t43 = call { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %s0)
  %t44 = extractvalue { i32, { i64, ptr } } %t43, 1
  %t45 = extractvalue { i32, { i64, ptr } } %t43, 0
  store i32 %t45, ptr %l27
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb13, label %ok.47, !prof !99
ok.47:
  store { i64, ptr } %t44, ptr %l26
  br label %bb12
bb12:
  %t48 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t48, ptr %l25, !tbaa !27
  br label %bb17
bb13:
  %t49 = load i32, ptr %l27, !tbaa !23
  %t50 = ashr i32 %t49, 16
  %t52 = icmp eq i32 %t50, 1
  store i1 %t52, ptr %l29, !tbaa !21
  %t53 = load i32, ptr %l27, !tbaa !23
  %t54 = ashr i32 %t53, 16
  %t56 = icmp eq i32 %t54, 1
  br i1 %t56, label %bb14, label %bb15
bb14:
  call void @__olang_errpay_pop()
  br label %bb15
bb15:
  br label %bb16
bb16:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb17
bb17:
  %t58 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t58, ptr %l4, !tbaa !27
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l32, !tbaa !29
  %t60 = load i64, ptr %l2, !tbaa !24
  store i64 %t60, ptr %l33, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t63 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s0, ptr %s0, { i64, ptr } %t61)
  store { i64, ptr } %t63, ptr %l35
  br label %bb18
bb18:
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t66 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s0, ptr %s0, { i64, ptr } %t64)
  store { i64, ptr } %t66, ptr %l37
  br label %bb19
bb19:
  %t67 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t69 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = add i64 %t68, %t71
  %t73 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t75 = add i64 %t72, %t74
  %t76 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t67, i64 %t68)
  %t84 = getelementptr i8, ptr %t83, i64 %t68
  call void @olang_textcopy(ptr %t84, ptr %t70, i64 %t71)
  %t85 = getelementptr i8, ptr %t84, i64 %t71
  call void @olang_textcopy(ptr %t85, ptr %t73, i64 %t74)
  %t86 = getelementptr i8, ptr %t85, i64 %t74
  call void @olang_textcopy(ptr %t86, ptr %t77, i64 %t78)
  %t87 = getelementptr i8, ptr %t86, i64 %t78
  call void @olang_textcopy(ptr %t87, ptr %t80, i64 %t81)
  %t88 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t83, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l32, !tbaa !29
  %t98 = load i64, ptr %l33, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t97, i64 %t98, { i64, ptr } %t96)
  br label %bb20
bb20:
  %t100 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgGenFile(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 62
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l6
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 62
  store i64 %t12, ptr %t14, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/emit:Emitter", ptr %t16, i32 0, i32 62
  %t19 = load i64, ptr %t18, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s1, ptr %t15, i64 %t19, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:Emitter", ptr %t22, i32 0, i32 62
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclTypes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l42 = alloca i64
  %l44 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l51 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i32
  %l65 = alloca i1
  %l68 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2erefsIn(ptr %v1, ptr %s0, { i64, ptr } %t1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t6, ptr %l15
  br label %bb2
bb2:
  %t7 = load i64, ptr %l15, !tbaa !24
  store i64 %t7, ptr %l6, !tbaa !24
  store i64 3, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l7, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l7, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l7, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l19, !tbaa !24
  store i64 %t35, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l9, !tbaa !24
  %t37 = load i64, ptr %l8, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb10, label %bb11
bb10:
  br label %bb38
bb11:
  br label %bb12
bb12:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l9, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l10, !tbaa !24
  %t54 = load i64, ptr %l10, !tbaa !24
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l4, i64 %t54)
  store i64 %t57, ptr %l42
  br label %bb13
bb13:
  %t58 = load i64, ptr %l42, !tbaa !24
  %t59 = icmp ne i64 %t58, 1
  br i1 %t59, label %bb14, label %bb15
bb14:
  br label %bb37
bb15:
  br label %bb16
bb16:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/emit:Emitter", ptr %t61, i32 0, i32 46
  store ptr %t63, ptr %l46, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t64, ptr %l47, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  %t67 = add i64 %t65, 1
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l4, i64 %t67)
  store i64 %t70, ptr %l51
  br label %bb17
bb17:
  %t71 = load i64, ptr %l10, !tbaa !24
  %t73 = add i64 %t71, 2
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l4, i64 %t73)
  store i64 %t76, ptr %l55
  br label %bb18
bb18:
  %t77 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  store i64 %t78, ptr %l56, !tbaa !24
  %t79 = load i64, ptr %l51, !tbaa !24
  %t80 = icmp sge i64 %t79, 0
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = load i64, ptr %l51, !tbaa !24
  %t83 = load i64, ptr %l55, !tbaa !24
  %t84 = icmp sle i64 %t82, %t83
  br i1 %t84, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_84dc5702af008bfa_68e8ae64d289b3ce)
  unreachable
bb21:
  %t86 = load i64, ptr %l55, !tbaa !24
  %t87 = load i64, ptr %l56, !tbaa !24
  %t88 = icmp sle i64 %t86, %t87
  br i1 %t88, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_84dc5702af008bfa_68e8ae64d289b3ce)
  unreachable
bb23:
  %t90 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l51, !tbaa !24
  %t93 = load i64, ptr %l55, !tbaa !24
  %t94 = getelementptr i8, ptr %t91, i64 %t92
  %t95 = sub i64 %t93, %t92
  %t96 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t94, 1
  %t98 = load ptr, ptr %l46, !tbaa !29
  %t100 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t98, { i64, ptr } %t97)
  %t101 = extractvalue { i32, i64 } %t100, 1
  %t102 = extractvalue { i32, i64 } %t100, 0
  store i32 %t102, ptr %l62
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb26, label %ok.104, !prof !99
ok.104:
  store i64 %t101, ptr %l61
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_84dc5702af008bfa_68e8ae64d289b3ce)
  unreachable
bb25:
  %t105 = load i64, ptr %l61, !tbaa !24
  store i64 %t105, ptr %l44, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb28
bb28:
  %t106 = load i64, ptr %l44, !tbaa !24
  store i64 %t106, ptr %l11, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t109 = icmp sge i64 %t107, 0
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t112 = load i64, ptr %l11, !tbaa !24
  %t115 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v3, ptr %t111, i64 %t112)
  store i1 %t115, ptr %l68
  br label %bb31
bb30:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb32
bb31:
  %t116 = load i1, ptr %l68, !tbaa !21
  %t117 = xor i1 %t116, true
  store i1 %t117, ptr %l65, !tbaa !21
  br label %bb32
bb32:
  %t119 = load i1, ptr %l65, !tbaa !21
  br i1 %t119, label %bb33, label %bb34
bb33:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i64, ptr %l11, !tbaa !24
  %t123 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewantType(ptr %v0, ptr %v2, ptr %v3, ptr %t120, i64 %t121, ptr %a2, ptr %t123)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l9, !tbaa !24
  br label %bb9
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l37 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %l1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %l13, !tbaa !24
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t7)
  store i64 %t9, ptr %l15
  br label %bb3
bb3:
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = load i64, ptr %l15, !tbaa !24
  %t12 = icmp slt i64 %t10, %t11
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb4, label %bb5
bb4:
  br label %bb31
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l20
  br label %bb7
bb7:
  %t21 = load i64, ptr %l20, !tbaa !24
  store i64 %t21, ptr %l5, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:Emitter", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 60
  store ptr %t27, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l7, !tbaa !24
  store i64 %t29, ptr %l24, !tbaa !24
  %t30 = load ptr, ptr %l6, !tbaa !29
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l26
  br label %bb9
bb9:
  %t33 = load i64, ptr %l24, !tbaa !24
  %t34 = load i64, ptr %l26, !tbaa !24
  %t35 = icmp slt i64 %t33, %t34
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb10, label %bb11
bb10:
  br label %bb29
bb11:
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l6, !tbaa !29
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l31
  br label %bb13
bb13:
  %t44 = load i64, ptr %l31, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/emit:Emitter", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/lower:Lowerer", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = load i64, ptr %l8, !tbaa !24
  %t56 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t51, i64 %t53)
  store ptr %t56, ptr %l37
  br label %bb14
bb14:
  %t57 = load ptr, ptr %l37, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Body", ptr %t57, i32 0, i32 1
  %t60 = load { i64, [2 x i64] }, ptr %t59
  store { i64, [2 x i64] } %t60, ptr %l9
  %t62 = load { i64, [2 x i64] }, ptr %l9
  %t64 = extractvalue { i64, [2 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 6
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t67 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t68 = getelementptr { i64, i32 }, ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %t68
  store i64 %t69, ptr %l10, !tbaa !24
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = icmp eq i64 %t71, %t72
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %lp2
  %t78 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t77, i64 %t78)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_5ad0f5036011b2cd_7d6f5911e17dc851)
  unreachable
bb27:
  br label %bb28
bb28:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l7, !tbaa !24
  br label %bb8
bb29:
  br label %bb30
bb30:
  %t85 = load i64, ptr %l4, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l4, !tbaa !24
  br label %bb2
bb31:
  %t89 = load ptr, ptr %lp2
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t89
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupRank(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 79
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %t4, i64 %a1)
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load i64, ptr %l7, !tbaa !24
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t9, i64 %t10)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l9
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l8
  br label %bb2
bb2:
  %t16 = load i64, ptr %l8, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l2, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6, { i64, ptr } %a7) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i1
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i8
  %l31 = alloca %"std/prelude/text:StringBuilder"
  %l32 = alloca ptr
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l50 = alloca i32
  %l54 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l70 = alloca i64
  %l73 = alloca i64
  %l100 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l113 = alloca i64
  %l116 = alloca i64
  %l152 = alloca ptr
  %l154 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l165 = alloca i1
  %l166 = alloca { i64, ptr }
  %l168 = alloca i1
  %l170 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store { i64, ptr } %a6, ptr %l6
  store { i64, ptr } %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l8, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %t6, i32 %t7)
  br label %bb1
bb1:
  %t10 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t10, ptr %l31
  br label %bb2
bb2:
  %t11 = load %"std/prelude/text:StringBuilder", ptr %l31
  store %"std/prelude/text:StringBuilder" %t11, ptr %l9
  store ptr %l9, ptr %l32, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t14, ptr %l34
  br label %bb3
bb3:
  %t15 = load i1, ptr %l34, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb6
bb5:
  %t16 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t17 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t20 = extractvalue { i64, ptr } %t16, 1
  %t21 = extractvalue { i64, ptr } %t16, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t17, i64 %t18)
  %t27 = getelementptr i8, ptr %t26, i64 %t18
  call void @olang_textcopy(ptr %t27, ptr %t20, i64 %t21)
  %t28 = getelementptr i8, ptr %t27, i64 %t21
  call void @olang_textcopy(ptr %t28, ptr %t23, i64 %t24)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t26, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = extractvalue { i64, ptr } %t30, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l35, !tbaa !27
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l8, !tbaa !29
  %t40 = load i32, ptr %l2, !tbaa !23
  %t42 = inttoptr i64 0 to ptr
  %t45 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t42, ptr %t39, i32 %t40)
  store { i64, ptr } %t45, ptr %l42
  br label %bb7
bb7:
  %t47 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = add i64 %t49, %t52
  %t54 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t58 = extractvalue { i64, ptr } %a3, 1
  %t59 = extractvalue { i64, ptr } %a3, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t48, i64 %t49)
  %t65 = getelementptr i8, ptr %t64, i64 %t49
  call void @olang_textcopy(ptr %t65, ptr %t51, i64 %t52)
  %t66 = getelementptr i8, ptr %t65, i64 %t52
  call void @olang_textcopy(ptr %t66, ptr %t54, i64 %t55)
  %t67 = getelementptr i8, ptr %t66, i64 %t55
  call void @olang_textcopy(ptr %t67, ptr %t58, i64 %t59)
  %t68 = getelementptr i8, ptr %t67, i64 %t59
  call void @olang_textcopy(ptr %t68, ptr %t61, i64 %t62)
  %t69 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t64, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = extractvalue { i64, ptr } %t70, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load ptr, ptr %l32, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t78, { i64, ptr } %t77)
  br label %bb8
bb8:
  store i1 true, ptr %l10, !tbaa !21
  br i1 %a5, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l9, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb12
bb12:
  %t83 = load ptr, ptr %l8, !tbaa !29
  %t84 = load i32, ptr %l2, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l50
  br label %bb13
bb13:
  %t88 = load i32, ptr %l50, !tbaa !23
  store i32 %t88, ptr %l11, !tbaa !23
  %t89 = load i32, ptr %l11, !tbaa !23
  %t90 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t93 = icmp ne i32 %t89, %t90
  br i1 %t93, label %bb14, label %bb15
bb14:
  %t95 = load i32, ptr %l11, !tbaa !23
  %t96 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t99 = icmp ne i32 %t95, %t96
  store i1 %t99, ptr %l54, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb16
bb16:
  %t101 = load i1, ptr %l54, !tbaa !21
  br i1 %t101, label %bb17, label %bb18
bb17:
  %t102 = load ptr, ptr %l8, !tbaa !29
  %t103 = load i32, ptr %l11, !tbaa !23
  %t106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t106, ptr %l61
  br label %bb19
bb18:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb20
bb19:
  %t107 = load i1, ptr %l61, !tbaa !21
  store i1 %t107, ptr %l58, !tbaa !21
  br label %bb20
bb20:
  %t108 = load i1, ptr %l58, !tbaa !21
  br i1 %t108, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t109 = load i1, ptr %l10, !tbaa !21
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb23, label %bb24
bb22:
  br label %bb28
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb26
bb26:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l9, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb27
bb27:
  store i1 false, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb28:
  store i64 0, ptr %l12, !tbaa !24
  store i64 %a4, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t117 = load i64, ptr %l13, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = icmp sgt i64 %t117, %t118
  br i1 %t121, label %bb29, label %bb30
bb29:
  %t123 = load i64, ptr %l14, !tbaa !24
  %t125 = icmp sgt i64 %t123, 0
  br i1 %t125, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb34
bb31:
  %t127 = load i64, ptr %l13, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = sub i64 %t127, %t128
  %t132 = load i64, ptr %l14, !tbaa !24
  %t135 = add i64 %t131, %t132
  %t137 = sub i64 %t135, 1
  %t138 = load i64, ptr %l14, !tbaa !24
  %t141 = sdiv i64 %t137, %t138
  store i64 %t141, ptr %l73, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb33
bb33:
  %t143 = load i64, ptr %l73, !tbaa !24
  store i64 %t143, ptr %l70, !tbaa !24
  br label %bb34
bb34:
  %t144 = load i64, ptr %l70, !tbaa !24
  store i64 %t144, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t145 = load i64, ptr %l16, !tbaa !24
  %t146 = load i64, ptr %l15, !tbaa !24
  %t149 = icmp slt i64 %t145, %t146
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb37:
  br label %bb38
bb38:
  %t153 = load i64, ptr %l12, !tbaa !24
  %t154 = load i64, ptr %l16, !tbaa !24
  %t155 = load i64, ptr %l14, !tbaa !24
  %t158 = mul i64 %t154, %t155
  %t161 = add i64 %t153, %t158
  store i64 %t161, ptr %l17, !tbaa !24
  %t163 = load i1, ptr %l10, !tbaa !21
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_scope_close(ptr %s8)
  br label %bb42
bb42:
  %t168 = load i64, ptr %l17, !tbaa !24
  %t169 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t172 = call i64 @__olang_fmt_i64(ptr null, i64 %t168)
  %t173 = add i64 %t170, %t172
  %t174 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t169, i64 %t170)
  %t175 = getelementptr i8, ptr %t174, i64 %t170
  %t176 = call i64 @__olang_fmt_i64(ptr %t175, i64 %t168)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t174, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = extractvalue { i64, ptr } %t178, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l9, { i64, ptr } %t185)
  br label %bb43
bb43:
  store i1 false, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb44:
  %t188 = load i64, ptr %l16, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l16, !tbaa !24
  br label %bb35
bb45:
  %t192 = load ptr, ptr %l8, !tbaa !29
  store ptr %t192, ptr %l100, !tbaa !29
  %t193 = load ptr, ptr %l8, !tbaa !29
  %t194 = load i32, ptr %l2, !tbaa !23
  %t197 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t193, i32 %t194)
  store i32 %t197, ptr %l103
  br label %bb46
bb46:
  %t198 = load ptr, ptr %l100, !tbaa !29
  %t199 = load i32, ptr %l103, !tbaa !23
  %t200 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t198, i32 %t199)
  store { i64, ptr } %t200, ptr %l104
  br label %bb47
bb47:
  %t201 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t201, ptr %l18, !tbaa !27
  %t202 = load ptr, ptr %l8, !tbaa !29
  %t203 = load i32, ptr %l2, !tbaa !23
  %t206 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t202, i32 %t203)
  store { i64, ptr } %t206, ptr %l107
  br label %bb48
bb48:
  %t207 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t207, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t208 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 0
  store i64 %t210, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t212 = load i64, ptr %l21, !tbaa !24
  %t213 = load i64, ptr %l20, !tbaa !24
  %t216 = icmp sgt i64 %t212, %t213
  br i1 %t216, label %bb49, label %bb50
bb49:
  %t218 = load i64, ptr %l22, !tbaa !24
  %t220 = icmp sgt i64 %t218, 0
  br i1 %t220, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb54
bb51:
  %t222 = load i64, ptr %l21, !tbaa !24
  %t223 = load i64, ptr %l20, !tbaa !24
  %t226 = sub i64 %t222, %t223
  %t227 = load i64, ptr %l22, !tbaa !24
  %t230 = add i64 %t226, %t227
  %t232 = sub i64 %t230, 1
  %t233 = load i64, ptr %l22, !tbaa !24
  %t236 = sdiv i64 %t232, %t233
  store i64 %t236, ptr %l116, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb53
bb53:
  %t238 = load i64, ptr %l116, !tbaa !24
  store i64 %t238, ptr %l113, !tbaa !24
  br label %bb54
bb54:
  %t239 = load i64, ptr %l113, !tbaa !24
  store i64 %t239, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb55
bb55:
  %t240 = load i64, ptr %l24, !tbaa !24
  %t241 = load i64, ptr %l23, !tbaa !24
  %t244 = icmp slt i64 %t240, %t241
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb56, label %bb57
bb56:
  br label %bb81
bb57:
  br label %bb58
bb58:
  %t248 = load i64, ptr %l20, !tbaa !24
  %t249 = load i64, ptr %l24, !tbaa !24
  %t250 = load i64, ptr %l22, !tbaa !24
  %t253 = mul i64 %t249, %t250
  %t256 = add i64 %t248, %t253
  store i64 %t256, ptr %l25, !tbaa !24
  %t258 = load i1, ptr %l10, !tbaa !21
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s13
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_scope_close(ptr %s13)
  br label %bb62
bb62:
  store i1 false, ptr %l10, !tbaa !21
  %t263 = load i64, ptr %l25, !tbaa !24
  %t265 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr i8, ptr %t266, i64 %t263
  %t268 = load i8, ptr %t267, !tbaa !32
  store i8 %t268, ptr %l26, !tbaa !22
  %t270 = load i8, ptr %l26, !tbaa !22
  %t272 = icmp eq i8 %t270, 109
  br i1 %t272, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb67
bb65:
  store %olang.scope zeroinitializer, ptr %s14
  %t274 = load i64, ptr %l25, !tbaa !24
  %t275 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t278 = call i64 @__olang_fmt_i64(ptr null, i64 %t274)
  %t279 = add i64 %t276, %t278
  %t280 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t279)
  call void @olang_textcopy(ptr %t280, ptr %t275, i64 %t276)
  %t281 = getelementptr i8, ptr %t280, i64 %t276
  %t282 = call i64 @__olang_fmt_i64(ptr %t281, i64 %t274)
  %t283 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t280, 1
  %t286 = extractvalue { i64, ptr } %t284, 0
  %t287 = extractvalue { i64, ptr } %t284, 1
  %t288 = mul i64 %t286, 1
  %t289 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t288)
  call void @llvm.memcpy.p0.p0.i64(ptr %t289, ptr %t287, i64 %t288, i1 false)
  %t290 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr %t289, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l9, { i64, ptr } %t291)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s14)
  br label %bb79
bb67:
  %t294 = load i8, ptr %l26, !tbaa !22
  %t296 = icmp eq i8 %t294, 115
  br i1 %t296, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb72
bb70:
  store %olang.scope zeroinitializer, ptr %s16
  %t298 = load i64, ptr %l25, !tbaa !24
  %t299 = load i64, ptr %l25, !tbaa !24
  %t300 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t301 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t303 = call i64 @__olang_fmt_i64(ptr null, i64 %t298)
  %t304 = add i64 %t301, %t303
  %t305 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t306 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t307 = add i64 %t304, %t306
  %t309 = call i64 @__olang_fmt_i64(ptr null, i64 %t299)
  %t310 = add i64 %t307, %t309
  %t311 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t312 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t313 = add i64 %t310, %t312
  %t314 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t313)
  call void @olang_textcopy(ptr %t314, ptr %t300, i64 %t301)
  %t315 = getelementptr i8, ptr %t314, i64 %t301
  %t316 = call i64 @__olang_fmt_i64(ptr %t315, i64 %t298)
  %t317 = getelementptr i8, ptr %t315, i64 %t303
  call void @olang_textcopy(ptr %t317, ptr %t305, i64 %t306)
  %t318 = getelementptr i8, ptr %t317, i64 %t306
  %t319 = call i64 @__olang_fmt_i64(ptr %t318, i64 %t299)
  %t320 = getelementptr i8, ptr %t318, i64 %t309
  call void @olang_textcopy(ptr %t320, ptr %t311, i64 %t312)
  %t321 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t314, 1
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t325 = extractvalue { i64, ptr } %t322, 1
  %t326 = mul i64 %t324, 1
  %t327 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t326)
  call void @llvm.memcpy.p0.p0.i64(ptr %t327, ptr %t325, i64 %t326, i1 false)
  %t328 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t327, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s16, ptr %l9, { i64, ptr } %t329)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s16)
  br label %bb79
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb78
bb75:
  store %olang.scope zeroinitializer, ptr %s18
  store ptr %l9, ptr %l152, !tbaa !29
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t333, ptr %l154, !tbaa !27
  %t334 = load i64, ptr %l25, !tbaa !24
  %t336 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr i32, ptr %t337, i64 %t334
  %t339 = load i32, ptr %t338, !tbaa !33
  %t342 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s18, ptr %t332, i32 %t339)
  store { i64, ptr } %t342, ptr %l157
  br label %bb76
bb76:
  %t343 = load i64, ptr %l25, !tbaa !24
  %t344 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 1
  %t346 = extractvalue { i64, ptr } %t344, 0
  %t347 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t349 = add i64 %t346, %t348
  %t351 = call i64 @__olang_fmt_i64(ptr null, i64 %t343)
  %t352 = add i64 %t349, %t351
  %t353 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t352)
  call void @olang_textcopy(ptr %t353, ptr %t345, i64 %t346)
  %t354 = getelementptr i8, ptr %t353, i64 %t346
  call void @olang_textcopy(ptr %t354, ptr %t347, i64 %t348)
  %t355 = getelementptr i8, ptr %t354, i64 %t348
  %t356 = call i64 @__olang_fmt_i64(ptr %t355, i64 %t343)
  %t357 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t353, 1
  %t360 = extractvalue { i64, ptr } %t358, 0
  %t361 = extractvalue { i64, ptr } %t358, 1
  %t362 = mul i64 %t360, 1
  %t363 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t362)
  call void @llvm.memcpy.p0.p0.i64(ptr %t363, ptr %t361, i64 %t362, i1 false)
  %t364 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr %t363, 1
  %t366 = load ptr, ptr %l152, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %t366, { i64, ptr } %t365)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s18)
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_32ecc2f0b2e54909_486ad1b7ea10ca75)
  unreachable
bb79:
  br label %bb80
bb80:
  %t368 = load i64, ptr %l24, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l24, !tbaa !24
  br label %bb55
bb81:
  store ptr %l9, ptr %l163, !tbaa !29
  %t372 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t374 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t372, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t374, ptr %l165
  br label %bb82
bb82:
  %t375 = load i1, ptr %l165, !tbaa !21
  br i1 %t375, label %bb83, label %bb84
bb83:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l166, !tbaa !27
  br label %bb90
bb84:
  %t376 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t378 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t376, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t378, ptr %l168
  br label %bb85
bb85:
  %t379 = load i1, ptr %l168, !tbaa !21
  %t380 = xor i1 %t379, true
  br i1 %t380, label %bb86, label %bb87
bb86:
  %t382 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t382, ptr %l170, !tbaa !27
  br label %bb89
bb87:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t388 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2einlining(ptr %v0, ptr %v3, ptr %t384, { i64, [2 x i64] } %a1)
  store { i64, ptr } %t388, ptr %l174
  br label %bb88
bb88:
  %t389 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  store { i64, ptr } %t395, ptr %l170, !tbaa !27
  br label %bb89
bb89:
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t399 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t400 = extractvalue { i64, ptr } %t399, 1
  %t401 = extractvalue { i64, ptr } %t399, 0
  %t402 = add i64 %t398, %t401
  %t403 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t404 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t405 = add i64 %t402, %t404
  %t406 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t405)
  call void @olang_textcopy(ptr %t406, ptr %t397, i64 %t398)
  %t407 = getelementptr i8, ptr %t406, i64 %t398
  call void @olang_textcopy(ptr %t407, ptr %t400, i64 %t401)
  %t408 = getelementptr i8, ptr %t407, i64 %t401
  call void @olang_textcopy(ptr %t408, ptr %t403, i64 %t404)
  %t409 = insertvalue { i64, ptr } undef, i64 %t405, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t406, 1
  %t412 = extractvalue { i64, ptr } %t410, 0
  %t413 = extractvalue { i64, ptr } %t410, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  store { i64, ptr } %t417, ptr %l166, !tbaa !27
  br label %bb90
bb90:
  %t419 = load ptr, ptr %l163, !tbaa !29
  %t420 = load { i64, ptr }, ptr %l166, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t419, { i64, ptr } %t420)
  br label %bb91
bb91:
  %t422 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v4, ptr %l9)
  store { i64, ptr } %t422, ptr %l179
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  %t423 = load { i64, ptr }, ptr %l179, !tbaa !27
  store { i64, ptr } %t423, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGlobalInit(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l4 = alloca i1
  %l14 = alloca ptr
  %l17 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb14
bb3:
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t16, i64 %t20)
  store ptr %t23, ptr %l14
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 1
  %t27 = load { i64, [2 x i64] }, ptr %t26
  %t31 = extractvalue { i64, [2 x i64] } %t27, 0
  %t32 = icmp eq i64 %t31, 6
  br i1 %t32, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_616c6f643d0ce9fd_dfe523617d4699c1)
  unreachable
bb13:
  %t34 = load i1, ptr %l17, !tbaa !21
  store i1 %t34, ptr %l4, !tbaa !21
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_b37ed008d0080fcc_cc9019489ebc5a30)
  unreachable
bb19:
  %t35 = load i1, ptr %l4, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2emathIntrinsic(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l26 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l55 = alloca i32
  %l62 = alloca i1
  %l63 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l69 = alloca i32
  %l71 = alloca i1
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l89 = alloca i32
  %l91 = alloca i32
  %l93 = alloca i1
  %l95 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t6, ptr %l15, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t7, 0
  store i64 %t10, ptr %l18, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l19, !tbaa !24
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l18, !tbaa !24
  %t16 = icmp sle i64 0, %t15
  br i1 %t16, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_e68028fa4f0f457e_ac0c180900ac4e62)
  unreachable
bb3:
  %t18 = load i64, ptr %l18, !tbaa !24
  %t19 = load i64, ptr %l19, !tbaa !24
  %t20 = icmp sle i64 %t18, %t19
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_e68028fa4f0f457e_ac0c180900ac4e62)
  unreachable
bb5:
  %t22 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l18, !tbaa !24
  %t25 = getelementptr i8, ptr %t23, i64 0
  %t26 = sub i64 %t24, 0
  %t27 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t25, 1
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i1 false, ptr %l5, !tbaa !21
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = load ptr, ptr @__olang_prog_scope
  %t34 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %t31, ptr %v1, ptr @G_2ecompiler_2femit_2emathExact, { i64, ptr } %t30)
  store i1 %t34, ptr %l26
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_e68028fa4f0f457e_ac0c180900ac4e62)
  unreachable
bb7:
  %t35 = load i1, ptr %l26, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t40, ptr %l30
  br label %bb10
bb9:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t41 = load i1, ptr %l30, !tbaa !21
  store i1 %t41, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l28, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t43, ptr %l31, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t48 = sub i64 %t46, 1
  store i64 %t48, ptr %l34, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l35, !tbaa !24
  %t51 = icmp sge i64 0, 0
  br i1 %t51, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  %t53 = load i64, ptr %l34, !tbaa !24
  %t54 = icmp sle i64 0, %t53
  br i1 %t54, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_8b9f7f38fd25c7fb_28bbaeaad75485df)
  unreachable
bb16:
  %t56 = load i64, ptr %l34, !tbaa !24
  %t57 = load i64, ptr %l35, !tbaa !24
  %t58 = icmp sle i64 %t56, %t57
  br i1 %t58, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_8b9f7f38fd25c7fb_28bbaeaad75485df)
  unreachable
bb18:
  %t60 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = load i64, ptr %l34, !tbaa !24
  %t63 = getelementptr i8, ptr %t61, i64 0
  %t64 = sub i64 %t62, 0
  %t65 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  store { i64, ptr } %t66, ptr %l4, !tbaa !27
  store i1 true, ptr %l5, !tbaa !21
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_8b9f7f38fd25c7fb_28bbaeaad75485df)
  unreachable
bb20:
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t69 = load ptr, ptr @__olang_prog_scope
  %t72 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %t69, ptr %v1, ptr @G_2ecompiler_2femit_2emathExact, { i64, ptr } %t68)
  %t73 = extractvalue { i32, i64 } %t72, 1
  %t74 = extractvalue { i32, i64 } %t72, 0
  store i32 %t74, ptr %l44
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb22, label %ok.76, !prof !99
ok.76:
  store i64 %t73, ptr %l43
  br label %bb21
bb21:
  %t77 = load i64, ptr %l43, !tbaa !24
  store i64 %t77, ptr %l40, !tbaa !24
  br label %bb24
bb22:
  br label %bb23
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t78, ptr %l46, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  store i64 %t80, ptr %l47, !tbaa !24
  %t81 = load i64, ptr %l47, !tbaa !24
  %t82 = mul i64 %t81, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t82)
  %t84 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  store { i64, ptr } %t85, ptr %l48, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = load i64, ptr %l47, !tbaa !24
  %t91 = mul i64 %t90, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t87, ptr %t89, i64 %t91, i1 false)
  %t92 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t92, ptr %l46, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t93 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t93, ptr %rv
  br label %ret
bb24:
  %t94 = load i64, ptr %l40, !tbaa !24
  store i64 %t94, ptr %l6, !tbaa !24
  %t95 = load ptr, ptr %l3, !tbaa !29
  store ptr %t95, ptr %l49, !tbaa !29
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t97 = load i32, ptr %l2, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t100, ptr %l52
  br label %bb25
bb25:
  %t101 = load ptr, ptr %l49, !tbaa !29
  %t102 = load i32, ptr %l52, !tbaa !23
  %t103 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t101, i32 %t102)
  store { i64, ptr } %t103, ptr %l53
  br label %bb26
bb26:
  %t104 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t104, ptr %l7, !tbaa !27
  %t105 = load i1, ptr %l5, !tbaa !21
  br i1 %t105, label %bb27, label %bb28
bb27:
  store i32 13, ptr %l55
  br label %bb29
bb28:
  store i32 14, ptr %l55
  br label %bb29
bb29:
  %t109 = load i32, ptr %l55, !range !{i32 0, i32 33}
  store i32 %t109, ptr %l8
  %t110 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  %t113 = load i64, ptr %l6, !tbaa !24
  %t116 = icmp ne i64 %t112, %t113
  br i1 %t116, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb35
bb31:
  %t118 = load ptr, ptr %l3, !tbaa !29
  store ptr %t118, ptr %l63, !tbaa !29
  %t119 = load ptr, ptr %l3, !tbaa !29
  %t120 = load i32, ptr %l2, !tbaa !23
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t119, i32 %t120)
  store i32 %t123, ptr %l66
  br label %bb32
bb32:
  %t124 = load ptr, ptr %l63, !tbaa !29
  %t125 = load i32, ptr %l66, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t126, ptr %l67
  br label %bb33
bb33:
  %t127 = load i32, ptr %l8, !range !{i32 0, i32 33}
  store i32 %t127, ptr %l69
  %t130 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %l67, ptr %l69)
  store i1 %t130, ptr %l71
  br label %bb34
bb34:
  %t131 = load i1, ptr %l71, !tbaa !21
  %t132 = xor i1 %t131, true
  store i1 %t132, ptr %l62, !tbaa !21
  br label %bb35
bb35:
  %t134 = load i1, ptr %l62, !tbaa !21
  br i1 %t134, label %bb36, label %bb37
bb36:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l73, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t135, ptr %l74, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l75, !tbaa !24
  %t138 = load i64, ptr %l75, !tbaa !24
  %t139 = mul i64 %t138, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t139)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  store { i64, ptr } %t142, ptr %l76, !tbaa !27
  %t143 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = load i64, ptr %l75, !tbaa !24
  %t148 = mul i64 %t147, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t144, ptr %t146, i64 %t148, i1 false)
  %t149 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t149, ptr %l74, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t150 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t150, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t151 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t151, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t153 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  store i64 %t155, ptr %l11, !tbaa !24
  br label %bb39
bb39:
  %t157 = load i64, ptr %l10, !tbaa !24
  %t158 = load i64, ptr %l11, !tbaa !24
  %t161 = icmp slt i64 %t157, %t158
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb40, label %bb41
bb40:
  br label %bb49
bb41:
  br label %bb42
bb42:
  %t165 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t165, ptr %l84, !tbaa !27
  %t166 = load i64, ptr %l10, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i32, ptr %t169, i64 %t166
  %t171 = load i32, ptr %t170, !tbaa !33
  %t173 = load ptr, ptr %l3, !tbaa !29
  %t177 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t173, i32 %t171)
  store i32 %t177, ptr %l89
  br label %bb43
bb43:
  %t178 = load i32, ptr %l8, !range !{i32 0, i32 33}
  store i32 %t178, ptr %l91
  %t181 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %l89, ptr %l91)
  store i1 %t181, ptr %l93
  br label %bb44
bb44:
  %t182 = load i1, ptr %l93, !tbaa !21
  %t183 = xor i1 %t182, true
  br i1 %t183, label %bb45, label %bb46
bb45:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t185, ptr %l96, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 0
  store i64 %t187, ptr %l97, !tbaa !24
  %t188 = load i64, ptr %l97, !tbaa !24
  %t189 = mul i64 %t188, 1
  %t190 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t189)
  %t191 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  store { i64, ptr } %t192, ptr %l98, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = load i64, ptr %l97, !tbaa !24
  %t198 = mul i64 %t197, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t194, ptr %t196, i64 %t198, i1 false)
  %t199 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t199, ptr %l96, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t200 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t200, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t201 = load i64, ptr %l10, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l10, !tbaa !24
  br label %bb39
bb49:
  %t205 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t205, ptr %l101, !tbaa !27
  %t206 = load i1, ptr %l5, !tbaa !21
  br i1 %t206, label %bb50, label %bb51
bb50:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l103, !tbaa !27
  br label %bb52
bb51:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l103, !tbaa !27
  br label %bb52
bb52:
  %t208 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t209 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t210 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t213 = add i64 %t209, %t212
  %t214 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t215 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t216 = add i64 %t213, %t215
  %t217 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t217, 1
  %t219 = extractvalue { i64, ptr } %t217, 0
  %t220 = add i64 %t216, %t219
  %t221 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t220)
  call void @olang_textcopy(ptr %t221, ptr %t208, i64 %t209)
  %t222 = getelementptr i8, ptr %t221, i64 %t209
  call void @olang_textcopy(ptr %t222, ptr %t211, i64 %t212)
  %t223 = getelementptr i8, ptr %t222, i64 %t212
  call void @olang_textcopy(ptr %t223, ptr %t214, i64 %t215)
  %t224 = getelementptr i8, ptr %t223, i64 %t215
  call void @olang_textcopy(ptr %t224, ptr %t218, i64 %t219)
  %t225 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t221, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t226, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l9 = alloca i64
  %l13 = alloca i64
  %rv = alloca i64
  %t7 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load { i64, [2 x i64] }, ptr %l1
  %t6 = load i32, ptr %l2, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [7 x i64] }, ptr %t7, i32 0, i32 0
  store i64 0, ptr %t8
  %t10 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t5, 0
  %t12 = insertvalue { { i64, [2 x i64] }, i32 } %t10, i32 %t6, 1
  %t13 = getelementptr { i64, [7 x i64] }, ptr %t7, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t12, ptr %t13
  %t14 = load { i64, [7 x i64] }, ptr %t7
  %t15 = load i32, ptr %l2, !tbaa !23
  %t19 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t4, { i64, [7 x i64] } %t14, i32 %t15)
  store i64 %t19, ptr %l9
  br label %bb1
bb1:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/emit:Emitter", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load { i64, [2 x i64] }, ptr %l1
  %t27 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %t23, { i64, [2 x i64] } %t24)
  store i64 %t27, ptr %l13
  br label %bb2
bb2:
  %t28 = load i64, ptr %l9, !tbaa !24
  %t29 = load i64, ptr %l13, !tbaa !24
  %t30 = add i64 %t28, %t29
  store i64 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l10 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i1
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, [2 x i64] }
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i1
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2)
  store i1 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i1, ptr %l10, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = extractvalue { i64, ptr } %a3, 1
  %t12 = extractvalue { i64, ptr } %a3, 0
  %t13 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t11, i64 %t12)
  %t17 = getelementptr i8, ptr %t16, i64 %t12
  call void @olang_textcopy(ptr %t17, ptr %t13, i64 %t14)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t16, 1
  store { i64, ptr } %t19, ptr %l7, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  %t22 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t22, ptr %l15
  %t23 = load i32, ptr %l2, !tbaa !23
  store i32 %t23, ptr %l16, !tbaa !23
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %l17, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  store i64 %t25, ptr %l18, !tbaa !24
  %t26 = load i1, ptr %l5, !tbaa !21
  store i1 %t26, ptr %l19, !tbaa !21
  %t27 = ptrtoint ptr %s0 to i64
  store i64 %t27, ptr %l20, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = call ptr @__olang_region_make(ptr %s0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l22, !tbaa !29
  %t33 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t33, ptr %l23
  %t34 = load i32, ptr %l2, !tbaa !23
  store i32 %t34, ptr %l24, !tbaa !23
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t35, ptr %l25, !tbaa !27
  %t36 = load i64, ptr %l4, !tbaa !24
  store i64 %t36, ptr %l26, !tbaa !24
  %t37 = load i1, ptr %l5, !tbaa !21
  store i1 %t37, ptr %l27, !tbaa !21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load { i64, [2 x i64] }, ptr %l1
  %t42 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t38, { i64, [2 x i64] } %t39)
  store i64 %t42, ptr %l30
  br label %bb7
bb7:
  %t43 = load i64, ptr %l30, !tbaa !24
  %t44 = call { i64, ptr } @compiler_2femit_2elinkFor(ptr %s0, i64 %t43)
  store { i64, ptr } %t44, ptr %l31
  br label %bb8
bb8:
  %t45 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  %t47 = extractvalue { i64, ptr } %t45, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load ptr, ptr %l22, !tbaa !29
  %t53 = load { i64, [2 x i64] }, ptr %l23
  %t54 = load i32, ptr %l24, !tbaa !23
  %t55 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t56 = load i64, ptr %l26, !tbaa !24
  %t57 = load i1, ptr %l27, !tbaa !21
  %t59 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t52, { i64, [2 x i64] } %t53, i32 %t54, { i64, ptr } %t55, i64 %t56, i1 %t57, { i64, ptr } %t51, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store { i64, ptr } %t59, ptr %l33
  br label %bb9
bb9:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t66 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v2, ptr %s0, ptr %s0, ptr %t60, { i64, ptr } %a6, { i64, ptr } %t62)
  store { i64, ptr } %t66, ptr %l37
  br label %bb10
bb10:
  %t67 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = add i64 %t69, %t72
  %t74 = load i64, ptr %l20
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = call ptr @__olang_scope_alloc(ptr %t75, i64 %t73)
  call void @olang_textcopy(ptr %t76, ptr %t68, i64 %t69)
  %t77 = getelementptr i8, ptr %t76, i64 %t69
  call void @olang_textcopy(ptr %t77, ptr %t71, i64 %t72)
  %t78 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t76, 1
  %t81 = load i64, ptr %l20
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = extractvalue { i64, ptr } %t79, 0
  %t84 = extractvalue { i64, ptr } %t79, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t89 = load ptr, ptr %l14, !tbaa !29
  %t90 = load { i64, [2 x i64] }, ptr %l15
  %t91 = load i32, ptr %l16, !tbaa !23
  %t92 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t93 = load i64, ptr %l18, !tbaa !24
  %t94 = load i1, ptr %l19, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s0, ptr %s0, ptr %t89, { i64, [2 x i64] } %t90, i32 %t91, { i64, ptr } %t92, i64 %t93, i1 %t94, { i64, ptr } %t88)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l15 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l25 = alloca i64
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [1 x i64] }, ptr %l1
  %t5 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t1, { i64, [1 x i64] } %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t9, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t10 = load i1, ptr %l10, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t20 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v2, ptr %v3, ptr %t14, { i64, ptr } %t15, i64 %t16)
  store { i64, ptr } %t20, ptr %l15
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t21 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:fnEm", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t25, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d69, i32 0, i32 1) })
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load { i64, [1 x i64] }, ptr %l1
  %t32 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s0, ptr %t28, { i64, [1 x i64] } %t29)
  store { i64, ptr } %t32, ptr %l21
  br label %bb11
bb11:
  store { i64, ptr } %a2, ptr %l22, !tbaa !27
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp sgt i64 %t34, 8
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load i64, ptr %l3, !tbaa !24
  store i64 %t38, ptr %l25, !tbaa !24
  br label %bb14
bb13:
  store i64 8, ptr %l25, !tbaa !24
  br label %bb14
bb14:
  %t40 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t42 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = add i64 %t41, %t44
  %t46 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t48 = add i64 %t45, %t47
  %t49 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = add i64 %t48, %t51
  %t53 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = load i64, ptr %l25, !tbaa !24
  %t57 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t58 = add i64 %t55, %t57
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t40, i64 %t41)
  %t63 = getelementptr i8, ptr %t62, i64 %t41
  call void @olang_textcopy(ptr %t63, ptr %t43, i64 %t44)
  %t64 = getelementptr i8, ptr %t63, i64 %t44
  call void @olang_textcopy(ptr %t64, ptr %t46, i64 %t47)
  %t65 = getelementptr i8, ptr %t64, i64 %t47
  call void @olang_textcopy(ptr %t65, ptr %t50, i64 %t51)
  %t66 = getelementptr i8, ptr %t65, i64 %t51
  call void @olang_textcopy(ptr %t66, ptr %t53, i64 %t54)
  %t67 = getelementptr i8, ptr %t66, i64 %t54
  %t68 = call i64 @__olang_fmt_i64(ptr %t67, i64 %t56)
  %t69 = getelementptr i8, ptr %t67, i64 %t57
  call void @olang_textcopy(ptr %t69, ptr %t59, i64 %t60)
  %t70 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t62, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = extractvalue { i64, ptr } %t71, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t79 = load ptr, ptr %l18, !tbaa !29
  %t81 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t79, { i64, ptr } %t78)
  store { i64, ptr } %t81, ptr %l29
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t82 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t82, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca i32
  %lp7 = alloca ptr
  %l13 = alloca i32
  %l16 = alloca i1
  %l17 = alloca i32
  %l20 = alloca i32
  %l24 = alloca i32
  %l28 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca i64
  %l65 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a2)
  store i32 %t13, ptr %l13
  br label %bb1
bb1:
  %t14 = load i32, ptr %l13, !tbaa !23
  store i32 %t14, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i32, ptr %l4, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l16
  br label %bb2
bb2:
  %t20 = load i1, ptr %l16, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t22 = load i32, ptr %l4, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l20
  br label %bb5
bb4:
  %t26 = load i32, ptr %l4, !tbaa !23
  store i32 %t26, ptr %l17, !tbaa !23
  br label %bb6
bb5:
  %t28 = load i32, ptr %l20, !tbaa !23
  store i32 %t28, ptr %l17, !tbaa !23
  br label %bb6
bb6:
  %t29 = load i32, ptr %l17, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t30, i32 %t29)
  store i32 %t34, ptr %l24
  br label %bb7
bb7:
  %t35 = load i32, ptr %l24, !tbaa !23
  store i32 %t35, ptr %l6, !tbaa !23
  %t36 = load i32, ptr %l6, !tbaa !23
  %t37 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t40 = icmp ne i32 %t36, %t37
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l6, !tbaa !23
  %t46 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l31
  br label %bb10
bb9:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t47 = load i1, ptr %l31, !tbaa !21
  store i1 %t47, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l28, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t50 = load i32, ptr %l4, !tbaa !23
  %t53 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t49, i32 %t50)
  store i1 %t53, ptr %l34
  br label %bb14
bb13:
  br label %bb24
bb14:
  %t54 = load i1, ptr %l34, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t57, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l36, !tbaa !27
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l6, !tbaa !23
  %t66 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t62, i32 %t63)
  store i64 %t66, ptr %l39
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t67 = load i64, ptr %l39, !tbaa !24
  %t68 = call i64 @__olang_fmt_i64(ptr null, i64 %t67)
  %t69 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t68)
  %t70 = call i64 @__olang_fmt_i64(ptr %t69, i64 %t67)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  %t73 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t74 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t73, 0
  %t76 = insertvalue { { i64, ptr }, { i64, ptr } } %t74, { i64, ptr } %t72, 1
  call void @__olang_scope_close(ptr %s1)
  store { { i64, ptr }, { i64, ptr } } %t76, ptr %rv
  br label %ret
bb18:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l42, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l6, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v2, ptr %t79, i32 %t80)
  store { i64, ptr } %t83, ptr %l45
  br label %bb19
bb19:
  %t84 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load ptr, ptr %l42, !tbaa !29
  %t93 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v2, ptr %v2, ptr %t91, { i64, ptr } %t90, i64 0)
  store { i64, ptr } %t93, ptr %l47
  br label %bb20
bb20:
  %t94 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t94, ptr %lp7
  %t95 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t96 = load ptr, ptr %lp7
  store { i64, ptr } %t95, ptr %t96, !tbaa !27
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l48, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l6, !tbaa !23
  %t102 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s1, ptr %t98, i32 %t99)
  store { i64, ptr } %t102, ptr %l51
  br label %bb21
bb21:
  %t103 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  %t105 = extractvalue { i64, ptr } %t103, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t110 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t111 = load ptr, ptr %lp7
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t113 = load ptr, ptr %l48, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s1, ptr %v1, ptr %v2, ptr %s1, ptr %t113, { i64, ptr } %t109, { i64, ptr } %t110, { i64, ptr } %t112, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb22
bb22:
  %t117 = load ptr, ptr %lp7
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l55, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l6, !tbaa !23
  %t123 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t119, i32 %t120)
  store i64 %t123, ptr %l58
  br label %bb23
bb23:
  %t124 = load i64, ptr %l58, !tbaa !24
  %t125 = call i64 @__olang_fmt_i64(ptr null, i64 %t124)
  %t126 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t125)
  %t127 = call i64 @__olang_fmt_i64(ptr %t126, i64 %t124)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  %t130 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t131 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t130, 0
  %t133 = insertvalue { { i64, ptr }, { i64, ptr } } %t131, { i64, ptr } %t129, 1
  call void @__olang_scope_close(ptr %s1)
  store { { i64, ptr }, { i64, ptr } } %t133, ptr %rv
  br label %ret
bb24:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t137 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t140 = extractvalue { i64, ptr } %t136, 1
  %t141 = extractvalue { i64, ptr } %t136, 0
  %t142 = add i64 %t138, %t141
  %t143 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t145 = add i64 %t142, %t144
  %t146 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t137, i64 %t138)
  %t147 = getelementptr i8, ptr %t146, i64 %t138
  call void @olang_textcopy(ptr %t147, ptr %t140, i64 %t141)
  %t148 = getelementptr i8, ptr %t147, i64 %t141
  call void @olang_textcopy(ptr %t148, ptr %t143, i64 %t144)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t146, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = extractvalue { i64, ptr } %t150, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t160 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t135, { i64, ptr } %t157)
  store { i64, ptr } %t160, ptr %l65
  br label %bb25
bb25:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t163 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t166 = extractvalue { i64, ptr } %t162, 1
  %t167 = extractvalue { i64, ptr } %t162, 0
  %t168 = add i64 %t164, %t167
  %t169 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t171 = add i64 %t168, %t170
  %t172 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t163, i64 %t164)
  %t173 = getelementptr i8, ptr %t172, i64 %t164
  call void @olang_textcopy(ptr %t173, ptr %t166, i64 %t167)
  %t174 = getelementptr i8, ptr %t173, i64 %t167
  call void @olang_textcopy(ptr %t174, ptr %t169, i64 %t170)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t172, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = extractvalue { i64, ptr } %t176, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t186 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t161, { i64, ptr } %t183)
  store { i64, ptr } %t186, ptr %l70
  br label %bb26
bb26:
  %t187 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t188 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t187, 0
  %t189 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t190 = insertvalue { { i64, ptr }, { i64, ptr } } %t188, { i64, ptr } %t189, 1
  store { { i64, ptr }, { i64, ptr } } %t190, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %rv = alloca i32
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t16 = trunc i64 24 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l14
  br label %bb4
bb3:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l17
  br label %bb5
bb4:
  %t29 = load i32, ptr %l14, !tbaa !23
  store i32 %t29, ptr %l11, !tbaa !23
  br label %bb6
bb5:
  %t30 = load i32, ptr %l17, !tbaa !23
  store i32 %t30, ptr %l11, !tbaa !23
  br label %bb6
bb6:
  %t31 = load i32, ptr %l11, !tbaa !23
  store i32 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { { i64, ptr }, { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstInit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i8
  %l13 = alloca %"compiler/mir:Range"
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i64
  %l28 = alloca { i64, [1 x i64] }
  %l32 = alloca %"std/prelude/text:StringBuilder"
  %l37 = alloca i32
  %l40 = alloca i32
  %l66 = alloca i8
  %l70 = alloca i1
  %l74 = alloca i1
  %l77 = alloca i1
  %l97 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l110 = alloca %"std/prelude/text:StringBuilder"
  %l116 = alloca i32
  %l119 = alloca i32
  %l144 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca i32
  %l155 = alloca i32
  %l156 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr }, i64 }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 19
  %t9 = sext i32 %a2 to i64
  %t12 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t6, i64 %t9)
  store { i64, [1 x i64] } %t12, ptr %l28
  br label %bb1
bb1:
  %t13 = load { i64, [1 x i64] }, ptr %l28
  store { i64, [1 x i64] } %t13, ptr %l3
  %t14 = load { i64, [1 x i64] }, ptr %l3
  %t16 = extractvalue { i64, [1 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 1
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t20 = getelementptr { %"compiler/mir:Range" }, ptr %t19, i32 0, i32 0
  %t21 = load %"compiler/mir:Range", ptr %t20
  store %"compiler/mir:Range" %t21, ptr %l4
  br label %bb4
bb3:
  br label %bb36
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s1)
  store %"std/prelude/text:StringBuilder" %t23, ptr %l32
  br label %bb5
bb5:
  %t24 = load %"std/prelude/text:StringBuilder", ptr %l32
  store %"std/prelude/text:StringBuilder" %t24, ptr %l5
  store i32 0, ptr %l6, !tbaa !23
  %t25 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  store i32 %t26, ptr %l7, !tbaa !23
  store i32 1, ptr %l8, !tbaa !23
  %t28 = load i32, ptr %l7, !tbaa !23
  %t29 = load i32, ptr %l6, !tbaa !23
  %t32 = icmp sgt i32 %t28, %t29
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load i32, ptr %l8, !tbaa !23
  %t36 = icmp sgt i32 %t34, 0
  br i1 %t36, label %bb8, label %bb9
bb7:
  store i32 0, ptr %l37, !tbaa !23
  br label %bb11
bb8:
  %t38 = load i32, ptr %l7, !tbaa !23
  %t39 = load i32, ptr %l6, !tbaa !23
  %t42 = sub i32 %t38, %t39
  %t43 = load i32, ptr %l8, !tbaa !23
  %t46 = add i32 %t42, %t43
  %t48 = sub i32 %t46, 1
  %t49 = load i32, ptr %l8, !tbaa !23
  %t52 = sdiv i32 %t48, %t49
  store i32 %t52, ptr %l40, !tbaa !23
  br label %bb10
bb9:
  store i32 0, ptr %l40, !tbaa !23
  br label %bb10
bb10:
  %t54 = load i32, ptr %l40, !tbaa !23
  store i32 %t54, ptr %l37, !tbaa !23
  br label %bb11
bb11:
  %t55 = load i32, ptr %l37, !tbaa !23
  store i32 %t55, ptr %l9, !tbaa !23
  store i32 0, ptr %l10, !tbaa !23
  br label %bb12
bb12:
  %t56 = load i32, ptr %l10, !tbaa !23
  %t57 = load i32, ptr %l9, !tbaa !23
  %t60 = icmp slt i32 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb13, label %bb14
bb13:
  br label %bb34
bb14:
  br label %bb15
bb15:
  %t64 = load i32, ptr %l6, !tbaa !23
  %t65 = load i32, ptr %l10, !tbaa !23
  %t66 = load i32, ptr %l8, !tbaa !23
  %t69 = mul i32 %t65, %t66
  %t72 = add i32 %t64, %t69
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/emit:fnEm", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/mir:Fn", ptr %t77, i32 0, i32 21
  %t80 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t86 = sext i32 %t72 to i64
  %t89 = add i64 %t83, %t86
  %t92 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %t79, i64 %t89)
  store i8 %t92, ptr %l66
  br label %bb16
bb16:
  %t93 = load i8, ptr %l66, !tbaa !22
  store i8 %t93, ptr %l12, !tbaa !22
  %t94 = load i8, ptr %l12, !tbaa !22
  %t97 = icmp eq i8 %t94, 34
  br i1 %t97, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb19
bb18:
  %t99 = load i8, ptr %l12, !tbaa !22
  %t102 = icmp eq i8 %t99, 92
  store i1 %t102, ptr %l70, !tbaa !21
  br label %bb19
bb19:
  %t104 = load i1, ptr %l70, !tbaa !21
  br i1 %t104, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb22
bb21:
  %t105 = load i8, ptr %l12, !tbaa !22
  %t107 = icmp ult i8 %t105, 32
  store i1 %t107, ptr %l74, !tbaa !21
  br label %bb22
bb22:
  %t109 = load i1, ptr %l74, !tbaa !21
  br i1 %t109, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb25
bb24:
  %t110 = load i8, ptr %l12, !tbaa !22
  %t112 = icmp ugt i8 %t110, 126
  store i1 %t112, ptr %l77, !tbaa !21
  br label %bb25
bb25:
  %t114 = load i1, ptr %l77, !tbaa !21
  br i1 %t114, label %bb26, label %bb27
bb26:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l5, i8 92)
  br label %bb28
bb27:
  %t116 = load i8, ptr %l12, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l5, i8 %t116)
  br label %bb31
bb28:
  %t120 = load i8, ptr %l12, !tbaa !22
  %t122 = lshr i8 %t120, 4
  %t124 = zext i8 %t122 to i64
  %t126 = getelementptr { i64, ptr }, ptr @G_2ecompiler_2femit_2ehexDigits, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i8, ptr %t127, i64 %t124
  %t129 = load i8, ptr %t128, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l5, i8 %t129)
  br label %bb29
bb29:
  %t132 = load i8, ptr %l12, !tbaa !22
  %t134 = and i8 %t132, 15
  %t136 = zext i8 %t134 to i64
  %t138 = getelementptr { i64, ptr }, ptr @G_2ecompiler_2femit_2ehexDigits, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i8, ptr %t139, i64 %t136
  %t141 = load i8, ptr %t140, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l5, i8 %t141)
  br label %bb30
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t144 = load i32, ptr %l10, !tbaa !23
  %t146 = add i32 %t144, 1
  store i32 %t146, ptr %l10, !tbaa !23
  br label %bb12
bb34:
  %t148 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t153 = sext i32 %t149 to i64
  %t154 = call i64 @__olang_fmt_i64(ptr null, i64 %t153)
  %t155 = add i64 %t151, %t154
  %t156 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t159 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t158)
  call void @olang_textcopy(ptr %t159, ptr %t150, i64 %t151)
  %t160 = getelementptr i8, ptr %t159, i64 %t151
  %t161 = call i64 @__olang_fmt_i64(ptr %t160, i64 %t153)
  %t162 = getelementptr i8, ptr %t160, i64 %t154
  call void @olang_textcopy(ptr %t162, ptr %t156, i64 %t157)
  %t163 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t159, 1
  store { i64, ptr } %t164, ptr %l97, !tbaa !27
  %t166 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s1, ptr %s1, ptr %l5)
  store { i64, ptr } %t166, ptr %l99
  br label %bb35
bb35:
  %t167 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t169 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = add i64 %t168, %t171
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t167, i64 %t168)
  %t177 = getelementptr i8, ptr %t176, i64 %t168
  call void @olang_textcopy(ptr %t177, ptr %t170, i64 %t171)
  %t178 = getelementptr i8, ptr %t177, i64 %t171
  call void @olang_textcopy(ptr %t178, ptr %t173, i64 %t174)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t176, 1
  %t181 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t182 = load i32, ptr %t181, !tbaa !23
  %t184 = sext i32 %t182 to i64
  %t185 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t186 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } undef, { i64, ptr } %t185, 0
  %t188 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } %t186, { i64, ptr } %t180, 1
  %t190 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } %t188, i64 %t184, 2
  call void @__olang_scope_close(ptr %s1)
  store { { i64, ptr }, { i64, ptr }, i64 } %t190, ptr %rv
  br label %ret
bb36:
  %t192 = load { i64, [1 x i64] }, ptr %l3
  %t194 = extractvalue { i64, [1 x i64] } %t192, 0
  %t195 = icmp eq i64 %t194, 2
  br i1 %t195, label %bb37, label %bb38
bb37:
  %t197 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t198 = getelementptr { %"compiler/mir:Range" }, ptr %t197, i32 0, i32 0
  %t199 = load %"compiler/mir:Range", ptr %t198
  store %"compiler/mir:Range" %t199, ptr %l13
  br label %bb39
bb38:
  br label %bb65
bb39:
  store %olang.scope zeroinitializer, ptr %s9
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i32, ptr %l1, !tbaa !23
  %t205 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s9, ptr %t201, i32 %t202)
  store { i64, ptr } %t205, ptr %l109
  br label %bb40
bb40:
  %t206 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t206, ptr %l14, !tbaa !27
  %t207 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s9)
  store %"std/prelude/text:StringBuilder" %t207, ptr %l110
  br label %bb41
bb41:
  %t208 = load %"std/prelude/text:StringBuilder", ptr %l110
  store %"std/prelude/text:StringBuilder" %t208, ptr %l15
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s9, ptr %l15, i8 91)
  br label %bb42
bb42:
  store i32 0, ptr %l16, !tbaa !23
  %t210 = getelementptr %"compiler/mir:Range", ptr %l13, i32 0, i32 1
  %t211 = load i32, ptr %t210, !tbaa !23
  store i32 %t211, ptr %l17, !tbaa !23
  store i32 1, ptr %l18, !tbaa !23
  %t213 = load i32, ptr %l17, !tbaa !23
  %t214 = load i32, ptr %l16, !tbaa !23
  %t217 = icmp sgt i32 %t213, %t214
  br i1 %t217, label %bb43, label %bb44
bb43:
  %t219 = load i32, ptr %l18, !tbaa !23
  %t221 = icmp sgt i32 %t219, 0
  br i1 %t221, label %bb45, label %bb46
bb44:
  store i32 0, ptr %l116, !tbaa !23
  br label %bb48
bb45:
  %t223 = load i32, ptr %l17, !tbaa !23
  %t224 = load i32, ptr %l16, !tbaa !23
  %t227 = sub i32 %t223, %t224
  %t228 = load i32, ptr %l18, !tbaa !23
  %t231 = add i32 %t227, %t228
  %t233 = sub i32 %t231, 1
  %t234 = load i32, ptr %l18, !tbaa !23
  %t237 = sdiv i32 %t233, %t234
  store i32 %t237, ptr %l119, !tbaa !23
  br label %bb47
bb46:
  store i32 0, ptr %l119, !tbaa !23
  br label %bb47
bb47:
  %t239 = load i32, ptr %l119, !tbaa !23
  store i32 %t239, ptr %l116, !tbaa !23
  br label %bb48
bb48:
  %t240 = load i32, ptr %l116, !tbaa !23
  store i32 %t240, ptr %l19, !tbaa !23
  store i32 0, ptr %l20, !tbaa !23
  br label %bb49
bb49:
  store %olang.scope zeroinitializer, ptr %s11
  %t241 = load i32, ptr %l20, !tbaa !23
  %t242 = load i32, ptr %l19, !tbaa !23
  %t245 = icmp slt i32 %t241, %t242
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s11)
  br label %bb62
bb51:
  br label %bb52
bb52:
  %t249 = load i32, ptr %l16, !tbaa !23
  %t250 = load i32, ptr %l20, !tbaa !23
  %t251 = load i32, ptr %l18, !tbaa !23
  %t254 = mul i32 %t250, %t251
  %t257 = add i32 %t249, %t254
  store i32 %t257, ptr %l21, !tbaa !23
  %t259 = load i32, ptr %l21, !tbaa !23
  %t261 = icmp sgt i32 %t259, 0
  br i1 %t261, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s12
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s12, ptr %l15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb55
bb54:
  br label %bb56
bb55:
  call void @__olang_scope_close(ptr %s12)
  br label %bb56
bb56:
  %t264 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t264, 1
  %t267 = extractvalue { i64, ptr } %t264, 0
  %t268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t270 = add i64 %t267, %t269
  %t271 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t270)
  call void @olang_textcopy(ptr %t271, ptr %t266, i64 %t267)
  %t272 = getelementptr i8, ptr %t271, i64 %t267
  call void @olang_textcopy(ptr %t272, ptr %t268, i64 %t269)
  %t273 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t271, 1
  %t276 = extractvalue { i64, ptr } %t274, 0
  %t277 = extractvalue { i64, ptr } %t274, 1
  %t278 = mul i64 %t276, 1
  %t279 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t278)
  call void @llvm.memcpy.p0.p0.i64(ptr %t279, ptr %t277, i64 %t278, i1 false)
  %t280 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t279, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s11, ptr %l15, { i64, ptr } %t281)
  br label %bb57
bb57:
  store ptr %l15, ptr %l144, !tbaa !29
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l145, !tbaa !29
  %t285 = load i32, ptr %l1, !tbaa !23
  store i32 %t285, ptr %l146, !tbaa !23
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/emit:fnEm", ptr %t286, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !29
  %t291 = getelementptr %"compiler/mir:Fn", ptr %t289, i32 0, i32 20
  %t292 = getelementptr %"compiler/mir:Range", ptr %l13, i32 0, i32 0
  %t293 = load i32, ptr %t292, !tbaa !23
  %t295 = sext i32 %t293 to i64
  %t296 = load i32, ptr %l21, !tbaa !23
  %t298 = sext i32 %t296 to i64
  %t301 = add i64 %t295, %t298
  %t304 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t291, i64 %t301)
  store i32 %t304, ptr %l155
  br label %bb58
bb58:
  %t305 = load ptr, ptr %l145, !tbaa !29
  %t306 = load i32, ptr %l146, !tbaa !23
  %t307 = load i32, ptr %l155, !tbaa !23
  %t308 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstItem(ptr %v0, ptr %s11, ptr %t305, i32 %t306, i32 %t307)
  store { i64, ptr } %t308, ptr %l156
  br label %bb59
bb59:
  %t309 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  %t311 = extractvalue { i64, ptr } %t309, 1
  %t312 = mul i64 %t310, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t312)
  call void @llvm.memcpy.p0.p0.i64(ptr %t313, ptr %t311, i64 %t312, i1 false)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  %t316 = load ptr, ptr %l144, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s11, ptr %t316, { i64, ptr } %t315)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s11)
  br label %bb61
bb61:
  %t318 = load i32, ptr %l20, !tbaa !23
  %t320 = add i32 %t318, 1
  store i32 %t320, ptr %l20, !tbaa !23
  br label %bb49
bb62:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s9, ptr %l15, i8 93)
  br label %bb63
bb63:
  %t323 = getelementptr %"compiler/mir:Range", ptr %l13, i32 0, i32 1
  %t324 = load i32, ptr %t323, !tbaa !23
  %t325 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t326 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t329 = sext i32 %t324 to i64
  %t330 = call i64 @__olang_fmt_i64(ptr null, i64 %t329)
  %t331 = add i64 %t327, %t330
  %t332 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t336 = extractvalue { i64, ptr } %t325, 1
  %t337 = extractvalue { i64, ptr } %t325, 0
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t342 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t341)
  call void @olang_textcopy(ptr %t342, ptr %t326, i64 %t327)
  %t343 = getelementptr i8, ptr %t342, i64 %t327
  %t344 = call i64 @__olang_fmt_i64(ptr %t343, i64 %t329)
  %t345 = getelementptr i8, ptr %t343, i64 %t330
  call void @olang_textcopy(ptr %t345, ptr %t332, i64 %t333)
  %t346 = getelementptr i8, ptr %t345, i64 %t333
  call void @olang_textcopy(ptr %t346, ptr %t336, i64 %t337)
  %t347 = getelementptr i8, ptr %t346, i64 %t337
  call void @olang_textcopy(ptr %t347, ptr %t339, i64 %t340)
  %t348 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t342, 1
  store { i64, ptr } %t349, ptr %l163, !tbaa !27
  %t351 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s9, ptr %v1, ptr %l15)
  store { i64, ptr } %t351, ptr %l165
  br label %bb64
bb64:
  %t352 = getelementptr %"compiler/mir:Range", ptr %l13, i32 0, i32 1
  %t353 = load i32, ptr %t352, !tbaa !23
  %t355 = sext i32 %t353 to i64
  %t356 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t357 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } undef, { i64, ptr } %t356, 0
  %t358 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t359 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } %t357, { i64, ptr } %t358, 1
  %t361 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } %t359, i64 %t355, 2
  call void @__olang_scope_close(ptr %s9)
  store { { i64, ptr }, { i64, ptr }, i64 } %t361, ptr %rv
  br label %ret
bb65:
  %t363 = load { i64, [1 x i64] }, ptr %l3
  %t365 = extractvalue { i64, [1 x i64] } %t363, 0
  %t366 = icmp eq i64 %t365, 0
  br i1 %t366, label %bb66, label %bb67
bb66:
  %t368 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t369 = getelementptr { i64 }, ptr %t368, i32 0, i32 0
  %t370 = load i64, ptr %t369
  store i64 %t370, ptr %l22, !tbaa !24
  br label %bb68
bb67:
  br label %bb71
bb68:
  store %olang.scope zeroinitializer, ptr %s16
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l1, !tbaa !23
  %t376 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s16, ptr %t372, i32 %t373)
  store { i64, ptr } %t376, ptr %l174
  br label %bb69
bb69:
  %t377 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t377, 1
  %t379 = extractvalue { i64, ptr } %t377, 0
  %t380 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t379)
  call void @olang_textcopy(ptr %t380, ptr %t378, i64 %t379)
  %t381 = insertvalue { i64, ptr } undef, i64 %t379, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  store { i64, ptr } %t382, ptr %l175, !tbaa !27
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/emit:fnEm", ptr %t383, i32 0, i32 0
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t387 = load i32, ptr %l1, !tbaa !23
  %t388 = load i64, ptr %l22, !tbaa !24
  %t392 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %t386, i32 %t387, i64 %t388)
  store { i64, ptr } %t392, ptr %l180
  br label %bb70
bb70:
  %t393 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t394 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } undef, { i64, ptr } %t393, 0
  %t395 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t396 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } %t394, { i64, ptr } %t395, 1
  %t397 = insertvalue { { i64, ptr }, { i64, ptr }, i64 } %t396, i64 1, 2
  call void @__olang_scope_close(ptr %s16)
  store { { i64, ptr }, { i64, ptr }, i64 } %t397, ptr %rv
  br label %ret
bb71:
  call void @__olang_check_failed(ptr @olang_loc_617f1f302e56ab61_28fb076f83c3eed5)
  unreachable
ret:
  %rr = load { { i64, ptr }, { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, { i64, ptr }, i64 } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efillInPlace(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca i32
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"compiler/mir:Range"
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca { { i64, ptr }, i32 }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, [4 x i64] }
  %l46 = alloca i32
  %l50 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i32
  %l64 = alloca i64
  %l70 = alloca i32
  %l73 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l81 = alloca i64
  %l84 = alloca i64
  %l105 = alloca { i64, [4 x i64] }
  %l106 = alloca ptr
  %l109 = alloca { i64, [4 x i64] }
  %l111 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca %"compiler/mir:Lvalue"
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l123 = alloca { i64, [4 x i64] }
  %l125 = alloca { i64, ptr }
  %l129 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca i64
  %l137 = alloca i64
  %l155 = alloca ptr
  %l156 = alloca i64
  %l158 = alloca ptr
  %l162 = alloca { i64, [4 x i64] }
  %l164 = alloca { i64, ptr }
  %l170 = alloca { { i64, ptr }, i32 }
  %l176 = alloca i64
  %l179 = alloca i64
  %l203 = alloca { i64, ptr }
  %l204 = alloca ptr
  %l205 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l218 = alloca i1
  %l224 = alloca i1
  %s1 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [15 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load { i64, [15 x i64] }, ptr %l3
  %t11 = extractvalue { i64, [15 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 6
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t15 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t14, i32 0, i32 0
  %t16 = load i32, ptr %t15
  store i32 %t16, ptr %l5, !tbaa !23
  %t18 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t19 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t18, i32 0, i32 2
  %t20 = load %"compiler/mir:Range", ptr %t19
  store %"compiler/mir:Range" %t20, ptr %l6
  br label %bb3
bb2:
  br label %bb81
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l5, !tbaa !23
  %t26 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l46
  br label %bb4
bb4:
  %t27 = load i32, ptr %l46, !tbaa !23
  store i32 %t27, ptr %l7, !tbaa !23
  %t28 = load i32, ptr %l7, !tbaa !23
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = icmp eq i32 %t28, %t29
  br i1 %t32, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb8
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l7, !tbaa !23
  %t38 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l53
  br label %bb7
bb7:
  %t39 = load i1, ptr %l53, !tbaa !21
  %t40 = xor i1 %t39, true
  store i1 %t40, ptr %l50, !tbaa !21
  br label %bb8
bb8:
  %t42 = load i1, ptr %l50, !tbaa !21
  br i1 %t42, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb12
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l2, !tbaa !23
  %t47 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l58
  br label %bb11
bb11:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t49 = load i32, ptr %l58, !tbaa !23
  %t51 = icmp eq i32 %t49, %t48
  store i1 %t51, ptr %l55, !tbaa !21
  br label %bb12
bb12:
  %t53 = load i1, ptr %l55, !tbaa !21
  br i1 %t53, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l7, !tbaa !23
  %t59 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t55, i32 %t56)
  store i64 %t59, ptr %l64
  br label %bb16
bb16:
  %t60 = load i64, ptr %l64, !tbaa !24
  store i64 %t60, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t63 = icmp sle i64 %t61, 16
  br i1 %t63, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t67 = load i32, ptr %l7, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t70, ptr %l70
  br label %bb20
bb20:
  %t71 = load i32, ptr %l70, !tbaa !23
  store i32 %t71, ptr %l9, !tbaa !23
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l9, !tbaa !23
  %t76 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s1, ptr %t72, i32 %t73)
  store { i64, ptr } %t76, ptr %l73
  br label %bb21
bb21:
  %t77 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t77, ptr %l10, !tbaa !27
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l7, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s1, ptr %t78, i32 %t79)
  store { i64, ptr } %t82, ptr %l76
  br label %bb22
bb22:
  %t83 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t83, ptr %l11, !tbaa !27
  store i1 true, ptr %l12, !tbaa !21
  store i64 0, ptr %l13, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  store i64 %t84, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t86 = load i64, ptr %l14, !tbaa !24
  %t87 = load i64, ptr %l13, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t92 = load i64, ptr %l15, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb28
bb25:
  %t96 = load i64, ptr %l14, !tbaa !24
  %t97 = load i64, ptr %l13, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l15, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l15, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l84, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb27
bb27:
  %t112 = load i64, ptr %l84, !tbaa !24
  store i64 %t112, ptr %l81, !tbaa !24
  br label %bb28
bb28:
  %t113 = load i64, ptr %l81, !tbaa !24
  store i64 %t113, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb29
bb29:
  %t114 = load i64, ptr %l17, !tbaa !24
  %t115 = load i64, ptr %l16, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb30, label %bb31
bb30:
  br label %bb40
bb31:
  br label %bb32
bb32:
  %t122 = load i64, ptr %l13, !tbaa !24
  %t123 = load i64, ptr %l17, !tbaa !24
  %t124 = load i64, ptr %l15, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/mir:Range", ptr %l6
  %t138 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t132, %"compiler/mir:Range" %t133, i64 %t130)
  store { i64, [4 x i64] } %t138, ptr %l105
  br label %bb33
bb33:
  store ptr %l105, ptr %l106, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load %"compiler/mir:Range", ptr %l6
  %t143 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t139, %"compiler/mir:Range" %t140, i64 0)
  store { i64, [4 x i64] } %t143, ptr %l109
  br label %bb34
bb34:
  %t144 = load ptr, ptr %l106, !tbaa !29
  %t146 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aOperand(ptr %t144, ptr %l109)
  store i1 %t146, ptr %l111
  br label %bb35
bb35:
  %t147 = load i1, ptr %l111, !tbaa !21
  %t148 = xor i1 %t147, true
  br i1 %t148, label %bb36, label %bb37
bb36:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb38
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t150 = load i64, ptr %l17, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l17, !tbaa !24
  br label %bb29
bb40:
  %t154 = load i1, ptr %l12, !tbaa !21
  br i1 %t154, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s8
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l116, !tbaa !29
  %t157 = load %"compiler/mir:Lvalue", ptr %l1
  store %"compiler/mir:Lvalue" %t157, ptr %l117
  %t158 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t158, ptr %l118, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t159, ptr %l119, !tbaa !27
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l120, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load %"compiler/mir:Range", ptr %l6
  %t165 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t161, %"compiler/mir:Range" %t162, i64 0)
  store { i64, [4 x i64] } %t165, ptr %l123
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t166 = load i32, ptr %l9, !tbaa !23
  %t167 = load ptr, ptr %l120, !tbaa !29
  %t168 = load { i64, [4 x i64] }, ptr %l123
  %t170 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s8, ptr %t167, { i64, [4 x i64] } %t168, i32 %t166)
  store { i64, ptr } %t170, ptr %l125
  br label %bb44
bb44:
  %t171 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 0
  %t173 = extractvalue { i64, ptr } %t171, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t178 = load i64, ptr %l8, !tbaa !24
  %t179 = load ptr, ptr %l116, !tbaa !29
  %t180 = load %"compiler/mir:Lvalue", ptr %l117
  %t181 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l119, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2efillLoop(ptr %v0, ptr %s1, ptr %s1, ptr %s8, ptr %t179, %"compiler/mir:Lvalue" %t180, { i64, ptr } %t181, { i64, ptr } %t182, { i64, ptr } %t177, i64 %t178)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb46:
  %t186 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l129
  br label %bb47
bb47:
  %t187 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l129
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l19
  store i64 0, ptr %l20, !tbaa !24
  %t188 = load i64, ptr %l8, !tbaa !24
  store i64 %t188, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t190 = load i64, ptr %l21, !tbaa !24
  %t191 = load i64, ptr %l20, !tbaa !24
  %t194 = icmp sgt i64 %t190, %t191
  br i1 %t194, label %bb48, label %bb49
bb48:
  %t196 = load i64, ptr %l22, !tbaa !24
  %t198 = icmp sgt i64 %t196, 0
  br i1 %t198, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l134, !tbaa !24
  br label %bb53
bb50:
  %t200 = load i64, ptr %l21, !tbaa !24
  %t201 = load i64, ptr %l20, !tbaa !24
  %t204 = sub i64 %t200, %t201
  %t205 = load i64, ptr %l22, !tbaa !24
  %t208 = add i64 %t204, %t205
  %t210 = sub i64 %t208, 1
  %t211 = load i64, ptr %l22, !tbaa !24
  %t214 = sdiv i64 %t210, %t211
  store i64 %t214, ptr %l137, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb52
bb52:
  %t216 = load i64, ptr %l137, !tbaa !24
  store i64 %t216, ptr %l134, !tbaa !24
  br label %bb53
bb53:
  %t217 = load i64, ptr %l134, !tbaa !24
  store i64 %t217, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb54
bb54:
  %t218 = load i64, ptr %l24, !tbaa !24
  %t219 = load i64, ptr %l23, !tbaa !24
  %t222 = icmp slt i64 %t218, %t219
  %t224 = xor i1 %t222, true
  br i1 %t224, label %bb55, label %bb56
bb55:
  br label %bb64
bb56:
  br label %bb57
bb57:
  %t226 = load i64, ptr %l20, !tbaa !24
  %t227 = load i64, ptr %l24, !tbaa !24
  %t228 = load i64, ptr %l22, !tbaa !24
  %t231 = mul i64 %t227, %t228
  %t234 = add i64 %t226, %t231
  store i64 %t234, ptr %l25, !tbaa !24
  store ptr %l19, ptr %l155, !tbaa !29
  %t236 = ptrtoint ptr %s1 to i64
  store i64 %t236, ptr %l156, !tbaa !24
  %t237 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t237, label %bb58, label %bb59
bb58:
  %t239 = call ptr @__olang_region_make(ptr %s1)
  %t240 = ptrtoint ptr %t239 to i64
  store i64 %t240, ptr %l156, !tbaa !24
  br label %bb59
bb59:
  %t241 = load ptr, ptr %l0, !tbaa !29
  store ptr %t241, ptr %l158, !tbaa !29
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load %"compiler/mir:Range", ptr %l6
  %t244 = load i64, ptr %l25, !tbaa !24
  %t248 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t242, %"compiler/mir:Range" %t243, i64 %t244)
  store { i64, [4 x i64] } %t248, ptr %l162
  br label %bb60
bb60:
  %t249 = load i32, ptr %l9, !tbaa !23
  %t250 = load i64, ptr %l156
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = load ptr, ptr %l158, !tbaa !29
  %t253 = load { i64, [4 x i64] }, ptr %l162
  %t255 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %t251, ptr %t252, { i64, [4 x i64] } %t253, i32 %t249)
  store { i64, ptr } %t255, ptr %l164
  br label %bb61
bb61:
  %t256 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t257 = load i64, ptr %l156
  %t258 = inttoptr i64 %t257 to ptr
  %t259 = extractvalue { i64, ptr } %t256, 0
  %t260 = extractvalue { i64, ptr } %t256, 1
  %t261 = mul i64 %t259, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %t258, i64 %t261)
  call void @llvm.memcpy.p0.p0.i64(ptr %t262, ptr %t260, i64 %t261, i1 false)
  %t263 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  %t265 = load ptr, ptr %l155, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s1, ptr %s1, ptr %t265, { i64, ptr } %t264)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t267 = load i64, ptr %l24, !tbaa !24
  %t269 = add i64 %t267, 1
  store i64 %t269, ptr %l24, !tbaa !24
  br label %bb54
bb64:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load %"compiler/mir:Lvalue", ptr %l1
  %t275 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s1, ptr %t271, %"compiler/mir:Lvalue" %t272)
  store { { i64, ptr }, i32 } %t275, ptr %l170
  br label %bb65
bb65:
  %t276 = load { { i64, ptr }, i32 }, ptr %l170
  store { { i64, ptr }, i32 } %t276, ptr %l26
  %t277 = getelementptr { { i64, ptr }, i32 }, ptr %l26, i32 0, i32 0
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  store { i64, ptr } %t278, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t280 = load i64, ptr %l8, !tbaa !24
  store i64 %t280, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t282 = load i64, ptr %l29, !tbaa !24
  %t283 = load i64, ptr %l28, !tbaa !24
  %t286 = icmp sgt i64 %t282, %t283
  br i1 %t286, label %bb66, label %bb67
bb66:
  %t288 = load i64, ptr %l30, !tbaa !24
  %t290 = icmp sgt i64 %t288, 0
  br i1 %t290, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l176, !tbaa !24
  br label %bb71
bb68:
  %t292 = load i64, ptr %l29, !tbaa !24
  %t293 = load i64, ptr %l28, !tbaa !24
  %t296 = sub i64 %t292, %t293
  %t297 = load i64, ptr %l30, !tbaa !24
  %t300 = add i64 %t296, %t297
  %t302 = sub i64 %t300, 1
  %t303 = load i64, ptr %l30, !tbaa !24
  %t306 = sdiv i64 %t302, %t303
  store i64 %t306, ptr %l179, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l179, !tbaa !24
  br label %bb70
bb70:
  %t308 = load i64, ptr %l179, !tbaa !24
  store i64 %t308, ptr %l176, !tbaa !24
  br label %bb71
bb71:
  %t309 = load i64, ptr %l176, !tbaa !24
  store i64 %t309, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb72
bb72:
  store %olang.scope zeroinitializer, ptr %s13
  %t310 = load i64, ptr %l32, !tbaa !24
  %t311 = load i64, ptr %l31, !tbaa !24
  %t314 = icmp slt i64 %t310, %t311
  %t316 = xor i1 %t314, true
  br i1 %t316, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s13)
  br label %bb80
bb74:
  br label %bb75
bb75:
  %t318 = load i64, ptr %l28, !tbaa !24
  %t319 = load i64, ptr %l32, !tbaa !24
  %t320 = load i64, ptr %l30, !tbaa !24
  %t323 = mul i64 %t319, %t320
  %t326 = add i64 %t318, %t323
  store i64 %t326, ptr %l33, !tbaa !24
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t331 = load i64, ptr %l33, !tbaa !24
  %t332 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t335 = extractvalue { i64, ptr } %t329, 1
  %t336 = extractvalue { i64, ptr } %t329, 0
  %t337 = add i64 %t333, %t336
  %t338 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t340 = add i64 %t337, %t339
  %t342 = extractvalue { i64, ptr } %t330, 1
  %t343 = extractvalue { i64, ptr } %t330, 0
  %t344 = add i64 %t340, %t343
  %t345 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t346 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t347 = add i64 %t344, %t346
  %t349 = call i64 @__olang_fmt_i64(ptr null, i64 %t331)
  %t350 = add i64 %t347, %t349
  %t351 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t350)
  call void @olang_textcopy(ptr %t351, ptr %t332, i64 %t333)
  %t352 = getelementptr i8, ptr %t351, i64 %t333
  call void @olang_textcopy(ptr %t352, ptr %t335, i64 %t336)
  %t353 = getelementptr i8, ptr %t352, i64 %t336
  call void @olang_textcopy(ptr %t353, ptr %t338, i64 %t339)
  %t354 = getelementptr i8, ptr %t353, i64 %t339
  call void @olang_textcopy(ptr %t354, ptr %t342, i64 %t343)
  %t355 = getelementptr i8, ptr %t354, i64 %t343
  call void @olang_textcopy(ptr %t355, ptr %t345, i64 %t346)
  %t356 = getelementptr i8, ptr %t355, i64 %t346
  %t357 = call i64 @__olang_fmt_i64(ptr %t356, i64 %t331)
  %t358 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t351, 1
  %t361 = extractvalue { i64, ptr } %t359, 0
  %t362 = extractvalue { i64, ptr } %t359, 1
  %t363 = mul i64 %t361, 1
  %t364 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t363)
  call void @llvm.memcpy.p0.p0.i64(ptr %t364, ptr %t362, i64 %t363, i1 false)
  %t365 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  %t369 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s13, ptr %s13, ptr %t328, { i64, ptr } %t366)
  store { i64, ptr } %t369, ptr %l203
  br label %bb76
bb76:
  %t370 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t370, ptr %l34, !tbaa !27
  %t371 = load ptr, ptr %l0, !tbaa !29
  store ptr %t371, ptr %l204, !tbaa !29
  %t372 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t372, ptr %l205, !tbaa !27
  %t373 = load i64, ptr %l33, !tbaa !24
  %t376 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s1, ptr %s1, ptr %l19, i64 %t373)
  store { i64, ptr } %t376, ptr %l208
  br label %bb77
bb77:
  %t377 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t378 = load ptr, ptr %l204, !tbaa !29
  %t379 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t380 = load { i64, ptr }, ptr %l208, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s1, ptr %s1, ptr %s13, ptr %s13, ptr %t378, { i64, ptr } %t379, { i64, ptr } %t380, { i64, ptr } %t377, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s13)
  br label %bb79
bb79:
  %t382 = load i64, ptr %l32, !tbaa !24
  %t384 = add i64 %t382, 1
  store i64 %t384, ptr %l32, !tbaa !24
  br label %bb72
bb80:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb81:
  %t387 = load { i64, [15 x i64] }, ptr %l3
  %t389 = extractvalue { i64, [15 x i64] } %t387, 0
  %t390 = icmp eq i64 %t389, 0
  br i1 %t390, label %bb82, label %bb83
bb82:
  %t392 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t393 = getelementptr { { i64, [4 x i64] } }, ptr %t392, i32 0, i32 0
  %t394 = load { i64, [4 x i64] }, ptr %t393
  store { i64, [4 x i64] } %t394, ptr %l35
  br label %bb84
bb83:
  br label %bb89
bb84:
  %t396 = load { i64, [4 x i64] }, ptr %l35
  %t398 = extractvalue { i64, [4 x i64] } %t396, 0
  %t399 = icmp eq i64 %t398, 1
  br i1 %t399, label %bb85, label %bb86
bb85:
  %t401 = getelementptr { i64, [4 x i64] }, ptr %l35, i32 0, i32 1
  %t402 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t401, i32 0, i32 0
  %t403 = load %"compiler/mir:Lvalue", ptr %t402
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load %"compiler/mir:Lvalue", ptr %l1
  %t407 = load i32, ptr %l2, !tbaa !23
  %t413 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2emoveInPlace(ptr %v0, ptr %t405, %"compiler/mir:Lvalue" %t406, i32 %t407, %"compiler/mir:Lvalue" %t403)
  store i1 %t413, ptr %l224
  br label %bb87
bb86:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb88
bb87:
  %t414 = load i1, ptr %l224, !tbaa !21
  store i1 %t414, ptr %l218, !tbaa !21
  br label %bb88
bb88:
  %t415 = load i1, ptr %l218, !tbaa !21
  store i1 %t415, ptr %rv
  br label %ret
bb89:
  br i1 true, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  store i1 false, ptr %rv
  br label %ret
bb93:
  call void @__olang_check_failed(ptr @olang_loc_9357034ceffa49e9_ad514f9345461395)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eintoPlace(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, { i64, [15 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca i32
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca { { i64, ptr }, i32 }
  %l8 = alloca i32
  %l9 = alloca %"compiler/mir:Range"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca { { i64, ptr }, i32 }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { { i64, ptr }, i32 }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { { i64, ptr }, i32 }
  %l28 = alloca { { i64, ptr }, i32 }
  %l41 = alloca i32
  %l44 = alloca i32
  %l47 = alloca i1
  %l50 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i32
  %l61 = alloca i1
  %l65 = alloca { i64, ptr }
  %l68 = alloca { { i64, ptr }, i32 }
  %l72 = alloca i64
  %l74 = alloca ptr
  %l77 = alloca i64
  %l87 = alloca i1
  %l90 = alloca { { i64, ptr }, i32 }
  %l99 = alloca { i64, ptr }
  %l106 = alloca { { i64, ptr }, i32 }
  %l108 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l113 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [15 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load { i64, [15 x i64] }, ptr %l3
  %t11 = extractvalue { i64, [15 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 0
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t15 = getelementptr { { i64, [4 x i64] } }, ptr %t14, i32 0, i32 0
  %t16 = load { i64, [4 x i64] }, ptr %t15
  store { i64, [4 x i64] } %t16, ptr %l5
  br label %bb3
bb2:
  br label %bb6
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/mir:Lvalue", ptr %l1
  %t22 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s1, ptr %t18, %"compiler/mir:Lvalue" %t19)
  store { { i64, ptr }, i32 } %t22, ptr %l28
  br label %bb4
bb4:
  %t23 = load { { i64, ptr }, i32 }, ptr %l28
  store { { i64, ptr }, i32 } %t23, ptr %l6
  %t24 = getelementptr { { i64, ptr }, i32 }, ptr %l6, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t30 = load { i64, [4 x i64] }, ptr %l5
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s1, ptr %s1, ptr %t27, { i64, ptr } %t25, i32 %t29, { i64, [4 x i64] } %t30, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d90, i32 0, i32 1) })
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb6:
  %t36 = load { i64, [15 x i64] }, ptr %l3
  %t38 = extractvalue { i64, [15 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 6
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t42 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t41, i32 0, i32 0
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l8, !tbaa !23
  %t45 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t46 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t45, i32 0, i32 2
  %t47 = load %"compiler/mir:Range", ptr %t46
  store %"compiler/mir:Range" %t47, ptr %l9
  br label %bb9
bb8:
  br label %bb46
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t50 = load i32, ptr %l8, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l41
  br label %bb10
bb10:
  %t54 = load i32, ptr %l41, !tbaa !23
  store i32 %t54, ptr %l10, !tbaa !23
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t56 = load i32, ptr %l10, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l44
  br label %bb11
bb11:
  %t60 = load i32, ptr %l44, !range !{i32 0, i32 33}
  store i32 %t60, ptr %l11
  %t61 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t63 = trunc i64 24 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb19
bb13:
  %t66 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t68 = trunc i64 18 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t71 = load ptr, ptr %l4, !tbaa !29
  store ptr %t71, ptr %l51, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t73 = load i32, ptr %l10, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l54
  br label %bb16
bb15:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb18
bb16:
  %t77 = load ptr, ptr %l51, !tbaa !29
  %t78 = load i32, ptr %l54, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t79, ptr %l55
  br label %bb17
bb17:
  %t80 = load i32, ptr %l55, !range !{i32 0, i32 6}
  %t82 = trunc i64 1 to i32
  %t83 = icmp eq i32 %t80, %t82
  store i1 %t83, ptr %l50, !tbaa !21
  br label %bb18
bb18:
  %t85 = load i1, ptr %l50, !tbaa !21
  store i1 %t85, ptr %l47, !tbaa !21
  br label %bb19
bb19:
  %t86 = load i1, ptr %l47, !tbaa !21
  br i1 %t86, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t89 = load i32, ptr %l10, !tbaa !23
  %t92 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t88, i32 %t89)
  store i1 %t92, ptr %l61
  br label %bb23
bb23:
  %t93 = load i1, ptr %l61, !tbaa !21
  br i1 %t93, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l10, !tbaa !23
  %t96 = load %"compiler/mir:Range", ptr %l9
  %t100 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %s4, ptr %t94, i32 %t95, %"compiler/mir:Range" %t96)
  store { i64, ptr } %t100, ptr %l65
  br label %bb26
bb25:
  br label %bb34
bb26:
  %t101 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t101, ptr %l12, !tbaa !27
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load %"compiler/mir:Lvalue", ptr %l1
  %t106 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s4, ptr %t102, %"compiler/mir:Lvalue" %t103)
  store { { i64, ptr }, i32 } %t106, ptr %l68
  br label %bb27
bb27:
  %t107 = load { { i64, ptr }, i32 }, ptr %l68
  store { { i64, ptr }, i32 } %t107, ptr %l13
  %t108 = getelementptr { { i64, ptr }, i32 }, ptr %l13, i32 0, i32 0
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  store { i64, ptr } %t109, ptr %l14, !tbaa !27
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l10, !tbaa !23
  %t115 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t111, i32 %t112)
  store i64 %t115, ptr %l72
  br label %bb28
bb28:
  %t116 = load i64, ptr %l72, !tbaa !24
  %t117 = icmp sgt i64 %t116, 0
  br i1 %t117, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l74, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l10, !tbaa !23
  %t124 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t120, i32 %t121)
  store i64 %t124, ptr %l77
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t125 = load i64, ptr %l77, !tbaa !24
  %t126 = mul i64 8, %t125
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t130 = call i64 @__olang_fmt_i64(ptr null, i64 %t126)
  %t131 = add i64 %t128, %t130
  %t132 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t131)
  call void @olang_textcopy(ptr %t132, ptr %t127, i64 %t128)
  %t133 = getelementptr i8, ptr %t132, i64 %t128
  %t134 = call i64 @__olang_fmt_i64(ptr %t133, i64 %t126)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t132, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = extractvalue { i64, ptr } %t136, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t146 = load ptr, ptr %l74, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s5, ptr %s4, ptr %s4, ptr %s5, ptr %t146, { i64, ptr } %t143, { i64, ptr } %t144, { i64, ptr } %t145, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb34:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load %"compiler/mir:Lvalue", ptr %l1
  %t153 = load %"compiler/mir:Range", ptr %l9
  %t157 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eapart(ptr %v0, ptr %t151, %"compiler/mir:Lvalue" %t152, %"compiler/mir:Range" %t153)
  store i1 %t157, ptr %l87
  br label %bb35
bb35:
  %t158 = load i1, ptr %l87, !tbaa !21
  br i1 %t158, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/mir:Lvalue", ptr %l1
  %t163 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s7, ptr %t159, %"compiler/mir:Lvalue" %t160)
  store { { i64, ptr }, i32 } %t163, ptr %l90
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t164 = load { { i64, ptr }, i32 }, ptr %l90
  store { { i64, ptr }, i32 } %t164, ptr %l15
  %t165 = getelementptr { { i64, ptr }, i32 }, ptr %l15, i32 0, i32 0
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i32, ptr %l2, !tbaa !23
  %t171 = load %"compiler/mir:Range", ptr %l9
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebuildInto(ptr %v0, ptr %s7, ptr %t168, { i64, ptr } %t166, i32 %t170, %"compiler/mir:Range" %t171)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb40:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l2, !tbaa !23
  %t181 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s2, ptr %t177, i32 %t178)
  store { i64, ptr } %t181, ptr %l99
  br label %bb41
bb41:
  %t182 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t182, ptr %l17, !tbaa !27
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t185 = load i32, ptr %l2, !tbaa !23
  %t186 = load %"compiler/mir:Range", ptr %l9
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebuildInto(ptr %v0, ptr %s2, ptr %t183, { i64, ptr } %t184, i32 %t185, %"compiler/mir:Range" %t186)
  br label %bb42
bb42:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/mir:Lvalue", ptr %l1
  %t195 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s2, ptr %t191, %"compiler/mir:Lvalue" %t192)
  store { { i64, ptr }, i32 } %t195, ptr %l106
  br label %bb43
bb43:
  %t196 = load { { i64, ptr }, i32 }, ptr %l106
  store { { i64, ptr }, i32 } %t196, ptr %l18
  %t197 = getelementptr { { i64, ptr }, i32 }, ptr %l18, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l108, !tbaa !29
  store { i64, ptr } %t198, ptr %l109, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t202, ptr %l110, !tbaa !27
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l2, !tbaa !23
  %t207 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t203, i32 %t204)
  store i64 %t207, ptr %l113
  br label %bb44
bb44:
  %t208 = load ptr, ptr %l108, !tbaa !29
  %t209 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t211 = load i64, ptr %l113, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %s2, ptr %s2, ptr %t208, { i64, ptr } %t209, { i64, ptr } %t210, i64 %t211)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i1 false, ptr %rv
  br label %ret
bb50:
  call void @__olang_check_failed(ptr @olang_loc_1c84b7c0e51a2751_bb90751f2238f075)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v2, ptr %t1)
  store { i64, ptr } %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t4, ptr %lp2
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t6 = load ptr, ptr %lp2
  store { i64, ptr } %t5, ptr %t6, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %lp2
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t9, 1
  %t13 = extractvalue { i64, ptr } %t9, 0
  %t14 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %a1, 1
  %t19 = extractvalue { i64, ptr } %a1, 0
  %t20 = add i64 %t16, %t19
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t12, i64 %t13)
  %t22 = getelementptr i8, ptr %t21, i64 %t13
  call void @olang_textcopy(ptr %t22, ptr %t14, i64 %t15)
  %t23 = getelementptr i8, ptr %t22, i64 %t15
  call void @olang_textcopy(ptr %t23, ptr %t18, i64 %t19)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t21, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = extractvalue { i64, ptr } %t25, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t7, { i64, ptr } %t32)
  br label %bb2
bb2:
  %t35 = load ptr, ptr %lp2
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2emoveInPlace(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2, %"compiler/mir:Lvalue" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { { i64, ptr }, i32 }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { { i64, ptr }, i32 }
  %l9 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i1
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i1
  %l47 = alloca i64
  %l49 = alloca i1
  %l52 = alloca i32
  %l58 = alloca { { i64, ptr }, i32 }
  %l62 = alloca { { i64, ptr }, i32 }
  %l66 = alloca ptr
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/mir:Lvalue" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  store ptr %t9, ptr %l13, !tbaa !29
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l16
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l13, !tbaa !29
  %t16 = load i32, ptr %l16, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t17, ptr %l17
  br label %bb2
bb2:
  %t18 = load i32, ptr %l17, !range !{i32 0, i32 33}
  store i32 %t18, ptr %l5
  %t19 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t21 = trunc i64 19 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t28 = trunc i64 18 to i32
  %t29 = icmp eq i32 %t26, %t28
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l21, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t34 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t36 = trunc i64 24 to i32
  %t37 = icmp eq i32 %t34, %t36
  %t39 = xor i1 %t37, true
  store i1 %t39, ptr %l25, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb8
bb8:
  %t41 = load i1, ptr %l25, !tbaa !21
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l4, !tbaa !29
  store ptr %t43, ptr %l30, !tbaa !29
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l33
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l30, !tbaa !29
  %t50 = load i32, ptr %l33, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t51, ptr %l34
  br label %bb13
bb13:
  %t52 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t54 = trunc i64 19 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l38, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t59 = load i32, ptr %l2, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l41
  br label %bb16
bb15:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb18
bb16:
  %t63 = load ptr, ptr %l38, !tbaa !29
  %t64 = load i32, ptr %l41, !tbaa !23
  %t65 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t65, ptr %l42
  br label %bb17
bb17:
  %t66 = load i1, ptr %l42, !tbaa !21
  %t67 = xor i1 %t66, true
  store i1 %t67, ptr %l37, !tbaa !21
  br label %bb18
bb18:
  %t69 = load i1, ptr %l37, !tbaa !21
  br i1 %t69, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t71, i32 %t72)
  store i64 %t75, ptr %l47
  br label %bb22
bb22:
  %t76 = load i64, ptr %l47, !tbaa !24
  %t77 = icmp sle i64 %t76, 128
  br i1 %t77, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb26
bb24:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/mir:Lvalue", ptr %l3
  %t83 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %t79, %"compiler/mir:Lvalue" %t80)
  store i32 %t83, ptr %l52
  br label %bb25
bb25:
  %t84 = load i32, ptr %l2, !tbaa !23
  %t85 = load i32, ptr %l52, !tbaa !23
  %t87 = icmp ne i32 %t85, %t84
  store i1 %t87, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t89 = load i1, ptr %l49, !tbaa !21
  br i1 %t89, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load %"compiler/mir:Lvalue", ptr %l3
  %t95 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s0, ptr %t91, %"compiler/mir:Lvalue" %t92)
  store { { i64, ptr }, i32 } %t95, ptr %l58
  br label %bb30
bb30:
  %t96 = load { { i64, ptr }, i32 }, ptr %l58
  store { { i64, ptr }, i32 } %t96, ptr %l6
  %t97 = getelementptr { { i64, ptr }, i32 }, ptr %l6, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l7, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t104 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s0, ptr %t100, %"compiler/mir:Lvalue" %a1)
  store { { i64, ptr }, i32 } %t104, ptr %l62
  br label %bb31
bb31:
  %t105 = load { { i64, ptr }, i32 }, ptr %l62
  store { { i64, ptr }, i32 } %t105, ptr %l8
  %t106 = getelementptr { { i64, ptr }, i32 }, ptr %l8, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l9, !tbaa !27
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/emit:fnEm", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t112, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d93, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb32
bb32:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l66, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t115, ptr %l67, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t116, ptr %l68, !tbaa !27
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l2, !tbaa !23
  %t121 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t117, i32 %t118)
  store i64 %t121, ptr %l71
  br label %bb33
bb33:
  %t122 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t124 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t127 = add i64 %t123, %t126
  %t128 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t130 = add i64 %t127, %t129
  %t131 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = add i64 %t130, %t133
  %t135 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t138 = load i64, ptr %l71, !tbaa !24
  %t139 = call i64 @__olang_fmt_i64(ptr null, i64 %t138)
  %t140 = add i64 %t137, %t139
  %t141 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t144 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t143)
  call void @olang_textcopy(ptr %t144, ptr %t122, i64 %t123)
  %t145 = getelementptr i8, ptr %t144, i64 %t123
  call void @olang_textcopy(ptr %t145, ptr %t125, i64 %t126)
  %t146 = getelementptr i8, ptr %t145, i64 %t126
  call void @olang_textcopy(ptr %t146, ptr %t128, i64 %t129)
  %t147 = getelementptr i8, ptr %t146, i64 %t129
  call void @olang_textcopy(ptr %t147, ptr %t132, i64 %t133)
  %t148 = getelementptr i8, ptr %t147, i64 %t133
  call void @olang_textcopy(ptr %t148, ptr %t135, i64 %t136)
  %t149 = getelementptr i8, ptr %t148, i64 %t136
  %t150 = call i64 @__olang_fmt_i64(ptr %t149, i64 %t138)
  %t151 = getelementptr i8, ptr %t149, i64 %t139
  call void @olang_textcopy(ptr %t151, ptr %t141, i64 %t142)
  %t152 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t144, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t161 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t161, { i64, ptr } %t160)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t6 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t9 = extractvalue { i64, ptr } %a1, 1
  %t10 = extractvalue { i64, ptr } %a1, 0
  %t11 = add i64 %t7, %t10
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t16 = extractvalue { i64, ptr } %a2, 1
  %t17 = extractvalue { i64, ptr } %a2, 0
  %t18 = add i64 %t14, %t17
  %t19 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %a3, 1
  %t24 = extractvalue { i64, ptr } %a3, 0
  %t25 = add i64 %t21, %t24
  %t27 = extractvalue { i64, ptr } %a4, 1
  %t28 = extractvalue { i64, ptr } %a4, 0
  %t29 = add i64 %t25, %t28
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @olang_textcopy(ptr %t30, ptr %t6, i64 %t7)
  %t31 = getelementptr i8, ptr %t30, i64 %t7
  call void @olang_textcopy(ptr %t31, ptr %t9, i64 %t10)
  %t32 = getelementptr i8, ptr %t31, i64 %t10
  call void @olang_textcopy(ptr %t32, ptr %t12, i64 %t13)
  %t33 = getelementptr i8, ptr %t32, i64 %t13
  call void @olang_textcopy(ptr %t33, ptr %t16, i64 %t17)
  %t34 = getelementptr i8, ptr %t33, i64 %t17
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t23, i64 %t24)
  %t36 = getelementptr i8, ptr %t35, i64 %t24
  call void @olang_textcopy(ptr %t36, ptr %t27, i64 %t28)
  %t37 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t30, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %a0, { i64, ptr } %t45)
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkFlow(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l34 = alloca i64
  %l37 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l90 = alloca i64
  %l93 = alloca i64
  %l95 = alloca i64
  %l96 = alloca i32
  %l105 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
  %t20 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 9
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l23
  br label %bb1
bb1:
  %t9 = load i64, ptr %l23, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  store i64 %t10, ptr %l24, !tbaa !24
  %t11 = load i64, ptr %l24, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l24, !tbaa !24
  %t15 = icmp sle i64 %t14, 1152921504606846975
  br i1 %t15, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_6e037ff8088c42f2_1018a41289232aae)
  unreachable
bb4:
  %t17 = load i64, ptr %l24, !tbaa !24
  %t18 = mul i64 %t17, 8
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  store i64 0, ptr %t20
  br label %fill.21
fill.21:
  %t24 = load i64, ptr %t20
  %t25 = icmp slt i64 %t24, %t17
  br i1 %t25, label %fillb.22, label %filld.23
fillb.22:
  %t26 = getelementptr i64, ptr %t19, i64 %t24
  store i64 -1, ptr %t26
  %t27 = add i64 %t24, 1
  store i64 %t27, ptr %t20
  br label %fill.21
filld.23:
  %t28 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t19, 1
  store { i64, ptr } %t29, ptr %l4, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i64, ptr %t32, i64 0
  store i64 0, ptr %t33, !tbaa !34
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l28
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6e037ff8088c42f2_1018a41289232aae)
  unreachable
bb6:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 0)
  br label %bb7
bb7:
  %t37 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t37, ptr %l30
  br label %bb8
bb8:
  %t38 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store ptr %t38, ptr %lp6
  %t39 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l30
  %t40 = load ptr, ptr %lp6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %t40
  store i64 0, ptr %l7, !tbaa !24
  store i64 2, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i64, ptr %l9, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb14
bb11:
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l9, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l37, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l37, !tbaa !24
  store i64 %t67, ptr %l34, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l34, !tbaa !24
  store i64 %t68, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  %t69 = load i64, ptr %l11, !tbaa !24
  %t70 = load i64, ptr %l10, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb16, label %bb17
bb16:
  br label %bb53
bb17:
  br label %bb18
bb18:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l11, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l12, !tbaa !24
  %t87 = load i64, ptr %l12, !tbaa !24
  %t89 = icmp eq i64 %t87, 1
  br i1 %t89, label %bb19, label %bb20
bb19:
  store i64 0, ptr %l13, !tbaa !24
  %t91 = load i64, ptr %l3, !tbaa !24
  store i64 %t91, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t93 = load i64, ptr %l14, !tbaa !24
  %t94 = load i64, ptr %l13, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb21, label %bb22
bb20:
  br label %bb37
bb21:
  %t99 = load i64, ptr %l15, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb26
bb23:
  %t103 = load i64, ptr %l14, !tbaa !24
  %t104 = load i64, ptr %l13, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l15, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l15, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l64, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb25
bb25:
  %t119 = load i64, ptr %l64, !tbaa !24
  store i64 %t119, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t120 = load i64, ptr %l61, !tbaa !24
  store i64 %t120, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb27
bb27:
  %t121 = load i64, ptr %l17, !tbaa !24
  %t122 = load i64, ptr %l16, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb28, label %bb29
bb28:
  br label %bb36
bb29:
  br label %bb30
bb30:
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l17, !tbaa !24
  %t131 = load i64, ptr %l15, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l18, !tbaa !24
  %t139 = load i64, ptr %l18, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i64, ptr %t142, i64 %t139
  %t144 = load i64, ptr %t143, !tbaa !34
  %t146 = icmp sge i64 %t144, 0
  br i1 %t146, label %bb31, label %bb32
bb31:
  %t148 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t148)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t151 = load i64, ptr %l17, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l17, !tbaa !24
  br label %bb27
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t156 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t156, ptr %l90
  br label %bb39
bb39:
  %t157 = load i64, ptr %l90, !tbaa !24
  %t158 = icmp sgt i64 %t157, 0
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb40, label %bb41
bb40:
  br label %bb51
bb41:
  br label %bb42
bb42:
  %t163 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l5)
  %t164 = extractvalue { i32, i64 } %t163, 1
  %t165 = extractvalue { i32, i64 } %t163, 0
  store i32 %t165, ptr %l96
  %t166 = icmp ne i32 %t165, 0
  br i1 %t166, label %bb44, label %ok.167, !prof !99
ok.167:
  store i64 %t164, ptr %l95
  br label %bb43
bb43:
  %t168 = load i64, ptr %l95, !tbaa !24
  store i64 %t168, ptr %l93, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  call void @__olang_check_failed(ptr @olang_loc_1085358c18365730_69fd93bfc7477ec4)
  unreachable
bb46:
  %t169 = load i64, ptr %l93, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i64, ptr %l12, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t176 = load ptr, ptr %lp6
  %t185 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkBlock(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t170, i64 %a1, i64 %a2, i64 %t169, i64 %t174, { i64, ptr } %t175, ptr %l5, ptr %t176)
  store i32 %t185, ptr %l105
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb48, label %ok.187, !prof !99
ok.187:
  br label %bb47
bb47:
  br label %bb49
bb48:
  %t188 = load i32, ptr %l105, !tbaa !23
  %t189 = lshr i32 %t188, 16
  %t190 = and i32 %t188, 65535
  %t191 = icmp eq i32 %t189, 1
  %t192 = select i1 %t191, i32 1, i32 0
  %t193 = icmp eq i32 %t188, 0
  %t194 = shl i32 %t192, 16
  %t195 = or i32 %t194, %t190
  %t196 = select i1 %t193, i32 0, i32 %t195
  call void @__olang_scope_close(ptr %s0)
  %t198 = insertvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } zeroinitializer, i32 %t196, 0
  store { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t198, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  br label %bb38
bb51:
  br label %bb52
bb52:
  %t199 = load i64, ptr %l11, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l11, !tbaa !24
  br label %bb15
bb53:
  %t203 = load ptr, ptr %lp6
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t203
  call void @__olang_scope_close(ptr %s0)
  %t206 = insertvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } zeroinitializer, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, 1
  store { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t206, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }, ptr %rv
  ret { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2estmt(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [21 x i64] }
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l4 = alloca { i64, [15 x i64] }
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca { i64, [21 x i64] }
  %l12 = alloca { i64, [21 x i64] }
  %l17 = alloca { i64, [21 x i64] }
  %l21 = alloca { i64, ptr }
  %l24 = alloca { i64, [21 x i64] }
  store ptr %a0, ptr %l0
  store { i64, [21 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l1, i64 176, i1 false)
  %t1 = load { i64, [21 x i64] }, ptr %l9
  %t2 = extractvalue { i64, [21 x i64] } %t1, 0
  %t3 = icmp eq i64 %t2, 5
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t6 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t5, i32 0, i32 1
  %t7 = load { i64, [1 x i64] }, ptr %t6
  store { i64, [1 x i64] } %t7, ptr %l2
  br label %bb5
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l1, i64 176, i1 false)
  %t9 = load { i64, [21 x i64] }, ptr %l12
  %t10 = extractvalue { i64, [21 x i64] } %t9, 0
  %t11 = icmp eq i64 %t10, 8
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t14 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t13, i32 0, i32 1
  %t15 = load { i64, [1 x i64] }, ptr %t14
  store { i64, [1 x i64] } %t15, ptr %l2
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t17, { i64, [1 x i64] } %t18)
  br label %bb6
bb6:
  br label %bb47
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %l1, i64 176, i1 false)
  %t21 = load { i64, [21 x i64] }, ptr %l17
  %t22 = extractvalue { i64, [21 x i64] } %t21, 0
  %t23 = icmp eq i64 %t22, 10
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t25, i32 0, i32 1
  %t27 = load i32, ptr %t26
  store i32 %t27, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/emit:scopeUse", ptr %t29, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l21, !tbaa !27
  %t33 = load i32, ptr %l3, !tbaa !23
  %t35 = sext i32 %t33 to i64
  %t37 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i1, ptr %t38, i64 %t35
  store i1 true, ptr %t39, !tbaa !31
  br label %bb47
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %l1, i64 176, i1 false)
  %t40 = load { i64, [21 x i64] }, ptr %l24
  %t41 = extractvalue { i64, [21 x i64] } %t40, 0
  %t42 = icmp eq i64 %t41, 0
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t44, i32 0, i32 2
  %t46 = load { i64, [15 x i64] }, ptr %t45
  store { i64, [15 x i64] } %t46, ptr %l4
  br label %bb14
bb13:
  br label %bb42
bb14:
  %t48 = load { i64, [15 x i64] }, ptr %l4
  %t50 = extractvalue { i64, [15 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 7
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t54 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t53, i32 0, i32 0
  %t55 = load { i64, [1 x i64] }, ptr %t54
  store { i64, [1 x i64] } %t55, ptr %l5
  br label %bb21
bb16:
  %t57 = load { i64, [15 x i64] }, ptr %l4
  %t59 = extractvalue { i64, [15 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 8
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t62 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t63 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t62, i32 0, i32 0
  %t64 = load { i64, [1 x i64] }, ptr %t63
  store { i64, [1 x i64] } %t64, ptr %l5
  br label %bb21
bb18:
  %t66 = load { i64, [15 x i64] }, ptr %l4
  %t68 = extractvalue { i64, [15 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 10
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t72 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t71, i32 0, i32 2
  %t73 = load { i64, [1 x i64] }, ptr %t72
  store { i64, [1 x i64] } %t73, ptr %l5
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load { i64, [1 x i64] }, ptr %l5
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t75, { i64, [1 x i64] } %t76)
  br label %bb22
bb22:
  br label %bb41
bb23:
  %t79 = load { i64, [15 x i64] }, ptr %l4
  %t81 = extractvalue { i64, [15 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 12
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t84 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t85 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t84, i32 0, i32 0
  %t86 = load { i64, [1 x i64] }, ptr %t85
  store { i64, [1 x i64] } %t86, ptr %l6
  %t88 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t89 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t88, i32 0, i32 1
  %t90 = load { i64, [1 x i64] }, ptr %t89
  store { i64, [1 x i64] } %t90, ptr %l7
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load { i64, [1 x i64] }, ptr %l6
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t92, { i64, [1 x i64] } %t93)
  br label %bb27
bb27:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, [1 x i64] }, ptr %l7
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t96, { i64, [1 x i64] } %t97)
  br label %bb28
bb28:
  br label %bb41
bb29:
  %t100 = load { i64, [15 x i64] }, ptr %l4
  %t102 = extractvalue { i64, [15 x i64] } %t100, 0
  %t103 = icmp eq i64 %t102, 13
  br i1 %t103, label %bb30, label %bb31
bb30:
  %t105 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t106 = getelementptr { { i64, [1 x i64] } }, ptr %t105, i32 0, i32 0
  %t107 = load { i64, [1 x i64] }, ptr %t106
  store { i64, [1 x i64] } %t107, ptr %l8
  br label %bb34
bb31:
  %t109 = load { i64, [15 x i64] }, ptr %l4
  %t111 = extractvalue { i64, [15 x i64] } %t109, 0
  %t112 = icmp eq i64 %t111, 14
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t114 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t115 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t114, i32 0, i32 1
  %t116 = load { i64, [1 x i64] }, ptr %t115
  store { i64, [1 x i64] } %t116, ptr %l8
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load { i64, [1 x i64] }, ptr %l8
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %t118, { i64, [1 x i64] } %t119)
  br label %bb35
bb35:
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_c9d6c002ea2b5b8d_4b7ac4eff7d67ea9)
  unreachable
bb41:
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_32b5d421b512c25c_dc383116d87dabd8)
  unreachable
bb47:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2eframeKept(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca %"std/prelude/text:LineIter"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/text:LineIter"
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l25 = alloca i1
  %l26 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i32
  %l32 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca i1
  %l60 = alloca i1
  %l62 = alloca i1
  %l65 = alloca i1
  %l70 = alloca %"std/prelude/text:StringBuilder"
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l88 = alloca i64
  %l91 = alloca i64
  %l92 = alloca i32
  %l94 = alloca i64
  %l96 = alloca i1
  %l101 = alloca i64
  %l102 = alloca { i64, ptr }
  %l103 = alloca i64
  %l106 = alloca i64
  %l107 = alloca i64
  %l112 = alloca i64
  %l113 = alloca i32
  %l114 = alloca { i64, ptr }
  %l118 = alloca i64
  %l119 = alloca i64
  %l123 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l130 = alloca i64
  %l133 = alloca i64
  %l134 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l16
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l17
  br label %bb3
bb3:
  %t6 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t6, ptr %l3
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %t7)
  store %"std/prelude/text:LineIter" %t9, ptr %l19
  br label %bb4
bb4:
  %t10 = load %"std/prelude/text:LineIter", ptr %l19
  store %"std/prelude/text:LineIter" %t10, ptr %l4
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l4)
  %t13 = extractvalue { i32, { i64, ptr } } %t12, 1
  %t14 = extractvalue { i32, { i64, ptr } } %t12, 0
  store i32 %t14, ptr %l23
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb7, label %ok.16, !prof !99
ok.16:
  store { i64, ptr } %t13, ptr %l22
  br label %bb6
bb6:
  %t17 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t17, ptr %l20, !tbaa !27
  br label %bb9
bb7:
  %t18 = load i32, ptr %l23, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  store i1 %t21, ptr %l25, !tbaa !21
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb9:
  %t22 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t22, ptr %l5, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t25 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s2, { i64, ptr } %t23, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d102, i32 0, i32 1) })
  %t26 = extractvalue { i32, i64 } %t25, 1
  %t27 = extractvalue { i32, i64 } %t25, 0
  store i32 %t27, ptr %l29
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb11, label %ok.29, !prof !99
ok.29:
  store i64 %t26, ptr %l28
  br label %bb10
bb10:
  %t30 = load i64, ptr %l28, !tbaa !24
  store i64 %t30, ptr %l26, !tbaa !24
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l26, !tbaa !24
  br label %bb13
bb13:
  %t31 = load i64, ptr %l26, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp sgt i64 %t32, 2
  br i1 %t34, label %bb14, label %bb15
bb14:
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t36, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d103, i32 0, i32 1) })
  store i1 %t38, ptr %l34
  br label %bb16
bb15:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb17
bb16:
  %t39 = load i1, ptr %l34, !tbaa !21
  store i1 %t39, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t40 = load i1, ptr %l32, !tbaa !21
  br i1 %t40, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l1, ptr %l35, !tbaa !29
  %t41 = ptrtoint ptr %s3 to i64
  store i64 %t41, ptr %l36, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0
  br i1 %t42, label %bb20, label %bb21
bb19:
  br label %bb31
bb20:
  %t44 = call ptr @__olang_region_make(ptr %s3)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l36, !tbaa !24
  br label %bb21
bb21:
  %t46 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t46, ptr %l38, !tbaa !27
  %t47 = load i64, ptr %l6, !tbaa !24
  store i64 %t47, ptr %l39, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l40, !tbaa !24
  %t50 = icmp sge i64 2, 0
  br i1 %t50, label %bb22, label %bb23
bb22:
  %t52 = load i64, ptr %l39, !tbaa !24
  %t53 = icmp sle i64 2, %t52
  br i1 %t53, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_6c57ef0c135dbe5a_494e4be183ac47d6)
  unreachable
bb24:
  %t55 = load i64, ptr %l39, !tbaa !24
  %t56 = load i64, ptr %l40, !tbaa !24
  %t57 = icmp sle i64 %t55, %t56
  br i1 %t57, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_6c57ef0c135dbe5a_494e4be183ac47d6)
  unreachable
bb26:
  %t59 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l39, !tbaa !24
  %t62 = getelementptr i8, ptr %t60, i64 2
  %t63 = sub i64 %t61, 2
  %t64 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = extractvalue { i64, ptr } %t65, 0
  %t69 = load i64, ptr %l36
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t68)
  call void @olang_textcopy(ptr %t71, ptr %t67, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l45, !tbaa !27
  %t74 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0
  br i1 %t74, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_6c57ef0c135dbe5a_494e4be183ac47d6)
  unreachable
bb28:
  %t76 = load i64, ptr %l36
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = load { i64, ptr }, ptr %l45
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = icmp eq ptr %t82, %t77
  call void @__olang_region_settle(ptr %t77, i1 %t83)
  br label %bb29
bb29:
  %t84 = load ptr, ptr %l35, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l45, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %s0, ptr %t84, { i64, ptr } %t85, i1 true)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  %t86 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l49, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t90 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t86, { i64, ptr } %t89)
  store i1 %t90, ptr %l50
  br label %bb32
bb32:
  %t91 = load i1, ptr %l50, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb50
bb34:
  br label %bb35
bb35:
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t96 = call { i64, ptr } @compiler_2femit_2einsertedSlot(ptr %v0, ptr %s2, { i64, ptr } %t94)
  store { i64, ptr } %t96, ptr %l53
  br label %bb36
bb36:
  %t97 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t97, ptr %l7, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t102 = icmp eq i64 %t100, 0
  br i1 %t102, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb40
bb38:
  %t104 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t107 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %s0, ptr %l1, { i64, ptr } %t104)
  store i1 %t107, ptr %l60
  br label %bb39
bb39:
  %t108 = load i1, ptr %l60, !tbaa !21
  %t109 = xor i1 %t108, true
  store i1 %t109, ptr %l57, !tbaa !21
  br label %bb40
bb40:
  %t111 = load i1, ptr %l57, !tbaa !21
  br i1 %t111, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb44
bb42:
  %t112 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t115 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %s0, ptr %l3, { i64, ptr } %t112)
  store i1 %t115, ptr %l65
  br label %bb43
bb43:
  %t116 = load i1, ptr %l65, !tbaa !21
  store i1 %t116, ptr %l62, !tbaa !21
  br label %bb44
bb44:
  %t117 = load i1, ptr %l62, !tbaa !21
  br i1 %t117, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s2)
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t118 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %s0, ptr %l3, { i64, ptr } %t118, i1 true)
  br label %bb48
bb48:
  %t121 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ePus_H7d1143c374f11cf9cab67f1e79e7bcb4(ptr %s0, ptr %l2, { i64, ptr } %t121)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s2)
  br label %bb50
bb50:
  br label %bb5
bb51:
  %t124 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t124, ptr %l70
  br label %bb52
bb52:
  %t125 = load %"std/prelude/text:StringBuilder", ptr %l70
  store %"std/prelude/text:StringBuilder" %t125, ptr %l8
  store ptr %l2, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb53
bb53:
  store %olang.scope zeroinitializer, ptr %s8
  %t127 = load i64, ptr %l10, !tbaa !24
  store i64 %t127, ptr %l72, !tbaa !24
  %t128 = load ptr, ptr %l9, !tbaa !29
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eLen_H327daf8a5f05e7deba4c08807621a9fe(ptr %s0, ptr %t128)
  store i64 %t130, ptr %l74
  br label %bb54
bb54:
  %t131 = load i64, ptr %l72, !tbaa !24
  %t132 = load i64, ptr %l74, !tbaa !24
  %t133 = icmp slt i64 %t131, %t132
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s8)
  br label %bb61
bb56:
  br label %bb57
bb57:
  %t137 = load ptr, ptr %l9, !tbaa !29
  %t138 = load i64, ptr %l10, !tbaa !24
  %t141 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %s0, ptr %s8, ptr %t137, i64 %t138)
  store { i64, ptr } %t141, ptr %l79
  br label %bb58
bb58:
  %t142 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t144 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t147 = extractvalue { i64, ptr } %t142, 1
  %t148 = extractvalue { i64, ptr } %t142, 0
  %t149 = add i64 %t145, %t148
  %t150 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t151 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t152 = add i64 %t149, %t151
  %t153 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t144, i64 %t145)
  %t154 = getelementptr i8, ptr %t153, i64 %t145
  call void @olang_textcopy(ptr %t154, ptr %t147, i64 %t148)
  %t155 = getelementptr i8, ptr %t154, i64 %t148
  call void @olang_textcopy(ptr %t155, ptr %t150, i64 %t151)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t153, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = extractvalue { i64, ptr } %t157, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l8, { i64, ptr } %t164)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s8)
  br label %bb60
bb60:
  %t167 = load i64, ptr %l10, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l10, !tbaa !24
  br label %bb53
bb61:
  store { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d107, i32 0, i32 1) }, ptr %l86, !tbaa !27
  %t171 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t177 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t173, { i64, ptr } %t171)
  %t178 = extractvalue { i32, i64 } %t177, 1
  %t179 = extractvalue { i32, i64 } %t177, 0
  store i32 %t179, ptr %l92
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb63, label %ok.181, !prof !99
ok.181:
  store i64 %t178, ptr %l91
  br label %bb62
bb62:
  %t182 = load i64, ptr %l91, !tbaa !24
  store i64 %t182, ptr %l88, !tbaa !24
  br label %bb65
bb63:
  br label %bb64
bb64:
  store i64 -1, ptr %l88, !tbaa !24
  br label %bb65
bb65:
  %t183 = load i64, ptr %l88, !tbaa !24
  store i64 %t183, ptr %l13, !tbaa !24
  %t185 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l8)
  store i64 %t185, ptr %l94
  br label %bb66
bb66:
  %t186 = load i64, ptr %l94, !tbaa !24
  %t187 = icmp eq i64 %t186, 0
  br i1 %t187, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb69
bb68:
  %t189 = load i64, ptr %l13, !tbaa !24
  %t191 = icmp slt i64 %t189, 0
  store i1 %t191, ptr %l96, !tbaa !21
  br label %bb69
bb69:
  %t193 = load i1, ptr %l96, !tbaa !21
  br i1 %t193, label %bb70, label %bb71
bb70:
  %t194 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 1
  %t197 = extractvalue { i64, ptr } %t194, 0
  %t198 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t197)
  call void @olang_textcopy(ptr %t198, ptr %t196, i64 %t197)
  %t199 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t200, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t202 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t202, ptr %l102, !tbaa !27
  %t203 = load i64, ptr %l13, !tbaa !24
  store i64 %t203, ptr %l103, !tbaa !24
  %t204 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t204, 0
  store i64 %t207, ptr %l106, !tbaa !24
  %t208 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 0
  store i64 %t209, ptr %l107, !tbaa !24
  %t210 = load i64, ptr %l103, !tbaa !24
  %t211 = icmp sge i64 %t210, 0
  br i1 %t211, label %bb73, label %bb74
bb73:
  %t213 = load i64, ptr %l103, !tbaa !24
  %t214 = load i64, ptr %l106, !tbaa !24
  %t215 = icmp sle i64 %t213, %t214
  br i1 %t215, label %bb75, label %bb76
bb74:
  call void @__olang_check_failed(ptr @olang_loc_ab80f75f486ddfb7_48b76dc45f37bd33)
  unreachable
bb75:
  %t217 = load i64, ptr %l106, !tbaa !24
  %t218 = load i64, ptr %l107, !tbaa !24
  %t219 = icmp sle i64 %t217, %t218
  br i1 %t219, label %bb77, label %bb78
bb76:
  call void @__olang_check_failed(ptr @olang_loc_ab80f75f486ddfb7_48b76dc45f37bd33)
  unreachable
bb77:
  %t221 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = load i64, ptr %l103, !tbaa !24
  %t224 = load i64, ptr %l106, !tbaa !24
  %t225 = getelementptr i8, ptr %t222, i64 %t223
  %t226 = sub i64 %t224, %t223
  %t227 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t225, 1
  %t230 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t228, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d108, i32 0, i32 1) })
  %t231 = extractvalue { i32, i64 } %t230, 1
  %t232 = extractvalue { i32, i64 } %t230, 0
  store i32 %t232, ptr %l113
  %t233 = icmp ne i32 %t232, 0
  br i1 %t233, label %bb80, label %ok.234, !prof !99
ok.234:
  store i64 %t231, ptr %l112
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_ab80f75f486ddfb7_48b76dc45f37bd33)
  unreachable
bb79:
  %t235 = load i64, ptr %l112, !tbaa !24
  store i64 %t235, ptr %l101, !tbaa !24
  br label %bb82
bb80:
  br label %bb81
bb81:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb82
bb82:
  %t236 = load i64, ptr %l101, !tbaa !24
  store i64 %t236, ptr %l14, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t237, ptr %l114, !tbaa !27
  %t238 = load i64, ptr %l13, !tbaa !24
  %t239 = load i64, ptr %l14, !tbaa !24
  %t242 = add i64 %t238, %t239
  %t244 = add i64 %t242, 1
  store i64 %t244, ptr %l118, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  store i64 %t246, ptr %l119, !tbaa !24
  %t247 = icmp sge i64 0, 0
  br i1 %t247, label %bb83, label %bb84
bb83:
  %t249 = load i64, ptr %l118, !tbaa !24
  %t250 = icmp sle i64 0, %t249
  br i1 %t250, label %bb85, label %bb86
bb84:
  call void @__olang_check_failed(ptr @olang_loc_49b4cd85cfdf12cc_7e69eb5c8764c358)
  unreachable
bb85:
  %t252 = load i64, ptr %l118, !tbaa !24
  %t253 = load i64, ptr %l119, !tbaa !24
  %t254 = icmp sle i64 %t252, %t253
  br i1 %t254, label %bb87, label %bb88
bb86:
  call void @__olang_check_failed(ptr @olang_loc_49b4cd85cfdf12cc_7e69eb5c8764c358)
  unreachable
bb87:
  %t256 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = load i64, ptr %l118, !tbaa !24
  %t259 = getelementptr i8, ptr %t257, i64 0
  %t260 = sub i64 %t258, 0
  %t261 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t259, 1
  store { i64, ptr } %t262, ptr %l123, !tbaa !27
  %t264 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t264, ptr %l125
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_49b4cd85cfdf12cc_7e69eb5c8764c358)
  unreachable
bb89:
  %t265 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t265, ptr %l126, !tbaa !27
  %t266 = load i64, ptr %l13, !tbaa !24
  %t267 = load i64, ptr %l14, !tbaa !24
  %t270 = add i64 %t266, %t267
  %t272 = add i64 %t270, 1
  store i64 %t272, ptr %l130, !tbaa !24
  %t273 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t273, 0
  store i64 %t276, ptr %l133, !tbaa !24
  %t277 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 0
  store i64 %t278, ptr %l134, !tbaa !24
  %t279 = load i64, ptr %l130, !tbaa !24
  %t280 = icmp sge i64 %t279, 0
  br i1 %t280, label %bb90, label %bb91
bb90:
  %t282 = load i64, ptr %l130, !tbaa !24
  %t283 = load i64, ptr %l133, !tbaa !24
  %t284 = icmp sle i64 %t282, %t283
  br i1 %t284, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_49b4cd85cfdf12cc_7e69eb5c8764c358)
  unreachable
bb92:
  %t286 = load i64, ptr %l133, !tbaa !24
  %t287 = load i64, ptr %l134, !tbaa !24
  %t288 = icmp sle i64 %t286, %t287
  br i1 %t288, label %bb94, label %bb95
bb93:
  call void @__olang_check_failed(ptr @olang_loc_49b4cd85cfdf12cc_7e69eb5c8764c358)
  unreachable
bb94:
  %t290 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = load i64, ptr %l130, !tbaa !24
  %t293 = load i64, ptr %l133, !tbaa !24
  %t294 = getelementptr i8, ptr %t291, i64 %t292
  %t295 = sub i64 %t293, %t292
  %t296 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t294, 1
  %t298 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t301 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t304 = add i64 %t300, %t303
  %t306 = extractvalue { i64, ptr } %t297, 1
  %t307 = extractvalue { i64, ptr } %t297, 0
  %t308 = add i64 %t304, %t307
  %t309 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t308)
  call void @olang_textcopy(ptr %t309, ptr %t299, i64 %t300)
  %t310 = getelementptr i8, ptr %t309, i64 %t300
  call void @olang_textcopy(ptr %t310, ptr %t302, i64 %t303)
  %t311 = getelementptr i8, ptr %t310, i64 %t303
  call void @olang_textcopy(ptr %t311, ptr %t306, i64 %t307)
  %t312 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t309, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t313, ptr %rv
  br label %ret
bb95:
  call void @__olang_check_failed(ptr @olang_loc_49b4cd85cfdf12cc_7e69eb5c8764c358)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2efuzzCorpus(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d109, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l6
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v1, ptr %s1, { i64, ptr } %t14)
  store { i64, ptr } %t16, ptr %l10
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t17 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = add i64 %t18, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t17, i64 %t18)
  %t24 = getelementptr i8, ptr %t23, i64 %t18
  call void @olang_textcopy(ptr %t24, ptr %t20, i64 %t21)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t23, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb8:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp eq i64 %t28, 0
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t32, ptr %l15, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l16, !tbaa !24
  %t35 = icmp sge i64 0, 0
  br i1 %t35, label %bb11, label %bb12
bb10:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l21, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  store i64 %t38, ptr %l22, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l23, !tbaa !24
  %t41 = icmp sge i64 0, 0
  br i1 %t41, label %bb17, label %bb18
bb11:
  %t43 = icmp sle i64 0, 1
  br i1 %t43, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb13:
  %t45 = load i64, ptr %l16, !tbaa !24
  %t46 = icmp sle i64 1, %t45
  br i1 %t46, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb15:
  %t48 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i8, ptr %t49, i64 0
  %t51 = sub i64 1, 0
  %t52 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t50, 1
  store { i64, ptr } %t53, ptr %l14, !tbaa !27
  br label %bb23
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb17:
  %t55 = load i64, ptr %l22, !tbaa !24
  %t56 = icmp sle i64 0, %t55
  br i1 %t56, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb19:
  %t58 = load i64, ptr %l22, !tbaa !24
  %t59 = load i64, ptr %l23, !tbaa !24
  %t60 = icmp sle i64 %t58, %t59
  br i1 %t60, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb21:
  %t62 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l22, !tbaa !24
  %t65 = getelementptr i8, ptr %t63, i64 0
  %t66 = sub i64 %t64, 0
  %t67 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  store { i64, ptr } %t68, ptr %l14, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2)
  unreachable
bb23:
  %t70 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = call { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v1, ptr %s0, { i64, ptr } %t70)
  store { i64, ptr } %t72, ptr %l29
  br label %bb24
bb24:
  %t73 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t74, i64 %t75)
  %t84 = getelementptr i8, ptr %t83, i64 %t75
  call void @olang_textcopy(ptr %t84, ptr %t76, i64 %t77)
  %t85 = getelementptr i8, ptr %t84, i64 %t77
  call void @olang_textcopy(ptr %t85, ptr %t80, i64 %t81)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t83, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t87, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2erefsIn(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca { i64, ptr }
  %l50 = alloca i1
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca { i64, ptr }
  %l94 = alloca i1
  %l108 = alloca i1
  %l113 = alloca i1
  %l114 = alloca { i64, ptr }
  %l118 = alloca i1
  %l125 = alloca i1
  %l126 = alloca { i64, ptr }
  %l129 = alloca i1
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb94
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  store i8 %t23, ptr %l4, !tbaa !22
  %t25 = load i8, ptr %l4, !tbaa !22
  %t27 = icmp eq i8 %t25, 34
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  %t33 = load i8, ptr %l4, !tbaa !22
  %t35 = icmp eq i8 %t33, 59
  br i1 %t35, label %bb17, label %bb18
bb8:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t43, ptr %l26, !tbaa !27
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i8, ptr %t47, i64 %t44
  %t49 = load i8, ptr %t48, !tbaa !32
  %t51 = icmp ne i8 %t49, 34
  store i1 %t51, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t53 = load i1, ptr %l25, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l3, !tbaa !24
  br label %bb15
bb15:
  br label %bb8
bb16:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l3, !tbaa !24
  br label %bb92
bb17:
  br label %bb19
bb18:
  %t64 = load i8, ptr %l4, !tbaa !22
  %t66 = icmp eq i8 %t64, 37
  br i1 %t66, label %bb28, label %bb29
bb19:
  %t68 = load i64, ptr %l3, !tbaa !24
  %t69 = load i64, ptr %l2, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t74 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t74, ptr %l41, !tbaa !27
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i8, ptr %t78, i64 %t75
  %t80 = load i8, ptr %t79, !tbaa !32
  %t82 = icmp ne i8 %t80, 10
  store i1 %t82, ptr %l40, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb22
bb22:
  %t84 = load i1, ptr %l40, !tbaa !21
  %t85 = xor i1 %t84, true
  br i1 %t85, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t87 = load i64, ptr %l3, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l3, !tbaa !24
  br label %bb26
bb26:
  br label %bb19
bb27:
  br label %bb91
bb28:
  %t91 = load i64, ptr %l3, !tbaa !24
  %t93 = add i64 %t91, 1
  %t94 = load i64, ptr %l2, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  store i1 %t97, ptr %l50, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb30
bb30:
  %t99 = load i1, ptr %l50, !tbaa !21
  br i1 %t99, label %bb31, label %bb32
bb31:
  %t100 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t100, ptr %l56, !tbaa !27
  %t101 = load i64, ptr %l3, !tbaa !24
  %t103 = add i64 %t101, 1
  %t105 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr i8, ptr %t106, i64 %t103
  %t108 = load i8, ptr %t107, !tbaa !32
  %t110 = icmp eq i8 %t108, 34
  store i1 %t110, ptr %l55, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb33
bb33:
  %t112 = load i1, ptr %l55, !tbaa !21
  br i1 %t112, label %bb34, label %bb35
bb34:
  %t113 = load i64, ptr %l3, !tbaa !24
  %t115 = add i64 %t113, 2
  store i64 %t115, ptr %l5, !tbaa !24
  %t117 = load i64, ptr %l5, !tbaa !24
  store i64 %t117, ptr %l3, !tbaa !24
  br label %bb36
bb35:
  %t119 = load i8, ptr %l4, !tbaa !22
  %t121 = icmp eq i8 %t119, 64
  br i1 %t121, label %bb48, label %bb49
bb36:
  %t123 = load i64, ptr %l3, !tbaa !24
  %t124 = load i64, ptr %l2, !tbaa !24
  %t127 = icmp slt i64 %t123, %t124
  br i1 %t127, label %bb37, label %bb38
bb37:
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t129, ptr %l68, !tbaa !27
  %t130 = load i64, ptr %l3, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i8, ptr %t133, i64 %t130
  %t135 = load i8, ptr %t134, !tbaa !32
  %t137 = icmp ne i8 %t135, 34
  store i1 %t137, ptr %l67, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb39
bb39:
  %t139 = load i1, ptr %l67, !tbaa !21
  %t140 = xor i1 %t139, true
  br i1 %t140, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  %t142 = load i64, ptr %l3, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l3, !tbaa !24
  br label %bb43
bb43:
  br label %bb36
bb44:
  %t146 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t146, i64 1)
  br label %bb45
bb45:
  %t148 = load ptr, ptr %lp1
  %t149 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t148, i64 %t149)
  br label %bb46
bb46:
  %t152 = load ptr, ptr %lp1
  %t153 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t152, i64 %t153)
  br label %bb47
bb47:
  %t156 = load i64, ptr %l3, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l3, !tbaa !24
  br label %bb90
bb48:
  %t160 = load i64, ptr %l3, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l6, !tbaa !24
  %t164 = load i64, ptr %l6, !tbaa !24
  store i64 %t164, ptr %l3, !tbaa !24
  br label %bb50
bb49:
  %t166 = load i8, ptr %l4, !tbaa !22
  %t168 = icmp eq i8 %t166, 33
  br i1 %t168, label %bb66, label %bb67
bb50:
  %t170 = load i64, ptr %l3, !tbaa !24
  %t171 = load i64, ptr %l2, !tbaa !24
  %t174 = icmp slt i64 %t170, %t171
  br i1 %t174, label %bb51, label %bb52
bb51:
  %t176 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t176, ptr %l91, !tbaa !27
  %t177 = load i64, ptr %l3, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i8, ptr %t180, i64 %t177
  %t182 = load i8, ptr %t181, !tbaa !32
  %t184 = call i1 @compiler_2femit_2esymbolChar(i8 %t182)
  store i1 %t184, ptr %l94
  br label %bb53
bb52:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb54
bb53:
  %t185 = load i1, ptr %l94, !tbaa !21
  store i1 %t185, ptr %l90, !tbaa !21
  br label %bb54
bb54:
  %t186 = load i1, ptr %l90, !tbaa !21
  %t187 = xor i1 %t186, true
  br i1 %t187, label %bb55, label %bb56
bb55:
  br label %bb59
bb56:
  br label %bb57
bb57:
  %t189 = load i64, ptr %l3, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l3, !tbaa !24
  br label %bb58
bb58:
  br label %bb50
bb59:
  %t193 = load i64, ptr %l3, !tbaa !24
  %t194 = load i64, ptr %l6, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb60, label %bb61
bb60:
  %t199 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t199, i64 0)
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t201 = load ptr, ptr %lp1
  %t202 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t201, i64 %t202)
  br label %bb63
bb63:
  %t205 = load ptr, ptr %lp1
  %t206 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t205, i64 %t206)
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb89
bb66:
  %t209 = load i64, ptr %l3, !tbaa !24
  %t211 = add i64 %t209, 1
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = icmp slt i64 %t211, %t212
  store i1 %t215, ptr %l108, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb68
bb68:
  %t217 = load i1, ptr %l108, !tbaa !21
  br i1 %t217, label %bb69, label %bb70
bb69:
  %t218 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t218, ptr %l114, !tbaa !27
  %t219 = load i64, ptr %l3, !tbaa !24
  %t221 = add i64 %t219, 1
  %t223 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr i8, ptr %t224, i64 %t221
  %t226 = load i8, ptr %t225, !tbaa !32
  %t228 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t226)
  store i1 %t228, ptr %l118
  br label %bb71
bb70:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb72
bb71:
  %t229 = load i1, ptr %l118, !tbaa !21
  store i1 %t229, ptr %l113, !tbaa !21
  br label %bb72
bb72:
  %t230 = load i1, ptr %l113, !tbaa !21
  br i1 %t230, label %bb73, label %bb74
bb73:
  %t231 = load i64, ptr %l3, !tbaa !24
  store i64 %t231, ptr %l7, !tbaa !24
  %t233 = load i64, ptr %l3, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l3, !tbaa !24
  br label %bb75
bb74:
  %t237 = load i64, ptr %l3, !tbaa !24
  %t239 = add i64 %t237, 1
  store i64 %t239, ptr %l3, !tbaa !24
  br label %bb88
bb75:
  %t241 = load i64, ptr %l3, !tbaa !24
  %t242 = load i64, ptr %l2, !tbaa !24
  %t245 = icmp slt i64 %t241, %t242
  br i1 %t245, label %bb76, label %bb77
bb76:
  %t247 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t247, ptr %l126, !tbaa !27
  %t248 = load i64, ptr %l3, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i8, ptr %t251, i64 %t248
  %t253 = load i8, ptr %t252, !tbaa !32
  %t255 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t253)
  store i1 %t255, ptr %l129
  br label %bb78
bb77:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb79
bb78:
  %t256 = load i1, ptr %l129, !tbaa !21
  store i1 %t256, ptr %l125, !tbaa !21
  br label %bb79
bb79:
  %t257 = load i1, ptr %l125, !tbaa !21
  %t258 = xor i1 %t257, true
  br i1 %t258, label %bb80, label %bb81
bb80:
  br label %bb84
bb81:
  br label %bb82
bb82:
  %t260 = load i64, ptr %l3, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l3, !tbaa !24
  br label %bb83
bb83:
  br label %bb75
bb84:
  %t264 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t264, i64 2)
  br label %bb85
bb85:
  %t266 = load ptr, ptr %lp1
  %t267 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t266, i64 %t267)
  br label %bb86
bb86:
  %t270 = load ptr, ptr %lp1
  %t271 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t270, i64 %t271)
  br label %bb87
bb87:
  br label %bb88
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  br label %bb2
bb94:
  %t274 = load ptr, ptr %lp1
  %t275 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t274
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t275, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %rv = alloca %"std/prelude/text:StringBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l0
  store %"std/prelude/text:StringBuilder" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/text:StringBuilder", ptr %rv
  ret %"std/prelude/text:StringBuilder" %rr
}

define available_externally noalias ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln) alwaysinline {
entry:
  ; every allocation is rounded up to 8 bytes so the NEXT one starts 8-aligned. The bump offset is a
  ; raw byte sum, so without this a 12-byte "Array<I32>(3)" left the following allocation at offset 12 -
  ; fine for an i32 but misaligned for any i64 or pointer field, which is UB at the LLVM level even
  ; where the hardware tolerates it. Latent before; the dtor nodes below (24 bytes, three pointers,
  ; one per registered instance) made it near-certain to be hit. The chunk's own data area is
  ; already 64-aligned (O8a): the chunk is, and its header is 64 bytes.
  %sizeup = add i64 %rawsize, 7
  %size8 = and i64 %sizeup, -8
  ; E10: an allocation of nothing still gets storage of its own, so two of them are two instances (an empty array
  ; made twice, a struct with no fields built twice) - a zero size bumped nothing, and handed both the same address
  %size0 = icmp eq i64 %size8, 0
  %size = select i1 %size0, i64 8, i64 %size8
  %alnm1 = sub i64 %aln, 1
  %alnmask = sub i64 0, %aln
  ; every offset is a multiple of 8 already (every size is), so an 8-aligned allocation - every aggregate, and every
  ; array under 32 bytes, decided while compiling where the size is known - takes the offset as it is
  %round = icmp ugt i64 %aln, 8
  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %head = load ptr, ptr %headptr, !tbaa !59
  %headnull = icmp eq ptr %head, null
  br i1 %headnull, label %needchunk, label %checkspace
checkspace:
  %csusedptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 1
  %csused = load i64, ptr %csusedptr, !tbaa !60
  %cscapptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 2
  %cscap = load i64, ptr %cscapptr, !tbaa !60
  %csup = add i64 %csused, %alnm1
  %csrounded = and i64 %csup, %alnmask
  %csaligned = select i1 %round, i64 %csrounded, i64 %csused
  %remaining = sub i64 %cscap, %csaligned
  %fits = icmp uge i64 %remaining, %size
  br i1 %fits, label %bump, label %needchunk
  ; the common case, complete in itself: the offset just computed, bumped
bump:
  %dataptr = getelementptr %olang.chunk, ptr %head, i32 1
  %result = getelementptr i8, ptr %dataptr, i64 %csaligned
  %newused = add i64 %csaligned, %size
  store i64 %newused, ptr %csusedptr, !tbaa !60
  ; B19b: a benchmark build counts what this thread allocates - here and at the slow path's own bump, so each
  ; allocation is counted once wherever it is made (a region's and a forwarded scope's come back through here)
; @bench %bna = load i64, ptr @__olang_bench_allocs
; @bench %bna1 = add i64 %bna, 1
; @bench store i64 %bna1, ptr @__olang_bench_allocs
; @bench %bnb = load i64, ptr @__olang_bench_bytes
; @bench %bnb1 = add i64 %bnb, %size
; @bench store i64 %bnb1, ptr @__olang_bench_bytes
  ret ptr %result
needchunk:
  %slow = tail call ptr @__olang_scope_alloc_slow(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %slow
}
define available_externally void @__olang_scope_close(ptr %scope) alwaysinline {
entry:
  %fptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 4
  %f = load ptr, ptr %fptr, !tbaa !59
  %hasf = icmp ne ptr %f, null
  br i1 %hasf, label %parts, label %start
parts:
  %pdp = getelementptr %olang.scope, ptr %scope, i32 0, i32 1
  %pd = load ptr, ptr %pdp, !tbaa !59
  %php = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %ph = load ptr, ptr %php, !tbaa !59
  %ptp = getelementptr %olang.scope, ptr %scope, i32 0, i32 2
  %pt = load ptr, ptr %ptp, !tbaa !59
  %folded = call { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr %f, ptr %pd, ptr %ph, ptr %pt)
  %fd = extractvalue { ptr, ptr, ptr } %folded, 0
  store ptr %fd, ptr %pdp, !tbaa !59
  call void @__olang_dtor_head(ptr %fd, ptr %pdp)
  %fh = extractvalue { ptr, ptr, ptr } %folded, 1
  store ptr %fh, ptr %php, !tbaa !59
  %ft = extractvalue { ptr, ptr, ptr } %folded, 2
  store ptr %ft, ptr %ptp, !tbaa !59
  store ptr null, ptr %fptr, !tbaa !59
  br label %start
start:
  %dheadptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 1
  br label %dloop
  ; C9a: a destructor's own top level is this scope - its instance's, alive until every destructor has run - so
  ; what it builds through its instance's fields lives where they lead, and is reclaimed with the rest below. A
  ; destructor it registered there (a value it built) runs as it returns, as one in a function's own scope would,
  ; before the next of this scope's: registering puts it at the head of the list, ahead of what is left.
  ; Each node is taken off the list before its destructor runs, so the list always holds exactly what is left to
  ; run: a destructor that leaves by a failed check while a test runs (S18) leaves the rest here, and the unwind's
  ; close of this same scope (__olang_unwind_to) runs them - each destructor still exactly once (C10)
dloop:
  %dcur = load ptr, ptr %dheadptr, !tbaa !59
  %dempty = icmp eq ptr %dcur, null
  br i1 %dempty, label %chunks, label %dcall
dcall:
  %dnextptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 0
  %dnext = load ptr, ptr %dnextptr
  store ptr %dnext, ptr %dheadptr, !tbaa !59
  %dhasnext = icmp ne ptr %dnext, null
  br i1 %dhasnext, label %dfixpp, label %drun
dfixpp:
  %dnpp = getelementptr %olang.dtornode, ptr %dnext, i32 0, i32 3
  store ptr %dheadptr, ptr %dnpp
  br label %drun
drun:
  %instptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 1
  %inst = load ptr, ptr %instptr
  %fnptr = getelementptr %olang.dtornode, ptr %dcur, i32 0, i32 2
  %fn = load ptr, ptr %fnptr
  call void %fn(ptr %inst, ptr %scope)
  ; no free: the node lives in this scope's own arena and goes back to the pool with its chunk below.
  ; ...and what a task the destructor spawned built here, in a part of this scope it made while the destructor ran
  ; (P2), is folded in as the destructor returns - its join has waited for every such task - its destructors ahead
  ; of the ones the destructor registered itself, as the parts at entry are ahead of the scope's own
  %wp = load atomic ptr, ptr %fptr acquire, align 8
  %haswp = icmp ne ptr %wp, null
  br i1 %haswp, label %dparts, label %dloop
dparts:
  %wdh = load ptr, ptr %dheadptr, !tbaa !59
  %whp = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %wh = load ptr, ptr %whp, !tbaa !59
  %wtp = getelementptr %olang.scope, ptr %scope, i32 0, i32 2
  %wt = load ptr, ptr %wtp, !tbaa !59
  %wfolded = call { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr %wp, ptr %wdh, ptr %wh, ptr %wt)
  %wfd = extractvalue { ptr, ptr, ptr } %wfolded, 0
  store ptr %wfd, ptr %dheadptr, !tbaa !59
  call void @__olang_dtor_head(ptr %wfd, ptr %dheadptr)
  %wfh = extractvalue { ptr, ptr, ptr } %wfolded, 1
  store ptr %wfh, ptr %whp, !tbaa !59
  %wft = extractvalue { ptr, ptr, ptr } %wfolded, 2
  store ptr %wft, ptr %wtp, !tbaa !59
  store ptr null, ptr %fptr, !tbaa !59
  br label %dloop
  ; the regions made in this scope (O8d), after its destructors - which may read what this scope's objects hold there -
  ; and before its chunks: given the list, not the header, so the header does not escape into the call
chunks:
  %kidsptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 6
  %kids = load ptr, ptr %kidsptr, !tbaa !59
  %haskids = icmp ne ptr %kids, null
  br i1 %haskids, label %closekids, label %ownchunks
closekids:
  store ptr null, ptr %kidsptr, !tbaa !59
  call void @__olang_close_kids(ptr %kids)
  br label %ownchunks
ownchunks:
  %headptr = getelementptr %olang.scope, ptr %scope, i32 0, i32 0
  %head = load ptr, ptr %headptr, !tbaa !59
  %empty = icmp eq ptr %head, null
  br i1 %empty, label %done, label %give
  ; every chunk to the pool, out of line, so that what is left here is small; and this is always inlined, so a
  ; scope's header never escapes into a call and one allocating nothing on a path costs nothing there - its header
  ; kept in registers, the close folded away (LLVM's own estimate put it past the threshold for a cold call, and a
  ; loop's body scope then cost two stores and two tests every pass). The tail needs no reset: it is read only
  ; while the list is not empty, and set when the list next stops being empty
give:
  store ptr null, ptr %headptr, !tbaa !59
  ; -s: no chunk a scope gives back is reused at once - it is poisoned and held out of reach for a while
  ; one 4KB chunk, and no spare: it becomes the spare, here
  %hnextptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 0
  %hnext = load ptr, ptr %hnextptr
  %single = icmp eq ptr %hnext, null
  %hclassptr = getelementptr %olang.chunk, ptr %head, i32 0, i32 5
  %hclass = load i64, ptr %hclassptr
  %hsmall = icmp eq i64 %hclass, 0
  %spare = load ptr, ptr @__olang_pool_spare
  %nospare = icmp eq ptr %spare, null
  %one = and i1 %single, %hsmall
  %quick = and i1 %one, %nospare
  br i1 %quick, label %tospare, label %list
tospare:
  store ptr %head, ptr @__olang_pool_spare
  br label %done
list:
  call void @__olang_pool_give_list(ptr %head)
  br label %done
done:
  ret void
}
declare void @__olang_check_failed(ptr) cold noreturn
define available_externally noalias ptr @__olang_scope_alloc(ptr %scope, i64 %rawsize) alwaysinline {
entry:
  %sizeup = add i64 %rawsize, 7
  %size8 = and i64 %sizeup, -8
  %a32 = icmp uge i64 %size8, 32
  %a64 = icmp uge i64 %size8, 64
  %alnA = select i1 %a32, i64 32, i64 8
  %aln = select i1 %a64, i64 64, i64 %alnA
  %p = call ptr @__olang_scope_alloc_a(ptr %scope, i64 %rawsize, i64 %aln)
  ret ptr %p
}
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"/* " }>, align 8
@.d1 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c".h - the C interface of lib" }>, align 8
@.d2 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c".so, written by \22olang build -library " }>, align 8
@.d3 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"\22. */\0A" }>, align 8
define linkonce_odr hidden void @olang_textcopy(ptr %d, ptr %s, i64 %n) alwaysinline {
entry:
  %big = icmp ugt i64 %n, 16
  br i1 %big, label %call, label %s8
call:
  call void @llvm.memcpy.p0.p0.i64(ptr %d, ptr %s, i64 %n, i1 false)
  ret void
s8:
  %ge8 = icmp uge i64 %n, 8
  br i1 %ge8, label %w8, label %s4
w8:
  %e8 = sub i64 %n, 8
  %a8 = load i64, ptr %s, align 1
  %sb8 = getelementptr i8, ptr %s, i64 %e8
  %b8 = load i64, ptr %sb8, align 1
  store i64 %a8, ptr %d, align 1
  %db8 = getelementptr i8, ptr %d, i64 %e8
  store i64 %b8, ptr %db8, align 1
  ret void
s4:
  %ge4 = icmp uge i64 %n, 4
  br i1 %ge4, label %w4, label %s1
w4:
  %e4 = sub i64 %n, 4
  %a4 = load i32, ptr %s, align 1
  %sb4 = getelementptr i8, ptr %s, i64 %e4
  %b4 = load i32, ptr %sb4, align 1
  store i32 %a4, ptr %d, align 1
  %db4 = getelementptr i8, ptr %d, i64 %e4
  store i32 %b4, ptr %db4, align 1
  ret void
s1:
  %none = icmp eq i64 %n, 0
  br i1 %none, label %done, label %w1
w1:
  %h = lshr i64 %n, 1
  %e1 = sub i64 %n, 1
  %a1 = load i8, ptr %s
  %sh = getelementptr i8, ptr %s, i64 %h
  %m1 = load i8, ptr %sh
  %se = getelementptr i8, ptr %s, i64 %e1
  %z1 = load i8, ptr %se
  store i8 %a1, ptr %d
  %dh = getelementptr i8, ptr %d, i64 %h
  store i8 %m1, ptr %dh
  %de = getelementptr i8, ptr %d, i64 %e1
  store i8 %z1, ptr %de
  br label %done
done:
  ret void
}
@.d4 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"#ifndef " }>, align 8
@.d5 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"_H\0A#define " }>, align 8
@.d6 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"_H\0A\0A#include <stdbool.h>\0A#include <stdint.h>\0A\0A" }>, align 8
@.d7 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"#ifdef __cplusplus\0Aextern \22C\22 {\0A#endif\0A\0A" }>, align 8
@.d8 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typedef struct " }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c";\0A" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d12 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"/* what an entry declaring errors returns: 0, or one of these */\0A" }>, align 8
@.d13 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"#define " }>, align 8
@.d14 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"_ERROR ((int32_t)" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d16 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"#define " }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d18 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" ((int32_t)" }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d21 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"\0A#ifdef __cplusplus\0A}\0A#endif\0A\0A#endif\0A" }>, align 8
@.d22 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr, ptr" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ptr byval(" }>, align 8
@.d29 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
declare void @__olang_errpay_pop()
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d32 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"!DIFile(filename: \22" }>, align 8
@.d33 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"\22, directory: \22" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\22)" }>, align 8
@.d35 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"!DIFile(filename: \22<generated>\22, directory: \22\22)" }>, align 8
@.d36 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"declare" }>, align 8
@.d37 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"declare " }>, align 8
@.d38 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d42 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %env" }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d44 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %out" }>, align 8
@.d45 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d46 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %v" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d48 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %a" }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %a" }>, align 8
@.d50 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"c, ptr %a" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
@.d52 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" %a" }>, align 8
@.d53 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"declare" }>, align 8
@.d54 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d57 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" #0 {\0A" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"f" }>, align 8
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftypes_3aKind(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 33}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 33}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"32" }>, align 8
@.d63 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"64" }>, align 8
@.d64 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"llvm." }>, align 8
@.d65 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".f" }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".walk" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_scope_alloc_a" }>, align 8
@.d70 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_scope_alloc_a(ptr " }>, align 8
@.d71 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d73 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d74 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d75 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d76 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d77 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d79 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d80 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"c\22" }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d82 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d85 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" x " }>, align 8
@.d86 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aOperand(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %l8 = alloca i1
  %l26 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 4}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 4}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb16
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 3, label %bb6 ]
bb3:
  br label %bb16
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t11, i32 0, i32 0
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t13, i32 0, i32 1
  %t15 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t14, i32 0, i32 0
  %t18 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aLvalue(ptr %t12, ptr %t15)
  store i1 %t18, ptr %l8
  br label %bb7
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t21 = getelementptr { i32, i64 }, ptr %t20, i32 0, i32 0
  %t22 = load i32, ptr %t21
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 1
  %t25 = getelementptr { i32, i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25
  %t29 = icmp eq i32 %t22, %t26
  br i1 %t29, label %bb9, label %bb1
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t33 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t37 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t36, i32 0, i32 0
  %t38 = load i32, ptr %t37
  %t41 = icmp eq i32 %t34, %t38
  br i1 %t41, label %bb11, label %bb1
bb7:
  %t43 = load i1, ptr %l8, !tbaa !21
  br i1 %t43, label %bb8, label %bb1
bb8:
  br label %bb3
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t46 = getelementptr { i32, i64 }, ptr %t45, i32 0, i32 1
  %t47 = load i64, ptr %t46
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t50 = getelementptr { i32, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  %t54 = icmp eq i64 %t47, %t51
  br i1 %t54, label %bb10, label %bb1
bb10:
  br label %bb3
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t58 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t57, i32 0, i32 1
  %t59 = load i32, ptr %t58
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t62 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62
  %t66 = icmp eq i32 %t59, %t63
  br i1 %t66, label %bb12, label %bb1
bb12:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t70 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t69, i32 0, i32 2
  %t71 = load i64, ptr %t70
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t74 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t73, i32 0, i32 2
  %t75 = load i64, ptr %t74
  %t78 = icmp eq i64 %t71, %t75
  br i1 %t78, label %bb13, label %bb1
bb13:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t82 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t81, i32 0, i32 3
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t85 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t84, i32 0, i32 3
  %t88 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %t82, ptr %t85)
  store i1 %t88, ptr %l26
  br label %bb14
bb14:
  %t89 = load i1, ptr %l26, !tbaa !21
  br i1 %t89, label %bb15, label %bb1
bb15:
  br label %bb3
bb16:
  %t90 = load i1, ptr %l2, !tbaa !21
  store i1 %t90, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d87 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d88 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d89 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i64 0, i64 " }>, align 8
@.d90 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d92 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d93 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d94 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d95 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"call void @llvm.memmove.p0.p0.i64(ptr " }>, align 8
@.d96 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d97 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d98 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d99 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"store " }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d101 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@.d102 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" = alloca " }>, align 8
@.d103 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"  %" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d104 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" = insertvalue " }>, align 8
@.d105 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"  call void asm sideeffect \22\22, \22r\22(ptr " }>, align 8
@.d106 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d107 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"%hdl = call ptr @llvm.coro.begin(" }>, align 8
@.d108 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d109 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d110 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"testdata/fuzz/" }>, align 8
@.d111 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"/testdata/fuzz/" }>, align 8
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare { ptr, ptr, ptr } @__olang_scope_fold_parts(ptr, ptr, ptr, ptr) noinline
define available_externally void @__olang_dtor_head(ptr %node, ptr %at) alwaysinline {
entry:
  %has = icmp ne ptr %node, null
  br i1 %has, label %fix, label %done
fix:
  %ppp = getelementptr %olang.dtornode, ptr %node, i32 0, i32 3
  store ptr %at, ptr %ppp
  br label %done
done:
  ret void
}
declare void @__olang_close_kids(ptr) noinline
@__olang_pool_spare = external thread_local(initialexec) global ptr
declare void @__olang_pool_give_list(ptr) noinline
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aLvalue(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/mir:Lvalue", ptr %t1, i32 0, i32 0
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/mir:Lvalue", ptr %t3, i32 0, i32 0
  %t7 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aBase(ptr %t2, ptr %t4)
  store i1 %t7, ptr %l5
  br label %bb2
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb6
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb3, label %bb1
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/mir:Lvalue", ptr %t9, i32 0, i32 1
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Lvalue", ptr %t11, i32 0, i32 1
  %t15 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aRange(ptr %t10, ptr %t12)
  store i1 %t15, ptr %l8
  br label %bb4
bb4:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb5, label %bb1
bb5:
  br label %bb6
bb6:
  %t17 = load i1, ptr %l2, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/source:Span", ptr %t1, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/source:Span", ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = icmp eq i32 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb4
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/source:Span", ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/source:Span", ptr %t14, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = icmp eq i32 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  br label %bb4
bb4:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aBase(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 3}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 3}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb10
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 ]
bb3:
  br label %bb10
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  %t20 = icmp eq i32 %t13, %t17
  br i1 %t20, label %bb6, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64, i32, i32 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64, i32, i32 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb7, label %bb1
bb6:
  br label %bb3
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i64, i32, i32 }, ptr %t35, i32 0, i32 1
  %t37 = load i32, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i64, i32, i32 }, ptr %t39, i32 0, i32 1
  %t41 = load i32, ptr %t40
  %t44 = icmp eq i32 %t37, %t41
  br i1 %t44, label %bb8, label %bb1
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64, i32, i32 }, ptr %t47, i32 0, i32 2
  %t49 = load i32, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64, i32, i32 }, ptr %t51, i32 0, i32 2
  %t53 = load i32, ptr %t52
  %t56 = icmp eq i32 %t49, %t53
  br i1 %t56, label %bb9, label %bb1
bb9:
  br label %bb3
bb10:
  %t58 = load i1, ptr %l2, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aRange(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/mir:Range", ptr %t1, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/mir:Range", ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = icmp eq i32 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb4
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Range", ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/mir:Range", ptr %t14, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = icmp eq i32 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  br label %bb4
bb4:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2femit_3acDecls_2ector(ptr %out, ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e4a7c1511235e6a9_9511e73f4ca5cc95 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecEntryDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, ptr %a3)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eExportErrors(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecWordName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstGroupOf(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, ptr %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcabi_2ePartsList(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_2854570d7fadf599_61afc1034d008305 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0)
declare { i64, ptr } @compiler_2femit_2eescape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_84dc5702af008bfa_68e8ae64d289b3ce = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewantType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_5ad0f5036011b2cd_7d6f5911e17dc851 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_32ecc2f0b2e54909_486ad1b7ea10ca75 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2einlining(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_616c6f643d0ce9fd_dfe523617d4699c1 = external constant [0 x i8]
@olang_loc_b37ed008d0080fcc_cc9019489ebc5a30 = external constant [0 x i8]
@olang_loc_e68028fa4f0f457e_ac0c180900ac4e62 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2femit_2emathExact = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [24 x i8] }>
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8b9f7f38fd25c7fb_28bbaeaad75485df = external constant [0 x i8]
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2elinkFor(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@G_2ecompiler_2femit_2ehexDigits = external constant <{ [8 x i8], ptr }>
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstItem(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_617f1f302e56ab61_28fb076f83c3eed5 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2efillLoop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, i64 %a5)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_9357034ceffa49e9_ad514f9345461395 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedMake(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eapart(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, %"compiler/mir:Range" %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebuildInto(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3)
@olang_loc_1c84b7c0e51a2751_bb90751f2238f075 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
@olang_loc_6e037ff8088c42f2_1018a41289232aae = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_1085358c18365730_69fd93bfc7477ec4 = external constant [0 x i8]
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5, ptr %a6, ptr %a7)
declare void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
@olang_loc_c9d6c002ea2b5b8d_4b7ac4eff7d67ea9 = external constant [0 x i8]
@olang_loc_32b5d421b512c25c_dc383116d87dabd8 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_6c57ef0c135dbe5a_494e4be183ac47d6 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2einsertedSlot(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2ePus_H7d1143c374f11cf9cab67f1e79e7bcb4(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eLen_H327daf8a5f05e7deba4c08807621a9fe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_3e_2eAt__Hb06c5aa34d45867a1decef3b510ab43e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
@olang_loc_ab80f75f486ddfb7_48b76dc45f37bd33 = external constant [0 x i8]
@olang_loc_49b4cd85cfdf12cc_7e69eb5c8764c358 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8432ee6ea571e3a6_71b81f3ed515f9b2 = external constant [0 x i8]
declare i1 @compiler_2femit_2esymbolChar(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2ector(ptr %v0)

!20 = !{!"olang"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{!"scopehdr", !20, i64 0}
!50 = !{!"chunkhdr", !20, i64 0}
!59 = !{!49, !49, i64 0}
!60 = !{!50, !50, i64 0}
!17 = !{!"arraydesc", !20, i64 0}
!18 = !{!"closure", !20, i64 0}
!47 = !{!"arraydesc[]", !20, i64 0}
!19 = !{!"ref", !20, i64 0}
!48 = !{!"ref[]", !20, i64 0}
!29 = !{!19, !19, i64 0}
!39 = !{!48, !48, i64 0}
!27 = !{!17, !17, i64 0}
!28 = !{!18, !18, i64 0}
!37 = !{!47, !47, i64 0}
!11 = !{!"bool", !20, i64 0}
!21 = !{!11, !11, i64 0}
!41 = !{!"bool[]", !20, i64 0}
!31 = !{!41, !41, i64 0}
!51 = !{!"i8", !20, i64 0}
!61 = !{!51, !51, i64 0}
!91 = !{!"i8[]", !20, i64 0}
!81 = !{!91, !91, i64 0}
!52 = !{!"i16", !20, i64 0}
!62 = !{!52, !52, i64 0}
!92 = !{!"i16[]", !20, i64 0}
!82 = !{!92, !92, i64 0}
!13 = !{!"int32", !20, i64 0}
!23 = !{!13, !13, i64 0}
!43 = !{!"int32[]", !20, i64 0}
!33 = !{!43, !43, i64 0}
!14 = !{!"int64", !20, i64 0}
!24 = !{!14, !14, i64 0}
!44 = !{!"int64[]", !20, i64 0}
!34 = !{!44, !44, i64 0}
!12 = !{!"byte", !20, i64 0}
!22 = !{!12, !12, i64 0}
!42 = !{!"byte[]", !20, i64 0}
!32 = !{!42, !42, i64 0}
!53 = !{!"u16", !20, i64 0}
!63 = !{!53, !53, i64 0}
!93 = !{!"u16[]", !20, i64 0}
!83 = !{!93, !93, i64 0}
!54 = !{!"u32", !20, i64 0}
!64 = !{!54, !54, i64 0}
!94 = !{!"u32[]", !20, i64 0}
!84 = !{!94, !94, i64 0}
!55 = !{!"u64", !20, i64 0}
!65 = !{!55, !55, i64 0}
!95 = !{!"u64[]", !20, i64 0}
!85 = !{!95, !95, i64 0}
!56 = !{!"f16", !20, i64 0}
!66 = !{!56, !56, i64 0}
!96 = !{!"f16[]", !20, i64 0}
!86 = !{!96, !96, i64 0}
!57 = !{!"bf16", !20, i64 0}
!67 = !{!57, !57, i64 0}
!97 = !{!"bf16[]", !20, i64 0}
!87 = !{!97, !97, i64 0}
!15 = !{!"float32", !20, i64 0}
!25 = !{!15, !15, i64 0}
!45 = !{!"float32[]", !20, i64 0}
!35 = !{!45, !45, i64 0}
!16 = !{!"float64", !20, i64 0}
!26 = !{!16, !16, i64 0}
!46 = !{!"float64[]", !20, i64 0}
!36 = !{!46, !46, i64 0}

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
