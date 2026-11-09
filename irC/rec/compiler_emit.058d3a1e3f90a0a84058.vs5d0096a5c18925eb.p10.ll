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
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/emit:scopeUse" = type { { i64, ptr }, i1 }
define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/cabi:Way"
  %l4 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca i1
  %l30 = alloca %"compiler/cabi:Way"
  %l32 = alloca { i64, ptr }
  %l36 = alloca i1
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t20 = icmp eq i32 %t16, %t17
  store i1 %t20, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l12, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l18, !tbaa !24
  %t26 = load i64, ptr %l18, !tbaa !24
  %t27 = mul i64 %t26, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l19, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = mul i64 %t35, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t37, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t38 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/emit:Emitter", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l23
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/emit:Emitter", ptr %t47, i32 0, i32 3
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:Emitter", ptr %t51, i32 0, i32 48
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t55 = load i32, ptr %l2, !tbaa !23
  %t57 = inttoptr i64 0 to ptr
  %t61 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v0, ptr %s0, ptr %t57, ptr %t50, { i64, ptr } %t54, i32 %t55)
  store %"compiler/cabi:Way" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"compiler/cabi:Way", ptr %l30
  store %"compiler/cabi:Way" %t62, ptr %l3
  %t63 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 5}
  store i32 %t64, ptr %l4
  %t66 = load i32, ptr %l4, !range !{i32 0, i32 5}
  %t68 = trunc i64 0 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb18
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t71 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 4
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t74, ptr %l36
  br label %bb13
bb13:
  %t75 = load i1, ptr %l36, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t78 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 4
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 1
  %t82 = extractvalue { i64, ptr } %t79, 0
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t81, i64 %t82)
  %t87 = getelementptr i8, ptr %t86, i64 %t82
  call void @olang_textcopy(ptr %t87, ptr %t83, i64 %t84)
  %t88 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l38, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb16
bb16:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l2, !tbaa !23
  %t102 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s2, ptr %t98, i32 %t99)
  store { i64, ptr } %t102, ptr %l44
  br label %bb17
bb17:
  %t103 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t104, i64 %t105)
  %t111 = getelementptr i8, ptr %t110, i64 %t105
  call void @olang_textcopy(ptr %t111, ptr %t107, i64 %t108)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  store { i64, ptr } %t113, ptr %l32, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb18:
  %t115 = load i32, ptr %l4, !range !{i32 0, i32 5}
  %t117 = trunc i64 1 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t121 = call { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t121, ptr %l49
  br label %bb22
bb22:
  %t122 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t122, ptr %l32, !tbaa !27
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t123, ptr %l32, !tbaa !27
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_6aada305a3873fb6_c16c54d6f05c33ea)
  unreachable
bb28:
  %t125 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  store i64 %t126, ptr %l52, !tbaa !24
  %t127 = load i64, ptr %l52, !tbaa !24
  %t128 = mul i64 %t127, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l53, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l52, !tbaa !24
  %t137 = mul i64 %t136, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %t135, i64 %t137, i1 false)
  %t138 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t138, ptr %l32, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t139 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t139, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l41 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t2 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } %t1, 1
  %t6 = extractvalue { i64, ptr } %t1, 0
  %t7 = add i64 %t3, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t2, i64 %t3)
  %t9 = getelementptr i8, ptr %t8, i64 %t3
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  store { i64, ptr } %t11, ptr %l2, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 28
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } %t16)
  store i1 %t19, ptr %l9
  br label %bb1
bb1:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/emit:Emitter", ptr %t21, i32 0, i32 28
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %s0, ptr %s2, ptr %t23, { i64, ptr } %t24)
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l15
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb5, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l14
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t32, ptr %l10, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l10, !tbaa !27
  br label %bb7
bb7:
  %t33 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t33, ptr %l16, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l17, !tbaa !24
  %t36 = load i64, ptr %l17, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l18, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l17, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t47, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t48 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/emit:Emitter", ptr %t49, i32 0, i32 25
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t56 = call i64 @__olang_fmt_i64(ptr null, i64 %t52)
  %t57 = add i64 %t54, %t56
  %t58 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t53, i64 %t54)
  %t59 = getelementptr i8, ptr %t58, i64 %t54
  %t60 = call i64 @__olang_fmt_i64(ptr %t59, i64 %t52)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t58, 1
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t63, ptr %lp3
  %t65 = load ptr, ptr %lp3
  store { i64, ptr } %t62, ptr %t65, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l22, !tbaa !29
  %t67 = load ptr, ptr %l22, !tbaa !29
  %t68 = getelementptr %"compiler/emit:Emitter", ptr %t67, i32 0, i32 25
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = add i64 %t69, 1
  %t73 = load ptr, ptr %l22, !tbaa !29
  %t74 = getelementptr %"compiler/emit:Emitter", ptr %t73, i32 0, i32 25
  store i64 %t71, ptr %t74, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l25, !tbaa !29
  %t76 = load ptr, ptr %lp3
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  store i64 %t79, ptr %l27, !tbaa !24
  %t80 = load ptr, ptr %lp3
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l28, !tbaa !24
  %t83 = icmp sge i64 1, 0
  br i1 %t83, label %bb9, label %bb10
bb9:
  %t85 = load i64, ptr %l27, !tbaa !24
  %t86 = icmp sle i64 1, %t85
  br i1 %t86, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_5836d127b451ff05_764b57a187e296f1)
  unreachable
bb11:
  %t88 = load i64, ptr %l27, !tbaa !24
  %t89 = load i64, ptr %l28, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_5836d127b451ff05_764b57a187e296f1)
  unreachable
bb13:
  %t92 = load ptr, ptr %lp3
  %t93 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l27, !tbaa !24
  %t96 = getelementptr i8, ptr %t94, i64 1
  %t97 = sub i64 %t95, 1
  %t98 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t96, 1
  store { i64, ptr } %t99, ptr %l32, !tbaa !27
  %t100 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  store i64 %t100, ptr %l33, !tbaa !24
  %t101 = ptrtoint ptr %s0 to i64
  store i64 %t101, ptr %l34, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t102, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_5836d127b451ff05_764b57a187e296f1)
  unreachable
bb15:
  %t104 = call ptr @__olang_region_make(ptr %s0)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l34, !tbaa !24
  br label %bb16
bb16:
  %t106 = load ptr, ptr %lp3
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l36, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l39, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t115 = call { i64, ptr } @compiler_2femit_2eescape(ptr %v1, ptr %s0, { i64, ptr } %t113)
  store { i64, ptr } %t115, ptr %l41
  br label %bb17
bb17:
  %t116 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t119 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t121 = add i64 %t118, %t120
  %t122 = load i64, ptr %l39, !tbaa !24
  %t123 = call i64 @__olang_fmt_i64(ptr null, i64 %t122)
  %t124 = add i64 %t121, %t123
  %t125 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t128 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = add i64 %t127, %t130
  %t132 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t135 = load i64, ptr %l34
  %t136 = inttoptr i64 %t135 to ptr
  %t137 = call ptr @__olang_scope_alloc(ptr %t136, i64 %t134)
  call void @olang_textcopy(ptr %t137, ptr %t117, i64 %t118)
  %t138 = getelementptr i8, ptr %t137, i64 %t118
  call void @olang_textcopy(ptr %t138, ptr %t119, i64 %t120)
  %t139 = getelementptr i8, ptr %t138, i64 %t120
  %t140 = call i64 @__olang_fmt_i64(ptr %t139, i64 %t122)
  %t141 = getelementptr i8, ptr %t139, i64 %t123
  call void @olang_textcopy(ptr %t141, ptr %t125, i64 %t126)
  %t142 = getelementptr i8, ptr %t141, i64 %t126
  call void @olang_textcopy(ptr %t142, ptr %t129, i64 %t130)
  %t143 = getelementptr i8, ptr %t142, i64 %t130
  call void @olang_textcopy(ptr %t143, ptr %t132, i64 %t133)
  %t144 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t137, 1
  %t147 = load i64, ptr %l34
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = extractvalue { i64, ptr } %t145, 0
  %t150 = extractvalue { i64, ptr } %t145, 1
  %t151 = mul i64 %t149, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %t148, i64 %t151)
  call void @llvm.memcpy.p0.p0.i64(ptr %t152, ptr %t150, i64 %t151, i1 false)
  %t153 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  %t155 = load ptr, ptr %l25, !tbaa !29
  %t156 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t157 = load i64, ptr %l33, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v2, ptr %s0, ptr %s0, ptr %t155, { i64, ptr } %t156, i64 %t157, { i64, ptr } %t154, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb18
bb18:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/emit:Emitter", ptr %t159, i32 0, i32 28
  store ptr %t161, ptr %l45, !tbaa !29
  %t162 = ptrtoint ptr %v0 to i64
  store i64 %t162, ptr %l46, !tbaa !24
  %t163 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t163, label %bb19, label %bb20
bb19:
  %t165 = call ptr @__olang_region_make(ptr %v0)
  %t166 = ptrtoint ptr %t165 to i64
  store i64 %t166, ptr %l46, !tbaa !24
  br label %bb20
bb20:
  %t167 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 1
  %t170 = extractvalue { i64, ptr } %t167, 0
  %t171 = load i64, ptr %l46
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = call ptr @__olang_scope_alloc(ptr %t172, i64 %t170)
  call void @olang_textcopy(ptr %t173, ptr %t169, i64 %t170)
  %t174 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  %t177 = load i64, ptr %l46
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = extractvalue { i64, ptr } %t175, 0
  %t180 = extractvalue { i64, ptr } %t175, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %t178, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  store { i64, ptr } %t184, ptr %l50, !tbaa !27
  %t185 = ptrtoint ptr %v0 to i64
  store i64 %t185, ptr %l51, !tbaa !24
  %t186 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t186, label %bb21, label %bb22
bb21:
  %t188 = call ptr @__olang_region_make(ptr %v0)
  %t189 = ptrtoint ptr %t188 to i64
  store i64 %t189, ptr %l51, !tbaa !24
  br label %bb22
bb22:
  %t190 = load ptr, ptr %lp3
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 1
  %t194 = extractvalue { i64, ptr } %t191, 0
  %t195 = load i64, ptr %l51
  %t196 = inttoptr i64 %t195 to ptr
  %t197 = call ptr @__olang_scope_alloc(ptr %t196, i64 %t194)
  call void @olang_textcopy(ptr %t197, ptr %t193, i64 %t194)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t201 = load i64, ptr %l51
  %t202 = inttoptr i64 %t201 to ptr
  %t203 = extractvalue { i64, ptr } %t199, 0
  %t204 = extractvalue { i64, ptr } %t199, 1
  %t205 = mul i64 %t203, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %t202, i64 %t205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t206, ptr %t204, i64 %t205, i1 false)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  %t209 = load ptr, ptr %l45, !tbaa !29
  %t210 = load { i64, ptr }, ptr %l50, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t209, { i64, ptr } %t210, { i64, ptr } %t208)
  br label %bb23
bb23:
  %t212 = load ptr, ptr %lp3
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t213, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFunctions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/text:LineIter"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i1
  %l21 = alloca %"std/prelude/text:StringBuilder"
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l28 = alloca %"std/prelude/text:LineIter"
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i32
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i32
  %l50 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i32
  %l56 = alloca i1
  %l60 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l70 = alloca i1
  %l71 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l78 = alloca i64
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca i64
  %l86 = alloca i64
  %l88 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca i64
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca i64
  %l96 = alloca i64
  %l98 = alloca i64
  %l106 = alloca ptr
  %l107 = alloca { i64, ptr }
  %l110 = alloca i64
  %l111 = alloca i64
  %l120 = alloca { i64, ptr }
  %l122 = alloca i64
  %l125 = alloca i1
  %l126 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l129 = alloca i64
  %l131 = alloca i64
  %l132 = alloca { i64, ptr }
  %l134 = alloca i1
  %l136 = alloca i1
  %l139 = alloca { i64, ptr }
  %l140 = alloca i1
  %l141 = alloca i1
  %l144 = alloca { i64, ptr }
  %l145 = alloca i1
  %l157 = alloca i64
  %l161 = alloca ptr
  %l163 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load i1, ptr %l17, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = extractvalue { i64, ptr } %t9, 0
  %t13 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t11, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t17, ptr %l21
  br label %bb5
bb5:
  %t18 = load %"std/prelude/text:StringBuilder", ptr %l21
  store %"std/prelude/text:StringBuilder" %t18, ptr %l2
  %t19 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t19, ptr %l22
  br label %bb6
bb6:
  %t20 = load %"std/prelude/text:StringBuilder", ptr %l22
  store %"std/prelude/text:StringBuilder" %t20, ptr %l3
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t21, ptr %l24, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l25, !tbaa !24
  %t24 = load i64, ptr %l25, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l26, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l25, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t38 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %t36)
  store %"std/prelude/text:LineIter" %t38, ptr %l28
  br label %bb7
bb7:
  %t39 = load %"std/prelude/text:LineIter", ptr %l28
  store %"std/prelude/text:LineIter" %t39, ptr %l5
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s4
  %t41 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v1, ptr %v1, ptr %l5)
  %t42 = extractvalue { i32, { i64, ptr } } %t41, 1
  %t43 = extractvalue { i32, { i64, ptr } } %t41, 0
  store i32 %t43, ptr %l32
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb10, label %ok.45, !prof !99
ok.45:
  store { i64, ptr } %t42, ptr %l31
  br label %bb9
bb9:
  %t46 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t46, ptr %l29, !tbaa !27
  br label %bb12
bb10:
  %t47 = load i32, ptr %l32, !tbaa !23
  %t48 = ashr i32 %t47, 16
  %t50 = icmp eq i32 %t48, 1
  store i1 %t50, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb95
bb12:
  %t51 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t51, ptr %l6, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s4, { i64, ptr } %t52, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t54, ptr %l36
  br label %bb13
bb13:
  %t55 = load i1, ptr %l36, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t56 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s4, { i64, ptr } %t56, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t58, ptr %l39
  br label %bb16
bb15:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb16:
  %t59 = load i1, ptr %l39, !tbaa !21
  store i1 %t59, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t60 = load i1, ptr %l37, !tbaa !21
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t61 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l43, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t65 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s4, { i64, ptr } %t61, { i64, ptr } %t64)
  store i1 %t65, ptr %l44
  br label %bb20
bb19:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb21
bb20:
  %t66 = load i1, ptr %l44, !tbaa !21
  %t67 = xor i1 %t66, true
  store i1 %t67, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t69 = load i1, ptr %l40, !tbaa !21
  br i1 %t69, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t72 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s5, { i64, ptr } %t70, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) })
  %t73 = extractvalue { i32, i64 } %t72, 1
  %t74 = extractvalue { i32, i64 } %t72, 0
  store i32 %t74, ptr %l49
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb25, label %ok.76, !prof !99
ok.76:
  store i64 %t73, ptr %l48
  br label %bb24
bb23:
  br label %bb72
bb24:
  %t77 = load i64, ptr %l48, !tbaa !24
  store i64 %t77, ptr %l46, !tbaa !24
  br label %bb27
bb25:
  br label %bb26
bb26:
  store i64 -1, ptr %l46, !tbaa !24
  br label %bb27
bb27:
  %t78 = load i64, ptr %l46, !tbaa !24
  store i64 %t78, ptr %l7, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t81 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s5, { i64, ptr } %t79, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) })
  %t82 = extractvalue { i32, i64 } %t81, 1
  %t83 = extractvalue { i32, i64 } %t81, 0
  store i32 %t83, ptr %l53
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %bb29, label %ok.85, !prof !99
ok.85:
  store i64 %t82, ptr %l52
  br label %bb28
bb28:
  %t86 = load i64, ptr %l52, !tbaa !24
  store i64 %t86, ptr %l50, !tbaa !24
  br label %bb31
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %l50, !tbaa !24
  br label %bb31
bb31:
  %t87 = load i64, ptr %l50, !tbaa !24
  store i64 %t87, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp sge i64 %t88, 0
  br i1 %t90, label %bb32, label %bb33
bb32:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t93 = load i64, ptr %l7, !tbaa !24
  %t96 = icmp sgt i64 %t92, %t93
  store i1 %t96, ptr %l56, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb34
bb34:
  %t98 = load i1, ptr %l56, !tbaa !21
  br i1 %t98, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t99, ptr %l60, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l62, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  store i64 %t103, ptr %l63, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l64, !tbaa !24
  %t106 = load i64, ptr %l62, !tbaa !24
  %t107 = icmp sge i64 %t106, 0
  br i1 %t107, label %bb37, label %bb38
bb36:
  br label %bb71
bb37:
  %t109 = load i64, ptr %l62, !tbaa !24
  %t110 = load i64, ptr %l63, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_b200df0f2ca52fe9_68c86c80ca4bbd4d)
  unreachable
bb39:
  %t113 = load i64, ptr %l63, !tbaa !24
  %t114 = load i64, ptr %l64, !tbaa !24
  %t115 = icmp sle i64 %t113, %t114
  br i1 %t115, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_b200df0f2ca52fe9_68c86c80ca4bbd4d)
  unreachable
bb41:
  %t117 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l62, !tbaa !24
  %t120 = load i64, ptr %l63, !tbaa !24
  %t121 = getelementptr i8, ptr %t118, i64 %t119
  %t122 = sub i64 %t120, %t119
  %t123 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  store { i64, ptr } %t124, ptr %l9, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s6, { i64, ptr } %t126, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t128, ptr %l70
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_b200df0f2ca52fe9_68c86c80ca4bbd4d)
  unreachable
bb43:
  %t129 = load i1, ptr %l70, !tbaa !21
  br i1 %t129, label %bb44, label %bb45
bb44:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l71, !tbaa !27
  br label %bb52
bb45:
  %t130 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t132 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s6, { i64, ptr } %t130, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t132, ptr %l73
  br label %bb46
bb46:
  %t133 = load i1, ptr %l73, !tbaa !21
  br i1 %t133, label %bb47, label %bb48
bb47:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l74, !tbaa !27
  br label %bb51
bb48:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l75, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t137 = call { i64, ptr } @compiler_2ftypes_2eDemangle(ptr %v1, ptr %s6, { i64, ptr } %t135)
  store { i64, ptr } %t137, ptr %l77
  br label %bb49
bb49:
  %t138 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  store i64 %t139, ptr %l78, !tbaa !24
  %t140 = load i64, ptr %l78, !tbaa !24
  %t141 = mul i64 %t140, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t141)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l79, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = load i64, ptr %l78, !tbaa !24
  %t150 = mul i64 %t149, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t146, ptr %t148, i64 %t150, i1 false)
  %t151 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t151, 0
  %t153 = extractvalue { i64, ptr } %t151, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t158 = load ptr, ptr %l75, !tbaa !29
  %t160 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %s6, ptr %s6, ptr %t158, { i64, ptr } %t157)
  store { i64, ptr } %t160, ptr %l81
  br label %bb50
bb50:
  %t161 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l74, !tbaa !27
  br label %bb51
bb51:
  %t169 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t169, ptr %l71, !tbaa !27
  br label %bb52
bb52:
  %t170 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t170, ptr %l10, !tbaa !27
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgGenFile(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l84
  br label %bb53
bb53:
  %t174 = load i64, ptr %l84, !tbaa !24
  store i64 %t174, ptr %l11, !tbaa !24
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t175)
  store i64 %t177, ptr %l86
  br label %bb54
bb54:
  %t178 = load i64, ptr %l86, !tbaa !24
  store i64 %t178, ptr %l12, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t179)
  store i64 %t181, ptr %l88
  br label %bb55
bb55:
  %t182 = load i64, ptr %l88, !tbaa !24
  store i64 %t182, ptr %l13, !tbaa !24
  store ptr %l3, ptr %l89, !tbaa !29
  %t183 = load i64, ptr %l12, !tbaa !24
  store i64 %t183, ptr %l90, !tbaa !24
  %t184 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t186 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s6, ptr %s6, { i64, ptr } %t184)
  store { i64, ptr } %t186, ptr %l92
  br label %bb56
bb56:
  %t187 = load i64, ptr %l11, !tbaa !24
  store i64 %t187, ptr %l93, !tbaa !24
  %t188 = load i64, ptr %l11, !tbaa !24
  store i64 %t188, ptr %l94, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgSubTy(ptr %v0, ptr %t189)
  store i64 %t191, ptr %l96
  br label %bb57
bb57:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgCu(ptr %v0, ptr %t192)
  store i64 %t194, ptr %l98
  br label %bb58
bb58:
  %t195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t197 = load i64, ptr %l90, !tbaa !24
  %t198 = call i64 @__olang_fmt_i64(ptr null, i64 %t197)
  %t199 = add i64 %t196, %t198
  %t200 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t201 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t202 = add i64 %t199, %t201
  %t203 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = add i64 %t202, %t205
  %t207 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t209 = add i64 %t206, %t208
  %t210 = load i64, ptr %l93, !tbaa !24
  %t211 = call i64 @__olang_fmt_i64(ptr null, i64 %t210)
  %t212 = add i64 %t209, %t211
  %t213 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = load i64, ptr %l94, !tbaa !24
  %t217 = call i64 @__olang_fmt_i64(ptr null, i64 %t216)
  %t218 = add i64 %t215, %t217
  %t219 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t222 = load i64, ptr %l96, !tbaa !24
  %t223 = call i64 @__olang_fmt_i64(ptr null, i64 %t222)
  %t224 = add i64 %t221, %t223
  %t225 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t226 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t227 = add i64 %t224, %t226
  %t228 = load i64, ptr %l98, !tbaa !24
  %t229 = call i64 @__olang_fmt_i64(ptr null, i64 %t228)
  %t230 = add i64 %t227, %t229
  %t231 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t232 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t233 = add i64 %t230, %t232
  %t234 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t233)
  call void @olang_textcopy(ptr %t234, ptr %t195, i64 %t196)
  %t235 = getelementptr i8, ptr %t234, i64 %t196
  %t236 = call i64 @__olang_fmt_i64(ptr %t235, i64 %t197)
  %t237 = getelementptr i8, ptr %t235, i64 %t198
  call void @olang_textcopy(ptr %t237, ptr %t200, i64 %t201)
  %t238 = getelementptr i8, ptr %t237, i64 %t201
  call void @olang_textcopy(ptr %t238, ptr %t204, i64 %t205)
  %t239 = getelementptr i8, ptr %t238, i64 %t205
  call void @olang_textcopy(ptr %t239, ptr %t207, i64 %t208)
  %t240 = getelementptr i8, ptr %t239, i64 %t208
  %t241 = call i64 @__olang_fmt_i64(ptr %t240, i64 %t210)
  %t242 = getelementptr i8, ptr %t240, i64 %t211
  call void @olang_textcopy(ptr %t242, ptr %t213, i64 %t214)
  %t243 = getelementptr i8, ptr %t242, i64 %t214
  %t244 = call i64 @__olang_fmt_i64(ptr %t243, i64 %t216)
  %t245 = getelementptr i8, ptr %t243, i64 %t217
  call void @olang_textcopy(ptr %t245, ptr %t219, i64 %t220)
  %t246 = getelementptr i8, ptr %t245, i64 %t220
  %t247 = call i64 @__olang_fmt_i64(ptr %t246, i64 %t222)
  %t248 = getelementptr i8, ptr %t246, i64 %t223
  call void @olang_textcopy(ptr %t248, ptr %t225, i64 %t226)
  %t249 = getelementptr i8, ptr %t248, i64 %t226
  %t250 = call i64 @__olang_fmt_i64(ptr %t249, i64 %t228)
  %t251 = getelementptr i8, ptr %t249, i64 %t229
  call void @olang_textcopy(ptr %t251, ptr %t231, i64 %t232)
  %t252 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t234, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = extractvalue { i64, ptr } %t253, 1
  %t257 = mul i64 %t255, 1
  %t258 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t257)
  call void @llvm.memcpy.p0.p0.i64(ptr %t258, ptr %t256, i64 %t257, i1 false)
  %t259 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  %t261 = load ptr, ptr %l89, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t261, { i64, ptr } %t260)
  br label %bb59
bb59:
  %t263 = load i64, ptr %l13, !tbaa !24
  %t264 = load i64, ptr %l12, !tbaa !24
  %t265 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t266 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t268 = call i64 @__olang_fmt_i64(ptr null, i64 %t263)
  %t269 = add i64 %t266, %t268
  %t270 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t274 = call i64 @__olang_fmt_i64(ptr null, i64 %t264)
  %t275 = add i64 %t272, %t274
  %t276 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t277 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t278 = add i64 %t275, %t277
  %t279 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t278)
  call void @olang_textcopy(ptr %t279, ptr %t265, i64 %t266)
  %t280 = getelementptr i8, ptr %t279, i64 %t266
  %t281 = call i64 @__olang_fmt_i64(ptr %t280, i64 %t263)
  %t282 = getelementptr i8, ptr %t280, i64 %t268
  call void @olang_textcopy(ptr %t282, ptr %t270, i64 %t271)
  %t283 = getelementptr i8, ptr %t282, i64 %t271
  %t284 = call i64 @__olang_fmt_i64(ptr %t283, i64 %t264)
  %t285 = getelementptr i8, ptr %t283, i64 %t274
  call void @olang_textcopy(ptr %t285, ptr %t276, i64 %t277)
  %t286 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t279, 1
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t290 = extractvalue { i64, ptr } %t287, 1
  %t291 = mul i64 %t289, 1
  %t292 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t291)
  call void @llvm.memcpy.p0.p0.i64(ptr %t292, ptr %t290, i64 %t291, i1 false)
  %t293 = insertvalue { i64, ptr } undef, i64 %t289, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t292, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l3, { i64, ptr } %t294)
  br label %bb60
bb60:
  store ptr %l2, ptr %l106, !tbaa !29
  %t297 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t297, ptr %l107, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t302 = sub i64 %t300, 2
  store i64 %t302, ptr %l110, !tbaa !24
  %t303 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 0
  store i64 %t304, ptr %l111, !tbaa !24
  %t305 = icmp sge i64 0, 0
  br i1 %t305, label %bb61, label %bb62
bb61:
  %t307 = load i64, ptr %l110, !tbaa !24
  %t308 = icmp sle i64 0, %t307
  br i1 %t308, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_e7f1f4c1c7eb01fc_51bf614425d25b70)
  unreachable
bb63:
  %t310 = load i64, ptr %l110, !tbaa !24
  %t311 = load i64, ptr %l111, !tbaa !24
  %t312 = icmp sle i64 %t310, %t311
  br i1 %t312, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_e7f1f4c1c7eb01fc_51bf614425d25b70)
  unreachable
bb65:
  %t314 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !27
  %t316 = load i64, ptr %l110, !tbaa !24
  %t317 = getelementptr i8, ptr %t315, i64 0
  %t318 = sub i64 %t316, 0
  %t319 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t317, 1
  %t321 = load i64, ptr %l12, !tbaa !24
  %t323 = extractvalue { i64, ptr } %t320, 1
  %t324 = extractvalue { i64, ptr } %t320, 0
  %t325 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t326 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t327 = add i64 %t324, %t326
  %t329 = call i64 @__olang_fmt_i64(ptr null, i64 %t321)
  %t330 = add i64 %t327, %t329
  %t331 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t332 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t333 = add i64 %t330, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t323, i64 %t324)
  %t335 = getelementptr i8, ptr %t334, i64 %t324
  call void @olang_textcopy(ptr %t335, ptr %t325, i64 %t326)
  %t336 = getelementptr i8, ptr %t335, i64 %t326
  %t337 = call i64 @__olang_fmt_i64(ptr %t336, i64 %t321)
  %t338 = getelementptr i8, ptr %t336, i64 %t329
  call void @olang_textcopy(ptr %t338, ptr %t331, i64 %t332)
  %t339 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t334, 1
  %t342 = extractvalue { i64, ptr } %t340, 0
  %t343 = extractvalue { i64, ptr } %t340, 1
  %t344 = mul i64 %t342, 1
  %t345 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t344)
  call void @llvm.memcpy.p0.p0.i64(ptr %t345, ptr %t343, i64 %t344, i1 false)
  %t346 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t345, 1
  %t348 = load ptr, ptr %l106, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t348, { i64, ptr } %t347)
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_e7f1f4c1c7eb01fc_51bf614425d25b70)
  unreachable
bb67:
  %t350 = load i64, ptr %l13, !tbaa !24
  %t351 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t352 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t354 = call i64 @__olang_fmt_i64(ptr null, i64 %t350)
  %t355 = add i64 %t352, %t354
  %t356 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t355)
  call void @olang_textcopy(ptr %t356, ptr %t351, i64 %t352)
  %t357 = getelementptr i8, ptr %t356, i64 %t352
  %t358 = call i64 @__olang_fmt_i64(ptr %t357, i64 %t350)
  %t359 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t356, 1
  store { i64, ptr } %t360, ptr %l120, !tbaa !27
  %t361 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t362 = extractvalue { i64, ptr } %t361, 0
  %t363 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t363, 0
  store i64 %t364, ptr %l122, !tbaa !24
  %t366 = load i64, ptr %l122, !tbaa !24
  %t367 = icmp eq i64 %t362, %t366
  br i1 %t367, label %bb68, label %bb69
bb68:
  %t369 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = load i64, ptr %l122, !tbaa !24
  %t374 = mul i64 %t373, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t370, ptr %t372, i64 %t374, i1 false)
  br label %bb70
bb69:
  %t375 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t375, ptr %l4, !tbaa !27
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  br label %bb94
bb71:
  call void @__olang_scope_close(ptr %s5)
  br label %bb72
bb72:
  %t376 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t378 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s4, { i64, ptr } %t376, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t378, ptr %l125
  br label %bb73
bb73:
  %t379 = load i1, ptr %l125, !tbaa !21
  br i1 %t379, label %bb74, label %bb75
bb74:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l126, !tbaa !27
  %t380 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t380, ptr %l127, !tbaa !27
  %t381 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t381, 0
  %t383 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t383, 0
  store i64 %t384, ptr %l129, !tbaa !24
  %t386 = load i64, ptr %l129, !tbaa !24
  %t387 = icmp eq i64 %t382, %t386
  br i1 %t387, label %bb76, label %bb77
bb75:
  br label %bb79
bb76:
  %t389 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t392 = load ptr, ptr %t391, !tbaa !27
  %t393 = load i64, ptr %l129, !tbaa !24
  %t394 = mul i64 %t393, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t390, ptr %t392, i64 %t394, i1 false)
  br label %bb78
bb77:
  %t395 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t396 = extractvalue { i64, ptr } %t395, 0
  store i64 %t396, ptr %l131, !tbaa !24
  %t397 = load i64, ptr %l131, !tbaa !24
  %t398 = mul i64 %t397, 1
  %t399 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t398)
  %t400 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t399, 1
  store { i64, ptr } %t401, ptr %l132, !tbaa !27
  %t402 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !27
  %t404 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = load i64, ptr %l131, !tbaa !24
  %t407 = mul i64 %t406, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t403, ptr %t405, i64 %t407, i1 false)
  %t408 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t408, ptr %l4, !tbaa !27
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t409 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t411 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t409, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t411, ptr %l134
  br label %bb80
bb80:
  %t412 = load i1, ptr %l134, !tbaa !21
  %t413 = xor i1 %t412, true
  br i1 %t413, label %bb81, label %bb82
bb81:
  %t415 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l139, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t419 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s4, { i64, ptr } %t415, { i64, ptr } %t418)
  store i1 %t419, ptr %l140
  br label %bb83
bb82:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb84
bb83:
  %t420 = load i1, ptr %l140, !tbaa !21
  store i1 %t420, ptr %l136, !tbaa !21
  br label %bb84
bb84:
  %t421 = load i1, ptr %l136, !tbaa !21
  br i1 %t421, label %bb85, label %bb86
bb85:
  %t422 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l144, !tbaa !27
  %t425 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t426 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s4, { i64, ptr } %t422, { i64, ptr } %t425)
  store i1 %t426, ptr %l145
  br label %bb87
bb86:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb88
bb87:
  %t427 = load i1, ptr %l145, !tbaa !21
  %t428 = xor i1 %t427, true
  store i1 %t428, ptr %l141, !tbaa !21
  br label %bb88
bb88:
  %t430 = load i1, ptr %l141, !tbaa !21
  br i1 %t430, label %bb89, label %bb90
bb89:
  store %olang.scope zeroinitializer, ptr %s12
  %t431 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t431, 1
  %t435 = extractvalue { i64, ptr } %t431, 0
  %t437 = extractvalue { i64, ptr } %t432, 1
  %t438 = extractvalue { i64, ptr } %t432, 0
  %t439 = add i64 %t435, %t438
  %t440 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t441 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t442 = add i64 %t439, %t441
  %t443 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t442)
  call void @olang_textcopy(ptr %t443, ptr %t434, i64 %t435)
  %t444 = getelementptr i8, ptr %t443, i64 %t435
  call void @olang_textcopy(ptr %t444, ptr %t437, i64 %t438)
  %t445 = getelementptr i8, ptr %t444, i64 %t438
  call void @olang_textcopy(ptr %t445, ptr %t440, i64 %t441)
  %t446 = insertvalue { i64, ptr } undef, i64 %t442, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t443, 1
  %t449 = extractvalue { i64, ptr } %t447, 0
  %t450 = extractvalue { i64, ptr } %t447, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l2, { i64, ptr } %t454)
  br label %bb91
bb90:
  br label %bb92
bb91:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s4)
  br label %bb94
bb92:
  %t457 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t459 = extractvalue { i64, ptr } %t457, 1
  %t460 = extractvalue { i64, ptr } %t457, 0
  %t461 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t462 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t463 = add i64 %t460, %t462
  %t464 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t463)
  call void @olang_textcopy(ptr %t464, ptr %t459, i64 %t460)
  %t465 = getelementptr i8, ptr %t464, i64 %t460
  call void @olang_textcopy(ptr %t465, ptr %t461, i64 %t462)
  %t466 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t467 = insertvalue { i64, ptr } %t466, ptr %t464, 1
  %t469 = extractvalue { i64, ptr } %t467, 0
  %t470 = extractvalue { i64, ptr } %t467, 1
  %t471 = mul i64 %t469, 1
  %t472 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t471)
  call void @llvm.memcpy.p0.p0.i64(ptr %t472, ptr %t470, i64 %t471, i1 false)
  %t473 = insertvalue { i64, ptr } undef, i64 %t469, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t472, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l2, { i64, ptr } %t474)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s4)
  br label %bb94
bb94:
  br label %bb8
bb95:
  %t478 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l3)
  store i64 %t478, ptr %l157
  br label %bb96
bb96:
  %t479 = load i64, ptr %l157, !tbaa !24
  %t480 = icmp eq i64 %t479, 0
  br i1 %t480, label %bb97, label %bb98
bb97:
  %t482 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t482, 1
  %t485 = extractvalue { i64, ptr } %t482, 0
  %t486 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t485)
  call void @olang_textcopy(ptr %t486, ptr %t484, i64 %t485)
  %t487 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t486, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t488, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  store ptr %l2, ptr %l161, !tbaa !29
  %t491 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t491, ptr %l163
  br label %bb100
bb100:
  %t492 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t492, 0
  %t494 = extractvalue { i64, ptr } %t492, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  %t499 = load ptr, ptr %l161, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t499, { i64, ptr } %t498)
  br label %bb101
bb101:
  %t502 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t502, ptr %l166
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s0)
  %t503 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t503, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgName(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l20 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb41
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/emit:Emitter", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t21, i64 %t25)
  store ptr %t28, ptr %l20
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 1
  %t32 = load { i64, [2 x i64] }, ptr %t31
  store { i64, [2 x i64] } %t32, ptr %l4
  %t34 = load { i64, [2 x i64] }, ptr %l4
  %t36 = extractvalue { i64, [2 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 0
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t40 = getelementptr { i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  store i64 %t41, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb11
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l27, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/emit:Emitter", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l29, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/emit:Emitter", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t51, i64 %t52)
  store i64 %t55, ptr %l33
  br label %bb8
bb8:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = load i64, ptr %l33, !tbaa !24
  %t58 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t56, i64 %t57)
  store ptr %t58, ptr %l34
  br label %bb9
bb9:
  %t59 = load ptr, ptr %l34, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %t61, !tbaa !23
  %t63 = load ptr, ptr %l27, !tbaa !29
  %t65 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s2, ptr %t63, i32 %t62)
  store { i64, ptr } %t65, ptr %l37
  br label %bb10
bb10:
  %t66 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t67, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb11:
  %t73 = load { i64, [2 x i64] }, ptr %l4
  %t75 = extractvalue { i64, [2 x i64] } %t73, 0
  %t76 = icmp eq i64 %t75, 1
  br i1 %t76, label %bb12, label %bb13
bb12:
  %t78 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t79 = getelementptr { i32, i32 }, ptr %t78, i32 0, i32 0
  %t80 = load i32, ptr %t79
  store i32 %t80, ptr %l6, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t83 = load i32, ptr %l6, !tbaa !23
  %t85 = inttoptr i64 0 to ptr
  %t88 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s4, ptr %t85, ptr %t82, i32 %t83)
  store { i64, ptr } %t88, ptr %l45
  br label %bb15
bb15:
  %t89 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t90, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb40
bb16:
  %t96 = load { i64, [2 x i64] }, ptr %l4
  %t98 = extractvalue { i64, [2 x i64] } %t96, 0
  %t99 = icmp eq i64 %t98, 3
  br i1 %t99, label %bb17, label %bb18
bb17:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t102 = getelementptr { i32 }, ptr %t101, i32 0, i32 0
  %t103 = load i32, ptr %t102
  store i32 %t103, ptr %l7, !tbaa !23
  br label %bb19
bb18:
  br label %bb21
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t106 = load i32, ptr %l7, !tbaa !23
  %t108 = inttoptr i64 0 to ptr
  %t111 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s6, ptr %t108, ptr %t105, i32 %t106)
  store { i64, ptr } %t111, ptr %l53
  br label %bb20
bb20:
  %t112 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t118 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t117)
  call void @olang_textcopy(ptr %t118, ptr %t113, i64 %t114)
  %t119 = getelementptr i8, ptr %t118, i64 %t114
  call void @olang_textcopy(ptr %t119, ptr %t115, i64 %t116)
  %t120 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t118, 1
  store { i64, ptr } %t121, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb40
bb21:
  %t123 = load { i64, [2 x i64] }, ptr %l4
  %t125 = extractvalue { i64, [2 x i64] } %t123, 0
  %t126 = icmp eq i64 %t125, 4
  br i1 %t126, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l57, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t128, ptr %l23, !tbaa !27
  br label %bb40
bb25:
  %t130 = load { i64, [2 x i64] }, ptr %l4
  %t132 = extractvalue { i64, [2 x i64] } %t130, 0
  %t133 = icmp eq i64 %t132, 5
  br i1 %t133, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l61, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t135, ptr %l23, !tbaa !27
  br label %bb40
bb29:
  %t137 = load { i64, [2 x i64] }, ptr %l4
  %t139 = extractvalue { i64, [2 x i64] } %t137, 0
  %t140 = icmp eq i64 %t139, 6
  br i1 %t140, label %bb30, label %bb31
bb30:
  %t142 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t143 = getelementptr { i64, i32 }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  store i32 %t144, ptr %l8, !tbaa !23
  br label %bb32
bb31:
  br label %bb34
bb32:
  store %olang.scope zeroinitializer, ptr %s10
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l8, !tbaa !23
  %t150 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s10, ptr %t146, i32 %t147)
  store { i64, ptr } %t150, ptr %l68
  br label %bb33
bb33:
  %t151 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = extractvalue { i64, ptr } %t151, 0
  %t154 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t157 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t156)
  call void @olang_textcopy(ptr %t157, ptr %t152, i64 %t153)
  %t158 = getelementptr i8, ptr %t157, i64 %t153
  call void @olang_textcopy(ptr %t158, ptr %t154, i64 %t155)
  %t159 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t157, 1
  store { i64, ptr } %t160, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  br label %bb40
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load { i64, [2 x i64] }, ptr %l1
  %t166 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t162, { i64, [2 x i64] } %t163)
  store { i64, ptr } %t166, ptr %l72
  br label %bb38
bb38:
  %t167 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t167, ptr %l23, !tbaa !27
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_18f6acb4865fb5f2_de2c0e3f26126f06)
  unreachable
bb40:
  %t168 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  store i64 %t169, ptr %l73, !tbaa !24
  %t170 = load i64, ptr %l73, !tbaa !24
  %t171 = mul i64 %t170, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l74, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = load i64, ptr %l73, !tbaa !24
  %t180 = mul i64 %t179, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t176, ptr %t178, i64 %t180, i1 false)
  %t181 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t181, ptr %l23, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t182, ptr %rv
  br label %ret
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load { i64, [2 x i64] }, ptr %l1
  %t187 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t183, { i64, [2 x i64] } %t184)
  store { i64, ptr } %t187, ptr %l77
  br label %bb45
bb45:
  %t188 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t188, ptr %rv
  br label %ret
bb46:
  call void @__olang_check_failed(ptr @olang_loc_795f0ceaa031aa73_92815be2925279e7)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgSubTy(ptr %v0, ptr %a0) #0 {
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
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 61
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
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 61
  store i64 %t12, ptr %t14, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/emit:Emitter", ptr %t16, i32 0, i32 61
  %t19 = load i64, ptr %t18, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s1, ptr %t15, i64 %t19, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:Emitter", ptr %t22, i32 0, i32 61
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eentry(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l34 = alloca %"std/prelude/text:StringBuilder"
  %l45 = alloca ptr
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca i64
  %l62 = alloca i1
  %l64 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l87 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l106 = alloca i64
  %l107 = alloca i64
  %l110 = alloca { i64, ptr }
  %l112 = alloca ptr
  %l115 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l125 = alloca [3 x i8]
  %l128 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l138 = alloca i64
  %l141 = alloca i64
  %l160 = alloca { i64, ptr }
  %l163 = alloca i32
  %l165 = alloca ptr
  %l168 = alloca i32
  %l169 = alloca { i64, ptr }
  %l175 = alloca i64
  %l178 = alloca i64
  %l205 = alloca { i64, ptr }
  %l207 = alloca ptr
  %l210 = alloca i32
  %l212 = alloca { i64, ptr }
  %l219 = alloca ptr
  %l220 = alloca i64
  %l221 = alloca i64
  %l224 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l231 = alloca i64
  %l242 = alloca i1
  %l247 = alloca ptr
  %l251 = alloca i64
  %l252 = alloca i64
  %l255 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %t71 = alloca { i64, [2 x i64] }, align 8
  %t111 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t6, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t8, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d50, i32 0, i32 1) }, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t10, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb3
bb3:
  %t12 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t12, ptr %l34
  br label %bb4
bb4:
  %t13 = load %"std/prelude/text:StringBuilder", ptr %l34
  store %"std/prelude/text:StringBuilder" %t13, ptr %l4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb5
bb5:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d54, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d55, i32 0, i32 1) })
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %s0, ptr %t17, ptr %l4)
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/emit:Emitter", ptr %t20, i32 0, i32 6
  %t23 = load i1, ptr %t22, !tbaa !21
  br i1 %t23, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s1, ptr %t25, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d56, i32 0, i32 1) })
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s1, ptr %s1, ptr %t27, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d57, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d58, i32 0, i32 1) })
  br label %bb12
bb12:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l4, { i64, ptr } { i64 97, ptr getelementptr inbounds (<{ i64, [97 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l45, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l46
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s2, ptr %l46)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l48
  br label %bb15
bb15:
  %t34 = load ptr, ptr %l45, !tbaa !29
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %s2, ptr %s2, ptr %t34, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l49
  br label %bb16
bb16:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  %t38 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %t38
  store ptr %t38, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t40 = load i64, ptr %l6, !tbaa !24
  store i64 %t40, ptr %l51, !tbaa !24
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t41)
  store i64 %t43, ptr %l53
  br label %bb18
bb18:
  %t44 = load i64, ptr %l51, !tbaa !24
  %t45 = load i64, ptr %l53, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb19, label %bb20
bb19:
  br label %bb30
bb20:
  br label %bb21
bb21:
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l58
  br label %bb22
bb22:
  %t55 = load i64, ptr %l58, !tbaa !24
  store i64 %t55, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/emit:Emitter", ptr %t56, i32 0, i32 47
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %t58, i64 %t59)
  store i1 %t62, ptr %l62
  br label %bb23
bb23:
  %t63 = load i1, ptr %l62, !tbaa !21
  %t64 = xor i1 %t63, true
  br i1 %t64, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l4, ptr %l64, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = trunc i64 %t67 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 0
  store i64 0, ptr %t72
  %t74 = insertvalue { i32 } undef, i32 %t69, 0
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 1
  store { i32 } %t74, ptr %t75
  %t76 = load { i64, [2 x i64] }, ptr %t71
  %t79 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s4, ptr %t66, { i64, [2 x i64] } %t76)
  store { i64, ptr } %t79, ptr %l70
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t80 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t82 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = add i64 %t81, %t84
  %t86 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t89 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t80, i64 %t81)
  %t90 = getelementptr i8, ptr %t89, i64 %t81
  call void @olang_textcopy(ptr %t90, ptr %t83, i64 %t84)
  %t91 = getelementptr i8, ptr %t90, i64 %t84
  call void @olang_textcopy(ptr %t91, ptr %t86, i64 %t87)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t89, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = extractvalue { i64, ptr } %t93, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t101, { i64, ptr } %t100)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t103 = load i64, ptr %l6, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l6, !tbaa !24
  br label %bb17
bb30:
  call void @__olang_scope_close(ptr %s2)
  %t107 = load i64, ptr %l2, !tbaa !24
  %t109 = trunc i64 %t107 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 0
  store i64 0, ptr %t112
  %t114 = insertvalue { i32 } undef, i32 %t109, 0
  %t115 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 1
  store { i32 } %t114, ptr %t115
  %t116 = load { i64, [2 x i64] }, ptr %t111
  store { i64, [2 x i64] } %t116, ptr %l8
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/emit:Emitter", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/lower:Lowerer", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = load i64, ptr %l2, !tbaa !24
  %t129 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t124, i64 %t126)
  store ptr %t129, ptr %l84
  br label %bb31
bb31:
  %t130 = load ptr, ptr %l84, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Body", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %t132, !tbaa !23
  %t135 = load ptr, ptr %l3, !tbaa !29
  store ptr %t135, ptr %l87, !tbaa !29
  %t136 = load ptr, ptr %l3, !tbaa !29
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t136, i32 %t133)
  store i32 %t140, ptr %l90
  br label %bb32
bb32:
  %t141 = load ptr, ptr %l87, !tbaa !29
  %t142 = load i32, ptr %l90, !tbaa !23
  %t143 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t141, i32 %t142)
  store { i64, ptr } %t143, ptr %l91
  br label %bb33
bb33:
  %t144 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t144, ptr %l10, !tbaa !27
  %t145 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t145, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb34
bb34:
  %t147 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t151 = icmp eq i64 %t149, 0
  br i1 %t151, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %l4, ptr %l96, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load { i64, [2 x i64] }, ptr %l8
  %t157 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s7, ptr %t153, { i64, [2 x i64] } %t154)
  store { i64, ptr } %t157, ptr %l99
  br label %bb37
bb36:
  br label %bb43
bb37:
  %t158 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t160 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = add i64 %t159, %t162
  %t164 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t166 = add i64 %t163, %t165
  %t167 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t166)
  call void @olang_textcopy(ptr %t167, ptr %t158, i64 %t159)
  %t168 = getelementptr i8, ptr %t167, i64 %t159
  call void @olang_textcopy(ptr %t168, ptr %t161, i64 %t162)
  %t169 = getelementptr i8, ptr %t168, i64 %t162
  call void @olang_textcopy(ptr %t169, ptr %t164, i64 %t165)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t167, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = extractvalue { i64, ptr } %t171, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t179 = load ptr, ptr %l96, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t179, { i64, ptr } %t178)
  br label %bb38
bb38:
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l102, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/emit:Emitter", ptr %t182, i32 0, i32 0
  %t185 = load ptr, ptr %t184, !tbaa !29
  %t187 = getelementptr %"compiler/generic:Program", ptr %t185, i32 0, i32 0
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/load:Loader", ptr %t188, i32 0, i32 12
  %t191 = load i64, ptr %t190, !tbaa !24
  store i64 %t191, ptr %l106, !tbaa !24
  %t192 = ptrtoint ptr %s7 to i64
  store i64 %t192, ptr %l107, !tbaa !24
  %t193 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t193, label %bb39, label %bb40
bb39:
  %t195 = call ptr @__olang_region_make(ptr %s7)
  %t196 = ptrtoint ptr %t195 to i64
  store i64 %t196, ptr %l107, !tbaa !24
  br label %bb40
bb40:
  %t197 = load i64, ptr %l107
  %t198 = inttoptr i64 %t197 to ptr
  %t200 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t198, ptr %l4)
  store { i64, ptr } %t200, ptr %l110
  br label %bb41
bb41:
  %t201 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t202 = load i64, ptr %l107
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = extractvalue { i64, ptr } %t201, 0
  %t205 = extractvalue { i64, ptr } %t201, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %t203, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = load ptr, ptr %l102, !tbaa !29
  %t211 = load i64, ptr %l106, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s7, ptr %s7, ptr %s7, ptr %t210, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d65, i32 0, i32 1) }, i64 %t211, { i64, ptr } %t209, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb43:
  store ptr %l4, ptr %l112, !tbaa !29
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load { i64, [2 x i64] }, ptr %l8
  %t217 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t213, { i64, [2 x i64] } %t214)
  store { i64, ptr } %t217, ptr %l115
  br label %bb44
bb44:
  %t218 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t220 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 1
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t223 = add i64 %t219, %t222
  %t224 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t226 = add i64 %t223, %t225
  %t227 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t226)
  call void @olang_textcopy(ptr %t227, ptr %t218, i64 %t219)
  %t228 = getelementptr i8, ptr %t227, i64 %t219
  call void @olang_textcopy(ptr %t228, ptr %t221, i64 %t222)
  %t229 = getelementptr i8, ptr %t228, i64 %t222
  call void @olang_textcopy(ptr %t229, ptr %t224, i64 %t225)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t227, 1
  %t233 = extractvalue { i64, ptr } %t231, 0
  %t234 = extractvalue { i64, ptr } %t231, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t239 = load ptr, ptr %l112, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t239, { i64, ptr } %t238)
  br label %bb45
bb45:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb46
bb46:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) })
  br label %bb47
bb47:
  %t243 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t243, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d70, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d71, i32 0, i32 1) })
  br label %bb48
bb48:
  %t245 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t245, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d72, i32 0, i32 1) }, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb49
bb49:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb50
bb50:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l123, !tbaa !27
  %t248 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t248, ptr %l124, !tbaa !27
  %t249 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = mul i64 3, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l125, ptr %t250, i64 %t251, i1 false)
  %t253 = insertvalue { i64, ptr } undef, i64 3, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %l125, 1
  store { i64, ptr } %t254, ptr %l11, !tbaa !27
  store ptr %l4, ptr %l128, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %t256, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store { i64, ptr } %t258, ptr %l130
  br label %bb51
bb51:
  %t259 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t260 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t261 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t261, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = add i64 %t260, %t263
  %t265 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t266 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t267 = add i64 %t264, %t266
  %t268 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t267)
  call void @olang_textcopy(ptr %t268, ptr %t259, i64 %t260)
  %t269 = getelementptr i8, ptr %t268, i64 %t260
  call void @olang_textcopy(ptr %t269, ptr %t262, i64 %t263)
  %t270 = getelementptr i8, ptr %t269, i64 %t263
  call void @olang_textcopy(ptr %t270, ptr %t265, i64 %t266)
  %t271 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t268, 1
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t275 = extractvalue { i64, ptr } %t272, 1
  %t276 = mul i64 %t274, 1
  %t277 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t276)
  call void @llvm.memcpy.p0.p0.i64(ptr %t277, ptr %t275, i64 %t276, i1 false)
  %t278 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t277, 1
  %t280 = load ptr, ptr %l128, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t280, { i64, ptr } %t279)
  br label %bb52
bb52:
  store i64 0, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t282 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t282, 0
  store i64 %t284, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t286 = load i64, ptr %l14, !tbaa !24
  %t287 = load i64, ptr %l13, !tbaa !24
  %t290 = icmp sgt i64 %t286, %t287
  br i1 %t290, label %bb53, label %bb54
bb53:
  %t292 = load i64, ptr %l15, !tbaa !24
  %t294 = icmp sgt i64 %t292, 0
  br i1 %t294, label %bb55, label %bb56
bb54:
  store i64 0, ptr %l138, !tbaa !24
  br label %bb58
bb55:
  %t296 = load i64, ptr %l14, !tbaa !24
  %t297 = load i64, ptr %l13, !tbaa !24
  %t300 = sub i64 %t296, %t297
  %t301 = load i64, ptr %l15, !tbaa !24
  %t304 = add i64 %t300, %t301
  %t306 = sub i64 %t304, 1
  %t307 = load i64, ptr %l15, !tbaa !24
  %t310 = sdiv i64 %t306, %t307
  store i64 %t310, ptr %l141, !tbaa !24
  br label %bb57
bb56:
  store i64 0, ptr %l141, !tbaa !24
  br label %bb57
bb57:
  %t312 = load i64, ptr %l141, !tbaa !24
  store i64 %t312, ptr %l138, !tbaa !24
  br label %bb58
bb58:
  %t313 = load i64, ptr %l138, !tbaa !24
  store i64 %t313, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb59
bb59:
  store %olang.scope zeroinitializer, ptr %s12
  %t314 = load i64, ptr %l17, !tbaa !24
  %t315 = load i64, ptr %l16, !tbaa !24
  %t318 = icmp slt i64 %t314, %t315
  %t320 = xor i1 %t318, true
  br i1 %t320, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s12)
  br label %bb88
bb61:
  br label %bb62
bb62:
  %t322 = load i64, ptr %l13, !tbaa !24
  %t323 = load i64, ptr %l17, !tbaa !24
  %t324 = load i64, ptr %l15, !tbaa !24
  %t327 = mul i64 %t323, %t324
  %t330 = add i64 %t322, %t327
  store i64 %t330, ptr %l18, !tbaa !24
  %t332 = load ptr, ptr %l3, !tbaa !29
  %t333 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t333, ptr %l160, !tbaa !27
  %t334 = load i64, ptr %l18, !tbaa !24
  %t336 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr i32, ptr %t337, i64 %t334
  %t339 = load i32, ptr %t338, !tbaa !33
  %t342 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t332, i32 %t339)
  store i32 %t342, ptr %l163
  br label %bb63
bb63:
  %t343 = load i32, ptr %l163, !tbaa !23
  store i32 %t343, ptr %l19, !tbaa !23
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/emit:Emitter", ptr %t344, i32 0, i32 0
  %t347 = load ptr, ptr %t346, !tbaa !29
  store ptr %t347, ptr %l165, !tbaa !29
  %t348 = load ptr, ptr %l3, !tbaa !29
  %t349 = load i32, ptr %l19, !tbaa !23
  %t352 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t348, i32 %t349)
  store i32 %t352, ptr %l168
  br label %bb64
bb64:
  %t353 = load ptr, ptr %l165, !tbaa !29
  %t354 = load i32, ptr %l168, !tbaa !23
  %t355 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s12, ptr %t353, i32 %t354)
  store { i64, ptr } %t355, ptr %l169
  br label %bb65
bb65:
  %t356 = load { i64, ptr }, ptr %l169, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t359 = extractvalue { i64, ptr } %t356, 0
  store i64 %t359, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t361 = load i64, ptr %l22, !tbaa !24
  %t362 = load i64, ptr %l21, !tbaa !24
  %t365 = icmp sgt i64 %t361, %t362
  br i1 %t365, label %bb66, label %bb67
bb66:
  %t367 = load i64, ptr %l23, !tbaa !24
  %t369 = icmp sgt i64 %t367, 0
  br i1 %t369, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb71
bb68:
  %t371 = load i64, ptr %l22, !tbaa !24
  %t372 = load i64, ptr %l21, !tbaa !24
  %t375 = sub i64 %t371, %t372
  %t376 = load i64, ptr %l23, !tbaa !24
  %t379 = add i64 %t375, %t376
  %t381 = sub i64 %t379, 1
  %t382 = load i64, ptr %l23, !tbaa !24
  %t385 = sdiv i64 %t381, %t382
  store i64 %t385, ptr %l178, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l178, !tbaa !24
  br label %bb70
bb70:
  %t387 = load i64, ptr %l178, !tbaa !24
  store i64 %t387, ptr %l175, !tbaa !24
  br label %bb71
bb71:
  %t388 = load i64, ptr %l175, !tbaa !24
  store i64 %t388, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb72
bb72:
  store %olang.scope zeroinitializer, ptr %s14
  %t389 = load i64, ptr %l25, !tbaa !24
  %t390 = load i64, ptr %l24, !tbaa !24
  %t393 = icmp slt i64 %t389, %t390
  %t395 = xor i1 %t393, true
  br i1 %t395, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s14)
  br label %bb86
bb74:
  br label %bb75
bb75:
  %t397 = load i64, ptr %l21, !tbaa !24
  %t398 = load i64, ptr %l25, !tbaa !24
  %t399 = load i64, ptr %l23, !tbaa !24
  %t402 = mul i64 %t398, %t399
  %t405 = add i64 %t397, %t402
  store i64 %t405, ptr %l26, !tbaa !24
  %t407 = load i64, ptr %l12, !tbaa !24
  %t409 = add i64 %t407, 1
  store i64 %t409, ptr %l12, !tbaa !24
  %t411 = load i64, ptr %l18, !tbaa !24
  %t413 = add i64 %t411, 1
  %t415 = shl i64 %t413, 16
  %t416 = load i64, ptr %l26, !tbaa !24
  %t419 = or i64 %t415, %t416
  store i64 %t419, ptr %l27, !tbaa !24
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load i32, ptr %l19, !tbaa !23
  %t425 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eerrQualifier(ptr %v0, ptr %s14, ptr %t421, i32 %t422)
  store { i64, ptr } %t425, ptr %l205
  br label %bb76
bb76:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/emit:Emitter", ptr %t426, i32 0, i32 0
  %t429 = load ptr, ptr %t428, !tbaa !29
  store ptr %t429, ptr %l207, !tbaa !29
  %t430 = load ptr, ptr %l3, !tbaa !29
  %t431 = load i32, ptr %l19, !tbaa !23
  %t434 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t430, i32 %t431)
  store i32 %t434, ptr %l210
  br label %bb77
bb77:
  %t435 = load i64, ptr %l26, !tbaa !24
  %t436 = load ptr, ptr %l207, !tbaa !29
  %t437 = load i32, ptr %l210, !tbaa !23
  %t439 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %s14, ptr %t436, i32 %t437, i64 %t435)
  store { i64, ptr } %t439, ptr %l212
  br label %bb78
bb78:
  %t440 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t441 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t442 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t442, 1
  %t444 = extractvalue { i64, ptr } %t442, 0
  %t445 = add i64 %t441, %t444
  %t446 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 1
  %t448 = extractvalue { i64, ptr } %t446, 0
  %t449 = add i64 %t445, %t448
  %t450 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t452 = add i64 %t449, %t451
  %t453 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t452)
  call void @olang_textcopy(ptr %t453, ptr %t440, i64 %t441)
  %t454 = getelementptr i8, ptr %t453, i64 %t441
  call void @olang_textcopy(ptr %t454, ptr %t443, i64 %t444)
  %t455 = getelementptr i8, ptr %t454, i64 %t444
  call void @olang_textcopy(ptr %t455, ptr %t447, i64 %t448)
  %t456 = getelementptr i8, ptr %t455, i64 %t448
  call void @olang_textcopy(ptr %t456, ptr %t450, i64 %t451)
  %t457 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t453, 1
  store { i64, ptr } %t458, ptr %l28, !tbaa !27
  %t460 = load i64, ptr %l12, !tbaa !24
  %t461 = load i64, ptr %l27, !tbaa !24
  %t462 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t463 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t465 = call i64 @__olang_fmt_i64(ptr null, i64 %t460)
  %t466 = add i64 %t463, %t465
  %t467 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t468 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t469 = add i64 %t466, %t468
  %t471 = call i64 @__olang_fmt_i64(ptr null, i64 %t461)
  %t472 = add i64 %t469, %t471
  %t473 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t474 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t475 = add i64 %t472, %t474
  %t476 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t475)
  call void @olang_textcopy(ptr %t476, ptr %t462, i64 %t463)
  %t477 = getelementptr i8, ptr %t476, i64 %t463
  %t478 = call i64 @__olang_fmt_i64(ptr %t477, i64 %t460)
  %t479 = getelementptr i8, ptr %t477, i64 %t465
  call void @olang_textcopy(ptr %t479, ptr %t467, i64 %t468)
  %t480 = getelementptr i8, ptr %t479, i64 %t468
  %t481 = call i64 @__olang_fmt_i64(ptr %t480, i64 %t461)
  %t482 = getelementptr i8, ptr %t480, i64 %t471
  call void @olang_textcopy(ptr %t482, ptr %t473, i64 %t474)
  %t483 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t484 = insertvalue { i64, ptr } %t483, ptr %t476, 1
  %t486 = extractvalue { i64, ptr } %t484, 0
  %t487 = extractvalue { i64, ptr } %t484, 1
  %t488 = mul i64 %t486, 1
  %t489 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t488)
  call void @llvm.memcpy.p0.p0.i64(ptr %t489, ptr %t487, i64 %t488, i1 false)
  %t490 = insertvalue { i64, ptr } undef, i64 %t486, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t489, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l4, { i64, ptr } %t491)
  br label %bb79
bb79:
  store ptr %l4, ptr %l219, !tbaa !29
  %t494 = load i64, ptr %l12, !tbaa !24
  store i64 %t494, ptr %l220, !tbaa !24
  %t495 = load i64, ptr %l12, !tbaa !24
  store i64 %t495, ptr %l221, !tbaa !24
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t500 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s14, ptr %s14, ptr %t496, { i64, ptr } %t497)
  store { i64, ptr } %t500, ptr %l224
  br label %bb80
bb80:
  %t501 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t502 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t503 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t504 = load i64, ptr %l220, !tbaa !24
  %t505 = call i64 @__olang_fmt_i64(ptr null, i64 %t504)
  %t506 = add i64 %t503, %t505
  %t507 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t508 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t509 = add i64 %t506, %t508
  %t510 = load i64, ptr %l221, !tbaa !24
  %t511 = call i64 @__olang_fmt_i64(ptr null, i64 %t510)
  %t512 = add i64 %t509, %t511
  %t513 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t514 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t515 = add i64 %t512, %t514
  %t516 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t517 = extractvalue { i64, ptr } %t516, 1
  %t518 = extractvalue { i64, ptr } %t516, 0
  %t519 = add i64 %t515, %t518
  %t520 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t521 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t522 = add i64 %t519, %t521
  %t524 = extractvalue { i64, ptr } %t501, 1
  %t525 = extractvalue { i64, ptr } %t501, 0
  %t526 = add i64 %t522, %t525
  %t527 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t528 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t529 = add i64 %t526, %t528
  %t530 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t529)
  call void @olang_textcopy(ptr %t530, ptr %t502, i64 %t503)
  %t531 = getelementptr i8, ptr %t530, i64 %t503
  %t532 = call i64 @__olang_fmt_i64(ptr %t531, i64 %t504)
  %t533 = getelementptr i8, ptr %t531, i64 %t505
  call void @olang_textcopy(ptr %t533, ptr %t507, i64 %t508)
  %t534 = getelementptr i8, ptr %t533, i64 %t508
  %t535 = call i64 @__olang_fmt_i64(ptr %t534, i64 %t510)
  %t536 = getelementptr i8, ptr %t534, i64 %t511
  call void @olang_textcopy(ptr %t536, ptr %t513, i64 %t514)
  %t537 = getelementptr i8, ptr %t536, i64 %t514
  call void @olang_textcopy(ptr %t537, ptr %t517, i64 %t518)
  %t538 = getelementptr i8, ptr %t537, i64 %t518
  call void @olang_textcopy(ptr %t538, ptr %t520, i64 %t521)
  %t539 = getelementptr i8, ptr %t538, i64 %t521
  call void @olang_textcopy(ptr %t539, ptr %t524, i64 %t525)
  %t540 = getelementptr i8, ptr %t539, i64 %t525
  call void @olang_textcopy(ptr %t540, ptr %t527, i64 %t528)
  %t541 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t530, 1
  %t544 = extractvalue { i64, ptr } %t542, 0
  %t545 = extractvalue { i64, ptr } %t542, 1
  %t546 = mul i64 %t544, 1
  %t547 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t546)
  call void @llvm.memcpy.p0.p0.i64(ptr %t547, ptr %t545, i64 %t546, i1 false)
  %t548 = insertvalue { i64, ptr } undef, i64 %t544, 0
  %t549 = insertvalue { i64, ptr } %t548, ptr %t547, 1
  %t550 = load ptr, ptr %l219, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %t550, { i64, ptr } %t549)
  br label %bb81
bb81:
  %t552 = load i64, ptr %l12, !tbaa !24
  %t553 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t554 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t556 = call i64 @__olang_fmt_i64(ptr null, i64 %t552)
  %t557 = add i64 %t554, %t556
  %t558 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t557)
  call void @olang_textcopy(ptr %t558, ptr %t553, i64 %t554)
  %t559 = getelementptr i8, ptr %t558, i64 %t554
  %t560 = call i64 @__olang_fmt_i64(ptr %t559, i64 %t552)
  %t561 = insertvalue { i64, ptr } undef, i64 %t557, 0
  %t562 = insertvalue { i64, ptr } %t561, ptr %t558, 1
  store { i64, ptr } %t562, ptr %l229, !tbaa !27
  %t563 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t564 = extractvalue { i64, ptr } %t563, 0
  %t565 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t566 = extractvalue { i64, ptr } %t565, 0
  store i64 %t566, ptr %l231, !tbaa !24
  %t568 = load i64, ptr %l231, !tbaa !24
  %t569 = icmp eq i64 %t564, %t568
  br i1 %t569, label %bb82, label %bb83
bb82:
  %t571 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t572 = load ptr, ptr %t571, !tbaa !27
  %t573 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t574 = load ptr, ptr %t573, !tbaa !27
  %t575 = load i64, ptr %l231, !tbaa !24
  %t576 = mul i64 %t575, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t572, ptr %t574, i64 %t576, i1 false)
  br label %bb84
bb83:
  %t577 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t577, ptr %l11, !tbaa !27
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s14)
  br label %bb85
bb85:
  %t578 = load i64, ptr %l25, !tbaa !24
  %t580 = add i64 %t578, 1
  store i64 %t580, ptr %l25, !tbaa !24
  br label %bb72
bb86:
  call void @__olang_scope_close(ptr %s12)
  br label %bb87
bb87:
  %t582 = load i64, ptr %l17, !tbaa !24
  %t584 = add i64 %t582, 1
  store i64 %t584, ptr %l17, !tbaa !24
  br label %bb59
bb88:
  %t586 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t587 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t588 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t590 = extractvalue { i64, ptr } %t586, 1
  %t591 = extractvalue { i64, ptr } %t586, 0
  %t592 = add i64 %t588, %t591
  %t593 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t594 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t595 = add i64 %t592, %t594
  %t596 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t595)
  call void @olang_textcopy(ptr %t596, ptr %t587, i64 %t588)
  %t597 = getelementptr i8, ptr %t596, i64 %t588
  call void @olang_textcopy(ptr %t597, ptr %t590, i64 %t591)
  %t598 = getelementptr i8, ptr %t597, i64 %t591
  call void @olang_textcopy(ptr %t598, ptr %t593, i64 %t594)
  %t599 = insertvalue { i64, ptr } undef, i64 %t595, 0
  %t600 = insertvalue { i64, ptr } %t599, ptr %t596, 1
  %t602 = extractvalue { i64, ptr } %t600, 0
  %t603 = extractvalue { i64, ptr } %t600, 1
  %t604 = mul i64 %t602, 1
  %t605 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t604)
  call void @llvm.memcpy.p0.p0.i64(ptr %t605, ptr %t603, i64 %t604, i1 false)
  %t606 = insertvalue { i64, ptr } undef, i64 %t602, 0
  %t607 = insertvalue { i64, ptr } %t606, ptr %t605, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t607)
  br label %bb89
bb89:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %t610)
  store i1 %t612, ptr %l242
  br label %bb90
bb90:
  %t613 = load i1, ptr %l242, !tbaa !21
  br i1 %t613, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s22
  %t614 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s22, ptr %s22, ptr %t614, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d91, i32 0, i32 1) }, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s23
  %t616 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s23, ptr %s23, ptr %t616, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d93, i32 0, i32 1) }, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb95
bb93:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %l4, { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s22)
  br label %bb97
bb95:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s23, ptr %l4, { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s23)
  br label %bb97
bb97:
  %t620 = load ptr, ptr %l0, !tbaa !29
  store ptr %t620, ptr %l247, !tbaa !29
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/emit:Emitter", ptr %t621, i32 0, i32 0
  %t624 = load ptr, ptr %t623, !tbaa !29
  %t626 = getelementptr %"compiler/generic:Program", ptr %t624, i32 0, i32 0
  %t627 = load ptr, ptr %t626, !tbaa !29
  %t629 = getelementptr %"compiler/load:Loader", ptr %t627, i32 0, i32 12
  %t630 = load i64, ptr %t629, !tbaa !24
  store i64 %t630, ptr %l251, !tbaa !24
  %t631 = ptrtoint ptr %s0 to i64
  store i64 %t631, ptr %l252, !tbaa !24
  %t632 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t632, label %bb98, label %bb99
bb98:
  %t634 = call ptr @__olang_region_make(ptr %s0)
  %t635 = ptrtoint ptr %t634 to i64
  store i64 %t635, ptr %l252, !tbaa !24
  br label %bb99
bb99:
  %t636 = load i64, ptr %l252
  %t637 = inttoptr i64 %t636 to ptr
  %t639 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t637, ptr %l4)
  store { i64, ptr } %t639, ptr %l255
  br label %bb100
bb100:
  %t640 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t641 = load i64, ptr %l252
  %t642 = inttoptr i64 %t641 to ptr
  %t643 = extractvalue { i64, ptr } %t640, 0
  %t644 = extractvalue { i64, ptr } %t640, 1
  %t645 = mul i64 %t643, 1
  %t646 = call ptr @__olang_scope_alloc(ptr %t642, i64 %t645)
  call void @llvm.memcpy.p0.p0.i64(ptr %t646, ptr %t644, i64 %t645, i1 false)
  %t647 = insertvalue { i64, ptr } undef, i64 %t643, 0
  %t648 = insertvalue { i64, ptr } %t647, ptr %t646, 1
  %t649 = load ptr, ptr %l247, !tbaa !29
  %t650 = load i64, ptr %l251, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t649, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d97, i32 0, i32 1) }, i64 %t650, { i64, ptr } %t648, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/emit:Emitter", ptr %t3, i32 0, i32 12
  %t9 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %t5, { i64, ptr } %t1)
  store i1 %t9, ptr %l7
  br label %bb1
bb1:
  %t10 = load i1, ptr %l7, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 12
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = ptrtoint ptr %v0 to i64
  store i64 %t16, ptr %l11, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t17, label %bb4, label %bb5
bb3:
  br label %bb7
bb4:
  %t19 = call ptr @__olang_region_make(ptr %v0)
  %t20 = ptrtoint ptr %t19 to i64
  store i64 %t20, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = load i64, ptr %l11
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = call ptr @__olang_scope_alloc(ptr %t26, i64 %t24)
  call void @olang_textcopy(ptr %t27, ptr %t23, i64 %t24)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = load i64, ptr %l11
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = extractvalue { i64, ptr } %t29, 0
  %t34 = extractvalue { i64, ptr } %t29, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %t32, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t39 = load ptr, ptr %l10, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t39, { i64, ptr } %t38)
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eindex(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i32
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l45 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 40
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 40
  store i1 true, ptr %t8, !tbaa !21
  store i64 0, ptr %l1, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/lower:Lowerer", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l15
  br label %bb4
bb4:
  %t18 = load i64, ptr %l15, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb10
bb7:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l22, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l22, !tbaa !24
  store i64 %t45, ptr %l19, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l19, !tbaa !24
  store i64 %t46, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb12, label %bb13
bb12:
  br label %bb27
bb13:
  br label %bb14
bb14:
  %t55 = load i64, ptr %l1, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l3, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l6, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/emit:Emitter", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/lower:Lowerer", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t71, i64 %t73)
  store ptr %t76, ptr %l45
  br label %bb15
bb15:
  %t77 = load ptr, ptr %l45, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Body", ptr %t77, i32 0, i32 1
  %t80 = load { i64, [2 x i64] }, ptr %t79
  store { i64, [2 x i64] } %t80, ptr %l7
  %t82 = load { i64, [2 x i64] }, ptr %l7
  %t84 = extractvalue { i64, [2 x i64] } %t82, 0
  %t85 = icmp eq i64 %t84, 3
  br i1 %t85, label %bb16, label %bb17
bb16:
  %t87 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t88 = getelementptr { i32 }, ptr %t87, i32 0, i32 0
  %t89 = load i32, ptr %t88
  store i32 %t89, ptr %l8, !tbaa !23
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/emit:Emitter", ptr %t91, i32 0, i32 39
  %t94 = load i32, ptr %l8, !tbaa !23
  %t95 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t93, i32 %t94, i64 %t95)
  br label %bb19
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_e7633acc2439012_b16515948b11f746)
  unreachable
bb25:
  br label %bb26
bb26:
  %t99 = load i64, ptr %l5, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l5, !tbaa !24
  br label %bb11
bb27:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2emathParams(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l29 = alloca i32
  %l33 = alloca i1
  %l36 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t6, ptr %l11
  br label %bb1
bb1:
  %t7 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t7, ptr %l3
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l12, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t9, i32 %a1)
  store i32 %t13, ptr %l15
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = load i32, ptr %l15, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t14, i32 %t15)
  store { i64, ptr } %t16, ptr %l16
  br label %bb3
bb3:
  %t17 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb6:
  br label %bb7
bb7:
  %t30 = load i64, ptr %l5, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t32, ptr %l24, !tbaa !27
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i32, ptr %t36, i64 %t33
  %t38 = load i32, ptr %t37, !tbaa !33
  store i32 %t38, ptr %l8, !tbaa !23
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t41 = load i32, ptr %l8, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l29
  br label %bb8
bb8:
  %t45 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t47 = trunc i64 13 to i32
  %t48 = icmp eq i32 %t45, %t47
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t53 = load i32, ptr %l8, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l36
  br label %bb11
bb10:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb12
bb11:
  %t57 = load i32, ptr %l36, !range !{i32 0, i32 33}
  %t59 = trunc i64 14 to i32
  %t60 = icmp eq i32 %t57, %t59
  %t62 = xor i1 %t60, true
  store i1 %t62, ptr %l33, !tbaa !21
  br label %bb12
bb12:
  %t64 = load i1, ptr %l33, !tbaa !21
  br i1 %t64, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t65, ptr %l41, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l42, !tbaa !24
  %t68 = load i64, ptr %l42, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l43, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l42, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t79, ptr %l41, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t80 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t80, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d99, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  store ptr %l3, ptr %l47, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l8, !tbaa !23
  %t90 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s2, ptr %t86, i32 %t87)
  store { i64, ptr } %t90, ptr %l50
  br label %bb20
bb20:
  %t91 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t98 = load ptr, ptr %l47, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t98, { i64, ptr } %t97)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l5, !tbaa !24
  br label %bb4
bb23:
  %t105 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t105, ptr %l55
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t106 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t106, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2epow2(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = bitcast double 0x3ff0000000000000 to i64
  %t6 = shl i64 %a1, 52
  %t9 = add i64 %t2, %t6
  %t12 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 14, i64 %t9)
  store { i64, ptr } %t12, ptr %l8
  br label %bb1
bb1:
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l9 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = extractvalue { i64, ptr } %a1, 1
  %t6 = extractvalue { i64, ptr } %a1, 0
  %t7 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t9 = add i64 %t6, %t8
  %t11 = extractvalue { i64, ptr } %a2, 1
  %t12 = extractvalue { i64, ptr } %a2, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t5, i64 %t6)
  %t18 = getelementptr i8, ptr %t17, i64 %t6
  call void @olang_textcopy(ptr %t18, ptr %t7, i64 %t8)
  %t19 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t19, ptr %t11, i64 %t12)
  %t20 = getelementptr i8, ptr %t19, i64 %t12
  call void @olang_textcopy(ptr %t20, ptr %t14, i64 %t15)
  %t21 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t17, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } %t22, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t32 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } %t29)
  store { i64, ptr } %t32, ptr %l9
  br label %bb1
bb1:
  %t33 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t35 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t38 = extractvalue { i64, ptr } %t33, 1
  %t39 = extractvalue { i64, ptr } %t33, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t35, i64 %t36)
  %t45 = getelementptr i8, ptr %t44, i64 %t36
  call void @olang_textcopy(ptr %t45, ptr %t38, i64 %t39)
  %t46 = getelementptr i8, ptr %t45, i64 %t39
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t44, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t48, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eextend(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca i32
  %l12 = alloca i32
  %l15 = alloca { i64, ptr }
  %l19 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
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
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t7, i32 %a2)
  store i32 %t13, ptr %l12
  br label %bb1
bb1:
  %t14 = load i32, ptr %l12, !tbaa !23
  store i32 %t14, ptr %l6, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l6, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t15, i32 %t16)
  store { i64, ptr } %t19, ptr %l15
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = extractvalue { i64, ptr } %t25, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v2, { i64, ptr } %t32, { i64, ptr } %t33)
  store i1 %t36, ptr %l19
  br label %bb3
bb3:
  %t37 = load i1, ptr %l19, !tbaa !21
  br i1 %t37, label %bb4, label %bb5
bb4:
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 1
  %t41 = extractvalue { i64, ptr } %t38, 0
  %t42 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t40, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t44, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l22, !tbaa !29
  br i1 %a4, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l24, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d105, i32 0, i32 1) }, ptr %l24, !tbaa !27
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l6, !tbaa !23
  %t53 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t49, i32 %t50)
  store { i64, ptr } %t53, ptr %l27
  br label %bb10
bb10:
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t62 = add i64 %t58, %t61
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t67 = extractvalue { i64, ptr } %t54, 1
  %t68 = extractvalue { i64, ptr } %t54, 0
  %t69 = add i64 %t65, %t68
  %t70 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t74 = extractvalue { i64, ptr } %t55, 1
  %t75 = extractvalue { i64, ptr } %t55, 0
  %t76 = add i64 %t72, %t75
  %t77 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t57, i64 %t58)
  %t78 = getelementptr i8, ptr %t77, i64 %t58
  call void @olang_textcopy(ptr %t78, ptr %t60, i64 %t61)
  %t79 = getelementptr i8, ptr %t78, i64 %t61
  call void @olang_textcopy(ptr %t79, ptr %t63, i64 %t64)
  %t80 = getelementptr i8, ptr %t79, i64 %t64
  call void @olang_textcopy(ptr %t80, ptr %t67, i64 %t68)
  %t81 = getelementptr i8, ptr %t80, i64 %t68
  call void @olang_textcopy(ptr %t81, ptr %t70, i64 %t71)
  %t82 = getelementptr i8, ptr %t81, i64 %t71
  call void @olang_textcopy(ptr %t82, ptr %t74, i64 %t75)
  %t83 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t77, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = extractvalue { i64, ptr } %t84, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load ptr, ptr %l22, !tbaa !29
  %t94 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t92, { i64, ptr } %t91)
  store { i64, ptr } %t94, ptr %l32
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t95 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l17 = alloca i32
  %l22 = alloca i32
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
  store i32 %t13, ptr %l9
  br label %bb1
bb1:
  %t14 = load i32, ptr %l9, !range !{i32 0, i32 33}
  store i32 %t14, ptr %l3
  %t15 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t17 = trunc i64 22 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  %t20 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t22 = trunc i64 23 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l17
  br label %bb7
bb7:
  %t30 = load i32, ptr %l17, !tbaa !23
  store i32 %t30, ptr %l10, !tbaa !23
  br label %bb18
bb8:
  %t31 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t33 = trunc i64 18 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l22
  br label %bb12
bb12:
  %t41 = load i32, ptr %l22, !tbaa !23
  store i32 %t41, ptr %l10, !tbaa !23
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i32 0, ptr %l10, !tbaa !23
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_eb27983cb422b22_ecec0dc804c2438e)
  unreachable
bb18:
  %t42 = load i32, ptr %l10, !tbaa !23
  store i32 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l10 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t8 = extractvalue { i64, ptr } %a1, 1
  %t9 = extractvalue { i64, ptr } %a1, 0
  %t10 = add i64 %t6, %t9
  %t11 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = extractvalue { i64, ptr } %a2, 1
  %t16 = extractvalue { i64, ptr } %a2, 0
  %t17 = add i64 %t13, %t16
  %t19 = extractvalue { i64, ptr } %a3, 1
  %t20 = extractvalue { i64, ptr } %a3, 0
  %t21 = add i64 %t17, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t5, i64 %t6)
  %t23 = getelementptr i8, ptr %t22, i64 %t6
  call void @olang_textcopy(ptr %t23, ptr %t8, i64 %t9)
  %t24 = getelementptr i8, ptr %t23, i64 %t9
  call void @olang_textcopy(ptr %t24, ptr %t11, i64 %t12)
  %t25 = getelementptr i8, ptr %t24, i64 %t12
  call void @olang_textcopy(ptr %t25, ptr %t15, i64 %t16)
  %t26 = getelementptr i8, ptr %t25, i64 %t16
  call void @olang_textcopy(ptr %t26, ptr %t19, i64 %t20)
  %t27 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t22, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } %t28, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t38 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v4, ptr %v4, ptr %a0, { i64, ptr } %t35)
  store { i64, ptr } %t38, ptr %l10
  br label %bb1
bb1:
  %t39 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { { i64, ptr }, i32 }
  %l9 = alloca i64
  %l16 = alloca { { i64, ptr }, i32 }
  %l23 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  %t7 = mul i64 8, %t6
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load { i64, [4 x i64] }, ptr %l1
  %t11 = extractvalue { i64, [4 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 1
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t15 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t14, i32 0, i32 0
  %t16 = load %"compiler/mir:Lvalue", ptr %t15
  store %"compiler/mir:Lvalue" %t16, ptr %l4
  br label %bb4
bb3:
  br label %bb7
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/mir:Lvalue", ptr %l4
  %t22 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s1, ptr %t18, %"compiler/mir:Lvalue" %t19)
  store { { i64, ptr }, i32 } %t22, ptr %l16
  br label %bb5
bb5:
  %t23 = load { { i64, ptr }, i32 }, ptr %l16
  store { { i64, ptr }, i32 } %t23, ptr %l5
  %t24 = getelementptr { { i64, ptr }, i32 }, ptr %l5, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t28)
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t29, i64 %t30)
  %t35 = getelementptr i8, ptr %t34, i64 %t30
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %t28)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t34, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t50 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %s1, ptr %v1, ptr %v1, ptr %t27, { i64, ptr } %t45, { i64, ptr } %t25, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store { i64, ptr } %t50, ptr %l23
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  %t51 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb7:
  %t52 = load { i64, [4 x i64] }, ptr %l1
  %t54 = extractvalue { i64, [4 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 2
  br i1 %t55, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  %t57 = load { i64, [4 x i64] }, ptr %l1
  %t59 = extractvalue { i64, [4 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 0
  br i1 %t60, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t62, ptr %l29, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l30, !tbaa !24
  %t65 = load i64, ptr %l30, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l31, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l30, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t76, ptr %l29, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l32, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, [4 x i64] }, ptr %l1
  %t81 = load i32, ptr %l2, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %t79, { i64, [4 x i64] } %t80, i32 %t81)
  store { i64, ptr } %t85, ptr %l36
  br label %bb17
bb17:
  %t86 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t93 = load i32, ptr %l2, !tbaa !23
  %t94 = load ptr, ptr %l32, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easInt(ptr %v0, ptr %v1, ptr %v1, ptr %t94, { i64, ptr } %t92, i32 %t93)
  store { i64, ptr } %t97, ptr %l39
  br label %bb18
bb18:
  %t98 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_96948ec8b108caf2_f11085d875d0f99e)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedPrim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca i64
  %l37 = alloca i64
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l54 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l67 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca { i64, [4 x i64] }
  %l83 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
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
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/mir:Range", ptr %l3
  %t13 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t9, %"compiler/mir:Range" %t10, i64 0)
  store { i64, [4 x i64] } %t13, ptr %l21
  br label %bb1
bb1:
  %t14 = load { i64, [4 x i64] }, ptr %l21
  store { i64, [4 x i64] } %t14, ptr %l5
  %t15 = load ptr, ptr %l4, !tbaa !29
  store ptr %t15, ptr %l22, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load { i64, [4 x i64] }, ptr %l5
  %t20 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t16, { i64, [4 x i64] } %t17)
  store i32 %t20, ptr %l25
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l22, !tbaa !29
  %t22 = load i32, ptr %l25, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t23, ptr %l26
  br label %bb3
bb3:
  %t24 = load i32, ptr %l26, !tbaa !23
  store i32 %t24, ptr %l6, !tbaa !23
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load %"compiler/mir:Range", ptr %l3
  %t29 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t25, %"compiler/mir:Range" %t26, i64 1)
  store { i64, [4 x i64] } %t29, ptr %l29
  br label %bb4
bb4:
  %t30 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t30, ptr %l7
  %t31 = load { i64, [4 x i64] }, ptr %l7
  %t33 = extractvalue { i64, [4 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 2
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t36 = getelementptr { i64, [4 x i64] }, ptr %l7, i32 0, i32 1
  %t37 = getelementptr { i32, i64 }, ptr %t36, i32 0, i32 1
  %t38 = load i64, ptr %t37
  store i64 %t38, ptr %l8, !tbaa !24
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t40 = load i64, ptr %l8, !tbaa !24
  store i64 %t40, ptr %l30, !tbaa !24
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_961c92f0031f8566_93f78080bb0935c2)
  unreachable
bb13:
  %t42 = load i64, ptr %l30, !tbaa !24
  store i64 %t42, ptr %l9, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l6, !tbaa !23
  %t47 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t43, i32 %t44)
  store i64 %t47, ptr %l37
  br label %bb14
bb14:
  %t48 = load i64, ptr %l37, !tbaa !24
  %t49 = mul i64 8, %t48
  store i64 %t49, ptr %l10, !tbaa !24
  %t51 = load ptr, ptr %l4, !tbaa !29
  store ptr %t51, ptr %l39, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t53 = load i32, ptr %l6, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l42
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l39, !tbaa !29
  %t58 = load i32, ptr %l42, !tbaa !23
  %t59 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t57, i32 %t58)
  store { i64, ptr } %t59, ptr %l43
  br label %bb16
bb16:
  %t60 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t60, ptr %l44, !tbaa !27
  %t61 = load i64, ptr %l9, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i32, ptr %t64, i64 %t61
  %t66 = load i32, ptr %t65, !tbaa !33
  store i32 %t66, ptr %l11, !tbaa !23
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %s0, ptr %t68, i32 %t69)
  store { i64, ptr } %t72, ptr %l49
  br label %bb17
bb17:
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i64, ptr %t76, i64 %t73
  %t78 = load i64, ptr %t77, !tbaa !34
  store i64 %t78, ptr %l12, !tbaa !24
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t81 = load i32, ptr %l11, !tbaa !23
  %t84 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t80, i32 %t81)
  store i64 %t84, ptr %l54
  br label %bb18
bb18:
  %t85 = load i64, ptr %l54, !tbaa !24
  store i64 %t85, ptr %l13, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load { i64, [4 x i64] }, ptr %l5
  %t88 = load i32, ptr %l6, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedBits(ptr %v0, ptr %s0, ptr %t86, { i64, [4 x i64] } %t87, i32 %t88)
  store { i64, ptr } %t92, ptr %l58
  br label %bb19
bb19:
  %t93 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t93, ptr %l14, !tbaa !27
  %t96 = trunc i64 40 to i32
  %t97 = icmp eq i32 %a1, %t96
  br i1 %t97, label %bb20, label %bb21
bb20:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l61, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t102 = load i64, ptr %l10, !tbaa !24
  %t103 = load i64, ptr %l12, !tbaa !24
  %t104 = load i64, ptr %l13, !tbaa !24
  %t110 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecut(ptr %v0, ptr %s0, ptr %v1, ptr %t100, { i64, ptr } %t101, i64 %t102, i64 %t103, i64 %t104)
  store { i64, ptr } %t110, ptr %l67
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t111 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t118 = load i64, ptr %l13, !tbaa !24
  %t119 = load i32, ptr %l11, !tbaa !23
  %t120 = load ptr, ptr %l61, !tbaa !29
  %t124 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efromBits(ptr %v0, ptr %v1, ptr %v1, ptr %t120, { i64, ptr } %t117, i64 %t118, i32 %t119)
  store { i64, ptr } %t124, ptr %l71
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t125 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t125, ptr %rv
  br label %ret
bb24:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l72, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t127, ptr %l73, !tbaa !27
  %t128 = load i64, ptr %l10, !tbaa !24
  store i64 %t128, ptr %l74, !tbaa !24
  %t129 = load i64, ptr %l12, !tbaa !24
  store i64 %t129, ptr %l75, !tbaa !24
  %t130 = load i64, ptr %l13, !tbaa !24
  store i64 %t130, ptr %l76, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l77, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l78, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load %"compiler/mir:Range", ptr %l3
  %t137 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t133, %"compiler/mir:Range" %t134, i64 2)
  store { i64, [4 x i64] } %t137, ptr %l81
  br label %bb25
bb25:
  %t138 = load i32, ptr %l11, !tbaa !23
  %t139 = load ptr, ptr %l78, !tbaa !29
  %t140 = load { i64, [4 x i64] }, ptr %l81
  %t142 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t139, { i64, [4 x i64] } %t140, i32 %t138)
  store { i64, ptr } %t142, ptr %l83
  br label %bb26
bb26:
  %t143 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  %t145 = extractvalue { i64, ptr } %t143, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load i32, ptr %l11, !tbaa !23
  %t151 = load i64, ptr %l13, !tbaa !24
  %t152 = load ptr, ptr %l77, !tbaa !29
  %t156 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %s0, ptr %s0, ptr %t152, { i64, ptr } %t149, i32 %t150, i64 %t151)
  store { i64, ptr } %t156, ptr %l87
  br label %bb27
bb27:
  %t157 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 0
  %t159 = extractvalue { i64, ptr } %t157, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t164 = load ptr, ptr %l72, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t166 = load i64, ptr %l74, !tbaa !24
  %t167 = load i64, ptr %l75, !tbaa !24
  %t168 = load i64, ptr %l76, !tbaa !24
  %t170 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t164, { i64, ptr } %t165, i64 %t166, i64 %t167, i64 %t168, { i64, ptr } %t163)
  store { i64, ptr } %t170, ptr %l89
  br label %bb28
bb28:
  %t171 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i32, ptr %l6, !tbaa !23
  %t178 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %s0, ptr %v1, ptr %t172, { i64, ptr } %t171, i32 %t174)
  store { i64, ptr } %t178, ptr %l93
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t179 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t179, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i1
  %lp11 = alloca ptr
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l55 = alloca i32
  %l56 = alloca i32
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l63 = alloca i1
  %l70 = alloca { i64, ptr }
  %l76 = alloca { i64, [4 x i64] }
  %l79 = alloca i32
  %l82 = alloca i1
  %l86 = alloca i1
  %l90 = alloca ptr
  %l93 = alloca { i64, [4 x i64] }
  %l94 = alloca i32
  %l97 = alloca i32
  %l100 = alloca { i64, ptr }
  %l103 = alloca i1
  %l106 = alloca i1
  %l110 = alloca { i64, ptr }
  %l114 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l145 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l170 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l182 = alloca { i64, [4 x i64] }
  %l183 = alloca i64
  %l191 = alloca { i64, ptr }
  %l192 = alloca { i64, ptr }
  %l193 = alloca i64
  %l194 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l240 = alloca ptr
  %l241 = alloca { i64, ptr }
  %l242 = alloca { i64, ptr }
  %l245 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l253 = alloca { i64, ptr }
  %l254 = alloca ptr
  %l255 = alloca { i64, ptr }
  %l257 = alloca ptr
  %l258 = alloca ptr
  %l261 = alloca { i64, [4 x i64] }
  %l262 = alloca i32
  %l263 = alloca { i64, ptr }
  %l266 = alloca { i64, ptr }
  %l271 = alloca i1
  %l272 = alloca i32
  %l275 = alloca i32
  %l279 = alloca i32
  %l283 = alloca i1
  %l287 = alloca i1
  %l290 = alloca i1
  %l296 = alloca { i64, ptr }
  %l301 = alloca { i64, ptr }
  %l302 = alloca ptr
  %l303 = alloca { i64, ptr }
  %l304 = alloca ptr
  %l307 = alloca i32
  %l308 = alloca i64
  %l311 = alloca { i64, ptr }
  %l319 = alloca { i64, ptr }
  %l320 = alloca { i64, ptr }
  %l321 = alloca i64
  %l322 = alloca { i64, ptr }
  %l327 = alloca i1
  %l328 = alloca i32
  %l331 = alloca i32
  %l335 = alloca i32
  %l339 = alloca i1
  %l342 = alloca i1
  %l345 = alloca i64
  %l351 = alloca { i64, ptr }
  %l356 = alloca i32
  %l357 = alloca ptr
  %l360 = alloca { i64, ptr }
  %l361 = alloca { i64, ptr }
  %l364 = alloca i64
  %l367 = alloca { i64, ptr }
  %l376 = alloca { i64, ptr }
  %l379 = alloca { i64, ptr }
  %l384 = alloca ptr
  %l385 = alloca { i64, ptr }
  %l386 = alloca { i64, ptr }
  %l387 = alloca { i64, ptr }
  %l388 = alloca { i64, ptr }
  %l390 = alloca i1
  %l392 = alloca { i64, ptr }
  %l395 = alloca ptr
  %l396 = alloca { i64, ptr }
  %l397 = alloca { i64, ptr }
  %l398 = alloca { i64, ptr }
  %l399 = alloca { i64, ptr }
  %l401 = alloca i1
  %l403 = alloca { i64, ptr }
  %l406 = alloca { i64, ptr }
  %l411 = alloca { i64, ptr }
  %l416 = alloca i64
  %l421 = alloca i64
  %l426 = alloca i64
  %l445 = alloca { i64, ptr }
  %l453 = alloca { i64, ptr }
  %l454 = alloca ptr
  %l455 = alloca { i64, ptr }
  %l461 = alloca { i64, ptr }
  %l465 = alloca { i64, ptr }
  %l483 = alloca { i64, ptr }
  %l488 = alloca ptr
  %l489 = alloca ptr
  %l492 = alloca { i64, [4 x i64] }
  %l494 = alloca { i64, ptr }
  %l498 = alloca { i64, ptr }
  %l501 = alloca i64
  %l507 = alloca ptr
  %l508 = alloca ptr
  %l511 = alloca { i64, [4 x i64] }
  %l513 = alloca { i64, ptr }
  %l517 = alloca { i64, ptr }
  %l522 = alloca { i64, ptr }
  %l528 = alloca { i64, ptr }
  %l529 = alloca ptr
  %l536 = alloca { i64, ptr }
  %l540 = alloca { i64, ptr }
  %l542 = alloca i64
  %l546 = alloca { i64, ptr }
  %l570 = alloca { i64, ptr }
  %l584 = alloca { i64, ptr }
  %l585 = alloca ptr
  %l588 = alloca { i64, [4 x i64] }
  %l590 = alloca { i64, ptr }
  %l592 = alloca i1
  %l595 = alloca { i64, ptr }
  %l598 = alloca { i64, ptr }
  %l599 = alloca { i64, ptr }
  %l611 = alloca i1
  %l613 = alloca ptr
  %l620 = alloca { i64, ptr }
  %l622 = alloca { i64, ptr }
  %l639 = alloca { i64, ptr }
  %l642 = alloca ptr
  %l644 = alloca { i64, ptr }
  %l650 = alloca { i64, ptr }
  %l653 = alloca ptr
  %l655 = alloca { i64, ptr }
  %l661 = alloca { i64, ptr }
  %l664 = alloca ptr
  %l666 = alloca { i64, ptr }
  %l672 = alloca { i64, ptr }
  %l675 = alloca ptr
  %l677 = alloca { i64, ptr }
  %l679 = alloca { i64, ptr }
  %l685 = alloca { i64, ptr }
  %l688 = alloca ptr
  %l690 = alloca { i64, ptr }
  %l692 = alloca { i64, ptr }
  %l698 = alloca { i64, ptr }
  %l703 = alloca ptr
  %l706 = alloca { i64, [4 x i64] }
  %l707 = alloca i32
  %l708 = alloca ptr
  %l709 = alloca ptr
  %l712 = alloca { i64, [4 x i64] }
  %l714 = alloca { i64, ptr }
  %l718 = alloca { i64, ptr }
  %l721 = alloca { i64, ptr }
  %l723 = alloca { i64, ptr }
  %l731 = alloca { i64, ptr }
  %l740 = alloca { i64, ptr }
  %l749 = alloca { i64, ptr }
  %l758 = alloca { i64, ptr }
  %l776 = alloca { i64, ptr }
  %l780 = alloca i1
  %l781 = alloca i1
  %l783 = alloca i1
  %l785 = alloca i1
  %l786 = alloca { i64, ptr }
  %l787 = alloca ptr
  %l788 = alloca { i64, ptr }
  %l794 = alloca { i64, ptr }
  %l800 = alloca { i64, ptr }
  %l803 = alloca { i64, ptr }
  %l804 = alloca ptr
  %l810 = alloca { i64, ptr }
  %l816 = alloca { i64, ptr }
  %l819 = alloca { i64, ptr }
  %l825 = alloca { i64, ptr }
  %l832 = alloca { i64, ptr }
  %l838 = alloca i1
  %l839 = alloca ptr
  %l845 = alloca { i64, ptr }
  %l849 = alloca { i64, ptr }
  %l850 = alloca ptr
  %l851 = alloca { i64, ptr }
  %l856 = alloca { i64, ptr }
  %l859 = alloca { i64, ptr }
  %l864 = alloca i32
  %l865 = alloca ptr
  %l868 = alloca { i64, ptr }
  %l869 = alloca ptr
  %l872 = alloca { i64, [4 x i64] }
  %l874 = alloca { i64, ptr }
  %l875 = alloca { i64, ptr }
  %l878 = alloca i64
  %l881 = alloca { i64, ptr }
  %l882 = alloca { i64, ptr }
  %l883 = alloca i64
  %l884 = alloca { i64, ptr }
  %l891 = alloca i32
  %l894 = alloca { i64, ptr }
  %l895 = alloca ptr
  %l896 = alloca { i64, ptr }
  %l897 = alloca { i64, ptr }
  %l900 = alloca { i64, ptr }
  %l901 = alloca ptr
  %l904 = alloca { i64, [4 x i64] }
  %l906 = alloca { i64, ptr }
  %l909 = alloca { i64, ptr }
  %l914 = alloca i32
  %l917 = alloca { i64, ptr }
  %l918 = alloca ptr
  %l919 = alloca { i64, ptr }
  %l920 = alloca { i64, ptr }
  %l921 = alloca ptr
  %l924 = alloca { i64, [4 x i64] }
  %l926 = alloca { i64, ptr }
  %l927 = alloca { i64, ptr }
  %l928 = alloca ptr
  %l931 = alloca { i64, [4 x i64] }
  %l933 = alloca { i64, ptr }
  %l936 = alloca { i64, ptr }
  %l942 = alloca { i64, ptr }
  %l943 = alloca ptr
  %l944 = alloca i32
  %l946 = alloca { i64, ptr }
  %l948 = alloca { i64, ptr }
  %l949 = alloca { i64, ptr }
  %l950 = alloca i64
  %l951 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %s61 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s72 = alloca %olang.scope
  %s93 = alloca %olang.scope
  %s102 = alloca %olang.scope
  %s103 = alloca %olang.scope
  %s112 = alloca %olang.scope
  %s113 = alloca %olang.scope
  %s118 = alloca %olang.scope
  %s120 = alloca %olang.scope
  %s122 = alloca %olang.scope
  %s125 = alloca %olang.scope
  %s126 = alloca %olang.builder
  %s126room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3 = trunc i64 40 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t8 = trunc i64 41 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l63, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l63, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t14 = load i32, ptr %l2, !tbaa !23
  %t15 = load %"compiler/mir:Range", ptr %l3
  %t20 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epackedPrim(ptr %v0, ptr %v1, ptr %t12, i32 %t13, i32 %t14, %"compiler/mir:Range" %t15)
  store { i64, ptr } %t20, ptr %l70
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t21 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:fnEm", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/emit:Emitter", ptr %t25, i32 0, i32 3
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l4, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/mir:Range", ptr %l3
  %t34 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t30, %"compiler/mir:Range" %t31, i64 0)
  store { i64, [4 x i64] } %t34, ptr %l76
  br label %bb8
bb8:
  %t35 = load { i64, [4 x i64] }, ptr %l76
  store { i64, [4 x i64] } %t35, ptr %l5
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, [4 x i64] }, ptr %l5
  %t40 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t36, { i64, [4 x i64] } %t37)
  store i32 %t40, ptr %l79
  br label %bb9
bb9:
  %t41 = load i32, ptr %l79, !tbaa !23
  store i32 %t41, ptr %l6, !tbaa !23
  %t42 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t45 = icmp sgt i32 %t43, 1
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load i32, ptr %l6, !tbaa !23
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t51 = icmp eq i32 %t47, %t48
  br i1 %t51, label %bb12, label %bb13
bb11:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb15
bb12:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb14
bb13:
  %t53 = load i32, ptr %l6, !tbaa !23
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t57 = icmp eq i32 %t53, %t54
  store i1 %t57, ptr %l86, !tbaa !21
  br label %bb14
bb14:
  %t59 = load i1, ptr %l86, !tbaa !21
  store i1 %t59, ptr %l82, !tbaa !21
  br label %bb15
bb15:
  %t60 = load i1, ptr %l82, !tbaa !21
  br i1 %t60, label %bb16, label %bb17
bb16:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l90, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/mir:Range", ptr %l3
  %t66 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t62, %"compiler/mir:Range" %t63, i64 1)
  store { i64, [4 x i64] } %t66, ptr %l93
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t67 = load ptr, ptr %l90, !tbaa !29
  %t68 = load { i64, [4 x i64] }, ptr %l93
  %t69 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t67, { i64, [4 x i64] } %t68)
  store i32 %t69, ptr %l94
  br label %bb19
bb19:
  %t70 = load i32, ptr %l94, !tbaa !23
  store i32 %t70, ptr %l6, !tbaa !23
  br label %bb20
bb20:
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t72 = load i32, ptr %l6, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l97
  br label %bb21
bb21:
  %t76 = load i32, ptr %l97, !tbaa !23
  store i32 %t76, ptr %l7, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l7, !tbaa !23
  %t81 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t77, i32 %t78)
  store { i64, ptr } %t81, ptr %l100
  br label %bb22
bb22:
  %t82 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t82, ptr %l8, !tbaa !27
  %t83 = load ptr, ptr %l4, !tbaa !29
  %t84 = load i32, ptr %l7, !tbaa !23
  %t87 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t83, i32 %t84)
  store i1 %t87, ptr %l103
  br label %bb23
bb23:
  %t88 = load i1, ptr %l103, !tbaa !21
  store i1 %t88, ptr %l9, !tbaa !21
  %t89 = load ptr, ptr %l4, !tbaa !29
  %t90 = load i32, ptr %l7, !tbaa !23
  %t93 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t89, i32 %t90)
  store i1 %t93, ptr %l106
  br label %bb24
bb24:
  %t94 = load i1, ptr %l106, !tbaa !21
  store i1 %t94, ptr %l10, !tbaa !21
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load { i64, [4 x i64] }, ptr %l5
  %t97 = load i32, ptr %l6, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %t95, { i64, [4 x i64] } %t96, i32 %t97)
  store { i64, ptr } %t101, ptr %l110
  br label %bb25
bb25:
  %t102 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t102, ptr %lp11
  %t103 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t104 = load ptr, ptr %lp11
  store { i64, ptr } %t103, ptr %t104, !tbaa !27
  %t105 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t107 = trunc i64 0 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb41
bb28:
  store %olang.scope zeroinitializer, ptr %s3
  %t110 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t112 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s3, { i64, ptr } %t110, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t112, ptr %l114
  br label %bb29
bb29:
  %t113 = load i1, ptr %l114, !tbaa !21
  br i1 %t113, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l115, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l116, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %lp11
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t119 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t122 = extractvalue { i64, ptr } %t118, 1
  %t123 = extractvalue { i64, ptr } %t118, 0
  %t124 = add i64 %t120, %t123
  %t125 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t128 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t127)
  call void @olang_textcopy(ptr %t128, ptr %t119, i64 %t120)
  %t129 = getelementptr i8, ptr %t128, i64 %t120
  call void @olang_textcopy(ptr %t129, ptr %t122, i64 %t123)
  %t130 = getelementptr i8, ptr %t129, i64 %t123
  call void @olang_textcopy(ptr %t130, ptr %t125, i64 %t126)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t128, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } %t132, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t142 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %s4, ptr %t116, { i64, ptr } %t139)
  store { i64, ptr } %t142, ptr %l121
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t143 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t145 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t143, i64 %t144)
  %t153 = getelementptr i8, ptr %t152, i64 %t144
  call void @olang_textcopy(ptr %t153, ptr %t146, i64 %t147)
  %t154 = getelementptr i8, ptr %t153, i64 %t147
  call void @olang_textcopy(ptr %t154, ptr %t149, i64 %t150)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t152, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } %t156, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  %t164 = load ptr, ptr %l116, !tbaa !29
  %t166 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %s4, ptr %t164, { i64, ptr } %t163)
  store { i64, ptr } %t166, ptr %l124
  br label %bb33
bb33:
  %t167 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t169 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = add i64 %t168, %t171
  %t173 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t167, i64 %t168)
  %t177 = getelementptr i8, ptr %t176, i64 %t168
  call void @olang_textcopy(ptr %t177, ptr %t170, i64 %t171)
  %t178 = getelementptr i8, ptr %t177, i64 %t171
  call void @olang_textcopy(ptr %t178, ptr %t173, i64 %t174)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t176, 1
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t183 = extractvalue { i64, ptr } %t180, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t188 = load ptr, ptr %l115, !tbaa !29
  %t190 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t188, { i64, ptr } %t187)
  store { i64, ptr } %t190, ptr %l127
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t191 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t191, ptr %rv
  br label %ret
bb35:
  %t192 = load i1, ptr %l9, !tbaa !21
  br i1 %t192, label %bb36, label %bb37
bb36:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t196 = load ptr, ptr %lp11
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  %t198 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t199 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t201 = extractvalue { i64, ptr } %t195, 1
  %t202 = extractvalue { i64, ptr } %t195, 0
  %t203 = add i64 %t199, %t202
  %t204 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t206 = add i64 %t203, %t205
  %t208 = extractvalue { i64, ptr } %t197, 1
  %t209 = extractvalue { i64, ptr } %t197, 0
  %t210 = add i64 %t206, %t209
  %t211 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t210)
  call void @olang_textcopy(ptr %t211, ptr %t198, i64 %t199)
  %t212 = getelementptr i8, ptr %t211, i64 %t199
  call void @olang_textcopy(ptr %t212, ptr %t201, i64 %t202)
  %t213 = getelementptr i8, ptr %t212, i64 %t202
  call void @olang_textcopy(ptr %t213, ptr %t204, i64 %t205)
  %t214 = getelementptr i8, ptr %t213, i64 %t205
  call void @olang_textcopy(ptr %t214, ptr %t208, i64 %t209)
  %t215 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t211, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t219 = extractvalue { i64, ptr } %t216, 1
  %t220 = mul i64 %t218, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t221, ptr %t219, i64 %t220, i1 false)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  %t226 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t194, { i64, ptr } %t223)
  store { i64, ptr } %t226, ptr %l135
  br label %bb38
bb37:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t229 = load ptr, ptr %lp11
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  %t231 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t232 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t234 = extractvalue { i64, ptr } %t228, 1
  %t235 = extractvalue { i64, ptr } %t228, 0
  %t236 = add i64 %t232, %t235
  %t237 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t239 = add i64 %t236, %t238
  %t241 = extractvalue { i64, ptr } %t230, 1
  %t242 = extractvalue { i64, ptr } %t230, 0
  %t243 = add i64 %t239, %t242
  %t244 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t243)
  call void @olang_textcopy(ptr %t244, ptr %t231, i64 %t232)
  %t245 = getelementptr i8, ptr %t244, i64 %t232
  call void @olang_textcopy(ptr %t245, ptr %t234, i64 %t235)
  %t246 = getelementptr i8, ptr %t245, i64 %t235
  call void @olang_textcopy(ptr %t246, ptr %t237, i64 %t238)
  %t247 = getelementptr i8, ptr %t246, i64 %t238
  call void @olang_textcopy(ptr %t247, ptr %t241, i64 %t242)
  %t248 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t244, 1
  %t251 = extractvalue { i64, ptr } %t249, 0
  %t252 = extractvalue { i64, ptr } %t249, 1
  %t253 = mul i64 %t251, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  %t259 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t227, { i64, ptr } %t256)
  store { i64, ptr } %t259, ptr %l141
  br label %bb39
bb38:
  %t260 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t260, ptr %l129, !tbaa !27
  br label %bb40
bb39:
  %t261 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t261, ptr %l129, !tbaa !27
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t262 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t262, ptr %rv
  br label %ret
bb41:
  %t263 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t265 = trunc i64 1 to i32
  %t266 = icmp eq i32 %t263, %t265
  br i1 %t266, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l144, !tbaa !29
  %t269 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t269, ptr %l145, !tbaa !27
  %t270 = load ptr, ptr %lp11
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  store { i64, ptr } %t271, ptr %l146, !tbaa !27
  %t272 = load i32, ptr %l7, !tbaa !23
  %t273 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t276 = icmp eq i32 %t272, %t273
  br i1 %t276, label %bb45, label %bb46
bb45:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d124, i32 0, i32 1) }, ptr %l150, !tbaa !27
  br label %bb47
bb46:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l150, !tbaa !27
  br label %bb47
bb47:
  %t278 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t280 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = add i64 %t279, %t282
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t286 = add i64 %t283, %t285
  %t287 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t288 = extractvalue { i64, ptr } %t287, 1
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t290 = add i64 %t286, %t289
  %t291 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t293 = add i64 %t290, %t292
  %t294 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t294, 1
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t297 = add i64 %t293, %t296
  %t298 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t297)
  call void @olang_textcopy(ptr %t298, ptr %t278, i64 %t279)
  %t299 = getelementptr i8, ptr %t298, i64 %t279
  call void @olang_textcopy(ptr %t299, ptr %t281, i64 %t282)
  %t300 = getelementptr i8, ptr %t299, i64 %t282
  call void @olang_textcopy(ptr %t300, ptr %t284, i64 %t285)
  %t301 = getelementptr i8, ptr %t300, i64 %t285
  call void @olang_textcopy(ptr %t301, ptr %t288, i64 %t289)
  %t302 = getelementptr i8, ptr %t301, i64 %t289
  call void @olang_textcopy(ptr %t302, ptr %t291, i64 %t292)
  %t303 = getelementptr i8, ptr %t302, i64 %t292
  call void @olang_textcopy(ptr %t303, ptr %t295, i64 %t296)
  %t304 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr %t298, 1
  %t307 = extractvalue { i64, ptr } %t305, 0
  %t308 = extractvalue { i64, ptr } %t305, 1
  %t309 = mul i64 %t307, 1
  %t310 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t309)
  call void @llvm.memcpy.p0.p0.i64(ptr %t310, ptr %t308, i64 %t309, i1 false)
  %t311 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t312 = insertvalue { i64, ptr } %t311, ptr %t310, 1
  %t313 = load ptr, ptr %l144, !tbaa !29
  %t315 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t313, { i64, ptr } %t312)
  store { i64, ptr } %t315, ptr %l153
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t316 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t316, ptr %rv
  br label %ret
bb49:
  %t317 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t319 = trunc i64 2 to i32
  %t320 = icmp eq i32 %t317, %t319
  br i1 %t320, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load ptr, ptr %lp11
  %t324 = load { i64, ptr }, ptr %t323, !tbaa !27
  %t325 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t326 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t328 = extractvalue { i64, ptr } %t324, 1
  %t329 = extractvalue { i64, ptr } %t324, 0
  %t330 = add i64 %t326, %t329
  %t331 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t332 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t333 = add i64 %t330, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t325, i64 %t326)
  %t335 = getelementptr i8, ptr %t334, i64 %t326
  call void @olang_textcopy(ptr %t335, ptr %t328, i64 %t329)
  %t336 = getelementptr i8, ptr %t335, i64 %t329
  call void @olang_textcopy(ptr %t336, ptr %t331, i64 %t332)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t334, 1
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t341 = extractvalue { i64, ptr } %t338, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  %t348 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t322, { i64, ptr } %t345)
  store { i64, ptr } %t348, ptr %l160
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t349 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t349, ptr %rv
  br label %ret
bb54:
  %t350 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t352 = trunc i64 20 to i32
  %t353 = icmp eq i32 %t350, %t352
  br i1 %t353, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load ptr, ptr %lp11
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  %t358 = load i32, ptr %l6, !tbaa !23
  %t359 = load i32, ptr %l2, !tbaa !23
  %t364 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econvert(ptr %v0, ptr %v1, ptr %v1, ptr %t355, { i64, ptr } %t357, i32 %t358, i32 %t359)
  store { i64, ptr } %t364, ptr %l167
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t365 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t365, ptr %rv
  br label %ret
bb59:
  %t366 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t368 = trunc i64 21 to i32
  %t369 = icmp eq i32 %t366, %t368
  br i1 %t369, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t371 = load ptr, ptr %l0, !tbaa !29
  store ptr %t371, ptr %l170, !tbaa !29
  %t372 = load ptr, ptr %lp11
  %t373 = load { i64, ptr }, ptr %t372, !tbaa !27
  store { i64, ptr } %t373, ptr %l171, !tbaa !27
  %t374 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t374, ptr %l172, !tbaa !27
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load i32, ptr %l2, !tbaa !23
  %t379 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %t375, i32 %t376)
  store { i64, ptr } %t379, ptr %l175
  br label %bb63
bb63:
  %t380 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t380, 0
  %t382 = extractvalue { i64, ptr } %t380, 1
  %t383 = mul i64 %t381, 1
  %t384 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t383)
  call void @llvm.memcpy.p0.p0.i64(ptr %t384, ptr %t382, i64 %t383, i1 false)
  %t385 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t384, 1
  %t387 = load ptr, ptr %l170, !tbaa !29
  %t388 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t389 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t391 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebitcast(ptr %v0, ptr %v1, ptr %s0, ptr %v1, ptr %v1, ptr %t387, { i64, ptr } %t388, { i64, ptr } %t389, { i64, ptr } %t386)
  store { i64, ptr } %t391, ptr %l177
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s0)
  %t392 = load { i64, ptr }, ptr %l177, !tbaa !27
  store { i64, ptr } %t392, ptr %rv
  br label %ret
bb65:
  %t393 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t395 = trunc i64 42 to i32
  %t396 = icmp eq i32 %t393, %t395
  br i1 %t396, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb88
bb68:
  store %olang.scope zeroinitializer, ptr %s16
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load %"compiler/mir:Range", ptr %l3
  %t402 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t398, %"compiler/mir:Range" %t399, i64 1)
  store { i64, [4 x i64] } %t402, ptr %l182
  br label %bb69
bb69:
  %t403 = load { i64, [4 x i64] }, ptr %l182
  store { i64, [4 x i64] } %t403, ptr %l12
  %t404 = load { i64, [4 x i64] }, ptr %l12
  %t406 = extractvalue { i64, [4 x i64] } %t404, 0
  %t407 = icmp eq i64 %t406, 2
  br i1 %t407, label %bb70, label %bb71
bb70:
  %t409 = getelementptr { i64, [4 x i64] }, ptr %l12, i32 0, i32 1
  %t410 = getelementptr { i32, i64 }, ptr %t409, i32 0, i32 1
  %t411 = load i64, ptr %t410
  store i64 %t411, ptr %l13, !tbaa !24
  br label %bb72
bb71:
  br label %bb73
bb72:
  %t413 = load i64, ptr %l13, !tbaa !24
  store i64 %t413, ptr %l183, !tbaa !24
  br label %bb78
bb73:
  br i1 true, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  store i64 -1, ptr %l183, !tbaa !24
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_69dfe582bfe1941e_f4b5889a4307147a)
  unreachable
bb78:
  %t415 = load i64, ptr %l183, !tbaa !24
  store i64 %t415, ptr %l14, !tbaa !24
  %t416 = load i64, ptr %l14, !tbaa !24
  %t418 = icmp slt i64 %t416, 0
  br i1 %t418, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s19
  %t420 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s19, ptr %t420, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d131, i32 0, i32 1) })
  br label %bb81
bb80:
  br label %bb82
bb81:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d132, i32 0, i32 1) }, ptr %l191, !tbaa !27
  %t422 = load { i64, ptr }, ptr %l191, !tbaa !27
  store { i64, ptr } %t422, ptr %l192, !tbaa !27
  %t423 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t423, 0
  store i64 %t424, ptr %l193, !tbaa !24
  %t425 = load i64, ptr %l193, !tbaa !24
  %t426 = mul i64 %t425, 1
  %t427 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t426)
  %t428 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t429 = insertvalue { i64, ptr } %t428, ptr %t427, 1
  store { i64, ptr } %t429, ptr %l194, !tbaa !27
  %t430 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !27
  %t434 = load i64, ptr %l193, !tbaa !24
  %t435 = mul i64 %t434, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t431, ptr %t433, i64 %t435, i1 false)
  %t436 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t436, ptr %l192, !tbaa !27
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  %t437 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t437, ptr %rv
  br label %ret
bb82:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/emit:fnEm", ptr %t438, i32 0, i32 0
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t442 = load i64, ptr %l14, !tbaa !24
  %t445 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eanyTable(ptr %v0, ptr %s16, ptr %t441, i64 %t442)
  store { i64, ptr } %t445, ptr %l198
  br label %bb83
bb83:
  %t446 = load { i64, ptr }, ptr %l198, !tbaa !27
  store { i64, ptr } %t446, ptr %l15, !tbaa !27
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load ptr, ptr %lp11
  %t449 = load { i64, ptr }, ptr %t448, !tbaa !27
  %t450 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t453 = extractvalue { i64, ptr } %t449, 1
  %t454 = extractvalue { i64, ptr } %t449, 0
  %t455 = add i64 %t451, %t454
  %t456 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t457 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t458 = add i64 %t455, %t457
  %t459 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t458)
  call void @olang_textcopy(ptr %t459, ptr %t450, i64 %t451)
  %t460 = getelementptr i8, ptr %t459, i64 %t451
  call void @olang_textcopy(ptr %t460, ptr %t453, i64 %t454)
  %t461 = getelementptr i8, ptr %t460, i64 %t454
  call void @olang_textcopy(ptr %t461, ptr %t456, i64 %t457)
  %t462 = insertvalue { i64, ptr } undef, i64 %t458, 0
  %t463 = insertvalue { i64, ptr } %t462, ptr %t459, 1
  %t465 = extractvalue { i64, ptr } %t463, 0
  %t466 = extractvalue { i64, ptr } %t463, 1
  %t467 = mul i64 %t465, 1
  %t468 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t467)
  call void @llvm.memcpy.p0.p0.i64(ptr %t468, ptr %t466, i64 %t467, i1 false)
  %t469 = insertvalue { i64, ptr } undef, i64 %t465, 0
  %t470 = insertvalue { i64, ptr } %t469, ptr %t468, 1
  %t473 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s16, ptr %s16, ptr %t447, { i64, ptr } %t470)
  store { i64, ptr } %t473, ptr %l203
  br label %bb84
bb84:
  %t474 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t474, ptr %l16, !tbaa !27
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load ptr, ptr %lp11
  %t477 = load { i64, ptr }, ptr %t476, !tbaa !27
  %t478 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t479 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t481 = extractvalue { i64, ptr } %t477, 1
  %t482 = extractvalue { i64, ptr } %t477, 0
  %t483 = add i64 %t479, %t482
  %t484 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t485 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t486 = add i64 %t483, %t485
  %t487 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t486)
  call void @olang_textcopy(ptr %t487, ptr %t478, i64 %t479)
  %t488 = getelementptr i8, ptr %t487, i64 %t479
  call void @olang_textcopy(ptr %t488, ptr %t481, i64 %t482)
  %t489 = getelementptr i8, ptr %t488, i64 %t482
  call void @olang_textcopy(ptr %t489, ptr %t484, i64 %t485)
  %t490 = insertvalue { i64, ptr } undef, i64 %t486, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t487, 1
  %t493 = extractvalue { i64, ptr } %t491, 0
  %t494 = extractvalue { i64, ptr } %t491, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  %t501 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s16, ptr %s16, ptr %t475, { i64, ptr } %t498)
  store { i64, ptr } %t501, ptr %l208
  br label %bb85
bb85:
  %t502 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t506 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t507 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t509 = extractvalue { i64, ptr } %t502, 1
  %t510 = extractvalue { i64, ptr } %t502, 0
  %t511 = add i64 %t507, %t510
  %t512 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t513 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t514 = add i64 %t511, %t513
  %t516 = extractvalue { i64, ptr } %t505, 1
  %t517 = extractvalue { i64, ptr } %t505, 0
  %t518 = add i64 %t514, %t517
  %t519 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t520 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t521 = add i64 %t518, %t520
  %t522 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t521)
  call void @olang_textcopy(ptr %t522, ptr %t506, i64 %t507)
  %t523 = getelementptr i8, ptr %t522, i64 %t507
  call void @olang_textcopy(ptr %t523, ptr %t509, i64 %t510)
  %t524 = getelementptr i8, ptr %t523, i64 %t510
  call void @olang_textcopy(ptr %t524, ptr %t512, i64 %t513)
  %t525 = getelementptr i8, ptr %t524, i64 %t513
  call void @olang_textcopy(ptr %t525, ptr %t516, i64 %t517)
  %t526 = getelementptr i8, ptr %t525, i64 %t517
  call void @olang_textcopy(ptr %t526, ptr %t519, i64 %t520)
  %t527 = insertvalue { i64, ptr } undef, i64 %t521, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t522, 1
  %t530 = extractvalue { i64, ptr } %t528, 0
  %t531 = extractvalue { i64, ptr } %t528, 1
  %t532 = mul i64 %t530, 1
  %t533 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t532)
  call void @llvm.memcpy.p0.p0.i64(ptr %t533, ptr %t531, i64 %t532, i1 false)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t533, 1
  %t538 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s16, ptr %s16, ptr %t503, { i64, ptr } %t535)
  store { i64, ptr } %t538, ptr %l214
  br label %bb86
bb86:
  %t539 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t541 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t543 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t544 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t546 = extractvalue { i64, ptr } %t541, 1
  %t547 = extractvalue { i64, ptr } %t541, 0
  %t548 = add i64 %t544, %t547
  %t549 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t550 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t551 = add i64 %t548, %t550
  %t553 = extractvalue { i64, ptr } %t539, 1
  %t554 = extractvalue { i64, ptr } %t539, 0
  %t555 = add i64 %t551, %t554
  %t556 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t557 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t558 = add i64 %t555, %t557
  %t559 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t558)
  call void @olang_textcopy(ptr %t559, ptr %t543, i64 %t544)
  %t560 = getelementptr i8, ptr %t559, i64 %t544
  call void @olang_textcopy(ptr %t560, ptr %t546, i64 %t547)
  %t561 = getelementptr i8, ptr %t560, i64 %t547
  call void @olang_textcopy(ptr %t561, ptr %t549, i64 %t550)
  %t562 = getelementptr i8, ptr %t561, i64 %t550
  call void @olang_textcopy(ptr %t562, ptr %t553, i64 %t554)
  %t563 = getelementptr i8, ptr %t562, i64 %t554
  call void @olang_textcopy(ptr %t563, ptr %t556, i64 %t557)
  %t564 = insertvalue { i64, ptr } undef, i64 %t558, 0
  %t565 = insertvalue { i64, ptr } %t564, ptr %t559, 1
  %t567 = extractvalue { i64, ptr } %t565, 0
  %t568 = extractvalue { i64, ptr } %t565, 1
  %t569 = mul i64 %t567, 1
  %t570 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t569)
  call void @llvm.memcpy.p0.p0.i64(ptr %t570, ptr %t568, i64 %t569, i1 false)
  %t571 = insertvalue { i64, ptr } undef, i64 %t567, 0
  %t572 = insertvalue { i64, ptr } %t571, ptr %t570, 1
  %t575 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t540, { i64, ptr } %t572)
  store { i64, ptr } %t575, ptr %l220
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  %t576 = load { i64, ptr }, ptr %l220, !tbaa !27
  store { i64, ptr } %t576, ptr %rv
  br label %ret
bb88:
  %t577 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t579 = trunc i64 43 to i32
  %t580 = icmp eq i32 %t577, %t579
  br i1 %t580, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb93
bb91:
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t583 = load ptr, ptr %lp11
  %t584 = load { i64, ptr }, ptr %t583, !tbaa !27
  %t585 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t586 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t588 = extractvalue { i64, ptr } %t584, 1
  %t589 = extractvalue { i64, ptr } %t584, 0
  %t590 = add i64 %t586, %t589
  %t591 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t592 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t593 = add i64 %t590, %t592
  %t594 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t593)
  call void @olang_textcopy(ptr %t594, ptr %t585, i64 %t586)
  %t595 = getelementptr i8, ptr %t594, i64 %t586
  call void @olang_textcopy(ptr %t595, ptr %t588, i64 %t589)
  %t596 = getelementptr i8, ptr %t595, i64 %t589
  call void @olang_textcopy(ptr %t596, ptr %t591, i64 %t592)
  %t597 = insertvalue { i64, ptr } undef, i64 %t593, 0
  %t598 = insertvalue { i64, ptr } %t597, ptr %t594, 1
  %t600 = extractvalue { i64, ptr } %t598, 0
  %t601 = extractvalue { i64, ptr } %t598, 1
  %t602 = mul i64 %t600, 1
  %t603 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t602)
  call void @llvm.memcpy.p0.p0.i64(ptr %t603, ptr %t601, i64 %t602, i1 false)
  %t604 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t605 = insertvalue { i64, ptr } %t604, ptr %t603, 1
  %t608 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t582, { i64, ptr } %t605)
  store { i64, ptr } %t608, ptr %l227
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  %t609 = load { i64, ptr }, ptr %l227, !tbaa !27
  store { i64, ptr } %t609, ptr %rv
  br label %ret
bb93:
  %t610 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t612 = trunc i64 44 to i32
  %t613 = icmp eq i32 %t610, %t612
  br i1 %t613, label %bb94, label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb106
bb96:
  store %olang.scope zeroinitializer, ptr %s26
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t616 = load ptr, ptr %lp11
  %t617 = load { i64, ptr }, ptr %t616, !tbaa !27
  %t618 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t619 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t621 = extractvalue { i64, ptr } %t617, 1
  %t622 = extractvalue { i64, ptr } %t617, 0
  %t623 = add i64 %t619, %t622
  %t624 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t625 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t626 = add i64 %t623, %t625
  %t627 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t626)
  call void @olang_textcopy(ptr %t627, ptr %t618, i64 %t619)
  %t628 = getelementptr i8, ptr %t627, i64 %t619
  call void @olang_textcopy(ptr %t628, ptr %t621, i64 %t622)
  %t629 = getelementptr i8, ptr %t628, i64 %t622
  call void @olang_textcopy(ptr %t629, ptr %t624, i64 %t625)
  %t630 = insertvalue { i64, ptr } undef, i64 %t626, 0
  %t631 = insertvalue { i64, ptr } %t630, ptr %t627, 1
  %t633 = extractvalue { i64, ptr } %t631, 0
  %t634 = extractvalue { i64, ptr } %t631, 1
  %t635 = mul i64 %t633, 1
  %t636 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t635)
  call void @llvm.memcpy.p0.p0.i64(ptr %t636, ptr %t634, i64 %t635, i1 false)
  %t637 = insertvalue { i64, ptr } undef, i64 %t633, 0
  %t638 = insertvalue { i64, ptr } %t637, ptr %t636, 1
  %t641 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s26, ptr %s26, ptr %t615, { i64, ptr } %t638)
  store { i64, ptr } %t641, ptr %l234
  br label %bb97
bb97:
  %t642 = load { i64, ptr }, ptr %l234, !tbaa !27
  store { i64, ptr } %t642, ptr %l19, !tbaa !27
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t644 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t645 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t646 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t648 = extractvalue { i64, ptr } %t644, 1
  %t649 = extractvalue { i64, ptr } %t644, 0
  %t650 = add i64 %t646, %t649
  %t651 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t652 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t653 = add i64 %t650, %t652
  %t654 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t653)
  call void @olang_textcopy(ptr %t654, ptr %t645, i64 %t646)
  %t655 = getelementptr i8, ptr %t654, i64 %t646
  call void @olang_textcopy(ptr %t655, ptr %t648, i64 %t649)
  %t656 = getelementptr i8, ptr %t655, i64 %t649
  call void @olang_textcopy(ptr %t656, ptr %t651, i64 %t652)
  %t657 = insertvalue { i64, ptr } undef, i64 %t653, 0
  %t658 = insertvalue { i64, ptr } %t657, ptr %t654, 1
  %t660 = extractvalue { i64, ptr } %t658, 0
  %t661 = extractvalue { i64, ptr } %t658, 1
  %t662 = mul i64 %t660, 1
  %t663 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t662)
  call void @llvm.memcpy.p0.p0.i64(ptr %t663, ptr %t661, i64 %t662, i1 false)
  %t664 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t665 = insertvalue { i64, ptr } %t664, ptr %t663, 1
  %t668 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s26, ptr %s26, ptr %t643, { i64, ptr } %t665)
  store { i64, ptr } %t668, ptr %l239
  br label %bb98
bb98:
  %t669 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t670 = load ptr, ptr %l0, !tbaa !29
  store ptr %t670, ptr %l240, !tbaa !29
  store { i64, ptr } %t669, ptr %l241, !tbaa !27
  %t672 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t672, ptr %l242, !tbaa !27
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t675 = getelementptr %"compiler/emit:fnEm", ptr %t673, i32 0, i32 0
  %t676 = load ptr, ptr %t675, !tbaa !29
  %t678 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2enoTable(ptr %v0, ptr %s26, ptr %t676)
  store { i64, ptr } %t678, ptr %l245
  br label %bb99
bb99:
  %t679 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t680 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t681 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t682 = extractvalue { i64, ptr } %t681, 1
  %t683 = extractvalue { i64, ptr } %t681, 0
  %t684 = add i64 %t680, %t683
  %t685 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t686 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t687 = add i64 %t684, %t686
  %t688 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t689 = extractvalue { i64, ptr } %t688, 1
  %t690 = extractvalue { i64, ptr } %t688, 0
  %t691 = add i64 %t687, %t690
  %t692 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t693 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t694 = add i64 %t691, %t693
  %t695 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t696 = extractvalue { i64, ptr } %t695, 1
  %t697 = extractvalue { i64, ptr } %t695, 0
  %t698 = add i64 %t694, %t697
  %t699 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t698)
  call void @olang_textcopy(ptr %t699, ptr %t679, i64 %t680)
  %t700 = getelementptr i8, ptr %t699, i64 %t680
  call void @olang_textcopy(ptr %t700, ptr %t682, i64 %t683)
  %t701 = getelementptr i8, ptr %t700, i64 %t683
  call void @olang_textcopy(ptr %t701, ptr %t685, i64 %t686)
  %t702 = getelementptr i8, ptr %t701, i64 %t686
  call void @olang_textcopy(ptr %t702, ptr %t689, i64 %t690)
  %t703 = getelementptr i8, ptr %t702, i64 %t690
  call void @olang_textcopy(ptr %t703, ptr %t692, i64 %t693)
  %t704 = getelementptr i8, ptr %t703, i64 %t693
  call void @olang_textcopy(ptr %t704, ptr %t696, i64 %t697)
  %t705 = insertvalue { i64, ptr } undef, i64 %t698, 0
  %t706 = insertvalue { i64, ptr } %t705, ptr %t699, 1
  %t708 = extractvalue { i64, ptr } %t706, 0
  %t709 = extractvalue { i64, ptr } %t706, 1
  %t710 = mul i64 %t708, 1
  %t711 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t710)
  call void @llvm.memcpy.p0.p0.i64(ptr %t711, ptr %t709, i64 %t710, i1 false)
  %t712 = insertvalue { i64, ptr } undef, i64 %t708, 0
  %t713 = insertvalue { i64, ptr } %t712, ptr %t711, 1
  %t714 = load ptr, ptr %l240, !tbaa !29
  %t716 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s26, ptr %s26, ptr %t714, { i64, ptr } %t713)
  store { i64, ptr } %t716, ptr %l248
  br label %bb100
bb100:
  %t717 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t718 = load ptr, ptr %l0, !tbaa !29
  %t720 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t721 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t723 = extractvalue { i64, ptr } %t717, 1
  %t724 = extractvalue { i64, ptr } %t717, 0
  %t725 = add i64 %t721, %t724
  %t726 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t725)
  call void @olang_textcopy(ptr %t726, ptr %t720, i64 %t721)
  %t727 = getelementptr i8, ptr %t726, i64 %t721
  call void @olang_textcopy(ptr %t727, ptr %t723, i64 %t724)
  %t728 = insertvalue { i64, ptr } undef, i64 %t725, 0
  %t729 = insertvalue { i64, ptr } %t728, ptr %t726, 1
  %t731 = extractvalue { i64, ptr } %t729, 0
  %t732 = extractvalue { i64, ptr } %t729, 1
  %t733 = mul i64 %t731, 1
  %t734 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t733)
  call void @llvm.memcpy.p0.p0.i64(ptr %t734, ptr %t732, i64 %t733, i1 false)
  %t735 = insertvalue { i64, ptr } undef, i64 %t731, 0
  %t736 = insertvalue { i64, ptr } %t735, ptr %t734, 1
  %t739 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s26, ptr %s26, ptr %t718, { i64, ptr } %t736)
  store { i64, ptr } %t739, ptr %l253
  br label %bb101
bb101:
  %t740 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t741 = load ptr, ptr %l0, !tbaa !29
  store ptr %t741, ptr %l254, !tbaa !29
  store { i64, ptr } %t740, ptr %l255, !tbaa !27
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t745 = getelementptr %"compiler/emit:fnEm", ptr %t743, i32 0, i32 0
  %t746 = load ptr, ptr %t745, !tbaa !29
  store ptr %t746, ptr %l257, !tbaa !29
  %t747 = load ptr, ptr %l0, !tbaa !29
  store ptr %t747, ptr %l258, !tbaa !29
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t749 = load %"compiler/mir:Range", ptr %l3
  %t752 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t748, %"compiler/mir:Range" %t749, i64 1)
  store { i64, [4 x i64] } %t752, ptr %l261
  br label %bb102
bb102:
  %t753 = load ptr, ptr %l258, !tbaa !29
  %t754 = load { i64, [4 x i64] }, ptr %l261
  %t755 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t753, { i64, [4 x i64] } %t754)
  store i32 %t755, ptr %l262
  br label %bb103
bb103:
  %t756 = load ptr, ptr %l257, !tbaa !29
  %t757 = load i32, ptr %l262, !tbaa !23
  %t758 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeid(ptr %v0, ptr %s26, ptr %t756, i32 %t757)
  store { i64, ptr } %t758, ptr %l263
  br label %bb104
bb104:
  %t759 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t760 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t761 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t762 = extractvalue { i64, ptr } %t761, 1
  %t763 = extractvalue { i64, ptr } %t761, 0
  %t764 = add i64 %t760, %t763
  %t765 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t766 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t767 = add i64 %t764, %t766
  %t768 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t769 = extractvalue { i64, ptr } %t768, 1
  %t770 = extractvalue { i64, ptr } %t768, 0
  %t771 = add i64 %t767, %t770
  %t772 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t771)
  call void @olang_textcopy(ptr %t772, ptr %t759, i64 %t760)
  %t773 = getelementptr i8, ptr %t772, i64 %t760
  call void @olang_textcopy(ptr %t773, ptr %t762, i64 %t763)
  %t774 = getelementptr i8, ptr %t773, i64 %t763
  call void @olang_textcopy(ptr %t774, ptr %t765, i64 %t766)
  %t775 = getelementptr i8, ptr %t774, i64 %t766
  call void @olang_textcopy(ptr %t775, ptr %t769, i64 %t770)
  %t776 = insertvalue { i64, ptr } undef, i64 %t771, 0
  %t777 = insertvalue { i64, ptr } %t776, ptr %t772, 1
  %t779 = extractvalue { i64, ptr } %t777, 0
  %t780 = extractvalue { i64, ptr } %t777, 1
  %t781 = mul i64 %t779, 1
  %t782 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t781)
  call void @llvm.memcpy.p0.p0.i64(ptr %t782, ptr %t780, i64 %t781, i1 false)
  %t783 = insertvalue { i64, ptr } undef, i64 %t779, 0
  %t784 = insertvalue { i64, ptr } %t783, ptr %t782, 1
  %t785 = load ptr, ptr %l254, !tbaa !29
  %t787 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t785, { i64, ptr } %t784)
  store { i64, ptr } %t787, ptr %l266
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  %t788 = load { i64, ptr }, ptr %l266, !tbaa !27
  store { i64, ptr } %t788, ptr %rv
  br label %ret
bb106:
  %t789 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t791 = trunc i64 29 to i32
  %t792 = icmp eq i32 %t789, %t791
  br i1 %t792, label %bb107, label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb133
bb109:
  %t794 = load ptr, ptr %l4, !tbaa !29
  %t795 = load i32, ptr %l7, !tbaa !23
  %t798 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t794, i32 %t795)
  store i1 %t798, ptr %l271
  br label %bb110
bb110:
  %t799 = load i1, ptr %l271, !tbaa !21
  br i1 %t799, label %bb111, label %bb112
bb111:
  %t800 = load ptr, ptr %l4, !tbaa !29
  %t801 = load i32, ptr %l7, !tbaa !23
  %t804 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t800, i32 %t801)
  store i32 %t804, ptr %l275
  br label %bb113
bb112:
  %t805 = load i32, ptr %l7, !tbaa !23
  store i32 %t805, ptr %l272, !tbaa !23
  br label %bb114
bb113:
  %t807 = load i32, ptr %l275, !tbaa !23
  store i32 %t807, ptr %l272, !tbaa !23
  br label %bb114
bb114:
  %t808 = load i32, ptr %l272, !tbaa !23
  %t809 = load ptr, ptr %l0, !tbaa !29
  %t813 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t809, i32 %t808)
  store i32 %t813, ptr %l279
  br label %bb115
bb115:
  %t814 = load i32, ptr %l279, !tbaa !23
  store i32 %t814, ptr %l24, !tbaa !23
  %t815 = load ptr, ptr %l0, !tbaa !29
  %t817 = getelementptr %"compiler/emit:fnEm", ptr %t815, i32 0, i32 0
  %t818 = load ptr, ptr %t817, !tbaa !29
  %t820 = getelementptr %"compiler/emit:Emitter", ptr %t818, i32 0, i32 49
  %t821 = load i1, ptr %t820, !tbaa !21
  br i1 %t821, label %bb116, label %bb117
bb116:
  %t823 = load i32, ptr %l24, !tbaa !23
  %t824 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t827 = icmp ne i32 %t823, %t824
  store i1 %t827, ptr %l283, !tbaa !21
  br label %bb118
bb117:
  store i1 false, ptr %l283, !tbaa !21
  br label %bb118
bb118:
  %t829 = load i1, ptr %l283, !tbaa !21
  br i1 %t829, label %bb119, label %bb120
bb119:
  %t830 = load ptr, ptr %l0, !tbaa !29
  %t831 = load i32, ptr %l24, !tbaa !23
  %t834 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t830, i32 %t831)
  store i1 %t834, ptr %l290
  br label %bb121
bb120:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb122
bb121:
  %t835 = load i1, ptr %l290, !tbaa !21
  %t836 = xor i1 %t835, true
  store i1 %t836, ptr %l287, !tbaa !21
  br label %bb122
bb122:
  %t838 = load i1, ptr %l287, !tbaa !21
  br i1 %t838, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s33
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t840 = load ptr, ptr %lp11
  %t841 = load { i64, ptr }, ptr %t840, !tbaa !27
  %t842 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t843 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t845 = extractvalue { i64, ptr } %t841, 1
  %t846 = extractvalue { i64, ptr } %t841, 0
  %t847 = add i64 %t843, %t846
  %t848 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t849 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t850 = add i64 %t847, %t849
  %t851 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t850)
  call void @olang_textcopy(ptr %t851, ptr %t842, i64 %t843)
  %t852 = getelementptr i8, ptr %t851, i64 %t843
  call void @olang_textcopy(ptr %t852, ptr %t845, i64 %t846)
  %t853 = getelementptr i8, ptr %t852, i64 %t846
  call void @olang_textcopy(ptr %t853, ptr %t848, i64 %t849)
  %t854 = insertvalue { i64, ptr } undef, i64 %t850, 0
  %t855 = insertvalue { i64, ptr } %t854, ptr %t851, 1
  %t857 = extractvalue { i64, ptr } %t855, 0
  %t858 = extractvalue { i64, ptr } %t855, 1
  %t859 = mul i64 %t857, 1
  %t860 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t859)
  call void @llvm.memcpy.p0.p0.i64(ptr %t860, ptr %t858, i64 %t859, i1 false)
  %t861 = insertvalue { i64, ptr } undef, i64 %t857, 0
  %t862 = insertvalue { i64, ptr } %t861, ptr %t860, 1
  %t865 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s33, ptr %s33, ptr %t839, { i64, ptr } %t862)
  store { i64, ptr } %t865, ptr %l296
  br label %bb125
bb124:
  br label %bb132
bb125:
  %t866 = load { i64, ptr }, ptr %l296, !tbaa !27
  store { i64, ptr } %t866, ptr %l25, !tbaa !27
  %t867 = load ptr, ptr %l0, !tbaa !29
  %t868 = load ptr, ptr %lp11
  %t869 = load { i64, ptr }, ptr %t868, !tbaa !27
  %t870 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t871 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t873 = extractvalue { i64, ptr } %t869, 1
  %t874 = extractvalue { i64, ptr } %t869, 0
  %t875 = add i64 %t871, %t874
  %t876 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t877 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t878 = add i64 %t875, %t877
  %t879 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t878)
  call void @olang_textcopy(ptr %t879, ptr %t870, i64 %t871)
  %t880 = getelementptr i8, ptr %t879, i64 %t871
  call void @olang_textcopy(ptr %t880, ptr %t873, i64 %t874)
  %t881 = getelementptr i8, ptr %t880, i64 %t874
  call void @olang_textcopy(ptr %t881, ptr %t876, i64 %t877)
  %t882 = insertvalue { i64, ptr } undef, i64 %t878, 0
  %t883 = insertvalue { i64, ptr } %t882, ptr %t879, 1
  %t885 = extractvalue { i64, ptr } %t883, 0
  %t886 = extractvalue { i64, ptr } %t883, 1
  %t887 = mul i64 %t885, 1
  %t888 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t887)
  call void @llvm.memcpy.p0.p0.i64(ptr %t888, ptr %t886, i64 %t887, i1 false)
  %t889 = insertvalue { i64, ptr } undef, i64 %t885, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t888, 1
  %t893 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s33, ptr %s33, ptr %t867, { i64, ptr } %t890)
  store { i64, ptr } %t893, ptr %l301
  br label %bb126
bb126:
  %t894 = load { i64, ptr }, ptr %l301, !tbaa !27
  store { i64, ptr } %t894, ptr %l26, !tbaa !27
  %t895 = load ptr, ptr %l0, !tbaa !29
  store ptr %t895, ptr %l302, !tbaa !29
  %t896 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t896, ptr %l303, !tbaa !27
  %t897 = load ptr, ptr %l0, !tbaa !29
  store ptr %t897, ptr %l304, !tbaa !29
  %t898 = load ptr, ptr %l4, !tbaa !29
  %t899 = load i32, ptr %l24, !tbaa !23
  %t902 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t898, i32 %t899)
  store i32 %t902, ptr %l307
  br label %bb127
bb127:
  %t903 = load ptr, ptr %l304, !tbaa !29
  %t904 = load i32, ptr %l307, !tbaa !23
  %t905 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t903, i32 %t904)
  store i64 %t905, ptr %l308
  br label %bb128
bb128:
  %t906 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t907 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t908 = load { i64, ptr }, ptr %l303, !tbaa !27
  %t909 = extractvalue { i64, ptr } %t908, 1
  %t910 = extractvalue { i64, ptr } %t908, 0
  %t911 = add i64 %t907, %t910
  %t912 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t913 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t914 = add i64 %t911, %t913
  %t915 = load i64, ptr %l308, !tbaa !24
  %t916 = call i64 @__olang_fmt_i64(ptr null, i64 %t915)
  %t917 = add i64 %t914, %t916
  %t918 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t917)
  call void @olang_textcopy(ptr %t918, ptr %t906, i64 %t907)
  %t919 = getelementptr i8, ptr %t918, i64 %t907
  call void @olang_textcopy(ptr %t919, ptr %t909, i64 %t910)
  %t920 = getelementptr i8, ptr %t919, i64 %t910
  call void @olang_textcopy(ptr %t920, ptr %t912, i64 %t913)
  %t921 = getelementptr i8, ptr %t920, i64 %t913
  %t922 = call i64 @__olang_fmt_i64(ptr %t921, i64 %t915)
  %t923 = insertvalue { i64, ptr } undef, i64 %t917, 0
  %t924 = insertvalue { i64, ptr } %t923, ptr %t918, 1
  %t926 = extractvalue { i64, ptr } %t924, 0
  %t927 = extractvalue { i64, ptr } %t924, 1
  %t928 = mul i64 %t926, 1
  %t929 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t928)
  call void @llvm.memcpy.p0.p0.i64(ptr %t929, ptr %t927, i64 %t928, i1 false)
  %t930 = insertvalue { i64, ptr } undef, i64 %t926, 0
  %t931 = insertvalue { i64, ptr } %t930, ptr %t929, 1
  %t932 = load ptr, ptr %l302, !tbaa !29
  %t934 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s33, ptr %s33, ptr %t932, { i64, ptr } %t931)
  store { i64, ptr } %t934, ptr %l311
  br label %bb129
bb129:
  %t935 = load { i64, ptr }, ptr %l311, !tbaa !27
  store { i64, ptr } %t935, ptr %l27, !tbaa !27
  %t936 = load ptr, ptr %l0, !tbaa !29
  %t938 = getelementptr %"compiler/emit:fnEm", ptr %t936, i32 0, i32 0
  %t939 = load ptr, ptr %t938, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s33, ptr %t939, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d161, i32 0, i32 1) })
  br label %bb130
bb130:
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t942 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t943 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t944 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t945 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t947 = extractvalue { i64, ptr } %t942, 1
  %t948 = extractvalue { i64, ptr } %t942, 0
  %t949 = add i64 %t945, %t948
  %t950 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t951 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t952 = add i64 %t949, %t951
  %t954 = extractvalue { i64, ptr } %t943, 1
  %t955 = extractvalue { i64, ptr } %t943, 0
  %t956 = add i64 %t952, %t955
  %t957 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t958 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t959 = add i64 %t956, %t958
  %t960 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t959)
  call void @olang_textcopy(ptr %t960, ptr %t944, i64 %t945)
  %t961 = getelementptr i8, ptr %t960, i64 %t945
  call void @olang_textcopy(ptr %t961, ptr %t947, i64 %t948)
  %t962 = getelementptr i8, ptr %t961, i64 %t948
  call void @olang_textcopy(ptr %t962, ptr %t950, i64 %t951)
  %t963 = getelementptr i8, ptr %t962, i64 %t951
  call void @olang_textcopy(ptr %t963, ptr %t954, i64 %t955)
  %t964 = getelementptr i8, ptr %t963, i64 %t955
  call void @olang_textcopy(ptr %t964, ptr %t957, i64 %t958)
  %t965 = insertvalue { i64, ptr } undef, i64 %t959, 0
  %t966 = insertvalue { i64, ptr } %t965, ptr %t960, 1
  %t968 = extractvalue { i64, ptr } %t966, 0
  %t969 = extractvalue { i64, ptr } %t966, 1
  %t970 = mul i64 %t968, 1
  %t971 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t970)
  call void @llvm.memcpy.p0.p0.i64(ptr %t971, ptr %t969, i64 %t970, i1 false)
  %t972 = insertvalue { i64, ptr } undef, i64 %t968, 0
  %t973 = insertvalue { i64, ptr } %t972, ptr %t971, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s33, ptr %t941, { i64, ptr } %t973)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s33)
  br label %bb132
bb132:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d165, i32 0, i32 1) }, ptr %l319, !tbaa !27
  %t976 = load { i64, ptr }, ptr %l319, !tbaa !27
  store { i64, ptr } %t976, ptr %l320, !tbaa !27
  %t977 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t978 = extractvalue { i64, ptr } %t977, 0
  store i64 %t978, ptr %l321, !tbaa !24
  %t979 = load i64, ptr %l321, !tbaa !24
  %t980 = mul i64 %t979, 1
  %t981 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t980)
  %t982 = insertvalue { i64, ptr } undef, i64 %t979, 0
  %t983 = insertvalue { i64, ptr } %t982, ptr %t981, 1
  store { i64, ptr } %t983, ptr %l322, !tbaa !27
  %t984 = getelementptr { i64, ptr }, ptr %l322, i32 0, i32 1
  %t985 = load ptr, ptr %t984, !tbaa !27
  %t986 = getelementptr { i64, ptr }, ptr %l320, i32 0, i32 1
  %t987 = load ptr, ptr %t986, !tbaa !27
  %t988 = load i64, ptr %l321, !tbaa !24
  %t989 = mul i64 %t988, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t985, ptr %t987, i64 %t989, i1 false)
  %t990 = load { i64, ptr }, ptr %l322, !tbaa !27
  store { i64, ptr } %t990, ptr %l320, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t991 = load { i64, ptr }, ptr %l320, !tbaa !27
  store { i64, ptr } %t991, ptr %rv
  br label %ret
bb133:
  %t992 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t994 = trunc i64 22 to i32
  %t995 = icmp eq i32 %t992, %t994
  br i1 %t995, label %bb134, label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb152
bb136:
  %t997 = load ptr, ptr %l4, !tbaa !29
  %t998 = load i32, ptr %l7, !tbaa !23
  %t1001 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t997, i32 %t998)
  store i1 %t1001, ptr %l327
  br label %bb137
bb137:
  %t1002 = load i1, ptr %l327, !tbaa !21
  br i1 %t1002, label %bb138, label %bb139
bb138:
  %t1003 = load ptr, ptr %l4, !tbaa !29
  %t1004 = load i32, ptr %l7, !tbaa !23
  %t1007 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t1003, i32 %t1004)
  store i32 %t1007, ptr %l331
  br label %bb140
bb139:
  %t1008 = load i32, ptr %l7, !tbaa !23
  store i32 %t1008, ptr %l328, !tbaa !23
  br label %bb141
bb140:
  %t1010 = load i32, ptr %l331, !tbaa !23
  store i32 %t1010, ptr %l328, !tbaa !23
  br label %bb141
bb141:
  %t1011 = load i32, ptr %l328, !tbaa !23
  %t1012 = load ptr, ptr %l0, !tbaa !29
  %t1016 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t1012, i32 %t1011)
  store i32 %t1016, ptr %l335
  br label %bb142
bb142:
  %t1017 = load i32, ptr %l335, !tbaa !23
  store i32 %t1017, ptr %l29, !tbaa !23
  %t1018 = load i32, ptr %l29, !tbaa !23
  %t1019 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1022 = icmp ne i32 %t1018, %t1019
  br i1 %t1022, label %bb143, label %bb144
bb143:
  %t1024 = load ptr, ptr %l0, !tbaa !29
  %t1025 = load i32, ptr %l29, !tbaa !23
  %t1028 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t1024, i32 %t1025)
  store i1 %t1028, ptr %l342
  br label %bb145
bb144:
  store i1 false, ptr %l339, !tbaa !21
  br label %bb146
bb145:
  %t1029 = load i1, ptr %l342, !tbaa !21
  store i1 %t1029, ptr %l339, !tbaa !21
  br label %bb146
bb146:
  %t1030 = load i1, ptr %l339, !tbaa !21
  br i1 %t1030, label %bb147, label %bb148
bb147:
  %t1031 = load ptr, ptr %l0, !tbaa !29
  %t1032 = load i32, ptr %l29, !tbaa !23
  %t1035 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t1031, i32 %t1032)
  store i64 %t1035, ptr %l345
  br label %bb149
bb148:
  br label %bb150
bb149:
  %t1036 = load i64, ptr %l345, !tbaa !24
  %t1037 = call i64 @__olang_fmt_i64(ptr null, i64 %t1036)
  %t1038 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1037)
  %t1039 = call i64 @__olang_fmt_i64(ptr %t1038, i64 %t1036)
  %t1040 = insertvalue { i64, ptr } undef, i64 %t1037, 0
  %t1041 = insertvalue { i64, ptr } %t1040, ptr %t1038, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t1041, ptr %rv
  br label %ret
bb150:
  %t1043 = load ptr, ptr %l0, !tbaa !29
  %t1044 = load ptr, ptr %lp11
  %t1045 = load { i64, ptr }, ptr %t1044, !tbaa !27
  %t1046 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t1047 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t1049 = extractvalue { i64, ptr } %t1045, 1
  %t1050 = extractvalue { i64, ptr } %t1045, 0
  %t1051 = add i64 %t1047, %t1050
  %t1052 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t1053 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t1054 = add i64 %t1051, %t1053
  %t1055 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1054)
  call void @olang_textcopy(ptr %t1055, ptr %t1046, i64 %t1047)
  %t1056 = getelementptr i8, ptr %t1055, i64 %t1047
  call void @olang_textcopy(ptr %t1056, ptr %t1049, i64 %t1050)
  %t1057 = getelementptr i8, ptr %t1056, i64 %t1050
  call void @olang_textcopy(ptr %t1057, ptr %t1052, i64 %t1053)
  %t1058 = insertvalue { i64, ptr } undef, i64 %t1054, 0
  %t1059 = insertvalue { i64, ptr } %t1058, ptr %t1055, 1
  %t1061 = extractvalue { i64, ptr } %t1059, 0
  %t1062 = extractvalue { i64, ptr } %t1059, 1
  %t1063 = mul i64 %t1061, 1
  %t1064 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1063)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1064, ptr %t1062, i64 %t1063, i1 false)
  %t1065 = insertvalue { i64, ptr } undef, i64 %t1061, 0
  %t1066 = insertvalue { i64, ptr } %t1065, ptr %t1064, 1
  %t1069 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1043, { i64, ptr } %t1066)
  store { i64, ptr } %t1069, ptr %l351
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s0)
  %t1070 = load { i64, ptr }, ptr %l351, !tbaa !27
  store { i64, ptr } %t1070, ptr %rv
  br label %ret
bb152:
  %t1071 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1073 = trunc i64 24 to i32
  %t1074 = icmp eq i32 %t1071, %t1073
  br i1 %t1074, label %bb153, label %bb154
bb153:
  br label %bb155
bb154:
  br label %bb160
bb155:
  store %olang.scope zeroinitializer, ptr %s42
  %t1076 = load ptr, ptr %l4, !tbaa !29
  %t1077 = load i32, ptr %l7, !tbaa !23
  %t1080 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t1076, i32 %t1077)
  store i32 %t1080, ptr %l356
  br label %bb156
bb156:
  %t1081 = load i32, ptr %l356, !tbaa !23
  store i32 %t1081, ptr %l30, !tbaa !23
  %t1082 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1082, ptr %l357, !tbaa !29
  %t1083 = load ptr, ptr %l0, !tbaa !29
  %t1084 = load i32, ptr %l30, !tbaa !23
  %t1087 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s42, ptr %t1083, i32 %t1084)
  store { i64, ptr } %t1087, ptr %l360
  br label %bb157
bb157:
  %t1088 = load ptr, ptr %lp11
  %t1089 = load { i64, ptr }, ptr %t1088, !tbaa !27
  store { i64, ptr } %t1089, ptr %l361, !tbaa !27
  %t1090 = load ptr, ptr %l0, !tbaa !29
  %t1091 = load i32, ptr %l30, !tbaa !23
  %t1094 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1090, i32 %t1091)
  store i64 %t1094, ptr %l364
  br label %bb158
bb158:
  %t1095 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t1096 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t1097 = load { i64, ptr }, ptr %l360, !tbaa !27
  %t1098 = extractvalue { i64, ptr } %t1097, 1
  %t1099 = extractvalue { i64, ptr } %t1097, 0
  %t1100 = add i64 %t1096, %t1099
  %t1101 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t1102 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t1103 = add i64 %t1100, %t1102
  %t1104 = load { i64, ptr }, ptr %l361, !tbaa !27
  %t1105 = extractvalue { i64, ptr } %t1104, 1
  %t1106 = extractvalue { i64, ptr } %t1104, 0
  %t1107 = add i64 %t1103, %t1106
  %t1108 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t1109 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t1110 = add i64 %t1107, %t1109
  %t1111 = load i64, ptr %l364, !tbaa !24
  %t1112 = call i64 @__olang_fmt_i64(ptr null, i64 %t1111)
  %t1113 = add i64 %t1110, %t1112
  %t1114 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1113)
  call void @olang_textcopy(ptr %t1114, ptr %t1095, i64 %t1096)
  %t1115 = getelementptr i8, ptr %t1114, i64 %t1096
  call void @olang_textcopy(ptr %t1115, ptr %t1098, i64 %t1099)
  %t1116 = getelementptr i8, ptr %t1115, i64 %t1099
  call void @olang_textcopy(ptr %t1116, ptr %t1101, i64 %t1102)
  %t1117 = getelementptr i8, ptr %t1116, i64 %t1102
  call void @olang_textcopy(ptr %t1117, ptr %t1105, i64 %t1106)
  %t1118 = getelementptr i8, ptr %t1117, i64 %t1106
  call void @olang_textcopy(ptr %t1118, ptr %t1108, i64 %t1109)
  %t1119 = getelementptr i8, ptr %t1118, i64 %t1109
  %t1120 = call i64 @__olang_fmt_i64(ptr %t1119, i64 %t1111)
  %t1121 = insertvalue { i64, ptr } undef, i64 %t1113, 0
  %t1122 = insertvalue { i64, ptr } %t1121, ptr %t1114, 1
  %t1124 = extractvalue { i64, ptr } %t1122, 0
  %t1125 = extractvalue { i64, ptr } %t1122, 1
  %t1126 = mul i64 %t1124, 1
  %t1127 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1127, ptr %t1125, i64 %t1126, i1 false)
  %t1128 = insertvalue { i64, ptr } undef, i64 %t1124, 0
  %t1129 = insertvalue { i64, ptr } %t1128, ptr %t1127, 1
  %t1130 = load ptr, ptr %l357, !tbaa !29
  %t1132 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1130, { i64, ptr } %t1129)
  store { i64, ptr } %t1132, ptr %l367
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s0)
  %t1133 = load { i64, ptr }, ptr %l367, !tbaa !27
  store { i64, ptr } %t1133, ptr %rv
  br label %ret
bb160:
  %t1134 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1136 = trunc i64 31 to i32
  %t1137 = icmp eq i32 %t1134, %t1136
  br i1 %t1137, label %bb161, label %bb162
bb161:
  br label %bb167
bb162:
  %t1139 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1141 = trunc i64 32 to i32
  %t1142 = icmp eq i32 %t1139, %t1141
  br i1 %t1142, label %bb163, label %bb164
bb163:
  br label %bb167
bb164:
  %t1144 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1146 = trunc i64 33 to i32
  %t1147 = icmp eq i32 %t1144, %t1146
  br i1 %t1147, label %bb165, label %bb166
bb165:
  br label %bb167
bb166:
  br label %bb185
bb167:
  store %olang.scope zeroinitializer, ptr %s44
  %t1149 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1151 = trunc i64 33 to i32
  %t1152 = icmp eq i32 %t1149, %t1151
  br i1 %t1152, label %bb168, label %bb169
bb168:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d171, i32 0, i32 1) }, ptr %l376, !tbaa !27
  br label %bb173
bb169:
  %t1154 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1156 = trunc i64 31 to i32
  %t1157 = icmp eq i32 %t1154, %t1156
  br i1 %t1157, label %bb170, label %bb171
bb170:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d172, i32 0, i32 1) }, ptr %l379, !tbaa !27
  br label %bb172
bb171:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d173, i32 0, i32 1) }, ptr %l379, !tbaa !27
  br label %bb172
bb172:
  %t1159 = load { i64, ptr }, ptr %l379, !tbaa !27
  store { i64, ptr } %t1159, ptr %l376, !tbaa !27
  br label %bb173
bb173:
  %t1160 = load { i64, ptr }, ptr %l376, !tbaa !27
  store { i64, ptr } %t1160, ptr %l31, !tbaa !27
  %t1161 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1162 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1163 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t1164 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t1166 = extractvalue { i64, ptr } %t1161, 1
  %t1167 = extractvalue { i64, ptr } %t1161, 0
  %t1168 = add i64 %t1164, %t1167
  %t1169 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t1170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t1171 = add i64 %t1168, %t1170
  %t1173 = extractvalue { i64, ptr } %t1162, 1
  %t1174 = extractvalue { i64, ptr } %t1162, 0
  %t1175 = add i64 %t1171, %t1174
  %t1176 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1175)
  call void @olang_textcopy(ptr %t1176, ptr %t1163, i64 %t1164)
  %t1177 = getelementptr i8, ptr %t1176, i64 %t1164
  call void @olang_textcopy(ptr %t1177, ptr %t1166, i64 %t1167)
  %t1178 = getelementptr i8, ptr %t1177, i64 %t1167
  call void @olang_textcopy(ptr %t1178, ptr %t1169, i64 %t1170)
  %t1179 = getelementptr i8, ptr %t1178, i64 %t1170
  call void @olang_textcopy(ptr %t1179, ptr %t1173, i64 %t1174)
  %t1180 = insertvalue { i64, ptr } undef, i64 %t1175, 0
  %t1181 = insertvalue { i64, ptr } %t1180, ptr %t1176, 1
  store { i64, ptr } %t1181, ptr %l32, !tbaa !27
  %t1183 = load ptr, ptr %l0, !tbaa !29
  %t1185 = getelementptr %"compiler/emit:fnEm", ptr %t1183, i32 0, i32 0
  %t1186 = load ptr, ptr %t1185, !tbaa !29
  store ptr %t1186, ptr %l384, !tbaa !29
  %t1187 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1187, ptr %l385, !tbaa !27
  %t1188 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1188, ptr %l386, !tbaa !27
  %t1189 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1189, ptr %l387, !tbaa !27
  %t1190 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1190, ptr %l388, !tbaa !27
  %t1191 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1192 = load ptr, ptr @__olang_prog_scope
  %t1194 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t1192, ptr %s44, { i64, ptr } %t1191, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d176, i32 0, i32 1) })
  store i1 %t1194, ptr %l390
  br label %bb174
bb174:
  %t1195 = load i1, ptr %l390, !tbaa !21
  %t1196 = xor i1 %t1195, true
  br i1 %t1196, label %bb175, label %bb176
bb175:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l392, !tbaa !27
  br label %bb177
bb176:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d178, i32 0, i32 1) }, ptr %l392, !tbaa !27
  br label %bb177
bb177:
  %t1198 = load { i64, ptr }, ptr %l386, !tbaa !27
  %t1199 = extractvalue { i64, ptr } %t1198, 1
  %t1200 = extractvalue { i64, ptr } %t1198, 0
  %t1201 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t1202 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t1203 = add i64 %t1200, %t1202
  %t1204 = load { i64, ptr }, ptr %l387, !tbaa !27
  %t1205 = extractvalue { i64, ptr } %t1204, 1
  %t1206 = extractvalue { i64, ptr } %t1204, 0
  %t1207 = add i64 %t1203, %t1206
  %t1208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t1209 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t1210 = add i64 %t1207, %t1209
  %t1211 = load { i64, ptr }, ptr %l388, !tbaa !27
  %t1212 = extractvalue { i64, ptr } %t1211, 1
  %t1213 = extractvalue { i64, ptr } %t1211, 0
  %t1214 = add i64 %t1210, %t1213
  %t1215 = load { i64, ptr }, ptr %l392, !tbaa !27
  %t1216 = extractvalue { i64, ptr } %t1215, 1
  %t1217 = extractvalue { i64, ptr } %t1215, 0
  %t1218 = add i64 %t1214, %t1217
  %t1219 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1218)
  call void @olang_textcopy(ptr %t1219, ptr %t1199, i64 %t1200)
  %t1220 = getelementptr i8, ptr %t1219, i64 %t1200
  call void @olang_textcopy(ptr %t1220, ptr %t1201, i64 %t1202)
  %t1221 = getelementptr i8, ptr %t1220, i64 %t1202
  call void @olang_textcopy(ptr %t1221, ptr %t1205, i64 %t1206)
  %t1222 = getelementptr i8, ptr %t1221, i64 %t1206
  call void @olang_textcopy(ptr %t1222, ptr %t1208, i64 %t1209)
  %t1223 = getelementptr i8, ptr %t1222, i64 %t1209
  call void @olang_textcopy(ptr %t1223, ptr %t1212, i64 %t1213)
  %t1224 = getelementptr i8, ptr %t1223, i64 %t1213
  call void @olang_textcopy(ptr %t1224, ptr %t1216, i64 %t1217)
  %t1225 = insertvalue { i64, ptr } undef, i64 %t1218, 0
  %t1226 = insertvalue { i64, ptr } %t1225, ptr %t1219, 1
  %t1228 = extractvalue { i64, ptr } %t1226, 0
  %t1229 = extractvalue { i64, ptr } %t1226, 1
  %t1230 = mul i64 %t1228, 1
  %t1231 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1230)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1231, ptr %t1229, i64 %t1230, i1 false)
  %t1232 = insertvalue { i64, ptr } undef, i64 %t1228, 0
  %t1233 = insertvalue { i64, ptr } %t1232, ptr %t1231, 1
  %t1234 = load ptr, ptr %l384, !tbaa !29
  %t1235 = load { i64, ptr }, ptr %l385, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s44, ptr %s44, ptr %t1234, { i64, ptr } %t1235, { i64, ptr } %t1233)
  br label %bb178
bb178:
  %t1237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1237, ptr %l395, !tbaa !29
  %t1238 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1238, ptr %l396, !tbaa !27
  %t1239 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1239, ptr %l397, !tbaa !27
  %t1240 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1240, ptr %l398, !tbaa !27
  %t1241 = load ptr, ptr %lp11
  %t1242 = load { i64, ptr }, ptr %t1241, !tbaa !27
  store { i64, ptr } %t1242, ptr %l399, !tbaa !27
  %t1243 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1244 = load ptr, ptr @__olang_prog_scope
  %t1246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t1244, ptr %s44, { i64, ptr } %t1243, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store i1 %t1246, ptr %l401
  br label %bb179
bb179:
  %t1247 = load i1, ptr %l401, !tbaa !21
  %t1248 = xor i1 %t1247, true
  br i1 %t1248, label %bb180, label %bb181
bb180:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d182, i32 0, i32 1) }, ptr %l403, !tbaa !27
  br label %bb182
bb181:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) }, ptr %l403, !tbaa !27
  br label %bb182
bb182:
  %t1250 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t1251 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t1252 = load { i64, ptr }, ptr %l396, !tbaa !27
  %t1253 = extractvalue { i64, ptr } %t1252, 1
  %t1254 = extractvalue { i64, ptr } %t1252, 0
  %t1255 = add i64 %t1251, %t1254
  %t1256 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t1257 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t1258 = add i64 %t1255, %t1257
  %t1259 = load { i64, ptr }, ptr %l397, !tbaa !27
  %t1260 = extractvalue { i64, ptr } %t1259, 1
  %t1261 = extractvalue { i64, ptr } %t1259, 0
  %t1262 = add i64 %t1258, %t1261
  %t1263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t1264 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t1265 = add i64 %t1262, %t1264
  %t1266 = load { i64, ptr }, ptr %l398, !tbaa !27
  %t1267 = extractvalue { i64, ptr } %t1266, 1
  %t1268 = extractvalue { i64, ptr } %t1266, 0
  %t1269 = add i64 %t1265, %t1268
  %t1270 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t1271 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t1272 = add i64 %t1269, %t1271
  %t1273 = load { i64, ptr }, ptr %l399, !tbaa !27
  %t1274 = extractvalue { i64, ptr } %t1273, 1
  %t1275 = extractvalue { i64, ptr } %t1273, 0
  %t1276 = add i64 %t1272, %t1275
  %t1277 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t1278 = extractvalue { i64, ptr } %t1277, 1
  %t1279 = extractvalue { i64, ptr } %t1277, 0
  %t1280 = add i64 %t1276, %t1279
  %t1281 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1280)
  call void @olang_textcopy(ptr %t1281, ptr %t1250, i64 %t1251)
  %t1282 = getelementptr i8, ptr %t1281, i64 %t1251
  call void @olang_textcopy(ptr %t1282, ptr %t1253, i64 %t1254)
  %t1283 = getelementptr i8, ptr %t1282, i64 %t1254
  call void @olang_textcopy(ptr %t1283, ptr %t1256, i64 %t1257)
  %t1284 = getelementptr i8, ptr %t1283, i64 %t1257
  call void @olang_textcopy(ptr %t1284, ptr %t1260, i64 %t1261)
  %t1285 = getelementptr i8, ptr %t1284, i64 %t1261
  call void @olang_textcopy(ptr %t1285, ptr %t1263, i64 %t1264)
  %t1286 = getelementptr i8, ptr %t1285, i64 %t1264
  call void @olang_textcopy(ptr %t1286, ptr %t1267, i64 %t1268)
  %t1287 = getelementptr i8, ptr %t1286, i64 %t1268
  call void @olang_textcopy(ptr %t1287, ptr %t1270, i64 %t1271)
  %t1288 = getelementptr i8, ptr %t1287, i64 %t1271
  call void @olang_textcopy(ptr %t1288, ptr %t1274, i64 %t1275)
  %t1289 = getelementptr i8, ptr %t1288, i64 %t1275
  call void @olang_textcopy(ptr %t1289, ptr %t1278, i64 %t1279)
  %t1290 = insertvalue { i64, ptr } undef, i64 %t1280, 0
  %t1291 = insertvalue { i64, ptr } %t1290, ptr %t1281, 1
  %t1293 = extractvalue { i64, ptr } %t1291, 0
  %t1294 = extractvalue { i64, ptr } %t1291, 1
  %t1295 = mul i64 %t1293, 1
  %t1296 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1295)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1296, ptr %t1294, i64 %t1295, i1 false)
  %t1297 = insertvalue { i64, ptr } undef, i64 %t1293, 0
  %t1298 = insertvalue { i64, ptr } %t1297, ptr %t1296, 1
  %t1299 = load ptr, ptr %l395, !tbaa !29
  %t1301 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s44, ptr %s44, ptr %t1299, { i64, ptr } %t1298)
  store { i64, ptr } %t1301, ptr %l406
  br label %bb183
bb183:
  %t1302 = load { i64, ptr }, ptr %l406, !tbaa !27
  %t1303 = load ptr, ptr %l0, !tbaa !29
  %t1305 = load i32, ptr %l7, !tbaa !23
  %t1306 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1311 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidth(ptr %v0, ptr %s44, ptr %v1, ptr %t1303, { i64, ptr } %t1302, i32 %t1305, i32 %t1306)
  store { i64, ptr } %t1311, ptr %l411
  br label %bb184
bb184:
  call void @__olang_scope_close(ptr %s44)
  call void @__olang_scope_close(ptr %s0)
  %t1312 = load { i64, ptr }, ptr %l411, !tbaa !27
  store { i64, ptr } %t1312, ptr %rv
  br label %ret
bb185:
  %t1313 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1315 = trunc i64 36 to i32
  %t1316 = icmp eq i32 %t1313, %t1315
  br i1 %t1316, label %bb186, label %bb187
bb186:
  br label %bb188
bb187:
  br label %bb205
bb188:
  store %olang.scope zeroinitializer, ptr %s48
  %t1318 = load ptr, ptr %l4, !tbaa !29
  %t1319 = load i32, ptr %l7, !tbaa !23
  %t1322 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t1318, i32 %t1319)
  store i64 %t1322, ptr %l416
  br label %bb189
bb189:
  %t1323 = load i64, ptr %l416, !tbaa !24
  %t1324 = icmp eq i64 %t1323, 8
  br i1 %t1324, label %bb190, label %bb191
bb190:
  %t1326 = load ptr, ptr %lp11
  %t1327 = load { i64, ptr }, ptr %t1326, !tbaa !27
  call void @__olang_scope_close(ptr %s48)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t1327, ptr %rv
  br label %ret
bb191:
  br label %bb192
bb192:
  %t1329 = load ptr, ptr %l4, !tbaa !29
  %t1330 = load i32, ptr %l7, !tbaa !23
  %t1333 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t1329, i32 %t1330)
  store i64 %t1333, ptr %l421
  br label %bb193
bb193:
  %t1334 = load i64, ptr %l421, !tbaa !24
  %t1335 = srem i64 %t1334, 16
  %t1337 = icmp ne i64 %t1335, 0
  br i1 %t1337, label %bb194, label %bb195
bb194:
  store %olang.scope zeroinitializer, ptr %s50
  %t1339 = load ptr, ptr %l4, !tbaa !29
  %t1340 = load i32, ptr %l7, !tbaa !23
  %t1343 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t1339, i32 %t1340)
  store i64 %t1343, ptr %l426
  br label %bb196
bb195:
  br label %bb202
bb196:
  %t1344 = load i64, ptr %l426, !tbaa !24
  %t1345 = add i64 %t1344, 8
  %t1346 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t1347 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t1349 = call i64 @__olang_fmt_i64(ptr null, i64 %t1345)
  %t1350 = add i64 %t1347, %t1349
  %t1351 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1350)
  call void @olang_textcopy(ptr %t1351, ptr %t1346, i64 %t1347)
  %t1352 = getelementptr i8, ptr %t1351, i64 %t1347
  %t1353 = call i64 @__olang_fmt_i64(ptr %t1352, i64 %t1345)
  %t1354 = insertvalue { i64, ptr } undef, i64 %t1350, 0
  %t1355 = insertvalue { i64, ptr } %t1354, ptr %t1351, 1
  store { i64, ptr } %t1355, ptr %l34, !tbaa !27
  %t1357 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1358 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t1359 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t1361 = extractvalue { i64, ptr } %t1357, 1
  %t1362 = extractvalue { i64, ptr } %t1357, 0
  %t1363 = add i64 %t1359, %t1362
  %t1364 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1363)
  call void @olang_textcopy(ptr %t1364, ptr %t1358, i64 %t1359)
  %t1365 = getelementptr i8, ptr %t1364, i64 %t1359
  call void @olang_textcopy(ptr %t1365, ptr %t1361, i64 %t1362)
  %t1366 = insertvalue { i64, ptr } undef, i64 %t1363, 0
  %t1367 = insertvalue { i64, ptr } %t1366, ptr %t1364, 1
  store { i64, ptr } %t1367, ptr %l35, !tbaa !27
  %t1369 = load ptr, ptr %l0, !tbaa !29
  %t1371 = getelementptr %"compiler/emit:fnEm", ptr %t1369, i32 0, i32 0
  %t1372 = load ptr, ptr %t1371, !tbaa !29
  %t1373 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1374 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1375 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1376 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1378 = extractvalue { i64, ptr } %t1374, 1
  %t1379 = extractvalue { i64, ptr } %t1374, 0
  %t1380 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t1381 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t1382 = add i64 %t1379, %t1381
  %t1384 = extractvalue { i64, ptr } %t1375, 1
  %t1385 = extractvalue { i64, ptr } %t1375, 0
  %t1386 = add i64 %t1382, %t1385
  %t1387 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t1388 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t1389 = add i64 %t1386, %t1388
  %t1391 = extractvalue { i64, ptr } %t1376, 1
  %t1392 = extractvalue { i64, ptr } %t1376, 0
  %t1393 = add i64 %t1389, %t1392
  %t1394 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t1395 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t1396 = add i64 %t1393, %t1395
  %t1397 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1396)
  call void @olang_textcopy(ptr %t1397, ptr %t1378, i64 %t1379)
  %t1398 = getelementptr i8, ptr %t1397, i64 %t1379
  call void @olang_textcopy(ptr %t1398, ptr %t1380, i64 %t1381)
  %t1399 = getelementptr i8, ptr %t1398, i64 %t1381
  call void @olang_textcopy(ptr %t1399, ptr %t1384, i64 %t1385)
  %t1400 = getelementptr i8, ptr %t1399, i64 %t1385
  call void @olang_textcopy(ptr %t1400, ptr %t1387, i64 %t1388)
  %t1401 = getelementptr i8, ptr %t1400, i64 %t1388
  call void @olang_textcopy(ptr %t1401, ptr %t1391, i64 %t1392)
  %t1402 = getelementptr i8, ptr %t1401, i64 %t1392
  call void @olang_textcopy(ptr %t1402, ptr %t1394, i64 %t1395)
  %t1403 = insertvalue { i64, ptr } undef, i64 %t1396, 0
  %t1404 = insertvalue { i64, ptr } %t1403, ptr %t1397, 1
  %t1406 = extractvalue { i64, ptr } %t1404, 0
  %t1407 = extractvalue { i64, ptr } %t1404, 1
  %t1408 = mul i64 %t1406, 1
  %t1409 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1408)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1409, ptr %t1407, i64 %t1408, i1 false)
  %t1410 = insertvalue { i64, ptr } undef, i64 %t1406, 0
  %t1411 = insertvalue { i64, ptr } %t1410, ptr %t1409, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s50, ptr %s50, ptr %t1372, { i64, ptr } %t1373, { i64, ptr } %t1411)
  br label %bb197
bb197:
  %t1415 = load ptr, ptr %l0, !tbaa !29
  %t1416 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1417 = load ptr, ptr %lp11
  %t1418 = load { i64, ptr }, ptr %t1417, !tbaa !27
  %t1419 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1420 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t1421 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t1423 = extractvalue { i64, ptr } %t1416, 1
  %t1424 = extractvalue { i64, ptr } %t1416, 0
  %t1425 = add i64 %t1421, %t1424
  %t1426 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t1427 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t1428 = add i64 %t1425, %t1427
  %t1430 = extractvalue { i64, ptr } %t1418, 1
  %t1431 = extractvalue { i64, ptr } %t1418, 0
  %t1432 = add i64 %t1428, %t1431
  %t1433 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t1434 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t1435 = add i64 %t1432, %t1434
  %t1437 = extractvalue { i64, ptr } %t1419, 1
  %t1438 = extractvalue { i64, ptr } %t1419, 0
  %t1439 = add i64 %t1435, %t1438
  %t1440 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1439)
  call void @olang_textcopy(ptr %t1440, ptr %t1420, i64 %t1421)
  %t1441 = getelementptr i8, ptr %t1440, i64 %t1421
  call void @olang_textcopy(ptr %t1441, ptr %t1423, i64 %t1424)
  %t1442 = getelementptr i8, ptr %t1441, i64 %t1424
  call void @olang_textcopy(ptr %t1442, ptr %t1426, i64 %t1427)
  %t1443 = getelementptr i8, ptr %t1442, i64 %t1427
  call void @olang_textcopy(ptr %t1443, ptr %t1430, i64 %t1431)
  %t1444 = getelementptr i8, ptr %t1443, i64 %t1431
  call void @olang_textcopy(ptr %t1444, ptr %t1433, i64 %t1434)
  %t1445 = getelementptr i8, ptr %t1444, i64 %t1434
  call void @olang_textcopy(ptr %t1445, ptr %t1437, i64 %t1438)
  %t1446 = insertvalue { i64, ptr } undef, i64 %t1439, 0
  %t1447 = insertvalue { i64, ptr } %t1446, ptr %t1440, 1
  %t1449 = extractvalue { i64, ptr } %t1447, 0
  %t1450 = extractvalue { i64, ptr } %t1447, 1
  %t1451 = mul i64 %t1449, 1
  %t1452 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1452, ptr %t1450, i64 %t1451, i1 false)
  %t1453 = insertvalue { i64, ptr } undef, i64 %t1449, 0
  %t1454 = insertvalue { i64, ptr } %t1453, ptr %t1452, 1
  %t1457 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s50, ptr %s50, ptr %t1415, { i64, ptr } %t1454)
  store { i64, ptr } %t1457, ptr %l445
  br label %bb198
bb198:
  %t1458 = load { i64, ptr }, ptr %l445, !tbaa !27
  %t1459 = load ptr, ptr %l0, !tbaa !29
  %t1460 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1461 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1462 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1464 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t1465 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  %t1467 = extractvalue { i64, ptr } %t1460, 1
  %t1468 = extractvalue { i64, ptr } %t1460, 0
  %t1469 = add i64 %t1465, %t1468
  %t1470 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t1471 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t1472 = add i64 %t1469, %t1471
  %t1474 = extractvalue { i64, ptr } %t1461, 1
  %t1475 = extractvalue { i64, ptr } %t1461, 0
  %t1476 = add i64 %t1472, %t1475
  %t1477 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t1478 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t1479 = add i64 %t1476, %t1478
  %t1481 = extractvalue { i64, ptr } %t1462, 1
  %t1482 = extractvalue { i64, ptr } %t1462, 0
  %t1483 = add i64 %t1479, %t1482
  %t1484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t1485 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t1486 = add i64 %t1483, %t1485
  %t1488 = extractvalue { i64, ptr } %t1458, 1
  %t1489 = extractvalue { i64, ptr } %t1458, 0
  %t1490 = add i64 %t1486, %t1489
  %t1491 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t1492 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t1493 = add i64 %t1490, %t1492
  %t1494 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1493)
  call void @olang_textcopy(ptr %t1494, ptr %t1464, i64 %t1465)
  %t1495 = getelementptr i8, ptr %t1494, i64 %t1465
  call void @olang_textcopy(ptr %t1495, ptr %t1467, i64 %t1468)
  %t1496 = getelementptr i8, ptr %t1495, i64 %t1468
  call void @olang_textcopy(ptr %t1496, ptr %t1470, i64 %t1471)
  %t1497 = getelementptr i8, ptr %t1496, i64 %t1471
  call void @olang_textcopy(ptr %t1497, ptr %t1474, i64 %t1475)
  %t1498 = getelementptr i8, ptr %t1497, i64 %t1475
  call void @olang_textcopy(ptr %t1498, ptr %t1477, i64 %t1478)
  %t1499 = getelementptr i8, ptr %t1498, i64 %t1478
  call void @olang_textcopy(ptr %t1499, ptr %t1481, i64 %t1482)
  %t1500 = getelementptr i8, ptr %t1499, i64 %t1482
  call void @olang_textcopy(ptr %t1500, ptr %t1484, i64 %t1485)
  %t1501 = getelementptr i8, ptr %t1500, i64 %t1485
  call void @olang_textcopy(ptr %t1501, ptr %t1488, i64 %t1489)
  %t1502 = getelementptr i8, ptr %t1501, i64 %t1489
  call void @olang_textcopy(ptr %t1502, ptr %t1491, i64 %t1492)
  %t1503 = insertvalue { i64, ptr } undef, i64 %t1493, 0
  %t1504 = insertvalue { i64, ptr } %t1503, ptr %t1494, 1
  %t1506 = extractvalue { i64, ptr } %t1504, 0
  %t1507 = extractvalue { i64, ptr } %t1504, 1
  %t1508 = mul i64 %t1506, 1
  %t1509 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1508)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1509, ptr %t1507, i64 %t1508, i1 false)
  %t1510 = insertvalue { i64, ptr } undef, i64 %t1506, 0
  %t1511 = insertvalue { i64, ptr } %t1510, ptr %t1509, 1
  %t1514 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s50, ptr %s50, ptr %t1459, { i64, ptr } %t1511)
  store { i64, ptr } %t1514, ptr %l453
  br label %bb199
bb199:
  %t1515 = load { i64, ptr }, ptr %l453, !tbaa !27
  %t1516 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1516, ptr %l454, !tbaa !29
  %t1517 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t1517, ptr %l455, !tbaa !27
  %t1518 = load ptr, ptr %l0, !tbaa !29
  %t1519 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t1521 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t1522 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t1524 = extractvalue { i64, ptr } %t1519, 1
  %t1525 = extractvalue { i64, ptr } %t1519, 0
  %t1526 = add i64 %t1522, %t1525
  %t1527 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t1528 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t1529 = add i64 %t1526, %t1528
  %t1531 = extractvalue { i64, ptr } %t1515, 1
  %t1532 = extractvalue { i64, ptr } %t1515, 0
  %t1533 = add i64 %t1529, %t1532
  %t1534 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t1535 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t1536 = add i64 %t1533, %t1535
  %t1537 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1536)
  call void @olang_textcopy(ptr %t1537, ptr %t1521, i64 %t1522)
  %t1538 = getelementptr i8, ptr %t1537, i64 %t1522
  call void @olang_textcopy(ptr %t1538, ptr %t1524, i64 %t1525)
  %t1539 = getelementptr i8, ptr %t1538, i64 %t1525
  call void @olang_textcopy(ptr %t1539, ptr %t1527, i64 %t1528)
  %t1540 = getelementptr i8, ptr %t1539, i64 %t1528
  call void @olang_textcopy(ptr %t1540, ptr %t1531, i64 %t1532)
  %t1541 = getelementptr i8, ptr %t1540, i64 %t1532
  call void @olang_textcopy(ptr %t1541, ptr %t1534, i64 %t1535)
  %t1542 = insertvalue { i64, ptr } undef, i64 %t1536, 0
  %t1543 = insertvalue { i64, ptr } %t1542, ptr %t1537, 1
  %t1545 = extractvalue { i64, ptr } %t1543, 0
  %t1546 = extractvalue { i64, ptr } %t1543, 1
  %t1547 = mul i64 %t1545, 1
  %t1548 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1547)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1548, ptr %t1546, i64 %t1547, i1 false)
  %t1549 = insertvalue { i64, ptr } undef, i64 %t1545, 0
  %t1550 = insertvalue { i64, ptr } %t1549, ptr %t1548, 1
  %t1553 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s50, ptr %s50, ptr %t1518, { i64, ptr } %t1550)
  store { i64, ptr } %t1553, ptr %l461
  br label %bb200
bb200:
  %t1554 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1555 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t1556 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t1557 = load { i64, ptr }, ptr %l455, !tbaa !27
  %t1558 = extractvalue { i64, ptr } %t1557, 1
  %t1559 = extractvalue { i64, ptr } %t1557, 0
  %t1560 = add i64 %t1556, %t1559
  %t1561 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t1562 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t1563 = add i64 %t1560, %t1562
  %t1564 = load { i64, ptr }, ptr %l461, !tbaa !27
  %t1565 = extractvalue { i64, ptr } %t1564, 1
  %t1566 = extractvalue { i64, ptr } %t1564, 0
  %t1567 = add i64 %t1563, %t1566
  %t1568 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t1569 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t1570 = add i64 %t1567, %t1569
  %t1572 = extractvalue { i64, ptr } %t1554, 1
  %t1573 = extractvalue { i64, ptr } %t1554, 0
  %t1574 = add i64 %t1570, %t1573
  %t1575 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1574)
  call void @olang_textcopy(ptr %t1575, ptr %t1555, i64 %t1556)
  %t1576 = getelementptr i8, ptr %t1575, i64 %t1556
  call void @olang_textcopy(ptr %t1576, ptr %t1558, i64 %t1559)
  %t1577 = getelementptr i8, ptr %t1576, i64 %t1559
  call void @olang_textcopy(ptr %t1577, ptr %t1561, i64 %t1562)
  %t1578 = getelementptr i8, ptr %t1577, i64 %t1562
  call void @olang_textcopy(ptr %t1578, ptr %t1565, i64 %t1566)
  %t1579 = getelementptr i8, ptr %t1578, i64 %t1566
  call void @olang_textcopy(ptr %t1579, ptr %t1568, i64 %t1569)
  %t1580 = getelementptr i8, ptr %t1579, i64 %t1569
  call void @olang_textcopy(ptr %t1580, ptr %t1572, i64 %t1573)
  %t1581 = insertvalue { i64, ptr } undef, i64 %t1574, 0
  %t1582 = insertvalue { i64, ptr } %t1581, ptr %t1575, 1
  %t1584 = extractvalue { i64, ptr } %t1582, 0
  %t1585 = extractvalue { i64, ptr } %t1582, 1
  %t1586 = mul i64 %t1584, 1
  %t1587 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1586)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1587, ptr %t1585, i64 %t1586, i1 false)
  %t1588 = insertvalue { i64, ptr } undef, i64 %t1584, 0
  %t1589 = insertvalue { i64, ptr } %t1588, ptr %t1587, 1
  %t1590 = load ptr, ptr %l454, !tbaa !29
  %t1592 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1590, { i64, ptr } %t1589)
  store { i64, ptr } %t1592, ptr %l465
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s50)
  call void @__olang_scope_close(ptr %s48)
  call void @__olang_scope_close(ptr %s0)
  %t1593 = load { i64, ptr }, ptr %l465, !tbaa !27
  store { i64, ptr } %t1593, ptr %rv
  br label %ret
bb202:
  %t1594 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1595 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t1596 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t1598 = extractvalue { i64, ptr } %t1594, 1
  %t1599 = extractvalue { i64, ptr } %t1594, 0
  %t1600 = add i64 %t1596, %t1599
  %t1601 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1600)
  call void @olang_textcopy(ptr %t1601, ptr %t1595, i64 %t1596)
  %t1602 = getelementptr i8, ptr %t1601, i64 %t1596
  call void @olang_textcopy(ptr %t1602, ptr %t1598, i64 %t1599)
  %t1603 = insertvalue { i64, ptr } undef, i64 %t1600, 0
  %t1604 = insertvalue { i64, ptr } %t1603, ptr %t1601, 1
  store { i64, ptr } %t1604, ptr %l38, !tbaa !27
  %t1606 = load ptr, ptr %l0, !tbaa !29
  %t1608 = getelementptr %"compiler/emit:fnEm", ptr %t1606, i32 0, i32 0
  %t1609 = load ptr, ptr %t1608, !tbaa !29
  %t1610 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t1611 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1612 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t1613 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1615 = extractvalue { i64, ptr } %t1611, 1
  %t1616 = extractvalue { i64, ptr } %t1611, 0
  %t1617 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t1618 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t1619 = add i64 %t1616, %t1618
  %t1621 = extractvalue { i64, ptr } %t1612, 1
  %t1622 = extractvalue { i64, ptr } %t1612, 0
  %t1623 = add i64 %t1619, %t1622
  %t1624 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t1625 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t1626 = add i64 %t1623, %t1625
  %t1628 = extractvalue { i64, ptr } %t1613, 1
  %t1629 = extractvalue { i64, ptr } %t1613, 0
  %t1630 = add i64 %t1626, %t1629
  %t1631 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t1632 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  %t1633 = add i64 %t1630, %t1632
  %t1634 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1633)
  call void @olang_textcopy(ptr %t1634, ptr %t1615, i64 %t1616)
  %t1635 = getelementptr i8, ptr %t1634, i64 %t1616
  call void @olang_textcopy(ptr %t1635, ptr %t1617, i64 %t1618)
  %t1636 = getelementptr i8, ptr %t1635, i64 %t1618
  call void @olang_textcopy(ptr %t1636, ptr %t1621, i64 %t1622)
  %t1637 = getelementptr i8, ptr %t1636, i64 %t1622
  call void @olang_textcopy(ptr %t1637, ptr %t1624, i64 %t1625)
  %t1638 = getelementptr i8, ptr %t1637, i64 %t1625
  call void @olang_textcopy(ptr %t1638, ptr %t1628, i64 %t1629)
  %t1639 = getelementptr i8, ptr %t1638, i64 %t1629
  call void @olang_textcopy(ptr %t1639, ptr %t1631, i64 %t1632)
  %t1640 = insertvalue { i64, ptr } undef, i64 %t1633, 0
  %t1641 = insertvalue { i64, ptr } %t1640, ptr %t1634, 1
  %t1643 = extractvalue { i64, ptr } %t1641, 0
  %t1644 = extractvalue { i64, ptr } %t1641, 1
  %t1645 = mul i64 %t1643, 1
  %t1646 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1645)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1646, ptr %t1644, i64 %t1645, i1 false)
  %t1647 = insertvalue { i64, ptr } undef, i64 %t1643, 0
  %t1648 = insertvalue { i64, ptr } %t1647, ptr %t1646, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s48, ptr %s48, ptr %t1609, { i64, ptr } %t1610, { i64, ptr } %t1648)
  br label %bb203
bb203:
  %t1652 = load ptr, ptr %l0, !tbaa !29
  %t1653 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1654 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t1655 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1656 = load ptr, ptr %lp11
  %t1657 = load { i64, ptr }, ptr %t1656, !tbaa !27
  %t1658 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t1659 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t1661 = extractvalue { i64, ptr } %t1653, 1
  %t1662 = extractvalue { i64, ptr } %t1653, 0
  %t1663 = add i64 %t1659, %t1662
  %t1664 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t1665 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t1666 = add i64 %t1663, %t1665
  %t1668 = extractvalue { i64, ptr } %t1654, 1
  %t1669 = extractvalue { i64, ptr } %t1654, 0
  %t1670 = add i64 %t1666, %t1669
  %t1671 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t1672 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t1673 = add i64 %t1670, %t1672
  %t1675 = extractvalue { i64, ptr } %t1655, 1
  %t1676 = extractvalue { i64, ptr } %t1655, 0
  %t1677 = add i64 %t1673, %t1676
  %t1678 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t1679 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t1680 = add i64 %t1677, %t1679
  %t1682 = extractvalue { i64, ptr } %t1657, 1
  %t1683 = extractvalue { i64, ptr } %t1657, 0
  %t1684 = add i64 %t1680, %t1683
  %t1685 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t1686 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t1687 = add i64 %t1684, %t1686
  %t1688 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1687)
  call void @olang_textcopy(ptr %t1688, ptr %t1658, i64 %t1659)
  %t1689 = getelementptr i8, ptr %t1688, i64 %t1659
  call void @olang_textcopy(ptr %t1689, ptr %t1661, i64 %t1662)
  %t1690 = getelementptr i8, ptr %t1689, i64 %t1662
  call void @olang_textcopy(ptr %t1690, ptr %t1664, i64 %t1665)
  %t1691 = getelementptr i8, ptr %t1690, i64 %t1665
  call void @olang_textcopy(ptr %t1691, ptr %t1668, i64 %t1669)
  %t1692 = getelementptr i8, ptr %t1691, i64 %t1669
  call void @olang_textcopy(ptr %t1692, ptr %t1671, i64 %t1672)
  %t1693 = getelementptr i8, ptr %t1692, i64 %t1672
  call void @olang_textcopy(ptr %t1693, ptr %t1675, i64 %t1676)
  %t1694 = getelementptr i8, ptr %t1693, i64 %t1676
  call void @olang_textcopy(ptr %t1694, ptr %t1678, i64 %t1679)
  %t1695 = getelementptr i8, ptr %t1694, i64 %t1679
  call void @olang_textcopy(ptr %t1695, ptr %t1682, i64 %t1683)
  %t1696 = getelementptr i8, ptr %t1695, i64 %t1683
  call void @olang_textcopy(ptr %t1696, ptr %t1685, i64 %t1686)
  %t1697 = insertvalue { i64, ptr } undef, i64 %t1687, 0
  %t1698 = insertvalue { i64, ptr } %t1697, ptr %t1688, 1
  %t1700 = extractvalue { i64, ptr } %t1698, 0
  %t1701 = extractvalue { i64, ptr } %t1698, 1
  %t1702 = mul i64 %t1700, 1
  %t1703 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1702)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1703, ptr %t1701, i64 %t1702, i1 false)
  %t1704 = insertvalue { i64, ptr } undef, i64 %t1700, 0
  %t1705 = insertvalue { i64, ptr } %t1704, ptr %t1703, 1
  %t1708 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1652, { i64, ptr } %t1705)
  store { i64, ptr } %t1708, ptr %l483
  br label %bb204
bb204:
  call void @__olang_scope_close(ptr %s48)
  call void @__olang_scope_close(ptr %s0)
  %t1709 = load { i64, ptr }, ptr %l483, !tbaa !27
  store { i64, ptr } %t1709, ptr %rv
  br label %ret
bb205:
  %t1710 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1712 = trunc i64 34 to i32
  %t1713 = icmp eq i32 %t1710, %t1712
  br i1 %t1713, label %bb206, label %bb207
bb206:
  br label %bb210
bb207:
  %t1715 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1717 = trunc i64 35 to i32
  %t1718 = icmp eq i32 %t1715, %t1717
  br i1 %t1718, label %bb208, label %bb209
bb208:
  br label %bb210
bb209:
  br label %bb233
bb210:
  store %olang.scope zeroinitializer, ptr %s61
  %t1720 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1720, ptr %l488, !tbaa !29
  %t1721 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1721, ptr %l489, !tbaa !29
  %t1722 = load ptr, ptr %l0, !tbaa !29
  %t1723 = load %"compiler/mir:Range", ptr %l3
  %t1726 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t1722, %"compiler/mir:Range" %t1723, i64 1)
  store { i64, [4 x i64] } %t1726, ptr %l492
  br label %bb211
bb211:
  %t1727 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1728 = load ptr, ptr %l489, !tbaa !29
  %t1729 = load { i64, [4 x i64] }, ptr %l492
  %t1731 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s61, ptr %t1728, { i64, [4 x i64] } %t1729, i32 %t1727)
  store { i64, ptr } %t1731, ptr %l494
  br label %bb212
bb212:
  %t1732 = load { i64, ptr }, ptr %l494, !tbaa !27
  %t1733 = extractvalue { i64, ptr } %t1732, 0
  %t1734 = extractvalue { i64, ptr } %t1732, 1
  %t1735 = mul i64 %t1733, 1
  %t1736 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t1735)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1736, ptr %t1734, i64 %t1735, i1 false)
  %t1737 = insertvalue { i64, ptr } undef, i64 %t1733, 0
  %t1738 = insertvalue { i64, ptr } %t1737, ptr %t1736, 1
  %t1739 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1740 = load i32, ptr %l7, !tbaa !23
  %t1741 = load ptr, ptr %l488, !tbaa !29
  %t1745 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidth(ptr %v0, ptr %s61, ptr %s61, ptr %t1741, { i64, ptr } %t1738, i32 %t1739, i32 %t1740)
  store { i64, ptr } %t1745, ptr %l498
  br label %bb213
bb213:
  %t1746 = load { i64, ptr }, ptr %l498, !tbaa !27
  store { i64, ptr } %t1746, ptr %l39, !tbaa !27
  %t1747 = load ptr, ptr %l4, !tbaa !29
  %t1748 = load i32, ptr %l7, !tbaa !23
  %t1751 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t1747, i32 %t1748)
  store i64 %t1751, ptr %l501
  br label %bb214
bb214:
  %t1752 = load i64, ptr %l501, !tbaa !24
  store i64 %t1752, ptr %l40, !tbaa !24
  %t1753 = load i64, ptr %l40, !tbaa !24
  %t1754 = load i64, ptr %l40, !tbaa !24
  %t1756 = sub i64 %t1754, 1
  %t1759 = and i64 %t1753, %t1756
  %t1761 = icmp ne i64 %t1759, 0
  br i1 %t1761, label %bb215, label %bb216
bb215:
  store %olang.scope zeroinitializer, ptr %s62
  %t1763 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1763, ptr %l507, !tbaa !29
  %t1764 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1764, ptr %l508, !tbaa !29
  %t1765 = load ptr, ptr %l0, !tbaa !29
  %t1766 = load %"compiler/mir:Range", ptr %l3
  %t1769 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t1765, %"compiler/mir:Range" %t1766, i64 1)
  store { i64, [4 x i64] } %t1769, ptr %l511
  br label %bb217
bb216:
  br label %bb227
bb217:
  %t1770 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1771 = load ptr, ptr %l508, !tbaa !29
  %t1772 = load { i64, [4 x i64] }, ptr %l511
  %t1774 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s62, ptr %t1771, { i64, [4 x i64] } %t1772, i32 %t1770)
  store { i64, ptr } %t1774, ptr %l513
  br label %bb218
bb218:
  %t1775 = load i64, ptr %l40, !tbaa !24
  %t1776 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t1777 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t1778 = load { i64, ptr }, ptr %l513, !tbaa !27
  %t1779 = extractvalue { i64, ptr } %t1778, 1
  %t1780 = extractvalue { i64, ptr } %t1778, 0
  %t1781 = add i64 %t1777, %t1780
  %t1782 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t1783 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t1784 = add i64 %t1781, %t1783
  %t1786 = call i64 @__olang_fmt_i64(ptr null, i64 %t1775)
  %t1787 = add i64 %t1784, %t1786
  %t1788 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1787)
  call void @olang_textcopy(ptr %t1788, ptr %t1776, i64 %t1777)
  %t1789 = getelementptr i8, ptr %t1788, i64 %t1777
  call void @olang_textcopy(ptr %t1789, ptr %t1779, i64 %t1780)
  %t1790 = getelementptr i8, ptr %t1789, i64 %t1780
  call void @olang_textcopy(ptr %t1790, ptr %t1782, i64 %t1783)
  %t1791 = getelementptr i8, ptr %t1790, i64 %t1783
  %t1792 = call i64 @__olang_fmt_i64(ptr %t1791, i64 %t1775)
  %t1793 = insertvalue { i64, ptr } undef, i64 %t1787, 0
  %t1794 = insertvalue { i64, ptr } %t1793, ptr %t1788, 1
  %t1796 = extractvalue { i64, ptr } %t1794, 0
  %t1797 = extractvalue { i64, ptr } %t1794, 1
  %t1798 = mul i64 %t1796, 1
  %t1799 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1798)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1799, ptr %t1797, i64 %t1798, i1 false)
  %t1800 = insertvalue { i64, ptr } undef, i64 %t1796, 0
  %t1801 = insertvalue { i64, ptr } %t1800, ptr %t1799, 1
  %t1802 = load ptr, ptr %l507, !tbaa !29
  %t1804 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s62, ptr %s62, ptr %t1802, { i64, ptr } %t1801)
  store { i64, ptr } %t1804, ptr %l517
  br label %bb219
bb219:
  %t1805 = load { i64, ptr }, ptr %l517, !tbaa !27
  store { i64, ptr } %t1805, ptr %l41, !tbaa !27
  %t1806 = load ptr, ptr %l0, !tbaa !29
  %t1807 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1808 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t1809 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t1811 = extractvalue { i64, ptr } %t1807, 1
  %t1812 = extractvalue { i64, ptr } %t1807, 0
  %t1813 = add i64 %t1809, %t1812
  %t1814 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t1815 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  %t1816 = add i64 %t1813, %t1815
  %t1817 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1816)
  call void @olang_textcopy(ptr %t1817, ptr %t1808, i64 %t1809)
  %t1818 = getelementptr i8, ptr %t1817, i64 %t1809
  call void @olang_textcopy(ptr %t1818, ptr %t1811, i64 %t1812)
  %t1819 = getelementptr i8, ptr %t1818, i64 %t1812
  call void @olang_textcopy(ptr %t1819, ptr %t1814, i64 %t1815)
  %t1820 = insertvalue { i64, ptr } undef, i64 %t1816, 0
  %t1821 = insertvalue { i64, ptr } %t1820, ptr %t1817, 1
  %t1823 = extractvalue { i64, ptr } %t1821, 0
  %t1824 = extractvalue { i64, ptr } %t1821, 1
  %t1825 = mul i64 %t1823, 1
  %t1826 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1825)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1826, ptr %t1824, i64 %t1825, i1 false)
  %t1827 = insertvalue { i64, ptr } undef, i64 %t1823, 0
  %t1828 = insertvalue { i64, ptr } %t1827, ptr %t1826, 1
  %t1831 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s62, ptr %s62, ptr %t1806, { i64, ptr } %t1828)
  store { i64, ptr } %t1831, ptr %l522
  br label %bb220
bb220:
  %t1832 = load { i64, ptr }, ptr %l522, !tbaa !27
  store { i64, ptr } %t1832, ptr %l42, !tbaa !27
  %t1833 = load ptr, ptr %l0, !tbaa !29
  %t1834 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1835 = load i64, ptr %l40, !tbaa !24
  %t1836 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t1837 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t1839 = extractvalue { i64, ptr } %t1834, 1
  %t1840 = extractvalue { i64, ptr } %t1834, 0
  %t1841 = add i64 %t1837, %t1840
  %t1842 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t1843 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t1844 = add i64 %t1841, %t1843
  %t1846 = call i64 @__olang_fmt_i64(ptr null, i64 %t1835)
  %t1847 = add i64 %t1844, %t1846
  %t1848 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1847)
  call void @olang_textcopy(ptr %t1848, ptr %t1836, i64 %t1837)
  %t1849 = getelementptr i8, ptr %t1848, i64 %t1837
  call void @olang_textcopy(ptr %t1849, ptr %t1839, i64 %t1840)
  %t1850 = getelementptr i8, ptr %t1849, i64 %t1840
  call void @olang_textcopy(ptr %t1850, ptr %t1842, i64 %t1843)
  %t1851 = getelementptr i8, ptr %t1850, i64 %t1843
  %t1852 = call i64 @__olang_fmt_i64(ptr %t1851, i64 %t1835)
  %t1853 = insertvalue { i64, ptr } undef, i64 %t1847, 0
  %t1854 = insertvalue { i64, ptr } %t1853, ptr %t1848, 1
  %t1856 = extractvalue { i64, ptr } %t1854, 0
  %t1857 = extractvalue { i64, ptr } %t1854, 1
  %t1858 = mul i64 %t1856, 1
  %t1859 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1858)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1859, ptr %t1857, i64 %t1858, i1 false)
  %t1860 = insertvalue { i64, ptr } undef, i64 %t1856, 0
  %t1861 = insertvalue { i64, ptr } %t1860, ptr %t1859, 1
  %t1864 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s62, ptr %s62, ptr %t1833, { i64, ptr } %t1861)
  store { i64, ptr } %t1864, ptr %l528
  br label %bb221
bb221:
  %t1865 = load { i64, ptr }, ptr %l528, !tbaa !27
  %t1866 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1866, ptr %l529, !tbaa !29
  %t1867 = load ptr, ptr %l0, !tbaa !29
  %t1868 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t1870 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1871 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t1872 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t1874 = extractvalue { i64, ptr } %t1868, 1
  %t1875 = extractvalue { i64, ptr } %t1868, 0
  %t1876 = add i64 %t1872, %t1875
  %t1877 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t1878 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t1879 = add i64 %t1876, %t1878
  %t1881 = extractvalue { i64, ptr } %t1865, 1
  %t1882 = extractvalue { i64, ptr } %t1865, 0
  %t1883 = add i64 %t1879, %t1882
  %t1884 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t1885 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t1886 = add i64 %t1883, %t1885
  %t1888 = extractvalue { i64, ptr } %t1870, 1
  %t1889 = extractvalue { i64, ptr } %t1870, 0
  %t1890 = add i64 %t1886, %t1889
  %t1891 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t1890)
  call void @olang_textcopy(ptr %t1891, ptr %t1871, i64 %t1872)
  %t1892 = getelementptr i8, ptr %t1891, i64 %t1872
  call void @olang_textcopy(ptr %t1892, ptr %t1874, i64 %t1875)
  %t1893 = getelementptr i8, ptr %t1892, i64 %t1875
  call void @olang_textcopy(ptr %t1893, ptr %t1877, i64 %t1878)
  %t1894 = getelementptr i8, ptr %t1893, i64 %t1878
  call void @olang_textcopy(ptr %t1894, ptr %t1881, i64 %t1882)
  %t1895 = getelementptr i8, ptr %t1894, i64 %t1882
  call void @olang_textcopy(ptr %t1895, ptr %t1884, i64 %t1885)
  %t1896 = getelementptr i8, ptr %t1895, i64 %t1885
  call void @olang_textcopy(ptr %t1896, ptr %t1888, i64 %t1889)
  %t1897 = insertvalue { i64, ptr } undef, i64 %t1890, 0
  %t1898 = insertvalue { i64, ptr } %t1897, ptr %t1891, 1
  %t1900 = extractvalue { i64, ptr } %t1898, 0
  %t1901 = extractvalue { i64, ptr } %t1898, 1
  %t1902 = mul i64 %t1900, 1
  %t1903 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t1902)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1903, ptr %t1901, i64 %t1902, i1 false)
  %t1904 = insertvalue { i64, ptr } undef, i64 %t1900, 0
  %t1905 = insertvalue { i64, ptr } %t1904, ptr %t1903, 1
  %t1908 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s61, ptr %s61, ptr %t1867, { i64, ptr } %t1905)
  store { i64, ptr } %t1908, ptr %l536
  br label %bb222
bb222:
  %t1909 = load { i64, ptr }, ptr %l536, !tbaa !27
  %t1910 = extractvalue { i64, ptr } %t1909, 0
  %t1911 = extractvalue { i64, ptr } %t1909, 1
  %t1912 = mul i64 %t1910, 1
  %t1913 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t1912)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1913, ptr %t1911, i64 %t1912, i1 false)
  %t1914 = insertvalue { i64, ptr } undef, i64 %t1910, 0
  %t1915 = insertvalue { i64, ptr } %t1914, ptr %t1913, 1
  %t1916 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1917 = load i32, ptr %l7, !tbaa !23
  %t1918 = load ptr, ptr %l529, !tbaa !29
  %t1922 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidth(ptr %v0, ptr %s61, ptr %s61, ptr %t1918, { i64, ptr } %t1915, i32 %t1916, i32 %t1917)
  store { i64, ptr } %t1922, ptr %l540
  br label %bb223
bb223:
  %t1923 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t1924 = extractvalue { i64, ptr } %t1923, 0
  %t1925 = load { i64, ptr }, ptr %l540, !tbaa !27
  %t1926 = extractvalue { i64, ptr } %t1925, 0
  store i64 %t1926, ptr %l542, !tbaa !24
  %t1928 = load i64, ptr %l542, !tbaa !24
  %t1929 = icmp eq i64 %t1924, %t1928
  br i1 %t1929, label %bb224, label %bb225
bb224:
  %t1931 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t1932 = load ptr, ptr %t1931, !tbaa !27
  %t1933 = getelementptr { i64, ptr }, ptr %l540, i32 0, i32 1
  %t1934 = load ptr, ptr %t1933, !tbaa !27
  %t1935 = load i64, ptr %l542, !tbaa !24
  %t1936 = mul i64 %t1935, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1932, ptr %t1934, i64 %t1936, i1 false)
  br label %bb226
bb225:
  %t1937 = load { i64, ptr }, ptr %l540, !tbaa !27
  store { i64, ptr } %t1937, ptr %l39, !tbaa !27
  br label %bb226
bb226:
  call void @__olang_scope_close(ptr %s62)
  br label %bb227
bb227:
  %t1938 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1940 = trunc i64 34 to i32
  %t1941 = icmp eq i32 %t1938, %t1940
  br i1 %t1941, label %bb228, label %bb229
bb228:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d224, i32 0, i32 1) }, ptr %l546, !tbaa !27
  br label %bb230
bb229:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) }, ptr %l546, !tbaa !27
  br label %bb230
bb230:
  %t1943 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1944 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t1945 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t1946 = load { i64, ptr }, ptr %l546, !tbaa !27
  %t1947 = extractvalue { i64, ptr } %t1946, 1
  %t1948 = extractvalue { i64, ptr } %t1946, 0
  %t1949 = add i64 %t1945, %t1948
  %t1950 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t1951 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  %t1952 = add i64 %t1949, %t1951
  %t1954 = extractvalue { i64, ptr } %t1943, 1
  %t1955 = extractvalue { i64, ptr } %t1943, 0
  %t1956 = add i64 %t1952, %t1955
  %t1957 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t1956)
  call void @olang_textcopy(ptr %t1957, ptr %t1944, i64 %t1945)
  %t1958 = getelementptr i8, ptr %t1957, i64 %t1945
  call void @olang_textcopy(ptr %t1958, ptr %t1947, i64 %t1948)
  %t1959 = getelementptr i8, ptr %t1958, i64 %t1948
  call void @olang_textcopy(ptr %t1959, ptr %t1950, i64 %t1951)
  %t1960 = getelementptr i8, ptr %t1959, i64 %t1951
  call void @olang_textcopy(ptr %t1960, ptr %t1954, i64 %t1955)
  %t1961 = insertvalue { i64, ptr } undef, i64 %t1956, 0
  %t1962 = insertvalue { i64, ptr } %t1961, ptr %t1957, 1
  store { i64, ptr } %t1962, ptr %l44, !tbaa !27
  %t1964 = load ptr, ptr %l0, !tbaa !29
  %t1966 = getelementptr %"compiler/emit:fnEm", ptr %t1964, i32 0, i32 0
  %t1967 = load ptr, ptr %t1966, !tbaa !29
  %t1968 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t1969 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1970 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t1971 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1972 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1973 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t1975 = extractvalue { i64, ptr } %t1969, 1
  %t1976 = extractvalue { i64, ptr } %t1969, 0
  %t1977 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t1978 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t1979 = add i64 %t1976, %t1978
  %t1981 = extractvalue { i64, ptr } %t1970, 1
  %t1982 = extractvalue { i64, ptr } %t1970, 0
  %t1983 = add i64 %t1979, %t1982
  %t1984 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t1985 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t1986 = add i64 %t1983, %t1985
  %t1988 = extractvalue { i64, ptr } %t1971, 1
  %t1989 = extractvalue { i64, ptr } %t1971, 0
  %t1990 = add i64 %t1986, %t1989
  %t1991 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t1992 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t1993 = add i64 %t1990, %t1992
  %t1995 = extractvalue { i64, ptr } %t1972, 1
  %t1996 = extractvalue { i64, ptr } %t1972, 0
  %t1997 = add i64 %t1993, %t1996
  %t1998 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t1999 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t2000 = add i64 %t1997, %t1999
  %t2002 = extractvalue { i64, ptr } %t1973, 1
  %t2003 = extractvalue { i64, ptr } %t1973, 0
  %t2004 = add i64 %t2000, %t2003
  %t2005 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t2006 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t2007 = add i64 %t2004, %t2006
  %t2008 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t2007)
  call void @olang_textcopy(ptr %t2008, ptr %t1975, i64 %t1976)
  %t2009 = getelementptr i8, ptr %t2008, i64 %t1976
  call void @olang_textcopy(ptr %t2009, ptr %t1977, i64 %t1978)
  %t2010 = getelementptr i8, ptr %t2009, i64 %t1978
  call void @olang_textcopy(ptr %t2010, ptr %t1981, i64 %t1982)
  %t2011 = getelementptr i8, ptr %t2010, i64 %t1982
  call void @olang_textcopy(ptr %t2011, ptr %t1984, i64 %t1985)
  %t2012 = getelementptr i8, ptr %t2011, i64 %t1985
  call void @olang_textcopy(ptr %t2012, ptr %t1988, i64 %t1989)
  %t2013 = getelementptr i8, ptr %t2012, i64 %t1989
  call void @olang_textcopy(ptr %t2013, ptr %t1991, i64 %t1992)
  %t2014 = getelementptr i8, ptr %t2013, i64 %t1992
  call void @olang_textcopy(ptr %t2014, ptr %t1995, i64 %t1996)
  %t2015 = getelementptr i8, ptr %t2014, i64 %t1996
  call void @olang_textcopy(ptr %t2015, ptr %t1998, i64 %t1999)
  %t2016 = getelementptr i8, ptr %t2015, i64 %t1999
  call void @olang_textcopy(ptr %t2016, ptr %t2002, i64 %t2003)
  %t2017 = getelementptr i8, ptr %t2016, i64 %t2003
  call void @olang_textcopy(ptr %t2017, ptr %t2005, i64 %t2006)
  %t2018 = insertvalue { i64, ptr } undef, i64 %t2007, 0
  %t2019 = insertvalue { i64, ptr } %t2018, ptr %t2008, 1
  %t2021 = extractvalue { i64, ptr } %t2019, 0
  %t2022 = extractvalue { i64, ptr } %t2019, 1
  %t2023 = mul i64 %t2021, 1
  %t2024 = call ptr @__olang_scope_alloc(ptr %s61, i64 %t2023)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2024, ptr %t2022, i64 %t2023, i1 false)
  %t2025 = insertvalue { i64, ptr } undef, i64 %t2021, 0
  %t2026 = insertvalue { i64, ptr } %t2025, ptr %t2024, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s61, ptr %s61, ptr %t1967, { i64, ptr } %t1968, { i64, ptr } %t2026)
  br label %bb231
bb231:
  %t2030 = load ptr, ptr %l0, !tbaa !29
  %t2031 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2032 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t2033 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2034 = load ptr, ptr %lp11
  %t2035 = load { i64, ptr }, ptr %t2034, !tbaa !27
  %t2036 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2037 = load ptr, ptr %lp11
  %t2038 = load { i64, ptr }, ptr %t2037, !tbaa !27
  %t2039 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2040 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t2041 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t2042 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t2044 = extractvalue { i64, ptr } %t2031, 1
  %t2045 = extractvalue { i64, ptr } %t2031, 0
  %t2046 = add i64 %t2042, %t2045
  %t2047 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t2048 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t2049 = add i64 %t2046, %t2048
  %t2051 = extractvalue { i64, ptr } %t2032, 1
  %t2052 = extractvalue { i64, ptr } %t2032, 0
  %t2053 = add i64 %t2049, %t2052
  %t2054 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t2055 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t2056 = add i64 %t2053, %t2055
  %t2058 = extractvalue { i64, ptr } %t2033, 1
  %t2059 = extractvalue { i64, ptr } %t2033, 0
  %t2060 = add i64 %t2056, %t2059
  %t2061 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t2062 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t2063 = add i64 %t2060, %t2062
  %t2065 = extractvalue { i64, ptr } %t2035, 1
  %t2066 = extractvalue { i64, ptr } %t2035, 0
  %t2067 = add i64 %t2063, %t2066
  %t2068 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t2069 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t2070 = add i64 %t2067, %t2069
  %t2072 = extractvalue { i64, ptr } %t2036, 1
  %t2073 = extractvalue { i64, ptr } %t2036, 0
  %t2074 = add i64 %t2070, %t2073
  %t2075 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t2076 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t2077 = add i64 %t2074, %t2076
  %t2079 = extractvalue { i64, ptr } %t2038, 1
  %t2080 = extractvalue { i64, ptr } %t2038, 0
  %t2081 = add i64 %t2077, %t2080
  %t2082 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t2083 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t2084 = add i64 %t2081, %t2083
  %t2086 = extractvalue { i64, ptr } %t2039, 1
  %t2087 = extractvalue { i64, ptr } %t2039, 0
  %t2088 = add i64 %t2084, %t2087
  %t2089 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t2090 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t2091 = add i64 %t2088, %t2090
  %t2093 = extractvalue { i64, ptr } %t2040, 1
  %t2094 = extractvalue { i64, ptr } %t2040, 0
  %t2095 = add i64 %t2091, %t2094
  %t2096 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t2097 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t2098 = add i64 %t2095, %t2097
  %t2099 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2098)
  call void @olang_textcopy(ptr %t2099, ptr %t2041, i64 %t2042)
  %t2100 = getelementptr i8, ptr %t2099, i64 %t2042
  call void @olang_textcopy(ptr %t2100, ptr %t2044, i64 %t2045)
  %t2101 = getelementptr i8, ptr %t2100, i64 %t2045
  call void @olang_textcopy(ptr %t2101, ptr %t2047, i64 %t2048)
  %t2102 = getelementptr i8, ptr %t2101, i64 %t2048
  call void @olang_textcopy(ptr %t2102, ptr %t2051, i64 %t2052)
  %t2103 = getelementptr i8, ptr %t2102, i64 %t2052
  call void @olang_textcopy(ptr %t2103, ptr %t2054, i64 %t2055)
  %t2104 = getelementptr i8, ptr %t2103, i64 %t2055
  call void @olang_textcopy(ptr %t2104, ptr %t2058, i64 %t2059)
  %t2105 = getelementptr i8, ptr %t2104, i64 %t2059
  call void @olang_textcopy(ptr %t2105, ptr %t2061, i64 %t2062)
  %t2106 = getelementptr i8, ptr %t2105, i64 %t2062
  call void @olang_textcopy(ptr %t2106, ptr %t2065, i64 %t2066)
  %t2107 = getelementptr i8, ptr %t2106, i64 %t2066
  call void @olang_textcopy(ptr %t2107, ptr %t2068, i64 %t2069)
  %t2108 = getelementptr i8, ptr %t2107, i64 %t2069
  call void @olang_textcopy(ptr %t2108, ptr %t2072, i64 %t2073)
  %t2109 = getelementptr i8, ptr %t2108, i64 %t2073
  call void @olang_textcopy(ptr %t2109, ptr %t2075, i64 %t2076)
  %t2110 = getelementptr i8, ptr %t2109, i64 %t2076
  call void @olang_textcopy(ptr %t2110, ptr %t2079, i64 %t2080)
  %t2111 = getelementptr i8, ptr %t2110, i64 %t2080
  call void @olang_textcopy(ptr %t2111, ptr %t2082, i64 %t2083)
  %t2112 = getelementptr i8, ptr %t2111, i64 %t2083
  call void @olang_textcopy(ptr %t2112, ptr %t2086, i64 %t2087)
  %t2113 = getelementptr i8, ptr %t2112, i64 %t2087
  call void @olang_textcopy(ptr %t2113, ptr %t2089, i64 %t2090)
  %t2114 = getelementptr i8, ptr %t2113, i64 %t2090
  call void @olang_textcopy(ptr %t2114, ptr %t2093, i64 %t2094)
  %t2115 = getelementptr i8, ptr %t2114, i64 %t2094
  call void @olang_textcopy(ptr %t2115, ptr %t2096, i64 %t2097)
  %t2116 = insertvalue { i64, ptr } undef, i64 %t2098, 0
  %t2117 = insertvalue { i64, ptr } %t2116, ptr %t2099, 1
  %t2119 = extractvalue { i64, ptr } %t2117, 0
  %t2120 = extractvalue { i64, ptr } %t2117, 1
  %t2121 = mul i64 %t2119, 1
  %t2122 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2122, ptr %t2120, i64 %t2121, i1 false)
  %t2123 = insertvalue { i64, ptr } undef, i64 %t2119, 0
  %t2124 = insertvalue { i64, ptr } %t2123, ptr %t2122, 1
  %t2127 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2030, { i64, ptr } %t2124)
  store { i64, ptr } %t2127, ptr %l570
  br label %bb232
bb232:
  call void @__olang_scope_close(ptr %s61)
  call void @__olang_scope_close(ptr %s0)
  %t2128 = load { i64, ptr }, ptr %l570, !tbaa !27
  store { i64, ptr } %t2128, ptr %rv
  br label %ret
bb233:
  %t2129 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2131 = trunc i64 48 to i32
  %t2132 = icmp eq i32 %t2129, %t2131
  br i1 %t2132, label %bb234, label %bb235
bb234:
  br label %bb242
bb235:
  %t2134 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2136 = trunc i64 49 to i32
  %t2137 = icmp eq i32 %t2134, %t2136
  br i1 %t2137, label %bb236, label %bb237
bb236:
  br label %bb242
bb237:
  %t2139 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2141 = trunc i64 50 to i32
  %t2142 = icmp eq i32 %t2139, %t2141
  br i1 %t2142, label %bb238, label %bb239
bb238:
  br label %bb242
bb239:
  %t2144 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2146 = trunc i64 51 to i32
  %t2147 = icmp eq i32 %t2144, %t2146
  br i1 %t2147, label %bb240, label %bb241
bb240:
  br label %bb242
bb241:
  br label %bb244
bb242:
  %t2149 = load ptr, ptr %l0, !tbaa !29
  %t2150 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2151 = load i32, ptr %l7, !tbaa !23
  %t2152 = load ptr, ptr %lp11
  %t2153 = load { i64, ptr }, ptr %t2152, !tbaa !27
  %t2154 = load %"compiler/mir:Range", ptr %l3
  %t2160 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esaturating(ptr %v0, ptr %v1, ptr %v1, ptr %t2149, i32 %t2150, i32 %t2151, { i64, ptr } %t2153, %"compiler/mir:Range" %t2154)
  store { i64, ptr } %t2160, ptr %l584
  br label %bb243
bb243:
  call void @__olang_scope_close(ptr %s0)
  %t2161 = load { i64, ptr }, ptr %l584, !tbaa !27
  store { i64, ptr } %t2161, ptr %rv
  br label %ret
bb244:
  br i1 true, label %bb245, label %bb246
bb245:
  br label %bb247
bb246:
  br label %bb248
bb247:
  br label %bb249
bb248:
  call void @__olang_check_failed(ptr @olang_loc_d23ee61a0d8dfe9f_a353f177579d38fb)
  unreachable
bb249:
  %t2162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2162, ptr %l585, !tbaa !29
  %t2163 = load ptr, ptr %l0, !tbaa !29
  %t2164 = load %"compiler/mir:Range", ptr %l3
  %t2167 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t2163, %"compiler/mir:Range" %t2164, i64 1)
  store { i64, [4 x i64] } %t2167, ptr %l588
  br label %bb250
bb250:
  %t2168 = load i32, ptr %l6, !tbaa !23
  %t2169 = load ptr, ptr %l585, !tbaa !29
  %t2170 = load { i64, [4 x i64] }, ptr %l588
  %t2172 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t2169, { i64, [4 x i64] } %t2170, i32 %t2168)
  store { i64, ptr } %t2172, ptr %l590
  br label %bb251
bb251:
  %t2173 = load { i64, ptr }, ptr %l590, !tbaa !27
  store { i64, ptr } %t2173, ptr %l45, !tbaa !27
  %t2174 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2176 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t2174, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d238, i32 0, i32 1) })
  store i1 %t2176, ptr %l592
  br label %bb252
bb252:
  %t2177 = load i1, ptr %l592, !tbaa !21
  br i1 %t2177, label %bb253, label %bb254
bb253:
  store %olang.scope zeroinitializer, ptr %s72
  %t2178 = load ptr, ptr %l0, !tbaa !29
  %t2179 = load ptr, ptr %lp11
  %t2180 = load { i64, ptr }, ptr %t2179, !tbaa !27
  %t2183 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %v1, ptr %s72, ptr %s72, ptr %t2178, { i64, ptr } %t2180, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d239, i32 0, i32 1) })
  store { i64, ptr } %t2183, ptr %l595
  br label %bb255
bb254:
  br label %bb308
bb255:
  %t2184 = load { i64, ptr }, ptr %l595, !tbaa !27
  store { i64, ptr } %t2184, ptr %l46, !tbaa !27
  %t2185 = load ptr, ptr %l0, !tbaa !29
  %t2186 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2189 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %s0, ptr %s72, ptr %s72, ptr %t2185, { i64, ptr } %t2186, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d240, i32 0, i32 1) })
  store { i64, ptr } %t2189, ptr %l598
  br label %bb256
bb256:
  %t2190 = load { i64, ptr }, ptr %l598, !tbaa !27
  store { i64, ptr } %t2190, ptr %l47, !tbaa !27
  %t2191 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2193 = trunc i64 3 to i32
  %t2194 = icmp eq i32 %t2191, %t2193
  br i1 %t2194, label %bb257, label %bb258
bb257:
  br label %bb259
bb258:
  br label %bb260
bb259:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d241, i32 0, i32 1) }, ptr %l599, !tbaa !27
  br label %bb281
bb260:
  %t2196 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2198 = trunc i64 4 to i32
  %t2199 = icmp eq i32 %t2196, %t2198
  br i1 %t2199, label %bb261, label %bb262
bb261:
  br label %bb263
bb262:
  br label %bb264
bb263:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d242, i32 0, i32 1) }, ptr %l599, !tbaa !27
  br label %bb281
bb264:
  %t2201 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2203 = trunc i64 5 to i32
  %t2204 = icmp eq i32 %t2201, %t2203
  br i1 %t2204, label %bb265, label %bb266
bb265:
  br label %bb267
bb266:
  br label %bb268
bb267:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d243, i32 0, i32 1) }, ptr %l599, !tbaa !27
  br label %bb281
bb268:
  %t2206 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2208 = trunc i64 6 to i32
  %t2209 = icmp eq i32 %t2206, %t2208
  br i1 %t2209, label %bb269, label %bb270
bb269:
  br label %bb271
bb270:
  br label %bb272
bb271:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d244, i32 0, i32 1) }, ptr %l599, !tbaa !27
  br label %bb281
bb272:
  %t2211 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2213 = trunc i64 7 to i32
  %t2214 = icmp eq i32 %t2211, %t2213
  br i1 %t2214, label %bb273, label %bb274
bb273:
  br label %bb275
bb274:
  br label %bb276
bb275:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d245, i32 0, i32 1) }, ptr %l599, !tbaa !27
  br label %bb281
bb276:
  br i1 true, label %bb277, label %bb278
bb277:
  br label %bb279
bb278:
  br label %bb280
bb279:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d246, i32 0, i32 1) }, ptr %l599, !tbaa !27
  br label %bb281
bb280:
  call void @__olang_check_failed(ptr @olang_loc_f37913274faf0c64_a4499fcd83081580)
  unreachable
bb281:
  %t2216 = load { i64, ptr }, ptr %l599, !tbaa !27
  store { i64, ptr } %t2216, ptr %l48, !tbaa !27
  %t2217 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t2218 = load ptr, ptr @__olang_prog_scope
  %t2220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t2218, ptr %s72, { i64, ptr } %t2217, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d247, i32 0, i32 1) })
  store i1 %t2220, ptr %l611
  br label %bb282
bb282:
  %t2221 = load i1, ptr %l611, !tbaa !21
  %t2222 = xor i1 %t2221, true
  br i1 %t2222, label %bb283, label %bb284
bb283:
  %t2224 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2224, ptr %l613, !tbaa !29
  %t2225 = load ptr, ptr %l0, !tbaa !29
  %t2226 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t2227 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t2228 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t2230 = extractvalue { i64, ptr } %t2226, 1
  %t2231 = extractvalue { i64, ptr } %t2226, 0
  %t2232 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d248, i32 0, i32 1) }, 1
  %t2233 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d248, i32 0, i32 1) }, 0
  %t2234 = add i64 %t2231, %t2233
  %t2236 = extractvalue { i64, ptr } %t2227, 1
  %t2237 = extractvalue { i64, ptr } %t2227, 0
  %t2238 = add i64 %t2234, %t2237
  %t2239 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t2240 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t2241 = add i64 %t2238, %t2240
  %t2243 = extractvalue { i64, ptr } %t2228, 1
  %t2244 = extractvalue { i64, ptr } %t2228, 0
  %t2245 = add i64 %t2241, %t2244
  %t2246 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2245)
  call void @olang_textcopy(ptr %t2246, ptr %t2230, i64 %t2231)
  %t2247 = getelementptr i8, ptr %t2246, i64 %t2231
  call void @olang_textcopy(ptr %t2247, ptr %t2232, i64 %t2233)
  %t2248 = getelementptr i8, ptr %t2247, i64 %t2233
  call void @olang_textcopy(ptr %t2248, ptr %t2236, i64 %t2237)
  %t2249 = getelementptr i8, ptr %t2248, i64 %t2237
  call void @olang_textcopy(ptr %t2249, ptr %t2239, i64 %t2240)
  %t2250 = getelementptr i8, ptr %t2249, i64 %t2240
  call void @olang_textcopy(ptr %t2250, ptr %t2243, i64 %t2244)
  %t2251 = insertvalue { i64, ptr } undef, i64 %t2245, 0
  %t2252 = insertvalue { i64, ptr } %t2251, ptr %t2246, 1
  %t2254 = extractvalue { i64, ptr } %t2252, 0
  %t2255 = extractvalue { i64, ptr } %t2252, 1
  %t2256 = mul i64 %t2254, 1
  %t2257 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2256)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2257, ptr %t2255, i64 %t2256, i1 false)
  %t2258 = insertvalue { i64, ptr } undef, i64 %t2254, 0
  %t2259 = insertvalue { i64, ptr } %t2258, ptr %t2257, 1
  %t2262 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2225, { i64, ptr } %t2259)
  store { i64, ptr } %t2262, ptr %l620
  br label %bb285
bb284:
  br label %bb287
bb285:
  %t2263 = load { i64, ptr }, ptr %l620, !tbaa !27
  %t2264 = extractvalue { i64, ptr } %t2263, 0
  %t2265 = extractvalue { i64, ptr } %t2263, 1
  %t2266 = mul i64 %t2264, 1
  %t2267 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2267, ptr %t2265, i64 %t2266, i1 false)
  %t2268 = insertvalue { i64, ptr } undef, i64 %t2264, 0
  %t2269 = insertvalue { i64, ptr } %t2268, ptr %t2267, 1
  %t2270 = load ptr, ptr %l613, !tbaa !29
  %t2272 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v1, ptr %v1, ptr %t2270, { i64, ptr } %t2269)
  store { i64, ptr } %t2272, ptr %l622
  br label %bb286
bb286:
  call void @__olang_scope_close(ptr %s72)
  call void @__olang_scope_close(ptr %s0)
  %t2273 = load { i64, ptr }, ptr %l622, !tbaa !27
  store { i64, ptr } %t2273, ptr %rv
  br label %ret
bb287:
  %t2274 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2276 = trunc i64 13 to i32
  %t2277 = icmp eq i32 %t2274, %t2276
  br i1 %t2277, label %bb288, label %bb289
bb288:
  br label %bb300
bb289:
  %t2279 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2281 = trunc i64 14 to i32
  %t2282 = icmp eq i32 %t2279, %t2281
  br i1 %t2282, label %bb290, label %bb291
bb290:
  br label %bb300
bb291:
  %t2284 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2286 = trunc i64 15 to i32
  %t2287 = icmp eq i32 %t2284, %t2286
  br i1 %t2287, label %bb292, label %bb293
bb292:
  br label %bb300
bb293:
  %t2289 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2291 = trunc i64 16 to i32
  %t2292 = icmp eq i32 %t2289, %t2291
  br i1 %t2292, label %bb294, label %bb295
bb294:
  br label %bb300
bb295:
  %t2294 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2296 = trunc i64 17 to i32
  %t2297 = icmp eq i32 %t2294, %t2296
  br i1 %t2297, label %bb296, label %bb297
bb296:
  br label %bb300
bb297:
  %t2299 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2301 = trunc i64 18 to i32
  %t2302 = icmp eq i32 %t2299, %t2301
  br i1 %t2302, label %bb298, label %bb299
bb298:
  br label %bb300
bb299:
  br label %bb302
bb300:
  %t2304 = load ptr, ptr %l0, !tbaa !29
  %t2305 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2306 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t2307 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t2312 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecompare(ptr %v0, ptr %s72, ptr %s72, ptr %v1, ptr %t2304, i32 %t2305, i32 13, { i64, ptr } %t2306, { i64, ptr } %t2307)
  store { i64, ptr } %t2312, ptr %l639
  br label %bb301
bb301:
  call void @__olang_scope_close(ptr %s72)
  call void @__olang_scope_close(ptr %s0)
  %t2313 = load { i64, ptr }, ptr %l639, !tbaa !27
  store { i64, ptr } %t2313, ptr %rv
  br label %ret
bb302:
  br i1 true, label %bb303, label %bb304
bb303:
  br label %bb305
bb304:
  br label %bb306
bb305:
  br label %bb307
bb306:
  call void @__olang_check_failed(ptr @olang_loc_3839c0df7b992655_2640faef1ba2f611)
  unreachable
bb307:
  call void @__olang_scope_close(ptr %s72)
  br label %bb308
bb308:
  %t2314 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2316 = trunc i64 3 to i32
  %t2317 = icmp eq i32 %t2314, %t2316
  br i1 %t2317, label %bb309, label %bb310
bb309:
  br label %bb311
bb310:
  br label %bb316
bb311:
  %t2319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2319, ptr %l642, !tbaa !29
  %t2320 = load i1, ptr %l9, !tbaa !21
  br i1 %t2320, label %bb312, label %bb313
bb312:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d250, i32 0, i32 1) }, ptr %l644, !tbaa !27
  br label %bb314
bb313:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d251, i32 0, i32 1) }, ptr %l644, !tbaa !27
  br label %bb314
bb314:
  %t2322 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2323 = load ptr, ptr %lp11
  %t2324 = load { i64, ptr }, ptr %t2323, !tbaa !27
  %t2325 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2326 = load { i64, ptr }, ptr %l644, !tbaa !27
  %t2327 = extractvalue { i64, ptr } %t2326, 1
  %t2328 = extractvalue { i64, ptr } %t2326, 0
  %t2330 = extractvalue { i64, ptr } %t2322, 1
  %t2331 = extractvalue { i64, ptr } %t2322, 0
  %t2332 = add i64 %t2328, %t2331
  %t2333 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t2334 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t2335 = add i64 %t2332, %t2334
  %t2337 = extractvalue { i64, ptr } %t2324, 1
  %t2338 = extractvalue { i64, ptr } %t2324, 0
  %t2339 = add i64 %t2335, %t2338
  %t2340 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t2341 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t2342 = add i64 %t2339, %t2341
  %t2344 = extractvalue { i64, ptr } %t2325, 1
  %t2345 = extractvalue { i64, ptr } %t2325, 0
  %t2346 = add i64 %t2342, %t2345
  %t2347 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2346)
  call void @olang_textcopy(ptr %t2347, ptr %t2327, i64 %t2328)
  %t2348 = getelementptr i8, ptr %t2347, i64 %t2328
  call void @olang_textcopy(ptr %t2348, ptr %t2330, i64 %t2331)
  %t2349 = getelementptr i8, ptr %t2348, i64 %t2331
  call void @olang_textcopy(ptr %t2349, ptr %t2333, i64 %t2334)
  %t2350 = getelementptr i8, ptr %t2349, i64 %t2334
  call void @olang_textcopy(ptr %t2350, ptr %t2337, i64 %t2338)
  %t2351 = getelementptr i8, ptr %t2350, i64 %t2338
  call void @olang_textcopy(ptr %t2351, ptr %t2340, i64 %t2341)
  %t2352 = getelementptr i8, ptr %t2351, i64 %t2341
  call void @olang_textcopy(ptr %t2352, ptr %t2344, i64 %t2345)
  %t2353 = insertvalue { i64, ptr } undef, i64 %t2346, 0
  %t2354 = insertvalue { i64, ptr } %t2353, ptr %t2347, 1
  %t2356 = extractvalue { i64, ptr } %t2354, 0
  %t2357 = extractvalue { i64, ptr } %t2354, 1
  %t2358 = mul i64 %t2356, 1
  %t2359 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2358)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2359, ptr %t2357, i64 %t2358, i1 false)
  %t2360 = insertvalue { i64, ptr } undef, i64 %t2356, 0
  %t2361 = insertvalue { i64, ptr } %t2360, ptr %t2359, 1
  %t2362 = load ptr, ptr %l642, !tbaa !29
  %t2364 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2362, { i64, ptr } %t2361)
  store { i64, ptr } %t2364, ptr %l650
  br label %bb315
bb315:
  call void @__olang_scope_close(ptr %s0)
  %t2365 = load { i64, ptr }, ptr %l650, !tbaa !27
  store { i64, ptr } %t2365, ptr %rv
  br label %ret
bb316:
  %t2366 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2368 = trunc i64 4 to i32
  %t2369 = icmp eq i32 %t2366, %t2368
  br i1 %t2369, label %bb317, label %bb318
bb317:
  br label %bb319
bb318:
  br label %bb324
bb319:
  %t2371 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2371, ptr %l653, !tbaa !29
  %t2372 = load i1, ptr %l9, !tbaa !21
  br i1 %t2372, label %bb320, label %bb321
bb320:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d254, i32 0, i32 1) }, ptr %l655, !tbaa !27
  br label %bb322
bb321:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d255, i32 0, i32 1) }, ptr %l655, !tbaa !27
  br label %bb322
bb322:
  %t2374 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2375 = load ptr, ptr %lp11
  %t2376 = load { i64, ptr }, ptr %t2375, !tbaa !27
  %t2377 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2378 = load { i64, ptr }, ptr %l655, !tbaa !27
  %t2379 = extractvalue { i64, ptr } %t2378, 1
  %t2380 = extractvalue { i64, ptr } %t2378, 0
  %t2382 = extractvalue { i64, ptr } %t2374, 1
  %t2383 = extractvalue { i64, ptr } %t2374, 0
  %t2384 = add i64 %t2380, %t2383
  %t2385 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t2386 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t2387 = add i64 %t2384, %t2386
  %t2389 = extractvalue { i64, ptr } %t2376, 1
  %t2390 = extractvalue { i64, ptr } %t2376, 0
  %t2391 = add i64 %t2387, %t2390
  %t2392 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t2393 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t2394 = add i64 %t2391, %t2393
  %t2396 = extractvalue { i64, ptr } %t2377, 1
  %t2397 = extractvalue { i64, ptr } %t2377, 0
  %t2398 = add i64 %t2394, %t2397
  %t2399 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2398)
  call void @olang_textcopy(ptr %t2399, ptr %t2379, i64 %t2380)
  %t2400 = getelementptr i8, ptr %t2399, i64 %t2380
  call void @olang_textcopy(ptr %t2400, ptr %t2382, i64 %t2383)
  %t2401 = getelementptr i8, ptr %t2400, i64 %t2383
  call void @olang_textcopy(ptr %t2401, ptr %t2385, i64 %t2386)
  %t2402 = getelementptr i8, ptr %t2401, i64 %t2386
  call void @olang_textcopy(ptr %t2402, ptr %t2389, i64 %t2390)
  %t2403 = getelementptr i8, ptr %t2402, i64 %t2390
  call void @olang_textcopy(ptr %t2403, ptr %t2392, i64 %t2393)
  %t2404 = getelementptr i8, ptr %t2403, i64 %t2393
  call void @olang_textcopy(ptr %t2404, ptr %t2396, i64 %t2397)
  %t2405 = insertvalue { i64, ptr } undef, i64 %t2398, 0
  %t2406 = insertvalue { i64, ptr } %t2405, ptr %t2399, 1
  %t2408 = extractvalue { i64, ptr } %t2406, 0
  %t2409 = extractvalue { i64, ptr } %t2406, 1
  %t2410 = mul i64 %t2408, 1
  %t2411 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2410)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2411, ptr %t2409, i64 %t2410, i1 false)
  %t2412 = insertvalue { i64, ptr } undef, i64 %t2408, 0
  %t2413 = insertvalue { i64, ptr } %t2412, ptr %t2411, 1
  %t2414 = load ptr, ptr %l653, !tbaa !29
  %t2416 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2414, { i64, ptr } %t2413)
  store { i64, ptr } %t2416, ptr %l661
  br label %bb323
bb323:
  call void @__olang_scope_close(ptr %s0)
  %t2417 = load { i64, ptr }, ptr %l661, !tbaa !27
  store { i64, ptr } %t2417, ptr %rv
  br label %ret
bb324:
  %t2418 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2420 = trunc i64 5 to i32
  %t2421 = icmp eq i32 %t2418, %t2420
  br i1 %t2421, label %bb325, label %bb326
bb325:
  br label %bb327
bb326:
  br label %bb332
bb327:
  %t2423 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2423, ptr %l664, !tbaa !29
  %t2424 = load i1, ptr %l9, !tbaa !21
  br i1 %t2424, label %bb328, label %bb329
bb328:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d258, i32 0, i32 1) }, ptr %l666, !tbaa !27
  br label %bb330
bb329:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d259, i32 0, i32 1) }, ptr %l666, !tbaa !27
  br label %bb330
bb330:
  %t2426 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2427 = load ptr, ptr %lp11
  %t2428 = load { i64, ptr }, ptr %t2427, !tbaa !27
  %t2429 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2430 = load { i64, ptr }, ptr %l666, !tbaa !27
  %t2431 = extractvalue { i64, ptr } %t2430, 1
  %t2432 = extractvalue { i64, ptr } %t2430, 0
  %t2434 = extractvalue { i64, ptr } %t2426, 1
  %t2435 = extractvalue { i64, ptr } %t2426, 0
  %t2436 = add i64 %t2432, %t2435
  %t2437 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t2438 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t2439 = add i64 %t2436, %t2438
  %t2441 = extractvalue { i64, ptr } %t2428, 1
  %t2442 = extractvalue { i64, ptr } %t2428, 0
  %t2443 = add i64 %t2439, %t2442
  %t2444 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t2445 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t2446 = add i64 %t2443, %t2445
  %t2448 = extractvalue { i64, ptr } %t2429, 1
  %t2449 = extractvalue { i64, ptr } %t2429, 0
  %t2450 = add i64 %t2446, %t2449
  %t2451 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2450)
  call void @olang_textcopy(ptr %t2451, ptr %t2431, i64 %t2432)
  %t2452 = getelementptr i8, ptr %t2451, i64 %t2432
  call void @olang_textcopy(ptr %t2452, ptr %t2434, i64 %t2435)
  %t2453 = getelementptr i8, ptr %t2452, i64 %t2435
  call void @olang_textcopy(ptr %t2453, ptr %t2437, i64 %t2438)
  %t2454 = getelementptr i8, ptr %t2453, i64 %t2438
  call void @olang_textcopy(ptr %t2454, ptr %t2441, i64 %t2442)
  %t2455 = getelementptr i8, ptr %t2454, i64 %t2442
  call void @olang_textcopy(ptr %t2455, ptr %t2444, i64 %t2445)
  %t2456 = getelementptr i8, ptr %t2455, i64 %t2445
  call void @olang_textcopy(ptr %t2456, ptr %t2448, i64 %t2449)
  %t2457 = insertvalue { i64, ptr } undef, i64 %t2450, 0
  %t2458 = insertvalue { i64, ptr } %t2457, ptr %t2451, 1
  %t2460 = extractvalue { i64, ptr } %t2458, 0
  %t2461 = extractvalue { i64, ptr } %t2458, 1
  %t2462 = mul i64 %t2460, 1
  %t2463 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2462)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2463, ptr %t2461, i64 %t2462, i1 false)
  %t2464 = insertvalue { i64, ptr } undef, i64 %t2460, 0
  %t2465 = insertvalue { i64, ptr } %t2464, ptr %t2463, 1
  %t2466 = load ptr, ptr %l664, !tbaa !29
  %t2468 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2466, { i64, ptr } %t2465)
  store { i64, ptr } %t2468, ptr %l672
  br label %bb331
bb331:
  call void @__olang_scope_close(ptr %s0)
  %t2469 = load { i64, ptr }, ptr %l672, !tbaa !27
  store { i64, ptr } %t2469, ptr %rv
  br label %ret
bb332:
  %t2470 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2472 = trunc i64 6 to i32
  %t2473 = icmp eq i32 %t2470, %t2472
  br i1 %t2473, label %bb333, label %bb334
bb333:
  br label %bb335
bb334:
  br label %bb343
bb335:
  %t2475 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2475, ptr %l675, !tbaa !29
  %t2476 = load i1, ptr %l9, !tbaa !21
  br i1 %t2476, label %bb336, label %bb337
bb336:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d262, i32 0, i32 1) }, ptr %l677, !tbaa !27
  br label %bb341
bb337:
  %t2478 = load i1, ptr %l10, !tbaa !21
  br i1 %t2478, label %bb338, label %bb339
bb338:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d263, i32 0, i32 1) }, ptr %l679, !tbaa !27
  br label %bb340
bb339:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d264, i32 0, i32 1) }, ptr %l679, !tbaa !27
  br label %bb340
bb340:
  %t2480 = load { i64, ptr }, ptr %l679, !tbaa !27
  store { i64, ptr } %t2480, ptr %l677, !tbaa !27
  br label %bb341
bb341:
  %t2481 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2482 = load ptr, ptr %lp11
  %t2483 = load { i64, ptr }, ptr %t2482, !tbaa !27
  %t2484 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2485 = load { i64, ptr }, ptr %l677, !tbaa !27
  %t2486 = extractvalue { i64, ptr } %t2485, 1
  %t2487 = extractvalue { i64, ptr } %t2485, 0
  %t2489 = extractvalue { i64, ptr } %t2481, 1
  %t2490 = extractvalue { i64, ptr } %t2481, 0
  %t2491 = add i64 %t2487, %t2490
  %t2492 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t2493 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t2494 = add i64 %t2491, %t2493
  %t2496 = extractvalue { i64, ptr } %t2483, 1
  %t2497 = extractvalue { i64, ptr } %t2483, 0
  %t2498 = add i64 %t2494, %t2497
  %t2499 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t2500 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
  %t2501 = add i64 %t2498, %t2500
  %t2503 = extractvalue { i64, ptr } %t2484, 1
  %t2504 = extractvalue { i64, ptr } %t2484, 0
  %t2505 = add i64 %t2501, %t2504
  %t2506 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2505)
  call void @olang_textcopy(ptr %t2506, ptr %t2486, i64 %t2487)
  %t2507 = getelementptr i8, ptr %t2506, i64 %t2487
  call void @olang_textcopy(ptr %t2507, ptr %t2489, i64 %t2490)
  %t2508 = getelementptr i8, ptr %t2507, i64 %t2490
  call void @olang_textcopy(ptr %t2508, ptr %t2492, i64 %t2493)
  %t2509 = getelementptr i8, ptr %t2508, i64 %t2493
  call void @olang_textcopy(ptr %t2509, ptr %t2496, i64 %t2497)
  %t2510 = getelementptr i8, ptr %t2509, i64 %t2497
  call void @olang_textcopy(ptr %t2510, ptr %t2499, i64 %t2500)
  %t2511 = getelementptr i8, ptr %t2510, i64 %t2500
  call void @olang_textcopy(ptr %t2511, ptr %t2503, i64 %t2504)
  %t2512 = insertvalue { i64, ptr } undef, i64 %t2505, 0
  %t2513 = insertvalue { i64, ptr } %t2512, ptr %t2506, 1
  %t2515 = extractvalue { i64, ptr } %t2513, 0
  %t2516 = extractvalue { i64, ptr } %t2513, 1
  %t2517 = mul i64 %t2515, 1
  %t2518 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2517)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2518, ptr %t2516, i64 %t2517, i1 false)
  %t2519 = insertvalue { i64, ptr } undef, i64 %t2515, 0
  %t2520 = insertvalue { i64, ptr } %t2519, ptr %t2518, 1
  %t2521 = load ptr, ptr %l675, !tbaa !29
  %t2523 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2521, { i64, ptr } %t2520)
  store { i64, ptr } %t2523, ptr %l685
  br label %bb342
bb342:
  call void @__olang_scope_close(ptr %s0)
  %t2524 = load { i64, ptr }, ptr %l685, !tbaa !27
  store { i64, ptr } %t2524, ptr %rv
  br label %ret
bb343:
  %t2525 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2527 = trunc i64 7 to i32
  %t2528 = icmp eq i32 %t2525, %t2527
  br i1 %t2528, label %bb344, label %bb345
bb344:
  br label %bb346
bb345:
  br label %bb354
bb346:
  %t2530 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2530, ptr %l688, !tbaa !29
  %t2531 = load i1, ptr %l9, !tbaa !21
  br i1 %t2531, label %bb347, label %bb348
bb347:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d267, i32 0, i32 1) }, ptr %l690, !tbaa !27
  br label %bb352
bb348:
  %t2533 = load i1, ptr %l10, !tbaa !21
  br i1 %t2533, label %bb349, label %bb350
bb349:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d268, i32 0, i32 1) }, ptr %l692, !tbaa !27
  br label %bb351
bb350:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d269, i32 0, i32 1) }, ptr %l692, !tbaa !27
  br label %bb351
bb351:
  %t2535 = load { i64, ptr }, ptr %l692, !tbaa !27
  store { i64, ptr } %t2535, ptr %l690, !tbaa !27
  br label %bb352
bb352:
  %t2536 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2537 = load ptr, ptr %lp11
  %t2538 = load { i64, ptr }, ptr %t2537, !tbaa !27
  %t2539 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2540 = load { i64, ptr }, ptr %l690, !tbaa !27
  %t2541 = extractvalue { i64, ptr } %t2540, 1
  %t2542 = extractvalue { i64, ptr } %t2540, 0
  %t2544 = extractvalue { i64, ptr } %t2536, 1
  %t2545 = extractvalue { i64, ptr } %t2536, 0
  %t2546 = add i64 %t2542, %t2545
  %t2547 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t2548 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t2549 = add i64 %t2546, %t2548
  %t2551 = extractvalue { i64, ptr } %t2538, 1
  %t2552 = extractvalue { i64, ptr } %t2538, 0
  %t2553 = add i64 %t2549, %t2552
  %t2554 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t2555 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t2556 = add i64 %t2553, %t2555
  %t2558 = extractvalue { i64, ptr } %t2539, 1
  %t2559 = extractvalue { i64, ptr } %t2539, 0
  %t2560 = add i64 %t2556, %t2559
  %t2561 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2560)
  call void @olang_textcopy(ptr %t2561, ptr %t2541, i64 %t2542)
  %t2562 = getelementptr i8, ptr %t2561, i64 %t2542
  call void @olang_textcopy(ptr %t2562, ptr %t2544, i64 %t2545)
  %t2563 = getelementptr i8, ptr %t2562, i64 %t2545
  call void @olang_textcopy(ptr %t2563, ptr %t2547, i64 %t2548)
  %t2564 = getelementptr i8, ptr %t2563, i64 %t2548
  call void @olang_textcopy(ptr %t2564, ptr %t2551, i64 %t2552)
  %t2565 = getelementptr i8, ptr %t2564, i64 %t2552
  call void @olang_textcopy(ptr %t2565, ptr %t2554, i64 %t2555)
  %t2566 = getelementptr i8, ptr %t2565, i64 %t2555
  call void @olang_textcopy(ptr %t2566, ptr %t2558, i64 %t2559)
  %t2567 = insertvalue { i64, ptr } undef, i64 %t2560, 0
  %t2568 = insertvalue { i64, ptr } %t2567, ptr %t2561, 1
  %t2570 = extractvalue { i64, ptr } %t2568, 0
  %t2571 = extractvalue { i64, ptr } %t2568, 1
  %t2572 = mul i64 %t2570, 1
  %t2573 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2572)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2573, ptr %t2571, i64 %t2572, i1 false)
  %t2574 = insertvalue { i64, ptr } undef, i64 %t2570, 0
  %t2575 = insertvalue { i64, ptr } %t2574, ptr %t2573, 1
  %t2576 = load ptr, ptr %l688, !tbaa !29
  %t2578 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2576, { i64, ptr } %t2575)
  store { i64, ptr } %t2578, ptr %l698
  br label %bb353
bb353:
  call void @__olang_scope_close(ptr %s0)
  %t2579 = load { i64, ptr }, ptr %l698, !tbaa !27
  store { i64, ptr } %t2579, ptr %rv
  br label %ret
bb354:
  %t2580 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2582 = trunc i64 8 to i32
  %t2583 = icmp eq i32 %t2580, %t2582
  br i1 %t2583, label %bb355, label %bb356
bb355:
  br label %bb359
bb356:
  %t2585 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2587 = trunc i64 9 to i32
  %t2588 = icmp eq i32 %t2585, %t2587
  br i1 %t2588, label %bb357, label %bb358
bb357:
  br label %bb359
bb358:
  br label %bb372
bb359:
  store %olang.scope zeroinitializer, ptr %s93
  %t2590 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2590, ptr %l703, !tbaa !29
  %t2591 = load ptr, ptr %l0, !tbaa !29
  %t2592 = load %"compiler/mir:Range", ptr %l3
  %t2595 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t2591, %"compiler/mir:Range" %t2592, i64 1)
  store { i64, [4 x i64] } %t2595, ptr %l706
  br label %bb360
bb360:
  %t2596 = load ptr, ptr %l703, !tbaa !29
  %t2597 = load { i64, [4 x i64] }, ptr %l706
  %t2598 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t2596, { i64, [4 x i64] } %t2597)
  store i32 %t2598, ptr %l707
  br label %bb361
bb361:
  %t2599 = load i32, ptr %l707, !tbaa !23
  store i32 %t2599, ptr %l49, !tbaa !23
  %t2600 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2600, ptr %l708, !tbaa !29
  %t2601 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2601, ptr %l709, !tbaa !29
  %t2602 = load ptr, ptr %l0, !tbaa !29
  %t2603 = load %"compiler/mir:Range", ptr %l3
  %t2606 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t2602, %"compiler/mir:Range" %t2603, i64 1)
  store { i64, [4 x i64] } %t2606, ptr %l712
  br label %bb362
bb362:
  %t2607 = load i32, ptr %l49, !tbaa !23
  %t2608 = load ptr, ptr %l709, !tbaa !29
  %t2609 = load { i64, [4 x i64] }, ptr %l712
  %t2611 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s93, ptr %t2608, { i64, [4 x i64] } %t2609, i32 %t2607)
  store { i64, ptr } %t2611, ptr %l714
  br label %bb363
bb363:
  %t2612 = load { i64, ptr }, ptr %l714, !tbaa !27
  %t2613 = extractvalue { i64, ptr } %t2612, 0
  %t2614 = extractvalue { i64, ptr } %t2612, 1
  %t2615 = mul i64 %t2613, 1
  %t2616 = call ptr @__olang_scope_alloc(ptr %s93, i64 %t2615)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2616, ptr %t2614, i64 %t2615, i1 false)
  %t2617 = insertvalue { i64, ptr } undef, i64 %t2613, 0
  %t2618 = insertvalue { i64, ptr } %t2617, ptr %t2616, 1
  %t2619 = load i32, ptr %l49, !tbaa !23
  %t2620 = load i32, ptr %l7, !tbaa !23
  %t2621 = load ptr, ptr %l708, !tbaa !29
  %t2625 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidth(ptr %v0, ptr %s93, ptr %s93, ptr %t2621, { i64, ptr } %t2618, i32 %t2619, i32 %t2620)
  store { i64, ptr } %t2625, ptr %l718
  br label %bb364
bb364:
  %t2626 = load { i64, ptr }, ptr %l718, !tbaa !27
  store { i64, ptr } %t2626, ptr %l50, !tbaa !27
  %t2627 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2629 = trunc i64 8 to i32
  %t2630 = icmp eq i32 %t2627, %t2629
  br i1 %t2630, label %bb365, label %bb366
bb365:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d272, i32 0, i32 1) }, ptr %l721, !tbaa !27
  br label %bb370
bb366:
  %t2632 = load i1, ptr %l10, !tbaa !21
  br i1 %t2632, label %bb367, label %bb368
bb367:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d273, i32 0, i32 1) }, ptr %l723, !tbaa !27
  br label %bb369
bb368:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d274, i32 0, i32 1) }, ptr %l723, !tbaa !27
  br label %bb369
bb369:
  %t2634 = load { i64, ptr }, ptr %l723, !tbaa !27
  store { i64, ptr } %t2634, ptr %l721, !tbaa !27
  br label %bb370
bb370:
  %t2635 = load { i64, ptr }, ptr %l721, !tbaa !27
  %t2636 = load ptr, ptr %l0, !tbaa !29
  %t2638 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2639 = load ptr, ptr %lp11
  %t2640 = load { i64, ptr }, ptr %t2639, !tbaa !27
  %t2641 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t2643 = extractvalue { i64, ptr } %t2635, 1
  %t2644 = extractvalue { i64, ptr } %t2635, 0
  %t2646 = extractvalue { i64, ptr } %t2638, 1
  %t2647 = extractvalue { i64, ptr } %t2638, 0
  %t2648 = add i64 %t2644, %t2647
  %t2649 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t2650 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
  %t2651 = add i64 %t2648, %t2650
  %t2653 = extractvalue { i64, ptr } %t2640, 1
  %t2654 = extractvalue { i64, ptr } %t2640, 0
  %t2655 = add i64 %t2651, %t2654
  %t2656 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d276, i32 0, i32 1) }, 1
  %t2657 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d276, i32 0, i32 1) }, 0
  %t2658 = add i64 %t2655, %t2657
  %t2660 = extractvalue { i64, ptr } %t2641, 1
  %t2661 = extractvalue { i64, ptr } %t2641, 0
  %t2662 = add i64 %t2658, %t2661
  %t2663 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2662)
  call void @olang_textcopy(ptr %t2663, ptr %t2643, i64 %t2644)
  %t2664 = getelementptr i8, ptr %t2663, i64 %t2644
  call void @olang_textcopy(ptr %t2664, ptr %t2646, i64 %t2647)
  %t2665 = getelementptr i8, ptr %t2664, i64 %t2647
  call void @olang_textcopy(ptr %t2665, ptr %t2649, i64 %t2650)
  %t2666 = getelementptr i8, ptr %t2665, i64 %t2650
  call void @olang_textcopy(ptr %t2666, ptr %t2653, i64 %t2654)
  %t2667 = getelementptr i8, ptr %t2666, i64 %t2654
  call void @olang_textcopy(ptr %t2667, ptr %t2656, i64 %t2657)
  %t2668 = getelementptr i8, ptr %t2667, i64 %t2657
  call void @olang_textcopy(ptr %t2668, ptr %t2660, i64 %t2661)
  %t2669 = insertvalue { i64, ptr } undef, i64 %t2662, 0
  %t2670 = insertvalue { i64, ptr } %t2669, ptr %t2663, 1
  %t2672 = extractvalue { i64, ptr } %t2670, 0
  %t2673 = extractvalue { i64, ptr } %t2670, 1
  %t2674 = mul i64 %t2672, 1
  %t2675 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2674)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2675, ptr %t2673, i64 %t2674, i1 false)
  %t2676 = insertvalue { i64, ptr } undef, i64 %t2672, 0
  %t2677 = insertvalue { i64, ptr } %t2676, ptr %t2675, 1
  %t2680 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2636, { i64, ptr } %t2677)
  store { i64, ptr } %t2680, ptr %l731
  br label %bb371
bb371:
  call void @__olang_scope_close(ptr %s93)
  call void @__olang_scope_close(ptr %s0)
  %t2681 = load { i64, ptr }, ptr %l731, !tbaa !27
  store { i64, ptr } %t2681, ptr %rv
  br label %ret
bb372:
  %t2682 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2684 = trunc i64 10 to i32
  %t2685 = icmp eq i32 %t2682, %t2684
  br i1 %t2685, label %bb373, label %bb374
bb373:
  br label %bb375
bb374:
  br label %bb377
bb375:
  %t2687 = load ptr, ptr %l0, !tbaa !29
  %t2688 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2689 = load ptr, ptr %lp11
  %t2690 = load { i64, ptr }, ptr %t2689, !tbaa !27
  %t2691 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2692 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d277, i32 0, i32 1) }, 1
  %t2693 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d277, i32 0, i32 1) }, 0
  %t2695 = extractvalue { i64, ptr } %t2688, 1
  %t2696 = extractvalue { i64, ptr } %t2688, 0
  %t2697 = add i64 %t2693, %t2696
  %t2698 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t2699 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t2700 = add i64 %t2697, %t2699
  %t2702 = extractvalue { i64, ptr } %t2690, 1
  %t2703 = extractvalue { i64, ptr } %t2690, 0
  %t2704 = add i64 %t2700, %t2703
  %t2705 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t2706 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t2707 = add i64 %t2704, %t2706
  %t2709 = extractvalue { i64, ptr } %t2691, 1
  %t2710 = extractvalue { i64, ptr } %t2691, 0
  %t2711 = add i64 %t2707, %t2710
  %t2712 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2711)
  call void @olang_textcopy(ptr %t2712, ptr %t2692, i64 %t2693)
  %t2713 = getelementptr i8, ptr %t2712, i64 %t2693
  call void @olang_textcopy(ptr %t2713, ptr %t2695, i64 %t2696)
  %t2714 = getelementptr i8, ptr %t2713, i64 %t2696
  call void @olang_textcopy(ptr %t2714, ptr %t2698, i64 %t2699)
  %t2715 = getelementptr i8, ptr %t2714, i64 %t2699
  call void @olang_textcopy(ptr %t2715, ptr %t2702, i64 %t2703)
  %t2716 = getelementptr i8, ptr %t2715, i64 %t2703
  call void @olang_textcopy(ptr %t2716, ptr %t2705, i64 %t2706)
  %t2717 = getelementptr i8, ptr %t2716, i64 %t2706
  call void @olang_textcopy(ptr %t2717, ptr %t2709, i64 %t2710)
  %t2718 = insertvalue { i64, ptr } undef, i64 %t2711, 0
  %t2719 = insertvalue { i64, ptr } %t2718, ptr %t2712, 1
  %t2721 = extractvalue { i64, ptr } %t2719, 0
  %t2722 = extractvalue { i64, ptr } %t2719, 1
  %t2723 = mul i64 %t2721, 1
  %t2724 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2723)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2724, ptr %t2722, i64 %t2723, i1 false)
  %t2725 = insertvalue { i64, ptr } undef, i64 %t2721, 0
  %t2726 = insertvalue { i64, ptr } %t2725, ptr %t2724, 1
  %t2729 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2687, { i64, ptr } %t2726)
  store { i64, ptr } %t2729, ptr %l740
  br label %bb376
bb376:
  call void @__olang_scope_close(ptr %s0)
  %t2730 = load { i64, ptr }, ptr %l740, !tbaa !27
  store { i64, ptr } %t2730, ptr %rv
  br label %ret
bb377:
  %t2731 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2733 = trunc i64 11 to i32
  %t2734 = icmp eq i32 %t2731, %t2733
  br i1 %t2734, label %bb378, label %bb379
bb378:
  br label %bb380
bb379:
  br label %bb382
bb380:
  %t2736 = load ptr, ptr %l0, !tbaa !29
  %t2737 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2738 = load ptr, ptr %lp11
  %t2739 = load { i64, ptr }, ptr %t2738, !tbaa !27
  %t2740 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2741 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t2742 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t2744 = extractvalue { i64, ptr } %t2737, 1
  %t2745 = extractvalue { i64, ptr } %t2737, 0
  %t2746 = add i64 %t2742, %t2745
  %t2747 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t2748 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t2749 = add i64 %t2746, %t2748
  %t2751 = extractvalue { i64, ptr } %t2739, 1
  %t2752 = extractvalue { i64, ptr } %t2739, 0
  %t2753 = add i64 %t2749, %t2752
  %t2754 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d282, i32 0, i32 1) }, 1
  %t2755 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d282, i32 0, i32 1) }, 0
  %t2756 = add i64 %t2753, %t2755
  %t2758 = extractvalue { i64, ptr } %t2740, 1
  %t2759 = extractvalue { i64, ptr } %t2740, 0
  %t2760 = add i64 %t2756, %t2759
  %t2761 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2760)
  call void @olang_textcopy(ptr %t2761, ptr %t2741, i64 %t2742)
  %t2762 = getelementptr i8, ptr %t2761, i64 %t2742
  call void @olang_textcopy(ptr %t2762, ptr %t2744, i64 %t2745)
  %t2763 = getelementptr i8, ptr %t2762, i64 %t2745
  call void @olang_textcopy(ptr %t2763, ptr %t2747, i64 %t2748)
  %t2764 = getelementptr i8, ptr %t2763, i64 %t2748
  call void @olang_textcopy(ptr %t2764, ptr %t2751, i64 %t2752)
  %t2765 = getelementptr i8, ptr %t2764, i64 %t2752
  call void @olang_textcopy(ptr %t2765, ptr %t2754, i64 %t2755)
  %t2766 = getelementptr i8, ptr %t2765, i64 %t2755
  call void @olang_textcopy(ptr %t2766, ptr %t2758, i64 %t2759)
  %t2767 = insertvalue { i64, ptr } undef, i64 %t2760, 0
  %t2768 = insertvalue { i64, ptr } %t2767, ptr %t2761, 1
  %t2770 = extractvalue { i64, ptr } %t2768, 0
  %t2771 = extractvalue { i64, ptr } %t2768, 1
  %t2772 = mul i64 %t2770, 1
  %t2773 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2772)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2773, ptr %t2771, i64 %t2772, i1 false)
  %t2774 = insertvalue { i64, ptr } undef, i64 %t2770, 0
  %t2775 = insertvalue { i64, ptr } %t2774, ptr %t2773, 1
  %t2778 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2736, { i64, ptr } %t2775)
  store { i64, ptr } %t2778, ptr %l749
  br label %bb381
bb381:
  call void @__olang_scope_close(ptr %s0)
  %t2779 = load { i64, ptr }, ptr %l749, !tbaa !27
  store { i64, ptr } %t2779, ptr %rv
  br label %ret
bb382:
  %t2780 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2782 = trunc i64 12 to i32
  %t2783 = icmp eq i32 %t2780, %t2782
  br i1 %t2783, label %bb383, label %bb384
bb383:
  br label %bb385
bb384:
  br label %bb387
bb385:
  %t2785 = load ptr, ptr %l0, !tbaa !29
  %t2786 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2787 = load ptr, ptr %lp11
  %t2788 = load { i64, ptr }, ptr %t2787, !tbaa !27
  %t2789 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2790 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t2791 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t2793 = extractvalue { i64, ptr } %t2786, 1
  %t2794 = extractvalue { i64, ptr } %t2786, 0
  %t2795 = add i64 %t2791, %t2794
  %t2796 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t2797 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t2798 = add i64 %t2795, %t2797
  %t2800 = extractvalue { i64, ptr } %t2788, 1
  %t2801 = extractvalue { i64, ptr } %t2788, 0
  %t2802 = add i64 %t2798, %t2801
  %t2803 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t2804 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t2805 = add i64 %t2802, %t2804
  %t2807 = extractvalue { i64, ptr } %t2789, 1
  %t2808 = extractvalue { i64, ptr } %t2789, 0
  %t2809 = add i64 %t2805, %t2808
  %t2810 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2809)
  call void @olang_textcopy(ptr %t2810, ptr %t2790, i64 %t2791)
  %t2811 = getelementptr i8, ptr %t2810, i64 %t2791
  call void @olang_textcopy(ptr %t2811, ptr %t2793, i64 %t2794)
  %t2812 = getelementptr i8, ptr %t2811, i64 %t2794
  call void @olang_textcopy(ptr %t2812, ptr %t2796, i64 %t2797)
  %t2813 = getelementptr i8, ptr %t2812, i64 %t2797
  call void @olang_textcopy(ptr %t2813, ptr %t2800, i64 %t2801)
  %t2814 = getelementptr i8, ptr %t2813, i64 %t2801
  call void @olang_textcopy(ptr %t2814, ptr %t2803, i64 %t2804)
  %t2815 = getelementptr i8, ptr %t2814, i64 %t2804
  call void @olang_textcopy(ptr %t2815, ptr %t2807, i64 %t2808)
  %t2816 = insertvalue { i64, ptr } undef, i64 %t2809, 0
  %t2817 = insertvalue { i64, ptr } %t2816, ptr %t2810, 1
  %t2819 = extractvalue { i64, ptr } %t2817, 0
  %t2820 = extractvalue { i64, ptr } %t2817, 1
  %t2821 = mul i64 %t2819, 1
  %t2822 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t2821)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2822, ptr %t2820, i64 %t2821, i1 false)
  %t2823 = insertvalue { i64, ptr } undef, i64 %t2819, 0
  %t2824 = insertvalue { i64, ptr } %t2823, ptr %t2822, 1
  %t2827 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t2785, { i64, ptr } %t2824)
  store { i64, ptr } %t2827, ptr %l758
  br label %bb386
bb386:
  call void @__olang_scope_close(ptr %s0)
  %t2828 = load { i64, ptr }, ptr %l758, !tbaa !27
  store { i64, ptr } %t2828, ptr %rv
  br label %ret
bb387:
  %t2829 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2831 = trunc i64 13 to i32
  %t2832 = icmp eq i32 %t2829, %t2831
  br i1 %t2832, label %bb388, label %bb389
bb388:
  br label %bb400
bb389:
  %t2834 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2836 = trunc i64 14 to i32
  %t2837 = icmp eq i32 %t2834, %t2836
  br i1 %t2837, label %bb390, label %bb391
bb390:
  br label %bb400
bb391:
  %t2839 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2841 = trunc i64 15 to i32
  %t2842 = icmp eq i32 %t2839, %t2841
  br i1 %t2842, label %bb392, label %bb393
bb392:
  br label %bb400
bb393:
  %t2844 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2846 = trunc i64 16 to i32
  %t2847 = icmp eq i32 %t2844, %t2846
  br i1 %t2847, label %bb394, label %bb395
bb394:
  br label %bb400
bb395:
  %t2849 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2851 = trunc i64 17 to i32
  %t2852 = icmp eq i32 %t2849, %t2851
  br i1 %t2852, label %bb396, label %bb397
bb396:
  br label %bb400
bb397:
  %t2854 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2856 = trunc i64 18 to i32
  %t2857 = icmp eq i32 %t2854, %t2856
  br i1 %t2857, label %bb398, label %bb399
bb398:
  br label %bb400
bb399:
  br label %bb402
bb400:
  %t2859 = load ptr, ptr %l0, !tbaa !29
  %t2860 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2861 = load i32, ptr %l7, !tbaa !23
  %t2862 = load ptr, ptr %lp11
  %t2863 = load { i64, ptr }, ptr %t2862, !tbaa !27
  %t2864 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2870 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecompare(ptr %v0, ptr %v1, ptr %s0, ptr %v1, ptr %t2859, i32 %t2860, i32 %t2861, { i64, ptr } %t2863, { i64, ptr } %t2864)
  store { i64, ptr } %t2870, ptr %l776
  br label %bb401
bb401:
  call void @__olang_scope_close(ptr %s0)
  %t2871 = load { i64, ptr }, ptr %l776, !tbaa !27
  store { i64, ptr } %t2871, ptr %rv
  br label %ret
bb402:
  %t2872 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2874 = trunc i64 19 to i32
  %t2875 = icmp eq i32 %t2872, %t2874
  br i1 %t2875, label %bb403, label %bb404
bb403:
  br label %bb405
bb404:
  br label %bb426
bb405:
  store %olang.scope zeroinitializer, ptr %s102
  %t2877 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2879 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s102, { i64, ptr } %t2877, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d286, i32 0, i32 1) })
  store i1 %t2879, ptr %l780
  br label %bb406
bb406:
  %t2880 = load i1, ptr %l780, !tbaa !21
  br i1 %t2880, label %bb407, label %bb408
bb407:
  store i1 true, ptr %l781, !tbaa !21
  br label %bb410
bb408:
  %t2881 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2883 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s102, { i64, ptr } %t2881, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d287, i32 0, i32 1) })
  store i1 %t2883, ptr %l783
  br label %bb409
bb409:
  %t2884 = load i1, ptr %l783, !tbaa !21
  store i1 %t2884, ptr %l781, !tbaa !21
  br label %bb410
bb410:
  %t2885 = load i1, ptr %l781, !tbaa !21
  br i1 %t2885, label %bb411, label %bb412
bb411:
  store %olang.scope zeroinitializer, ptr %s103
  %t2886 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2888 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s103, { i64, ptr } %t2886, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d288, i32 0, i32 1) })
  store i1 %t2888, ptr %l785
  br label %bb413
bb412:
  br label %bb424
bb413:
  %t2889 = load i1, ptr %l785, !tbaa !21
  br i1 %t2889, label %bb414, label %bb415
bb414:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d289, i32 0, i32 1) }, ptr %l786, !tbaa !27
  br label %bb416
bb415:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, ptr %l786, !tbaa !27
  br label %bb416
bb416:
  %t2890 = load { i64, ptr }, ptr %l786, !tbaa !27
  %t2891 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2891, ptr %l787, !tbaa !29
  store { i64, ptr } %t2890, ptr %l788, !tbaa !27
  %t2893 = load ptr, ptr %l0, !tbaa !29
  %t2894 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2895 = load ptr, ptr %lp11
  %t2896 = load { i64, ptr }, ptr %t2895, !tbaa !27
  %t2897 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t2898 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t2900 = extractvalue { i64, ptr } %t2894, 1
  %t2901 = extractvalue { i64, ptr } %t2894, 0
  %t2902 = add i64 %t2898, %t2901
  %t2903 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t2904 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t2905 = add i64 %t2902, %t2904
  %t2907 = extractvalue { i64, ptr } %t2896, 1
  %t2908 = extractvalue { i64, ptr } %t2896, 0
  %t2909 = add i64 %t2905, %t2908
  %t2910 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t2911 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t2912 = add i64 %t2909, %t2911
  %t2913 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t2912)
  call void @olang_textcopy(ptr %t2913, ptr %t2897, i64 %t2898)
  %t2914 = getelementptr i8, ptr %t2913, i64 %t2898
  call void @olang_textcopy(ptr %t2914, ptr %t2900, i64 %t2901)
  %t2915 = getelementptr i8, ptr %t2914, i64 %t2901
  call void @olang_textcopy(ptr %t2915, ptr %t2903, i64 %t2904)
  %t2916 = getelementptr i8, ptr %t2915, i64 %t2904
  call void @olang_textcopy(ptr %t2916, ptr %t2907, i64 %t2908)
  %t2917 = getelementptr i8, ptr %t2916, i64 %t2908
  call void @olang_textcopy(ptr %t2917, ptr %t2910, i64 %t2911)
  %t2918 = insertvalue { i64, ptr } undef, i64 %t2912, 0
  %t2919 = insertvalue { i64, ptr } %t2918, ptr %t2913, 1
  %t2921 = extractvalue { i64, ptr } %t2919, 0
  %t2922 = extractvalue { i64, ptr } %t2919, 1
  %t2923 = mul i64 %t2921, 1
  %t2924 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t2923)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2924, ptr %t2922, i64 %t2923, i1 false)
  %t2925 = insertvalue { i64, ptr } undef, i64 %t2921, 0
  %t2926 = insertvalue { i64, ptr } %t2925, ptr %t2924, 1
  %t2929 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s103, ptr %s103, ptr %t2893, { i64, ptr } %t2926)
  store { i64, ptr } %t2929, ptr %l794
  br label %bb417
bb417:
  %t2930 = load ptr, ptr %l0, !tbaa !29
  %t2931 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t2932 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t2933 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t2934 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t2936 = extractvalue { i64, ptr } %t2931, 1
  %t2937 = extractvalue { i64, ptr } %t2931, 0
  %t2938 = add i64 %t2934, %t2937
  %t2939 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t2940 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t2941 = add i64 %t2938, %t2940
  %t2943 = extractvalue { i64, ptr } %t2932, 1
  %t2944 = extractvalue { i64, ptr } %t2932, 0
  %t2945 = add i64 %t2941, %t2944
  %t2946 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t2947 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t2948 = add i64 %t2945, %t2947
  %t2949 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t2948)
  call void @olang_textcopy(ptr %t2949, ptr %t2933, i64 %t2934)
  %t2950 = getelementptr i8, ptr %t2949, i64 %t2934
  call void @olang_textcopy(ptr %t2950, ptr %t2936, i64 %t2937)
  %t2951 = getelementptr i8, ptr %t2950, i64 %t2937
  call void @olang_textcopy(ptr %t2951, ptr %t2939, i64 %t2940)
  %t2952 = getelementptr i8, ptr %t2951, i64 %t2940
  call void @olang_textcopy(ptr %t2952, ptr %t2943, i64 %t2944)
  %t2953 = getelementptr i8, ptr %t2952, i64 %t2944
  call void @olang_textcopy(ptr %t2953, ptr %t2946, i64 %t2947)
  %t2954 = insertvalue { i64, ptr } undef, i64 %t2948, 0
  %t2955 = insertvalue { i64, ptr } %t2954, ptr %t2949, 1
  %t2957 = extractvalue { i64, ptr } %t2955, 0
  %t2958 = extractvalue { i64, ptr } %t2955, 1
  %t2959 = mul i64 %t2957, 1
  %t2960 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t2959)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2960, ptr %t2958, i64 %t2959, i1 false)
  %t2961 = insertvalue { i64, ptr } undef, i64 %t2957, 0
  %t2962 = insertvalue { i64, ptr } %t2961, ptr %t2960, 1
  %t2965 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s103, ptr %s103, ptr %t2930, { i64, ptr } %t2962)
  store { i64, ptr } %t2965, ptr %l800
  br label %bb418
bb418:
  %t2966 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t2967 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t2968 = load { i64, ptr }, ptr %l788, !tbaa !27
  %t2969 = extractvalue { i64, ptr } %t2968, 1
  %t2970 = extractvalue { i64, ptr } %t2968, 0
  %t2971 = add i64 %t2967, %t2970
  %t2972 = load { i64, ptr }, ptr %l794, !tbaa !27
  %t2973 = extractvalue { i64, ptr } %t2972, 1
  %t2974 = extractvalue { i64, ptr } %t2972, 0
  %t2975 = add i64 %t2971, %t2974
  %t2976 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t2977 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
  %t2978 = add i64 %t2975, %t2977
  %t2979 = load { i64, ptr }, ptr %l800, !tbaa !27
  %t2980 = extractvalue { i64, ptr } %t2979, 1
  %t2981 = extractvalue { i64, ptr } %t2979, 0
  %t2982 = add i64 %t2978, %t2981
  %t2983 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t2982)
  call void @olang_textcopy(ptr %t2983, ptr %t2966, i64 %t2967)
  %t2984 = getelementptr i8, ptr %t2983, i64 %t2967
  call void @olang_textcopy(ptr %t2984, ptr %t2969, i64 %t2970)
  %t2985 = getelementptr i8, ptr %t2984, i64 %t2970
  call void @olang_textcopy(ptr %t2985, ptr %t2973, i64 %t2974)
  %t2986 = getelementptr i8, ptr %t2985, i64 %t2974
  call void @olang_textcopy(ptr %t2986, ptr %t2976, i64 %t2977)
  %t2987 = getelementptr i8, ptr %t2986, i64 %t2977
  call void @olang_textcopy(ptr %t2987, ptr %t2980, i64 %t2981)
  %t2988 = insertvalue { i64, ptr } undef, i64 %t2982, 0
  %t2989 = insertvalue { i64, ptr } %t2988, ptr %t2983, 1
  %t2991 = extractvalue { i64, ptr } %t2989, 0
  %t2992 = extractvalue { i64, ptr } %t2989, 1
  %t2993 = mul i64 %t2991, 1
  %t2994 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t2993)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2994, ptr %t2992, i64 %t2993, i1 false)
  %t2995 = insertvalue { i64, ptr } undef, i64 %t2991, 0
  %t2996 = insertvalue { i64, ptr } %t2995, ptr %t2994, 1
  %t2997 = load ptr, ptr %l787, !tbaa !29
  %t2999 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s103, ptr %s103, ptr %t2997, { i64, ptr } %t2996)
  store { i64, ptr } %t2999, ptr %l803
  br label %bb419
bb419:
  %t3000 = load { i64, ptr }, ptr %l803, !tbaa !27
  store { i64, ptr } %t3000, ptr %l53, !tbaa !27
  %t3001 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3001, ptr %l804, !tbaa !29
  %t3002 = load ptr, ptr %l0, !tbaa !29
  %t3003 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t3004 = load ptr, ptr %lp11
  %t3005 = load { i64, ptr }, ptr %t3004, !tbaa !27
  %t3006 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t3007 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t3009 = extractvalue { i64, ptr } %t3003, 1
  %t3010 = extractvalue { i64, ptr } %t3003, 0
  %t3011 = add i64 %t3007, %t3010
  %t3012 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t3013 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t3014 = add i64 %t3011, %t3013
  %t3016 = extractvalue { i64, ptr } %t3005, 1
  %t3017 = extractvalue { i64, ptr } %t3005, 0
  %t3018 = add i64 %t3014, %t3017
  %t3019 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t3020 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t3021 = add i64 %t3018, %t3020
  %t3022 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t3021)
  call void @olang_textcopy(ptr %t3022, ptr %t3006, i64 %t3007)
  %t3023 = getelementptr i8, ptr %t3022, i64 %t3007
  call void @olang_textcopy(ptr %t3023, ptr %t3009, i64 %t3010)
  %t3024 = getelementptr i8, ptr %t3023, i64 %t3010
  call void @olang_textcopy(ptr %t3024, ptr %t3012, i64 %t3013)
  %t3025 = getelementptr i8, ptr %t3024, i64 %t3013
  call void @olang_textcopy(ptr %t3025, ptr %t3016, i64 %t3017)
  %t3026 = getelementptr i8, ptr %t3025, i64 %t3017
  call void @olang_textcopy(ptr %t3026, ptr %t3019, i64 %t3020)
  %t3027 = insertvalue { i64, ptr } undef, i64 %t3021, 0
  %t3028 = insertvalue { i64, ptr } %t3027, ptr %t3022, 1
  %t3030 = extractvalue { i64, ptr } %t3028, 0
  %t3031 = extractvalue { i64, ptr } %t3028, 1
  %t3032 = mul i64 %t3030, 1
  %t3033 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t3032)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3033, ptr %t3031, i64 %t3032, i1 false)
  %t3034 = insertvalue { i64, ptr } undef, i64 %t3030, 0
  %t3035 = insertvalue { i64, ptr } %t3034, ptr %t3033, 1
  %t3038 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s103, ptr %s103, ptr %t3002, { i64, ptr } %t3035)
  store { i64, ptr } %t3038, ptr %l810
  br label %bb420
bb420:
  %t3039 = load ptr, ptr %l0, !tbaa !29
  %t3040 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t3041 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t3042 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d302, i32 0, i32 1) }, 1
  %t3043 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d302, i32 0, i32 1) }, 0
  %t3045 = extractvalue { i64, ptr } %t3040, 1
  %t3046 = extractvalue { i64, ptr } %t3040, 0
  %t3047 = add i64 %t3043, %t3046
  %t3048 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t3049 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t3050 = add i64 %t3047, %t3049
  %t3052 = extractvalue { i64, ptr } %t3041, 1
  %t3053 = extractvalue { i64, ptr } %t3041, 0
  %t3054 = add i64 %t3050, %t3053
  %t3055 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t3056 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t3057 = add i64 %t3054, %t3056
  %t3058 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t3057)
  call void @olang_textcopy(ptr %t3058, ptr %t3042, i64 %t3043)
  %t3059 = getelementptr i8, ptr %t3058, i64 %t3043
  call void @olang_textcopy(ptr %t3059, ptr %t3045, i64 %t3046)
  %t3060 = getelementptr i8, ptr %t3059, i64 %t3046
  call void @olang_textcopy(ptr %t3060, ptr %t3048, i64 %t3049)
  %t3061 = getelementptr i8, ptr %t3060, i64 %t3049
  call void @olang_textcopy(ptr %t3061, ptr %t3052, i64 %t3053)
  %t3062 = getelementptr i8, ptr %t3061, i64 %t3053
  call void @olang_textcopy(ptr %t3062, ptr %t3055, i64 %t3056)
  %t3063 = insertvalue { i64, ptr } undef, i64 %t3057, 0
  %t3064 = insertvalue { i64, ptr } %t3063, ptr %t3058, 1
  %t3066 = extractvalue { i64, ptr } %t3064, 0
  %t3067 = extractvalue { i64, ptr } %t3064, 1
  %t3068 = mul i64 %t3066, 1
  %t3069 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t3068)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3069, ptr %t3067, i64 %t3068, i1 false)
  %t3070 = insertvalue { i64, ptr } undef, i64 %t3066, 0
  %t3071 = insertvalue { i64, ptr } %t3070, ptr %t3069, 1
  %t3074 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s103, ptr %s103, ptr %t3039, { i64, ptr } %t3071)
  store { i64, ptr } %t3074, ptr %l816
  br label %bb421
bb421:
  %t3075 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t3076 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
  %t3077 = load { i64, ptr }, ptr %l810, !tbaa !27
  %t3078 = extractvalue { i64, ptr } %t3077, 1
  %t3079 = extractvalue { i64, ptr } %t3077, 0
  %t3080 = add i64 %t3076, %t3079
  %t3081 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d306, i32 0, i32 1) }, 1
  %t3082 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d306, i32 0, i32 1) }, 0
  %t3083 = add i64 %t3080, %t3082
  %t3084 = load { i64, ptr }, ptr %l816, !tbaa !27
  %t3085 = extractvalue { i64, ptr } %t3084, 1
  %t3086 = extractvalue { i64, ptr } %t3084, 0
  %t3087 = add i64 %t3083, %t3086
  %t3088 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t3087)
  call void @olang_textcopy(ptr %t3088, ptr %t3075, i64 %t3076)
  %t3089 = getelementptr i8, ptr %t3088, i64 %t3076
  call void @olang_textcopy(ptr %t3089, ptr %t3078, i64 %t3079)
  %t3090 = getelementptr i8, ptr %t3089, i64 %t3079
  call void @olang_textcopy(ptr %t3090, ptr %t3081, i64 %t3082)
  %t3091 = getelementptr i8, ptr %t3090, i64 %t3082
  call void @olang_textcopy(ptr %t3091, ptr %t3085, i64 %t3086)
  %t3092 = insertvalue { i64, ptr } undef, i64 %t3087, 0
  %t3093 = insertvalue { i64, ptr } %t3092, ptr %t3088, 1
  %t3095 = extractvalue { i64, ptr } %t3093, 0
  %t3096 = extractvalue { i64, ptr } %t3093, 1
  %t3097 = mul i64 %t3095, 1
  %t3098 = call ptr @__olang_scope_alloc(ptr %s103, i64 %t3097)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3098, ptr %t3096, i64 %t3097, i1 false)
  %t3099 = insertvalue { i64, ptr } undef, i64 %t3095, 0
  %t3100 = insertvalue { i64, ptr } %t3099, ptr %t3098, 1
  %t3101 = load ptr, ptr %l804, !tbaa !29
  %t3103 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s103, ptr %s103, ptr %t3101, { i64, ptr } %t3100)
  store { i64, ptr } %t3103, ptr %l819
  br label %bb422
bb422:
  %t3104 = load { i64, ptr }, ptr %l819, !tbaa !27
  %t3105 = load ptr, ptr %l0, !tbaa !29
  %t3106 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t3108 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t3109 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t3111 = extractvalue { i64, ptr } %t3106, 1
  %t3112 = extractvalue { i64, ptr } %t3106, 0
  %t3113 = add i64 %t3109, %t3112
  %t3114 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t3115 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t3116 = add i64 %t3113, %t3115
  %t3118 = extractvalue { i64, ptr } %t3104, 1
  %t3119 = extractvalue { i64, ptr } %t3104, 0
  %t3120 = add i64 %t3116, %t3119
  %t3121 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3120)
  call void @olang_textcopy(ptr %t3121, ptr %t3108, i64 %t3109)
  %t3122 = getelementptr i8, ptr %t3121, i64 %t3109
  call void @olang_textcopy(ptr %t3122, ptr %t3111, i64 %t3112)
  %t3123 = getelementptr i8, ptr %t3122, i64 %t3112
  call void @olang_textcopy(ptr %t3123, ptr %t3114, i64 %t3115)
  %t3124 = getelementptr i8, ptr %t3123, i64 %t3115
  call void @olang_textcopy(ptr %t3124, ptr %t3118, i64 %t3119)
  %t3125 = insertvalue { i64, ptr } undef, i64 %t3120, 0
  %t3126 = insertvalue { i64, ptr } %t3125, ptr %t3121, 1
  %t3128 = extractvalue { i64, ptr } %t3126, 0
  %t3129 = extractvalue { i64, ptr } %t3126, 1
  %t3130 = mul i64 %t3128, 1
  %t3131 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3131, ptr %t3129, i64 %t3130, i1 false)
  %t3132 = insertvalue { i64, ptr } undef, i64 %t3128, 0
  %t3133 = insertvalue { i64, ptr } %t3132, ptr %t3131, 1
  %t3136 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t3105, { i64, ptr } %t3133)
  store { i64, ptr } %t3136, ptr %l825
  br label %bb423
bb423:
  call void @__olang_scope_close(ptr %s103)
  call void @__olang_scope_close(ptr %s102)
  call void @__olang_scope_close(ptr %s0)
  %t3137 = load { i64, ptr }, ptr %l825, !tbaa !27
  store { i64, ptr } %t3137, ptr %rv
  br label %ret
bb424:
  %t3138 = load ptr, ptr %l0, !tbaa !29
  %t3139 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t3140 = load ptr, ptr %lp11
  %t3141 = load { i64, ptr }, ptr %t3140, !tbaa !27
  %t3142 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t3143 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t3144 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t3146 = extractvalue { i64, ptr } %t3139, 1
  %t3147 = extractvalue { i64, ptr } %t3139, 0
  %t3148 = add i64 %t3144, %t3147
  %t3149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t3150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t3151 = add i64 %t3148, %t3150
  %t3153 = extractvalue { i64, ptr } %t3141, 1
  %t3154 = extractvalue { i64, ptr } %t3141, 0
  %t3155 = add i64 %t3151, %t3154
  %t3156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t3157 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t3158 = add i64 %t3155, %t3157
  %t3160 = extractvalue { i64, ptr } %t3142, 1
  %t3161 = extractvalue { i64, ptr } %t3142, 0
  %t3162 = add i64 %t3158, %t3161
  %t3163 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3162)
  call void @olang_textcopy(ptr %t3163, ptr %t3143, i64 %t3144)
  %t3164 = getelementptr i8, ptr %t3163, i64 %t3144
  call void @olang_textcopy(ptr %t3164, ptr %t3146, i64 %t3147)
  %t3165 = getelementptr i8, ptr %t3164, i64 %t3147
  call void @olang_textcopy(ptr %t3165, ptr %t3149, i64 %t3150)
  %t3166 = getelementptr i8, ptr %t3165, i64 %t3150
  call void @olang_textcopy(ptr %t3166, ptr %t3153, i64 %t3154)
  %t3167 = getelementptr i8, ptr %t3166, i64 %t3154
  call void @olang_textcopy(ptr %t3167, ptr %t3156, i64 %t3157)
  %t3168 = getelementptr i8, ptr %t3167, i64 %t3157
  call void @olang_textcopy(ptr %t3168, ptr %t3160, i64 %t3161)
  %t3169 = insertvalue { i64, ptr } undef, i64 %t3162, 0
  %t3170 = insertvalue { i64, ptr } %t3169, ptr %t3163, 1
  %t3172 = extractvalue { i64, ptr } %t3170, 0
  %t3173 = extractvalue { i64, ptr } %t3170, 1
  %t3174 = mul i64 %t3172, 1
  %t3175 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3175, ptr %t3173, i64 %t3174, i1 false)
  %t3176 = insertvalue { i64, ptr } undef, i64 %t3172, 0
  %t3177 = insertvalue { i64, ptr } %t3176, ptr %t3175, 1
  %t3180 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t3138, { i64, ptr } %t3177)
  store { i64, ptr } %t3180, ptr %l832
  br label %bb425
bb425:
  call void @__olang_scope_close(ptr %s102)
  call void @__olang_scope_close(ptr %s0)
  %t3181 = load { i64, ptr }, ptr %l832, !tbaa !27
  store { i64, ptr } %t3181, ptr %rv
  br label %ret
bb426:
  %t3182 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3184 = trunc i64 23 to i32
  %t3185 = icmp eq i32 %t3182, %t3184
  br i1 %t3185, label %bb427, label %bb428
bb427:
  br label %bb429
bb428:
  br label %bb438
bb429:
  store %olang.scope zeroinitializer, ptr %s112
  %t3187 = load ptr, ptr %l0, !tbaa !29
  %t3189 = getelementptr %"compiler/emit:fnEm", ptr %t3187, i32 0, i32 0
  %t3190 = load ptr, ptr %t3189, !tbaa !29
  %t3191 = load i32, ptr %l7, !tbaa !23
  %t3194 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %t3190, i32 %t3191)
  store i1 %t3194, ptr %l838
  br label %bb430
bb430:
  %t3195 = load i1, ptr %l838, !tbaa !21
  br i1 %t3195, label %bb431, label %bb432
bb431:
  store %olang.scope zeroinitializer, ptr %s113
  %t3196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3196, ptr %l839, !tbaa !29
  %t3197 = load ptr, ptr %l0, !tbaa !29
  %t3198 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t3199 = load ptr, ptr %lp11
  %t3200 = load { i64, ptr }, ptr %t3199, !tbaa !27
  %t3201 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d312, i32 0, i32 1) }, 1
  %t3202 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d312, i32 0, i32 1) }, 0
  %t3204 = extractvalue { i64, ptr } %t3198, 1
  %t3205 = extractvalue { i64, ptr } %t3198, 0
  %t3206 = add i64 %t3202, %t3205
  %t3207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t3208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
  %t3209 = add i64 %t3206, %t3208
  %t3211 = extractvalue { i64, ptr } %t3200, 1
  %t3212 = extractvalue { i64, ptr } %t3200, 0
  %t3213 = add i64 %t3209, %t3212
  %t3214 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t3215 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t3216 = add i64 %t3213, %t3215
  %t3217 = call ptr @__olang_scope_alloc(ptr %s113, i64 %t3216)
  call void @olang_textcopy(ptr %t3217, ptr %t3201, i64 %t3202)
  %t3218 = getelementptr i8, ptr %t3217, i64 %t3202
  call void @olang_textcopy(ptr %t3218, ptr %t3204, i64 %t3205)
  %t3219 = getelementptr i8, ptr %t3218, i64 %t3205
  call void @olang_textcopy(ptr %t3219, ptr %t3207, i64 %t3208)
  %t3220 = getelementptr i8, ptr %t3219, i64 %t3208
  call void @olang_textcopy(ptr %t3220, ptr %t3211, i64 %t3212)
  %t3221 = getelementptr i8, ptr %t3220, i64 %t3212
  call void @olang_textcopy(ptr %t3221, ptr %t3214, i64 %t3215)
  %t3222 = insertvalue { i64, ptr } undef, i64 %t3216, 0
  %t3223 = insertvalue { i64, ptr } %t3222, ptr %t3217, 1
  %t3225 = extractvalue { i64, ptr } %t3223, 0
  %t3226 = extractvalue { i64, ptr } %t3223, 1
  %t3227 = mul i64 %t3225, 1
  %t3228 = call ptr @__olang_scope_alloc(ptr %s113, i64 %t3227)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3228, ptr %t3226, i64 %t3227, i1 false)
  %t3229 = insertvalue { i64, ptr } undef, i64 %t3225, 0
  %t3230 = insertvalue { i64, ptr } %t3229, ptr %t3228, 1
  %t3233 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s113, ptr %s113, ptr %t3197, { i64, ptr } %t3230)
  store { i64, ptr } %t3233, ptr %l845
  br label %bb433
bb432:
  br label %bb435
bb433:
  %t3234 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t3235 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t3236 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t3237 = load { i64, ptr }, ptr %l845, !tbaa !27
  %t3238 = extractvalue { i64, ptr } %t3237, 1
  %t3239 = extractvalue { i64, ptr } %t3237, 0
  %t3240 = add i64 %t3236, %t3239
  %t3241 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t3242 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t3243 = add i64 %t3240, %t3242
  %t3245 = extractvalue { i64, ptr } %t3234, 1
  %t3246 = extractvalue { i64, ptr } %t3234, 0
  %t3247 = add i64 %t3243, %t3246
  %t3248 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3247)
  call void @olang_textcopy(ptr %t3248, ptr %t3235, i64 %t3236)
  %t3249 = getelementptr i8, ptr %t3248, i64 %t3236
  call void @olang_textcopy(ptr %t3249, ptr %t3238, i64 %t3239)
  %t3250 = getelementptr i8, ptr %t3249, i64 %t3239
  call void @olang_textcopy(ptr %t3250, ptr %t3241, i64 %t3242)
  %t3251 = getelementptr i8, ptr %t3250, i64 %t3242
  call void @olang_textcopy(ptr %t3251, ptr %t3245, i64 %t3246)
  %t3252 = insertvalue { i64, ptr } undef, i64 %t3247, 0
  %t3253 = insertvalue { i64, ptr } %t3252, ptr %t3248, 1
  %t3255 = extractvalue { i64, ptr } %t3253, 0
  %t3256 = extractvalue { i64, ptr } %t3253, 1
  %t3257 = mul i64 %t3255, 1
  %t3258 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3257)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3258, ptr %t3256, i64 %t3257, i1 false)
  %t3259 = insertvalue { i64, ptr } undef, i64 %t3255, 0
  %t3260 = insertvalue { i64, ptr } %t3259, ptr %t3258, 1
  %t3261 = load ptr, ptr %l839, !tbaa !29
  %t3263 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t3261, { i64, ptr } %t3260)
  store { i64, ptr } %t3263, ptr %l849
  br label %bb434
bb434:
  call void @__olang_scope_close(ptr %s113)
  call void @__olang_scope_close(ptr %s112)
  call void @__olang_scope_close(ptr %s0)
  %t3264 = load { i64, ptr }, ptr %l849, !tbaa !27
  store { i64, ptr } %t3264, ptr %rv
  br label %ret
bb435:
  %t3265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3265, ptr %l850, !tbaa !29
  %t3266 = load ptr, ptr %lp11
  %t3267 = load { i64, ptr }, ptr %t3266, !tbaa !27
  store { i64, ptr } %t3267, ptr %l851, !tbaa !27
  %t3268 = load ptr, ptr %l0, !tbaa !29
  %t3269 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t3270 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t3271 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t3273 = extractvalue { i64, ptr } %t3269, 1
  %t3274 = extractvalue { i64, ptr } %t3269, 0
  %t3275 = add i64 %t3271, %t3274
  %t3276 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t3277 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t3278 = add i64 %t3275, %t3277
  %t3279 = call ptr @__olang_scope_alloc(ptr %s112, i64 %t3278)
  call void @olang_textcopy(ptr %t3279, ptr %t3270, i64 %t3271)
  %t3280 = getelementptr i8, ptr %t3279, i64 %t3271
  call void @olang_textcopy(ptr %t3280, ptr %t3273, i64 %t3274)
  %t3281 = getelementptr i8, ptr %t3280, i64 %t3274
  call void @olang_textcopy(ptr %t3281, ptr %t3276, i64 %t3277)
  %t3282 = insertvalue { i64, ptr } undef, i64 %t3278, 0
  %t3283 = insertvalue { i64, ptr } %t3282, ptr %t3279, 1
  %t3285 = extractvalue { i64, ptr } %t3283, 0
  %t3286 = extractvalue { i64, ptr } %t3283, 1
  %t3287 = mul i64 %t3285, 1
  %t3288 = call ptr @__olang_scope_alloc(ptr %s112, i64 %t3287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3288, ptr %t3286, i64 %t3287, i1 false)
  %t3289 = insertvalue { i64, ptr } undef, i64 %t3285, 0
  %t3290 = insertvalue { i64, ptr } %t3289, ptr %t3288, 1
  %t3293 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s112, ptr %s112, ptr %t3268, { i64, ptr } %t3290)
  store { i64, ptr } %t3293, ptr %l856
  br label %bb436
bb436:
  %t3294 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d319, i32 0, i32 1) }, 1
  %t3295 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d319, i32 0, i32 1) }, 0
  %t3296 = load { i64, ptr }, ptr %l851, !tbaa !27
  %t3297 = extractvalue { i64, ptr } %t3296, 1
  %t3298 = extractvalue { i64, ptr } %t3296, 0
  %t3299 = add i64 %t3295, %t3298
  %t3300 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t3301 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t3302 = add i64 %t3299, %t3301
  %t3303 = load { i64, ptr }, ptr %l856, !tbaa !27
  %t3304 = extractvalue { i64, ptr } %t3303, 1
  %t3305 = extractvalue { i64, ptr } %t3303, 0
  %t3306 = add i64 %t3302, %t3305
  %t3307 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3306)
  call void @olang_textcopy(ptr %t3307, ptr %t3294, i64 %t3295)
  %t3308 = getelementptr i8, ptr %t3307, i64 %t3295
  call void @olang_textcopy(ptr %t3308, ptr %t3297, i64 %t3298)
  %t3309 = getelementptr i8, ptr %t3308, i64 %t3298
  call void @olang_textcopy(ptr %t3309, ptr %t3300, i64 %t3301)
  %t3310 = getelementptr i8, ptr %t3309, i64 %t3301
  call void @olang_textcopy(ptr %t3310, ptr %t3304, i64 %t3305)
  %t3311 = insertvalue { i64, ptr } undef, i64 %t3306, 0
  %t3312 = insertvalue { i64, ptr } %t3311, ptr %t3307, 1
  %t3314 = extractvalue { i64, ptr } %t3312, 0
  %t3315 = extractvalue { i64, ptr } %t3312, 1
  %t3316 = mul i64 %t3314, 1
  %t3317 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3316)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3317, ptr %t3315, i64 %t3316, i1 false)
  %t3318 = insertvalue { i64, ptr } undef, i64 %t3314, 0
  %t3319 = insertvalue { i64, ptr } %t3318, ptr %t3317, 1
  %t3320 = load ptr, ptr %l850, !tbaa !29
  %t3322 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t3320, { i64, ptr } %t3319)
  store { i64, ptr } %t3322, ptr %l859
  br label %bb437
bb437:
  call void @__olang_scope_close(ptr %s112)
  call void @__olang_scope_close(ptr %s0)
  %t3323 = load { i64, ptr }, ptr %l859, !tbaa !27
  store { i64, ptr } %t3323, ptr %rv
  br label %ret
bb438:
  %t3324 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3326 = trunc i64 25 to i32
  %t3327 = icmp eq i32 %t3324, %t3326
  br i1 %t3327, label %bb439, label %bb440
bb439:
  br label %bb441
bb440:
  br label %bb448
bb441:
  store %olang.scope zeroinitializer, ptr %s118
  %t3329 = load ptr, ptr %l4, !tbaa !29
  %t3330 = load i32, ptr %l7, !tbaa !23
  %t3333 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t3329, i32 %t3330)
  store i32 %t3333, ptr %l864
  br label %bb442
bb442:
  %t3334 = load i32, ptr %l864, !tbaa !23
  store i32 %t3334, ptr %l55, !tbaa !23
  %t3335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3335, ptr %l865, !tbaa !29
  %t3336 = load ptr, ptr %l0, !tbaa !29
  %t3337 = load i32, ptr %l55, !tbaa !23
  %t3340 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s118, ptr %t3336, i32 %t3337)
  store { i64, ptr } %t3340, ptr %l868
  br label %bb443
bb443:
  %t3341 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3341, ptr %l869, !tbaa !29
  %t3342 = load ptr, ptr %l0, !tbaa !29
  %t3343 = load %"compiler/mir:Range", ptr %l3
  %t3346 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t3342, %"compiler/mir:Range" %t3343, i64 1)
  store { i64, [4 x i64] } %t3346, ptr %l872
  br label %bb444
bb444:
  %t3347 = load i32, ptr %l55, !tbaa !23
  %t3348 = load ptr, ptr %l869, !tbaa !29
  %t3349 = load { i64, [4 x i64] }, ptr %l872
  %t3351 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s118, ptr %t3348, { i64, [4 x i64] } %t3349, i32 %t3347)
  store { i64, ptr } %t3351, ptr %l874
  br label %bb445
bb445:
  %t3352 = load ptr, ptr %lp11
  %t3353 = load { i64, ptr }, ptr %t3352, !tbaa !27
  store { i64, ptr } %t3353, ptr %l875, !tbaa !27
  %t3354 = load ptr, ptr %l0, !tbaa !29
  %t3355 = load i32, ptr %l55, !tbaa !23
  %t3358 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t3354, i32 %t3355)
  store i64 %t3358, ptr %l878
  br label %bb446
bb446:
  %t3359 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t3360 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t3361 = load { i64, ptr }, ptr %l868, !tbaa !27
  %t3362 = extractvalue { i64, ptr } %t3361, 1
  %t3363 = extractvalue { i64, ptr } %t3361, 0
  %t3364 = add i64 %t3360, %t3363
  %t3365 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t3366 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
  %t3367 = add i64 %t3364, %t3366
  %t3368 = load { i64, ptr }, ptr %l874, !tbaa !27
  %t3369 = extractvalue { i64, ptr } %t3368, 1
  %t3370 = extractvalue { i64, ptr } %t3368, 0
  %t3371 = add i64 %t3367, %t3370
  %t3372 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t3373 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
  %t3374 = add i64 %t3371, %t3373
  %t3375 = load { i64, ptr }, ptr %l875, !tbaa !27
  %t3376 = extractvalue { i64, ptr } %t3375, 1
  %t3377 = extractvalue { i64, ptr } %t3375, 0
  %t3378 = add i64 %t3374, %t3377
  %t3379 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t3380 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t3381 = add i64 %t3378, %t3380
  %t3382 = load i64, ptr %l878, !tbaa !24
  %t3383 = call i64 @__olang_fmt_i64(ptr null, i64 %t3382)
  %t3384 = add i64 %t3381, %t3383
  %t3385 = call ptr @__olang_scope_alloc(ptr %s118, i64 %t3384)
  call void @olang_textcopy(ptr %t3385, ptr %t3359, i64 %t3360)
  %t3386 = getelementptr i8, ptr %t3385, i64 %t3360
  call void @olang_textcopy(ptr %t3386, ptr %t3362, i64 %t3363)
  %t3387 = getelementptr i8, ptr %t3386, i64 %t3363
  call void @olang_textcopy(ptr %t3387, ptr %t3365, i64 %t3366)
  %t3388 = getelementptr i8, ptr %t3387, i64 %t3366
  call void @olang_textcopy(ptr %t3388, ptr %t3369, i64 %t3370)
  %t3389 = getelementptr i8, ptr %t3388, i64 %t3370
  call void @olang_textcopy(ptr %t3389, ptr %t3372, i64 %t3373)
  %t3390 = getelementptr i8, ptr %t3389, i64 %t3373
  call void @olang_textcopy(ptr %t3390, ptr %t3376, i64 %t3377)
  %t3391 = getelementptr i8, ptr %t3390, i64 %t3377
  call void @olang_textcopy(ptr %t3391, ptr %t3379, i64 %t3380)
  %t3392 = getelementptr i8, ptr %t3391, i64 %t3380
  %t3393 = call i64 @__olang_fmt_i64(ptr %t3392, i64 %t3382)
  %t3394 = insertvalue { i64, ptr } undef, i64 %t3384, 0
  %t3395 = insertvalue { i64, ptr } %t3394, ptr %t3385, 1
  %t3397 = extractvalue { i64, ptr } %t3395, 0
  %t3398 = extractvalue { i64, ptr } %t3395, 1
  %t3399 = mul i64 %t3397, 1
  %t3400 = call ptr @__olang_scope_alloc(ptr %s118, i64 %t3399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3400, ptr %t3398, i64 %t3399, i1 false)
  %t3401 = insertvalue { i64, ptr } undef, i64 %t3397, 0
  %t3402 = insertvalue { i64, ptr } %t3401, ptr %t3400, 1
  %t3403 = load ptr, ptr %l865, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s118, ptr %t3403, { i64, ptr } %t3402)
  br label %bb447
bb447:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d325, i32 0, i32 1) }, ptr %l881, !tbaa !27
  %t3405 = load { i64, ptr }, ptr %l881, !tbaa !27
  store { i64, ptr } %t3405, ptr %l882, !tbaa !27
  %t3406 = load { i64, ptr }, ptr %l882, !tbaa !27
  %t3407 = extractvalue { i64, ptr } %t3406, 0
  store i64 %t3407, ptr %l883, !tbaa !24
  %t3408 = load i64, ptr %l883, !tbaa !24
  %t3409 = mul i64 %t3408, 1
  %t3410 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3409)
  %t3411 = insertvalue { i64, ptr } undef, i64 %t3408, 0
  %t3412 = insertvalue { i64, ptr } %t3411, ptr %t3410, 1
  store { i64, ptr } %t3412, ptr %l884, !tbaa !27
  %t3413 = getelementptr { i64, ptr }, ptr %l884, i32 0, i32 1
  %t3414 = load ptr, ptr %t3413, !tbaa !27
  %t3415 = getelementptr { i64, ptr }, ptr %l882, i32 0, i32 1
  %t3416 = load ptr, ptr %t3415, !tbaa !27
  %t3417 = load i64, ptr %l883, !tbaa !24
  %t3418 = mul i64 %t3417, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t3414, ptr %t3416, i64 %t3418, i1 false)
  %t3419 = load { i64, ptr }, ptr %l884, !tbaa !27
  store { i64, ptr } %t3419, ptr %l882, !tbaa !27
  call void @__olang_scope_close(ptr %s118)
  call void @__olang_scope_close(ptr %s0)
  %t3420 = load { i64, ptr }, ptr %l882, !tbaa !27
  store { i64, ptr } %t3420, ptr %rv
  br label %ret
bb448:
  %t3421 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3423 = trunc i64 26 to i32
  %t3424 = icmp eq i32 %t3421, %t3423
  br i1 %t3424, label %bb449, label %bb450
bb449:
  br label %bb453
bb450:
  %t3426 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3428 = trunc i64 27 to i32
  %t3429 = icmp eq i32 %t3426, %t3428
  br i1 %t3429, label %bb451, label %bb452
bb451:
  br label %bb453
bb452:
  br label %bb462
bb453:
  store %olang.scope zeroinitializer, ptr %s120
  %t3431 = load ptr, ptr %l4, !tbaa !29
  %t3432 = load i32, ptr %l7, !tbaa !23
  %t3435 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t3431, i32 %t3432)
  store i32 %t3435, ptr %l891
  br label %bb454
bb454:
  %t3436 = load i32, ptr %l891, !tbaa !23
  store i32 %t3436, ptr %l56, !tbaa !23
  %t3437 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3439 = trunc i64 26 to i32
  %t3440 = icmp eq i32 %t3437, %t3439
  br i1 %t3440, label %bb455, label %bb456
bb455:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d326, i32 0, i32 1) }, ptr %l894, !tbaa !27
  br label %bb457
bb456:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d327, i32 0, i32 1) }, ptr %l894, !tbaa !27
  br label %bb457
bb457:
  %t3442 = load { i64, ptr }, ptr %l894, !tbaa !27
  %t3443 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3443, ptr %l895, !tbaa !29
  store { i64, ptr } %t3442, ptr %l896, !tbaa !27
  %t3445 = load ptr, ptr %lp11
  %t3446 = load { i64, ptr }, ptr %t3445, !tbaa !27
  store { i64, ptr } %t3446, ptr %l897, !tbaa !27
  %t3447 = load ptr, ptr %l0, !tbaa !29
  %t3448 = load i32, ptr %l56, !tbaa !23
  %t3451 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s120, ptr %t3447, i32 %t3448)
  store { i64, ptr } %t3451, ptr %l900
  br label %bb458
bb458:
  %t3452 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3452, ptr %l901, !tbaa !29
  %t3453 = load ptr, ptr %l0, !tbaa !29
  %t3454 = load %"compiler/mir:Range", ptr %l3
  %t3457 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t3453, %"compiler/mir:Range" %t3454, i64 1)
  store { i64, [4 x i64] } %t3457, ptr %l904
  br label %bb459
bb459:
  %t3458 = load i32, ptr %l56, !tbaa !23
  %t3459 = load ptr, ptr %l901, !tbaa !29
  %t3460 = load { i64, [4 x i64] }, ptr %l904
  %t3462 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s120, ptr %t3459, { i64, [4 x i64] } %t3460, i32 %t3458)
  store { i64, ptr } %t3462, ptr %l906
  br label %bb460
bb460:
  %t3463 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t3464 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t3465 = load { i64, ptr }, ptr %l896, !tbaa !27
  %t3466 = extractvalue { i64, ptr } %t3465, 1
  %t3467 = extractvalue { i64, ptr } %t3465, 0
  %t3468 = add i64 %t3464, %t3467
  %t3469 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t3470 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t3471 = add i64 %t3468, %t3470
  %t3472 = load { i64, ptr }, ptr %l897, !tbaa !27
  %t3473 = extractvalue { i64, ptr } %t3472, 1
  %t3474 = extractvalue { i64, ptr } %t3472, 0
  %t3475 = add i64 %t3471, %t3474
  %t3476 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t3477 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t3478 = add i64 %t3475, %t3477
  %t3479 = load { i64, ptr }, ptr %l900, !tbaa !27
  %t3480 = extractvalue { i64, ptr } %t3479, 1
  %t3481 = extractvalue { i64, ptr } %t3479, 0
  %t3482 = add i64 %t3478, %t3481
  %t3483 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t3484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t3485 = add i64 %t3482, %t3484
  %t3486 = load { i64, ptr }, ptr %l906, !tbaa !27
  %t3487 = extractvalue { i64, ptr } %t3486, 1
  %t3488 = extractvalue { i64, ptr } %t3486, 0
  %t3489 = add i64 %t3485, %t3488
  %t3490 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t3491 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t3492 = add i64 %t3489, %t3491
  %t3493 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3492)
  call void @olang_textcopy(ptr %t3493, ptr %t3463, i64 %t3464)
  %t3494 = getelementptr i8, ptr %t3493, i64 %t3464
  call void @olang_textcopy(ptr %t3494, ptr %t3466, i64 %t3467)
  %t3495 = getelementptr i8, ptr %t3494, i64 %t3467
  call void @olang_textcopy(ptr %t3495, ptr %t3469, i64 %t3470)
  %t3496 = getelementptr i8, ptr %t3495, i64 %t3470
  call void @olang_textcopy(ptr %t3496, ptr %t3473, i64 %t3474)
  %t3497 = getelementptr i8, ptr %t3496, i64 %t3474
  call void @olang_textcopy(ptr %t3497, ptr %t3476, i64 %t3477)
  %t3498 = getelementptr i8, ptr %t3497, i64 %t3477
  call void @olang_textcopy(ptr %t3498, ptr %t3480, i64 %t3481)
  %t3499 = getelementptr i8, ptr %t3498, i64 %t3481
  call void @olang_textcopy(ptr %t3499, ptr %t3483, i64 %t3484)
  %t3500 = getelementptr i8, ptr %t3499, i64 %t3484
  call void @olang_textcopy(ptr %t3500, ptr %t3487, i64 %t3488)
  %t3501 = getelementptr i8, ptr %t3500, i64 %t3488
  call void @olang_textcopy(ptr %t3501, ptr %t3490, i64 %t3491)
  %t3502 = insertvalue { i64, ptr } undef, i64 %t3492, 0
  %t3503 = insertvalue { i64, ptr } %t3502, ptr %t3493, 1
  %t3505 = extractvalue { i64, ptr } %t3503, 0
  %t3506 = extractvalue { i64, ptr } %t3503, 1
  %t3507 = mul i64 %t3505, 1
  %t3508 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3507)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3508, ptr %t3506, i64 %t3507, i1 false)
  %t3509 = insertvalue { i64, ptr } undef, i64 %t3505, 0
  %t3510 = insertvalue { i64, ptr } %t3509, ptr %t3508, 1
  %t3511 = load ptr, ptr %l895, !tbaa !29
  %t3513 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t3511, { i64, ptr } %t3510)
  store { i64, ptr } %t3513, ptr %l909
  br label %bb461
bb461:
  call void @__olang_scope_close(ptr %s120)
  call void @__olang_scope_close(ptr %s0)
  %t3514 = load { i64, ptr }, ptr %l909, !tbaa !27
  store { i64, ptr } %t3514, ptr %rv
  br label %ret
bb462:
  %t3515 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3517 = trunc i64 28 to i32
  %t3518 = icmp eq i32 %t3515, %t3517
  br i1 %t3518, label %bb463, label %bb464
bb463:
  br label %bb465
bb464:
  br label %bb474
bb465:
  store %olang.scope zeroinitializer, ptr %s122
  %t3520 = load ptr, ptr %l4, !tbaa !29
  %t3521 = load i32, ptr %l7, !tbaa !23
  %t3524 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t3520, i32 %t3521)
  store i32 %t3524, ptr %l914
  br label %bb466
bb466:
  %t3525 = load i32, ptr %l914, !tbaa !23
  store i32 %t3525, ptr %l58, !tbaa !23
  %t3526 = load ptr, ptr %l0, !tbaa !29
  %t3527 = load i32, ptr %l58, !tbaa !23
  %t3530 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s122, ptr %t3526, i32 %t3527)
  store { i64, ptr } %t3530, ptr %l917
  br label %bb467
bb467:
  %t3531 = load { i64, ptr }, ptr %l917, !tbaa !27
  store { i64, ptr } %t3531, ptr %l59, !tbaa !27
  %t3532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3532, ptr %l918, !tbaa !29
  %t3533 = load ptr, ptr %lp11
  %t3534 = load { i64, ptr }, ptr %t3533, !tbaa !27
  store { i64, ptr } %t3534, ptr %l919, !tbaa !27
  %t3535 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t3535, ptr %l920, !tbaa !27
  %t3536 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3536, ptr %l921, !tbaa !29
  %t3537 = load ptr, ptr %l0, !tbaa !29
  %t3538 = load %"compiler/mir:Range", ptr %l3
  %t3541 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t3537, %"compiler/mir:Range" %t3538, i64 1)
  store { i64, [4 x i64] } %t3541, ptr %l924
  br label %bb468
bb468:
  %t3542 = load i32, ptr %l58, !tbaa !23
  %t3543 = load ptr, ptr %l921, !tbaa !29
  %t3544 = load { i64, [4 x i64] }, ptr %l924
  %t3546 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s122, ptr %t3543, { i64, [4 x i64] } %t3544, i32 %t3542)
  store { i64, ptr } %t3546, ptr %l926
  br label %bb469
bb469:
  %t3547 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t3547, ptr %l927, !tbaa !27
  %t3548 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3548, ptr %l928, !tbaa !29
  %t3549 = load ptr, ptr %l0, !tbaa !29
  %t3550 = load %"compiler/mir:Range", ptr %l3
  %t3553 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t3549, %"compiler/mir:Range" %t3550, i64 2)
  store { i64, [4 x i64] } %t3553, ptr %l931
  br label %bb470
bb470:
  %t3554 = load i32, ptr %l58, !tbaa !23
  %t3555 = load ptr, ptr %l928, !tbaa !29
  %t3556 = load { i64, [4 x i64] }, ptr %l931
  %t3558 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s122, ptr %t3555, { i64, [4 x i64] } %t3556, i32 %t3554)
  store { i64, ptr } %t3558, ptr %l933
  br label %bb471
bb471:
  %t3559 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t3560 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t3561 = load { i64, ptr }, ptr %l919, !tbaa !27
  %t3562 = extractvalue { i64, ptr } %t3561, 1
  %t3563 = extractvalue { i64, ptr } %t3561, 0
  %t3564 = add i64 %t3560, %t3563
  %t3565 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t3566 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t3567 = add i64 %t3564, %t3566
  %t3568 = load { i64, ptr }, ptr %l920, !tbaa !27
  %t3569 = extractvalue { i64, ptr } %t3568, 1
  %t3570 = extractvalue { i64, ptr } %t3568, 0
  %t3571 = add i64 %t3567, %t3570
  %t3572 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t3573 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t3574 = add i64 %t3571, %t3573
  %t3575 = load { i64, ptr }, ptr %l926, !tbaa !27
  %t3576 = extractvalue { i64, ptr } %t3575, 1
  %t3577 = extractvalue { i64, ptr } %t3575, 0
  %t3578 = add i64 %t3574, %t3577
  %t3579 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t3580 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t3581 = add i64 %t3578, %t3580
  %t3582 = load { i64, ptr }, ptr %l927, !tbaa !27
  %t3583 = extractvalue { i64, ptr } %t3582, 1
  %t3584 = extractvalue { i64, ptr } %t3582, 0
  %t3585 = add i64 %t3581, %t3584
  %t3586 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t3587 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t3588 = add i64 %t3585, %t3587
  %t3589 = load { i64, ptr }, ptr %l933, !tbaa !27
  %t3590 = extractvalue { i64, ptr } %t3589, 1
  %t3591 = extractvalue { i64, ptr } %t3589, 0
  %t3592 = add i64 %t3588, %t3591
  %t3593 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t3594 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t3595 = add i64 %t3592, %t3594
  %t3596 = call ptr @__olang_scope_alloc(ptr %s122, i64 %t3595)
  call void @olang_textcopy(ptr %t3596, ptr %t3559, i64 %t3560)
  %t3597 = getelementptr i8, ptr %t3596, i64 %t3560
  call void @olang_textcopy(ptr %t3597, ptr %t3562, i64 %t3563)
  %t3598 = getelementptr i8, ptr %t3597, i64 %t3563
  call void @olang_textcopy(ptr %t3598, ptr %t3565, i64 %t3566)
  %t3599 = getelementptr i8, ptr %t3598, i64 %t3566
  call void @olang_textcopy(ptr %t3599, ptr %t3569, i64 %t3570)
  %t3600 = getelementptr i8, ptr %t3599, i64 %t3570
  call void @olang_textcopy(ptr %t3600, ptr %t3572, i64 %t3573)
  %t3601 = getelementptr i8, ptr %t3600, i64 %t3573
  call void @olang_textcopy(ptr %t3601, ptr %t3576, i64 %t3577)
  %t3602 = getelementptr i8, ptr %t3601, i64 %t3577
  call void @olang_textcopy(ptr %t3602, ptr %t3579, i64 %t3580)
  %t3603 = getelementptr i8, ptr %t3602, i64 %t3580
  call void @olang_textcopy(ptr %t3603, ptr %t3583, i64 %t3584)
  %t3604 = getelementptr i8, ptr %t3603, i64 %t3584
  call void @olang_textcopy(ptr %t3604, ptr %t3586, i64 %t3587)
  %t3605 = getelementptr i8, ptr %t3604, i64 %t3587
  call void @olang_textcopy(ptr %t3605, ptr %t3590, i64 %t3591)
  %t3606 = getelementptr i8, ptr %t3605, i64 %t3591
  call void @olang_textcopy(ptr %t3606, ptr %t3593, i64 %t3594)
  %t3607 = insertvalue { i64, ptr } undef, i64 %t3595, 0
  %t3608 = insertvalue { i64, ptr } %t3607, ptr %t3596, 1
  %t3610 = extractvalue { i64, ptr } %t3608, 0
  %t3611 = extractvalue { i64, ptr } %t3608, 1
  %t3612 = mul i64 %t3610, 1
  %t3613 = call ptr @__olang_scope_alloc(ptr %s122, i64 %t3612)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3613, ptr %t3611, i64 %t3612, i1 false)
  %t3614 = insertvalue { i64, ptr } undef, i64 %t3610, 0
  %t3615 = insertvalue { i64, ptr } %t3614, ptr %t3613, 1
  %t3616 = load ptr, ptr %l918, !tbaa !29
  %t3618 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s122, ptr %s122, ptr %t3616, { i64, ptr } %t3615)
  store { i64, ptr } %t3618, ptr %l936
  br label %bb472
bb472:
  %t3619 = load { i64, ptr }, ptr %l936, !tbaa !27
  %t3620 = load ptr, ptr %l0, !tbaa !29
  %t3621 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t3623 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t3624 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t3626 = extractvalue { i64, ptr } %t3621, 1
  %t3627 = extractvalue { i64, ptr } %t3621, 0
  %t3628 = add i64 %t3624, %t3627
  %t3629 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t3630 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t3631 = add i64 %t3628, %t3630
  %t3633 = extractvalue { i64, ptr } %t3619, 1
  %t3634 = extractvalue { i64, ptr } %t3619, 0
  %t3635 = add i64 %t3631, %t3634
  %t3636 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t3637 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t3638 = add i64 %t3635, %t3637
  %t3639 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3638)
  call void @olang_textcopy(ptr %t3639, ptr %t3623, i64 %t3624)
  %t3640 = getelementptr i8, ptr %t3639, i64 %t3624
  call void @olang_textcopy(ptr %t3640, ptr %t3626, i64 %t3627)
  %t3641 = getelementptr i8, ptr %t3640, i64 %t3627
  call void @olang_textcopy(ptr %t3641, ptr %t3629, i64 %t3630)
  %t3642 = getelementptr i8, ptr %t3641, i64 %t3630
  call void @olang_textcopy(ptr %t3642, ptr %t3633, i64 %t3634)
  %t3643 = getelementptr i8, ptr %t3642, i64 %t3634
  call void @olang_textcopy(ptr %t3643, ptr %t3636, i64 %t3637)
  %t3644 = insertvalue { i64, ptr } undef, i64 %t3638, 0
  %t3645 = insertvalue { i64, ptr } %t3644, ptr %t3639, 1
  %t3647 = extractvalue { i64, ptr } %t3645, 0
  %t3648 = extractvalue { i64, ptr } %t3645, 1
  %t3649 = mul i64 %t3647, 1
  %t3650 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3649)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3650, ptr %t3648, i64 %t3649, i1 false)
  %t3651 = insertvalue { i64, ptr } undef, i64 %t3647, 0
  %t3652 = insertvalue { i64, ptr } %t3651, ptr %t3650, 1
  %t3655 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t3620, { i64, ptr } %t3652)
  store { i64, ptr } %t3655, ptr %l942
  br label %bb473
bb473:
  call void @__olang_scope_close(ptr %s122)
  call void @__olang_scope_close(ptr %s0)
  %t3656 = load { i64, ptr }, ptr %l942, !tbaa !27
  store { i64, ptr } %t3656, ptr %rv
  br label %ret
bb474:
  br i1 true, label %bb475, label %bb476
bb475:
  br label %bb477
bb476:
  br label %bb480
bb477:
  store %olang.scope zeroinitializer, ptr %s125
  %t3657 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3657, ptr %l943, !tbaa !29
  %t3658 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t3658, ptr %l944
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s126
  store ptr %s126room, ptr %s126
  %t3659 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t3660 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s126, ptr %t3659, i64 %t3660)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s126, ptr %l944, i64 0)
  br label %bb478
bb478:
  %t3662 = load ptr, ptr %s126
  %t3663 = getelementptr %olang.builder, ptr %s126, i32 0, i32 1
  %t3664 = load i64, ptr %t3663
  %t3665 = call ptr @__olang_scope_alloc(ptr %s125, i64 %t3664)
  call void @olang_textcopy(ptr %t3665, ptr %t3662, i64 %t3664)
  %t3666 = insertvalue { i64, ptr } undef, i64 %t3664, 0
  %t3667 = insertvalue { i64, ptr } %t3666, ptr %t3665, 1
  store { i64, ptr } %t3667, ptr %l946, !tbaa !27
  %t3668 = getelementptr %olang.builder, ptr %s126, i32 0, i32 3
  %t3669 = load ptr, ptr %t3668
  %t3670 = icmp ne ptr %t3669, null
  br i1 %t3670, label %sbgrew.3671, label %sbdone.3672
sbgrew.3671:
  call void @__olang_sb_done(ptr %s126)
  br label %sbdone.3672
sbdone.3672:
  %t3673 = load { i64, ptr }, ptr %l946, !tbaa !27
  %t3674 = extractvalue { i64, ptr } %t3673, 0
  %t3675 = extractvalue { i64, ptr } %t3673, 1
  %t3676 = mul i64 %t3674, 1
  %t3677 = call ptr @__olang_scope_alloc(ptr %s125, i64 %t3676)
  call void @llvm.memcpy.p0.p0.i64(ptr %t3677, ptr %t3675, i64 %t3676, i1 false)
  %t3678 = insertvalue { i64, ptr } undef, i64 %t3674, 0
  %t3679 = insertvalue { i64, ptr } %t3678, ptr %t3677, 1
  %t3680 = load ptr, ptr %l943, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s125, ptr %t3680, { i64, ptr } %t3679)
  br label %bb479
bb479:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d341, i32 0, i32 1) }, ptr %l948, !tbaa !27
  %t3682 = load { i64, ptr }, ptr %l948, !tbaa !27
  store { i64, ptr } %t3682, ptr %l949, !tbaa !27
  %t3683 = load { i64, ptr }, ptr %l949, !tbaa !27
  %t3684 = extractvalue { i64, ptr } %t3683, 0
  store i64 %t3684, ptr %l950, !tbaa !24
  %t3685 = load i64, ptr %l950, !tbaa !24
  %t3686 = mul i64 %t3685, 1
  %t3687 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t3686)
  %t3688 = insertvalue { i64, ptr } undef, i64 %t3685, 0
  %t3689 = insertvalue { i64, ptr } %t3688, ptr %t3687, 1
  store { i64, ptr } %t3689, ptr %l951, !tbaa !27
  %t3690 = getelementptr { i64, ptr }, ptr %l951, i32 0, i32 1
  %t3691 = load ptr, ptr %t3690, !tbaa !27
  %t3692 = getelementptr { i64, ptr }, ptr %l949, i32 0, i32 1
  %t3693 = load ptr, ptr %t3692, !tbaa !27
  %t3694 = load i64, ptr %l950, !tbaa !24
  %t3695 = mul i64 %t3694, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t3691, ptr %t3693, i64 %t3695, i1 false)
  %t3696 = load { i64, ptr }, ptr %l951, !tbaa !27
  store { i64, ptr } %t3696, ptr %l949, !tbaa !27
  call void @__olang_scope_close(ptr %s125)
  call void @__olang_scope_close(ptr %s0)
  %t3697 = load { i64, ptr }, ptr %l949, !tbaa !27
  store { i64, ptr } %t3697, ptr %rv
  br label %ret
bb480:
  call void @__olang_check_failed(ptr @olang_loc_48fb755842b89882_1da88e591314daf6)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprogram(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
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
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d342, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d343, i32 0, i32 1) })
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d344, i32 0, i32 1) }, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d345, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store { i64, ptr } %t8, ptr %l4
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2erehold(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l39 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca i32
  %l54 = alloca %"compiler/mir:ScopeInfo"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 4
  %t7 = load i1, ptr %t6, !tbaa !21
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l14
  br label %bb4
bb4:
  %t14 = load i64, ptr %l14, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb7:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l21, !tbaa !24
  store i64 %t41, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l18, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l39, !tbaa !29
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t62)
  store i64 %t64, ptr %l41
  br label %bb15
bb15:
  %t65 = load i64, ptr %l41, !tbaa !24
  %t66 = sub i64 %t65, 1
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = sub i64 %t66, %t67
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t71, i64 %t70)
  store i64 %t73, ptr %l45
  br label %bb16
bb16:
  %t74 = load i64, ptr %l45, !tbaa !24
  store i64 %t74, ptr %l8, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l46, !tbaa !29
  %t76 = load i64, ptr %l8, !tbaa !24
  %t78 = trunc i64 %t76 to i32
  store i32 %t78, ptr %l49, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/emit:fnEm", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/mir:Fn", ptr %t83, i32 0, i32 8
  %t86 = load i64, ptr %l8, !tbaa !24
  %t89 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t85, i64 %t86)
  store %"compiler/mir:ScopeInfo" %t89, ptr %l54
  br label %bb17
bb17:
  %t90 = getelementptr %"compiler/mir:ScopeInfo", ptr %l54, i32 0, i32 0
  %t91 = load i32, ptr %t90, !range !{i32 0, i32 7}
  %t93 = trunc i64 3 to i32
  %t94 = icmp eq i32 %t91, %t93
  %t95 = load ptr, ptr %l46, !tbaa !29
  %t96 = load i32, ptr %l49, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPush(ptr %v0, ptr %t95, i32 %t96, i1 %t94)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t98 = load i64, ptr %l6, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l6, !tbaa !24
  br label %bb11
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2etaskKey(ptr %v0, ptr %a0, %"compiler/mir:Task" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Task"
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t15 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/mir:Task" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [7 x i64] }, ptr %t1
  store { i64, [7 x i64] } %t2, ptr %l2
  %t4 = load { i64, [7 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [7 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t9, i32 0, i32 0
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l3
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t13 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t13, ptr %l5
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, [2 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t15, i32 0, i32 0
  store i64 4, ptr %t16
  %t17 = insertvalue { i64 } undef, i64 0, 0
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t15, i32 0, i32 1
  store { i64 } %t17, ptr %t18
  %t19 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t19, ptr %l5
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3820e339cb1786be_89fed3c6bce3701a)
  unreachable
bb9:
  %t21 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkKey(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = shl i64 %a1, 20
  %t6 = and i64 %a2, 1048575
  %t9 = or i64 %t3, %t6
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidth(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  store ptr %t9, ptr %l10, !tbaa !29
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l13
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l10, !tbaa !29
  %t16 = load i32, ptr %l13, !tbaa !23
  %t17 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t15, i32 %t16)
  store i64 %t17, ptr %l14
  br label %bb2
bb2:
  %t18 = load i64, ptr %l14, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t19 = load ptr, ptr %l4, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l18
  br label %bb3
bb3:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i32, ptr %l18, !tbaa !23
  %t27 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t27, ptr %l19
  br label %bb4
bb4:
  %t28 = load i64, ptr %l19, !tbaa !24
  store i64 %t28, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp eq i64 %t29, %t30
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = extractvalue { i64, ptr } %t35, 0
  %t39 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t37, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t41, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp sgt i64 %t43, %t44
  br i1 %t47, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l28, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l32
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = load i32, ptr %l32, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %t56, i32 %t57)
  store { i64, ptr } %t58, ptr %l33
  br label %bb11
bb11:
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l35, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t62 = load i32, ptr %l3, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l38
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = load i32, ptr %l38, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %t66, i32 %t67)
  store { i64, ptr } %t68, ptr %l39
  br label %bb13
bb13:
  %t69 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t71 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t85 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = add i64 %t84, %t87
  %t89 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t69, i64 %t70)
  %t90 = getelementptr i8, ptr %t89, i64 %t70
  call void @olang_textcopy(ptr %t90, ptr %t72, i64 %t73)
  %t91 = getelementptr i8, ptr %t90, i64 %t73
  call void @olang_textcopy(ptr %t91, ptr %t75, i64 %t76)
  %t92 = getelementptr i8, ptr %t91, i64 %t76
  call void @olang_textcopy(ptr %t92, ptr %t79, i64 %t80)
  %t93 = getelementptr i8, ptr %t92, i64 %t80
  call void @olang_textcopy(ptr %t93, ptr %t82, i64 %t83)
  %t94 = getelementptr i8, ptr %t93, i64 %t83
  call void @olang_textcopy(ptr %t94, ptr %t86, i64 %t87)
  %t95 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t89, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = extractvalue { i64, ptr } %t96, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = load ptr, ptr %l28, !tbaa !29
  %t106 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t104, { i64, ptr } %t103)
  store { i64, ptr } %t106, ptr %l42
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t107 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t107, ptr %rv
  br label %ret
bb15:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l43, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l44, !tbaa !29
  %t110 = load ptr, ptr %l4, !tbaa !29
  %t111 = load i32, ptr %l2, !tbaa !23
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t110, i32 %t111)
  store i32 %t114, ptr %l47
  br label %bb16
bb16:
  %t115 = load ptr, ptr %l44, !tbaa !29
  %t116 = load i32, ptr %l47, !tbaa !23
  %t117 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t115, i32 %t116)
  store { i64, ptr } %t117, ptr %l48
  br label %bb17
bb17:
  %t118 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t118, ptr %l49, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l50, !tbaa !29
  %t120 = load ptr, ptr %l4, !tbaa !29
  %t121 = load i32, ptr %l3, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l53
  br label %bb18
bb18:
  %t125 = load ptr, ptr %l50, !tbaa !29
  %t126 = load i32, ptr %l53, !tbaa !23
  %t127 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t125, i32 %t126)
  store { i64, ptr } %t127, ptr %l54
  br label %bb19
bb19:
  %t128 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t130 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = add i64 %t129, %t132
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t136 = add i64 %t133, %t135
  %t137 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = add i64 %t136, %t139
  %t141 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t144 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = add i64 %t143, %t146
  %t148 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t147)
  call void @olang_textcopy(ptr %t148, ptr %t128, i64 %t129)
  %t149 = getelementptr i8, ptr %t148, i64 %t129
  call void @olang_textcopy(ptr %t149, ptr %t131, i64 %t132)
  %t150 = getelementptr i8, ptr %t149, i64 %t132
  call void @olang_textcopy(ptr %t150, ptr %t134, i64 %t135)
  %t151 = getelementptr i8, ptr %t150, i64 %t135
  call void @olang_textcopy(ptr %t151, ptr %t138, i64 %t139)
  %t152 = getelementptr i8, ptr %t151, i64 %t139
  call void @olang_textcopy(ptr %t152, ptr %t141, i64 %t142)
  %t153 = getelementptr i8, ptr %t152, i64 %t142
  call void @olang_textcopy(ptr %t153, ptr %t145, i64 %t146)
  %t154 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t148, 1
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t158 = extractvalue { i64, ptr } %t155, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t163 = load ptr, ptr %l43, !tbaa !29
  %t165 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t163, { i64, ptr } %t162)
  store { i64, ptr } %t165, ptr %l57
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t166 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t166, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2femit_2emathInexactTable(ptr %v0) #0 {
entry:
  %lp0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca [22 x { i64, ptr }]
  %l19 = alloca ptr
  %l20 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t2, ptr %lp0
  %t3 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  %t4 = load ptr, ptr %lp0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 0
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d352, i32 0, i32 1) }, ptr %t5
  %t6 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 1
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d353, i32 0, i32 1) }, ptr %t6
  %t7 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 2
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d354, i32 0, i32 1) }, ptr %t7
  %t8 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 3
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d355, i32 0, i32 1) }, ptr %t8
  %t9 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 4
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d356, i32 0, i32 1) }, ptr %t9
  %t10 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 5
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d357, i32 0, i32 1) }, ptr %t10
  %t11 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 6
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d358, i32 0, i32 1) }, ptr %t11
  %t12 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 7
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d359, i32 0, i32 1) }, ptr %t12
  %t13 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 8
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d360, i32 0, i32 1) }, ptr %t13
  %t14 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 9
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d361, i32 0, i32 1) }, ptr %t14
  %t15 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 10
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d362, i32 0, i32 1) }, ptr %t15
  %t16 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 11
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d363, i32 0, i32 1) }, ptr %t16
  %t17 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 12
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d364, i32 0, i32 1) }, ptr %t17
  %t18 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 13
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d365, i32 0, i32 1) }, ptr %t18
  %t19 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 14
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d366, i32 0, i32 1) }, ptr %t19
  %t20 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 15
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d367, i32 0, i32 1) }, ptr %t20
  %t21 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 16
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d368, i32 0, i32 1) }, ptr %t21
  %t22 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 17
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d369, i32 0, i32 1) }, ptr %t22
  %t23 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 18
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d370, i32 0, i32 1) }, ptr %t23
  %t24 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 19
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d371, i32 0, i32 1) }, ptr %t24
  %t25 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 20
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d372, i32 0, i32 1) }, ptr %t25
  %t26 = getelementptr [22 x { i64, ptr }], ptr %l6, i64 0, i64 21
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d373, i32 0, i32 1) }, ptr %t26
  %t27 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 352, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %l6, i64 352, i1 false)
  store ptr %t27, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t29 = load ptr, ptr %l1
  store i64 22, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t32 = load i64, ptr %l2, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l1
  %t41 = load i64, ptr %l2, !tbaa !24
  %t44 = getelementptr [22 x { i64, ptr }], ptr %t40, i64 0, i64 %t41
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !37
  store { i64, ptr } %t45, ptr %l4, !tbaa !27
  %t47 = load ptr, ptr %lp0
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t49 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %t49, ptr %t47, { i64, ptr } %t48, i1 true)
  br label %bb6
bb6:
  %t52 = load ptr, ptr %lp0
  store ptr %t52, ptr %l19, !tbaa !29
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l20, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t54, label %bb7, label %bb8
bb7:
  %t56 = call ptr @__olang_region_make(ptr %v0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d374, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d374, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = load i64, ptr %l20
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t64)
  call void @olang_textcopy(ptr %t67, ptr %t60, i64 %t61)
  %t68 = getelementptr i8, ptr %t67, i64 %t61
  call void @olang_textcopy(ptr %t68, ptr %t62, i64 %t63)
  %t69 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t67, 1
  %t72 = load i64, ptr %l20
  %t73 = inttoptr i64 %t72 to ptr
  %t74 = extractvalue { i64, ptr } %t70, 0
  %t75 = extractvalue { i64, ptr } %t70, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %t73, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t80, { i64, ptr } %t79, i1 true)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t82 = load i64, ptr %l2, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l2, !tbaa !24
  br label %bb2
bb11:
  call void @__olang_scope_close(ptr %s1)
  %t86 = load ptr, ptr %lp0
  %t87 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t86
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local i1 @compiler_2femit_2esymbolChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t5)
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb11
bb10:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp eq i8 %t15, 46
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb11
bb11:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb14
bb13:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp eq i8 %t20, 36
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb14
bb14:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb17
bb16:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp eq i8 %t25, 45
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb17
bb17:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/emit:scopeUse" @compiler_2femit_3ascopeUse_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca %"compiler/emit:scopeUse"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"compiler/emit:scopeUse" undef, { i64, ptr } %a0, 0
  %t6 = insertvalue %"compiler/emit:scopeUse" %t4, i1 false, 1
  store %"compiler/emit:scopeUse" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/emit:scopeUse", ptr %rv
  ret %"compiler/emit:scopeUse" %rr
}

@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"c:" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"@.c" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d8 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" = private unnamed_addr constant [" }>, align 8
@.d9 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" x i8] c\22" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\5C00\22\0A" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d12 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" {" }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"!dbg" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d20 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"startup" }>, align 8
@.d21 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"olang_task" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"task" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d24 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" = distinct !DISubprogram(name: \22" }>, align 8
@.d25 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"\22, scope: !" }>, align 8
@.d26 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", file: !" }>, align 8
@.d27 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c", line: 0, type: !" }>, align 8
@.d28 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c", scopeLine: 0, spFlags: DISPFlagDefinition, unit: !" }>, align 8
@.d29 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d31 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" = !DILocation(line: 0, scope: !" }>, align 8
@.d32 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d33 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" !dbg !" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" {\0A" }>, align 8
@.d35 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", !dbg !" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d40 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"!dbg" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d43 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".dtor" }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"lambda" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d46 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".init" }>, align 8
@.d47 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"!DISubroutineType(types: !{})" }>, align 8
@.d48 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_argc" }>, align 8
@.d49 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"@__olang_argc = external global i32" }>, align 8
@.d50 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_argv" }>, align 8
@.d51 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"@__olang_argv = external global ptr" }>, align 8
@.d52 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_thread_init" }>, align 8
@.d53 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"define i32 @main(i32 %argc, ptr %argv) #0 {\0Aentry:\0A" }>, align 8
@.d54 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"  store i32 %argc, ptr @__olang_argc\0A  store ptr %argv, ptr @__olang_argv\0A" }>, align 8
@.d55 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"  call void @__olang_thread_init()\0A" }>, align 8
@.d56 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_prof_start" }>, align 8
@.d57 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"llvm.frameaddress.p0" }>, align 8
@.d58 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"ptr @llvm.frameaddress.p0(i32)" }>, align 8
@.d59 = private constant <{ i64, [97 x i8] }> <{ i64 0, [97 x i8] c"  %proftop = call ptr @llvm.frameaddress.p0(i32 0)\0A  call void @__olang_prof_start(ptr %proftop)\0A" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 8
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

@.d60 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"  call void @" }>, align 8
@.d61 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"()\0A" }>, align 8
@.d62 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_prog_end" }>, align 8
@.d63 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"  call void @" }>, align 8
@.d64 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"()\0A  call void @__olang_prog_end()\0A  ret i32 0\0A}\0A\0A" }>, align 8
@.d65 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d66 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"  %c = call i32 @" }>, align 8
@.d67 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"()\0A  %bad = icmp ne i32 %c, 0\0A  br i1 %bad, label %err, label %ok\0Aok:\0A" }>, align 8
@.d68 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"  call void @__olang_prog_end()\0A  ret i32 0\0A" }>, align 8
@.d69 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"err:\0A" }>, align 8
@.d70 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fputs" }>, align 8
@.d71 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"i32 @fputs(ptr, ptr)" }>, align 8
@.d72 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"stderr" }>, align 8
@.d73 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"@stderr = external global ptr" }>, align 8
@.d74 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"  %s = load ptr, ptr @stderr\0A" }>, align 8
@.d75 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%m0" }>, align 8
@.d76 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"unhandled error\0A" }>, align 8
@.d77 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"  %m0 = getelementptr i8, ptr " }>, align 8
@.d78 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i64 0\0A" }>, align 8
@.d79 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unhandled error: " }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d81 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %q" }>, align 8
@.d82 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = icmp eq i32 %c, " }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d84 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %m" }>, align 8
@.d85 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" = select i1 %q" }>, align 8
@.d86 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d88 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%m" }>, align 8
@.d89 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  call i32 @fputs(ptr " }>, align 8
@.d90 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr %s)\0A" }>, align 8
@.d91 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_ert_print" }>, align 8
@.d92 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"void @__olang_ert_print(ptr)" }>, align 8
@.d93 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_debug_hint" }>, align 8
@.d94 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"void @__olang_debug_hint(ptr)" }>, align 8
@.d95 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"  call void @__olang_ert_print(ptr %s)\0A  call void @__olang_prog_end()\0A  ret i32 1\0A}\0A\0A" }>, align 8
@.d96 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"  call void @__olang_debug_hint(ptr %s)\0A  call void @__olang_prog_end()\0A  ret i32 1\0A}\0A\0A" }>, align 8
@.d97 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d100 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" by the self-hosted compiler: " }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d102 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"entry:\0A  call void @__olang_check_failed(ptr " }>, align 8
@.d103 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c")\0A  unreachable\0A}\0A\0A" }>, align 8
@.d104 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d105 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d107 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d108 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"load " }>, align 8
@.d109 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d110 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d111 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d113 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d114 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"bitcast bfloat " }>, align 8
@.d115 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i16" }>, align 8
@.d116 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"xor i16 " }>, align 8
@.d117 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", -32768" }>, align 8
@.d118 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"bitcast i16 " }>, align 8
@.d119 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" to bfloat" }>, align 8
@.d120 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fneg " }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d122 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sub " }>, align 8
@.d123 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" 0, " }>, align 8
@.d124 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d125 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-1" }>, align 8
@.d126 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"xor " }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d128 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d129 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"xor i1 " }>, align 8
@.d130 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", true" }>, align 8
@.d131 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"an any with no table" }>, align 8
@.d132 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d133 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"insertvalue { ptr, ptr } undef, ptr " }>, align 8
@.d134 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d135 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp ne ptr " }>, align 8
@.d136 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", null" }>, align 8
@.d137 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d138 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d139 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr null" }>, align 8
@.d140 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"insertvalue { ptr, ptr } " }>, align 8
@.d141 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d142 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d143 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d144 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d145 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { ptr, ptr } " }>, align 8
@.d146 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d147 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp ne ptr " }>, align 8
@.d148 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", null" }>, align 8
@.d149 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d150 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d151 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d152 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"load ptr, ptr " }>, align 8
@.d153 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq ptr " }>, align 8
@.d154 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", @" }>, align 8
@.d155 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d156 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d157 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d158 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d159 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"mul i64 " }>, align 8
@.d160 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d161 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_san_retire" }>, align 8
@.d162 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call void @__olang_san_retire(ptr " }>, align 8
@.d163 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d164 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d165 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d166 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d167 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d168 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"load atomic " }>, align 8
@.d169 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d170 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" seq_cst, align " }>, align 8
@.d171 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ctpop" }>, align 8
@.d172 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ctlz" }>, align 8
@.d173 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"cttz" }>, align 8
@.d174 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"llvm." }>, align 8
@.d175 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d176 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ctpop" }>, align 8
@.d177 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i1)" }>, align 8
@.d178 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d179 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d180 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d181 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ctpop" }>, align 8
@.d182 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d183 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d184 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d185 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d186 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d187 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d188 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d189 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"llvm.bswap." }>, align 8
@.d190 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d191 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d192 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d193 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d194 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d195 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d196 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d197 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d198 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d199 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d200 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d201 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"lshr " }>, align 8
@.d202 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d203 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 8" }>, align 8
@.d204 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trunc " }>, align 8
@.d205 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d206 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d207 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"llvm.bswap." }>, align 8
@.d208 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d209 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d210 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d211 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d212 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d213 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d214 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d215 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d216 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"srem i64 " }>, align 8
@.d217 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d218 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp slt i64 " }>, align 8
@.d219 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d220 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"add i64 " }>, align 8
@.d221 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d222 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d223 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d224 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"l" }>, align 8
@.d225 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"r" }>, align 8
@.d226 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"llvm.fsh" }>, align 8
@.d227 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d228 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d229 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d230 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d231 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d232 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d233 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d234 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d235 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d236 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d237 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d238 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d239 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d240 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d241 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fadd" }>, align 8
@.d242 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fsub" }>, align 8
@.d243 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fmul" }>, align 8
@.d244 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fdiv" }>, align 8
@.d245 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"frem" }>, align 8
@.d246 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d247 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d248 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" float " }>, align 8
@.d249 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d250 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fadd " }>, align 8
@.d251 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"add " }>, align 8
@.d252 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d253 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d254 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fsub " }>, align 8
@.d255 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sub " }>, align 8
@.d256 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d257 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d258 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fmul " }>, align 8
@.d259 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mul " }>, align 8
@.d260 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d261 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d262 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fdiv " }>, align 8
@.d263 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"udiv " }>, align 8
@.d264 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sdiv " }>, align 8
@.d265 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d266 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d267 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"frem " }>, align 8
@.d268 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"urem " }>, align 8
@.d269 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"srem " }>, align 8
@.d270 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d271 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d272 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"shl " }>, align 8
@.d273 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"lshr " }>, align 8
@.d274 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ashr " }>, align 8
@.d275 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d276 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d277 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"and " }>, align 8
@.d278 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d279 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d280 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"or " }>, align 8
@.d281 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d282 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d283 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"xor " }>, align 8
@.d284 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d285 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d286 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d287 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d288 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d289 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i64 " }>, align 8
@.d290 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d291 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d292 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d293 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d294 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d295 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d296 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d297 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp eq " }>, align 8
@.d298 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d299 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d300 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d301 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d302 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d303 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d304 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d305 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq ptr " }>, align 8
@.d306 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d307 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"and i1 " }>, align 8
@.d308 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d309 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp eq " }>, align 8
@.d310 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d311 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d312 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d313 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d314 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d315 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq i64 " }>, align 8
@.d316 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d317 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"trunc i64 " }>, align 8
@.d318 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i32" }>, align 8
@.d319 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq i32 " }>, align 8
@.d320 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d321 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"store atomic " }>, align 8
@.d322 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d323 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d324 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" seq_cst, align " }>, align 8
@.d325 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d326 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"add" }>, align 8
@.d327 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"xchg" }>, align 8
@.d328 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"atomicrmw " }>, align 8
@.d329 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" ptr " }>, align 8
@.d330 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d331 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d332 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" seq_cst" }>, align 8
@.d333 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"cmpxchg ptr " }>, align 8
@.d334 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d335 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d336 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" seq_cst seq_cst" }>, align 8
@.d337 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"extractvalue { " }>, align 8
@.d338 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", i1 } " }>, align 8
@.d339 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d340 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"the operation " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 52}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 i64 8, label %bb10 i64 9, label %bb11 i64 10, label %bb12 i64 11, label %bb13 i64 12, label %bb14 i64 13, label %bb15 i64 14, label %bb16 i64 15, label %bb17 i64 16, label %bb18 i64 17, label %bb19 i64 18, label %bb20 i64 19, label %bb21 i64 20, label %bb22 i64 21, label %bb23 i64 22, label %bb24 i64 23, label %bb25 i64 24, label %bb26 i64 25, label %bb27 i64 26, label %bb28 i64 27, label %bb29 i64 28, label %bb30 i64 29, label %bb31 i64 30, label %bb32 i64 31, label %bb33 i64 32, label %bb34 i64 33, label %bb35 i64 34, label %bb36 i64 35, label %bb37 i64 36, label %bb38 i64 37, label %bb39 i64 38, label %bb40 i64 39, label %bb41 i64 40, label %bb42 i64 41, label %bb43 i64 42, label %bb44 i64 43, label %bb45 i64 44, label %bb46 i64 45, label %bb47 i64 46, label %bb48 i64 47, label %bb49 i64 48, label %bb50 i64 49, label %bb51 i64 50, label %bb52 i64 51, label %bb53 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d375, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d375, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb10:
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb11:
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  br label %bb1
bb12:
  %t25 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d385, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d385, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  br label %bb1
bb13:
  %t27 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d386, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d386, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t27, i64 %t28)
  br label %bb1
bb14:
  %t29 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d387, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d387, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  br label %bb1
bb15:
  %t31 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb16:
  %t33 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d389, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d389, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb17:
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  br label %bb1
bb18:
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d391, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d391, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  br label %bb1
bb19:
  %t39 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb20:
  %t41 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  br label %bb1
bb21:
  %t43 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  br label %bb1
bb22:
  %t45 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d395, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d395, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t45, i64 %t46)
  br label %bb1
bb23:
  %t47 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d396, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d396, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb24:
  %t49 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
bb25:
  %t51 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t51, i64 %t52)
  br label %bb1
bb26:
  %t53 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d399, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d399, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  br label %bb1
bb27:
  %t55 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d400, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d400, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb28:
  %t57 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  br label %bb1
bb29:
  %t59 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  br label %bb1
bb30:
  %t61 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t61, i64 %t62)
  br label %bb1
bb31:
  %t63 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d404, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d404, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t63, i64 %t64)
  br label %bb1
bb32:
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d405, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d405, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t65, i64 %t66)
  br label %bb1
bb33:
  %t67 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t67, i64 %t68)
  br label %bb1
bb34:
  %t69 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d407, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d407, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t69, i64 %t70)
  br label %bb1
bb35:
  %t71 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d408, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d408, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t71, i64 %t72)
  br label %bb1
bb36:
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d409, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d409, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t73, i64 %t74)
  br label %bb1
bb37:
  %t75 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d410, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d410, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t75, i64 %t76)
  br label %bb1
bb38:
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d411, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d411, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t77, i64 %t78)
  br label %bb1
bb39:
  %t79 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d412, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d412, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  br label %bb1
bb40:
  %t81 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d413, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d413, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t81, i64 %t82)
  br label %bb1
bb41:
  %t83 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d414, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d414, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t83, i64 %t84)
  br label %bb1
bb42:
  %t85 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d415, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d415, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t85, i64 %t86)
  br label %bb1
bb43:
  %t87 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d416, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d416, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t87, i64 %t88)
  br label %bb1
bb44:
  %t89 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d417, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d417, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t89, i64 %t90)
  br label %bb1
bb45:
  %t91 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d418, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d418, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t91, i64 %t92)
  br label %bb1
bb46:
  %t93 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d419, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d419, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t93, i64 %t94)
  br label %bb1
bb47:
  %t95 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d420, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d420, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t95, i64 %t96)
  br label %bb1
bb48:
  %t97 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d421, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d421, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t97, i64 %t98)
  br label %bb1
bb49:
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d422, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d422, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t99, i64 %t100)
  br label %bb1
bb50:
  %t101 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d423, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d423, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t101, i64 %t102)
  br label %bb1
bb51:
  %t103 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d424, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d424, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb52:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d425, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d425, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  br label %bb1
bb53:
  %t107 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d426, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d426, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d341 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d342 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_prog_scope" }>, align 8
@.d343 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_prog_scope = external thread_local(initialexec) global ptr" }>, align 8
@.d344 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d345 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"@__olang_prog_scope" }>, align 8
@.d346 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trunc " }>, align 8
@.d347 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d348 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d349 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d350 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d351 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
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

@.d352 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"cbrt" }>, align 8
@.d353 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"exp" }>, align 8
@.d354 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"exp2" }>, align 8
@.d355 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"expm1" }>, align 8
@.d356 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"log" }>, align 8
@.d357 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"log2" }>, align 8
@.d358 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"log10" }>, align 8
@.d359 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"log1p" }>, align 8
@.d360 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"pow" }>, align 8
@.d361 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"hypot" }>, align 8
@.d362 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"sin" }>, align 8
@.d363 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"cos" }>, align 8
@.d364 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"tan" }>, align 8
@.d365 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"asin" }>, align 8
@.d366 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"acos" }>, align 8
@.d367 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"atan" }>, align 8
@.d368 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"atan2" }>, align 8
@.d369 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sinh" }>, align 8
@.d370 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"cosh" }>, align 8
@.d371 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"tanh" }>, align 8
@.d372 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"erf" }>, align 8
@.d373 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"erfc" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
@.d374 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"f" }>, align 8
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@.d375 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Neg" }>, align 8
@.d376 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitNot" }>, align 8
@.d377 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Not" }>, align 8
@.d378 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Add" }>, align 8
@.d379 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Sub" }>, align 8
@.d380 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Mul" }>, align 8
@.d381 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Div" }>, align 8
@.d382 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Rem" }>, align 8
@.d383 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shl" }>, align 8
@.d384 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shr" }>, align 8
@.d385 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitAnd" }>, align 8
@.d386 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.BitOr" }>, align 8
@.d387 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitXor" }>, align 8
@.d388 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Eq" }>, align 8
@.d389 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ne" }>, align 8
@.d390 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Lt" }>, align 8
@.d391 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Le" }>, align 8
@.d392 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Gt" }>, align 8
@.d393 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ge" }>, align 8
@.d394 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Same" }>, align 8
@.d395 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Convert" }>, align 8
@.d396 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Bitcast" }>, align 8
@.d397 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Len" }>, align 8
@.d398 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.IsCase" }>, align 8
@.d399 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicLoad" }>, align 8
@.d400 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AtomicStore" }>, align 8
@.d401 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.AtomicAdd" }>, align 8
@.d402 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicSwap" }>, align 8
@.d403 = private unnamed_addr constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"typed.PrimOp.AtomicCompareSwap" }>, align 8
@.d404 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Retire" }>, align 8
@.d405 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Drop" }>, align 8
@.d406 = private unnamed_addr constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"typed.PrimOp.LeadingZeros" }>, align 8
@.d407 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.PrimOp.TrailingZeros" }>, align 8
@.d408 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.PopCount" }>, align 8
@.d409 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.RotateLeft" }>, align 8
@.d410 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.RotateRight" }>, align 8
@.d411 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ByteSwap" }>, align 8
@.d412 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.Holds" }>, align 8
@.d413 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.LaneLen" }>, align 8
@.d414 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.NonEmpty" }>, align 8
@.d415 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Unpack" }>, align 8
@.d416 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Repack" }>, align 8
@.d417 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.AnyMake" }>, align 8
@.d418 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AnyInstance" }>, align 8
@.d419 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.AnyIs" }>, align 8
@.d420 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.ErrPush" }>, align 8
@.d421 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.ErrCaught" }>, align 8
@.d422 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ErrTaken" }>, align 8
@.d423 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatAdd" }>, align 8
@.d424 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatSub" }>, align 8
@.d425 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatMul" }>, align 8
@.d426 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatShl" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_6aada305a3873fb6_c16c54d6f05c33ea = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_5836d127b451ff05_764b57a187e296f1 = external constant [0 x i8]
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2femit_2eescape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_b200df0f2ca52fe9_68c86c80ca4bbd4d = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2eDemangle(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgGenFile(ptr %v0, ptr %a0)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgCu(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_e7f1f4c1c7eb01fc_51bf614425d25b70 = external constant [0 x i8]
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_18f6acb4865fb5f2_de2c0e3f26126f06 = external constant [0 x i8]
@olang_loc_795f0ceaa031aa73_92815be2925279e7 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eerrQualifier(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_e7633acc2439012_b16515948b11f746 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_eb27983cb422b22_ecec0dc804c2438e = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easInt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
@olang_loc_96948ec8b108caf2_f11085d875d0f99e = external constant [0 x i8]
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
@olang_loc_961c92f0031f8566_93f78080bb0935c2 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efromBits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, i32 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebitcast(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@olang_loc_69dfe582bfe1941e_f4b5889a4307147a = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eanyTable(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2enoTable(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeid(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esaturating(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/mir:Range" %a4)
@olang_loc_d23ee61a0d8dfe9f_a353f177579d38fb = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_f37913274faf0c64_a4499fcd83081580 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
@olang_loc_3839c0df7b992655_2640faef1ba2f611 = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_48fb755842b89882_1da88e591314daf6 = external constant [0 x i8]
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPush(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_3820e339cb1786be_89fed3c6bce3701a = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)

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
