source_filename = "compiler_emit-11.quick.ll"
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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/cabi:Regs" = type { i64, i64 }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:scopeUse" = type { { i64, ptr }, i1 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/emit:Reused" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecBitfields(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l21 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca i64
  %l30 = alloca i64
  %l49 = alloca { i64, ptr }
  %l52 = alloca i32
  %l55 = alloca i32
  %l59 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca i32
  %l76 = alloca ptr
  %l79 = alloca i32
  %l80 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l105 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l112 = alloca i64
  %l115 = alloca i64
  %l123 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t6, ptr %l21
  br label %bb1
bb1:
  %t7 = load %"std/prelude/text:StringBuilder", ptr %l21
  store %"std/prelude/text:StringBuilder" %t7, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l7, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb4:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l7, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l30, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l30, !tbaa !24
  store i64 %t38, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l27, !tbaa !24
  store i64 %t39, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  br label %bb40
bb10:
  br label %bb11
bb11:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l10, !tbaa !24
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t59, ptr %l49, !tbaa !27
  %t60 = load i64, ptr %l10, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i32, ptr %t63, i64 %t60
  %t65 = load i32, ptr %t64, !tbaa !33
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t58, i32 %t65)
  store i32 %t68, ptr %l52
  br label %bb12
bb12:
  %t69 = load i32, ptr %l52, !tbaa !23
  store i32 %t69, ptr %l11, !tbaa !23
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t71 = load i32, ptr %l11, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l55
  br label %bb13
bb13:
  %t75 = load i32, ptr %l55, !range !{i32 0, i32 33}
  %t77 = trunc i64 19 to i32
  %t78 = icmp eq i32 %t75, %t77
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l4, ptr %l59, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l11, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecBitfield(ptr %v0, ptr %s3, ptr %t82, i32 %t83)
  store { i64, ptr } %t86, ptr %l62
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t87 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t87, ptr %l63, !tbaa !27
  %t88 = load i64, ptr %l10, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %t91, i64 %t88
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !37
  store { i64, ptr } %t93, ptr %l65, !tbaa !27
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t95 = load i32, ptr %l11, !tbaa !23
  %t98 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t94, i32 %t95)
  store i64 %t98, ptr %l68
  br label %bb17
bb17:
  %t99 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t101 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = add i64 %t100, %t103
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t107 = add i64 %t104, %t106
  %t108 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t111 = add i64 %t107, %t110
  %t112 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t114 = add i64 %t111, %t113
  %t115 = load i64, ptr %l68, !tbaa !24
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t117 = add i64 %t114, %t116
  %t118 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t99, i64 %t100)
  %t122 = getelementptr i8, ptr %t121, i64 %t100
  call void @olang_textcopy(ptr %t122, ptr %t102, i64 %t103)
  %t123 = getelementptr i8, ptr %t122, i64 %t103
  call void @olang_textcopy(ptr %t123, ptr %t105, i64 %t106)
  %t124 = getelementptr i8, ptr %t123, i64 %t106
  call void @olang_textcopy(ptr %t124, ptr %t109, i64 %t110)
  %t125 = getelementptr i8, ptr %t124, i64 %t110
  call void @olang_textcopy(ptr %t125, ptr %t112, i64 %t113)
  %t126 = getelementptr i8, ptr %t125, i64 %t113
  %t127 = call i64 @__olang_fmt_i64(ptr %t126, i64 %t115)
  %t128 = getelementptr i8, ptr %t126, i64 %t116
  call void @olang_textcopy(ptr %t128, ptr %t118, i64 %t119)
  %t129 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t121, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = extractvalue { i64, ptr } %t130, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t138 = load ptr, ptr %l59, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t138, { i64, ptr } %t137)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb19:
  %t140 = load ptr, ptr %l3, !tbaa !29
  store ptr %t140, ptr %l71, !tbaa !29
  %t141 = load ptr, ptr %l3, !tbaa !29
  %t142 = load i32, ptr %l11, !tbaa !23
  %t145 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t141, i32 %t142)
  store i32 %t145, ptr %l74
  br label %bb20
bb20:
  %t146 = load ptr, ptr %l71, !tbaa !29
  %t147 = load i32, ptr %l74, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t148, ptr %l75
  br label %bb21
bb21:
  %t149 = load i32, ptr %l75, !tbaa !23
  store i32 %t149, ptr %l12, !tbaa !23
  store i64 0, ptr %l13, !tbaa !24
  %t150 = load ptr, ptr %l3, !tbaa !29
  store ptr %t150, ptr %l76, !tbaa !29
  %t151 = load ptr, ptr %l3, !tbaa !29
  %t152 = load i32, ptr %l11, !tbaa !23
  %t155 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t155, ptr %l79
  br label %bb22
bb22:
  %t156 = load ptr, ptr %l76, !tbaa !29
  %t157 = load i32, ptr %l79, !tbaa !23
  %t158 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t156, i32 %t157)
  store i64 %t158, ptr %l80
  br label %bb23
bb23:
  %t159 = load i64, ptr %l80, !tbaa !24
  store i64 %t159, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t160 = load i64, ptr %l14, !tbaa !24
  %t161 = load i64, ptr %l13, !tbaa !24
  %t164 = icmp sgt i64 %t160, %t161
  br i1 %t164, label %bb24, label %bb25
bb24:
  %t166 = load i64, ptr %l15, !tbaa !24
  %t168 = icmp sgt i64 %t166, 0
  br i1 %t168, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb29
bb26:
  %t170 = load i64, ptr %l14, !tbaa !24
  %t171 = load i64, ptr %l13, !tbaa !24
  %t174 = sub i64 %t170, %t171
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = add i64 %t174, %t175
  %t180 = sub i64 %t178, 1
  %t181 = load i64, ptr %l15, !tbaa !24
  %t184 = sdiv i64 %t180, %t181
  store i64 %t184, ptr %l87, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb28
bb28:
  %t186 = load i64, ptr %l87, !tbaa !24
  store i64 %t186, ptr %l84, !tbaa !24
  br label %bb29
bb29:
  %t187 = load i64, ptr %l84, !tbaa !24
  store i64 %t187, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t188 = load i64, ptr %l17, !tbaa !24
  %t189 = load i64, ptr %l16, !tbaa !24
  %t192 = icmp slt i64 %t188, %t189
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb32:
  br label %bb33
bb33:
  %t196 = load i64, ptr %l13, !tbaa !24
  %t197 = load i64, ptr %l17, !tbaa !24
  %t198 = load i64, ptr %l15, !tbaa !24
  %t201 = mul i64 %t197, %t198
  %t204 = add i64 %t196, %t201
  store i64 %t204, ptr %l18, !tbaa !24
  store ptr %l4, ptr %l105, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i32, ptr %l12, !tbaa !23
  %t210 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecBitfield(ptr %v0, ptr %s6, ptr %t206, i32 %t207)
  store { i64, ptr } %t210, ptr %l108
  br label %bb34
bb34:
  %t211 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t211, ptr %l109, !tbaa !27
  %t212 = load i64, ptr %l10, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr { i64, ptr }, ptr %t215, i64 %t212
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !37
  store { i64, ptr } %t217, ptr %l111, !tbaa !27
  %t218 = load i64, ptr %l18, !tbaa !24
  store i64 %t218, ptr %l112, !tbaa !24
  %t219 = load ptr, ptr %l3, !tbaa !29
  %t220 = load i32, ptr %l12, !tbaa !23
  %t223 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t219, i32 %t220)
  store i64 %t223, ptr %l115
  br label %bb35
bb35:
  %t224 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t226 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = extractvalue { i64, ptr } %t226, 0
  %t229 = add i64 %t225, %t228
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t233 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 1
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t236 = add i64 %t232, %t235
  %t237 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t239 = add i64 %t236, %t238
  %t240 = load i64, ptr %l112, !tbaa !24
  %t241 = call i64 @__olang_fmt_i64(ptr null, i64 %t240)
  %t242 = add i64 %t239, %t241
  %t243 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t245 = add i64 %t242, %t244
  %t246 = load i64, ptr %l115, !tbaa !24
  %t247 = call i64 @__olang_fmt_i64(ptr null, i64 %t246)
  %t248 = add i64 %t245, %t247
  %t249 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t251 = add i64 %t248, %t250
  %t252 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t251)
  call void @olang_textcopy(ptr %t252, ptr %t224, i64 %t225)
  %t253 = getelementptr i8, ptr %t252, i64 %t225
  call void @olang_textcopy(ptr %t253, ptr %t227, i64 %t228)
  %t254 = getelementptr i8, ptr %t253, i64 %t228
  call void @olang_textcopy(ptr %t254, ptr %t230, i64 %t231)
  %t255 = getelementptr i8, ptr %t254, i64 %t231
  call void @olang_textcopy(ptr %t255, ptr %t234, i64 %t235)
  %t256 = getelementptr i8, ptr %t255, i64 %t235
  call void @olang_textcopy(ptr %t256, ptr %t237, i64 %t238)
  %t257 = getelementptr i8, ptr %t256, i64 %t238
  %t258 = call i64 @__olang_fmt_i64(ptr %t257, i64 %t240)
  %t259 = getelementptr i8, ptr %t257, i64 %t241
  call void @olang_textcopy(ptr %t259, ptr %t243, i64 %t244)
  %t260 = getelementptr i8, ptr %t259, i64 %t244
  %t261 = call i64 @__olang_fmt_i64(ptr %t260, i64 %t246)
  %t262 = getelementptr i8, ptr %t260, i64 %t247
  call void @olang_textcopy(ptr %t262, ptr %t249, i64 %t250)
  %t263 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t252, 1
  %t266 = extractvalue { i64, ptr } %t264, 0
  %t267 = extractvalue { i64, ptr } %t264, 1
  %t268 = mul i64 %t266, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t268)
  call void @llvm.memcpy.p0.p0.i64(ptr %t269, ptr %t267, i64 %t268, i1 false)
  %t270 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  %t272 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t272, { i64, ptr } %t271)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb37:
  %t274 = load i64, ptr %l17, !tbaa !24
  %t276 = add i64 %t274, 1
  store i64 %t276, ptr %l17, !tbaa !24
  br label %bb30
bb38:
  br label %bb39
bb39:
  %t278 = load i64, ptr %l9, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l9, !tbaa !24
  br label %bb8
bb40:
  %t283 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l4)
  store { i64, ptr } %t283, ptr %l123
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t284 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t284, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eerrQualifier(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l21 = alloca i64
  %l27 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 10
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/emit:Emitter", ptr %t19, i32 0, i32 3
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t22, i32 %t23)
  store i64 %t26, ptr %l14
  br label %bb2
bb2:
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t29, ptr %l15
  br label %bb3
bb3:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t32 = getelementptr %"compiler/load:Module", ptr %t30, i32 0, i32 2
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l17, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/emit:Emitter", ptr %t34, i32 0, i32 3
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t37, i32 %t38)
  store i64 %t41, ptr %l21
  br label %bb4
bb4:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/emit:Emitter", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/load:Loader", ptr %t48, i32 0, i32 12
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr %l21, !tbaa !24
  %t54 = icmp eq i64 %t52, %t51
  %t55 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t57 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %t55, i1 %t54)
  store { i64, ptr } %t57, ptr %l27
  br label %bb5
bb5:
  %t58 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexternRet(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t20 = icmp eq i32 %t16, %t17
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l10, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l16, !tbaa !24
  %t26 = load i64, ptr %l16, !tbaa !24
  %t27 = mul i64 %t26, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l17, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l16, !tbaa !24
  %t36 = mul i64 %t35, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t37, ptr %l15, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %t39, i32 %t40)
  store { i64, ptr } %t43, ptr %l20
  br label %bb8
bb8:
  %t44 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2elibInit(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i1
  %l30 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca i64
  %l51 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t50 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t3, ptr %l7
  br label %bb2
bb2:
  %t4 = load %"std/prelude/text:StringBuilder", ptr %l7
  store %"std/prelude/text:StringBuilder" %t4, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %s0, ptr %t6, ptr %l2)
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l11, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l12
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s1, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l14
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l11, !tbaa !29
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %s1, ptr %s1, ptr %t13, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l15
  br label %bb6
bb6:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t17 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  store ptr %t17, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  %t19 = load i64, ptr %l4, !tbaa !24
  store i64 %t19, ptr %l17, !tbaa !24
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t20)
  store i64 %t22, ptr %l19
  br label %bb8
bb8:
  %t23 = load i64, ptr %l17, !tbaa !24
  %t24 = load i64, ptr %l19, !tbaa !24
  %t25 = icmp slt i64 %t23, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t29, i64 %t30)
  store i64 %t33, ptr %l24
  br label %bb12
bb12:
  %t34 = load i64, ptr %l24, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/emit:Emitter", ptr %t35, i32 0, i32 47
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %t37, i64 %t38)
  store i1 %t41, ptr %l28
  br label %bb13
bb13:
  %t42 = load i1, ptr %l28, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l2, ptr %l30, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = trunc i64 %t46 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 0
  store i64 0, ptr %t51
  %t53 = insertvalue { i32 } undef, i32 %t48, 0
  %t54 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  store { i32 } %t53, ptr %t54
  %t55 = load { i64, [2 x i64] }, ptr %t50
  %t58 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s3, ptr %t45, { i64, [2 x i64] } %t55)
  store { i64, ptr } %t58, ptr %l36
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t59 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t61 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = add i64 %t60, %t63
  %t65 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t59, i64 %t60)
  %t69 = getelementptr i8, ptr %t68, i64 %t60
  call void @olang_textcopy(ptr %t69, ptr %t62, i64 %t63)
  %t70 = getelementptr i8, ptr %t69, i64 %t63
  call void @olang_textcopy(ptr %t70, ptr %t65, i64 %t66)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t68, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t80, { i64, ptr } %t79)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l4, !tbaa !24
  br label %bb7
bb20:
  call void @__olang_scope_close(ptr %s1)
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb21
bb21:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 130, ptr getelementptr inbounds (<{ i64, [130 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb22
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l43, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/emit:Emitter", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 12
  %t98 = load i64, ptr %t97, !tbaa !24
  store i64 %t98, ptr %l47, !tbaa !24
  %t99 = ptrtoint ptr %s0 to i64
  store i64 %t99, ptr %l48, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = call ptr @__olang_region_make(ptr %s0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l48, !tbaa !24
  br label %bb24
bb24:
  %t104 = load i64, ptr %l48
  %t105 = inttoptr i64 %t104 to ptr
  %t107 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t105, ptr %l2)
  store { i64, ptr } %t107, ptr %l51
  br label %bb25
bb25:
  %t108 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t109 = load i64, ptr %l48
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = extractvalue { i64, ptr } %t108, 0
  %t112 = extractvalue { i64, ptr } %t108, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %t110, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l43, !tbaa !29
  %t118 = load i64, ptr %l47, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t117, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d16, i32 0, i32 1) }, i64 %t118, { i64, ptr } %t116, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2enoTable(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d18, i32 0, i32 1) }, i64 %t2, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb1
bb1:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignatureText(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l10 = alloca i64
  %l16 = alloca ptr
  %l22 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i32
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 10
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t18, i64 %t9)
  store ptr %t22, ptr %l16
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 6
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  store ptr %t35, ptr %l22
  br label %bb3
bb3:
  %t36 = load ptr, ptr %l22, !tbaa !29
  store ptr %t36, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/ast:Func", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s1, ptr %t41, i32 %t45)
  store { i64, ptr } %t48, ptr %l28
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t49 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t51 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = add i64 %t50, %t53
  %t55 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t54)
  call void @olang_textcopy(ptr %t55, ptr %t49, i64 %t50)
  %t56 = getelementptr i8, ptr %t55, i64 %t50
  call void @olang_textcopy(ptr %t56, ptr %t52, i64 %t53)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t58, ptr %rv
  br label %ret
bb7:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/source:Source", ptr %t60, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l31, !tbaa !27
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Func", ptr %t64, i32 0, i32 0
  %t67 = getelementptr %"compiler/source:Span", ptr %t66, i32 0, i32 0
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  store i64 %t70, ptr %l34, !tbaa !24
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Func", ptr %t71, i32 0, i32 0
  %t74 = getelementptr %"compiler/source:Span", ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  store i64 %t77, ptr %l37, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l38, !tbaa !24
  %t80 = load i64, ptr %l34, !tbaa !24
  %t81 = icmp sge i64 %t80, 0
  br i1 %t81, label %bb8, label %bb9
bb8:
  %t83 = load i64, ptr %l34, !tbaa !24
  %t84 = load i64, ptr %l37, !tbaa !24
  %t85 = icmp sle i64 %t83, %t84
  br i1 %t85, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_42bc5298e90f43ae_6d491b8985e0cdda)
  unreachable
bb10:
  %t87 = load i64, ptr %l37, !tbaa !24
  %t88 = load i64, ptr %l38, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_42bc5298e90f43ae_6d491b8985e0cdda)
  unreachable
bb12:
  %t91 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l34, !tbaa !24
  %t94 = load i64, ptr %l37, !tbaa !24
  %t95 = getelementptr i8, ptr %t92, i64 %t93
  %t96 = sub i64 %t94, %t93
  %t97 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  store { i64, ptr } %t98, ptr %l5, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t103 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t100, i8 123)
  %t104 = extractvalue { i32, i64 } %t103, 1
  %t105 = extractvalue { i32, i64 } %t103, 0
  store i32 %t105, ptr %l47
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb15, label %ok.107, !prof !99
ok.107:
  store i64 %t104, ptr %l46
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_42bc5298e90f43ae_6d491b8985e0cdda)
  unreachable
bb14:
  %t108 = load i64, ptr %l46, !tbaa !24
  store i64 %t108, ptr %l43, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  %t109 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  store i64 %t111, ptr %l43, !tbaa !24
  br label %bb17
bb17:
  %t113 = load i64, ptr %l43, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t114, ptr %l50, !tbaa !27
  store i64 %t113, ptr %l51, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l52, !tbaa !24
  %t118 = icmp sge i64 0, 0
  br i1 %t118, label %bb18, label %bb19
bb18:
  %t120 = load i64, ptr %l51, !tbaa !24
  %t121 = icmp sle i64 0, %t120
  br i1 %t121, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37)
  unreachable
bb20:
  %t123 = load i64, ptr %l51, !tbaa !24
  %t124 = load i64, ptr %l52, !tbaa !24
  %t125 = icmp sle i64 %t123, %t124
  br i1 %t125, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37)
  unreachable
bb22:
  %t127 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = load i64, ptr %l51, !tbaa !24
  %t130 = getelementptr i8, ptr %t128, i64 0
  %t131 = sub i64 %t129, 0
  %t132 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t130, 1
  %t135 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t133)
  store { i64, ptr } %t135, ptr %l57
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37)
  unreachable
bb24:
  %t136 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l59, !tbaa !27
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t140 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t136, { i64, ptr } %t138, { i64, ptr } %t139)
  store { i64, ptr } %t140, ptr %l61
  br label %bb25
bb25:
  %t141 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l62, !tbaa !24
  %t143 = load i64, ptr %l62, !tbaa !24
  %t144 = mul i64 %t143, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t144)
  %t146 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  store { i64, ptr } %t147, ptr %l63, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = load i64, ptr %l62, !tbaa !24
  %t153 = mul i64 %t152, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t149, ptr %t151, i64 %t153, i1 false)
  %t154 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t156, i64 %t157)
  %t159 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestSource(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d24, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t3, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d26, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb2
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t5, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t7, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d30, i32 0, i32 1) }, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeid(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %s0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 1
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t11 = add i64 %t7, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t6, i64 %t7)
  %t13 = getelementptr i8, ptr %t12, i64 %t7
  call void @olang_textcopy(ptr %t13, ptr %t9, i64 %t10)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t12, 1
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = extractvalue { i64, ptr } %t15, 1
  %t19 = mul i64 %t17, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t19)
  call void @llvm.memcpy.p0.p0.i64(ptr %t20, ptr %t18, i64 %t19, i1 false)
  %t21 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  %t24 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v1, ptr %v1, { i64, ptr } %t22)
  store { i64, ptr } %t24, ptr %l8
  br label %bb2
bb2:
  %t25 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t25, ptr %lp2
  %t26 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t27 = load ptr, ptr %lp2
  store { i64, ptr } %t26, ptr %t27, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l9, !tbaa !29
  %t29 = load ptr, ptr %lp2
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l10, !tbaa !27
  %t31 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t31, ptr %l11, !tbaa !24
  %t32 = ptrtoint ptr %s0 to i64
  store i64 %t32, ptr %l12, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = call ptr @__olang_region_make(ptr %s0)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t37 = load ptr, ptr %lp2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t42 = extractvalue { i64, ptr } %t38, 1
  %t43 = extractvalue { i64, ptr } %t38, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = load i64, ptr %l12
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t47)
  call void @olang_textcopy(ptr %t50, ptr %t39, i64 %t40)
  %t51 = getelementptr i8, ptr %t50, i64 %t40
  call void @olang_textcopy(ptr %t51, ptr %t42, i64 %t43)
  %t52 = getelementptr i8, ptr %t51, i64 %t43
  call void @olang_textcopy(ptr %t52, ptr %t45, i64 %t46)
  %t53 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t50, 1
  %t56 = load i64, ptr %l12
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = extractvalue { i64, ptr } %t54, 0
  %t59 = extractvalue { i64, ptr } %t54, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %t57, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t64 = load ptr, ptr %l9, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t66 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t64, { i64, ptr } %t65, i64 %t66, { i64, ptr } %t63, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb5
bb5:
  %t68 = load ptr, ptr %lp2
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t69, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i1
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l6
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/emit:fnEm", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/emit:Emitter", ptr %t15, i32 0, i32 3
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l11
  br label %bb2
bb2:
  %t23 = load i64, ptr %l11, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ecCall(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Call" %a1, { i64, ptr } %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Call"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca i1
  %l9 = alloca %"compiler/cabi:Regs"
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"compiler/cabi:Way"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/cabi:Way"
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca { i64, [4 x i64] }
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca { { i64, ptr }, i32 }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i32
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l67 = alloca i32
  %l68 = alloca %"std/prelude/text:StringBuilder"
  %l69 = alloca %"compiler/cabi:Regs"
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca i32
  %l75 = alloca i64
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca %"compiler/cabi:Way"
  %l91 = alloca i1
  %l99 = alloca i1
  %l106 = alloca %"compiler/cabi:Way"
  %l107 = alloca %"compiler/cabi:Way"
  %l116 = alloca { i64, ptr }
  %l118 = alloca i64
  %l120 = alloca ptr
  %l123 = alloca { i64, ptr }
  %l126 = alloca i64
  %l132 = alloca ptr
  %l135 = alloca i32
  %l136 = alloca { i64, ptr }
  %l142 = alloca i64
  %l145 = alloca i64
  %l169 = alloca { i64, [4 x i64] }
  %l170 = alloca { i64, ptr }
  %l175 = alloca i32
  %l178 = alloca i32
  %l181 = alloca i1
  %l183 = alloca i1
  %l186 = alloca ptr
  %l187 = alloca ptr
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l198 = alloca i32
  %l203 = alloca ptr
  %l206 = alloca { i64, ptr }
  %l211 = alloca i1
  %l212 = alloca i32
  %l215 = alloca i32
  %l219 = alloca i1
  %l220 = alloca i1
  %l221 = alloca ptr
  %l224 = alloca i32
  %l225 = alloca i32
  %l232 = alloca i32
  %l233 = alloca ptr
  %l234 = alloca ptr
  %l238 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l247 = alloca i1
  %l255 = alloca %"compiler/cabi:Way"
  %l259 = alloca ptr
  %l262 = alloca { i64, ptr }
  %l264 = alloca i1
  %l266 = alloca { i64, ptr }
  %l273 = alloca { i64, ptr }
  %l278 = alloca ptr
  %l282 = alloca i64
  %l285 = alloca { i64, ptr }
  %l291 = alloca i64
  %l295 = alloca i64
  %l298 = alloca i64
  %l321 = alloca { i64, ptr }
  %l323 = alloca { i64, ptr }
  %l324 = alloca { i64, ptr }
  %l325 = alloca { i64, ptr }
  %l326 = alloca i64
  %l327 = alloca { i64, ptr }
  %l331 = alloca i64
  %l333 = alloca { i64, ptr }
  %l335 = alloca ptr
  %l336 = alloca { i64, ptr }
  %l339 = alloca i64
  %l342 = alloca { i64, ptr }
  %l343 = alloca i64
  %l344 = alloca { i64, ptr }
  %l345 = alloca ptr
  %l348 = alloca { i64, ptr }
  %l352 = alloca { i64, ptr }
  %l361 = alloca { i64, ptr }
  %l366 = alloca ptr
  %l369 = alloca { i64, ptr }
  %l372 = alloca i64
  %l373 = alloca i64
  %l379 = alloca { i64, ptr }
  %l397 = alloca i64
  %l400 = alloca i64
  %l424 = alloca { i64, [4 x i64] }
  %l427 = alloca i32
  %l428 = alloca ptr
  %l429 = alloca ptr
  %l433 = alloca { i64, ptr }
  %l436 = alloca { i64, ptr }
  %l443 = alloca { i64, ptr }
  %l444 = alloca { i64, ptr }
  %l445 = alloca i64
  %l446 = alloca { i64, ptr }
  %l449 = alloca i1
  %l451 = alloca i1
  %l455 = alloca i64
  %l457 = alloca i64
  %l458 = alloca i64
  %l463 = alloca { i64, ptr }
  %l465 = alloca i64
  %l467 = alloca i64
  %l468 = alloca { i64, ptr }
  %l469 = alloca { i64, ptr }
  %l470 = alloca i64
  %l471 = alloca { i64, ptr }
  %l473 = alloca { i64, ptr }
  %l477 = alloca { i64, ptr }
  %l481 = alloca { i64, ptr }
  %l482 = alloca { i64, ptr }
  %l484 = alloca i64
  %l486 = alloca { i64, ptr }
  %l487 = alloca { i64, ptr }
  %l488 = alloca i64
  %l489 = alloca { i64, ptr }
  %l491 = alloca i1
  %l492 = alloca ptr
  %l493 = alloca { i64, ptr }
  %l494 = alloca { i64, ptr }
  %l496 = alloca { i64, ptr }
  %l499 = alloca ptr
  %l500 = alloca { i64, ptr }
  %l501 = alloca { i64, ptr }
  %l503 = alloca { i64, ptr }
  %l506 = alloca { i64, ptr }
  %l508 = alloca i64
  %l515 = alloca i1
  %l521 = alloca { { i64, ptr }, i32 }
  %l527 = alloca ptr
  %l530 = alloca { i64, ptr }
  %l536 = alloca ptr
  %l540 = alloca i64
  %l543 = alloca { i64, ptr }
  %l545 = alloca i64
  %l549 = alloca i64
  %l552 = alloca i64
  %l571 = alloca i64
  %l573 = alloca { i64, ptr }
  %l581 = alloca { i64, ptr }
  %l582 = alloca i64
  %l583 = alloca { i64, ptr }
  %l586 = alloca i64
  %l588 = alloca { i64, ptr }
  %l590 = alloca ptr
  %l591 = alloca { i64, ptr }
  %l594 = alloca i64
  %l597 = alloca { i64, ptr }
  %l598 = alloca i64
  %l599 = alloca { i64, ptr }
  %l600 = alloca ptr
  %l603 = alloca { i64, ptr }
  %l608 = alloca ptr
  %l609 = alloca { i64, ptr }
  %l610 = alloca { i64, ptr }
  %l613 = alloca i64
  %l614 = alloca ptr
  %l615 = alloca { i64, ptr }
  %l616 = alloca { i64, ptr }
  %l619 = alloca i64
  %l620 = alloca ptr
  %l622 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s44 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/mir:Call" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
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
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l67
  br label %bb1
bb1:
  %t14 = load i32, ptr %l67, !tbaa !23
  store i32 %t14, ptr %l6, !tbaa !23
  %t15 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t15, ptr %l68
  br label %bb2
bb2:
  %t16 = load %"std/prelude/text:StringBuilder", ptr %l68
  store %"std/prelude/text:StringBuilder" %t16, ptr %l7
  store i1 true, ptr %l8, !tbaa !21
  %t17 = call %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %s0, i64 6, i64 8)
  store %"compiler/cabi:Regs" %t17, ptr %l69
  br label %bb3
bb3:
  %t18 = load %"compiler/cabi:Regs", ptr %l69
  store %"compiler/cabi:Regs" %t18, ptr %l9
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l70, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t19, ptr %l71, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l72, !tbaa !24
  %t22 = load i64, ptr %l72, !tbaa !24
  %t23 = mul i64 %t22, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l73, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l72, !tbaa !24
  %t32 = mul i64 %t31, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t33, ptr %l10, !tbaa !27
  store i32 0, ptr %l74
  %t34 = ptrtoint ptr %s0 to i64
  store i64 %t34, ptr %l75, !tbaa !24
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t35, label %bb4, label %bb5
bb4:
  %t37 = call ptr @__olang_region_make(ptr %s0)
  %t38 = ptrtoint ptr %t37 to i64
  store i64 %t38, ptr %l75, !tbaa !24
  br label %bb5
bb5:
  %t39 = load i64, ptr %l75
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t40, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, ptr %l77
  br label %bb6
bb6:
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t42, label %bb7, label %bb8
bb7:
  %t44 = load i64, ptr %l75
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = call ptr @__olang_region_or(ptr %t48, ptr null)
  %t50 = icmp ne ptr %t49, null
  %t51 = select i1 %t50, ptr %t49, ptr null
  %t52 = icmp eq ptr %t51, %t45
  call void @__olang_region_settle(ptr %t45, i1 %t52)
  br label %bb8
bb8:
  %t53 = ptrtoint ptr %s0 to i64
  store i64 %t53, ptr %l79, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t54, label %bb9, label %bb10
bb9:
  %t56 = call ptr @__olang_region_make(ptr %s0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l79, !tbaa !24
  br label %bb10
bb10:
  %t58 = load i64, ptr %l79
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t59, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l81
  br label %bb11
bb11:
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load i64, ptr %l79
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr null
  %t71 = icmp eq ptr %t70, %t64
  call void @__olang_region_settle(ptr %t64, i1 %t71)
  br label %bb13
bb13:
  %t72 = ptrtoint ptr %s0 to i64
  store i64 %t72, ptr %l83, !tbaa !24
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = call ptr @__olang_region_make(ptr %s0)
  %t76 = ptrtoint ptr %t75 to i64
  store i64 %t76, ptr %l83, !tbaa !24
  br label %bb15
bb15:
  %t77 = load i64, ptr %l83
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t78, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l85
  br label %bb16
bb16:
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t80, label %bb17, label %bb18
bb17:
  %t82 = load i64, ptr %l83
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85, i32 0, i32 0
  %t85 = load { i64, ptr }, ptr %t84
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = call ptr @__olang_region_or(ptr %t86, ptr null)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr null
  %t90 = icmp eq ptr %t89, %t83
  call void @__olang_region_settle(ptr %t83, i1 %t90)
  br label %bb18
bb18:
  %t91 = load i32, ptr %l74, !range !{i32 0, i32 5}
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  %t94 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  %t95 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, i32 %t91, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t95, ptr %l87
  br label %bb19
bb19:
  %t96 = load %"compiler/cabi:Way", ptr %l87
  store %"compiler/cabi:Way" %t96, ptr %l11
  %t97 = load i32, ptr %l6, !tbaa !23
  %t98 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t101 = icmp ne i32 %t97, %t98
  br i1 %t101, label %bb20, label %bb21
bb20:
  %t103 = load i32, ptr %l6, !tbaa !23
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t107 = icmp ne i32 %t103, %t104
  store i1 %t107, ptr %l91, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb22
bb22:
  %t109 = load i1, ptr %l91, !tbaa !21
  br i1 %t109, label %bb23, label %bb24
bb23:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/emit:fnEm", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/emit:Emitter", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t117 = load i32, ptr %l6, !tbaa !23
  %t120 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t116, i32 %t117)
  store i1 %t120, ptr %l99
  br label %bb25
bb24:
  br label %bb45
bb25:
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/emit:fnEm", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/emit:Emitter", ptr %t125, i32 0, i32 48
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t129 = load i32, ptr %l6, !tbaa !23
  %t131 = inttoptr i64 0 to ptr
  %t135 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v0, ptr %s0, ptr %t131, ptr %t121, { i64, ptr } %t128, i32 %t129)
  store %"compiler/cabi:Way" %t135, ptr %l106
  br label %bb26
bb26:
  %t136 = load %"compiler/cabi:Way", ptr %l11
  store %"compiler/cabi:Way" %t136, ptr %l107
  %t137 = load %"compiler/cabi:Way", ptr %l106
  store %"compiler/cabi:Way" %t137, ptr %l11
  %t138 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t138, label %bb27, label %bb28
bb27:
  %t140 = getelementptr %"compiler/cabi:Way", ptr %l107, i32 0, i32 1
  %t141 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t140, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr null
  call void @__olang_region_drop(ptr %t146)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t140
  br label %bb28
bb28:
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t147, label %bb29, label %bb30
bb29:
  %t149 = getelementptr %"compiler/cabi:Way", ptr %l107, i32 0, i32 2
  %t150 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t149, i32 0, i32 0
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr null
  call void @__olang_region_drop(ptr %t155)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t149
  br label %bb30
bb30:
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t156, label %bb31, label %bb32
bb31:
  %t158 = getelementptr %"compiler/cabi:Way", ptr %l107, i32 0, i32 3
  %t159 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t158, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = call ptr @__olang_region_or(ptr %t161, ptr null)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr null
  call void @__olang_region_drop(ptr %t164)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t158
  br label %bb32
bb32:
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e4
  br i1 %t165, label %bb33, label %bb34
bb33:
  %t167 = getelementptr %"compiler/cabi:Way", ptr %l107, i32 0, i32 4
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  call void @__olang_region_release(ptr %t169)
  store { i64, ptr } zeroinitializer, ptr %t167
  br label %bb34
bb34:
  %t170 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 0
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 5}
  %t173 = trunc i64 4 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s2
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l6, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s0, ptr %t176, i32 %t177)
  store { i64, ptr } %t180, ptr %l116
  br label %bb37
bb36:
  br label %bb44
bb37:
  %t181 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 0
  store i64 %t184, ptr %l118, !tbaa !24
  %t186 = load i64, ptr %l118, !tbaa !24
  %t187 = icmp eq i64 %t182, %t186
  br i1 %t187, label %bb38, label %bb39
bb38:
  %t189 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = load i64, ptr %l118, !tbaa !24
  %t194 = mul i64 %t193, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t190, ptr %t192, i64 %t194, i1 false)
  br label %bb40
bb39:
  %t195 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t195, ptr %l10, !tbaa !27
  br label %bb40
bb40:
  store ptr %l7, ptr %l120, !tbaa !29
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load i32, ptr %l6, !tbaa !23
  %t200 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %t196, i32 %t197)
  store { i64, ptr } %t200, ptr %l123
  br label %bb41
bb41:
  %t201 = load ptr, ptr %l5, !tbaa !29
  %t202 = load i32, ptr %l6, !tbaa !23
  %t205 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t201, i32 %t202)
  store i64 %t205, ptr %l126
  br label %bb42
bb42:
  %t206 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t207 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t209 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = load i64, ptr %l126, !tbaa !24
  %t217 = call i64 @__olang_fmt_i64(ptr null, i64 %t216)
  %t218 = add i64 %t215, %t217
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t223 = extractvalue { i64, ptr } %t206, 1
  %t224 = extractvalue { i64, ptr } %t206, 0
  %t225 = add i64 %t221, %t224
  %t226 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t225)
  call void @olang_textcopy(ptr %t226, ptr %t207, i64 %t208)
  %t227 = getelementptr i8, ptr %t226, i64 %t208
  call void @olang_textcopy(ptr %t227, ptr %t210, i64 %t211)
  %t228 = getelementptr i8, ptr %t227, i64 %t211
  call void @olang_textcopy(ptr %t228, ptr %t213, i64 %t214)
  %t229 = getelementptr i8, ptr %t228, i64 %t214
  %t230 = call i64 @__olang_fmt_i64(ptr %t229, i64 %t216)
  %t231 = getelementptr i8, ptr %t229, i64 %t217
  call void @olang_textcopy(ptr %t231, ptr %t219, i64 %t220)
  %t232 = getelementptr i8, ptr %t231, i64 %t220
  call void @olang_textcopy(ptr %t232, ptr %t223, i64 %t224)
  %t233 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t234 = insertvalue { i64, ptr } %t233, ptr %t226, 1
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t237 = extractvalue { i64, ptr } %t234, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  %t242 = load ptr, ptr %l120, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t242, { i64, ptr } %t241)
  br label %bb43
bb43:
  store i1 false, ptr %l8, !tbaa !21
  %t244 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t245 = load i64, ptr %t244, !tbaa !24
  %t247 = sub i64 %t245, 1
  %t249 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t247, ptr %t249, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t250 = load ptr, ptr %l5, !tbaa !29
  store ptr %t250, ptr %l132, !tbaa !29
  %t251 = load ptr, ptr %l5, !tbaa !29
  %t252 = load i32, ptr %l3, !tbaa !23
  %t255 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t251, i32 %t252)
  store i32 %t255, ptr %l135
  br label %bb46
bb46:
  %t256 = load ptr, ptr %l132, !tbaa !29
  %t257 = load i32, ptr %l135, !tbaa !23
  %t258 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t256, i32 %t257)
  store { i64, ptr } %t258, ptr %l136
  br label %bb47
bb47:
  %t259 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t259, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t260 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t260, 0
  store i64 %t262, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t264 = load i64, ptr %l14, !tbaa !24
  %t265 = load i64, ptr %l13, !tbaa !24
  %t268 = icmp sgt i64 %t264, %t265
  br i1 %t268, label %bb48, label %bb49
bb48:
  %t270 = load i64, ptr %l15, !tbaa !24
  %t272 = icmp sgt i64 %t270, 0
  br i1 %t272, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb53
bb50:
  %t274 = load i64, ptr %l14, !tbaa !24
  %t275 = load i64, ptr %l13, !tbaa !24
  %t278 = sub i64 %t274, %t275
  %t279 = load i64, ptr %l15, !tbaa !24
  %t282 = add i64 %t278, %t279
  %t284 = sub i64 %t282, 1
  %t285 = load i64, ptr %l15, !tbaa !24
  %t288 = sdiv i64 %t284, %t285
  store i64 %t288, ptr %l145, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb52
bb52:
  %t290 = load i64, ptr %l145, !tbaa !24
  store i64 %t290, ptr %l142, !tbaa !24
  br label %bb53
bb53:
  %t291 = load i64, ptr %l142, !tbaa !24
  store i64 %t291, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb54
bb54:
  store %olang.scope zeroinitializer, ptr %s5
  %t292 = load i64, ptr %l17, !tbaa !24
  %t293 = load i64, ptr %l16, !tbaa !24
  %t296 = icmp slt i64 %t292, %t293
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s5)
  br label %bb166
bb56:
  br label %bb57
bb57:
  %t300 = load i64, ptr %l13, !tbaa !24
  %t301 = load i64, ptr %l17, !tbaa !24
  %t302 = load i64, ptr %l15, !tbaa !24
  %t305 = mul i64 %t301, %t302
  %t308 = add i64 %t300, %t305
  store i64 %t308, ptr %l18, !tbaa !24
  %t310 = load i1, ptr %l8, !tbaa !21
  %t312 = xor i1 %t310, true
  br i1 %t312, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) })
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s6)
  br label %bb61
bb61:
  store i1 false, ptr %l8, !tbaa !21
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t317 = load %"compiler/mir:Range", ptr %t316
  %t318 = load i64, ptr %l18, !tbaa !24
  %t322 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t315, %"compiler/mir:Range" %t317, i64 %t318)
  store { i64, [4 x i64] } %t322, ptr %l169
  br label %bb62
bb62:
  %t323 = load { i64, [4 x i64] }, ptr %l169
  store { i64, [4 x i64] } %t323, ptr %l19
  %t324 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t324, ptr %l170, !tbaa !27
  %t325 = load i64, ptr %l18, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i32, ptr %t328, i64 %t325
  %t330 = load i32, ptr %t329, !tbaa !33
  store i32 %t330, ptr %l20, !tbaa !23
  %t332 = load ptr, ptr %l5, !tbaa !29
  %t333 = load i32, ptr %l20, !tbaa !23
  %t336 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t332, i32 %t333)
  store i32 %t336, ptr %l175
  br label %bb63
bb63:
  %t337 = load i32, ptr %l175, !tbaa !23
  store i32 %t337, ptr %l21, !tbaa !23
  %t338 = load ptr, ptr %l5, !tbaa !29
  %t339 = load i32, ptr %l21, !tbaa !23
  %t342 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t338, i32 %t339)
  store i32 %t342, ptr %l178
  br label %bb64
bb64:
  %t343 = load i32, ptr %l178, !range !{i32 0, i32 33}
  %t345 = trunc i64 21 to i32
  %t346 = icmp eq i32 %t343, %t345
  br i1 %t346, label %bb65, label %bb66
bb65:
  %t348 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t350 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s5, { i64, ptr } %t348, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t350, ptr %l183
  br label %bb67
bb66:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb68
bb67:
  %t351 = load i1, ptr %l183, !tbaa !21
  store i1 %t351, ptr %l181, !tbaa !21
  br label %bb68
bb68:
  %t352 = load i1, ptr %l181, !tbaa !21
  br i1 %t352, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s7
  %t353 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t354 = load i64, ptr %t353, !tbaa !24
  %t356 = sub i64 %t354, 2
  %t358 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t356, ptr %t358, !tbaa !24
  store ptr %l7, ptr %l186, !tbaa !29
  %t359 = load ptr, ptr %l0, !tbaa !29
  store ptr %t359, ptr %l187, !tbaa !29
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load { i64, [4 x i64] }, ptr %l19
  %t362 = load i32, ptr %l20, !tbaa !23
  %t366 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s7, ptr %t360, { i64, [4 x i64] } %t361, i32 %t362)
  store { i64, ptr } %t366, ptr %l191
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t367 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t368 = extractvalue { i64, ptr } %t367, 0
  %t369 = extractvalue { i64, ptr } %t367, 1
  %t370 = mul i64 %t368, 1
  %t371 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t370)
  call void @llvm.memcpy.p0.p0.i64(ptr %t371, ptr %t369, i64 %t370, i1 false)
  %t372 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t371, 1
  %t374 = load i32, ptr %l20, !tbaa !23
  %t375 = load ptr, ptr %l187, !tbaa !29
  %t378 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %s7, ptr %s7, ptr %t375, { i64, ptr } %t373, i32 %t374)
  store { i64, ptr } %t378, ptr %l194
  br label %bb72
bb72:
  %t379 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t379, 0
  %t381 = extractvalue { i64, ptr } %t379, 1
  %t382 = mul i64 %t380, 1
  %t383 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t382)
  call void @llvm.memcpy.p0.p0.i64(ptr %t383, ptr %t381, i64 %t382, i1 false)
  %t384 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t385 = insertvalue { i64, ptr } %t384, ptr %t383, 1
  %t386 = load ptr, ptr %l186, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t386, { i64, ptr } %t385)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  br label %bb165
bb74:
  %t388 = load ptr, ptr %l5, !tbaa !29
  %t389 = load i32, ptr %l21, !tbaa !23
  %t392 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t388, i32 %t389)
  store i32 %t392, ptr %l198
  br label %bb75
bb75:
  %t393 = load i32, ptr %l198, !range !{i32 0, i32 33}
  %t395 = trunc i64 21 to i32
  %t396 = icmp eq i32 %t393, %t395
  br i1 %t396, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s8
  %t398 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t399 = load i64, ptr %t398, !tbaa !24
  %t401 = sub i64 %t399, 1
  %t403 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t401, ptr %t403, !tbaa !24
  store ptr %l7, ptr %l203, !tbaa !29
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load { i64, [4 x i64] }, ptr %l19
  %t408 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportNamed(ptr %v0, ptr %s8, ptr %t404, { i64, [4 x i64] } %t405)
  store { i64, ptr } %t408, ptr %l206
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t409 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t410 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t411 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 1
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t414 = add i64 %t410, %t413
  %t415 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t414)
  call void @olang_textcopy(ptr %t415, ptr %t409, i64 %t410)
  %t416 = getelementptr i8, ptr %t415, i64 %t410
  call void @olang_textcopy(ptr %t416, ptr %t412, i64 %t413)
  %t417 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t415, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = extractvalue { i64, ptr } %t418, 1
  %t422 = mul i64 %t420, 1
  %t423 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t422)
  call void @llvm.memcpy.p0.p0.i64(ptr %t423, ptr %t421, i64 %t422, i1 false)
  %t424 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t423, 1
  %t426 = load ptr, ptr %l203, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t426, { i64, ptr } %t425)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s5)
  br label %bb165
bb80:
  %t428 = load ptr, ptr %l5, !tbaa !29
  %t429 = load i32, ptr %l21, !tbaa !23
  %t432 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t428, i32 %t429)
  store i1 %t432, ptr %l211
  br label %bb81
bb81:
  %t433 = load i1, ptr %l211, !tbaa !21
  br i1 %t433, label %bb82, label %bb83
bb82:
  %t434 = load ptr, ptr %l5, !tbaa !29
  %t435 = load i32, ptr %l21, !tbaa !23
  %t438 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t434, i32 %t435)
  store i32 %t438, ptr %l215
  br label %bb84
bb83:
  %t439 = load i32, ptr %l21, !tbaa !23
  store i32 %t439, ptr %l212, !tbaa !23
  br label %bb85
bb84:
  %t441 = load i32, ptr %l215, !tbaa !23
  store i32 %t441, ptr %l212, !tbaa !23
  br label %bb85
bb85:
  %t442 = load i32, ptr %l212, !tbaa !23
  store i32 %t442, ptr %l22, !tbaa !23
  %t443 = load ptr, ptr %l5, !tbaa !29
  %t444 = load i32, ptr %l21, !tbaa !23
  %t447 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t443, i32 %t444)
  store i1 %t447, ptr %l219
  br label %bb86
bb86:
  %t448 = load i1, ptr %l219, !tbaa !21
  br i1 %t448, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l220, !tbaa !21
  br label %bb91
bb88:
  %t449 = load ptr, ptr %l5, !tbaa !29
  store ptr %t449, ptr %l221, !tbaa !29
  %t450 = load ptr, ptr %l5, !tbaa !29
  %t451 = load i32, ptr %l22, !tbaa !23
  %t454 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t450, i32 %t451)
  store i32 %t454, ptr %l224
  br label %bb89
bb89:
  %t455 = load ptr, ptr %l221, !tbaa !29
  %t456 = load i32, ptr %l224, !tbaa !23
  %t457 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t455, i32 %t456)
  store i32 %t457, ptr %l225
  br label %bb90
bb90:
  %t458 = load i32, ptr %l225, !range !{i32 0, i32 33}
  %t460 = trunc i64 19 to i32
  %t461 = icmp eq i32 %t458, %t460
  store i1 %t461, ptr %l220, !tbaa !21
  br label %bb91
bb91:
  %t463 = load i1, ptr %l220, !tbaa !21
  br i1 %t463, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s10
  %t464 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  %t465 = load i64, ptr %t464, !tbaa !24
  %t467 = sub i64 %t465, 1
  %t469 = getelementptr %"compiler/cabi:Regs", ptr %l9, i32 0, i32 0
  store i64 %t467, ptr %t469, !tbaa !24
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load { i64, [4 x i64] }, ptr %l19
  %t474 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t470, { i64, [4 x i64] } %t471)
  store i32 %t474, ptr %l232
  br label %bb94
bb93:
  br label %bb98
bb94:
  %t475 = load i32, ptr %l232, !tbaa !23
  store i32 %t475, ptr %l23, !tbaa !23
  store ptr %l7, ptr %l233, !tbaa !29
  %t476 = load ptr, ptr %l0, !tbaa !29
  store ptr %t476, ptr %l234, !tbaa !29
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load { i64, [4 x i64] }, ptr %l19
  %t479 = load i32, ptr %l23, !tbaa !23
  %t483 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s10, ptr %t477, { i64, [4 x i64] } %t478, i32 %t479)
  store { i64, ptr } %t483, ptr %l238
  br label %bb95
bb95:
  %t484 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t485 = extractvalue { i64, ptr } %t484, 0
  %t486 = extractvalue { i64, ptr } %t484, 1
  %t487 = mul i64 %t485, 1
  %t488 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t487)
  call void @llvm.memcpy.p0.p0.i64(ptr %t488, ptr %t486, i64 %t487, i1 false)
  %t489 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t490 = insertvalue { i64, ptr } %t489, ptr %t488, 1
  %t491 = load i32, ptr %l23, !tbaa !23
  %t492 = load ptr, ptr %l234, !tbaa !29
  %t495 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %s10, ptr %s10, ptr %t492, { i64, ptr } %t490, i32 %t491)
  store { i64, ptr } %t495, ptr %l241
  br label %bb96
bb96:
  %t496 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t496, 0
  %t498 = extractvalue { i64, ptr } %t496, 1
  %t499 = mul i64 %t497, 1
  %t500 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t499)
  call void @llvm.memcpy.p0.p0.i64(ptr %t500, ptr %t498, i64 %t499, i1 false)
  %t501 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t502 = insertvalue { i64, ptr } %t501, ptr %t500, 1
  %t503 = load ptr, ptr %l233, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t503, { i64, ptr } %t502)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s5)
  br label %bb165
bb98:
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/emit:fnEm", ptr %t505, i32 0, i32 0
  %t508 = load ptr, ptr %t507, !tbaa !29
  %t510 = getelementptr %"compiler/emit:Emitter", ptr %t508, i32 0, i32 0
  %t511 = load ptr, ptr %t510, !tbaa !29
  %t512 = load i32, ptr %l20, !tbaa !23
  %t515 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t511, i32 %t512)
  store i1 %t515, ptr %l247
  br label %bb99
bb99:
  %t516 = load ptr, ptr %l5, !tbaa !29
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t519 = getelementptr %"compiler/emit:fnEm", ptr %t517, i32 0, i32 0
  %t520 = load ptr, ptr %t519, !tbaa !29
  %t522 = getelementptr %"compiler/emit:Emitter", ptr %t520, i32 0, i32 48
  %t523 = load { i64, ptr }, ptr %t522, !tbaa !27
  %t524 = load i32, ptr %l20, !tbaa !23
  %t526 = inttoptr i64 0 to ptr
  %t531 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v0, ptr %s0, ptr %s5, ptr %t526, ptr %t516, { i64, ptr } %t523, i32 %t524, ptr %l9)
  store %"compiler/cabi:Way" %t531, ptr %l255
  br label %bb100
bb100:
  %t532 = load %"compiler/cabi:Way", ptr %l255
  store %"compiler/cabi:Way" %t532, ptr %l24
  %t533 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 0
  %t534 = load i32, ptr %t533, !range !{i32 0, i32 5}
  store i32 %t534, ptr %l25
  %t536 = load i32, ptr %l25, !range !{i32 0, i32 5}
  %t538 = trunc i64 0 to i32
  %t539 = icmp eq i32 %t536, %t538
  br i1 %t539, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb111
bb103:
  store %olang.scope zeroinitializer, ptr %s11
  store ptr %l7, ptr %l259, !tbaa !29
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load i32, ptr %l20, !tbaa !23
  %t545 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s11, ptr %t541, i32 %t542)
  store { i64, ptr } %t545, ptr %l262
  br label %bb104
bb104:
  %t546 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 4
  %t547 = load { i64, ptr }, ptr %t546, !tbaa !27
  %t549 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s11, { i64, ptr } %t547, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t549, ptr %l264
  br label %bb105
bb105:
  %t550 = load i1, ptr %l264, !tbaa !21
  %t551 = xor i1 %t550, true
  br i1 %t551, label %bb106, label %bb107
bb106:
  %t553 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 4
  %t554 = load { i64, ptr }, ptr %t553, !tbaa !27
  %t555 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t556 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t558 = extractvalue { i64, ptr } %t554, 1
  %t559 = extractvalue { i64, ptr } %t554, 0
  %t560 = add i64 %t556, %t559
  %t561 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t560)
  call void @olang_textcopy(ptr %t561, ptr %t555, i64 %t556)
  %t562 = getelementptr i8, ptr %t561, i64 %t556
  call void @olang_textcopy(ptr %t562, ptr %t558, i64 %t559)
  %t563 = insertvalue { i64, ptr } undef, i64 %t560, 0
  %t564 = insertvalue { i64, ptr } %t563, ptr %t561, 1
  %t566 = extractvalue { i64, ptr } %t564, 0
  %t567 = extractvalue { i64, ptr } %t564, 1
  %t568 = mul i64 %t566, 1
  %t569 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t568)
  call void @llvm.memcpy.p0.p0.i64(ptr %t569, ptr %t567, i64 %t568, i1 false)
  %t570 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t571 = insertvalue { i64, ptr } %t570, ptr %t569, 1
  store { i64, ptr } %t571, ptr %l266, !tbaa !27
  br label %bb108
bb107:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l266, !tbaa !27
  br label %bb108
bb108:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = load { i64, [4 x i64] }, ptr %l19
  %t575 = load i32, ptr %l20, !tbaa !23
  %t579 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s11, ptr %t573, { i64, [4 x i64] } %t574, i32 %t575)
  store { i64, ptr } %t579, ptr %l273
  br label %bb109
bb109:
  %t580 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t581 = extractvalue { i64, ptr } %t580, 1
  %t582 = extractvalue { i64, ptr } %t580, 0
  %t583 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t584 = extractvalue { i64, ptr } %t583, 1
  %t585 = extractvalue { i64, ptr } %t583, 0
  %t586 = add i64 %t582, %t585
  %t587 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t588 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t589 = add i64 %t586, %t588
  %t590 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t591 = extractvalue { i64, ptr } %t590, 1
  %t592 = extractvalue { i64, ptr } %t590, 0
  %t593 = add i64 %t589, %t592
  %t594 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t593)
  call void @olang_textcopy(ptr %t594, ptr %t581, i64 %t582)
  %t595 = getelementptr i8, ptr %t594, i64 %t582
  call void @olang_textcopy(ptr %t595, ptr %t584, i64 %t585)
  %t596 = getelementptr i8, ptr %t595, i64 %t585
  call void @olang_textcopy(ptr %t596, ptr %t587, i64 %t588)
  %t597 = getelementptr i8, ptr %t596, i64 %t588
  call void @olang_textcopy(ptr %t597, ptr %t591, i64 %t592)
  %t598 = insertvalue { i64, ptr } undef, i64 %t593, 0
  %t599 = insertvalue { i64, ptr } %t598, ptr %t594, 1
  %t601 = extractvalue { i64, ptr } %t599, 0
  %t602 = extractvalue { i64, ptr } %t599, 1
  %t603 = mul i64 %t601, 1
  %t604 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t603)
  call void @llvm.memcpy.p0.p0.i64(ptr %t604, ptr %t602, i64 %t603, i1 false)
  %t605 = insertvalue { i64, ptr } undef, i64 %t601, 0
  %t606 = insertvalue { i64, ptr } %t605, ptr %t604, 1
  %t607 = load ptr, ptr %l259, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t607, { i64, ptr } %t606)
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s11)
  br label %bb164
bb111:
  %t609 = load i32, ptr %l25, !range !{i32 0, i32 5}
  %t611 = trunc i64 1 to i32
  %t612 = icmp eq i32 %t609, %t611
  br i1 %t612, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb146
bb114:
  store %olang.scope zeroinitializer, ptr %s14
  %t614 = load ptr, ptr %l0, !tbaa !29
  store ptr %t614, ptr %l278, !tbaa !29
  %t615 = load ptr, ptr %l5, !tbaa !29
  %t616 = load i32, ptr %l20, !tbaa !23
  %t620 = call i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %s5, ptr %t615, ptr %l24, i32 %t616)
  store i64 %t620, ptr %l282
  br label %bb115
bb115:
  %t621 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t622 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t623 = load i64, ptr %l282, !tbaa !24
  %t624 = call i64 @__olang_fmt_i64(ptr null, i64 %t623)
  %t625 = add i64 %t622, %t624
  %t626 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t627 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t628 = add i64 %t625, %t627
  %t629 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t628)
  call void @olang_textcopy(ptr %t629, ptr %t621, i64 %t622)
  %t630 = getelementptr i8, ptr %t629, i64 %t622
  %t631 = call i64 @__olang_fmt_i64(ptr %t630, i64 %t623)
  %t632 = getelementptr i8, ptr %t630, i64 %t624
  call void @olang_textcopy(ptr %t632, ptr %t626, i64 %t627)
  %t633 = insertvalue { i64, ptr } undef, i64 %t628, 0
  %t634 = insertvalue { i64, ptr } %t633, ptr %t629, 1
  %t636 = extractvalue { i64, ptr } %t634, 0
  %t637 = extractvalue { i64, ptr } %t634, 1
  %t638 = mul i64 %t636, 1
  %t639 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t638)
  call void @llvm.memcpy.p0.p0.i64(ptr %t639, ptr %t637, i64 %t638, i1 false)
  %t640 = insertvalue { i64, ptr } undef, i64 %t636, 0
  %t641 = insertvalue { i64, ptr } %t640, ptr %t639, 1
  %t642 = load ptr, ptr %l278, !tbaa !29
  %t644 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s14, ptr %s14, ptr %t642, { i64, ptr } %t641, i64 8)
  store { i64, ptr } %t644, ptr %l285
  br label %bb116
bb116:
  %t645 = load { i64, ptr }, ptr %l285, !tbaa !27
  store { i64, ptr } %t645, ptr %l26, !tbaa !27
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t647 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t648 = load i32, ptr %l20, !tbaa !23
  %t649 = load { i64, [4 x i64] }, ptr %l19
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s14, ptr %s14, ptr %t646, { i64, ptr } %t647, i32 %t648, { i64, [4 x i64] } %t649, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb117
bb117:
  store i64 0, ptr %l27, !tbaa !24
  %t654 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 1
  %t656 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s5, ptr %t654)
  store i64 %t656, ptr %l291
  br label %bb118
bb118:
  %t657 = load i64, ptr %l291, !tbaa !24
  store i64 %t657, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t658 = load i64, ptr %l28, !tbaa !24
  %t659 = load i64, ptr %l27, !tbaa !24
  %t662 = icmp sgt i64 %t658, %t659
  br i1 %t662, label %bb119, label %bb120
bb119:
  %t664 = load i64, ptr %l29, !tbaa !24
  %t666 = icmp sgt i64 %t664, 0
  br i1 %t666, label %bb121, label %bb122
bb120:
  store i64 0, ptr %l295, !tbaa !24
  br label %bb124
bb121:
  %t668 = load i64, ptr %l28, !tbaa !24
  %t669 = load i64, ptr %l27, !tbaa !24
  %t672 = sub i64 %t668, %t669
  %t673 = load i64, ptr %l29, !tbaa !24
  %t676 = add i64 %t672, %t673
  %t678 = sub i64 %t676, 1
  %t679 = load i64, ptr %l29, !tbaa !24
  %t682 = sdiv i64 %t678, %t679
  store i64 %t682, ptr %l298, !tbaa !24
  br label %bb123
bb122:
  store i64 0, ptr %l298, !tbaa !24
  br label %bb123
bb123:
  %t684 = load i64, ptr %l298, !tbaa !24
  store i64 %t684, ptr %l295, !tbaa !24
  br label %bb124
bb124:
  %t685 = load i64, ptr %l295, !tbaa !24
  store i64 %t685, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb125
bb125:
  store %olang.scope zeroinitializer, ptr %s17
  %t686 = load i64, ptr %l31, !tbaa !24
  %t687 = load i64, ptr %l30, !tbaa !24
  %t690 = icmp slt i64 %t686, %t687
  %t692 = xor i1 %t690, true
  br i1 %t692, label %bb126, label %bb127
bb126:
  call void @__olang_scope_close(ptr %s17)
  br label %bb145
bb127:
  br label %bb128
bb128:
  %t694 = load i64, ptr %l27, !tbaa !24
  %t695 = load i64, ptr %l31, !tbaa !24
  %t696 = load i64, ptr %l29, !tbaa !24
  %t699 = mul i64 %t695, %t696
  %t702 = add i64 %t694, %t699
  store i64 %t702, ptr %l32, !tbaa !24
  %t704 = load i64, ptr %l32, !tbaa !24
  %t706 = icmp sgt i64 %t704, 0
  br i1 %t706, label %bb129, label %bb130
bb129:
  store %olang.scope zeroinitializer, ptr %s18
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb131
bb130:
  br label %bb132
bb131:
  call void @__olang_scope_close(ptr %s18)
  br label %bb132
bb132:
  %t709 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 1
  %t710 = load i64, ptr %l32, !tbaa !24
  %t713 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s5, ptr %s17, ptr %t709, i64 %t710)
  store { i64, ptr } %t713, ptr %l321
  br label %bb133
bb133:
  %t714 = load { i64, ptr }, ptr %l321, !tbaa !27
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l323, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l324, !tbaa !27
  %t716 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t717 = load { i64, ptr }, ptr %l324, !tbaa !27
  %t718 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s17, ptr %s17, ptr %s17, ptr %s17, { i64, ptr } %t714, { i64, ptr } %t716, { i64, ptr } %t717)
  store { i64, ptr } %t718, ptr %l325
  br label %bb134
bb134:
  %t719 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t720 = extractvalue { i64, ptr } %t719, 0
  store i64 %t720, ptr %l326, !tbaa !24
  %t721 = load i64, ptr %l326, !tbaa !24
  %t722 = mul i64 %t721, 1
  %t723 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t722)
  %t724 = insertvalue { i64, ptr } undef, i64 %t721, 0
  %t725 = insertvalue { i64, ptr } %t724, ptr %t723, 1
  store { i64, ptr } %t725, ptr %l327, !tbaa !27
  %t726 = getelementptr { i64, ptr }, ptr %l327, i32 0, i32 1
  %t727 = load ptr, ptr %t726, !tbaa !27
  %t728 = getelementptr { i64, ptr }, ptr %l325, i32 0, i32 1
  %t729 = load ptr, ptr %t728, !tbaa !27
  %t730 = load i64, ptr %l326, !tbaa !24
  %t731 = mul i64 %t730, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t727, ptr %t729, i64 %t731, i1 false)
  %t732 = load { i64, ptr }, ptr %l327, !tbaa !27
  store { i64, ptr } %t732, ptr %l33, !tbaa !27
  %t734 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 2
  %t735 = load i64, ptr %l32, !tbaa !24
  %t738 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s5, ptr %t734, i64 %t735)
  store i64 %t738, ptr %l331
  br label %bb135
bb135:
  %t739 = load i64, ptr %l331, !tbaa !24
  %t740 = icmp eq i64 %t739, 0
  br i1 %t740, label %bb136, label %bb137
bb136:
  %t742 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t742, ptr %l333, !tbaa !27
  br label %bb140
bb137:
  %t744 = load ptr, ptr %l0, !tbaa !29
  store ptr %t744, ptr %l335, !tbaa !29
  %t745 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t745, ptr %l336, !tbaa !27
  %t746 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 2
  %t747 = load i64, ptr %l32, !tbaa !24
  %t750 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s5, ptr %t746, i64 %t747)
  store i64 %t750, ptr %l339
  br label %bb138
bb138:
  %t751 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t752 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t753 = load { i64, ptr }, ptr %l336, !tbaa !27
  %t754 = extractvalue { i64, ptr } %t753, 1
  %t755 = extractvalue { i64, ptr } %t753, 0
  %t756 = add i64 %t752, %t755
  %t757 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t758 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t759 = add i64 %t756, %t758
  %t760 = load i64, ptr %l339, !tbaa !24
  %t761 = call i64 @__olang_fmt_i64(ptr null, i64 %t760)
  %t762 = add i64 %t759, %t761
  %t763 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t762)
  call void @olang_textcopy(ptr %t763, ptr %t751, i64 %t752)
  %t764 = getelementptr i8, ptr %t763, i64 %t752
  call void @olang_textcopy(ptr %t764, ptr %t754, i64 %t755)
  %t765 = getelementptr i8, ptr %t764, i64 %t755
  call void @olang_textcopy(ptr %t765, ptr %t757, i64 %t758)
  %t766 = getelementptr i8, ptr %t765, i64 %t758
  %t767 = call i64 @__olang_fmt_i64(ptr %t766, i64 %t760)
  %t768 = insertvalue { i64, ptr } undef, i64 %t762, 0
  %t769 = insertvalue { i64, ptr } %t768, ptr %t763, 1
  %t771 = extractvalue { i64, ptr } %t769, 0
  %t772 = extractvalue { i64, ptr } %t769, 1
  %t773 = mul i64 %t771, 1
  %t774 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t773)
  call void @llvm.memcpy.p0.p0.i64(ptr %t774, ptr %t772, i64 %t773, i1 false)
  %t775 = insertvalue { i64, ptr } undef, i64 %t771, 0
  %t776 = insertvalue { i64, ptr } %t775, ptr %t774, 1
  %t777 = load ptr, ptr %l335, !tbaa !29
  %t779 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s17, ptr %s17, ptr %t777, { i64, ptr } %t776)
  store { i64, ptr } %t779, ptr %l342
  br label %bb139
bb139:
  %t780 = load { i64, ptr }, ptr %l342, !tbaa !27
  store { i64, ptr } %t780, ptr %l333, !tbaa !27
  br label %bb140
bb140:
  %t781 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t782 = extractvalue { i64, ptr } %t781, 0
  store i64 %t782, ptr %l343, !tbaa !24
  %t783 = load i64, ptr %l343, !tbaa !24
  %t784 = mul i64 %t783, 1
  %t785 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t784)
  %t786 = insertvalue { i64, ptr } undef, i64 %t783, 0
  %t787 = insertvalue { i64, ptr } %t786, ptr %t785, 1
  store { i64, ptr } %t787, ptr %l344, !tbaa !27
  %t788 = getelementptr { i64, ptr }, ptr %l344, i32 0, i32 1
  %t789 = load ptr, ptr %t788, !tbaa !27
  %t790 = getelementptr { i64, ptr }, ptr %l333, i32 0, i32 1
  %t791 = load ptr, ptr %t790, !tbaa !27
  %t792 = load i64, ptr %l343, !tbaa !24
  %t793 = mul i64 %t792, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t789, ptr %t791, i64 %t793, i1 false)
  %t794 = load { i64, ptr }, ptr %l344, !tbaa !27
  store { i64, ptr } %t794, ptr %l34, !tbaa !27
  store ptr %l7, ptr %l345, !tbaa !29
  %t795 = getelementptr %"compiler/cabi:Way", ptr %l24, i32 0, i32 1
  %t796 = load i64, ptr %l32, !tbaa !24
  %t799 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s5, ptr %s17, ptr %t795, i64 %t796)
  store { i64, ptr } %t799, ptr %l348
  br label %bb141
bb141:
  %t800 = load ptr, ptr %l0, !tbaa !29
  %t801 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t802 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t806 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s17, ptr %s17, ptr %s17, ptr %s17, ptr %t800, { i64, ptr } %t801, { i64, ptr } %t802, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store { i64, ptr } %t806, ptr %l352
  br label %bb142
bb142:
  %t807 = load { i64, ptr }, ptr %l348, !tbaa !27
  %t808 = extractvalue { i64, ptr } %t807, 1
  %t809 = extractvalue { i64, ptr } %t807, 0
  %t810 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t811 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t812 = add i64 %t809, %t811
  %t813 = load { i64, ptr }, ptr %l352, !tbaa !27
  %t814 = extractvalue { i64, ptr } %t813, 1
  %t815 = extractvalue { i64, ptr } %t813, 0
  %t816 = add i64 %t812, %t815
  %t817 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t816)
  call void @olang_textcopy(ptr %t817, ptr %t808, i64 %t809)
  %t818 = getelementptr i8, ptr %t817, i64 %t809
  call void @olang_textcopy(ptr %t818, ptr %t810, i64 %t811)
  %t819 = getelementptr i8, ptr %t818, i64 %t811
  call void @olang_textcopy(ptr %t819, ptr %t814, i64 %t815)
  %t820 = insertvalue { i64, ptr } undef, i64 %t816, 0
  %t821 = insertvalue { i64, ptr } %t820, ptr %t817, 1
  %t823 = extractvalue { i64, ptr } %t821, 0
  %t824 = extractvalue { i64, ptr } %t821, 1
  %t825 = mul i64 %t823, 1
  %t826 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t825)
  call void @llvm.memcpy.p0.p0.i64(ptr %t826, ptr %t824, i64 %t825, i1 false)
  %t827 = insertvalue { i64, ptr } undef, i64 %t823, 0
  %t828 = insertvalue { i64, ptr } %t827, ptr %t826, 1
  %t829 = load ptr, ptr %l345, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %t829, { i64, ptr } %t828)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s17)
  br label %bb144
bb144:
  %t831 = load i64, ptr %l31, !tbaa !24
  %t833 = add i64 %t831, 1
  store i64 %t833, ptr %l31, !tbaa !24
  br label %bb125
bb145:
  call void @__olang_scope_close(ptr %s14)
  br label %bb164
bb146:
  %t835 = load i32, ptr %l25, !range !{i32 0, i32 5}
  %t837 = trunc i64 2 to i32
  %t838 = icmp eq i32 %t835, %t837
  br i1 %t838, label %bb147, label %bb148
bb147:
  br label %bb149
bb148:
  br label %bb156
bb149:
  store %olang.scope zeroinitializer, ptr %s22
  %t840 = load ptr, ptr %l0, !tbaa !29
  %t841 = load i32, ptr %l20, !tbaa !23
  %t844 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s22, ptr %t840, i32 %t841)
  store { i64, ptr } %t844, ptr %l361
  br label %bb150
bb150:
  %t845 = load { i64, ptr }, ptr %l361, !tbaa !27
  store { i64, ptr } %t845, ptr %l35, !tbaa !27
  %t846 = load ptr, ptr %l0, !tbaa !29
  %t847 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t848 = load i32, ptr %l20, !tbaa !23
  %t849 = load { i64, [4 x i64] }, ptr %l19
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s22, ptr %s22, ptr %t846, { i64, ptr } %t847, i32 %t848, { i64, [4 x i64] } %t849, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb151
bb151:
  store ptr %l7, ptr %l366, !tbaa !29
  %t854 = load ptr, ptr %l0, !tbaa !29
  %t855 = load i32, ptr %l20, !tbaa !23
  %t858 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s22, ptr %t854, i32 %t855)
  store { i64, ptr } %t858, ptr %l369
  br label %bb152
bb152:
  %t859 = load ptr, ptr %l5, !tbaa !29
  %t860 = load i32, ptr %l20, !tbaa !23
  %t863 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t859, i32 %t860)
  store i64 %t863, ptr %l372
  br label %bb153
bb153:
  %t864 = load i64, ptr %l372, !tbaa !24
  %t865 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t864, i64 8)
  store i64 %t865, ptr %l373
  br label %bb154
bb154:
  %t866 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t867 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t868 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t869 = load { i64, ptr }, ptr %l369, !tbaa !27
  %t870 = extractvalue { i64, ptr } %t869, 1
  %t871 = extractvalue { i64, ptr } %t869, 0
  %t872 = add i64 %t868, %t871
  %t873 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t874 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t875 = add i64 %t872, %t874
  %t876 = load i64, ptr %l373, !tbaa !24
  %t877 = call i64 @__olang_fmt_i64(ptr null, i64 %t876)
  %t878 = add i64 %t875, %t877
  %t879 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t880 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t881 = add i64 %t878, %t880
  %t883 = extractvalue { i64, ptr } %t866, 1
  %t884 = extractvalue { i64, ptr } %t866, 0
  %t885 = add i64 %t881, %t884
  %t886 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t885)
  call void @olang_textcopy(ptr %t886, ptr %t867, i64 %t868)
  %t887 = getelementptr i8, ptr %t886, i64 %t868
  call void @olang_textcopy(ptr %t887, ptr %t870, i64 %t871)
  %t888 = getelementptr i8, ptr %t887, i64 %t871
  call void @olang_textcopy(ptr %t888, ptr %t873, i64 %t874)
  %t889 = getelementptr i8, ptr %t888, i64 %t874
  %t890 = call i64 @__olang_fmt_i64(ptr %t889, i64 %t876)
  %t891 = getelementptr i8, ptr %t889, i64 %t877
  call void @olang_textcopy(ptr %t891, ptr %t879, i64 %t880)
  %t892 = getelementptr i8, ptr %t891, i64 %t880
  call void @olang_textcopy(ptr %t892, ptr %t883, i64 %t884)
  %t893 = insertvalue { i64, ptr } undef, i64 %t885, 0
  %t894 = insertvalue { i64, ptr } %t893, ptr %t886, 1
  %t896 = extractvalue { i64, ptr } %t894, 0
  %t897 = extractvalue { i64, ptr } %t894, 1
  %t898 = mul i64 %t896, 1
  %t899 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t898)
  call void @llvm.memcpy.p0.p0.i64(ptr %t899, ptr %t897, i64 %t898, i1 false)
  %t900 = insertvalue { i64, ptr } undef, i64 %t896, 0
  %t901 = insertvalue { i64, ptr } %t900, ptr %t899, 1
  %t902 = load ptr, ptr %l366, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %t902, { i64, ptr } %t901)
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s22)
  br label %bb164
bb156:
  br i1 true, label %bb157, label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb163
bb159:
  store %olang.scope zeroinitializer, ptr %s24
  %t904 = load ptr, ptr %l0, !tbaa !29
  %t905 = load i32, ptr %l20, !tbaa !23
  %t908 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s24, ptr %t904, i32 %t905)
  store { i64, ptr } %t908, ptr %l379
  br label %bb160
bb160:
  %t909 = load { i64, ptr }, ptr %l379, !tbaa !27
  store { i64, ptr } %t909, ptr %l36, !tbaa !27
  %t910 = load ptr, ptr %l0, !tbaa !29
  %t911 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t912 = load i32, ptr %l20, !tbaa !23
  %t913 = load { i64, [4 x i64] }, ptr %l19
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s24, ptr %s24, ptr %t910, { i64, ptr } %t911, i32 %t912, { i64, [4 x i64] } %t913, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb161
bb161:
  %t918 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t919 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t920 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t922 = extractvalue { i64, ptr } %t918, 1
  %t923 = extractvalue { i64, ptr } %t918, 0
  %t924 = add i64 %t920, %t923
  %t925 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t924)
  call void @olang_textcopy(ptr %t925, ptr %t919, i64 %t920)
  %t926 = getelementptr i8, ptr %t925, i64 %t920
  call void @olang_textcopy(ptr %t926, ptr %t922, i64 %t923)
  %t927 = insertvalue { i64, ptr } undef, i64 %t924, 0
  %t928 = insertvalue { i64, ptr } %t927, ptr %t925, 1
  %t930 = extractvalue { i64, ptr } %t928, 0
  %t931 = extractvalue { i64, ptr } %t928, 1
  %t932 = mul i64 %t930, 1
  %t933 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t932)
  call void @llvm.memcpy.p0.p0.i64(ptr %t933, ptr %t931, i64 %t932, i1 false)
  %t934 = insertvalue { i64, ptr } undef, i64 %t930, 0
  %t935 = insertvalue { i64, ptr } %t934, ptr %t933, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s24, ptr %l7, { i64, ptr } %t935)
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s24)
  br label %bb164
bb163:
  call void @__olang_check_failed(ptr @olang_loc_11f14fa65e4040d5_e8173accb9b141e1)
  unreachable
bb164:
  call void @__olang_scope_close(ptr %s5)
  br label %bb165
bb165:
  %t938 = load i64, ptr %l17, !tbaa !24
  %t940 = add i64 %t938, 1
  store i64 %t940, ptr %l17, !tbaa !24
  br label %bb54
bb166:
  %t942 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t944 = extractvalue { i64, ptr } %t942, 0
  store i64 %t944, ptr %l37, !tbaa !24
  %t946 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t947 = getelementptr %"compiler/mir:Range", ptr %t946, i32 0, i32 1
  %t948 = load i32, ptr %t947, !tbaa !23
  %t950 = sext i32 %t948 to i64
  store i64 %t950, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t952 = load i64, ptr %l38, !tbaa !24
  %t953 = load i64, ptr %l37, !tbaa !24
  %t956 = icmp sgt i64 %t952, %t953
  br i1 %t956, label %bb167, label %bb168
bb167:
  %t958 = load i64, ptr %l39, !tbaa !24
  %t960 = icmp sgt i64 %t958, 0
  br i1 %t960, label %bb169, label %bb170
bb168:
  store i64 0, ptr %l397, !tbaa !24
  br label %bb172
bb169:
  %t962 = load i64, ptr %l38, !tbaa !24
  %t963 = load i64, ptr %l37, !tbaa !24
  %t966 = sub i64 %t962, %t963
  %t967 = load i64, ptr %l39, !tbaa !24
  %t970 = add i64 %t966, %t967
  %t972 = sub i64 %t970, 1
  %t973 = load i64, ptr %l39, !tbaa !24
  %t976 = sdiv i64 %t972, %t973
  store i64 %t976, ptr %l400, !tbaa !24
  br label %bb171
bb170:
  store i64 0, ptr %l400, !tbaa !24
  br label %bb171
bb171:
  %t978 = load i64, ptr %l400, !tbaa !24
  store i64 %t978, ptr %l397, !tbaa !24
  br label %bb172
bb172:
  %t979 = load i64, ptr %l397, !tbaa !24
  store i64 %t979, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb173
bb173:
  store %olang.scope zeroinitializer, ptr %s28
  %t980 = load i64, ptr %l41, !tbaa !24
  %t981 = load i64, ptr %l40, !tbaa !24
  %t984 = icmp slt i64 %t980, %t981
  %t986 = xor i1 %t984, true
  br i1 %t986, label %bb174, label %bb175
bb174:
  call void @__olang_scope_close(ptr %s28)
  br label %bb187
bb175:
  br label %bb176
bb176:
  %t988 = load i64, ptr %l37, !tbaa !24
  %t989 = load i64, ptr %l41, !tbaa !24
  %t990 = load i64, ptr %l39, !tbaa !24
  %t993 = mul i64 %t989, %t990
  %t996 = add i64 %t988, %t993
  store i64 %t996, ptr %l42, !tbaa !24
  %t998 = load i1, ptr %l8, !tbaa !21
  %t1000 = xor i1 %t998, true
  br i1 %t1000, label %bb177, label %bb178
bb177:
  store %olang.scope zeroinitializer, ptr %s29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s29, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb179
bb178:
  br label %bb180
bb179:
  call void @__olang_scope_close(ptr %s29)
  br label %bb180
bb180:
  store i1 false, ptr %l8, !tbaa !21
  %t1003 = load ptr, ptr %l0, !tbaa !29
  %t1004 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t1005 = load %"compiler/mir:Range", ptr %t1004
  %t1006 = load i64, ptr %l42, !tbaa !24
  %t1010 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t1003, %"compiler/mir:Range" %t1005, i64 %t1006)
  store { i64, [4 x i64] } %t1010, ptr %l424
  br label %bb181
bb181:
  %t1011 = load { i64, [4 x i64] }, ptr %l424
  store { i64, [4 x i64] } %t1011, ptr %l43
  %t1012 = load ptr, ptr %l0, !tbaa !29
  %t1013 = load { i64, [4 x i64] }, ptr %l43
  %t1016 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t1012, { i64, [4 x i64] } %t1013)
  store i32 %t1016, ptr %l427
  br label %bb182
bb182:
  %t1017 = load i32, ptr %l427, !tbaa !23
  store i32 %t1017, ptr %l44, !tbaa !23
  store ptr %l7, ptr %l428, !tbaa !29
  %t1018 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1018, ptr %l429, !tbaa !29
  %t1019 = load ptr, ptr %l0, !tbaa !29
  %t1020 = load { i64, [4 x i64] }, ptr %l43
  %t1021 = load i32, ptr %l44, !tbaa !23
  %t1025 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s28, ptr %t1019, { i64, [4 x i64] } %t1020, i32 %t1021)
  store { i64, ptr } %t1025, ptr %l433
  br label %bb183
bb183:
  %t1026 = load { i64, ptr }, ptr %l433, !tbaa !27
  %t1027 = extractvalue { i64, ptr } %t1026, 0
  %t1028 = extractvalue { i64, ptr } %t1026, 1
  %t1029 = mul i64 %t1027, 1
  %t1030 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1029)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1030, ptr %t1028, i64 %t1029, i1 false)
  %t1031 = insertvalue { i64, ptr } undef, i64 %t1027, 0
  %t1032 = insertvalue { i64, ptr } %t1031, ptr %t1030, 1
  %t1033 = load i32, ptr %l44, !tbaa !23
  %t1034 = load ptr, ptr %l429, !tbaa !29
  %t1037 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %s28, ptr %s28, ptr %t1034, { i64, ptr } %t1032, i32 %t1033)
  store { i64, ptr } %t1037, ptr %l436
  br label %bb184
bb184:
  %t1038 = load { i64, ptr }, ptr %l436, !tbaa !27
  %t1039 = extractvalue { i64, ptr } %t1038, 0
  %t1040 = extractvalue { i64, ptr } %t1038, 1
  %t1041 = mul i64 %t1039, 1
  %t1042 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1041)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1042, ptr %t1040, i64 %t1041, i1 false)
  %t1043 = insertvalue { i64, ptr } undef, i64 %t1039, 0
  %t1044 = insertvalue { i64, ptr } %t1043, ptr %t1042, 1
  %t1045 = load ptr, ptr %l428, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s28, ptr %t1045, { i64, ptr } %t1044)
  br label %bb185
bb185:
  call void @__olang_scope_close(ptr %s28)
  br label %bb186
bb186:
  %t1047 = load i64, ptr %l41, !tbaa !24
  %t1049 = add i64 %t1047, 1
  store i64 %t1049, ptr %l41, !tbaa !24
  br label %bb173
bb187:
  %t1051 = load ptr, ptr %l0, !tbaa !29
  %t1053 = getelementptr %"compiler/emit:fnEm", ptr %t1051, i32 0, i32 0
  %t1054 = load ptr, ptr %t1053, !tbaa !29
  %t1055 = load i32, ptr %l3, !tbaa !23
  %t1058 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %v0, ptr %s0, ptr %t1054, i32 %t1055)
  store { i64, ptr } %t1058, ptr %l443
  br label %bb188
bb188:
  %t1059 = load { i64, ptr }, ptr %l443, !tbaa !27
  store { i64, ptr } %t1059, ptr %l45, !tbaa !27
  %t1060 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t1060, ptr %l444, !tbaa !27
  %t1061 = load { i64, ptr }, ptr %l444, !tbaa !27
  %t1062 = extractvalue { i64, ptr } %t1061, 0
  store i64 %t1062, ptr %l445, !tbaa !24
  %t1063 = load i64, ptr %l445, !tbaa !24
  %t1064 = mul i64 %t1063, 1
  %t1065 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1064)
  %t1066 = insertvalue { i64, ptr } undef, i64 %t1063, 0
  %t1067 = insertvalue { i64, ptr } %t1066, ptr %t1065, 1
  store { i64, ptr } %t1067, ptr %l446, !tbaa !27
  %t1068 = getelementptr { i64, ptr }, ptr %l446, i32 0, i32 1
  %t1069 = load ptr, ptr %t1068, !tbaa !27
  %t1070 = getelementptr { i64, ptr }, ptr %l444, i32 0, i32 1
  %t1071 = load ptr, ptr %t1070, !tbaa !27
  %t1072 = load i64, ptr %l445, !tbaa !24
  %t1073 = mul i64 %t1072, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1069, ptr %t1071, i64 %t1073, i1 false)
  %t1074 = load { i64, ptr }, ptr %l446, !tbaa !27
  store { i64, ptr } %t1074, ptr %l46, !tbaa !27
  %t1075 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 0
  %t1076 = load i32, ptr %t1075, !range !{i32 0, i32 5}
  %t1078 = trunc i64 0 to i32
  %t1079 = icmp eq i32 %t1076, %t1078
  br i1 %t1079, label %bb189, label %bb190
bb189:
  %t1081 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 4
  %t1082 = load { i64, ptr }, ptr %t1081, !tbaa !27
  %t1084 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t1082, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t1084, ptr %l451
  br label %bb191
bb190:
  store i1 false, ptr %l449, !tbaa !21
  br label %bb192
bb191:
  %t1085 = load i1, ptr %l451, !tbaa !21
  %t1086 = xor i1 %t1085, true
  store i1 %t1086, ptr %l449, !tbaa !21
  br label %bb192
bb192:
  %t1088 = load i1, ptr %l449, !tbaa !21
  br i1 %t1088, label %bb193, label %bb194
bb193:
  %t1089 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 4
  %t1090 = load { i64, ptr }, ptr %t1089, !tbaa !27
  %t1092 = extractvalue { i64, ptr } %t1090, 0
  %t1094 = add i64 %t1092, 1
  store i64 %t1094, ptr %l455, !tbaa !24
  %t1095 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t1097 = extractvalue { i64, ptr } %t1095, 0
  store i64 %t1097, ptr %l457, !tbaa !24
  %t1098 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t1099 = extractvalue { i64, ptr } %t1098, 0
  store i64 %t1099, ptr %l458, !tbaa !24
  %t1100 = load i64, ptr %l455, !tbaa !24
  %t1101 = icmp sge i64 %t1100, 0
  br i1 %t1101, label %bb195, label %bb196
bb194:
  br label %bb204
bb195:
  %t1103 = load i64, ptr %l455, !tbaa !24
  %t1104 = load i64, ptr %l457, !tbaa !24
  %t1105 = icmp sle i64 %t1103, %t1104
  br i1 %t1105, label %bb197, label %bb198
bb196:
  call void @__olang_check_failed(ptr @olang_loc_c1b63f01de4704cb_7c986704c53dd4e7)
  unreachable
bb197:
  %t1107 = load i64, ptr %l457, !tbaa !24
  %t1108 = load i64, ptr %l458, !tbaa !24
  %t1109 = icmp sle i64 %t1107, %t1108
  br i1 %t1109, label %bb199, label %bb200
bb198:
  call void @__olang_check_failed(ptr @olang_loc_c1b63f01de4704cb_7c986704c53dd4e7)
  unreachable
bb199:
  %t1111 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t1112 = load ptr, ptr %t1111, !tbaa !27
  %t1113 = load i64, ptr %l455, !tbaa !24
  %t1114 = load i64, ptr %l457, !tbaa !24
  %t1115 = getelementptr i8, ptr %t1112, i64 %t1113
  %t1116 = sub i64 %t1114, %t1113
  %t1117 = insertvalue { i64, ptr } undef, i64 %t1116, 0
  %t1118 = insertvalue { i64, ptr } %t1117, ptr %t1115, 1
  store { i64, ptr } %t1118, ptr %l463, !tbaa !27
  %t1120 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t1121 = extractvalue { i64, ptr } %t1120, 0
  %t1122 = load { i64, ptr }, ptr %l463, !tbaa !27
  %t1123 = extractvalue { i64, ptr } %t1122, 0
  store i64 %t1123, ptr %l465, !tbaa !24
  %t1125 = load i64, ptr %l465, !tbaa !24
  %t1126 = icmp eq i64 %t1121, %t1125
  br i1 %t1126, label %bb201, label %bb202
bb200:
  call void @__olang_check_failed(ptr @olang_loc_c1b63f01de4704cb_7c986704c53dd4e7)
  unreachable
bb201:
  %t1128 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t1129 = load ptr, ptr %t1128, !tbaa !27
  %t1130 = getelementptr { i64, ptr }, ptr %l463, i32 0, i32 1
  %t1131 = load ptr, ptr %t1130, !tbaa !27
  %t1132 = load i64, ptr %l465, !tbaa !24
  %t1133 = mul i64 %t1132, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1129, ptr %t1131, i64 %t1133, i1 false)
  br label %bb203
bb202:
  %t1134 = load { i64, ptr }, ptr %l463, !tbaa !27
  %t1135 = extractvalue { i64, ptr } %t1134, 0
  store i64 %t1135, ptr %l467, !tbaa !24
  %t1136 = load i64, ptr %l467, !tbaa !24
  %t1137 = mul i64 %t1136, 1
  %t1138 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1137)
  %t1139 = insertvalue { i64, ptr } undef, i64 %t1136, 0
  %t1140 = insertvalue { i64, ptr } %t1139, ptr %t1138, 1
  store { i64, ptr } %t1140, ptr %l468, !tbaa !27
  %t1141 = getelementptr { i64, ptr }, ptr %l468, i32 0, i32 1
  %t1142 = load ptr, ptr %t1141, !tbaa !27
  %t1143 = getelementptr { i64, ptr }, ptr %l463, i32 0, i32 1
  %t1144 = load ptr, ptr %t1143, !tbaa !27
  %t1145 = load i64, ptr %l467, !tbaa !24
  %t1146 = mul i64 %t1145, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1142, ptr %t1144, i64 %t1146, i1 false)
  %t1147 = load { i64, ptr }, ptr %l468, !tbaa !27
  store { i64, ptr } %t1147, ptr %l46, !tbaa !27
  br label %bb203
bb203:
  br label %bb204
bb204:
  %t1148 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t1148, ptr %l469, !tbaa !27
  %t1149 = load { i64, ptr }, ptr %l469, !tbaa !27
  %t1150 = extractvalue { i64, ptr } %t1149, 0
  store i64 %t1150, ptr %l470, !tbaa !24
  %t1151 = load i64, ptr %l470, !tbaa !24
  %t1152 = mul i64 %t1151, 1
  %t1153 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1152)
  %t1154 = insertvalue { i64, ptr } undef, i64 %t1151, 0
  %t1155 = insertvalue { i64, ptr } %t1154, ptr %t1153, 1
  store { i64, ptr } %t1155, ptr %l471, !tbaa !27
  %t1156 = getelementptr { i64, ptr }, ptr %l471, i32 0, i32 1
  %t1157 = load ptr, ptr %t1156, !tbaa !27
  %t1158 = getelementptr { i64, ptr }, ptr %l469, i32 0, i32 1
  %t1159 = load ptr, ptr %t1158, !tbaa !27
  %t1160 = load i64, ptr %l470, !tbaa !24
  %t1161 = mul i64 %t1160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1157, ptr %t1159, i64 %t1161, i1 false)
  %t1162 = load { i64, ptr }, ptr %l471, !tbaa !27
  store { i64, ptr } %t1162, ptr %l47, !tbaa !27
  br i1 %a4, label %bb205, label %bb206
bb205:
  store %olang.scope zeroinitializer, ptr %s32
  %t1165 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t1165, ptr %l473, !tbaa !27
  %t1166 = load ptr, ptr %l0, !tbaa !29
  %t1168 = getelementptr %"compiler/emit:fnEm", ptr %t1166, i32 0, i32 0
  %t1169 = load ptr, ptr %t1168, !tbaa !29
  %t1170 = load i32, ptr %l3, !tbaa !23
  %t1173 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamList(ptr %v0, ptr %s32, ptr %t1169, i32 %t1170, i1 false)
  store { i64, ptr } %t1173, ptr %l477
  br label %bb207
bb206:
  br label %bb214
bb207:
  %t1174 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t1176 = extractvalue { i64, ptr } %t1174, 0
  %t1178 = icmp sgt i64 %t1176, 0
  br i1 %t1178, label %bb208, label %bb209
bb208:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l481, !tbaa !27
  br label %bb210
bb209:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l481, !tbaa !27
  br label %bb210
bb210:
  %t1180 = load { i64, ptr }, ptr %l473, !tbaa !27
  %t1181 = extractvalue { i64, ptr } %t1180, 1
  %t1182 = extractvalue { i64, ptr } %t1180, 0
  %t1183 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t1184 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t1185 = add i64 %t1182, %t1184
  %t1186 = load { i64, ptr }, ptr %l477, !tbaa !27
  %t1187 = extractvalue { i64, ptr } %t1186, 1
  %t1188 = extractvalue { i64, ptr } %t1186, 0
  %t1189 = add i64 %t1185, %t1188
  %t1190 = load { i64, ptr }, ptr %l481, !tbaa !27
  %t1191 = extractvalue { i64, ptr } %t1190, 1
  %t1192 = extractvalue { i64, ptr } %t1190, 0
  %t1193 = add i64 %t1189, %t1192
  %t1194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1195 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1196 = add i64 %t1193, %t1195
  %t1197 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1196)
  call void @olang_textcopy(ptr %t1197, ptr %t1181, i64 %t1182)
  %t1198 = getelementptr i8, ptr %t1197, i64 %t1182
  call void @olang_textcopy(ptr %t1198, ptr %t1183, i64 %t1184)
  %t1199 = getelementptr i8, ptr %t1198, i64 %t1184
  call void @olang_textcopy(ptr %t1199, ptr %t1187, i64 %t1188)
  %t1200 = getelementptr i8, ptr %t1199, i64 %t1188
  call void @olang_textcopy(ptr %t1200, ptr %t1191, i64 %t1192)
  %t1201 = getelementptr i8, ptr %t1200, i64 %t1192
  call void @olang_textcopy(ptr %t1201, ptr %t1194, i64 %t1195)
  %t1202 = insertvalue { i64, ptr } undef, i64 %t1196, 0
  %t1203 = insertvalue { i64, ptr } %t1202, ptr %t1197, 1
  store { i64, ptr } %t1203, ptr %l482, !tbaa !27
  %t1204 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t1205 = extractvalue { i64, ptr } %t1204, 0
  %t1206 = load { i64, ptr }, ptr %l482, !tbaa !27
  %t1207 = extractvalue { i64, ptr } %t1206, 0
  store i64 %t1207, ptr %l484, !tbaa !24
  %t1209 = load i64, ptr %l484, !tbaa !24
  %t1210 = icmp eq i64 %t1205, %t1209
  br i1 %t1210, label %bb211, label %bb212
bb211:
  %t1212 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1213 = load ptr, ptr %t1212, !tbaa !27
  %t1214 = getelementptr { i64, ptr }, ptr %l482, i32 0, i32 1
  %t1215 = load ptr, ptr %t1214, !tbaa !27
  %t1216 = load i64, ptr %l484, !tbaa !24
  %t1217 = mul i64 %t1216, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1213, ptr %t1215, i64 %t1217, i1 false)
  br label %bb213
bb212:
  %t1218 = load { i64, ptr }, ptr %l482, !tbaa !27
  store { i64, ptr } %t1218, ptr %l47, !tbaa !27
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s32)
  br label %bb214
bb214:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l486, !tbaa !27
  %t1219 = load { i64, ptr }, ptr %l486, !tbaa !27
  store { i64, ptr } %t1219, ptr %l487, !tbaa !27
  %t1220 = load { i64, ptr }, ptr %l487, !tbaa !27
  %t1221 = extractvalue { i64, ptr } %t1220, 0
  store i64 %t1221, ptr %l488, !tbaa !24
  %t1222 = load i64, ptr %l488, !tbaa !24
  %t1223 = mul i64 %t1222, 1
  %t1224 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1223)
  %t1225 = insertvalue { i64, ptr } undef, i64 %t1222, 0
  %t1226 = insertvalue { i64, ptr } %t1225, ptr %t1224, 1
  store { i64, ptr } %t1226, ptr %l489, !tbaa !27
  %t1227 = getelementptr { i64, ptr }, ptr %l489, i32 0, i32 1
  %t1228 = load ptr, ptr %t1227, !tbaa !27
  %t1229 = getelementptr { i64, ptr }, ptr %l487, i32 0, i32 1
  %t1230 = load ptr, ptr %t1229, !tbaa !27
  %t1231 = load i64, ptr %l488, !tbaa !24
  %t1232 = mul i64 %t1231, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1228, ptr %t1230, i64 %t1232, i1 false)
  %t1233 = load { i64, ptr }, ptr %l489, !tbaa !27
  store { i64, ptr } %t1233, ptr %l48, !tbaa !27
  %t1234 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t1236 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t1234, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store i1 %t1236, ptr %l491
  br label %bb215
bb215:
  %t1237 = load i1, ptr %l491, !tbaa !21
  br i1 %t1237, label %bb216, label %bb217
bb216:
  store %olang.scope zeroinitializer, ptr %s34
  %t1238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1238, ptr %l492, !tbaa !29
  %t1239 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t1239, ptr %l493, !tbaa !27
  %t1240 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1240, ptr %l494, !tbaa !27
  %t1242 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s34, ptr %l7)
  store { i64, ptr } %t1242, ptr %l496
  br label %bb218
bb217:
  store %olang.scope zeroinitializer, ptr %s36
  %t1243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1243, ptr %l499, !tbaa !29
  %t1244 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t1244, ptr %l500, !tbaa !27
  %t1245 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1245, ptr %l501, !tbaa !27
  %t1247 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s36, ptr %l7)
  store { i64, ptr } %t1247, ptr %l503
  br label %bb220
bb218:
  %t1248 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1249 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1250 = load { i64, ptr }, ptr %l493, !tbaa !27
  %t1251 = extractvalue { i64, ptr } %t1250, 1
  %t1252 = extractvalue { i64, ptr } %t1250, 0
  %t1253 = add i64 %t1249, %t1252
  %t1254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1256 = add i64 %t1253, %t1255
  %t1257 = load { i64, ptr }, ptr %l494, !tbaa !27
  %t1258 = extractvalue { i64, ptr } %t1257, 1
  %t1259 = extractvalue { i64, ptr } %t1257, 0
  %t1260 = add i64 %t1256, %t1259
  %t1261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1263 = add i64 %t1260, %t1262
  %t1264 = load { i64, ptr }, ptr %l496, !tbaa !27
  %t1265 = extractvalue { i64, ptr } %t1264, 1
  %t1266 = extractvalue { i64, ptr } %t1264, 0
  %t1267 = add i64 %t1263, %t1266
  %t1268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t1269 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t1270 = add i64 %t1267, %t1269
  %t1271 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1270)
  call void @olang_textcopy(ptr %t1271, ptr %t1248, i64 %t1249)
  %t1272 = getelementptr i8, ptr %t1271, i64 %t1249
  call void @olang_textcopy(ptr %t1272, ptr %t1251, i64 %t1252)
  %t1273 = getelementptr i8, ptr %t1272, i64 %t1252
  call void @olang_textcopy(ptr %t1273, ptr %t1254, i64 %t1255)
  %t1274 = getelementptr i8, ptr %t1273, i64 %t1255
  call void @olang_textcopy(ptr %t1274, ptr %t1258, i64 %t1259)
  %t1275 = getelementptr i8, ptr %t1274, i64 %t1259
  call void @olang_textcopy(ptr %t1275, ptr %t1261, i64 %t1262)
  %t1276 = getelementptr i8, ptr %t1275, i64 %t1262
  call void @olang_textcopy(ptr %t1276, ptr %t1265, i64 %t1266)
  %t1277 = getelementptr i8, ptr %t1276, i64 %t1266
  call void @olang_textcopy(ptr %t1277, ptr %t1268, i64 %t1269)
  %t1278 = insertvalue { i64, ptr } undef, i64 %t1270, 0
  %t1279 = insertvalue { i64, ptr } %t1278, ptr %t1271, 1
  %t1281 = extractvalue { i64, ptr } %t1279, 0
  %t1282 = extractvalue { i64, ptr } %t1279, 1
  %t1283 = mul i64 %t1281, 1
  %t1284 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1284, ptr %t1282, i64 %t1283, i1 false)
  %t1285 = insertvalue { i64, ptr } undef, i64 %t1281, 0
  %t1286 = insertvalue { i64, ptr } %t1285, ptr %t1284, 1
  %t1287 = load ptr, ptr %l492, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s34, ptr %t1287, { i64, ptr } %t1286)
  br label %bb219
bb219:
  call void @__olang_scope_close(ptr %s34)
  br label %bb225
bb220:
  %t1289 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t1290 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t1291 = load { i64, ptr }, ptr %l500, !tbaa !27
  %t1292 = extractvalue { i64, ptr } %t1291, 1
  %t1293 = extractvalue { i64, ptr } %t1291, 0
  %t1294 = add i64 %t1290, %t1293
  %t1295 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t1296 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t1297 = add i64 %t1294, %t1296
  %t1298 = load { i64, ptr }, ptr %l501, !tbaa !27
  %t1299 = extractvalue { i64, ptr } %t1298, 1
  %t1300 = extractvalue { i64, ptr } %t1298, 0
  %t1301 = add i64 %t1297, %t1300
  %t1302 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t1303 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t1304 = add i64 %t1301, %t1303
  %t1305 = load { i64, ptr }, ptr %l503, !tbaa !27
  %t1306 = extractvalue { i64, ptr } %t1305, 1
  %t1307 = extractvalue { i64, ptr } %t1305, 0
  %t1308 = add i64 %t1304, %t1307
  %t1309 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t1310 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t1311 = add i64 %t1308, %t1310
  %t1312 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1311)
  call void @olang_textcopy(ptr %t1312, ptr %t1289, i64 %t1290)
  %t1313 = getelementptr i8, ptr %t1312, i64 %t1290
  call void @olang_textcopy(ptr %t1313, ptr %t1292, i64 %t1293)
  %t1314 = getelementptr i8, ptr %t1313, i64 %t1293
  call void @olang_textcopy(ptr %t1314, ptr %t1295, i64 %t1296)
  %t1315 = getelementptr i8, ptr %t1314, i64 %t1296
  call void @olang_textcopy(ptr %t1315, ptr %t1299, i64 %t1300)
  %t1316 = getelementptr i8, ptr %t1315, i64 %t1300
  call void @olang_textcopy(ptr %t1316, ptr %t1302, i64 %t1303)
  %t1317 = getelementptr i8, ptr %t1316, i64 %t1303
  call void @olang_textcopy(ptr %t1317, ptr %t1306, i64 %t1307)
  %t1318 = getelementptr i8, ptr %t1317, i64 %t1307
  call void @olang_textcopy(ptr %t1318, ptr %t1309, i64 %t1310)
  %t1319 = insertvalue { i64, ptr } undef, i64 %t1311, 0
  %t1320 = insertvalue { i64, ptr } %t1319, ptr %t1312, 1
  %t1322 = extractvalue { i64, ptr } %t1320, 0
  %t1323 = extractvalue { i64, ptr } %t1320, 1
  %t1324 = mul i64 %t1322, 1
  %t1325 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1325, ptr %t1323, i64 %t1324, i1 false)
  %t1326 = insertvalue { i64, ptr } undef, i64 %t1322, 0
  %t1327 = insertvalue { i64, ptr } %t1326, ptr %t1325, 1
  %t1328 = load ptr, ptr %l499, !tbaa !29
  %t1330 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1328, { i64, ptr } %t1327)
  store { i64, ptr } %t1330, ptr %l506
  br label %bb221
bb221:
  %t1331 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1332 = extractvalue { i64, ptr } %t1331, 0
  %t1333 = load { i64, ptr }, ptr %l506, !tbaa !27
  %t1334 = extractvalue { i64, ptr } %t1333, 0
  store i64 %t1334, ptr %l508, !tbaa !24
  %t1336 = load i64, ptr %l508, !tbaa !24
  %t1337 = icmp eq i64 %t1332, %t1336
  br i1 %t1337, label %bb222, label %bb223
bb222:
  %t1339 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t1340 = load ptr, ptr %t1339, !tbaa !27
  %t1341 = getelementptr { i64, ptr }, ptr %l506, i32 0, i32 1
  %t1342 = load ptr, ptr %t1341, !tbaa !27
  %t1343 = load i64, ptr %l508, !tbaa !24
  %t1344 = mul i64 %t1343, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1340, ptr %t1342, i64 %t1344, i1 false)
  br label %bb224
bb223:
  %t1345 = load { i64, ptr }, ptr %l506, !tbaa !27
  store { i64, ptr } %t1345, ptr %l48, !tbaa !27
  br label %bb224
bb224:
  call void @__olang_scope_close(ptr %s36)
  br label %bb225
bb225:
  %t1346 = load i32, ptr %l6, !tbaa !23
  %t1347 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t1350 = icmp eq i32 %t1346, %t1347
  br i1 %t1350, label %bb226, label %bb227
bb226:
  store %olang.scope zeroinitializer, ptr %s38
  %t1352 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s38, ptr %t1352, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb228
bb227:
  br label %bb229
bb228:
  call void @__olang_scope_close(ptr %s38)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb229:
  %t1354 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 4
  %t1355 = load i1, ptr %t1354, !tbaa !21
  br i1 %t1355, label %bb230, label %bb231
bb230:
  %t1357 = load i32, ptr %l6, !tbaa !23
  %t1358 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1361 = icmp ne i32 %t1357, %t1358
  store i1 %t1361, ptr %l515, !tbaa !21
  br label %bb232
bb231:
  store i1 false, ptr %l515, !tbaa !21
  br label %bb232
bb232:
  %t1363 = load i1, ptr %l515, !tbaa !21
  br i1 %t1363, label %bb233, label %bb234
bb233:
  store %olang.scope zeroinitializer, ptr %s39
  %t1364 = load ptr, ptr %l0, !tbaa !29
  %t1365 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 3
  %t1366 = load %"compiler/mir:Lvalue", ptr %t1365
  %t1369 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s39, ptr %t1364, %"compiler/mir:Lvalue" %t1366)
  store { { i64, ptr }, i32 } %t1369, ptr %l521
  br label %bb235
bb234:
  br label %bb283
bb235:
  %t1370 = load { { i64, ptr }, i32 }, ptr %l521
  store { { i64, ptr }, i32 } %t1370, ptr %l49
  %t1371 = getelementptr { { i64, ptr }, i32 }, ptr %l49, i32 0, i32 0
  %t1372 = load { i64, ptr }, ptr %t1371, !tbaa !27
  store { i64, ptr } %t1372, ptr %l50, !tbaa !27
  %t1374 = getelementptr { { i64, ptr }, i32 }, ptr %l49, i32 0, i32 1
  %t1375 = load i32, ptr %t1374, !tbaa !23
  store i32 %t1375, ptr %l51, !tbaa !23
  %t1377 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 0
  %t1378 = load i32, ptr %t1377, !range !{i32 0, i32 5}
  store i32 %t1378, ptr %l52
  %t1380 = load i32, ptr %l52, !range !{i32 0, i32 5}
  %t1382 = trunc i64 0 to i32
  %t1383 = icmp eq i32 %t1380, %t1382
  br i1 %t1383, label %bb236, label %bb237
bb236:
  br label %bb238
bb237:
  br label %bb241
bb238:
  store %olang.scope zeroinitializer, ptr %s40
  %t1385 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1385, ptr %l527, !tbaa !29
  %t1386 = load ptr, ptr %l0, !tbaa !29
  %t1387 = load i32, ptr %l51, !tbaa !23
  %t1390 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s40, ptr %t1386, i32 %t1387)
  store { i64, ptr } %t1390, ptr %l530
  br label %bb239
bb239:
  %t1391 = load { i64, ptr }, ptr %l530, !tbaa !27
  %t1392 = extractvalue { i64, ptr } %t1391, 0
  %t1393 = extractvalue { i64, ptr } %t1391, 1
  %t1394 = mul i64 %t1392, 1
  %t1395 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1394)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1395, ptr %t1393, i64 %t1394, i1 false)
  %t1396 = insertvalue { i64, ptr } undef, i64 %t1392, 0
  %t1397 = insertvalue { i64, ptr } %t1396, ptr %t1395, 1
  %t1398 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1399 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t1400 = load ptr, ptr %l527, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s40, ptr %s0, ptr %s39, ptr %s40, ptr %t1400, { i64, ptr } %t1397, { i64, ptr } %t1398, { i64, ptr } %t1399, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  br label %bb240
bb240:
  call void @__olang_scope_close(ptr %s40)
  br label %bb282
bb241:
  %t1404 = load i32, ptr %l52, !range !{i32 0, i32 5}
  %t1406 = trunc i64 1 to i32
  %t1407 = icmp eq i32 %t1404, %t1406
  br i1 %t1407, label %bb242, label %bb243
bb242:
  br label %bb244
bb243:
  br label %bb275
bb244:
  store %olang.scope zeroinitializer, ptr %s41
  %t1409 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1409, ptr %l536, !tbaa !29
  %t1410 = load ptr, ptr %l5, !tbaa !29
  %t1411 = load i32, ptr %l6, !tbaa !23
  %t1415 = call i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %s0, ptr %t1410, ptr %l11, i32 %t1411)
  store i64 %t1415, ptr %l540
  br label %bb245
bb245:
  %t1416 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t1417 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t1418 = load i64, ptr %l540, !tbaa !24
  %t1419 = call i64 @__olang_fmt_i64(ptr null, i64 %t1418)
  %t1420 = add i64 %t1417, %t1419
  %t1421 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t1422 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t1423 = add i64 %t1420, %t1422
  %t1424 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1423)
  call void @olang_textcopy(ptr %t1424, ptr %t1416, i64 %t1417)
  %t1425 = getelementptr i8, ptr %t1424, i64 %t1417
  %t1426 = call i64 @__olang_fmt_i64(ptr %t1425, i64 %t1418)
  %t1427 = getelementptr i8, ptr %t1425, i64 %t1419
  call void @olang_textcopy(ptr %t1427, ptr %t1421, i64 %t1422)
  %t1428 = insertvalue { i64, ptr } undef, i64 %t1423, 0
  %t1429 = insertvalue { i64, ptr } %t1428, ptr %t1424, 1
  %t1431 = extractvalue { i64, ptr } %t1429, 0
  %t1432 = extractvalue { i64, ptr } %t1429, 1
  %t1433 = mul i64 %t1431, 1
  %t1434 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1433)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1434, ptr %t1432, i64 %t1433, i1 false)
  %t1435 = insertvalue { i64, ptr } undef, i64 %t1431, 0
  %t1436 = insertvalue { i64, ptr } %t1435, ptr %t1434, 1
  %t1437 = load ptr, ptr %l536, !tbaa !29
  %t1439 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s41, ptr %s41, ptr %t1437, { i64, ptr } %t1436, i64 8)
  store { i64, ptr } %t1439, ptr %l543
  br label %bb246
bb246:
  %t1440 = load { i64, ptr }, ptr %l543, !tbaa !27
  store { i64, ptr } %t1440, ptr %l53, !tbaa !27
  store i64 0, ptr %l54, !tbaa !24
  %t1441 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 1
  %t1443 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t1441)
  store i64 %t1443, ptr %l545
  br label %bb247
bb247:
  %t1444 = load i64, ptr %l545, !tbaa !24
  store i64 %t1444, ptr %l55, !tbaa !24
  store i64 1, ptr %l56, !tbaa !24
  %t1445 = load i64, ptr %l55, !tbaa !24
  %t1446 = load i64, ptr %l54, !tbaa !24
  %t1449 = icmp sgt i64 %t1445, %t1446
  br i1 %t1449, label %bb248, label %bb249
bb248:
  %t1451 = load i64, ptr %l56, !tbaa !24
  %t1453 = icmp sgt i64 %t1451, 0
  br i1 %t1453, label %bb250, label %bb251
bb249:
  store i64 0, ptr %l549, !tbaa !24
  br label %bb253
bb250:
  %t1455 = load i64, ptr %l55, !tbaa !24
  %t1456 = load i64, ptr %l54, !tbaa !24
  %t1459 = sub i64 %t1455, %t1456
  %t1460 = load i64, ptr %l56, !tbaa !24
  %t1463 = add i64 %t1459, %t1460
  %t1465 = sub i64 %t1463, 1
  %t1466 = load i64, ptr %l56, !tbaa !24
  %t1469 = sdiv i64 %t1465, %t1466
  store i64 %t1469, ptr %l552, !tbaa !24
  br label %bb252
bb251:
  store i64 0, ptr %l552, !tbaa !24
  br label %bb252
bb252:
  %t1471 = load i64, ptr %l552, !tbaa !24
  store i64 %t1471, ptr %l549, !tbaa !24
  br label %bb253
bb253:
  %t1472 = load i64, ptr %l549, !tbaa !24
  store i64 %t1472, ptr %l57, !tbaa !24
  store i64 0, ptr %l58, !tbaa !24
  br label %bb254
bb254:
  store %olang.scope zeroinitializer, ptr %s44
  %t1473 = load i64, ptr %l58, !tbaa !24
  %t1474 = load i64, ptr %l57, !tbaa !24
  %t1477 = icmp slt i64 %t1473, %t1474
  %t1479 = xor i1 %t1477, true
  br i1 %t1479, label %bb255, label %bb256
bb255:
  call void @__olang_scope_close(ptr %s44)
  br label %bb272
bb256:
  br label %bb257
bb257:
  %t1481 = load i64, ptr %l54, !tbaa !24
  %t1482 = load i64, ptr %l58, !tbaa !24
  %t1483 = load i64, ptr %l56, !tbaa !24
  %t1486 = mul i64 %t1482, %t1483
  %t1489 = add i64 %t1481, %t1486
  store i64 %t1489, ptr %l59, !tbaa !24
  %t1491 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 1
  %t1493 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t1491)
  store i64 %t1493, ptr %l571
  br label %bb258
bb258:
  %t1494 = load i64, ptr %l571, !tbaa !24
  %t1495 = icmp eq i64 %t1494, 1
  br i1 %t1495, label %bb259, label %bb260
bb259:
  %t1497 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t1497, ptr %l573, !tbaa !27
  br label %bb262
bb260:
  %t1499 = load ptr, ptr %l0, !tbaa !29
  %t1500 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t1501 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1502 = load i64, ptr %l59, !tbaa !24
  %t1503 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t1504 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t1506 = extractvalue { i64, ptr } %t1500, 1
  %t1507 = extractvalue { i64, ptr } %t1500, 0
  %t1508 = add i64 %t1504, %t1507
  %t1509 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t1510 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t1511 = add i64 %t1508, %t1510
  %t1513 = extractvalue { i64, ptr } %t1501, 1
  %t1514 = extractvalue { i64, ptr } %t1501, 0
  %t1515 = add i64 %t1511, %t1514
  %t1516 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t1517 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t1518 = add i64 %t1515, %t1517
  %t1520 = call i64 @__olang_fmt_i64(ptr null, i64 %t1502)
  %t1521 = add i64 %t1518, %t1520
  %t1522 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1521)
  call void @olang_textcopy(ptr %t1522, ptr %t1503, i64 %t1504)
  %t1523 = getelementptr i8, ptr %t1522, i64 %t1504
  call void @olang_textcopy(ptr %t1523, ptr %t1506, i64 %t1507)
  %t1524 = getelementptr i8, ptr %t1523, i64 %t1507
  call void @olang_textcopy(ptr %t1524, ptr %t1509, i64 %t1510)
  %t1525 = getelementptr i8, ptr %t1524, i64 %t1510
  call void @olang_textcopy(ptr %t1525, ptr %t1513, i64 %t1514)
  %t1526 = getelementptr i8, ptr %t1525, i64 %t1514
  call void @olang_textcopy(ptr %t1526, ptr %t1516, i64 %t1517)
  %t1527 = getelementptr i8, ptr %t1526, i64 %t1517
  %t1528 = call i64 @__olang_fmt_i64(ptr %t1527, i64 %t1502)
  %t1529 = insertvalue { i64, ptr } undef, i64 %t1521, 0
  %t1530 = insertvalue { i64, ptr } %t1529, ptr %t1522, 1
  %t1532 = extractvalue { i64, ptr } %t1530, 0
  %t1533 = extractvalue { i64, ptr } %t1530, 1
  %t1534 = mul i64 %t1532, 1
  %t1535 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1534)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1535, ptr %t1533, i64 %t1534, i1 false)
  %t1536 = insertvalue { i64, ptr } undef, i64 %t1532, 0
  %t1537 = insertvalue { i64, ptr } %t1536, ptr %t1535, 1
  %t1540 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s44, ptr %s44, ptr %t1499, { i64, ptr } %t1537)
  store { i64, ptr } %t1540, ptr %l581
  br label %bb261
bb261:
  %t1541 = load { i64, ptr }, ptr %l581, !tbaa !27
  store { i64, ptr } %t1541, ptr %l573, !tbaa !27
  br label %bb262
bb262:
  %t1542 = load { i64, ptr }, ptr %l573, !tbaa !27
  %t1543 = extractvalue { i64, ptr } %t1542, 0
  store i64 %t1543, ptr %l582, !tbaa !24
  %t1544 = load i64, ptr %l582, !tbaa !24
  %t1545 = mul i64 %t1544, 1
  %t1546 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1545)
  %t1547 = insertvalue { i64, ptr } undef, i64 %t1544, 0
  %t1548 = insertvalue { i64, ptr } %t1547, ptr %t1546, 1
  store { i64, ptr } %t1548, ptr %l583, !tbaa !27
  %t1549 = getelementptr { i64, ptr }, ptr %l583, i32 0, i32 1
  %t1550 = load ptr, ptr %t1549, !tbaa !27
  %t1551 = getelementptr { i64, ptr }, ptr %l573, i32 0, i32 1
  %t1552 = load ptr, ptr %t1551, !tbaa !27
  %t1553 = load i64, ptr %l582, !tbaa !24
  %t1554 = mul i64 %t1553, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1550, ptr %t1552, i64 %t1554, i1 false)
  %t1555 = load { i64, ptr }, ptr %l583, !tbaa !27
  store { i64, ptr } %t1555, ptr %l60, !tbaa !27
  %t1556 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 2
  %t1557 = load i64, ptr %l59, !tbaa !24
  %t1560 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t1556, i64 %t1557)
  store i64 %t1560, ptr %l586
  br label %bb263
bb263:
  %t1561 = load i64, ptr %l586, !tbaa !24
  %t1562 = icmp eq i64 %t1561, 0
  br i1 %t1562, label %bb264, label %bb265
bb264:
  %t1564 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t1564, ptr %l588, !tbaa !27
  br label %bb268
bb265:
  %t1566 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1566, ptr %l590, !tbaa !29
  %t1567 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t1567, ptr %l591, !tbaa !27
  %t1568 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 2
  %t1569 = load i64, ptr %l59, !tbaa !24
  %t1572 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t1568, i64 %t1569)
  store i64 %t1572, ptr %l594
  br label %bb266
bb266:
  %t1573 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t1574 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t1575 = load { i64, ptr }, ptr %l591, !tbaa !27
  %t1576 = extractvalue { i64, ptr } %t1575, 1
  %t1577 = extractvalue { i64, ptr } %t1575, 0
  %t1578 = add i64 %t1574, %t1577
  %t1579 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t1580 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t1581 = add i64 %t1578, %t1580
  %t1582 = load i64, ptr %l594, !tbaa !24
  %t1583 = call i64 @__olang_fmt_i64(ptr null, i64 %t1582)
  %t1584 = add i64 %t1581, %t1583
  %t1585 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1584)
  call void @olang_textcopy(ptr %t1585, ptr %t1573, i64 %t1574)
  %t1586 = getelementptr i8, ptr %t1585, i64 %t1574
  call void @olang_textcopy(ptr %t1586, ptr %t1576, i64 %t1577)
  %t1587 = getelementptr i8, ptr %t1586, i64 %t1577
  call void @olang_textcopy(ptr %t1587, ptr %t1579, i64 %t1580)
  %t1588 = getelementptr i8, ptr %t1587, i64 %t1580
  %t1589 = call i64 @__olang_fmt_i64(ptr %t1588, i64 %t1582)
  %t1590 = insertvalue { i64, ptr } undef, i64 %t1584, 0
  %t1591 = insertvalue { i64, ptr } %t1590, ptr %t1585, 1
  %t1593 = extractvalue { i64, ptr } %t1591, 0
  %t1594 = extractvalue { i64, ptr } %t1591, 1
  %t1595 = mul i64 %t1593, 1
  %t1596 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1595)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1596, ptr %t1594, i64 %t1595, i1 false)
  %t1597 = insertvalue { i64, ptr } undef, i64 %t1593, 0
  %t1598 = insertvalue { i64, ptr } %t1597, ptr %t1596, 1
  %t1599 = load ptr, ptr %l590, !tbaa !29
  %t1601 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s44, ptr %s44, ptr %t1599, { i64, ptr } %t1598)
  store { i64, ptr } %t1601, ptr %l597
  br label %bb267
bb267:
  %t1602 = load { i64, ptr }, ptr %l597, !tbaa !27
  store { i64, ptr } %t1602, ptr %l588, !tbaa !27
  br label %bb268
bb268:
  %t1603 = load { i64, ptr }, ptr %l588, !tbaa !27
  %t1604 = extractvalue { i64, ptr } %t1603, 0
  store i64 %t1604, ptr %l598, !tbaa !24
  %t1605 = load i64, ptr %l598, !tbaa !24
  %t1606 = mul i64 %t1605, 1
  %t1607 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1606)
  %t1608 = insertvalue { i64, ptr } undef, i64 %t1605, 0
  %t1609 = insertvalue { i64, ptr } %t1608, ptr %t1607, 1
  store { i64, ptr } %t1609, ptr %l599, !tbaa !27
  %t1610 = getelementptr { i64, ptr }, ptr %l599, i32 0, i32 1
  %t1611 = load ptr, ptr %t1610, !tbaa !27
  %t1612 = getelementptr { i64, ptr }, ptr %l588, i32 0, i32 1
  %t1613 = load ptr, ptr %t1612, !tbaa !27
  %t1614 = load i64, ptr %l598, !tbaa !24
  %t1615 = mul i64 %t1614, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1611, ptr %t1613, i64 %t1615, i1 false)
  %t1616 = load { i64, ptr }, ptr %l599, !tbaa !27
  store { i64, ptr } %t1616, ptr %l61, !tbaa !27
  %t1617 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1617, ptr %l600, !tbaa !29
  %t1618 = getelementptr %"compiler/cabi:Way", ptr %l11, i32 0, i32 1
  %t1619 = load i64, ptr %l59, !tbaa !24
  %t1622 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t1618, i64 %t1619)
  store { i64, ptr } %t1622, ptr %l603
  br label %bb269
bb269:
  %t1623 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t1624 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t1625 = load ptr, ptr %l600, !tbaa !29
  %t1626 = load { i64, ptr }, ptr %l603, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s44, ptr %s44, ptr %s44, ptr %t1625, { i64, ptr } %t1626, { i64, ptr } %t1623, { i64, ptr } %t1624, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  br label %bb270
bb270:
  call void @__olang_scope_close(ptr %s44)
  br label %bb271
bb271:
  %t1629 = load i64, ptr %l58, !tbaa !24
  %t1631 = add i64 %t1629, 1
  store i64 %t1631, ptr %l58, !tbaa !24
  br label %bb254
bb272:
  %t1633 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1633, ptr %l608, !tbaa !29
  %t1634 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t1634, ptr %l609, !tbaa !27
  %t1635 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t1635, ptr %l610, !tbaa !27
  %t1636 = load ptr, ptr %l0, !tbaa !29
  %t1637 = load i32, ptr %l6, !tbaa !23
  %t1640 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1636, i32 %t1637)
  store i64 %t1640, ptr %l613
  br label %bb273
bb273:
  %t1641 = load ptr, ptr %l608, !tbaa !29
  %t1642 = load { i64, ptr }, ptr %l609, !tbaa !27
  %t1643 = load { i64, ptr }, ptr %l610, !tbaa !27
  %t1644 = load i64, ptr %l613, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %s39, ptr %s41, ptr %t1641, { i64, ptr } %t1642, { i64, ptr } %t1643, i64 %t1644)
  br label %bb274
bb274:
  call void @__olang_scope_close(ptr %s41)
  br label %bb282
bb275:
  br i1 true, label %bb276, label %bb277
bb276:
  br label %bb278
bb277:
  br label %bb281
bb278:
  %t1645 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1645, ptr %l614, !tbaa !29
  %t1646 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t1646, ptr %l615, !tbaa !27
  %t1647 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t1647, ptr %l616, !tbaa !27
  %t1648 = load ptr, ptr %l0, !tbaa !29
  %t1649 = load i32, ptr %l6, !tbaa !23
  %t1652 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1648, i32 %t1649)
  store i64 %t1652, ptr %l619
  br label %bb279
bb279:
  %t1653 = load ptr, ptr %l614, !tbaa !29
  %t1654 = load { i64, ptr }, ptr %l615, !tbaa !27
  %t1655 = load { i64, ptr }, ptr %l616, !tbaa !27
  %t1656 = load i64, ptr %l619, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %s39, ptr %s0, ptr %t1653, { i64, ptr } %t1654, { i64, ptr } %t1655, i64 %t1656)
  br label %bb280
bb280:
  br label %bb282
bb281:
  call void @__olang_check_failed(ptr @olang_loc_abf674e0f035191f_fe40c9b44f4d0b8b)
  unreachable
bb282:
  call void @__olang_scope_close(ptr %s39)
  br label %bb283
bb283:
  %t1657 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1657, ptr %l620, !tbaa !29
  %t1658 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 5
  %t1659 = load i32, ptr %t1658, !tbaa !23
  %t1661 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s0, i32 %t1659)
  store { i64, ptr } %t1661, ptr %l622
  br label %bb284
bb284:
  %t1662 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t1663 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t1664 = load { i64, ptr }, ptr %l622, !tbaa !27
  %t1665 = extractvalue { i64, ptr } %t1664, 1
  %t1666 = extractvalue { i64, ptr } %t1664, 0
  %t1667 = add i64 %t1663, %t1666
  %t1668 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1667)
  call void @olang_textcopy(ptr %t1668, ptr %t1662, i64 %t1663)
  %t1669 = getelementptr i8, ptr %t1668, i64 %t1663
  call void @olang_textcopy(ptr %t1669, ptr %t1665, i64 %t1666)
  %t1670 = insertvalue { i64, ptr } undef, i64 %t1667, 0
  %t1671 = insertvalue { i64, ptr } %t1670, ptr %t1668, 1
  %t1673 = extractvalue { i64, ptr } %t1671, 0
  %t1674 = extractvalue { i64, ptr } %t1671, 1
  %t1675 = mul i64 %t1673, 1
  %t1676 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1675)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1676, ptr %t1674, i64 %t1675, i1 false)
  %t1677 = insertvalue { i64, ptr } undef, i64 %t1673, 0
  %t1678 = insertvalue { i64, ptr } %t1677, ptr %t1676, 1
  %t1679 = load ptr, ptr %l620, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t1679, { i64, ptr } %t1678)
  br label %bb285
bb285:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eclosure(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/mir:Range" %a4, %"compiler/mir:Range" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca { i64, [4 x i64] }
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, [1 x i64] }
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca [4 x i8]
  %l63 = alloca i64
  %l64 = alloca %"std/prelude/text:StringBuilder"
  %l70 = alloca i32
  %l73 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca ptr
  %l96 = alloca ptr
  %l101 = alloca { i64, [4 x i64] }
  %l102 = alloca i32
  %l103 = alloca { i64, ptr }
  %l111 = alloca i64
  %l114 = alloca i64
  %l137 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l153 = alloca i64
  %l159 = alloca i32
  %l162 = alloca i32
  %l184 = alloca { i64, [4 x i64] }
  %l187 = alloca i32
  %l194 = alloca { i64, ptr }
  %l197 = alloca i1
  %l202 = alloca ptr
  %l205 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l210 = alloca { i64, ptr }
  %l219 = alloca i64
  %l222 = alloca i64
  %l240 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l242 = alloca [4 x i8]
  %l256 = alloca { i64, [1 x i64] }
  %l257 = alloca i1
  %l264 = alloca { i64, ptr }
  %l266 = alloca i64
  %l269 = alloca i1
  %l277 = alloca ptr
  %l278 = alloca { i64, ptr }
  %l288 = alloca { i64, ptr }
  %l295 = alloca i1
  %l298 = alloca { i64, ptr }
  %l302 = alloca { i64, ptr }
  %l309 = alloca { i64, ptr }
  %l311 = alloca i64
  %l326 = alloca i1
  %l330 = alloca i1
  %l331 = alloca i1
  %l332 = alloca { i64, ptr }
  %l336 = alloca { i64, ptr }
  %l338 = alloca i1
  %l340 = alloca { i64, ptr }
  %l342 = alloca i64
  %l348 = alloca { i64, ptr }
  %l354 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [1 x i64] } %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  store %"compiler/mir:Range" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t4, { i64, [2 x i64] } %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/emit:fnEm", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t12 = load { i64, [2 x i64] }, ptr %l1
  %t17 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeFor(ptr %v0, ptr %s0, ptr %t11, { i64, [2 x i64] } %t12, i32 %a2)
  store { i64, ptr } %t17, ptr %l52
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t18, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l53, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t19, ptr %l54, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = mul i64 4, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 4, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %l55, 1
  store { i64, ptr } %t25, ptr %l7, !tbaa !27
  %t27 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = icmp sgt i32 %t28, 0
  br i1 %t30, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:fnEm", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load { i64, [2 x i64] }, ptr %l1
  %t39 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecapVars(ptr %v0, ptr %t35, { i64, [2 x i64] } %t36)
  store i64 %t39, ptr %l63
  br label %bb5
bb4:
  br label %bb112
bb5:
  %t40 = load i64, ptr %l63, !tbaa !24
  store i64 %t40, ptr %l8, !tbaa !24
  %t41 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s1)
  store %"std/prelude/text:StringBuilder" %t41, ptr %l64
  br label %bb6
bb6:
  %t42 = load %"std/prelude/text:StringBuilder", ptr %l64
  store %"std/prelude/text:StringBuilder" %t42, ptr %l9
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s1, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb7
bb7:
  store i32 0, ptr %l10, !tbaa !23
  %t44 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t45 = load i32, ptr %t44, !tbaa !23
  store i32 %t45, ptr %l11, !tbaa !23
  store i32 1, ptr %l12, !tbaa !23
  %t47 = load i32, ptr %l11, !tbaa !23
  %t48 = load i32, ptr %l10, !tbaa !23
  %t51 = icmp sgt i32 %t47, %t48
  br i1 %t51, label %bb8, label %bb9
bb8:
  %t53 = load i32, ptr %l12, !tbaa !23
  %t55 = icmp sgt i32 %t53, 0
  br i1 %t55, label %bb10, label %bb11
bb9:
  store i32 0, ptr %l70, !tbaa !23
  br label %bb13
bb10:
  %t57 = load i32, ptr %l11, !tbaa !23
  %t58 = load i32, ptr %l10, !tbaa !23
  %t61 = sub i32 %t57, %t58
  %t62 = load i32, ptr %l12, !tbaa !23
  %t65 = add i32 %t61, %t62
  %t67 = sub i32 %t65, 1
  %t68 = load i32, ptr %l12, !tbaa !23
  %t71 = sdiv i32 %t67, %t68
  store i32 %t71, ptr %l73, !tbaa !23
  br label %bb12
bb11:
  store i32 0, ptr %l73, !tbaa !23
  br label %bb12
bb12:
  %t73 = load i32, ptr %l73, !tbaa !23
  store i32 %t73, ptr %l70, !tbaa !23
  br label %bb13
bb13:
  %t74 = load i32, ptr %l70, !tbaa !23
  store i32 %t74, ptr %l13, !tbaa !23
  store i32 0, ptr %l14, !tbaa !23
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t75 = load i32, ptr %l14, !tbaa !23
  %t76 = load i32, ptr %l13, !tbaa !23
  %t79 = icmp slt i32 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb16:
  br label %bb17
bb17:
  %t83 = load i32, ptr %l10, !tbaa !23
  %t84 = load i32, ptr %l14, !tbaa !23
  %t85 = load i32, ptr %l12, !tbaa !23
  %t88 = mul i32 %t84, %t85
  %t91 = add i32 %t83, %t88
  store i32 %t91, ptr %l15, !tbaa !23
  %t93 = load i32, ptr %l15, !tbaa !23
  %t95 = icmp sgt i32 %t93, 0
  br i1 %t95, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s4, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d89, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb21:
  store ptr %l9, ptr %l94, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l95, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l96, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/mir:Range", ptr %l4
  %t102 = load i32, ptr %l15, !tbaa !23
  %t104 = sext i32 %t102 to i64
  %t108 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t100, %"compiler/mir:Range" %t101, i64 %t104)
  store { i64, [4 x i64] } %t108, ptr %l101
  br label %bb22
bb22:
  %t109 = load ptr, ptr %l96, !tbaa !29
  %t110 = load { i64, [4 x i64] }, ptr %l101
  %t111 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t109, { i64, [4 x i64] } %t110)
  store i32 %t111, ptr %l102
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l95, !tbaa !29
  %t113 = load i32, ptr %l102, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %t112, i32 %t113)
  store { i64, ptr } %t114, ptr %l103
  br label %bb24
bb24:
  %t115 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t122 = load ptr, ptr %l94, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s3, ptr %t122, { i64, ptr } %t121)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb26:
  %t124 = load i32, ptr %l14, !tbaa !23
  %t126 = add i32 %t124, 1
  store i32 %t126, ptr %l14, !tbaa !23
  br label %bb14
bb27:
  store i64 0, ptr %l16, !tbaa !24
  %t128 = load i64, ptr %l8, !tbaa !24
  store i64 %t128, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t130 = load i64, ptr %l17, !tbaa !24
  %t131 = load i64, ptr %l16, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb28, label %bb29
bb28:
  %t136 = load i64, ptr %l18, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb33
bb30:
  %t140 = load i64, ptr %l17, !tbaa !24
  %t141 = load i64, ptr %l16, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l18, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l18, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l114, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb32
bb32:
  %t156 = load i64, ptr %l114, !tbaa !24
  store i64 %t156, ptr %l111, !tbaa !24
  br label %bb33
bb33:
  %t157 = load i64, ptr %l111, !tbaa !24
  store i64 %t157, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t158 = load i64, ptr %l20, !tbaa !24
  %t159 = load i64, ptr %l19, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t166 = load i64, ptr %l16, !tbaa !24
  %t167 = load i64, ptr %l20, !tbaa !24
  %t168 = load i64, ptr %l18, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  store i64 %t174, ptr %l21, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s7, ptr %l9, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d90, i32 0, i32 1) })
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb39
bb39:
  %t177 = load i64, ptr %l20, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l20, !tbaa !24
  br label %bb34
bb40:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s1, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb41
bb41:
  %t183 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s1, ptr %s1, ptr %l9)
  store { i64, ptr } %t183, ptr %l137
  br label %bb42
bb42:
  %t184 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t184, ptr %l22, !tbaa !27
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l138, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t188 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t189 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t191 = extractvalue { i64, ptr } %t187, 1
  %t192 = extractvalue { i64, ptr } %t187, 0
  %t193 = add i64 %t189, %t192
  %t194 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t196 = add i64 %t193, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t196)
  call void @olang_textcopy(ptr %t197, ptr %t188, i64 %t189)
  %t198 = getelementptr i8, ptr %t197, i64 %t189
  call void @olang_textcopy(ptr %t198, ptr %t191, i64 %t192)
  %t199 = getelementptr i8, ptr %t198, i64 %t192
  call void @olang_textcopy(ptr %t199, ptr %t194, i64 %t195)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t197, 1
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t204 = extractvalue { i64, ptr } %t201, 1
  %t205 = mul i64 %t203, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t206, ptr %t204, i64 %t205, i1 false)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  %t211 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %s1, ptr %t186, { i64, ptr } %t208)
  store { i64, ptr } %t211, ptr %l143
  br label %bb43
bb43:
  %t212 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t214 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = extractvalue { i64, ptr } %t214, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t221 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t220)
  call void @olang_textcopy(ptr %t221, ptr %t212, i64 %t213)
  %t222 = getelementptr i8, ptr %t221, i64 %t213
  call void @olang_textcopy(ptr %t222, ptr %t215, i64 %t216)
  %t223 = getelementptr i8, ptr %t222, i64 %t216
  call void @olang_textcopy(ptr %t223, ptr %t218, i64 %t219)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t221, 1
  %t227 = extractvalue { i64, ptr } %t225, 0
  %t228 = extractvalue { i64, ptr } %t225, 1
  %t229 = mul i64 %t227, 1
  %t230 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t229)
  call void @llvm.memcpy.p0.p0.i64(ptr %t230, ptr %t228, i64 %t229, i1 false)
  %t231 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t230, 1
  %t233 = load ptr, ptr %l138, !tbaa !29
  %t235 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %s1, ptr %t233, { i64, ptr } %t232)
  store { i64, ptr } %t235, ptr %l146
  br label %bb44
bb44:
  %t236 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load { i64, [1 x i64] }, ptr %l3
  %t240 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t245 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %s1, ptr %s1, ptr %s0, ptr %t237, { i64, [1 x i64] } %t238, { i64, ptr } %t236, i64 8, { i64, ptr } %t240)
  store { i64, ptr } %t245, ptr %l151
  br label %bb45
bb45:
  %t246 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t246, 0
  %t248 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t249 = extractvalue { i64, ptr } %t248, 0
  store i64 %t249, ptr %l153, !tbaa !24
  %t251 = load i64, ptr %l153, !tbaa !24
  %t252 = icmp eq i64 %t247, %t251
  br i1 %t252, label %bb46, label %bb47
bb46:
  %t254 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = load i64, ptr %l153, !tbaa !24
  %t259 = mul i64 %t258, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t255, ptr %t257, i64 %t259, i1 false)
  br label %bb48
bb47:
  %t260 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t260, ptr %l7, !tbaa !27
  br label %bb48
bb48:
  store i32 0, ptr %l24, !tbaa !23
  %t261 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t262 = load i32, ptr %t261, !tbaa !23
  store i32 %t262, ptr %l25, !tbaa !23
  store i32 1, ptr %l26, !tbaa !23
  %t264 = load i32, ptr %l25, !tbaa !23
  %t265 = load i32, ptr %l24, !tbaa !23
  %t268 = icmp sgt i32 %t264, %t265
  br i1 %t268, label %bb49, label %bb50
bb49:
  %t270 = load i32, ptr %l26, !tbaa !23
  %t272 = icmp sgt i32 %t270, 0
  br i1 %t272, label %bb51, label %bb52
bb50:
  store i32 0, ptr %l159, !tbaa !23
  br label %bb54
bb51:
  %t274 = load i32, ptr %l25, !tbaa !23
  %t275 = load i32, ptr %l24, !tbaa !23
  %t278 = sub i32 %t274, %t275
  %t279 = load i32, ptr %l26, !tbaa !23
  %t282 = add i32 %t278, %t279
  %t284 = sub i32 %t282, 1
  %t285 = load i32, ptr %l26, !tbaa !23
  %t288 = sdiv i32 %t284, %t285
  store i32 %t288, ptr %l162, !tbaa !23
  br label %bb53
bb52:
  store i32 0, ptr %l162, !tbaa !23
  br label %bb53
bb53:
  %t290 = load i32, ptr %l162, !tbaa !23
  store i32 %t290, ptr %l159, !tbaa !23
  br label %bb54
bb54:
  %t291 = load i32, ptr %l159, !tbaa !23
  store i32 %t291, ptr %l27, !tbaa !23
  store i32 0, ptr %l28, !tbaa !23
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s12
  %t292 = load i32, ptr %l28, !tbaa !23
  %t293 = load i32, ptr %l27, !tbaa !23
  %t296 = icmp slt i32 %t292, %t293
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s12)
  br label %bb71
bb57:
  br label %bb58
bb58:
  %t300 = load i32, ptr %l24, !tbaa !23
  %t301 = load i32, ptr %l28, !tbaa !23
  %t302 = load i32, ptr %l26, !tbaa !23
  %t305 = mul i32 %t301, %t302
  %t308 = add i32 %t300, %t305
  store i32 %t308, ptr %l29, !tbaa !23
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load %"compiler/mir:Range", ptr %l4
  %t312 = load i32, ptr %l29, !tbaa !23
  %t314 = sext i32 %t312 to i64
  %t318 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t310, %"compiler/mir:Range" %t311, i64 %t314)
  store { i64, [4 x i64] } %t318, ptr %l184
  br label %bb59
bb59:
  %t319 = load { i64, [4 x i64] }, ptr %l184
  store { i64, [4 x i64] } %t319, ptr %l30
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load { i64, [4 x i64] }, ptr %l30
  %t324 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t320, { i64, [4 x i64] } %t321)
  store i32 %t324, ptr %l187
  br label %bb60
bb60:
  %t325 = load i32, ptr %l187, !tbaa !23
  store i32 %t325, ptr %l31, !tbaa !23
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t329 = load i32, ptr %l29, !tbaa !23
  %t330 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t331 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t333 = extractvalue { i64, ptr } %t327, 1
  %t334 = extractvalue { i64, ptr } %t327, 0
  %t335 = add i64 %t331, %t334
  %t336 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t337 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t338 = add i64 %t335, %t337
  %t340 = extractvalue { i64, ptr } %t328, 1
  %t341 = extractvalue { i64, ptr } %t328, 0
  %t342 = add i64 %t338, %t341
  %t343 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t344 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t345 = add i64 %t342, %t344
  %t347 = sext i32 %t329 to i64
  %t348 = call i64 @__olang_fmt_i64(ptr null, i64 %t347)
  %t349 = add i64 %t345, %t348
  %t350 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t349)
  call void @olang_textcopy(ptr %t350, ptr %t330, i64 %t331)
  %t351 = getelementptr i8, ptr %t350, i64 %t331
  call void @olang_textcopy(ptr %t351, ptr %t333, i64 %t334)
  %t352 = getelementptr i8, ptr %t351, i64 %t334
  call void @olang_textcopy(ptr %t352, ptr %t336, i64 %t337)
  %t353 = getelementptr i8, ptr %t352, i64 %t337
  call void @olang_textcopy(ptr %t353, ptr %t340, i64 %t341)
  %t354 = getelementptr i8, ptr %t353, i64 %t341
  call void @olang_textcopy(ptr %t354, ptr %t343, i64 %t344)
  %t355 = getelementptr i8, ptr %t354, i64 %t344
  %t356 = call i64 @__olang_fmt_i64(ptr %t355, i64 %t347)
  %t357 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t350, 1
  %t360 = extractvalue { i64, ptr } %t358, 0
  %t361 = extractvalue { i64, ptr } %t358, 1
  %t362 = mul i64 %t360, 1
  %t363 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t362)
  call void @llvm.memcpy.p0.p0.i64(ptr %t363, ptr %t361, i64 %t362, i1 false)
  %t364 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr %t363, 1
  %t368 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s12, ptr %s12, ptr %t326, { i64, ptr } %t365)
  store { i64, ptr } %t368, ptr %l194
  br label %bb61
bb61:
  %t369 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t369, ptr %l32, !tbaa !27
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load i32, ptr %l31, !tbaa !23
  %t374 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %t370, i32 %t371)
  store i1 %t374, ptr %l197
  br label %bb62
bb62:
  %t375 = load i1, ptr %l197, !tbaa !21
  br i1 %t375, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s14
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t378 = load i32, ptr %l31, !tbaa !23
  %t379 = load { i64, [4 x i64] }, ptr %l30
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s12, ptr %s14, ptr %t376, { i64, ptr } %t377, i32 %t378, { i64, [4 x i64] } %t379, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s15
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l202, !tbaa !29
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load i32, ptr %l31, !tbaa !23
  %t389 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s15, ptr %t385, i32 %t386)
  store { i64, ptr } %t389, ptr %l205
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s14)
  br label %bb69
bb66:
  %t390 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t390, 0
  %t392 = extractvalue { i64, ptr } %t390, 1
  %t393 = mul i64 %t391, 1
  %t394 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t393)
  call void @llvm.memcpy.p0.p0.i64(ptr %t394, ptr %t392, i64 %t393, i1 false)
  %t395 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t394, 1
  store { i64, ptr } %t396, ptr %l206, !tbaa !27
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load { i64, [4 x i64] }, ptr %l30
  %t399 = load i32, ptr %l31, !tbaa !23
  %t403 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s15, ptr %t397, { i64, [4 x i64] } %t398, i32 %t399)
  store { i64, ptr } %t403, ptr %l210
  br label %bb67
bb67:
  %t404 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t404, 0
  %t406 = extractvalue { i64, ptr } %t404, 1
  %t407 = mul i64 %t405, 1
  %t408 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t407)
  call void @llvm.memcpy.p0.p0.i64(ptr %t408, ptr %t406, i64 %t407, i1 false)
  %t409 = insertvalue { i64, ptr } undef, i64 %t405, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t408, 1
  %t411 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t412 = load ptr, ptr %l202, !tbaa !29
  %t413 = load { i64, ptr }, ptr %l206, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s15, ptr %s15, ptr %s12, ptr %s15, ptr %t412, { i64, ptr } %t413, { i64, ptr } %t410, { i64, ptr } %t411, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d99, i32 0, i32 1) })
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s15)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s12)
  br label %bb70
bb70:
  %t416 = load i32, ptr %l28, !tbaa !23
  %t418 = add i32 %t416, 1
  store i32 %t418, ptr %l28, !tbaa !23
  br label %bb55
bb71:
  store i64 0, ptr %l33, !tbaa !24
  %t420 = load i64, ptr %l8, !tbaa !24
  store i64 %t420, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t422 = load i64, ptr %l34, !tbaa !24
  %t423 = load i64, ptr %l33, !tbaa !24
  %t426 = icmp sgt i64 %t422, %t423
  br i1 %t426, label %bb72, label %bb73
bb72:
  %t428 = load i64, ptr %l35, !tbaa !24
  %t430 = icmp sgt i64 %t428, 0
  br i1 %t430, label %bb74, label %bb75
bb73:
  store i64 0, ptr %l219, !tbaa !24
  br label %bb77
bb74:
  %t432 = load i64, ptr %l34, !tbaa !24
  %t433 = load i64, ptr %l33, !tbaa !24
  %t436 = sub i64 %t432, %t433
  %t437 = load i64, ptr %l35, !tbaa !24
  %t440 = add i64 %t436, %t437
  %t442 = sub i64 %t440, 1
  %t443 = load i64, ptr %l35, !tbaa !24
  %t446 = sdiv i64 %t442, %t443
  store i64 %t446, ptr %l222, !tbaa !24
  br label %bb76
bb75:
  store i64 0, ptr %l222, !tbaa !24
  br label %bb76
bb76:
  %t448 = load i64, ptr %l222, !tbaa !24
  store i64 %t448, ptr %l219, !tbaa !24
  br label %bb77
bb77:
  %t449 = load i64, ptr %l219, !tbaa !24
  store i64 %t449, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb78
bb78:
  store %olang.scope zeroinitializer, ptr %s18
  %t450 = load i64, ptr %l37, !tbaa !24
  %t451 = load i64, ptr %l36, !tbaa !24
  %t454 = icmp slt i64 %t450, %t451
  %t456 = xor i1 %t454, true
  br i1 %t456, label %bb79, label %bb80
bb79:
  call void @__olang_scope_close(ptr %s18)
  br label %bb111
bb80:
  br label %bb81
bb81:
  %t458 = load i64, ptr %l33, !tbaa !24
  %t459 = load i64, ptr %l37, !tbaa !24
  %t460 = load i64, ptr %l35, !tbaa !24
  %t463 = mul i64 %t459, %t460
  %t466 = add i64 %t458, %t463
  store i64 %t466, ptr %l38, !tbaa !24
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l240, !tbaa !27
  %t468 = load { i64, ptr }, ptr %l240, !tbaa !27
  store { i64, ptr } %t468, ptr %l241, !tbaa !27
  %t469 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !27
  %t471 = mul i64 4, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l242, ptr %t470, i64 %t471, i1 false)
  %t473 = insertvalue { i64, ptr } undef, i64 4, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %l242, 1
  store { i64, ptr } %t474, ptr %l39, !tbaa !27
  %t476 = load i64, ptr %l38, !tbaa !24
  %t477 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t478 = load i32, ptr %t477, !tbaa !23
  %t480 = sext i32 %t478 to i64
  %t483 = icmp slt i64 %t476, %t480
  br i1 %t483, label %bb82, label %bb83
bb82:
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/emit:fnEm", ptr %t485, i32 0, i32 1
  %t488 = load ptr, ptr %t487, !tbaa !29
  %t490 = getelementptr %"compiler/mir:Fn", ptr %t488, i32 0, i32 12
  %t491 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 0
  %t492 = load i32, ptr %t491, !tbaa !23
  %t494 = sext i32 %t492 to i64
  %t495 = load i64, ptr %l38, !tbaa !24
  %t498 = add i64 %t494, %t495
  %t501 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t490, i64 %t498)
  store { i64, [1 x i64] } %t501, ptr %l256
  br label %bb84
bb83:
  br label %bb101
bb84:
  %t502 = load { i64, [1 x i64] }, ptr %l256
  store { i64, [1 x i64] } %t502, ptr %l40
  %t503 = load { i64, [1 x i64] }, ptr %l40
  %t505 = extractvalue { i64, [1 x i64] } %t503, 0
  %t506 = icmp eq i64 %t505, 2
  br i1 %t506, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  store i1 true, ptr %l257, !tbaa !21
  br label %bb93
bb88:
  br i1 true, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  store i1 false, ptr %l257, !tbaa !21
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_4c53df269225a815_e91774848fc42cb1)
  unreachable
bb93:
  %t508 = load i1, ptr %l257, !tbaa !21
  %t511 = xor i1 %t508, true
  br i1 %t511, label %bb94, label %bb95
bb94:
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load { i64, [1 x i64] }, ptr %l40
  %t517 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s18, ptr %t513, { i64, [1 x i64] } %t514)
  store { i64, ptr } %t517, ptr %l264
  br label %bb96
bb95:
  br label %bb100
bb96:
  %t518 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t519 = extractvalue { i64, ptr } %t518, 0
  %t520 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t520, 0
  store i64 %t521, ptr %l266, !tbaa !24
  %t523 = load i64, ptr %l266, !tbaa !24
  %t524 = icmp eq i64 %t519, %t523
  br i1 %t524, label %bb97, label %bb98
bb97:
  %t526 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t527 = load ptr, ptr %t526, !tbaa !27
  %t528 = getelementptr { i64, ptr }, ptr %l264, i32 0, i32 1
  %t529 = load ptr, ptr %t528, !tbaa !27
  %t530 = load i64, ptr %l266, !tbaa !24
  %t531 = mul i64 %t530, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t527, ptr %t529, i64 %t531, i1 false)
  br label %bb99
bb98:
  %t532 = load { i64, ptr }, ptr %l264, !tbaa !27
  store { i64, ptr } %t532, ptr %l39, !tbaa !27
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb101
bb101:
  %t533 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t535 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %s18, { i64, ptr } %t533, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t535, ptr %l269
  br label %bb102
bb102:
  %t536 = load i1, ptr %l269, !tbaa !21
  %t537 = xor i1 %t536, true
  br i1 %t537, label %bb103, label %bb104
bb103:
  store %olang.scope zeroinitializer, ptr %s23
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = getelementptr %"compiler/emit:fnEm", ptr %t539, i32 0, i32 0
  %t542 = load ptr, ptr %t541, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s23, ptr %t542, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb105
bb104:
  br label %bb107
bb105:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t545 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t546 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t547 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t549 = extractvalue { i64, ptr } %t545, 1
  %t550 = extractvalue { i64, ptr } %t545, 0
  %t551 = add i64 %t547, %t550
  %t552 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t553 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t554 = add i64 %t551, %t553
  %t555 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t554)
  call void @olang_textcopy(ptr %t555, ptr %t546, i64 %t547)
  %t556 = getelementptr i8, ptr %t555, i64 %t547
  call void @olang_textcopy(ptr %t556, ptr %t549, i64 %t550)
  %t557 = getelementptr i8, ptr %t556, i64 %t550
  call void @olang_textcopy(ptr %t557, ptr %t552, i64 %t553)
  %t558 = insertvalue { i64, ptr } undef, i64 %t554, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t555, 1
  %t561 = extractvalue { i64, ptr } %t559, 0
  %t562 = extractvalue { i64, ptr } %t559, 1
  %t563 = mul i64 %t561, 1
  %t564 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t563)
  call void @llvm.memcpy.p0.p0.i64(ptr %t564, ptr %t562, i64 %t563, i1 false)
  %t565 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t566 = insertvalue { i64, ptr } %t565, ptr %t564, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s23, ptr %t544, { i64, ptr } %t566)
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s23)
  br label %bb107
bb107:
  %t569 = load ptr, ptr %l0, !tbaa !29
  store ptr %t569, ptr %l277, !tbaa !29
  %t570 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t570, ptr %l278, !tbaa !27
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t572 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t573 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t574 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t575 = load i32, ptr %t574, !tbaa !23
  %t577 = sext i32 %t575 to i64
  %t578 = load i64, ptr %l38, !tbaa !24
  %t581 = add i64 %t577, %t578
  %t582 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t583 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t585 = extractvalue { i64, ptr } %t572, 1
  %t586 = extractvalue { i64, ptr } %t572, 0
  %t587 = add i64 %t583, %t586
  %t588 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t589 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t590 = add i64 %t587, %t589
  %t592 = extractvalue { i64, ptr } %t573, 1
  %t593 = extractvalue { i64, ptr } %t573, 0
  %t594 = add i64 %t590, %t593
  %t595 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t596 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t597 = add i64 %t594, %t596
  %t599 = call i64 @__olang_fmt_i64(ptr null, i64 %t581)
  %t600 = add i64 %t597, %t599
  %t601 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t600)
  call void @olang_textcopy(ptr %t601, ptr %t582, i64 %t583)
  %t602 = getelementptr i8, ptr %t601, i64 %t583
  call void @olang_textcopy(ptr %t602, ptr %t585, i64 %t586)
  %t603 = getelementptr i8, ptr %t602, i64 %t586
  call void @olang_textcopy(ptr %t603, ptr %t588, i64 %t589)
  %t604 = getelementptr i8, ptr %t603, i64 %t589
  call void @olang_textcopy(ptr %t604, ptr %t592, i64 %t593)
  %t605 = getelementptr i8, ptr %t604, i64 %t593
  call void @olang_textcopy(ptr %t605, ptr %t595, i64 %t596)
  %t606 = getelementptr i8, ptr %t605, i64 %t596
  %t607 = call i64 @__olang_fmt_i64(ptr %t606, i64 %t581)
  %t608 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t609 = insertvalue { i64, ptr } %t608, ptr %t601, 1
  %t611 = extractvalue { i64, ptr } %t609, 0
  %t612 = extractvalue { i64, ptr } %t609, 1
  %t613 = mul i64 %t611, 1
  %t614 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t613)
  call void @llvm.memcpy.p0.p0.i64(ptr %t614, ptr %t612, i64 %t613, i1 false)
  %t615 = insertvalue { i64, ptr } undef, i64 %t611, 0
  %t616 = insertvalue { i64, ptr } %t615, ptr %t614, 1
  %t619 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s18, ptr %s18, ptr %t571, { i64, ptr } %t616)
  store { i64, ptr } %t619, ptr %l288
  br label %bb108
bb108:
  %t620 = load { i64, ptr }, ptr %l288, !tbaa !27
  %t621 = extractvalue { i64, ptr } %t620, 0
  %t622 = extractvalue { i64, ptr } %t620, 1
  %t623 = mul i64 %t621, 1
  %t624 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t623)
  call void @llvm.memcpy.p0.p0.i64(ptr %t624, ptr %t622, i64 %t623, i1 false)
  %t625 = insertvalue { i64, ptr } undef, i64 %t621, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t624, 1
  %t627 = load ptr, ptr %l277, !tbaa !29
  %t628 = load { i64, ptr }, ptr %l278, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s18, ptr %s18, ptr %s18, ptr %s18, ptr %t627, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } %t628, { i64, ptr } %t626, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s18)
  br label %bb110
bb110:
  %t630 = load i64, ptr %l37, !tbaa !24
  %t632 = add i64 %t630, 1
  store i64 %t632, ptr %l37, !tbaa !24
  br label %bb78
bb111:
  call void @__olang_scope_close(ptr %s1)
  br label %bb112
bb112:
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t636 = getelementptr %"compiler/emit:fnEm", ptr %t634, i32 0, i32 0
  %t637 = load ptr, ptr %t636, !tbaa !29
  %t638 = load { i64, [2 x i64] }, ptr %l1
  %t641 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGen(ptr %v0, ptr %t637, { i64, [2 x i64] } %t638)
  store i1 %t641, ptr %l295
  br label %bb113
bb113:
  %t642 = load i1, ptr %l295, !tbaa !21
  br i1 %t642, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s27
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t644 = load { i64, [1 x i64] }, ptr %l3
  %t647 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s27, ptr %t643, { i64, [1 x i64] } %t644)
  store { i64, ptr } %t647, ptr %l298
  br label %bb116
bb115:
  br label %bb127
bb116:
  %t648 = load { i64, ptr }, ptr %l298, !tbaa !27
  store { i64, ptr } %t648, ptr %l42, !tbaa !27
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t651 = getelementptr %"compiler/emit:fnEm", ptr %t649, i32 0, i32 0
  %t652 = load ptr, ptr %t651, !tbaa !29
  %t653 = load { i64, [2 x i64] }, ptr %l1
  %t656 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s27, ptr %t652, { i64, [2 x i64] } %t653)
  store { i64, ptr } %t656, ptr %l302
  br label %bb117
bb117:
  %t657 = load { i64, ptr }, ptr %l302, !tbaa !27
  store { i64, ptr } %t657, ptr %l43, !tbaa !27
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t659 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t660 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t661 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t662 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t663 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t665 = extractvalue { i64, ptr } %t659, 1
  %t666 = extractvalue { i64, ptr } %t659, 0
  %t667 = add i64 %t663, %t666
  %t668 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t669 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t670 = add i64 %t667, %t669
  %t672 = extractvalue { i64, ptr } %t660, 1
  %t673 = extractvalue { i64, ptr } %t660, 0
  %t674 = add i64 %t670, %t673
  %t675 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t676 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t677 = add i64 %t674, %t676
  %t679 = extractvalue { i64, ptr } %t661, 1
  %t680 = extractvalue { i64, ptr } %t661, 0
  %t681 = add i64 %t677, %t680
  %t682 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t683 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t684 = add i64 %t681, %t683
  %t685 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t684)
  call void @olang_textcopy(ptr %t685, ptr %t662, i64 %t663)
  %t686 = getelementptr i8, ptr %t685, i64 %t663
  call void @olang_textcopy(ptr %t686, ptr %t665, i64 %t666)
  %t687 = getelementptr i8, ptr %t686, i64 %t666
  call void @olang_textcopy(ptr %t687, ptr %t668, i64 %t669)
  %t688 = getelementptr i8, ptr %t687, i64 %t669
  call void @olang_textcopy(ptr %t688, ptr %t672, i64 %t673)
  %t689 = getelementptr i8, ptr %t688, i64 %t673
  call void @olang_textcopy(ptr %t689, ptr %t675, i64 %t676)
  %t690 = getelementptr i8, ptr %t689, i64 %t676
  call void @olang_textcopy(ptr %t690, ptr %t679, i64 %t680)
  %t691 = getelementptr i8, ptr %t690, i64 %t680
  call void @olang_textcopy(ptr %t691, ptr %t682, i64 %t683)
  %t692 = insertvalue { i64, ptr } undef, i64 %t684, 0
  %t693 = insertvalue { i64, ptr } %t692, ptr %t685, 1
  %t695 = extractvalue { i64, ptr } %t693, 0
  %t696 = extractvalue { i64, ptr } %t693, 1
  %t697 = mul i64 %t695, 1
  %t698 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t697)
  call void @llvm.memcpy.p0.p0.i64(ptr %t698, ptr %t696, i64 %t697, i1 false)
  %t699 = insertvalue { i64, ptr } undef, i64 %t695, 0
  %t700 = insertvalue { i64, ptr } %t699, ptr %t698, 1
  %t703 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t658, { i64, ptr } %t700)
  store { i64, ptr } %t703, ptr %l309
  br label %bb118
bb118:
  %t704 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t705 = extractvalue { i64, ptr } %t704, 0
  %t706 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t707 = extractvalue { i64, ptr } %t706, 0
  store i64 %t707, ptr %l311, !tbaa !24
  %t709 = load i64, ptr %l311, !tbaa !24
  %t710 = icmp eq i64 %t705, %t709
  br i1 %t710, label %bb119, label %bb120
bb119:
  %t712 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t713 = load ptr, ptr %t712, !tbaa !27
  %t714 = getelementptr { i64, ptr }, ptr %l309, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !27
  %t716 = load i64, ptr %l311, !tbaa !24
  %t717 = mul i64 %t716, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t713, ptr %t715, i64 %t717, i1 false)
  br label %bb121
bb120:
  %t718 = load { i64, ptr }, ptr %l309, !tbaa !27
  store { i64, ptr } %t718, ptr %l7, !tbaa !27
  br label %bb121
bb121:
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = getelementptr %"compiler/emit:fnEm", ptr %t719, i32 0, i32 30
  %t722 = load i1, ptr %t721, !tbaa !21
  %t724 = xor i1 %t722, true
  br i1 %t724, label %bb122, label %bb123
bb122:
  store %olang.scope zeroinitializer, ptr %s29
  %t726 = load ptr, ptr %l0, !tbaa !29
  %t728 = getelementptr %"compiler/emit:fnEm", ptr %t726, i32 0, i32 0
  %t729 = load ptr, ptr %t728, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s29, ptr %t729, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d114, i32 0, i32 1) })
  br label %bb124
bb123:
  br label %bb126
bb124:
  %t731 = load ptr, ptr %l0, !tbaa !29
  %t732 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t733 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t734 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t735 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t736 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t738 = extractvalue { i64, ptr } %t732, 1
  %t739 = extractvalue { i64, ptr } %t732, 0
  %t740 = add i64 %t736, %t739
  %t741 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t742 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t743 = add i64 %t740, %t742
  %t745 = extractvalue { i64, ptr } %t733, 1
  %t746 = extractvalue { i64, ptr } %t733, 0
  %t747 = add i64 %t743, %t746
  %t748 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t749 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t750 = add i64 %t747, %t749
  %t752 = extractvalue { i64, ptr } %t734, 1
  %t753 = extractvalue { i64, ptr } %t734, 0
  %t754 = add i64 %t750, %t753
  %t755 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t756 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t757 = add i64 %t754, %t756
  %t758 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t757)
  call void @olang_textcopy(ptr %t758, ptr %t735, i64 %t736)
  %t759 = getelementptr i8, ptr %t758, i64 %t736
  call void @olang_textcopy(ptr %t759, ptr %t738, i64 %t739)
  %t760 = getelementptr i8, ptr %t759, i64 %t739
  call void @olang_textcopy(ptr %t760, ptr %t741, i64 %t742)
  %t761 = getelementptr i8, ptr %t760, i64 %t742
  call void @olang_textcopy(ptr %t761, ptr %t745, i64 %t746)
  %t762 = getelementptr i8, ptr %t761, i64 %t746
  call void @olang_textcopy(ptr %t762, ptr %t748, i64 %t749)
  %t763 = getelementptr i8, ptr %t762, i64 %t749
  call void @olang_textcopy(ptr %t763, ptr %t752, i64 %t753)
  %t764 = getelementptr i8, ptr %t763, i64 %t753
  call void @olang_textcopy(ptr %t764, ptr %t755, i64 %t756)
  %t765 = insertvalue { i64, ptr } undef, i64 %t757, 0
  %t766 = insertvalue { i64, ptr } %t765, ptr %t758, 1
  %t768 = extractvalue { i64, ptr } %t766, 0
  %t769 = extractvalue { i64, ptr } %t766, 1
  %t770 = mul i64 %t768, 1
  %t771 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t770)
  call void @llvm.memcpy.p0.p0.i64(ptr %t771, ptr %t769, i64 %t770, i1 false)
  %t772 = insertvalue { i64, ptr } undef, i64 %t768, 0
  %t773 = insertvalue { i64, ptr } %t772, ptr %t771, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s29, ptr %t731, { i64, ptr } %t773)
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s29)
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s27)
  br label %bb127
bb127:
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t778 = getelementptr %"compiler/emit:fnEm", ptr %t776, i32 0, i32 30
  %t779 = load i1, ptr %t778, !tbaa !21
  br i1 %t779, label %bb128, label %bb129
bb128:
  %t781 = load ptr, ptr %l0, !tbaa !29
  %t783 = getelementptr %"compiler/emit:fnEm", ptr %t781, i32 0, i32 0
  %t784 = load ptr, ptr %t783, !tbaa !29
  %t785 = load { i64, [2 x i64] }, ptr %l1
  %t788 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGen(ptr %v0, ptr %t784, { i64, [2 x i64] } %t785)
  store i1 %t788, ptr %l330
  br label %bb130
bb129:
  store i1 false, ptr %l326, !tbaa !21
  br label %bb131
bb130:
  %t789 = load i1, ptr %l330, !tbaa !21
  store i1 %t789, ptr %l326, !tbaa !21
  br label %bb131
bb131:
  %t790 = load i1, ptr %l326, !tbaa !21
  br i1 %t790, label %bb132, label %bb133
bb132:
  %t791 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t791, ptr %l332, !tbaa !27
  %t792 = load ptr, ptr %l0, !tbaa !29
  %t794 = getelementptr %"compiler/emit:fnEm", ptr %t792, i32 0, i32 0
  %t795 = load ptr, ptr %t794, !tbaa !29
  %t796 = load { i64, [2 x i64] }, ptr %l1
  %t799 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t795, { i64, [2 x i64] } %t796)
  store { i64, ptr } %t799, ptr %l336
  br label %bb134
bb133:
  store i1 false, ptr %l331, !tbaa !21
  br label %bb136
bb134:
  %t800 = load { i64, ptr }, ptr %l336, !tbaa !27
  %t801 = extractvalue { i64, ptr } %t800, 0
  %t802 = extractvalue { i64, ptr } %t800, 1
  %t803 = mul i64 %t801, 1
  %t804 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t803)
  call void @llvm.memcpy.p0.p0.i64(ptr %t804, ptr %t802, i64 %t803, i1 false)
  %t805 = insertvalue { i64, ptr } undef, i64 %t801, 0
  %t806 = insertvalue { i64, ptr } %t805, ptr %t804, 1
  %t807 = load { i64, ptr }, ptr %l332, !tbaa !27
  %t809 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t807, { i64, ptr } %t806)
  store i1 %t809, ptr %l338
  br label %bb135
bb135:
  %t810 = load i1, ptr %l338, !tbaa !21
  store i1 %t810, ptr %l331, !tbaa !21
  br label %bb136
bb136:
  %t811 = load i1, ptr %l331, !tbaa !21
  br i1 %t811, label %bb137, label %bb138
bb137:
  %t812 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t814 = extractvalue { i64, ptr } %t812, 1
  %t815 = extractvalue { i64, ptr } %t812, 0
  %t816 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t817 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t818 = add i64 %t815, %t817
  %t819 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t818)
  call void @olang_textcopy(ptr %t819, ptr %t814, i64 %t815)
  %t820 = getelementptr i8, ptr %t819, i64 %t815
  call void @olang_textcopy(ptr %t820, ptr %t816, i64 %t817)
  %t821 = insertvalue { i64, ptr } undef, i64 %t818, 0
  %t822 = insertvalue { i64, ptr } %t821, ptr %t819, 1
  store { i64, ptr } %t822, ptr %l340, !tbaa !27
  %t823 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t824 = extractvalue { i64, ptr } %t823, 0
  %t825 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t826 = extractvalue { i64, ptr } %t825, 0
  store i64 %t826, ptr %l342, !tbaa !24
  %t828 = load i64, ptr %l342, !tbaa !24
  %t829 = icmp eq i64 %t824, %t828
  br i1 %t829, label %bb139, label %bb140
bb138:
  br label %bb142
bb139:
  %t831 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t832 = load ptr, ptr %t831, !tbaa !27
  %t833 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t834 = load ptr, ptr %t833, !tbaa !27
  %t835 = load i64, ptr %l342, !tbaa !24
  %t836 = mul i64 %t835, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t832, ptr %t834, i64 %t836, i1 false)
  br label %bb141
bb140:
  %t837 = load { i64, ptr }, ptr %l340, !tbaa !27
  store { i64, ptr } %t837, ptr %l6, !tbaa !27
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t838 = load ptr, ptr %l0, !tbaa !29
  %t839 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t840 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t841 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t843 = extractvalue { i64, ptr } %t839, 1
  %t844 = extractvalue { i64, ptr } %t839, 0
  %t845 = add i64 %t841, %t844
  %t846 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t847 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t848 = add i64 %t845, %t847
  %t849 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t848)
  call void @olang_textcopy(ptr %t849, ptr %t840, i64 %t841)
  %t850 = getelementptr i8, ptr %t849, i64 %t841
  call void @olang_textcopy(ptr %t850, ptr %t843, i64 %t844)
  %t851 = getelementptr i8, ptr %t850, i64 %t844
  call void @olang_textcopy(ptr %t851, ptr %t846, i64 %t847)
  %t852 = insertvalue { i64, ptr } undef, i64 %t848, 0
  %t853 = insertvalue { i64, ptr } %t852, ptr %t849, 1
  %t855 = extractvalue { i64, ptr } %t853, 0
  %t856 = extractvalue { i64, ptr } %t853, 1
  %t857 = mul i64 %t855, 1
  %t858 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t857)
  call void @llvm.memcpy.p0.p0.i64(ptr %t858, ptr %t856, i64 %t857, i1 false)
  %t859 = insertvalue { i64, ptr } undef, i64 %t855, 0
  %t860 = insertvalue { i64, ptr } %t859, ptr %t858, 1
  %t863 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t838, { i64, ptr } %t860)
  store { i64, ptr } %t863, ptr %l348
  br label %bb143
bb143:
  %t864 = load { i64, ptr }, ptr %l348, !tbaa !27
  %t865 = load ptr, ptr %l0, !tbaa !29
  %t867 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t868 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t869 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t871 = extractvalue { i64, ptr } %t864, 1
  %t872 = extractvalue { i64, ptr } %t864, 0
  %t873 = add i64 %t869, %t872
  %t874 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t875 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t876 = add i64 %t873, %t875
  %t878 = extractvalue { i64, ptr } %t867, 1
  %t879 = extractvalue { i64, ptr } %t867, 0
  %t880 = add i64 %t876, %t879
  %t881 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t882 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t883 = add i64 %t880, %t882
  %t884 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t883)
  call void @olang_textcopy(ptr %t884, ptr %t868, i64 %t869)
  %t885 = getelementptr i8, ptr %t884, i64 %t869
  call void @olang_textcopy(ptr %t885, ptr %t871, i64 %t872)
  %t886 = getelementptr i8, ptr %t885, i64 %t872
  call void @olang_textcopy(ptr %t886, ptr %t874, i64 %t875)
  %t887 = getelementptr i8, ptr %t886, i64 %t875
  call void @olang_textcopy(ptr %t887, ptr %t878, i64 %t879)
  %t888 = getelementptr i8, ptr %t887, i64 %t879
  call void @olang_textcopy(ptr %t888, ptr %t881, i64 %t882)
  %t889 = insertvalue { i64, ptr } undef, i64 %t883, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t884, 1
  %t892 = extractvalue { i64, ptr } %t890, 0
  %t893 = extractvalue { i64, ptr } %t890, 1
  %t894 = mul i64 %t892, 1
  %t895 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t894)
  call void @llvm.memcpy.p0.p0.i64(ptr %t895, ptr %t893, i64 %t894, i1 false)
  %t896 = insertvalue { i64, ptr } undef, i64 %t892, 0
  %t897 = insertvalue { i64, ptr } %t896, ptr %t895, 1
  %t900 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t865, { i64, ptr } %t897)
  store { i64, ptr } %t900, ptr %l354
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s0)
  %t901 = load { i64, ptr }, ptr %l354, !tbaa !27
  store { i64, ptr } %t901, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgEntry(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 18
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d125, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l7, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t22, ptr %l5, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l8, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/emit:fnEm", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:fnEm", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/mir:Fn", ptr %t35, i32 0, i32 2
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/emit:fnEm", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/mir:Fn", ptr %t42, i32 0, i32 3
  %t45 = getelementptr %"compiler/source:Span", ptr %t44, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t52 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t31, i64 %t38, i64 %t48)
  store i64 %t52, ptr %l19
  br label %bb4
bb4:
  %t53 = load ptr, ptr %l8, !tbaa !29
  %t54 = load i64, ptr %l19, !tbaa !24
  %t55 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgLine(ptr %v0, ptr %v1, ptr %t53, i64 %t54)
  store { i64, ptr } %t55, ptr %l20
  br label %bb5
bb5:
  %t56 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindIdle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/emit:scopeUse"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca { i64, [8 x i64] }
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i32
  %l14 = alloca %"compiler/mir:Range"
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca { i64, [21 x i64] }
  %l38 = alloca { i64, [8 x i64] }
  %l39 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca %"compiler/mir:Local"
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i32
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca %"compiler/emit:scopeUse"
  %l62 = alloca i64
  %l67 = alloca i64
  %l71 = alloca i64
  %l74 = alloca i64
  %l95 = alloca %"compiler/mir:BasicBlock"
  %l105 = alloca %"compiler/mir:Range"
  %l110 = alloca i32
  %l113 = alloca i32
  %l131 = alloca %"compiler/mir:Range"
  %l143 = alloca i64
  %l147 = alloca i64
  %l150 = alloca i64
  %l171 = alloca ptr
  %l175 = alloca { i64, [1 x i64] }
  %l180 = alloca i64
  %l184 = alloca i64
  %l187 = alloca i64
  %l208 = alloca ptr
  %l211 = alloca i64
  %l213 = alloca i64
  %l218 = alloca { i64, [21 x i64] }
  %l220 = alloca { i64, [21 x i64] }
  %l228 = alloca { i64, ptr }
  %l235 = alloca i64
  %l237 = alloca i64
  %l242 = alloca %"compiler/mir:Local"
  %l245 = alloca i1
  %l253 = alloca i64
  %l257 = alloca i64
  %l260 = alloca i64
  %l281 = alloca %"compiler/mir:ScopeInfo"
  %l286 = alloca i1
  %l290 = alloca i1
  %l294 = alloca { i64, ptr }
  %l297 = alloca i1
  %l299 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = ptrtoint ptr %s0 to i64
  store i64 %t6, ptr %l52, !tbaa !24
  %t7 = load i1, ptr @olang_2esole_2ecompiler_2femit_3ascopeUse_2e0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = call ptr @__olang_region_make(ptr %s0)
  %t10 = ptrtoint ptr %t9 to i64
  store i64 %t10, ptr %l52, !tbaa !24
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/mir:Fn", ptr %t11, i32 0, i32 8
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l56
  br label %bb3
bb3:
  %t16 = load i64, ptr %l56, !tbaa !24
  %t17 = icmp sge i64 %t16, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l56, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = load i64, ptr %l52
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc_zeroed(ptr %t22, i64 %t20)
  %t24 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t27 = call %"compiler/emit:scopeUse" @compiler_2femit_3ascopeUse_2ector(ptr %s0, ptr %s0, { i64, ptr } %t25)
  store %"compiler/emit:scopeUse" %t27, ptr %l59
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_3b6348629663638e_4d98396f767ecbfa)
  unreachable
bb6:
  %t28 = load %"compiler/emit:scopeUse", ptr %l59
  store %"compiler/emit:scopeUse" %t28, ptr %l2
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 12
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l62
  br label %bb7
bb7:
  %t34 = load i64, ptr %l62, !tbaa !24
  %t35 = icmp sge i64 %t34, 0
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load i64, ptr %l62, !tbaa !24
  %t38 = mul i64 %t37, 1
  %t39 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/mir:Fn", ptr %t43, i32 0, i32 9
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l67
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e68eff5da6298283_f7922e79bdd8a34f)
  unreachable
bb10:
  %t48 = load i64, ptr %l67, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = icmp sgt i64 %t49, %t50
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb16
bb13:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = sub i64 %t59, %t60
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = add i64 %t63, %t64
  %t69 = sub i64 %t67, 1
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = sdiv i64 %t69, %t70
  store i64 %t73, ptr %l74, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb15
bb15:
  %t75 = load i64, ptr %l74, !tbaa !24
  store i64 %t75, ptr %l71, !tbaa !24
  br label %bb16
bb16:
  %t76 = load i64, ptr %l71, !tbaa !24
  store i64 %t76, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb38
bb19:
  br label %bb20
bb20:
  %t85 = load i64, ptr %l4, !tbaa !24
  %t86 = load i64, ptr %l8, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = mul i64 %t86, %t87
  %t93 = add i64 %t85, %t90
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/mir:Fn", ptr %t95, i32 0, i32 9
  %t101 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %s2, ptr %t97, i64 %t93)
  store %"compiler/mir:BasicBlock" %t101, ptr %l95
  br label %bb21
bb21:
  %t102 = getelementptr %"compiler/mir:BasicBlock", ptr %l95, i32 0, i32 1
  %t103 = load { i64, [8 x i64] }, ptr %t102
  store { i64, [8 x i64] } %t103, ptr %l10
  %t105 = load { i64, [8 x i64] }, ptr %l10
  %t107 = extractvalue { i64, [8 x i64] } %t105, 0
  %t108 = icmp eq i64 %t107, 11
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb23:
  br label %bb24
bb24:
  %t112 = getelementptr { i64, [8 x i64] }, ptr %l10, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t112, i32 0, i32 0
  %t114 = load %"compiler/source:Span", ptr %t113
  store %"compiler/source:Span" %t114, ptr %l11
  %t116 = getelementptr { i64, [8 x i64] }, ptr %l10, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t116, i32 0, i32 1
  %t118 = load { i64, [4 x i64] }, ptr %t117
  store { i64, [4 x i64] } %t118, ptr %l12
  %t120 = getelementptr { i64, [8 x i64] }, ptr %l10, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t120, i32 0, i32 2
  %t122 = load i32, ptr %t121
  store i32 %t122, ptr %l13, !tbaa !23
  %t124 = getelementptr { i64, [8 x i64] }, ptr %l10, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t124, i32 0, i32 3
  %t126 = load %"compiler/mir:Range", ptr %t125
  store %"compiler/mir:Range" %t126, ptr %l14
  %t128 = getelementptr { i64, [8 x i64] }, ptr %l10, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t128, i32 0, i32 4
  %t130 = load i32, ptr %t129
  store i32 %t130, ptr %l15, !tbaa !23
  store i32 0, ptr %l16, !tbaa !23
  %t132 = load %"compiler/mir:Range", ptr %l14
  store %"compiler/mir:Range" %t132, ptr %l105
  %t133 = getelementptr %"compiler/mir:Range", ptr %l105, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  store i32 %t134, ptr %l17, !tbaa !23
  store i32 1, ptr %l18, !tbaa !23
  %t136 = load i32, ptr %l17, !tbaa !23
  %t137 = load i32, ptr %l16, !tbaa !23
  %t140 = icmp sgt i32 %t136, %t137
  br i1 %t140, label %bb25, label %bb26
bb25:
  %t142 = load i32, ptr %l18, !tbaa !23
  %t144 = icmp sgt i32 %t142, 0
  br i1 %t144, label %bb27, label %bb28
bb26:
  store i32 0, ptr %l110, !tbaa !23
  br label %bb30
bb27:
  %t146 = load i32, ptr %l17, !tbaa !23
  %t147 = load i32, ptr %l16, !tbaa !23
  %t150 = sub i32 %t146, %t147
  %t151 = load i32, ptr %l18, !tbaa !23
  %t154 = add i32 %t150, %t151
  %t156 = sub i32 %t154, 1
  %t157 = load i32, ptr %l18, !tbaa !23
  %t160 = sdiv i32 %t156, %t157
  store i32 %t160, ptr %l113, !tbaa !23
  br label %bb29
bb28:
  store i32 0, ptr %l113, !tbaa !23
  br label %bb29
bb29:
  %t162 = load i32, ptr %l113, !tbaa !23
  store i32 %t162, ptr %l110, !tbaa !23
  br label %bb30
bb30:
  %t163 = load i32, ptr %l110, !tbaa !23
  store i32 %t163, ptr %l19, !tbaa !23
  store i32 0, ptr %l20, !tbaa !23
  br label %bb31
bb31:
  %t164 = load i32, ptr %l20, !tbaa !23
  %t165 = load i32, ptr %l19, !tbaa !23
  %t168 = icmp slt i32 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  br label %bb34
bb34:
  %t172 = load i32, ptr %l16, !tbaa !23
  %t173 = load i32, ptr %l20, !tbaa !23
  %t174 = load i32, ptr %l18, !tbaa !23
  %t177 = mul i32 %t173, %t174
  %t180 = add i32 %t172, %t177
  %t182 = load %"compiler/mir:Range", ptr %l14
  store %"compiler/mir:Range" %t182, ptr %l131
  %t183 = getelementptr %"compiler/mir:Range", ptr %l131, i32 0, i32 0
  %t184 = load i32, ptr %t183, !tbaa !23
  %t186 = sext i32 %t184 to i64
  %t189 = sext i32 %t180 to i64
  %t192 = add i64 %t186, %t189
  %t194 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr i1, ptr %t195, i64 %t192
  store i1 true, ptr %t196, !tbaa !31
  br label %bb35
bb35:
  %t197 = load i32, ptr %l20, !tbaa !23
  %t199 = add i32 %t197, 1
  store i32 %t199, ptr %l20, !tbaa !23
  br label %bb31
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb37:
  %t201 = load i64, ptr %l8, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l8, !tbaa !24
  br label %bb17
bb38:
  store i64 0, ptr %l22, !tbaa !24
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr %"compiler/mir:Fn", ptr %t205, i32 0, i32 12
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t207)
  store i64 %t209, ptr %l143
  br label %bb39
bb39:
  %t210 = load i64, ptr %l143, !tbaa !24
  store i64 %t210, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t211 = load i64, ptr %l23, !tbaa !24
  %t212 = load i64, ptr %l22, !tbaa !24
  %t215 = icmp sgt i64 %t211, %t212
  br i1 %t215, label %bb40, label %bb41
bb40:
  %t217 = load i64, ptr %l24, !tbaa !24
  %t219 = icmp sgt i64 %t217, 0
  br i1 %t219, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb45
bb42:
  %t221 = load i64, ptr %l23, !tbaa !24
  %t222 = load i64, ptr %l22, !tbaa !24
  %t225 = sub i64 %t221, %t222
  %t226 = load i64, ptr %l24, !tbaa !24
  %t229 = add i64 %t225, %t226
  %t231 = sub i64 %t229, 1
  %t232 = load i64, ptr %l24, !tbaa !24
  %t235 = sdiv i64 %t231, %t232
  store i64 %t235, ptr %l150, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb44
bb44:
  %t237 = load i64, ptr %l150, !tbaa !24
  store i64 %t237, ptr %l147, !tbaa !24
  br label %bb45
bb45:
  %t238 = load i64, ptr %l147, !tbaa !24
  store i64 %t238, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb46
bb46:
  %t239 = load i64, ptr %l26, !tbaa !24
  %t240 = load i64, ptr %l25, !tbaa !24
  %t243 = icmp slt i64 %t239, %t240
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb47, label %bb48
bb47:
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t247 = load i64, ptr %l22, !tbaa !24
  %t248 = load i64, ptr %l26, !tbaa !24
  %t249 = load i64, ptr %l24, !tbaa !24
  %t252 = mul i64 %t248, %t249
  %t255 = add i64 %t247, %t252
  store i64 %t255, ptr %l27, !tbaa !24
  %t257 = load i64, ptr %l27, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i1, ptr %t260, i64 %t257
  %t262 = load i1, ptr %t261, !tbaa !31
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb50, label %bb51
bb50:
  store ptr %l2, ptr %l171, !tbaa !29
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t268 = getelementptr %"compiler/mir:Fn", ptr %t266, i32 0, i32 12
  %t269 = load i64, ptr %l27, !tbaa !24
  %t272 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t268, i64 %t269)
  store { i64, [1 x i64] } %t272, ptr %l175
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t273 = load ptr, ptr %l171, !tbaa !29
  %t274 = load { i64, [1 x i64] }, ptr %l175
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %s0, ptr %t273, { i64, [1 x i64] } %t274)
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t275 = load i64, ptr %l26, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l26, !tbaa !24
  br label %bb46
bb56:
  store i64 0, ptr %l28, !tbaa !24
  %t279 = load ptr, ptr %l1, !tbaa !29
  %t281 = getelementptr %"compiler/mir:Fn", ptr %t279, i32 0, i32 9
  %t283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t281)
  store i64 %t283, ptr %l180
  br label %bb57
bb57:
  %t284 = load i64, ptr %l180, !tbaa !24
  store i64 %t284, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t285 = load i64, ptr %l29, !tbaa !24
  %t286 = load i64, ptr %l28, !tbaa !24
  %t289 = icmp sgt i64 %t285, %t286
  br i1 %t289, label %bb58, label %bb59
bb58:
  %t291 = load i64, ptr %l30, !tbaa !24
  %t293 = icmp sgt i64 %t291, 0
  br i1 %t293, label %bb60, label %bb61
bb59:
  store i64 0, ptr %l184, !tbaa !24
  br label %bb63
bb60:
  %t295 = load i64, ptr %l29, !tbaa !24
  %t296 = load i64, ptr %l28, !tbaa !24
  %t299 = sub i64 %t295, %t296
  %t300 = load i64, ptr %l30, !tbaa !24
  %t303 = add i64 %t299, %t300
  %t305 = sub i64 %t303, 1
  %t306 = load i64, ptr %l30, !tbaa !24
  %t309 = sdiv i64 %t305, %t306
  store i64 %t309, ptr %l187, !tbaa !24
  br label %bb62
bb61:
  store i64 0, ptr %l187, !tbaa !24
  br label %bb62
bb62:
  %t311 = load i64, ptr %l187, !tbaa !24
  store i64 %t311, ptr %l184, !tbaa !24
  br label %bb63
bb63:
  %t312 = load i64, ptr %l184, !tbaa !24
  store i64 %t312, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb64
bb64:
  %t313 = load i64, ptr %l32, !tbaa !24
  %t314 = load i64, ptr %l31, !tbaa !24
  %t317 = icmp slt i64 %t313, %t314
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb65, label %bb66
bb65:
  br label %bb88
bb66:
  br label %bb67
bb67:
  %t321 = load i64, ptr %l28, !tbaa !24
  %t322 = load i64, ptr %l32, !tbaa !24
  %t323 = load i64, ptr %l30, !tbaa !24
  %t326 = mul i64 %t322, %t323
  %t329 = add i64 %t321, %t326
  %t331 = load ptr, ptr %l1, !tbaa !29
  %t333 = getelementptr %"compiler/mir:Fn", ptr %t331, i32 0, i32 9
  %t337 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t333, i64 %t329)
  store ptr %t337, ptr %l208
  br label %bb68
bb68:
  %t338 = load ptr, ptr %l208, !tbaa !29
  store ptr %t338, ptr %l34, !tbaa !29
  %t339 = load ptr, ptr %l34, !tbaa !29
  %t341 = getelementptr %"compiler/mir:BasicBlock", ptr %t339, i32 0, i32 0
  store ptr %t341, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb69
bb69:
  %t343 = load i64, ptr %l36, !tbaa !24
  store i64 %t343, ptr %l211, !tbaa !24
  %t344 = load ptr, ptr %l35, !tbaa !29
  %t346 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t344)
  store i64 %t346, ptr %l213
  br label %bb70
bb70:
  %t347 = load i64, ptr %l211, !tbaa !24
  %t348 = load i64, ptr %l213, !tbaa !24
  %t349 = icmp slt i64 %t347, %t348
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb71, label %bb72
bb71:
  br label %bb77
bb72:
  br label %bb73
bb73:
  %t353 = load ptr, ptr %l35, !tbaa !29
  %t354 = load i64, ptr %l36, !tbaa !24
  %t357 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t353, i64 %t354)
  store { i64, [21 x i64] } %t357, ptr %l218
  br label %bb74
bb74:
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %l218, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l220, ptr %l37, i64 176, i1 false)
  %t359 = load { i64, [21 x i64] }, ptr %l220
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2estmt(ptr %s0, ptr %l2, { i64, [21 x i64] } %t359)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t360 = load i64, ptr %l36, !tbaa !24
  %t362 = add i64 %t360, 1
  store i64 %t362, ptr %l36, !tbaa !24
  br label %bb69
bb77:
  %t364 = load ptr, ptr %l34, !tbaa !29
  %t366 = getelementptr %"compiler/mir:BasicBlock", ptr %t364, i32 0, i32 1
  %t367 = load { i64, [8 x i64] }, ptr %t366
  store { i64, [8 x i64] } %t367, ptr %l38
  %t369 = load { i64, [8 x i64] }, ptr %l38
  %t371 = extractvalue { i64, [8 x i64] } %t369, 0
  %t372 = icmp eq i64 %t371, 8
  br i1 %t372, label %bb78, label %bb79
bb78:
  %t374 = getelementptr { i64, [8 x i64] }, ptr %l38, i32 0, i32 1
  %t375 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t374, i32 0, i32 1
  %t376 = load i32, ptr %t375
  store i32 %t376, ptr %l39, !tbaa !23
  br label %bb80
bb79:
  br label %bb81
bb80:
  %t378 = getelementptr %"compiler/emit:scopeUse", ptr %l2, i32 0, i32 0
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  store { i64, ptr } %t379, ptr %l228, !tbaa !27
  %t380 = load i32, ptr %l39, !tbaa !23
  %t382 = sext i32 %t380 to i64
  %t384 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !27
  %t386 = getelementptr i1, ptr %t385, i64 %t382
  store i1 true, ptr %t386, !tbaa !31
  br label %bb86
bb81:
  br i1 true, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_7398c824c6ccd25f_37644bbf4fe2ca83)
  unreachable
bb86:
  br label %bb87
bb87:
  %t387 = load i64, ptr %l32, !tbaa !24
  %t389 = add i64 %t387, 1
  store i64 %t389, ptr %l32, !tbaa !24
  br label %bb64
bb88:
  %t391 = load ptr, ptr %l1, !tbaa !29
  %t393 = getelementptr %"compiler/mir:Fn", ptr %t391, i32 0, i32 7
  store ptr %t393, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb89
bb89:
  %t395 = load i64, ptr %l41, !tbaa !24
  store i64 %t395, ptr %l235, !tbaa !24
  %t396 = load ptr, ptr %l40, !tbaa !29
  %t398 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t396)
  store i64 %t398, ptr %l237
  br label %bb90
bb90:
  %t399 = load i64, ptr %l235, !tbaa !24
  %t400 = load i64, ptr %l237, !tbaa !24
  %t401 = icmp slt i64 %t399, %t400
  %t403 = xor i1 %t401, true
  br i1 %t403, label %bb91, label %bb92
bb91:
  br label %bb101
bb92:
  br label %bb93
bb93:
  %t405 = load ptr, ptr %l40, !tbaa !29
  %t406 = load i64, ptr %l41, !tbaa !24
  %t409 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t405, i64 %t406)
  store %"compiler/mir:Local" %t409, ptr %l242
  br label %bb94
bb94:
  %t410 = load %"compiler/mir:Local", ptr %l242
  store %"compiler/mir:Local" %t410, ptr %l42
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"compiler/mir:Local", ptr %l42, i32 0, i32 4
  %t413 = load { i64, [1 x i64] }, ptr %t412
  %t416 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t411, { i64, [1 x i64] } %t413)
  store i1 %t416, ptr %l245
  br label %bb95
bb95:
  %t417 = load i1, ptr %l245, !tbaa !21
  %t418 = xor i1 %t417, true
  br i1 %t418, label %bb96, label %bb97
bb96:
  %t420 = getelementptr %"compiler/mir:Local", ptr %l42, i32 0, i32 4
  %t421 = load { i64, [1 x i64] }, ptr %t420
  call void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %s0, ptr %l2, { i64, [1 x i64] } %t421)
  br label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t424 = load i64, ptr %l41, !tbaa !24
  %t426 = add i64 %t424, 1
  store i64 %t426, ptr %l41, !tbaa !24
  br label %bb89
bb101:
  store i64 0, ptr %l43, !tbaa !24
  %t428 = load ptr, ptr %l1, !tbaa !29
  %t430 = getelementptr %"compiler/mir:Fn", ptr %t428, i32 0, i32 8
  %t432 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t430)
  store i64 %t432, ptr %l253
  br label %bb102
bb102:
  %t433 = load i64, ptr %l253, !tbaa !24
  store i64 %t433, ptr %l44, !tbaa !24
  store i64 1, ptr %l45, !tbaa !24
  %t434 = load i64, ptr %l44, !tbaa !24
  %t435 = load i64, ptr %l43, !tbaa !24
  %t438 = icmp sgt i64 %t434, %t435
  br i1 %t438, label %bb103, label %bb104
bb103:
  %t440 = load i64, ptr %l45, !tbaa !24
  %t442 = icmp sgt i64 %t440, 0
  br i1 %t442, label %bb105, label %bb106
bb104:
  store i64 0, ptr %l257, !tbaa !24
  br label %bb108
bb105:
  %t444 = load i64, ptr %l44, !tbaa !24
  %t445 = load i64, ptr %l43, !tbaa !24
  %t448 = sub i64 %t444, %t445
  %t449 = load i64, ptr %l45, !tbaa !24
  %t452 = add i64 %t448, %t449
  %t454 = sub i64 %t452, 1
  %t455 = load i64, ptr %l45, !tbaa !24
  %t458 = sdiv i64 %t454, %t455
  store i64 %t458, ptr %l260, !tbaa !24
  br label %bb107
bb106:
  store i64 0, ptr %l260, !tbaa !24
  br label %bb107
bb107:
  %t460 = load i64, ptr %l260, !tbaa !24
  store i64 %t460, ptr %l257, !tbaa !24
  br label %bb108
bb108:
  %t461 = load i64, ptr %l257, !tbaa !24
  store i64 %t461, ptr %l46, !tbaa !24
  store i64 0, ptr %l47, !tbaa !24
  br label %bb109
bb109:
  %t462 = load i64, ptr %l47, !tbaa !24
  %t463 = load i64, ptr %l46, !tbaa !24
  %t466 = icmp slt i64 %t462, %t463
  %t468 = xor i1 %t466, true
  br i1 %t468, label %bb110, label %bb111
bb110:
  br label %bb134
bb111:
  br label %bb112
bb112:
  %t470 = load i64, ptr %l43, !tbaa !24
  %t471 = load i64, ptr %l47, !tbaa !24
  %t472 = load i64, ptr %l45, !tbaa !24
  %t475 = mul i64 %t471, %t472
  %t478 = add i64 %t470, %t475
  store i64 %t478, ptr %l48, !tbaa !24
  %t480 = load ptr, ptr %l1, !tbaa !29
  %t482 = getelementptr %"compiler/mir:Fn", ptr %t480, i32 0, i32 8
  %t483 = load i64, ptr %l48, !tbaa !24
  %t486 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t482, i64 %t483)
  store %"compiler/mir:ScopeInfo" %t486, ptr %l281
  br label %bb113
bb113:
  %t487 = getelementptr %"compiler/mir:ScopeInfo", ptr %l281, i32 0, i32 0
  %t488 = load i32, ptr %t487, !range !{i32 0, i32 7}
  store i32 %t488, ptr %l49
  %t490 = load i32, ptr %l49, !range !{i32 0, i32 7}
  %t492 = trunc i64 0 to i32
  %t493 = icmp eq i32 %t490, %t492
  %t495 = xor i1 %t493, true
  br i1 %t495, label %bb114, label %bb115
bb114:
  %t497 = load i32, ptr %l49, !range !{i32 0, i32 7}
  %t499 = trunc i64 1 to i32
  %t500 = icmp eq i32 %t497, %t499
  %t502 = xor i1 %t500, true
  store i1 %t502, ptr %l286, !tbaa !21
  br label %bb116
bb115:
  store i1 false, ptr %l286, !tbaa !21
  br label %bb116
bb116:
  %t504 = load i1, ptr %l286, !tbaa !21
  br i1 %t504, label %bb117, label %bb118
bb117:
  %t505 = load i32, ptr %l49, !range !{i32 0, i32 7}
  %t507 = trunc i64 2 to i32
  %t508 = icmp eq i32 %t505, %t507
  %t510 = xor i1 %t508, true
  store i1 %t510, ptr %l290, !tbaa !21
  br label %bb119
bb118:
  store i1 false, ptr %l290, !tbaa !21
  br label %bb119
bb119:
  %t512 = load i1, ptr %l290, !tbaa !21
  br i1 %t512, label %bb120, label %bb121
bb120:
  br label %bb133
bb121:
  br label %bb122
bb122:
  %t513 = getelementptr %"compiler/emit:scopeUse", ptr %l2, i32 0, i32 0
  %t514 = load { i64, ptr }, ptr %t513, !tbaa !27
  store { i64, ptr } %t514, ptr %l294, !tbaa !27
  %t515 = load i64, ptr %l48, !tbaa !24
  %t517 = getelementptr { i64, ptr }, ptr %l294, i32 0, i32 1
  %t518 = load ptr, ptr %t517, !tbaa !27
  %t519 = getelementptr i1, ptr %t518, i64 %t515
  %t520 = load i1, ptr %t519, !tbaa !31
  br i1 %t520, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l297, !tbaa !21
  br label %bb128
bb124:
  %t522 = getelementptr %"compiler/emit:scopeUse", ptr %l2, i32 0, i32 1
  %t523 = load i1, ptr %t522, !tbaa !21
  br i1 %t523, label %bb125, label %bb126
bb125:
  %t525 = load i64, ptr %l48, !tbaa !24
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t528 = getelementptr %"compiler/emit:fnEm", ptr %t526, i32 0, i32 8
  %t529 = load i64, ptr %t528, !tbaa !24
  %t532 = icmp eq i64 %t525, %t529
  store i1 %t532, ptr %l299, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l299, !tbaa !21
  br label %bb127
bb127:
  %t534 = load i1, ptr %l299, !tbaa !21
  store i1 %t534, ptr %l297, !tbaa !21
  br label %bb128
bb128:
  %t535 = load i1, ptr %l297, !tbaa !21
  br i1 %t535, label %bb129, label %bb130
bb129:
  br label %bb133
bb130:
  br label %bb131
bb131:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/emit:fnEm", ptr %t536, i32 0, i32 25
  %t539 = load i64, ptr %l48, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t538, i64 %t539, i1 true)
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t542 = load i64, ptr %l47, !tbaa !24
  %t544 = add i64 %t542, 1
  store i64 %t544, ptr %l47, !tbaa !24
  br label %bb109
bb134:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i64
  %l18 = alloca i64
  %rv = alloca i64
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
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t9, i32 %a1)
  store i32 %t13, ptr %l9
  br label %bb1
bb1:
  %t14 = load i32, ptr %l9, !tbaa !23
  store i32 %t14, ptr %l3, !tbaa !23
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l12
  br label %bb2
bb2:
  %t20 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t22 = trunc i64 26 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l18
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb5:
  %t30 = load i64, ptr %l18, !tbaa !24
  store i64 %t30, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l15, !tbaa !24
  store i64 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efloatOverflows(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l17 = alloca i64
  %l24 = alloca { i64, ptr }
  %l26 = alloca i64
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l41 = alloca i1
  %l46 = alloca { i64, ptr }
  %l48 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l88 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l100 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca i64
  %l115 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a4, ptr %l4
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
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = extractvalue { i64, ptr } %t9, 0
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t11, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l6, !tbaa !27
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t21 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t17, i32 %a3)
  store i64 %t21, ptr %l17
  br label %bb1
bb1:
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = icmp ne i64 %t22, 64
  br i1 %t23, label %bb2, label %bb3
bb2:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t31 = extractvalue { i64, ptr } %a2, 1
  %t32 = extractvalue { i64, ptr } %a2, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t38 = extractvalue { i64, ptr } %t27, 1
  %t39 = extractvalue { i64, ptr } %t27, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t28, i64 %t29)
  %t45 = getelementptr i8, ptr %t44, i64 %t29
  call void @olang_textcopy(ptr %t45, ptr %t31, i64 %t32)
  %t46 = getelementptr i8, ptr %t45, i64 %t32
  call void @olang_textcopy(ptr %t46, ptr %t34, i64 %t35)
  %t47 = getelementptr i8, ptr %t46, i64 %t35
  call void @olang_textcopy(ptr %t47, ptr %t38, i64 %t39)
  %t48 = getelementptr i8, ptr %t47, i64 %t39
  call void @olang_textcopy(ptr %t48, ptr %t41, i64 %t42)
  %t49 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t44, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = extractvalue { i64, ptr } %t50, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t60 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t25, { i64, ptr } %t57)
  store { i64, ptr } %t60, ptr %l24
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t61 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  %t63 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l26, !tbaa !24
  %t66 = load i64, ptr %l26, !tbaa !24
  %t67 = icmp eq i64 %t62, %t66
  br i1 %t67, label %bb5, label %bb6
bb5:
  %t69 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l26, !tbaa !24
  %t74 = mul i64 %t73, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  br label %bb7
bb6:
  %t75 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t75, ptr %l6, !tbaa !27
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t76 = load ptr, ptr %l5, !tbaa !29
  %t77 = load i32, ptr %l4, !tbaa !23
  %t80 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t76, i32 %t77)
  store i64 %t80, ptr %l30
  br label %bb9
bb9:
  %t81 = load i64, ptr %l30, !tbaa !24
  store i64 %t81, ptr %l7, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t82, ptr %l32, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l33, !tbaa !24
  %t85 = load i64, ptr %l33, !tbaa !24
  %t86 = mul i64 %t85, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t86)
  %t88 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, ptr } %t89, ptr %l34, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = load i64, ptr %l33, !tbaa !24
  %t95 = mul i64 %t94, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t91, ptr %t93, i64 %t95, i1 false)
  %t96 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t96, ptr %l8, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d130, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t97, ptr %l36, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l37, !tbaa !24
  %t100 = load i64, ptr %l37, !tbaa !24
  %t101 = mul i64 %t100, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l38, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l37, !tbaa !24
  %t110 = mul i64 %t109, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t106, ptr %t108, i64 %t110, i1 false)
  %t111 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t111, ptr %l9, !tbaa !27
  %t112 = load ptr, ptr %l5, !tbaa !29
  %t113 = load i32, ptr %l4, !tbaa !23
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l41
  br label %bb10
bb10:
  %t117 = load i1, ptr %l41, !tbaa !21
  br i1 %t117, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t120 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t123 = extractvalue { i64, ptr } %t119, 1
  %t124 = extractvalue { i64, ptr } %t119, 0
  %t125 = add i64 %t121, %t124
  %t126 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t128 = add i64 %t125, %t127
  %t129 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t120, i64 %t121)
  %t130 = getelementptr i8, ptr %t129, i64 %t121
  call void @olang_textcopy(ptr %t130, ptr %t123, i64 %t124)
  %t131 = getelementptr i8, ptr %t130, i64 %t124
  call void @olang_textcopy(ptr %t131, ptr %t126, i64 %t127)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t129, 1
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t136 = extractvalue { i64, ptr } %t133, 1
  %t137 = mul i64 %t135, 1
  %t138 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t137)
  call void @llvm.memcpy.p0.p0.i64(ptr %t138, ptr %t136, i64 %t137, i1 false)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  %t143 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t118, { i64, ptr } %t140)
  store { i64, ptr } %t143, ptr %l46
  br label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s7
  %t144 = load i64, ptr %l7, !tbaa !24
  %t146 = icmp sgt i64 %t144, 53
  br i1 %t146, label %bb22, label %bb23
bb13:
  %t148 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 0
  %t150 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 0
  store i64 %t151, ptr %l48, !tbaa !24
  %t153 = load i64, ptr %l48, !tbaa !24
  %t154 = icmp eq i64 %t149, %t153
  br i1 %t154, label %bb14, label %bb15
bb14:
  %t156 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l48, !tbaa !24
  %t161 = mul i64 %t160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %t159, i64 %t161, i1 false)
  br label %bb16
bb15:
  %t162 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t162, ptr %l8, !tbaa !27
  br label %bb16
bb16:
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l50, !tbaa !29
  %t164 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t164, ptr %l51, !tbaa !27
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/emit:fnEm", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t169 = load i64, ptr %l7, !tbaa !24
  %t172 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2epow2(ptr %v0, ptr %s4, ptr %t168, i64 %t169)
  store { i64, ptr } %t172, ptr %l55
  br label %bb17
bb17:
  %t173 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t175 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = add i64 %t174, %t177
  %t179 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = add i64 %t181, %t184
  %t186 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t185)
  call void @olang_textcopy(ptr %t186, ptr %t173, i64 %t174)
  %t187 = getelementptr i8, ptr %t186, i64 %t174
  call void @olang_textcopy(ptr %t187, ptr %t176, i64 %t177)
  %t188 = getelementptr i8, ptr %t187, i64 %t177
  call void @olang_textcopy(ptr %t188, ptr %t179, i64 %t180)
  %t189 = getelementptr i8, ptr %t188, i64 %t180
  call void @olang_textcopy(ptr %t189, ptr %t183, i64 %t184)
  %t190 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t186, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = extractvalue { i64, ptr } %t191, 1
  %t195 = mul i64 %t193, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t195)
  call void @llvm.memcpy.p0.p0.i64(ptr %t196, ptr %t194, i64 %t195, i1 false)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  %t199 = load ptr, ptr %l50, !tbaa !29
  %t201 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t199, { i64, ptr } %t198)
  store { i64, ptr } %t201, ptr %l58
  br label %bb18
bb18:
  %t202 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  %t204 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 0
  store i64 %t205, ptr %l60, !tbaa !24
  %t207 = load i64, ptr %l60, !tbaa !24
  %t208 = icmp eq i64 %t203, %t207
  br i1 %t208, label %bb19, label %bb20
bb19:
  %t210 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = load i64, ptr %l60, !tbaa !24
  %t215 = mul i64 %t214, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t211, ptr %t213, i64 %t215, i1 false)
  br label %bb21
bb20:
  %t216 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t216, ptr %l9, !tbaa !27
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb40
bb22:
  store %olang.scope zeroinitializer, ptr %s8
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l64, !tbaa !29
  %t218 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t218, ptr %l65, !tbaa !27
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/emit:fnEm", ptr %t219, i32 0, i32 0
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t223 = bitcast double 0x3ff0000000000000 to i64
  %t225 = load i64, ptr %l7, !tbaa !24
  %t227 = sub i64 %t225, 1
  %t229 = shl i64 %t227, 52
  %t232 = add i64 %t223, %t229
  %t233 = shl i64 1, 63
  %t236 = or i64 %t232, %t233
  %t239 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %s8, ptr %t222, i32 14, i64 %t236)
  store { i64, ptr } %t239, ptr %l76
  br label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s10
  %t240 = load ptr, ptr %l0, !tbaa !29
  store ptr %t240, ptr %l83, !tbaa !29
  %t241 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t241, ptr %l84, !tbaa !27
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/emit:fnEm", ptr %t242, i32 0, i32 0
  %t245 = load ptr, ptr %t244, !tbaa !29
  %t246 = load i64, ptr %l7, !tbaa !24
  %t248 = sub i64 %t246, 1
  store i64 %t248, ptr %l88, !tbaa !24
  %t249 = load i64, ptr %l88, !tbaa !24
  %t250 = load i64, ptr %l88, !tbaa !24
  %t251 = shl i64 1, %t250
  %t253 = sitofp i64 %t251 to double
  %t255 = fsub double 0x0000000000000000, %t253
  %t257 = fsub double %t255, 0x3ff0000000000000
  %t259 = bitcast double %t257 to i64
  %t263 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %s10, ptr %t245, i32 14, i64 %t259)
  store { i64, ptr } %t263, ptr %l95
  br label %bb29
bb24:
  %t264 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t266 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 1
  %t268 = extractvalue { i64, ptr } %t266, 0
  %t269 = add i64 %t265, %t268
  %t270 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t273 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 1
  %t275 = extractvalue { i64, ptr } %t273, 0
  %t276 = add i64 %t272, %t275
  %t277 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t276)
  call void @olang_textcopy(ptr %t277, ptr %t264, i64 %t265)
  %t278 = getelementptr i8, ptr %t277, i64 %t265
  call void @olang_textcopy(ptr %t278, ptr %t267, i64 %t268)
  %t279 = getelementptr i8, ptr %t278, i64 %t268
  call void @olang_textcopy(ptr %t279, ptr %t270, i64 %t271)
  %t280 = getelementptr i8, ptr %t279, i64 %t271
  call void @olang_textcopy(ptr %t280, ptr %t274, i64 %t275)
  %t281 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t277, 1
  %t284 = extractvalue { i64, ptr } %t282, 0
  %t285 = extractvalue { i64, ptr } %t282, 1
  %t286 = mul i64 %t284, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t286)
  call void @llvm.memcpy.p0.p0.i64(ptr %t287, ptr %t285, i64 %t286, i1 false)
  %t288 = insertvalue { i64, ptr } undef, i64 %t284, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t290 = load ptr, ptr %l64, !tbaa !29
  %t292 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t290, { i64, ptr } %t289)
  store { i64, ptr } %t292, ptr %l79
  br label %bb25
bb25:
  %t293 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  %t295 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t295, 0
  store i64 %t296, ptr %l81, !tbaa !24
  %t298 = load i64, ptr %l81, !tbaa !24
  %t299 = icmp eq i64 %t294, %t298
  br i1 %t299, label %bb26, label %bb27
bb26:
  %t301 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = load i64, ptr %l81, !tbaa !24
  %t306 = mul i64 %t305, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t302, ptr %t304, i64 %t306, i1 false)
  br label %bb28
bb27:
  %t307 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t307, ptr %l8, !tbaa !27
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s8)
  br label %bb34
bb29:
  %t308 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t309 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t310 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t310, 1
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t313 = add i64 %t309, %t312
  %t314 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t315 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t316 = add i64 %t313, %t315
  %t317 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t317, 1
  %t319 = extractvalue { i64, ptr } %t317, 0
  %t320 = add i64 %t316, %t319
  %t321 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t320)
  call void @olang_textcopy(ptr %t321, ptr %t308, i64 %t309)
  %t322 = getelementptr i8, ptr %t321, i64 %t309
  call void @olang_textcopy(ptr %t322, ptr %t311, i64 %t312)
  %t323 = getelementptr i8, ptr %t322, i64 %t312
  call void @olang_textcopy(ptr %t323, ptr %t314, i64 %t315)
  %t324 = getelementptr i8, ptr %t323, i64 %t315
  call void @olang_textcopy(ptr %t324, ptr %t318, i64 %t319)
  %t325 = insertvalue { i64, ptr } undef, i64 %t320, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t321, 1
  %t328 = extractvalue { i64, ptr } %t326, 0
  %t329 = extractvalue { i64, ptr } %t326, 1
  %t330 = mul i64 %t328, 1
  %t331 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t330)
  call void @llvm.memcpy.p0.p0.i64(ptr %t331, ptr %t329, i64 %t330, i1 false)
  %t332 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t333 = insertvalue { i64, ptr } %t332, ptr %t331, 1
  %t334 = load ptr, ptr %l83, !tbaa !29
  %t336 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t334, { i64, ptr } %t333)
  store { i64, ptr } %t336, ptr %l98
  br label %bb30
bb30:
  %t337 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t337, 0
  %t339 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t339, 0
  store i64 %t340, ptr %l100, !tbaa !24
  %t342 = load i64, ptr %l100, !tbaa !24
  %t343 = icmp eq i64 %t338, %t342
  br i1 %t343, label %bb31, label %bb32
bb31:
  %t345 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = load i64, ptr %l100, !tbaa !24
  %t350 = mul i64 %t349, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t346, ptr %t348, i64 %t350, i1 false)
  br label %bb33
bb32:
  %t351 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t351, ptr %l8, !tbaa !27
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s10)
  br label %bb34
bb34:
  %t352 = load ptr, ptr %l0, !tbaa !29
  store ptr %t352, ptr %l102, !tbaa !29
  %t353 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t353, ptr %l103, !tbaa !27
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t356 = getelementptr %"compiler/emit:fnEm", ptr %t354, i32 0, i32 0
  %t357 = load ptr, ptr %t356, !tbaa !29
  %t358 = load i64, ptr %l7, !tbaa !24
  %t360 = sub i64 %t358, 1
  %t363 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2epow2(ptr %v0, ptr %s7, ptr %t357, i64 %t360)
  store { i64, ptr } %t363, ptr %l108
  br label %bb35
bb35:
  %t364 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t366 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t366, 1
  %t368 = extractvalue { i64, ptr } %t366, 0
  %t369 = add i64 %t365, %t368
  %t370 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t372 = add i64 %t369, %t371
  %t373 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t373, 1
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t376 = add i64 %t372, %t375
  %t377 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t376)
  call void @olang_textcopy(ptr %t377, ptr %t364, i64 %t365)
  %t378 = getelementptr i8, ptr %t377, i64 %t365
  call void @olang_textcopy(ptr %t378, ptr %t367, i64 %t368)
  %t379 = getelementptr i8, ptr %t378, i64 %t368
  call void @olang_textcopy(ptr %t379, ptr %t370, i64 %t371)
  %t380 = getelementptr i8, ptr %t379, i64 %t371
  call void @olang_textcopy(ptr %t380, ptr %t374, i64 %t375)
  %t381 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t377, 1
  %t384 = extractvalue { i64, ptr } %t382, 0
  %t385 = extractvalue { i64, ptr } %t382, 1
  %t386 = mul i64 %t384, 1
  %t387 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t386)
  call void @llvm.memcpy.p0.p0.i64(ptr %t387, ptr %t385, i64 %t386, i1 false)
  %t388 = insertvalue { i64, ptr } undef, i64 %t384, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t387, 1
  %t390 = load ptr, ptr %l102, !tbaa !29
  %t392 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t390, { i64, ptr } %t389)
  store { i64, ptr } %t392, ptr %l111
  br label %bb36
bb36:
  %t393 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t393, 0
  %t395 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t396 = extractvalue { i64, ptr } %t395, 0
  store i64 %t396, ptr %l113, !tbaa !24
  %t398 = load i64, ptr %l113, !tbaa !24
  %t399 = icmp eq i64 %t394, %t398
  br i1 %t399, label %bb37, label %bb38
bb37:
  %t401 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !27
  %t403 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !27
  %t405 = load i64, ptr %l113, !tbaa !24
  %t406 = mul i64 %t405, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t402, ptr %t404, i64 %t406, i1 false)
  br label %bb39
bb38:
  %t407 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t407, ptr %l9, !tbaa !27
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb40:
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l115, !tbaa !29
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t411 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t412 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t413 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t415 = extractvalue { i64, ptr } %t410, 1
  %t416 = extractvalue { i64, ptr } %t410, 0
  %t417 = add i64 %t413, %t416
  %t418 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t419 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t420 = add i64 %t417, %t419
  %t422 = extractvalue { i64, ptr } %t411, 1
  %t423 = extractvalue { i64, ptr } %t411, 0
  %t424 = add i64 %t420, %t423
  %t425 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t424)
  call void @olang_textcopy(ptr %t425, ptr %t412, i64 %t413)
  %t426 = getelementptr i8, ptr %t425, i64 %t413
  call void @olang_textcopy(ptr %t426, ptr %t415, i64 %t416)
  %t427 = getelementptr i8, ptr %t426, i64 %t416
  call void @olang_textcopy(ptr %t427, ptr %t418, i64 %t419)
  %t428 = getelementptr i8, ptr %t427, i64 %t419
  call void @olang_textcopy(ptr %t428, ptr %t422, i64 %t423)
  %t429 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t425, 1
  %t432 = extractvalue { i64, ptr } %t430, 0
  %t433 = extractvalue { i64, ptr } %t430, 1
  %t434 = mul i64 %t432, 1
  %t435 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t435, ptr %t433, i64 %t434, i1 false)
  %t436 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  %t440 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t409, { i64, ptr } %t437)
  store { i64, ptr } %t440, ptr %l121
  br label %bb41
bb41:
  %t441 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t442 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t443 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t444 = extractvalue { i64, ptr } %t443, 1
  %t445 = extractvalue { i64, ptr } %t443, 0
  %t446 = add i64 %t442, %t445
  %t447 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t448 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t449 = add i64 %t446, %t448
  %t450 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t449)
  call void @olang_textcopy(ptr %t450, ptr %t441, i64 %t442)
  %t451 = getelementptr i8, ptr %t450, i64 %t442
  call void @olang_textcopy(ptr %t451, ptr %t444, i64 %t445)
  %t452 = getelementptr i8, ptr %t451, i64 %t445
  call void @olang_textcopy(ptr %t452, ptr %t447, i64 %t448)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t450, 1
  %t456 = extractvalue { i64, ptr } %t454, 0
  %t457 = extractvalue { i64, ptr } %t454, 1
  %t458 = mul i64 %t456, 1
  %t459 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t458)
  call void @llvm.memcpy.p0.p0.i64(ptr %t459, ptr %t457, i64 %t458, i1 false)
  %t460 = insertvalue { i64, ptr } undef, i64 %t456, 0
  %t461 = insertvalue { i64, ptr } %t460, ptr %t459, 1
  %t462 = load ptr, ptr %l115, !tbaa !29
  %t464 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t462, { i64, ptr } %t461)
  store { i64, ptr } %t464, ptr %l124
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t465 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t465, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca { i64, [4 x i64] }
  %l5 = alloca { i64, ptr }
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l13 = alloca i1
  %l17 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l24 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [4 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i1, ptr %l8, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load { i64, [4 x i64] }, ptr %l3
  %t11 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esrcAddr(ptr %v0, ptr %s1, ptr %t7, { i64, [4 x i64] } %t8)
  store { i64, ptr } %t11, ptr %l11
  br label %bb4
bb3:
  br label %bb29
bb4:
  %t12 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t12, ptr %l5, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d145, i32 0, i32 1) })
  store i1 %t15, ptr %l13
  br label %bb5
bb5:
  %t16 = load i1, ptr %l13, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %v1, { i64, ptr } %t19, { i64, ptr } %t20)
  store i1 %t23, ptr %l17
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t24 = load i1, ptr %l17, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t28, ptr %l20, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t29, ptr %l21, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l2, !tbaa !23
  %t34 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t30, i32 %t31)
  store i64 %t34, ptr %l24
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t38 = load i64, ptr %l24, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %v1, ptr %s1, ptr %t35, { i64, ptr } %t36, { i64, ptr } %t37, i64 %t38)
  br label %bb12
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  %t39 = load { i64, [4 x i64] }, ptr %l3
  %t41 = extractvalue { i64, [4 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 2
  br i1 %t42, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  %t44 = load { i64, [4 x i64] }, ptr %l3
  %t46 = extractvalue { i64, [4 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 0
  br i1 %t47, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb23
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/emit:fnEm", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s4, ptr %s4, ptr %t52, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d146, i32 0, i32 1) }, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d147, i32 0, i32 1) })
  br label %bb20
bb20:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l32, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l2, !tbaa !23
  %t60 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t56, i32 %t57)
  store i64 %t60, ptr %l35
  br label %bb21
bb21:
  %t61 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t63 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = add i64 %t62, %t65
  %t67 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t69 = add i64 %t66, %t68
  %t70 = load i64, ptr %l35, !tbaa !24
  %t71 = call i64 @__olang_fmt_i64(ptr null, i64 %t70)
  %t72 = add i64 %t69, %t71
  %t73 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t75 = add i64 %t72, %t74
  %t76 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t61, i64 %t62)
  %t77 = getelementptr i8, ptr %t76, i64 %t62
  call void @olang_textcopy(ptr %t77, ptr %t64, i64 %t65)
  %t78 = getelementptr i8, ptr %t77, i64 %t65
  call void @olang_textcopy(ptr %t78, ptr %t67, i64 %t68)
  %t79 = getelementptr i8, ptr %t78, i64 %t68
  %t80 = call i64 @__olang_fmt_i64(ptr %t79, i64 %t70)
  %t81 = getelementptr i8, ptr %t79, i64 %t71
  call void @olang_textcopy(ptr %t81, ptr %t73, i64 %t74)
  %t82 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t76, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load ptr, ptr %l31, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s4, ptr %t91, { i64, ptr } %t90)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_3a52453b80be52d1_6c5ca24620edcd6d)
  unreachable
bb28:
  call void @__olang_scope_close(ptr %s1)
  br label %bb29
bb29:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l38, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l2, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t94, i32 %t95)
  store { i64, ptr } %t98, ptr %l41
  br label %bb30
bb30:
  %t99 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  store { i64, ptr } %t105, ptr %l42, !tbaa !27
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load { i64, [4 x i64] }, ptr %l3
  %t108 = load i32, ptr %l2, !tbaa !23
  %t112 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t106, { i64, [4 x i64] } %t107, i32 %t108)
  store { i64, ptr } %t112, ptr %l46
  br label %bb31
bb31:
  %t113 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t120 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t122 = load ptr, ptr %l38, !tbaa !29
  %t123 = load { i64, ptr }, ptr %l42, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %v2, ptr %t122, { i64, ptr } %t123, { i64, ptr } %t119, { i64, ptr } %t120, { i64, ptr } %a4)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eref(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { { i64, ptr }, i32 }
  %lp5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i32
  %l14 = alloca { { i64, ptr }, i32 }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i1
  %l29 = alloca i32
  %l33 = alloca i1
  %l36 = alloca i1
  %l37 = alloca ptr
  %l40 = alloca i64
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
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
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s0, ptr %t9, %"compiler/mir:Lvalue" %a1)
  store { { i64, ptr }, i32 } %t13, ptr %l14
  br label %bb1
bb1:
  %t14 = load { { i64, ptr }, i32 }, ptr %l14
  store { { i64, ptr }, i32 } %t14, ptr %l4
  %t15 = getelementptr { { i64, ptr }, i32 }, ptr %l4, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l15, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l16, !tbaa !24
  %t19 = load i64, ptr %l16, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l16, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t30, ptr %lp5
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t32 = load ptr, ptr %lp5
  store { i64, ptr } %t31, ptr %t32, !tbaa !27
  %t33 = getelementptr { { i64, ptr }, i32 }, ptr %l4, i32 0, i32 1
  %t34 = load i32, ptr %t33, !tbaa !23
  store i32 %t34, ptr %l6, !tbaa !23
  %t36 = load ptr, ptr %l3, !tbaa !29
  store ptr %t36, ptr %l19, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t37, i32 %a2)
  store i32 %t41, ptr %l22
  br label %bb2
bb2:
  %t42 = load ptr, ptr %l19, !tbaa !29
  %t43 = load i32, ptr %l22, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t44, ptr %l23
  br label %bb3
bb3:
  %t45 = load i32, ptr %l23, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t50 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %t46, i32 %t45)
  store i1 %t50, ptr %l26
  br label %bb4
bb4:
  %t51 = load i1, ptr %l26, !tbaa !21
  br i1 %t51, label %bb5, label %bb6
bb5:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l6, !tbaa !23
  %t56 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l29
  br label %bb7
bb6:
  br label %bb18
bb7:
  %t57 = load i32, ptr %l29, !tbaa !23
  store i32 %t57, ptr %l8, !tbaa !23
  %t58 = load i32, ptr %l8, !tbaa !23
  %t59 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t62 = icmp ne i32 %t58, %t59
  br i1 %t62, label %bb8, label %bb9
bb8:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l8, !tbaa !23
  %t68 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l36
  br label %bb10
bb9:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb11
bb10:
  %t69 = load i1, ptr %l36, !tbaa !21
  store i1 %t69, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t70 = load i1, ptr %l33, !tbaa !21
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l37, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l8, !tbaa !23
  %t76 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t72, i32 %t73)
  store i64 %t76, ptr %l40
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t77 = load i64, ptr %l40, !tbaa !24
  %t78 = call i64 @__olang_fmt_i64(ptr null, i64 %t77)
  %t79 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t78)
  %t80 = call i64 @__olang_fmt_i64(ptr %t79, i64 %t77)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t79, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } %t82, 1
  %t86 = mul i64 %t84, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t86)
  call void @llvm.memcpy.p0.p0.i64(ptr %t87, ptr %t85, i64 %t86, i1 false)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  %t90 = load ptr, ptr %lp5
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t92 = load ptr, ptr %l37, !tbaa !29
  %t95 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t92, { i64, ptr } %t89, { i64, ptr } %t91)
  store { i64, ptr } %t95, ptr %l44
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t96 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb16:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %lp5
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/emit:fnEm", ptr %t100, i32 0, i32 15
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t107 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %v1, ptr %t97, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d151, i32 0, i32 1) }, { i64, ptr } %t99, { i64, ptr } %t103)
  store { i64, ptr } %t107, ptr %l49
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t108 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t108, ptr %rv
  br label %ret
bb18:
  %t109 = load ptr, ptr %lp5
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2erun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"compiler/mir:Local"
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l32 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i32
  %l43 = alloca i8
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l51 = alloca i32
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l70 = alloca ptr
  %l71 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l86 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l96 = alloca i32
  %l97 = alloca ptr
  %l98 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l111 = alloca i1
  %l116 = alloca i1
  %l120 = alloca i1
  %l123 = alloca i64
  %l127 = alloca i64
  %l130 = alloca i64
  %l151 = alloca %"compiler/mir:ScopeInfo"
  %l154 = alloca i1
  %l168 = alloca %"std/prelude/text:StringBuilder"
  %l169 = alloca ptr
  %l174 = alloca { i64, ptr }
  %l182 = alloca i64
  %l185 = alloca i64
  %l207 = alloca ptr
  %l208 = alloca i64
  %l211 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l240 = alloca ptr
  %l242 = alloca { i64, ptr }
  %l251 = alloca i64
  %l255 = alloca i64
  %l258 = alloca i64
  %l279 = alloca %"compiler/mir:Local"
  %l283 = alloca i1
  %l289 = alloca { i64, ptr }
  %l292 = alloca i1
  %l302 = alloca i1
  %l309 = alloca i64
  %l314 = alloca i64
  %l316 = alloca ptr
  %l317 = alloca i64
  %l320 = alloca i64
  %l323 = alloca i64
  %l340 = alloca i64
  %l344 = alloca i64
  %l347 = alloca i64
  %l368 = alloca i1
  %l369 = alloca i1
  %l373 = alloca i1
  %l377 = alloca %"compiler/mir:ScopeInfo"
  %l394 = alloca %"compiler/mir:ScopeInfo"
  %l414 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l415 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l417 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l418 = alloca i32
  %l420 = alloca i1
  %l432 = alloca { i64, ptr }
  %l434 = alloca i1
  %l436 = alloca i1
  %l448 = alloca { i64, ptr }
  %l451 = alloca i64
  %l455 = alloca i64
  %l458 = alloca i64
  %l479 = alloca i32
  %l484 = alloca %"compiler/mir:Local"
  %l486 = alloca ptr
  %l490 = alloca %"compiler/mir:Local"
  %l492 = alloca i1
  %l502 = alloca ptr
  %l503 = alloca i64
  %l504 = alloca i64
  %l507 = alloca i64
  %l532 = alloca ptr
  %l535 = alloca { i64, ptr }
  %l552 = alloca { i64, ptr }
  %l555 = alloca i64
  %l559 = alloca i64
  %l562 = alloca i64
  %l583 = alloca i32
  %l588 = alloca %"compiler/mir:Local"
  %l592 = alloca i1
  %l593 = alloca i1
  %l600 = alloca i1
  %l602 = alloca i1
  %l608 = alloca { i64, ptr }
  %l609 = alloca ptr
  %l610 = alloca ptr
  %l612 = alloca i1
  %l613 = alloca { i64, ptr }
  %l617 = alloca { i64, ptr }
  %l627 = alloca i64
  %l630 = alloca { i64, ptr }
  %l633 = alloca i64
  %l637 = alloca i64
  %l640 = alloca i64
  %l661 = alloca i32
  %l663 = alloca ptr
  %l667 = alloca %"compiler/mir:Local"
  %l669 = alloca { i64, ptr }
  %l670 = alloca ptr
  %l674 = alloca %"compiler/mir:Local"
  %l676 = alloca i1
  %l686 = alloca ptr
  %l690 = alloca %"compiler/mir:Local"
  %l692 = alloca i1
  %l696 = alloca ptr
  %l697 = alloca i64
  %l698 = alloca i64
  %l699 = alloca ptr
  %l703 = alloca %"compiler/mir:Local"
  %l705 = alloca i64
  %l730 = alloca i64
  %l734 = alloca i64
  %l737 = alloca i64
  %l756 = alloca ptr
  %l757 = alloca i64
  %l758 = alloca { i64, ptr }
  %l761 = alloca i64
  %l773 = alloca ptr
  %l774 = alloca i64
  %l775 = alloca i64
  %l777 = alloca { i64, ptr }
  %l782 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l785 = alloca i64
  %l787 = alloca i64
  %l792 = alloca i32
  %l800 = alloca i64
  %l804 = alloca i64
  %l807 = alloca i64
  %l825 = alloca ptr
  %l829 = alloca { i64, ptr }
  %l834 = alloca ptr
  %l837 = alloca i1
  %l838 = alloca i1
  %l841 = alloca i1
  %l849 = alloca i64
  %l853 = alloca i64
  %l856 = alloca i64
  %l876 = alloca ptr
  %l880 = alloca { i64, [21 x i64] }
  %l894 = alloca { i64, ptr }
  %l896 = alloca { i64, ptr }
  %l898 = alloca { i64, ptr }
  %l901 = alloca { i64, ptr }
  %l902 = alloca { i64, ptr }
  %l904 = alloca { i64, ptr }
  %l907 = alloca { i64, ptr }
  %l908 = alloca i64
  %l909 = alloca { i64, ptr }
  %l911 = alloca ptr
  %l912 = alloca i64
  %l914 = alloca %"std/prelude/text:StringBuilder"
  %l916 = alloca %"std/prelude/text:StringBuilder"
  %l941 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %s63 = alloca %olang.scope
  %s65 = alloca %olang.scope
  %s66 = alloca %olang.scope
  %s68 = alloca %olang.scope
  %s70 = alloca %olang.scope
  %s75 = alloca %olang.scope
  %s84 = alloca %olang.scope
  %s85 = alloca %olang.scope
  %s87 = alloca %olang.scope
  %s90 = alloca %olang.scope
  %s91 = alloca %olang.scope
  %s92 = alloca %olang.scope
  %s93 = alloca %olang.scope
  %s94 = alloca %olang.scope
  %s97 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:fnEm", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 3
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l2, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l92, !tbaa !29
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/mir:Fn", ptr %t16, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t15, i32 %t19)
  store i32 %t22, ptr %l96
  br label %bb1
bb1:
  %t23 = load i32, ptr %l96, !tbaa !23
  %t24 = load ptr, ptr %l92, !tbaa !29
  %t25 = getelementptr %"compiler/emit:fnEm", ptr %t24, i32 0, i32 9
  store i32 %t23, ptr %t25, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l97, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l98, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 1
  %t32 = load i32, ptr %t31, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t28, i32 %t32)
  store i32 %t35, ptr %l102
  br label %bb2
bb2:
  %t36 = load ptr, ptr %l98, !tbaa !29
  %t37 = load i32, ptr %l102, !tbaa !23
  %t38 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t36, i32 %t37)
  store { i64, ptr } %t38, ptr %l103
  br label %bb3
bb3:
  %t39 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  %t42 = icmp sgt i64 %t40, 0
  %t44 = load ptr, ptr %l97, !tbaa !29
  %t45 = getelementptr %"compiler/emit:fnEm", ptr %t44, i32 0, i32 10
  store i1 %t42, ptr %t45, !tbaa !21
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l106, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/emit:fnEm", ptr %t47, i32 0, i32 9
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t54 = icmp ne i32 %t50, %t51
  br i1 %t54, label %bb4, label %bb5
bb4:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/emit:fnEm", ptr %t56, i32 0, i32 9
  %t59 = load i32, ptr %t58, !tbaa !23
  %t60 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t63 = icmp ne i32 %t59, %t60
  store i1 %t63, ptr %l111, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb6
bb6:
  %t65 = load i1, ptr %l111, !tbaa !21
  br i1 %t65, label %bb7, label %bb8
bb7:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/emit:fnEm", ptr %t67, i32 0, i32 9
  %t70 = load i32, ptr %t69, !tbaa !23
  %t73 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t66, i32 %t70)
  store i1 %t73, ptr %l120
  br label %bb9
bb8:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb10
bb9:
  %t74 = load i1, ptr %l120, !tbaa !21
  store i1 %t74, ptr %l116, !tbaa !21
  br label %bb10
bb10:
  %t75 = load i1, ptr %l116, !tbaa !21
  %t76 = load ptr, ptr %l106, !tbaa !29
  %t77 = getelementptr %"compiler/emit:fnEm", ptr %t76, i32 0, i32 11
  store i1 %t75, ptr %t77, !tbaa !21
  store i64 0, ptr %l3, !tbaa !24
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/mir:Fn", ptr %t78, i32 0, i32 8
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l123
  br label %bb11
bb11:
  %t83 = load i64, ptr %l123, !tbaa !24
  store i64 %t83, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t84 = load i64, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l3, !tbaa !24
  %t88 = icmp sgt i64 %t84, %t85
  br i1 %t88, label %bb12, label %bb13
bb12:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = icmp sgt i64 %t90, 0
  br i1 %t92, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb17
bb14:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t95 = load i64, ptr %l3, !tbaa !24
  %t98 = sub i64 %t94, %t95
  %t99 = load i64, ptr %l5, !tbaa !24
  %t102 = add i64 %t98, %t99
  %t104 = sub i64 %t102, 1
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = sdiv i64 %t104, %t105
  store i64 %t108, ptr %l130, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb16
bb16:
  %t110 = load i64, ptr %l130, !tbaa !24
  store i64 %t110, ptr %l127, !tbaa !24
  br label %bb17
bb17:
  %t111 = load i64, ptr %l127, !tbaa !24
  store i64 %t111, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  %t112 = load i64, ptr %l7, !tbaa !24
  %t113 = load i64, ptr %l6, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb19, label %bb20
bb19:
  br label %bb30
bb20:
  br label %bb21
bb21:
  %t120 = load i64, ptr %l3, !tbaa !24
  %t121 = load i64, ptr %l7, !tbaa !24
  %t122 = load i64, ptr %l5, !tbaa !24
  %t125 = mul i64 %t121, %t122
  %t128 = add i64 %t120, %t125
  store i64 %t128, ptr %l8, !tbaa !24
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/mir:Fn", ptr %t130, i32 0, i32 8
  %t133 = load i64, ptr %l8, !tbaa !24
  %t136 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t132, i64 %t133)
  store %"compiler/mir:ScopeInfo" %t136, ptr %l151
  br label %bb22
bb22:
  %t137 = getelementptr %"compiler/mir:ScopeInfo", ptr %l151, i32 0, i32 0
  %t138 = load i32, ptr %t137, !range !{i32 0, i32 7}
  %t140 = trunc i64 0 to i32
  %t141 = icmp eq i32 %t138, %t140
  br i1 %t141, label %bb23, label %bb24
bb23:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/emit:fnEm", ptr %t143, i32 0, i32 8
  %t146 = load i64, ptr %t145, !tbaa !24
  %t148 = icmp slt i64 %t146, 0
  store i1 %t148, ptr %l154, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb25
bb25:
  %t150 = load i1, ptr %l154, !tbaa !21
  br i1 %t150, label %bb26, label %bb27
bb26:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l8, !tbaa !24
  %t155 = getelementptr %"compiler/emit:fnEm", ptr %t151, i32 0, i32 8
  store i64 %t152, ptr %t155, !tbaa !24
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t156 = load i64, ptr %l7, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l7, !tbaa !24
  br label %bb18
bb30:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/emit:fnEm", ptr %t160, i32 0, i32 28
  %t163 = load i1, ptr %t162, !tbaa !21
  br i1 %t163, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/emit:fnEm", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %t168)
  br label %bb33
bb32:
  br label %bb67
bb33:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/emit:fnEm", ptr %t170, i32 0, i32 0
  %t173 = load ptr, ptr %t172, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s5, ptr %t173, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d152, i32 0, i32 1) })
  br label %bb34
bb34:
  %t175 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s5)
  store %"std/prelude/text:StringBuilder" %t175, ptr %l168
  br label %bb35
bb35:
  %t176 = load %"std/prelude/text:StringBuilder", ptr %l168
  store %"std/prelude/text:StringBuilder" %t176, ptr %l9
  store ptr %l9, ptr %l169, !tbaa !29
  %t177 = load ptr, ptr %l2, !tbaa !29
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr %"compiler/mir:Fn", ptr %t178, i32 0, i32 1
  %t181 = load i32, ptr %t180, !tbaa !23
  %t183 = inttoptr i64 0 to ptr
  %t186 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s5, ptr %t183, ptr %t177, i32 %t181)
  store { i64, ptr } %t186, ptr %l174
  br label %bb36
bb36:
  %t187 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t189 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 1
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t192 = add i64 %t188, %t191
  %t193 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t195)
  call void @olang_textcopy(ptr %t196, ptr %t187, i64 %t188)
  %t197 = getelementptr i8, ptr %t196, i64 %t188
  call void @olang_textcopy(ptr %t197, ptr %t190, i64 %t191)
  %t198 = getelementptr i8, ptr %t197, i64 %t191
  call void @olang_textcopy(ptr %t198, ptr %t193, i64 %t194)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t196, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = extractvalue { i64, ptr } %t200, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t208 = load ptr, ptr %l169, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %t208, { i64, ptr } %t207)
  br label %bb37
bb37:
  store i64 0, ptr %l10, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/emit:fnEm", ptr %t210, i32 0, i32 7
  %t213 = load i64, ptr %t212, !tbaa !24
  store i64 %t213, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t215 = load i64, ptr %l11, !tbaa !24
  %t216 = load i64, ptr %l10, !tbaa !24
  %t219 = icmp sgt i64 %t215, %t216
  br i1 %t219, label %bb38, label %bb39
bb38:
  %t221 = load i64, ptr %l12, !tbaa !24
  %t223 = icmp sgt i64 %t221, 0
  br i1 %t223, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l182, !tbaa !24
  br label %bb43
bb40:
  %t225 = load i64, ptr %l11, !tbaa !24
  %t226 = load i64, ptr %l10, !tbaa !24
  %t229 = sub i64 %t225, %t226
  %t230 = load i64, ptr %l12, !tbaa !24
  %t233 = add i64 %t229, %t230
  %t235 = sub i64 %t233, 1
  %t236 = load i64, ptr %l12, !tbaa !24
  %t239 = sdiv i64 %t235, %t236
  store i64 %t239, ptr %l185, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l185, !tbaa !24
  br label %bb42
bb42:
  %t241 = load i64, ptr %l185, !tbaa !24
  store i64 %t241, ptr %l182, !tbaa !24
  br label %bb43
bb43:
  %t242 = load i64, ptr %l182, !tbaa !24
  store i64 %t242, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t243 = load i64, ptr %l14, !tbaa !24
  %t244 = load i64, ptr %l13, !tbaa !24
  %t247 = icmp slt i64 %t243, %t244
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t251 = load i64, ptr %l10, !tbaa !24
  %t252 = load i64, ptr %l14, !tbaa !24
  %t253 = load i64, ptr %l12, !tbaa !24
  %t256 = mul i64 %t252, %t253
  %t259 = add i64 %t251, %t256
  store i64 %t259, ptr %l15, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s8, ptr %l9, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d155, i32 0, i32 1) })
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s8)
  br label %bb49
bb49:
  %t262 = load i64, ptr %l14, !tbaa !24
  %t264 = add i64 %t262, 1
  store i64 %t264, ptr %l14, !tbaa !24
  br label %bb44
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d156, i32 0, i32 1) })
  br label %bb51
bb51:
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l207, !tbaa !29
  %t268 = ptrtoint ptr %v0 to i64
  store i64 %t268, ptr %l208, !tbaa !24
  %t269 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e29
  br i1 %t269, label %bb52, label %bb53
bb52:
  %t271 = call ptr @__olang_region_make(ptr %v0)
  %t272 = ptrtoint ptr %t271 to i64
  store i64 %t272, ptr %l208, !tbaa !24
  br label %bb53
bb53:
  %t273 = load i64, ptr %l208
  %t274 = inttoptr i64 %t273 to ptr
  %t276 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s5, ptr %t274, ptr %l9)
  store { i64, ptr } %t276, ptr %l211
  br label %bb54
bb54:
  %t277 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t278 = load i64, ptr %l208
  %t279 = inttoptr i64 %t278 to ptr
  %t280 = extractvalue { i64, ptr } %t277, 0
  %t281 = extractvalue { i64, ptr } %t277, 1
  %t282 = mul i64 %t280, 1
  %t283 = call ptr @__olang_scope_alloc(ptr %t279, i64 %t282)
  call void @llvm.memcpy.p0.p0.i64(ptr %t283, ptr %t281, i64 %t282, i1 false)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  %t286 = load ptr, ptr %l207, !tbaa !29
  %t287 = getelementptr %"compiler/emit:fnEm", ptr %t286, i32 0, i32 29
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  store { i64, ptr } %t288, ptr %l213, !tbaa !27
  %t290 = load ptr, ptr %l207, !tbaa !29
  %t291 = getelementptr %"compiler/emit:fnEm", ptr %t290, i32 0, i32 29
  store { i64, ptr } %t285, ptr %t291, !tbaa !27
  %t292 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e29
  br i1 %t292, label %bb55, label %bb56
bb55:
  %t294 = load { i64, ptr }, ptr %l213
  %t295 = extractvalue { i64, ptr } %t294, 1
  call void @__olang_region_release(ptr %t295)
  store { i64, ptr } zeroinitializer, ptr %l213
  br label %bb56
bb56:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/emit:fnEm", ptr %t296, i32 0, i32 3
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/emit:fnEm", ptr %t299, i32 0, i32 29
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  %t303 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t306 = extractvalue { i64, ptr } %t302, 1
  %t307 = extractvalue { i64, ptr } %t302, 0
  %t308 = add i64 %t304, %t307
  %t309 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t311 = add i64 %t308, %t310
  %t312 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t311)
  call void @olang_textcopy(ptr %t312, ptr %t303, i64 %t304)
  %t313 = getelementptr i8, ptr %t312, i64 %t304
  call void @olang_textcopy(ptr %t313, ptr %t306, i64 %t307)
  %t314 = getelementptr i8, ptr %t313, i64 %t307
  call void @olang_textcopy(ptr %t314, ptr %t309, i64 %t310)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t312, 1
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t319 = extractvalue { i64, ptr } %t316, 1
  %t320 = mul i64 %t318, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t320)
  call void @llvm.memcpy.p0.p0.i64(ptr %t321, ptr %t319, i64 %t320, i1 false)
  %t322 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t298, { i64, ptr } %t323)
  br label %bb57
bb57:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/emit:fnEm", ptr %t326, i32 0, i32 3
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/emit:fnEm", ptr %t329, i32 0, i32 29
  %t332 = load { i64, ptr }, ptr %t331, !tbaa !27
  %t333 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t334 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t336 = extractvalue { i64, ptr } %t332, 1
  %t337 = extractvalue { i64, ptr } %t332, 0
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t342 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t341)
  call void @olang_textcopy(ptr %t342, ptr %t333, i64 %t334)
  %t343 = getelementptr i8, ptr %t342, i64 %t334
  call void @olang_textcopy(ptr %t343, ptr %t336, i64 %t337)
  %t344 = getelementptr i8, ptr %t343, i64 %t337
  call void @olang_textcopy(ptr %t344, ptr %t339, i64 %t340)
  %t345 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t342, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = extractvalue { i64, ptr } %t346, 1
  %t350 = mul i64 %t348, 1
  %t351 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t351, ptr %t349, i64 %t350, i1 false)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t328, { i64, ptr } %t353)
  br label %bb58
bb58:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/emit:fnEm", ptr %t356, i32 0, i32 3
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/emit:fnEm", ptr %t359, i32 0, i32 29
  %t362 = load { i64, ptr }, ptr %t361, !tbaa !27
  %t363 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t364 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t366 = extractvalue { i64, ptr } %t362, 1
  %t367 = extractvalue { i64, ptr } %t362, 0
  %t368 = add i64 %t364, %t367
  %t369 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t371 = add i64 %t368, %t370
  %t372 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t371)
  call void @olang_textcopy(ptr %t372, ptr %t363, i64 %t364)
  %t373 = getelementptr i8, ptr %t372, i64 %t364
  call void @olang_textcopy(ptr %t373, ptr %t366, i64 %t367)
  %t374 = getelementptr i8, ptr %t373, i64 %t367
  call void @olang_textcopy(ptr %t374, ptr %t369, i64 %t370)
  %t375 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t372, 1
  %t378 = extractvalue { i64, ptr } %t376, 0
  %t379 = extractvalue { i64, ptr } %t376, 1
  %t380 = mul i64 %t378, 1
  %t381 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t380)
  call void @llvm.memcpy.p0.p0.i64(ptr %t381, ptr %t379, i64 %t380, i1 false)
  %t382 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t381, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t358, { i64, ptr } %t383)
  br label %bb59
bb59:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = getelementptr %"compiler/emit:fnEm", ptr %t386, i32 0, i32 4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t388, { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d163, i32 0, i32 1) })
  br label %bb60
bb60:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = getelementptr %"compiler/emit:fnEm", ptr %t390, i32 0, i32 4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t392, { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d164, i32 0, i32 1) })
  br label %bb61
bb61:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/emit:fnEm", ptr %t394, i32 0, i32 4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t396, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d165, i32 0, i32 1) })
  br label %bb62
bb62:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr %"compiler/emit:fnEm", ptr %t398, i32 0, i32 4
  store ptr %t400, ptr %l240, !tbaa !29
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgEntry(ptr %v0, ptr %s5, ptr %t401)
  store { i64, ptr } %t403, ptr %l242
  br label %bb63
bb63:
  %t404 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t406 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t406, 1
  %t408 = extractvalue { i64, ptr } %t406, 0
  %t409 = add i64 %t405, %t408
  %t410 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t411 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t412 = add i64 %t409, %t411
  %t413 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t412)
  call void @olang_textcopy(ptr %t413, ptr %t404, i64 %t405)
  %t414 = getelementptr i8, ptr %t413, i64 %t405
  call void @olang_textcopy(ptr %t414, ptr %t407, i64 %t408)
  %t415 = getelementptr i8, ptr %t414, i64 %t408
  call void @olang_textcopy(ptr %t415, ptr %t410, i64 %t411)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t413, 1
  %t419 = extractvalue { i64, ptr } %t417, 0
  %t420 = extractvalue { i64, ptr } %t417, 1
  %t421 = mul i64 %t419, 1
  %t422 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t421)
  call void @llvm.memcpy.p0.p0.i64(ptr %t422, ptr %t420, i64 %t421, i1 false)
  %t423 = insertvalue { i64, ptr } undef, i64 %t419, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr %t422, 1
  %t425 = load ptr, ptr %l240, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t425, { i64, ptr } %t424)
  br label %bb64
bb64:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/emit:fnEm", ptr %t427, i32 0, i32 4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t429, { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d168, i32 0, i32 1) })
  br label %bb65
bb65:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = getelementptr %"compiler/emit:fnEm", ptr %t431, i32 0, i32 4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t433, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d169, i32 0, i32 1) })
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s5)
  br label %bb67
bb67:
  store i64 0, ptr %l16, !tbaa !24
  %t435 = load ptr, ptr %l1, !tbaa !29
  %t437 = getelementptr %"compiler/mir:Fn", ptr %t435, i32 0, i32 7
  %t439 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t437)
  store i64 %t439, ptr %l251
  br label %bb68
bb68:
  %t440 = load i64, ptr %l251, !tbaa !24
  store i64 %t440, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t441 = load i64, ptr %l17, !tbaa !24
  %t442 = load i64, ptr %l16, !tbaa !24
  %t445 = icmp sgt i64 %t441, %t442
  br i1 %t445, label %bb69, label %bb70
bb69:
  %t447 = load i64, ptr %l18, !tbaa !24
  %t449 = icmp sgt i64 %t447, 0
  br i1 %t449, label %bb71, label %bb72
bb70:
  store i64 0, ptr %l255, !tbaa !24
  br label %bb74
bb71:
  %t451 = load i64, ptr %l17, !tbaa !24
  %t452 = load i64, ptr %l16, !tbaa !24
  %t455 = sub i64 %t451, %t452
  %t456 = load i64, ptr %l18, !tbaa !24
  %t459 = add i64 %t455, %t456
  %t461 = sub i64 %t459, 1
  %t462 = load i64, ptr %l18, !tbaa !24
  %t465 = sdiv i64 %t461, %t462
  store i64 %t465, ptr %l258, !tbaa !24
  br label %bb73
bb72:
  store i64 0, ptr %l258, !tbaa !24
  br label %bb73
bb73:
  %t467 = load i64, ptr %l258, !tbaa !24
  store i64 %t467, ptr %l255, !tbaa !24
  br label %bb74
bb74:
  %t468 = load i64, ptr %l255, !tbaa !24
  store i64 %t468, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb75
bb75:
  store %olang.scope zeroinitializer, ptr %s15
  %t469 = load i64, ptr %l20, !tbaa !24
  %t470 = load i64, ptr %l19, !tbaa !24
  %t473 = icmp slt i64 %t469, %t470
  %t475 = xor i1 %t473, true
  br i1 %t475, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s15)
  br label %bb112
bb77:
  br label %bb78
bb78:
  %t477 = load i64, ptr %l16, !tbaa !24
  %t478 = load i64, ptr %l20, !tbaa !24
  %t479 = load i64, ptr %l18, !tbaa !24
  %t482 = mul i64 %t478, %t479
  %t485 = add i64 %t477, %t482
  store i64 %t485, ptr %l21, !tbaa !24
  %t487 = load ptr, ptr %l1, !tbaa !29
  %t489 = getelementptr %"compiler/mir:Fn", ptr %t487, i32 0, i32 7
  %t490 = load i64, ptr %l21, !tbaa !24
  %t493 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t489, i64 %t490)
  store %"compiler/mir:Local" %t493, ptr %l279
  br label %bb79
bb79:
  %t494 = load %"compiler/mir:Local", ptr %l279
  store %"compiler/mir:Local" %t494, ptr %l22
  %t495 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 2
  %t496 = load i32, ptr %t495, !tbaa !23
  %t497 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t500 = icmp eq i32 %t496, %t497
  br i1 %t500, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l283, !tbaa !21
  br label %bb82
bb81:
  %t502 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 2
  %t503 = load i32, ptr %t502, !tbaa !23
  %t504 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t507 = icmp eq i32 %t503, %t504
  store i1 %t507, ptr %l283, !tbaa !21
  br label %bb82
bb82:
  %t509 = load i1, ptr %l283, !tbaa !21
  br i1 %t509, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s15)
  br label %bb111
bb84:
  br label %bb85
bb85:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 2
  %t512 = load i32, ptr %t511, !tbaa !23
  %t515 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s15, ptr %t510, i32 %t512)
  store { i64, ptr } %t515, ptr %l289
  br label %bb86
bb86:
  %t516 = load { i64, ptr }, ptr %l289, !tbaa !27
  store { i64, ptr } %t516, ptr %l23, !tbaa !27
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 4
  %t519 = load { i64, [1 x i64] }, ptr %t518
  %t522 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t517, { i64, [1 x i64] } %t519)
  store i1 %t522, ptr %l292
  br label %bb87
bb87:
  %t523 = load i1, ptr %l292, !tbaa !21
  %t524 = xor i1 %t523, true
  br i1 %t524, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s17
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t528 = getelementptr %"compiler/emit:fnEm", ptr %t526, i32 0, i32 3
  %t529 = load i64, ptr %l21, !tbaa !24
  %t530 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t531 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t533 = call i64 @__olang_fmt_i64(ptr null, i64 %t529)
  %t534 = add i64 %t531, %t533
  %t535 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t536 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t537 = add i64 %t534, %t536
  %t538 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t537)
  call void @olang_textcopy(ptr %t538, ptr %t530, i64 %t531)
  %t539 = getelementptr i8, ptr %t538, i64 %t531
  %t540 = call i64 @__olang_fmt_i64(ptr %t539, i64 %t529)
  %t541 = getelementptr i8, ptr %t539, i64 %t533
  call void @olang_textcopy(ptr %t541, ptr %t535, i64 %t536)
  %t542 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t543 = insertvalue { i64, ptr } %t542, ptr %t538, 1
  %t545 = extractvalue { i64, ptr } %t543, 0
  %t546 = extractvalue { i64, ptr } %t543, 1
  %t547 = mul i64 %t545, 1
  %t548 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t547)
  call void @llvm.memcpy.p0.p0.i64(ptr %t548, ptr %t546, i64 %t547, i1 false)
  %t549 = insertvalue { i64, ptr } undef, i64 %t545, 0
  %t550 = insertvalue { i64, ptr } %t549, ptr %t548, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s17, ptr %t528, { i64, ptr } %t550)
  br label %bb90
bb89:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 2
  %t555 = load i32, ptr %t554, !tbaa !23
  %t558 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t553, i32 %t555)
  store i64 %t558, ptr %l309
  br label %bb98
bb90:
  %t559 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 3
  %t560 = load i32, ptr %t559, !range !{i32 0, i32 4}
  %t562 = trunc i64 2 to i32
  %t563 = icmp eq i32 %t560, %t562
  %t565 = xor i1 %t563, true
  br i1 %t565, label %bb91, label %bb92
bb91:
  %t567 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 3
  %t568 = load i32, ptr %t567, !range !{i32 0, i32 4}
  %t570 = trunc i64 3 to i32
  %t571 = icmp eq i32 %t568, %t570
  %t573 = xor i1 %t571, true
  store i1 %t573, ptr %l302, !tbaa !21
  br label %bb93
bb92:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb93
bb93:
  %t575 = load i1, ptr %l302, !tbaa !21
  br i1 %t575, label %bb94, label %bb95
bb94:
  store %olang.scope zeroinitializer, ptr %s19
  %t576 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s19, ptr %t576, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d172, i32 0, i32 1) })
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_scope_close(ptr %s19)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s17)
  br label %bb110
bb98:
  %t578 = load i64, ptr %l309, !tbaa !24
  %t579 = icmp sgt i64 %t578, 65536
  br i1 %t579, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s21
  %t581 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebigArena(ptr %v0, ptr %t581)
  br label %bb101
bb100:
  store %olang.scope zeroinitializer, ptr %s23
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t585 = getelementptr %"compiler/emit:fnEm", ptr %t583, i32 0, i32 3
  %t586 = load i64, ptr %l21, !tbaa !24
  %t587 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t588 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t589 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t591 = call i64 @__olang_fmt_i64(ptr null, i64 %t586)
  %t592 = add i64 %t589, %t591
  %t593 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t594 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t595 = add i64 %t592, %t594
  %t597 = extractvalue { i64, ptr } %t587, 1
  %t598 = extractvalue { i64, ptr } %t587, 0
  %t599 = add i64 %t595, %t598
  %t600 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t601 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t602 = add i64 %t599, %t601
  %t603 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t602)
  call void @olang_textcopy(ptr %t603, ptr %t588, i64 %t589)
  %t604 = getelementptr i8, ptr %t603, i64 %t589
  %t605 = call i64 @__olang_fmt_i64(ptr %t604, i64 %t586)
  %t606 = getelementptr i8, ptr %t604, i64 %t591
  call void @olang_textcopy(ptr %t606, ptr %t593, i64 %t594)
  %t607 = getelementptr i8, ptr %t606, i64 %t594
  call void @olang_textcopy(ptr %t607, ptr %t597, i64 %t598)
  %t608 = getelementptr i8, ptr %t607, i64 %t598
  call void @olang_textcopy(ptr %t608, ptr %t600, i64 %t601)
  %t609 = insertvalue { i64, ptr } undef, i64 %t602, 0
  %t610 = insertvalue { i64, ptr } %t609, ptr %t603, 1
  %t612 = extractvalue { i64, ptr } %t610, 0
  %t613 = extractvalue { i64, ptr } %t610, 1
  %t614 = mul i64 %t612, 1
  %t615 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t614)
  call void @llvm.memcpy.p0.p0.i64(ptr %t615, ptr %t613, i64 %t614, i1 false)
  %t616 = insertvalue { i64, ptr } undef, i64 %t612, 0
  %t617 = insertvalue { i64, ptr } %t616, ptr %t615, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s23, ptr %t585, { i64, ptr } %t617)
  br label %bb108
bb101:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t621 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 2
  %t622 = load i32, ptr %t621, !tbaa !23
  %t625 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %t620, i32 %t622)
  store i64 %t625, ptr %l314
  br label %bb102
bb102:
  %t626 = load i64, ptr %l314, !tbaa !24
  store i64 %t626, ptr %l24, !tbaa !24
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t629 = getelementptr %"compiler/emit:fnEm", ptr %t627, i32 0, i32 4
  store ptr %t629, ptr %l316, !tbaa !29
  %t630 = load i64, ptr %l21, !tbaa !24
  store i64 %t630, ptr %l317, !tbaa !24
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t632 = getelementptr %"compiler/mir:Local", ptr %l22, i32 0, i32 2
  %t633 = load i32, ptr %t632, !tbaa !23
  %t636 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t631, i32 %t633)
  store i64 %t636, ptr %l320
  br label %bb103
bb103:
  %t637 = load i64, ptr %l24, !tbaa !24
  %t639 = icmp sgt i64 %t637, 8
  br i1 %t639, label %bb104, label %bb105
bb104:
  %t641 = load i64, ptr %l24, !tbaa !24
  store i64 %t641, ptr %l323, !tbaa !24
  br label %bb106
bb105:
  store i64 8, ptr %l323, !tbaa !24
  br label %bb106
bb106:
  %t643 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t644 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  %t645 = load i64, ptr %l317, !tbaa !24
  %t646 = call i64 @__olang_fmt_i64(ptr null, i64 %t645)
  %t647 = add i64 %t644, %t646
  %t648 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t649 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t650 = add i64 %t647, %t649
  %t651 = load i64, ptr %l320, !tbaa !24
  %t652 = call i64 @__olang_fmt_i64(ptr null, i64 %t651)
  %t653 = add i64 %t650, %t652
  %t654 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t655 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t656 = add i64 %t653, %t655
  %t657 = load i64, ptr %l323, !tbaa !24
  %t658 = call i64 @__olang_fmt_i64(ptr null, i64 %t657)
  %t659 = add i64 %t656, %t658
  %t660 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t661 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t662 = add i64 %t659, %t661
  %t663 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t662)
  call void @olang_textcopy(ptr %t663, ptr %t643, i64 %t644)
  %t664 = getelementptr i8, ptr %t663, i64 %t644
  %t665 = call i64 @__olang_fmt_i64(ptr %t664, i64 %t645)
  %t666 = getelementptr i8, ptr %t664, i64 %t646
  call void @olang_textcopy(ptr %t666, ptr %t648, i64 %t649)
  %t667 = getelementptr i8, ptr %t666, i64 %t649
  %t668 = call i64 @__olang_fmt_i64(ptr %t667, i64 %t651)
  %t669 = getelementptr i8, ptr %t667, i64 %t652
  call void @olang_textcopy(ptr %t669, ptr %t654, i64 %t655)
  %t670 = getelementptr i8, ptr %t669, i64 %t655
  %t671 = call i64 @__olang_fmt_i64(ptr %t670, i64 %t657)
  %t672 = getelementptr i8, ptr %t670, i64 %t658
  call void @olang_textcopy(ptr %t672, ptr %t660, i64 %t661)
  %t673 = insertvalue { i64, ptr } undef, i64 %t662, 0
  %t674 = insertvalue { i64, ptr } %t673, ptr %t663, 1
  %t676 = extractvalue { i64, ptr } %t674, 0
  %t677 = extractvalue { i64, ptr } %t674, 1
  %t678 = mul i64 %t676, 1
  %t679 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t678)
  call void @llvm.memcpy.p0.p0.i64(ptr %t679, ptr %t677, i64 %t678, i1 false)
  %t680 = insertvalue { i64, ptr } undef, i64 %t676, 0
  %t681 = insertvalue { i64, ptr } %t680, ptr %t679, 1
  %t682 = load ptr, ptr %l316, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s21, ptr %t682, { i64, ptr } %t681)
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s21)
  br label %bb109
bb108:
  call void @__olang_scope_close(ptr %s23)
  br label %bb109
bb109:
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s15)
  br label %bb111
bb111:
  %t684 = load i64, ptr %l20, !tbaa !24
  %t686 = add i64 %t684, 1
  store i64 %t686, ptr %l20, !tbaa !24
  br label %bb75
bb112:
  %t688 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindDirect(ptr %v0, ptr %t688)
  br label %bb113
bb113:
  %t690 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindIdle(ptr %v0, ptr %t690)
  br label %bb114
bb114:
  %t692 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindWalks(ptr %v0, ptr %t692)
  br label %bb115
bb115:
  store i64 0, ptr %l25, !tbaa !24
  %t694 = load ptr, ptr %l1, !tbaa !29
  %t696 = getelementptr %"compiler/mir:Fn", ptr %t694, i32 0, i32 8
  %t698 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t696)
  store i64 %t698, ptr %l340
  br label %bb116
bb116:
  %t699 = load i64, ptr %l340, !tbaa !24
  store i64 %t699, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t700 = load i64, ptr %l26, !tbaa !24
  %t701 = load i64, ptr %l25, !tbaa !24
  %t704 = icmp sgt i64 %t700, %t701
  br i1 %t704, label %bb117, label %bb118
bb117:
  %t706 = load i64, ptr %l27, !tbaa !24
  %t708 = icmp sgt i64 %t706, 0
  br i1 %t708, label %bb119, label %bb120
bb118:
  store i64 0, ptr %l344, !tbaa !24
  br label %bb122
bb119:
  %t710 = load i64, ptr %l26, !tbaa !24
  %t711 = load i64, ptr %l25, !tbaa !24
  %t714 = sub i64 %t710, %t711
  %t715 = load i64, ptr %l27, !tbaa !24
  %t718 = add i64 %t714, %t715
  %t720 = sub i64 %t718, 1
  %t721 = load i64, ptr %l27, !tbaa !24
  %t724 = sdiv i64 %t720, %t721
  store i64 %t724, ptr %l347, !tbaa !24
  br label %bb121
bb120:
  store i64 0, ptr %l347, !tbaa !24
  br label %bb121
bb121:
  %t726 = load i64, ptr %l347, !tbaa !24
  store i64 %t726, ptr %l344, !tbaa !24
  br label %bb122
bb122:
  %t727 = load i64, ptr %l344, !tbaa !24
  store i64 %t727, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb123
bb123:
  %t728 = load i64, ptr %l29, !tbaa !24
  %t729 = load i64, ptr %l28, !tbaa !24
  %t732 = icmp slt i64 %t728, %t729
  %t734 = xor i1 %t732, true
  br i1 %t734, label %bb124, label %bb125
bb124:
  br label %bb151
bb125:
  br label %bb126
bb126:
  %t736 = load i64, ptr %l25, !tbaa !24
  %t737 = load i64, ptr %l29, !tbaa !24
  %t738 = load i64, ptr %l27, !tbaa !24
  %t741 = mul i64 %t737, %t738
  %t744 = add i64 %t736, %t741
  store i64 %t744, ptr %l30, !tbaa !24
  %t746 = load ptr, ptr %l0, !tbaa !29
  %t748 = getelementptr %"compiler/emit:fnEm", ptr %t746, i32 0, i32 24
  %t749 = load i64, ptr %l30, !tbaa !24
  %t752 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t748, i64 %t749)
  store i1 %t752, ptr %l368
  br label %bb127
bb127:
  %t753 = load i1, ptr %l368, !tbaa !21
  br i1 %t753, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l369, !tbaa !21
  br label %bb131
bb129:
  %t754 = load ptr, ptr %l0, !tbaa !29
  %t756 = getelementptr %"compiler/emit:fnEm", ptr %t754, i32 0, i32 25
  %t757 = load i64, ptr %l30, !tbaa !24
  %t760 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t756, i64 %t757)
  store i1 %t760, ptr %l373
  br label %bb130
bb130:
  %t761 = load i1, ptr %l373, !tbaa !21
  store i1 %t761, ptr %l369, !tbaa !21
  br label %bb131
bb131:
  %t762 = load i1, ptr %l369, !tbaa !21
  br i1 %t762, label %bb132, label %bb133
bb132:
  br label %bb150
bb133:
  br label %bb134
bb134:
  %t763 = load ptr, ptr %l1, !tbaa !29
  %t765 = getelementptr %"compiler/mir:Fn", ptr %t763, i32 0, i32 8
  %t766 = load i64, ptr %l30, !tbaa !24
  %t769 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t765, i64 %t766)
  store %"compiler/mir:ScopeInfo" %t769, ptr %l377
  br label %bb135
bb135:
  %t770 = getelementptr %"compiler/mir:ScopeInfo", ptr %l377, i32 0, i32 0
  %t771 = load i32, ptr %t770, !range !{i32 0, i32 7}
  %t773 = trunc i64 6 to i32
  %t774 = icmp eq i32 %t771, %t773
  br i1 %t774, label %bb136, label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s29
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t778 = getelementptr %"compiler/emit:fnEm", ptr %t776, i32 0, i32 3
  %t779 = load i64, ptr %l30, !tbaa !24
  %t780 = load i64, ptr %l30, !tbaa !24
  %t781 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t782 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t784 = call i64 @__olang_fmt_i64(ptr null, i64 %t779)
  %t785 = add i64 %t782, %t784
  %t786 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t787 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t788 = add i64 %t785, %t787
  %t790 = call i64 @__olang_fmt_i64(ptr null, i64 %t780)
  %t791 = add i64 %t788, %t790
  %t792 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t793 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t794 = add i64 %t791, %t793
  %t795 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t794)
  call void @olang_textcopy(ptr %t795, ptr %t781, i64 %t782)
  %t796 = getelementptr i8, ptr %t795, i64 %t782
  %t797 = call i64 @__olang_fmt_i64(ptr %t796, i64 %t779)
  %t798 = getelementptr i8, ptr %t796, i64 %t784
  call void @olang_textcopy(ptr %t798, ptr %t786, i64 %t787)
  %t799 = getelementptr i8, ptr %t798, i64 %t787
  %t800 = call i64 @__olang_fmt_i64(ptr %t799, i64 %t780)
  %t801 = getelementptr i8, ptr %t799, i64 %t790
  call void @olang_textcopy(ptr %t801, ptr %t792, i64 %t793)
  %t802 = insertvalue { i64, ptr } undef, i64 %t794, 0
  %t803 = insertvalue { i64, ptr } %t802, ptr %t795, 1
  %t805 = extractvalue { i64, ptr } %t803, 0
  %t806 = extractvalue { i64, ptr } %t803, 1
  %t807 = mul i64 %t805, 1
  %t808 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t807)
  call void @llvm.memcpy.p0.p0.i64(ptr %t808, ptr %t806, i64 %t807, i1 false)
  %t809 = insertvalue { i64, ptr } undef, i64 %t805, 0
  %t810 = insertvalue { i64, ptr } %t809, ptr %t808, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s29, ptr %t778, { i64, ptr } %t810)
  br label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s31
  %t813 = load ptr, ptr %l0, !tbaa !29
  %t815 = getelementptr %"compiler/emit:fnEm", ptr %t813, i32 0, i32 3
  %t816 = load i64, ptr %l30, !tbaa !24
  %t817 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t818 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t820 = call i64 @__olang_fmt_i64(ptr null, i64 %t816)
  %t821 = add i64 %t818, %t820
  %t822 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t823 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t824 = add i64 %t821, %t823
  %t825 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t824)
  call void @olang_textcopy(ptr %t825, ptr %t817, i64 %t818)
  %t826 = getelementptr i8, ptr %t825, i64 %t818
  %t827 = call i64 @__olang_fmt_i64(ptr %t826, i64 %t816)
  %t828 = getelementptr i8, ptr %t826, i64 %t820
  call void @olang_textcopy(ptr %t828, ptr %t822, i64 %t823)
  %t829 = insertvalue { i64, ptr } undef, i64 %t824, 0
  %t830 = insertvalue { i64, ptr } %t829, ptr %t825, 1
  %t832 = extractvalue { i64, ptr } %t830, 0
  %t833 = extractvalue { i64, ptr } %t830, 1
  %t834 = mul i64 %t832, 1
  %t835 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t834)
  call void @llvm.memcpy.p0.p0.i64(ptr %t835, ptr %t833, i64 %t834, i1 false)
  %t836 = insertvalue { i64, ptr } undef, i64 %t832, 0
  %t837 = insertvalue { i64, ptr } %t836, ptr %t835, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s31, ptr %t815, { i64, ptr } %t837)
  br label %bb139
bb138:
  call void @__olang_scope_close(ptr %s29)
  br label %bb149
bb139:
  %t840 = load ptr, ptr %l1, !tbaa !29
  %t842 = getelementptr %"compiler/mir:Fn", ptr %t840, i32 0, i32 8
  %t843 = load i64, ptr %l30, !tbaa !24
  %t846 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t842, i64 %t843)
  store %"compiler/mir:ScopeInfo" %t846, ptr %l394
  br label %bb140
bb140:
  %t847 = getelementptr %"compiler/mir:ScopeInfo", ptr %l394, i32 0, i32 0
  %t848 = load i32, ptr %t847, !range !{i32 0, i32 7}
  %t850 = trunc i64 3 to i32
  %t851 = icmp eq i32 %t848, %t850
  br i1 %t851, label %bb141, label %bb142
bb141:
  store %olang.scope zeroinitializer, ptr %s33
  %t853 = load ptr, ptr %l0, !tbaa !29
  %t855 = getelementptr %"compiler/emit:fnEm", ptr %t853, i32 0, i32 3
  %t856 = load i64, ptr %l30, !tbaa !24
  %t857 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t858 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t860 = call i64 @__olang_fmt_i64(ptr null, i64 %t856)
  %t861 = add i64 %t858, %t860
  %t862 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t863 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t864 = add i64 %t861, %t863
  %t865 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t864)
  call void @olang_textcopy(ptr %t865, ptr %t857, i64 %t858)
  %t866 = getelementptr i8, ptr %t865, i64 %t858
  %t867 = call i64 @__olang_fmt_i64(ptr %t866, i64 %t856)
  %t868 = getelementptr i8, ptr %t866, i64 %t860
  call void @olang_textcopy(ptr %t868, ptr %t862, i64 %t863)
  %t869 = insertvalue { i64, ptr } undef, i64 %t864, 0
  %t870 = insertvalue { i64, ptr } %t869, ptr %t865, 1
  %t872 = extractvalue { i64, ptr } %t870, 0
  %t873 = extractvalue { i64, ptr } %t870, 1
  %t874 = mul i64 %t872, 1
  %t875 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t874)
  call void @llvm.memcpy.p0.p0.i64(ptr %t875, ptr %t873, i64 %t874, i1 false)
  %t876 = insertvalue { i64, ptr } undef, i64 %t872, 0
  %t877 = insertvalue { i64, ptr } %t876, ptr %t875, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s33, ptr %t855, { i64, ptr } %t877)
  br label %bb143
bb142:
  br label %bb144
bb143:
  call void @__olang_scope_close(ptr %s33)
  br label %bb144
bb144:
  %t880 = load ptr, ptr %l0, !tbaa !29
  %t882 = getelementptr %"compiler/emit:fnEm", ptr %t880, i32 0, i32 0
  %t883 = load ptr, ptr %t882, !tbaa !29
  %t885 = getelementptr %"compiler/emit:Emitter", ptr %t883, i32 0, i32 4
  %t886 = load i1, ptr %t885, !tbaa !21
  br i1 %t886, label %bb145, label %bb146
bb145:
  store %olang.scope zeroinitializer, ptr %s35
  %t888 = load ptr, ptr %l0, !tbaa !29
  %t890 = getelementptr %"compiler/emit:fnEm", ptr %t888, i32 0, i32 3
  %t891 = load i64, ptr %l30, !tbaa !24
  %t892 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t893 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t895 = call i64 @__olang_fmt_i64(ptr null, i64 %t891)
  %t896 = add i64 %t893, %t895
  %t897 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t898 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t899 = add i64 %t896, %t898
  %t900 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t899)
  call void @olang_textcopy(ptr %t900, ptr %t892, i64 %t893)
  %t901 = getelementptr i8, ptr %t900, i64 %t893
  %t902 = call i64 @__olang_fmt_i64(ptr %t901, i64 %t891)
  %t903 = getelementptr i8, ptr %t901, i64 %t895
  call void @olang_textcopy(ptr %t903, ptr %t897, i64 %t898)
  %t904 = insertvalue { i64, ptr } undef, i64 %t899, 0
  %t905 = insertvalue { i64, ptr } %t904, ptr %t900, 1
  %t907 = extractvalue { i64, ptr } %t905, 0
  %t908 = extractvalue { i64, ptr } %t905, 1
  %t909 = mul i64 %t907, 1
  %t910 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t909)
  call void @llvm.memcpy.p0.p0.i64(ptr %t910, ptr %t908, i64 %t909, i1 false)
  %t911 = insertvalue { i64, ptr } undef, i64 %t907, 0
  %t912 = insertvalue { i64, ptr } %t911, ptr %t910, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s35, ptr %t890, { i64, ptr } %t912)
  br label %bb147
bb146:
  br label %bb148
bb147:
  call void @__olang_scope_close(ptr %s35)
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s31)
  br label %bb149
bb149:
  br label %bb150
bb150:
  %t915 = load i64, ptr %l29, !tbaa !24
  %t917 = add i64 %t915, 1
  store i64 %t917, ptr %l29, !tbaa !24
  br label %bb123
bb151:
  %t919 = load ptr, ptr %l0, !tbaa !29
  %t921 = getelementptr %"compiler/emit:fnEm", ptr %t919, i32 0, i32 31
  %t923 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t921)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t923, ptr %l414
  br label %bb152
bb152:
  %t924 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l414
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t924, ptr %l31
  br label %bb153
bb153:
  store %olang.scope zeroinitializer, ptr %s39
  %t926 = call { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %l31)
  %t927 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t926, 1
  %t928 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t926, 0
  store i32 %t928, ptr %l418
  %t929 = icmp ne i32 %t928, 0
  br i1 %t929, label %bb155, label %ok.930, !prof !99
ok.930:
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t927, ptr %l417
  br label %bb154
bb154:
  %t931 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l417
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t931, ptr %l415
  br label %bb157
bb155:
  %t932 = load i32, ptr %l418, !tbaa !23
  %t933 = ashr i32 %t932, 16
  %t935 = icmp eq i32 %t933, 1
  store i1 %t935, ptr %l420, !tbaa !21
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s39)
  br label %bb160
bb157:
  %t936 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l415
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t936, ptr %l32
  %t937 = load ptr, ptr %l0, !tbaa !29
  %t939 = getelementptr %"compiler/emit:fnEm", ptr %t937, i32 0, i32 3
  %t940 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l32, i32 0, i32 0
  %t941 = load i64, ptr %t940, !tbaa !24
  %t942 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l32, i32 0, i32 0
  %t943 = load i64, ptr %t942, !tbaa !24
  %t944 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l32, i32 0, i32 0
  %t945 = load i64, ptr %t944, !tbaa !24
  %t946 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t947 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t949 = call i64 @__olang_fmt_i64(ptr null, i64 %t941)
  %t950 = add i64 %t947, %t949
  %t951 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t952 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t953 = add i64 %t950, %t952
  %t955 = call i64 @__olang_fmt_i64(ptr null, i64 %t943)
  %t956 = add i64 %t953, %t955
  %t957 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t958 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t959 = add i64 %t956, %t958
  %t961 = call i64 @__olang_fmt_i64(ptr null, i64 %t945)
  %t962 = add i64 %t959, %t961
  %t963 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t964 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t965 = add i64 %t962, %t964
  %t966 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t965)
  call void @olang_textcopy(ptr %t966, ptr %t946, i64 %t947)
  %t967 = getelementptr i8, ptr %t966, i64 %t947
  %t968 = call i64 @__olang_fmt_i64(ptr %t967, i64 %t941)
  %t969 = getelementptr i8, ptr %t967, i64 %t949
  call void @olang_textcopy(ptr %t969, ptr %t951, i64 %t952)
  %t970 = getelementptr i8, ptr %t969, i64 %t952
  %t971 = call i64 @__olang_fmt_i64(ptr %t970, i64 %t943)
  %t972 = getelementptr i8, ptr %t970, i64 %t955
  call void @olang_textcopy(ptr %t972, ptr %t957, i64 %t958)
  %t973 = getelementptr i8, ptr %t972, i64 %t958
  %t974 = call i64 @__olang_fmt_i64(ptr %t973, i64 %t945)
  %t975 = getelementptr i8, ptr %t973, i64 %t961
  call void @olang_textcopy(ptr %t975, ptr %t963, i64 %t964)
  %t976 = insertvalue { i64, ptr } undef, i64 %t965, 0
  %t977 = insertvalue { i64, ptr } %t976, ptr %t966, 1
  %t979 = extractvalue { i64, ptr } %t977, 0
  %t980 = extractvalue { i64, ptr } %t977, 1
  %t981 = mul i64 %t979, 1
  %t982 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t981)
  call void @llvm.memcpy.p0.p0.i64(ptr %t982, ptr %t980, i64 %t981, i1 false)
  %t983 = insertvalue { i64, ptr } undef, i64 %t979, 0
  %t984 = insertvalue { i64, ptr } %t983, ptr %t982, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s39, ptr %t939, { i64, ptr } %t984)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s39)
  br label %bb159
bb159:
  br label %bb153
bb160:
  %t987 = load ptr, ptr %l2, !tbaa !29
  %t988 = load ptr, ptr %l1, !tbaa !29
  %t990 = getelementptr %"compiler/mir:Fn", ptr %t988, i32 0, i32 1
  %t991 = load i32, ptr %t990, !tbaa !23
  %t993 = inttoptr i64 0 to ptr
  %t996 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t993, ptr %t987, i32 %t991)
  store { i64, ptr } %t996, ptr %l432
  br label %bb161
bb161:
  %t997 = load { i64, ptr }, ptr %l432, !tbaa !27
  store { i64, ptr } %t997, ptr %l33, !tbaa !27
  %t998 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t1000 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t998, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d193, i32 0, i32 1) })
  store i1 %t1000, ptr %l434
  br label %bb162
bb162:
  %t1001 = load i1, ptr %l434, !tbaa !21
  %t1002 = xor i1 %t1001, true
  br i1 %t1002, label %bb163, label %bb164
bb163:
  %t1004 = load ptr, ptr %l0, !tbaa !29
  %t1006 = getelementptr %"compiler/emit:fnEm", ptr %t1004, i32 0, i32 28
  %t1007 = load i1, ptr %t1006, !tbaa !21
  %t1009 = xor i1 %t1007, true
  store i1 %t1009, ptr %l436, !tbaa !21
  br label %bb165
bb164:
  store i1 false, ptr %l436, !tbaa !21
  br label %bb165
bb165:
  %t1011 = load i1, ptr %l436, !tbaa !21
  br i1 %t1011, label %bb166, label %bb167
bb166:
  store %olang.scope zeroinitializer, ptr %s41
  %t1012 = load ptr, ptr %l0, !tbaa !29
  %t1014 = getelementptr %"compiler/emit:fnEm", ptr %t1012, i32 0, i32 3
  %t1015 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t1016 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t1017 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t1019 = extractvalue { i64, ptr } %t1015, 1
  %t1020 = extractvalue { i64, ptr } %t1015, 0
  %t1021 = add i64 %t1017, %t1020
  %t1022 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t1023 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t1024 = add i64 %t1021, %t1023
  %t1025 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1024)
  call void @olang_textcopy(ptr %t1025, ptr %t1016, i64 %t1017)
  %t1026 = getelementptr i8, ptr %t1025, i64 %t1017
  call void @olang_textcopy(ptr %t1026, ptr %t1019, i64 %t1020)
  %t1027 = getelementptr i8, ptr %t1026, i64 %t1020
  call void @olang_textcopy(ptr %t1027, ptr %t1022, i64 %t1023)
  %t1028 = insertvalue { i64, ptr } undef, i64 %t1024, 0
  %t1029 = insertvalue { i64, ptr } %t1028, ptr %t1025, 1
  %t1031 = extractvalue { i64, ptr } %t1029, 0
  %t1032 = extractvalue { i64, ptr } %t1029, 1
  %t1033 = mul i64 %t1031, 1
  %t1034 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1033)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1034, ptr %t1032, i64 %t1033, i1 false)
  %t1035 = insertvalue { i64, ptr } undef, i64 %t1031, 0
  %t1036 = insertvalue { i64, ptr } %t1035, ptr %t1034, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s41, ptr %t1014, { i64, ptr } %t1036)
  br label %bb168
bb167:
  br label %bb169
bb168:
  call void @__olang_scope_close(ptr %s41)
  br label %bb169
bb169:
  %t1039 = load ptr, ptr %l2, !tbaa !29
  %t1040 = load ptr, ptr %l1, !tbaa !29
  %t1042 = getelementptr %"compiler/mir:Fn", ptr %t1040, i32 0, i32 1
  %t1043 = load i32, ptr %t1042, !tbaa !23
  %t1046 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t1039, i32 %t1043)
  store { i64, ptr } %t1046, ptr %l448
  br label %bb170
bb170:
  %t1047 = load { i64, ptr }, ptr %l448, !tbaa !27
  store { i64, ptr } %t1047, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t1048 = load ptr, ptr %l1, !tbaa !29
  %t1050 = getelementptr %"compiler/mir:Fn", ptr %t1048, i32 0, i32 4
  %t1052 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1050)
  store i64 %t1052, ptr %l451
  br label %bb171
bb171:
  %t1053 = load i64, ptr %l451, !tbaa !24
  store i64 %t1053, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t1054 = load i64, ptr %l36, !tbaa !24
  %t1055 = load i64, ptr %l35, !tbaa !24
  %t1058 = icmp sgt i64 %t1054, %t1055
  br i1 %t1058, label %bb172, label %bb173
bb172:
  %t1060 = load i64, ptr %l37, !tbaa !24
  %t1062 = icmp sgt i64 %t1060, 0
  br i1 %t1062, label %bb174, label %bb175
bb173:
  store i64 0, ptr %l455, !tbaa !24
  br label %bb177
bb174:
  %t1064 = load i64, ptr %l36, !tbaa !24
  %t1065 = load i64, ptr %l35, !tbaa !24
  %t1068 = sub i64 %t1064, %t1065
  %t1069 = load i64, ptr %l37, !tbaa !24
  %t1072 = add i64 %t1068, %t1069
  %t1074 = sub i64 %t1072, 1
  %t1075 = load i64, ptr %l37, !tbaa !24
  %t1078 = sdiv i64 %t1074, %t1075
  store i64 %t1078, ptr %l458, !tbaa !24
  br label %bb176
bb175:
  store i64 0, ptr %l458, !tbaa !24
  br label %bb176
bb176:
  %t1080 = load i64, ptr %l458, !tbaa !24
  store i64 %t1080, ptr %l455, !tbaa !24
  br label %bb177
bb177:
  %t1081 = load i64, ptr %l455, !tbaa !24
  store i64 %t1081, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb178
bb178:
  %t1082 = load i64, ptr %l39, !tbaa !24
  %t1083 = load i64, ptr %l38, !tbaa !24
  %t1086 = icmp slt i64 %t1082, %t1083
  %t1088 = xor i1 %t1086, true
  br i1 %t1088, label %bb179, label %bb180
bb179:
  br label %bb212
bb180:
  br label %bb181
bb181:
  %t1090 = load i64, ptr %l35, !tbaa !24
  %t1091 = load i64, ptr %l39, !tbaa !24
  %t1092 = load i64, ptr %l37, !tbaa !24
  %t1095 = mul i64 %t1091, %t1092
  %t1098 = add i64 %t1090, %t1095
  store i64 %t1098, ptr %l40, !tbaa !24
  %t1100 = load ptr, ptr %l1, !tbaa !29
  %t1102 = getelementptr %"compiler/mir:Fn", ptr %t1100, i32 0, i32 4
  %t1103 = load i64, ptr %l40, !tbaa !24
  %t1106 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1102, i64 %t1103)
  store i32 %t1106, ptr %l479
  br label %bb182
bb182:
  %t1107 = load i32, ptr %l479, !tbaa !23
  %t1108 = sext i32 %t1107 to i64
  store i64 %t1108, ptr %l41, !tbaa !24
  %t1110 = load ptr, ptr %l1, !tbaa !29
  %t1112 = getelementptr %"compiler/mir:Fn", ptr %t1110, i32 0, i32 7
  %t1113 = load i64, ptr %l41, !tbaa !24
  %t1116 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t1112, i64 %t1113)
  store %"compiler/mir:Local" %t1116, ptr %l484
  br label %bb183
bb183:
  %t1117 = getelementptr %"compiler/mir:Local", ptr %l484, i32 0, i32 2
  %t1118 = load i32, ptr %t1117, !tbaa !23
  store i32 %t1118, ptr %l42, !tbaa !23
  %t1120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1120, ptr %l486, !tbaa !29
  %t1121 = load ptr, ptr %l1, !tbaa !29
  %t1123 = getelementptr %"compiler/mir:Fn", ptr %t1121, i32 0, i32 7
  %t1124 = load i64, ptr %l41, !tbaa !24
  %t1127 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t1123, i64 %t1124)
  store %"compiler/mir:Local" %t1127, ptr %l490
  br label %bb184
bb184:
  %t1128 = getelementptr %"compiler/mir:Local", ptr %l490, i32 0, i32 4
  %t1129 = load { i64, [1 x i64] }, ptr %t1128
  %t1130 = load ptr, ptr %l486, !tbaa !29
  %t1132 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t1130, { i64, [1 x i64] } %t1129)
  store i1 %t1132, ptr %l492
  br label %bb185
bb185:
  %t1133 = load i1, ptr %l492, !tbaa !21
  %t1134 = xor i1 %t1133, true
  br i1 %t1134, label %bb186, label %bb187
bb186:
  store %olang.scope zeroinitializer, ptr %s45
  %t1136 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s45, ptr %t1136, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d196, i32 0, i32 1) })
  br label %bb188
bb187:
  br label %bb189
bb188:
  call void @__olang_scope_close(ptr %s45)
  br label %bb189
bb189:
  %t1138 = load i64, ptr %l40, !tbaa !24
  %t1140 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t1141 = load ptr, ptr %t1140, !tbaa !27
  %t1142 = getelementptr i8, ptr %t1141, i64 %t1138
  %t1143 = load i8, ptr %t1142, !tbaa !32
  store i8 %t1143, ptr %l43, !tbaa !22
  %t1145 = load i8, ptr %l43, !tbaa !22
  %t1147 = icmp eq i8 %t1145, 109
  br i1 %t1147, label %bb190, label %bb191
bb190:
  br label %bb192
bb191:
  br label %bb196
bb192:
  store %olang.scope zeroinitializer, ptr %s46
  %t1149 = load ptr, ptr %l0, !tbaa !29
  %t1151 = getelementptr %"compiler/emit:fnEm", ptr %t1149, i32 0, i32 0
  %t1152 = load ptr, ptr %t1151, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s46, ptr %s46, ptr %t1152, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d197, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d198, i32 0, i32 1) })
  br label %bb193
bb193:
  %t1154 = load ptr, ptr %l0, !tbaa !29
  %t1156 = getelementptr %"compiler/emit:fnEm", ptr %t1154, i32 0, i32 4
  store ptr %t1156, ptr %l502, !tbaa !29
  %t1157 = load i64, ptr %l41, !tbaa !24
  store i64 %t1157, ptr %l503, !tbaa !24
  %t1158 = load i64, ptr %l40, !tbaa !24
  store i64 %t1158, ptr %l504, !tbaa !24
  %t1159 = load ptr, ptr %l0, !tbaa !29
  %t1160 = load i32, ptr %l42, !tbaa !23
  %t1163 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1159, i32 %t1160)
  store i64 %t1163, ptr %l507
  br label %bb194
bb194:
  %t1164 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t1165 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t1166 = load i64, ptr %l503, !tbaa !24
  %t1167 = call i64 @__olang_fmt_i64(ptr null, i64 %t1166)
  %t1168 = add i64 %t1165, %t1167
  %t1169 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t1170 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t1171 = add i64 %t1168, %t1170
  %t1172 = load i64, ptr %l504, !tbaa !24
  %t1173 = call i64 @__olang_fmt_i64(ptr null, i64 %t1172)
  %t1174 = add i64 %t1171, %t1173
  %t1175 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t1176 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t1177 = add i64 %t1174, %t1176
  %t1178 = load i64, ptr %l507, !tbaa !24
  %t1179 = call i64 @__olang_fmt_i64(ptr null, i64 %t1178)
  %t1180 = add i64 %t1177, %t1179
  %t1181 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t1182 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t1183 = add i64 %t1180, %t1182
  %t1184 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1183)
  call void @olang_textcopy(ptr %t1184, ptr %t1164, i64 %t1165)
  %t1185 = getelementptr i8, ptr %t1184, i64 %t1165
  %t1186 = call i64 @__olang_fmt_i64(ptr %t1185, i64 %t1166)
  %t1187 = getelementptr i8, ptr %t1185, i64 %t1167
  call void @olang_textcopy(ptr %t1187, ptr %t1169, i64 %t1170)
  %t1188 = getelementptr i8, ptr %t1187, i64 %t1170
  %t1189 = call i64 @__olang_fmt_i64(ptr %t1188, i64 %t1172)
  %t1190 = getelementptr i8, ptr %t1188, i64 %t1173
  call void @olang_textcopy(ptr %t1190, ptr %t1175, i64 %t1176)
  %t1191 = getelementptr i8, ptr %t1190, i64 %t1176
  %t1192 = call i64 @__olang_fmt_i64(ptr %t1191, i64 %t1178)
  %t1193 = getelementptr i8, ptr %t1191, i64 %t1179
  call void @olang_textcopy(ptr %t1193, ptr %t1181, i64 %t1182)
  %t1194 = insertvalue { i64, ptr } undef, i64 %t1183, 0
  %t1195 = insertvalue { i64, ptr } %t1194, ptr %t1184, 1
  %t1197 = extractvalue { i64, ptr } %t1195, 0
  %t1198 = extractvalue { i64, ptr } %t1195, 1
  %t1199 = mul i64 %t1197, 1
  %t1200 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1200, ptr %t1198, i64 %t1199, i1 false)
  %t1201 = insertvalue { i64, ptr } undef, i64 %t1197, 0
  %t1202 = insertvalue { i64, ptr } %t1201, ptr %t1200, 1
  %t1203 = load ptr, ptr %l502, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s46, ptr %t1203, { i64, ptr } %t1202)
  br label %bb195
bb195:
  call void @__olang_scope_close(ptr %s46)
  br label %bb210
bb196:
  %t1205 = load i8, ptr %l43, !tbaa !22
  %t1207 = icmp eq i8 %t1205, 115
  br i1 %t1207, label %bb197, label %bb198
bb197:
  br label %bb199
bb198:
  br label %bb203
bb199:
  store %olang.scope zeroinitializer, ptr %s48
  %t1209 = load ptr, ptr %l0, !tbaa !29
  %t1211 = getelementptr %"compiler/emit:fnEm", ptr %t1209, i32 0, i32 4
  %t1212 = load i64, ptr %l40, !tbaa !24
  %t1213 = load i64, ptr %l40, !tbaa !24
  %t1214 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t1215 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t1217 = call i64 @__olang_fmt_i64(ptr null, i64 %t1212)
  %t1218 = add i64 %t1215, %t1217
  %t1219 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t1220 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t1221 = add i64 %t1218, %t1220
  %t1223 = call i64 @__olang_fmt_i64(ptr null, i64 %t1213)
  %t1224 = add i64 %t1221, %t1223
  %t1225 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t1226 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t1227 = add i64 %t1224, %t1226
  %t1228 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1227)
  call void @olang_textcopy(ptr %t1228, ptr %t1214, i64 %t1215)
  %t1229 = getelementptr i8, ptr %t1228, i64 %t1215
  %t1230 = call i64 @__olang_fmt_i64(ptr %t1229, i64 %t1212)
  %t1231 = getelementptr i8, ptr %t1229, i64 %t1217
  call void @olang_textcopy(ptr %t1231, ptr %t1219, i64 %t1220)
  %t1232 = getelementptr i8, ptr %t1231, i64 %t1220
  %t1233 = call i64 @__olang_fmt_i64(ptr %t1232, i64 %t1213)
  %t1234 = getelementptr i8, ptr %t1232, i64 %t1223
  call void @olang_textcopy(ptr %t1234, ptr %t1225, i64 %t1226)
  %t1235 = insertvalue { i64, ptr } undef, i64 %t1227, 0
  %t1236 = insertvalue { i64, ptr } %t1235, ptr %t1228, 1
  %t1238 = extractvalue { i64, ptr } %t1236, 0
  %t1239 = extractvalue { i64, ptr } %t1236, 1
  %t1240 = mul i64 %t1238, 1
  %t1241 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1241, ptr %t1239, i64 %t1240, i1 false)
  %t1242 = insertvalue { i64, ptr } undef, i64 %t1238, 0
  %t1243 = insertvalue { i64, ptr } %t1242, ptr %t1241, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s48, ptr %t1211, { i64, ptr } %t1243)
  br label %bb200
bb200:
  %t1246 = load ptr, ptr %l0, !tbaa !29
  %t1248 = getelementptr %"compiler/emit:fnEm", ptr %t1246, i32 0, i32 4
  %t1249 = load i64, ptr %l40, !tbaa !24
  %t1250 = load i64, ptr %l40, !tbaa !24
  %t1251 = load i64, ptr %l40, !tbaa !24
  %t1252 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t1253 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t1255 = call i64 @__olang_fmt_i64(ptr null, i64 %t1249)
  %t1256 = add i64 %t1253, %t1255
  %t1257 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t1258 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t1259 = add i64 %t1256, %t1258
  %t1261 = call i64 @__olang_fmt_i64(ptr null, i64 %t1250)
  %t1262 = add i64 %t1259, %t1261
  %t1263 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t1264 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t1265 = add i64 %t1262, %t1264
  %t1267 = call i64 @__olang_fmt_i64(ptr null, i64 %t1251)
  %t1268 = add i64 %t1265, %t1267
  %t1269 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t1270 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t1271 = add i64 %t1268, %t1270
  %t1272 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1271)
  call void @olang_textcopy(ptr %t1272, ptr %t1252, i64 %t1253)
  %t1273 = getelementptr i8, ptr %t1272, i64 %t1253
  %t1274 = call i64 @__olang_fmt_i64(ptr %t1273, i64 %t1249)
  %t1275 = getelementptr i8, ptr %t1273, i64 %t1255
  call void @olang_textcopy(ptr %t1275, ptr %t1257, i64 %t1258)
  %t1276 = getelementptr i8, ptr %t1275, i64 %t1258
  %t1277 = call i64 @__olang_fmt_i64(ptr %t1276, i64 %t1250)
  %t1278 = getelementptr i8, ptr %t1276, i64 %t1261
  call void @olang_textcopy(ptr %t1278, ptr %t1263, i64 %t1264)
  %t1279 = getelementptr i8, ptr %t1278, i64 %t1264
  %t1280 = call i64 @__olang_fmt_i64(ptr %t1279, i64 %t1251)
  %t1281 = getelementptr i8, ptr %t1279, i64 %t1267
  call void @olang_textcopy(ptr %t1281, ptr %t1269, i64 %t1270)
  %t1282 = insertvalue { i64, ptr } undef, i64 %t1271, 0
  %t1283 = insertvalue { i64, ptr } %t1282, ptr %t1272, 1
  %t1285 = extractvalue { i64, ptr } %t1283, 0
  %t1286 = extractvalue { i64, ptr } %t1283, 1
  %t1287 = mul i64 %t1285, 1
  %t1288 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1288, ptr %t1286, i64 %t1287, i1 false)
  %t1289 = insertvalue { i64, ptr } undef, i64 %t1285, 0
  %t1290 = insertvalue { i64, ptr } %t1289, ptr %t1288, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s48, ptr %t1248, { i64, ptr } %t1290)
  br label %bb201
bb201:
  %t1293 = load ptr, ptr %l0, !tbaa !29
  %t1295 = getelementptr %"compiler/emit:fnEm", ptr %t1293, i32 0, i32 4
  %t1296 = load i64, ptr %l40, !tbaa !24
  %t1297 = load i64, ptr %l41, !tbaa !24
  %t1298 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t1299 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  %t1301 = call i64 @__olang_fmt_i64(ptr null, i64 %t1296)
  %t1302 = add i64 %t1299, %t1301
  %t1303 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t1304 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t1305 = add i64 %t1302, %t1304
  %t1307 = call i64 @__olang_fmt_i64(ptr null, i64 %t1297)
  %t1308 = add i64 %t1305, %t1307
  %t1309 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t1310 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t1311 = add i64 %t1308, %t1310
  %t1312 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1311)
  call void @olang_textcopy(ptr %t1312, ptr %t1298, i64 %t1299)
  %t1313 = getelementptr i8, ptr %t1312, i64 %t1299
  %t1314 = call i64 @__olang_fmt_i64(ptr %t1313, i64 %t1296)
  %t1315 = getelementptr i8, ptr %t1313, i64 %t1301
  call void @olang_textcopy(ptr %t1315, ptr %t1303, i64 %t1304)
  %t1316 = getelementptr i8, ptr %t1315, i64 %t1304
  %t1317 = call i64 @__olang_fmt_i64(ptr %t1316, i64 %t1297)
  %t1318 = getelementptr i8, ptr %t1316, i64 %t1307
  call void @olang_textcopy(ptr %t1318, ptr %t1309, i64 %t1310)
  %t1319 = insertvalue { i64, ptr } undef, i64 %t1311, 0
  %t1320 = insertvalue { i64, ptr } %t1319, ptr %t1312, 1
  %t1322 = extractvalue { i64, ptr } %t1320, 0
  %t1323 = extractvalue { i64, ptr } %t1320, 1
  %t1324 = mul i64 %t1322, 1
  %t1325 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t1324)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1325, ptr %t1323, i64 %t1324, i1 false)
  %t1326 = insertvalue { i64, ptr } undef, i64 %t1322, 0
  %t1327 = insertvalue { i64, ptr } %t1326, ptr %t1325, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s48, ptr %t1295, { i64, ptr } %t1327)
  br label %bb202
bb202:
  call void @__olang_scope_close(ptr %s48)
  br label %bb210
bb203:
  br i1 true, label %bb204, label %bb205
bb204:
  br label %bb206
bb205:
  br label %bb209
bb206:
  store %olang.scope zeroinitializer, ptr %s52
  %t1330 = load ptr, ptr %l0, !tbaa !29
  %t1332 = getelementptr %"compiler/emit:fnEm", ptr %t1330, i32 0, i32 4
  store ptr %t1332, ptr %l532, !tbaa !29
  %t1333 = load ptr, ptr %l0, !tbaa !29
  %t1334 = load i32, ptr %l42, !tbaa !23
  %t1337 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s52, ptr %t1333, i32 %t1334)
  store { i64, ptr } %t1337, ptr %l535
  br label %bb207
bb207:
  %t1338 = load i64, ptr %l40, !tbaa !24
  %t1339 = load i64, ptr %l41, !tbaa !24
  %t1340 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t1341 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t1342 = load { i64, ptr }, ptr %l535, !tbaa !27
  %t1343 = extractvalue { i64, ptr } %t1342, 1
  %t1344 = extractvalue { i64, ptr } %t1342, 0
  %t1345 = add i64 %t1341, %t1344
  %t1346 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t1347 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  %t1348 = add i64 %t1345, %t1347
  %t1350 = call i64 @__olang_fmt_i64(ptr null, i64 %t1338)
  %t1351 = add i64 %t1348, %t1350
  %t1352 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t1353 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t1354 = add i64 %t1351, %t1353
  %t1356 = call i64 @__olang_fmt_i64(ptr null, i64 %t1339)
  %t1357 = add i64 %t1354, %t1356
  %t1358 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t1359 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t1360 = add i64 %t1357, %t1359
  %t1361 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1360)
  call void @olang_textcopy(ptr %t1361, ptr %t1340, i64 %t1341)
  %t1362 = getelementptr i8, ptr %t1361, i64 %t1341
  call void @olang_textcopy(ptr %t1362, ptr %t1343, i64 %t1344)
  %t1363 = getelementptr i8, ptr %t1362, i64 %t1344
  call void @olang_textcopy(ptr %t1363, ptr %t1346, i64 %t1347)
  %t1364 = getelementptr i8, ptr %t1363, i64 %t1347
  %t1365 = call i64 @__olang_fmt_i64(ptr %t1364, i64 %t1338)
  %t1366 = getelementptr i8, ptr %t1364, i64 %t1350
  call void @olang_textcopy(ptr %t1366, ptr %t1352, i64 %t1353)
  %t1367 = getelementptr i8, ptr %t1366, i64 %t1353
  %t1368 = call i64 @__olang_fmt_i64(ptr %t1367, i64 %t1339)
  %t1369 = getelementptr i8, ptr %t1367, i64 %t1356
  call void @olang_textcopy(ptr %t1369, ptr %t1358, i64 %t1359)
  %t1370 = insertvalue { i64, ptr } undef, i64 %t1360, 0
  %t1371 = insertvalue { i64, ptr } %t1370, ptr %t1361, 1
  %t1373 = extractvalue { i64, ptr } %t1371, 0
  %t1374 = extractvalue { i64, ptr } %t1371, 1
  %t1375 = mul i64 %t1373, 1
  %t1376 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1376, ptr %t1374, i64 %t1375, i1 false)
  %t1377 = insertvalue { i64, ptr } undef, i64 %t1373, 0
  %t1378 = insertvalue { i64, ptr } %t1377, ptr %t1376, 1
  %t1379 = load ptr, ptr %l532, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s52, ptr %t1379, { i64, ptr } %t1378)
  br label %bb208
bb208:
  call void @__olang_scope_close(ptr %s52)
  br label %bb210
bb209:
  call void @__olang_check_failed(ptr @olang_loc_fad0caecc364ec25_9c3ddefd20d373f1)
  unreachable
bb210:
  br label %bb211
bb211:
  %t1381 = load i64, ptr %l39, !tbaa !24
  %t1383 = add i64 %t1381, 1
  store i64 %t1383, ptr %l39, !tbaa !24
  br label %bb178
bb212:
  %t1385 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t1385, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d217, i32 0, i32 1) })
  br label %bb213
bb213:
  %t1387 = load ptr, ptr %l0, !tbaa !29
  %t1389 = getelementptr %"compiler/emit:fnEm", ptr %t1387, i32 0, i32 28
  %t1390 = load i1, ptr %t1389, !tbaa !21
  br i1 %t1390, label %bb214, label %bb215
bb214:
  store %olang.scope zeroinitializer, ptr %s55
  %t1392 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s55, ptr %t1392, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d218, i32 0, i32 1) })
  br label %bb216
bb215:
  br label %bb222
bb216:
  %t1394 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s55, ptr %t1394, { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d219, i32 0, i32 1) })
  br label %bb217
bb217:
  %t1396 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s55, ptr %t1396, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d220, i32 0, i32 1) })
  br label %bb218
bb218:
  %t1398 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2efreshDrops(ptr %v0, ptr %t1398)
  br label %bb219
bb219:
  %t1400 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s55, ptr %t1400, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d221, i32 0, i32 1) })
  br label %bb220
bb220:
  %t1402 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s55, ptr %t1402, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d222, i32 0, i32 1) })
  br label %bb221
bb221:
  call void @__olang_scope_close(ptr %s55)
  br label %bb222
bb222:
  %t1404 = load ptr, ptr %l0, !tbaa !29
  %t1406 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etailCopies(ptr %v0, ptr %s0, ptr %t1404)
  store { i64, ptr } %t1406, ptr %l552
  br label %bb223
bb223:
  %t1407 = load { i64, ptr }, ptr %l552, !tbaa !27
  store { i64, ptr } %t1407, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t1408 = load ptr, ptr %l1, !tbaa !29
  %t1410 = getelementptr %"compiler/mir:Fn", ptr %t1408, i32 0, i32 4
  %t1412 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1410)
  store i64 %t1412, ptr %l555
  br label %bb224
bb224:
  %t1413 = load i64, ptr %l555, !tbaa !24
  store i64 %t1413, ptr %l46, !tbaa !24
  store i64 1, ptr %l47, !tbaa !24
  %t1414 = load i64, ptr %l46, !tbaa !24
  %t1415 = load i64, ptr %l45, !tbaa !24
  %t1418 = icmp sgt i64 %t1414, %t1415
  br i1 %t1418, label %bb225, label %bb226
bb225:
  %t1420 = load i64, ptr %l47, !tbaa !24
  %t1422 = icmp sgt i64 %t1420, 0
  br i1 %t1422, label %bb227, label %bb228
bb226:
  store i64 0, ptr %l559, !tbaa !24
  br label %bb230
bb227:
  %t1424 = load i64, ptr %l46, !tbaa !24
  %t1425 = load i64, ptr %l45, !tbaa !24
  %t1428 = sub i64 %t1424, %t1425
  %t1429 = load i64, ptr %l47, !tbaa !24
  %t1432 = add i64 %t1428, %t1429
  %t1434 = sub i64 %t1432, 1
  %t1435 = load i64, ptr %l47, !tbaa !24
  %t1438 = sdiv i64 %t1434, %t1435
  store i64 %t1438, ptr %l562, !tbaa !24
  br label %bb229
bb228:
  store i64 0, ptr %l562, !tbaa !24
  br label %bb229
bb229:
  %t1440 = load i64, ptr %l562, !tbaa !24
  store i64 %t1440, ptr %l559, !tbaa !24
  br label %bb230
bb230:
  %t1441 = load i64, ptr %l559, !tbaa !24
  store i64 %t1441, ptr %l48, !tbaa !24
  store i64 0, ptr %l49, !tbaa !24
  br label %bb231
bb231:
  %t1442 = load i64, ptr %l49, !tbaa !24
  %t1443 = load i64, ptr %l48, !tbaa !24
  %t1446 = icmp slt i64 %t1442, %t1443
  %t1448 = xor i1 %t1446, true
  br i1 %t1448, label %bb232, label %bb233
bb232:
  br label %bb258
bb233:
  br label %bb234
bb234:
  %t1450 = load i64, ptr %l45, !tbaa !24
  %t1451 = load i64, ptr %l49, !tbaa !24
  %t1452 = load i64, ptr %l47, !tbaa !24
  %t1455 = mul i64 %t1451, %t1452
  %t1458 = add i64 %t1450, %t1455
  %t1460 = load ptr, ptr %l1, !tbaa !29
  %t1462 = getelementptr %"compiler/mir:Fn", ptr %t1460, i32 0, i32 4
  %t1466 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1462, i64 %t1458)
  store i32 %t1466, ptr %l583
  br label %bb235
bb235:
  %t1467 = load i32, ptr %l583, !tbaa !23
  store i32 %t1467, ptr %l51, !tbaa !23
  %t1468 = load ptr, ptr %l1, !tbaa !29
  %t1470 = getelementptr %"compiler/mir:Fn", ptr %t1468, i32 0, i32 7
  %t1471 = load i32, ptr %l51, !tbaa !23
  %t1473 = sext i32 %t1471 to i64
  %t1476 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t1470, i64 %t1473)
  store %"compiler/mir:Local" %t1476, ptr %l588
  br label %bb236
bb236:
  %t1477 = getelementptr %"compiler/mir:Local", ptr %l588, i32 0, i32 2
  %t1478 = load i32, ptr %t1477, !tbaa !23
  store i32 %t1478, ptr %l52, !tbaa !23
  %t1480 = load ptr, ptr %l0, !tbaa !29
  %t1481 = load i32, ptr %l52, !tbaa !23
  %t1484 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %t1480, i32 %t1481)
  store i1 %t1484, ptr %l592
  br label %bb237
bb237:
  %t1485 = load i1, ptr %l592, !tbaa !21
  br i1 %t1485, label %bb238, label %bb239
bb238:
  %t1486 = load ptr, ptr %l0, !tbaa !29
  %t1488 = getelementptr %"compiler/emit:fnEm", ptr %t1486, i32 0, i32 1
  %t1489 = load ptr, ptr %t1488, !tbaa !29
  %t1490 = load ptr, ptr %l0, !tbaa !29
  %t1492 = getelementptr %"compiler/emit:fnEm", ptr %t1490, i32 0, i32 0
  %t1493 = load ptr, ptr %t1492, !tbaa !29
  %t1495 = getelementptr %"compiler/emit:Emitter", ptr %t1493, i32 0, i32 3
  %t1496 = load ptr, ptr %t1495, !tbaa !29
  %t1497 = load i32, ptr %l51, !tbaa !23
  %t1501 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eWritesInto(ptr %v0, ptr %v0, ptr %t1489, ptr %t1496, i32 %t1497)
  store i1 %t1501, ptr %l600
  br label %bb240
bb239:
  store i1 false, ptr %l593, !tbaa !21
  br label %bb241
bb240:
  %t1502 = load i1, ptr %l600, !tbaa !21
  store i1 %t1502, ptr %l593, !tbaa !21
  br label %bb241
bb241:
  %t1503 = load i1, ptr %l593, !tbaa !21
  br i1 %t1503, label %bb242, label %bb243
bb242:
  store %olang.scope zeroinitializer, ptr %s58
  %t1504 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t1506 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s58, { i64, ptr } %t1504, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d223, i32 0, i32 1) })
  store i1 %t1506, ptr %l602
  br label %bb244
bb243:
  br label %bb256
bb244:
  %t1507 = load i1, ptr %l602, !tbaa !21
  br i1 %t1507, label %bb245, label %bb246
bb245:
  %t1508 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebigArena(ptr %v0, ptr %t1508)
  br label %bb247
bb246:
  br label %bb248
bb247:
  br label %bb248
bb248:
  %t1510 = load ptr, ptr %l0, !tbaa !29
  %t1511 = load i32, ptr %l51, !tbaa !23
  %t1512 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t1513 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t1515 = sext i32 %t1511 to i64
  %t1516 = call i64 @__olang_fmt_i64(ptr null, i64 %t1515)
  %t1517 = add i64 %t1513, %t1516
  %t1518 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1517)
  call void @olang_textcopy(ptr %t1518, ptr %t1512, i64 %t1513)
  %t1519 = getelementptr i8, ptr %t1518, i64 %t1513
  %t1520 = call i64 @__olang_fmt_i64(ptr %t1519, i64 %t1515)
  %t1521 = insertvalue { i64, ptr } undef, i64 %t1517, 0
  %t1522 = insertvalue { i64, ptr } %t1521, ptr %t1518, 1
  %t1524 = extractvalue { i64, ptr } %t1522, 0
  %t1525 = extractvalue { i64, ptr } %t1522, 1
  %t1526 = mul i64 %t1524, 1
  %t1527 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1526)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1527, ptr %t1525, i64 %t1526, i1 false)
  %t1528 = insertvalue { i64, ptr } undef, i64 %t1524, 0
  %t1529 = insertvalue { i64, ptr } %t1528, ptr %t1527, 1
  %t1532 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s58, ptr %s58, ptr %s58, ptr %s58, ptr %t1510, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d225, i32 0, i32 1) }, { i64, ptr } %t1529, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store { i64, ptr } %t1532, ptr %l608
  br label %bb249
bb249:
  %t1533 = load { i64, ptr }, ptr %l608, !tbaa !27
  store { i64, ptr } %t1533, ptr %l53, !tbaa !27
  %t1534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1534, ptr %l609, !tbaa !29
  %t1535 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1535, ptr %l610, !tbaa !29
  %t1536 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t1538 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s58, { i64, ptr } %t1536, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d226, i32 0, i32 1) })
  store i1 %t1538, ptr %l612
  br label %bb250
bb250:
  %t1539 = load i1, ptr %l612, !tbaa !21
  br i1 %t1539, label %bb251, label %bb252
bb251:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d227, i32 0, i32 1) }, ptr %l613, !tbaa !27
  br label %bb253
bb252:
  %t1540 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t1540, ptr %l613, !tbaa !27
  br label %bb253
bb253:
  %t1542 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t1543 = load i32, ptr %l52, !tbaa !23
  %t1544 = load ptr, ptr %l610, !tbaa !29
  %t1545 = load { i64, ptr }, ptr %l613, !tbaa !27
  %t1548 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArrayIn(ptr %v0, ptr %s0, ptr %s58, ptr %s58, ptr %t1544, { i64, ptr } %t1545, { i64, ptr } %t1542, i32 %t1543)
  store { i64, ptr } %t1548, ptr %l617
  br label %bb254
bb254:
  %t1549 = load { i64, ptr }, ptr %l617, !tbaa !27
  %t1550 = extractvalue { i64, ptr } %t1549, 0
  %t1551 = extractvalue { i64, ptr } %t1549, 1
  %t1552 = mul i64 %t1550, 1
  %t1553 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1552)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1553, ptr %t1551, i64 %t1552, i1 false)
  %t1554 = insertvalue { i64, ptr } undef, i64 %t1550, 0
  %t1555 = insertvalue { i64, ptr } %t1554, ptr %t1553, 1
  %t1556 = load i32, ptr %l51, !tbaa !23
  %t1557 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t1558 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t1560 = sext i32 %t1556 to i64
  %t1561 = call i64 @__olang_fmt_i64(ptr null, i64 %t1560)
  %t1562 = add i64 %t1558, %t1561
  %t1563 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1562)
  call void @olang_textcopy(ptr %t1563, ptr %t1557, i64 %t1558)
  %t1564 = getelementptr i8, ptr %t1563, i64 %t1558
  %t1565 = call i64 @__olang_fmt_i64(ptr %t1564, i64 %t1560)
  %t1566 = insertvalue { i64, ptr } undef, i64 %t1562, 0
  %t1567 = insertvalue { i64, ptr } %t1566, ptr %t1563, 1
  %t1569 = extractvalue { i64, ptr } %t1567, 0
  %t1570 = extractvalue { i64, ptr } %t1567, 1
  %t1571 = mul i64 %t1569, 1
  %t1572 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1571)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1572, ptr %t1570, i64 %t1571, i1 false)
  %t1573 = insertvalue { i64, ptr } undef, i64 %t1569, 0
  %t1574 = insertvalue { i64, ptr } %t1573, ptr %t1572, 1
  %t1575 = load ptr, ptr %l609, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s58, ptr %s58, ptr %s58, ptr %s58, ptr %t1575, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d229, i32 0, i32 1) }, { i64, ptr } %t1555, { i64, ptr } %t1574, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d78, i32 0, i32 1) })
  br label %bb255
bb255:
  call void @__olang_scope_close(ptr %s58)
  br label %bb256
bb256:
  br label %bb257
bb257:
  %t1578 = load i64, ptr %l49, !tbaa !24
  %t1580 = add i64 %t1578, 1
  store i64 %t1580, ptr %l49, !tbaa !24
  br label %bb231
bb258:
  %t1582 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t1582, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d230, i32 0, i32 1) })
  br label %bb259
bb259:
  %t1584 = load ptr, ptr %l1, !tbaa !29
  %t1586 = getelementptr %"compiler/mir:Fn", ptr %t1584, i32 0, i32 5
  %t1588 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1586)
  store i64 %t1588, ptr %l627
  br label %bb260
bb260:
  %t1589 = load i64, ptr %l627, !tbaa !24
  %t1590 = icmp sgt i64 %t1589, 0
  br i1 %t1590, label %bb261, label %bb262
bb261:
  store %olang.scope zeroinitializer, ptr %s63
  %t1592 = load ptr, ptr %l0, !tbaa !29
  %t1594 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eenvType(ptr %v0, ptr %s63, ptr %t1592)
  store { i64, ptr } %t1594, ptr %l630
  br label %bb263
bb262:
  br label %bb317
bb263:
  %t1595 = load { i64, ptr }, ptr %l630, !tbaa !27
  store { i64, ptr } %t1595, ptr %l54, !tbaa !27
  store i64 0, ptr %l55, !tbaa !24
  %t1596 = load ptr, ptr %l1, !tbaa !29
  %t1598 = getelementptr %"compiler/mir:Fn", ptr %t1596, i32 0, i32 5
  %t1600 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1598)
  store i64 %t1600, ptr %l633
  br label %bb264
bb264:
  %t1601 = load i64, ptr %l633, !tbaa !24
  store i64 %t1601, ptr %l56, !tbaa !24
  store i64 1, ptr %l57, !tbaa !24
  %t1602 = load i64, ptr %l56, !tbaa !24
  %t1603 = load i64, ptr %l55, !tbaa !24
  %t1606 = icmp sgt i64 %t1602, %t1603
  br i1 %t1606, label %bb265, label %bb266
bb265:
  %t1608 = load i64, ptr %l57, !tbaa !24
  %t1610 = icmp sgt i64 %t1608, 0
  br i1 %t1610, label %bb267, label %bb268
bb266:
  store i64 0, ptr %l637, !tbaa !24
  br label %bb270
bb267:
  %t1612 = load i64, ptr %l56, !tbaa !24
  %t1613 = load i64, ptr %l55, !tbaa !24
  %t1616 = sub i64 %t1612, %t1613
  %t1617 = load i64, ptr %l57, !tbaa !24
  %t1620 = add i64 %t1616, %t1617
  %t1622 = sub i64 %t1620, 1
  %t1623 = load i64, ptr %l57, !tbaa !24
  %t1626 = sdiv i64 %t1622, %t1623
  store i64 %t1626, ptr %l640, !tbaa !24
  br label %bb269
bb268:
  store i64 0, ptr %l640, !tbaa !24
  br label %bb269
bb269:
  %t1628 = load i64, ptr %l640, !tbaa !24
  store i64 %t1628, ptr %l637, !tbaa !24
  br label %bb270
bb270:
  %t1629 = load i64, ptr %l637, !tbaa !24
  store i64 %t1629, ptr %l58, !tbaa !24
  store i64 0, ptr %l59, !tbaa !24
  br label %bb271
bb271:
  store %olang.scope zeroinitializer, ptr %s65
  %t1630 = load i64, ptr %l59, !tbaa !24
  %t1631 = load i64, ptr %l58, !tbaa !24
  %t1634 = icmp slt i64 %t1630, %t1631
  %t1636 = xor i1 %t1634, true
  br i1 %t1636, label %bb272, label %bb273
bb272:
  call void @__olang_scope_close(ptr %s65)
  br label %bb297
bb273:
  br label %bb274
bb274:
  %t1638 = load i64, ptr %l55, !tbaa !24
  %t1639 = load i64, ptr %l59, !tbaa !24
  %t1640 = load i64, ptr %l57, !tbaa !24
  %t1643 = mul i64 %t1639, %t1640
  %t1646 = add i64 %t1638, %t1643
  store i64 %t1646, ptr %l60, !tbaa !24
  %t1648 = load ptr, ptr %l1, !tbaa !29
  %t1650 = getelementptr %"compiler/mir:Fn", ptr %t1648, i32 0, i32 5
  %t1651 = load i64, ptr %l60, !tbaa !24
  %t1654 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1650, i64 %t1651)
  store i32 %t1654, ptr %l661
  br label %bb275
bb275:
  %t1655 = load i32, ptr %l661, !tbaa !23
  %t1656 = sext i32 %t1655 to i64
  store i64 %t1656, ptr %l61, !tbaa !24
  %t1658 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1658, ptr %l663, !tbaa !29
  %t1659 = load ptr, ptr %l1, !tbaa !29
  %t1661 = getelementptr %"compiler/mir:Fn", ptr %t1659, i32 0, i32 7
  %t1662 = load i64, ptr %l61, !tbaa !24
  %t1665 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t1661, i64 %t1662)
  store %"compiler/mir:Local" %t1665, ptr %l667
  br label %bb276
bb276:
  %t1666 = getelementptr %"compiler/mir:Local", ptr %l667, i32 0, i32 2
  %t1667 = load i32, ptr %t1666, !tbaa !23
  %t1668 = load ptr, ptr %l663, !tbaa !29
  %t1670 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s65, ptr %t1668, i32 %t1667)
  store { i64, ptr } %t1670, ptr %l669
  br label %bb277
bb277:
  %t1671 = load { i64, ptr }, ptr %l669, !tbaa !27
  store { i64, ptr } %t1671, ptr %l62, !tbaa !27
  %t1672 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1672, ptr %l670, !tbaa !29
  %t1673 = load ptr, ptr %l1, !tbaa !29
  %t1675 = getelementptr %"compiler/mir:Fn", ptr %t1673, i32 0, i32 7
  %t1676 = load i64, ptr %l61, !tbaa !24
  %t1679 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t1675, i64 %t1676)
  store %"compiler/mir:Local" %t1679, ptr %l674
  br label %bb278
bb278:
  %t1680 = getelementptr %"compiler/mir:Local", ptr %l674, i32 0, i32 4
  %t1681 = load { i64, [1 x i64] }, ptr %t1680
  %t1682 = load ptr, ptr %l670, !tbaa !29
  %t1684 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %t1682, { i64, [1 x i64] } %t1681)
  store i1 %t1684, ptr %l676
  br label %bb279
bb279:
  %t1685 = load i1, ptr %l676, !tbaa !21
  %t1686 = xor i1 %t1685, true
  br i1 %t1686, label %bb280, label %bb281
bb280:
  store %olang.scope zeroinitializer, ptr %s66
  %t1688 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s66, ptr %t1688, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d231, i32 0, i32 1) })
  br label %bb282
bb281:
  br label %bb283
bb282:
  call void @__olang_scope_close(ptr %s66)
  br label %bb283
bb283:
  %t1690 = load ptr, ptr %l0, !tbaa !29
  %t1692 = getelementptr %"compiler/emit:fnEm", ptr %t1690, i32 0, i32 4
  %t1693 = load i64, ptr %l60, !tbaa !24
  %t1694 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t1695 = load i64, ptr %l60, !tbaa !24
  %t1696 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t1697 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t1699 = call i64 @__olang_fmt_i64(ptr null, i64 %t1693)
  %t1700 = add i64 %t1697, %t1699
  %t1701 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t1702 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t1703 = add i64 %t1700, %t1702
  %t1705 = extractvalue { i64, ptr } %t1694, 1
  %t1706 = extractvalue { i64, ptr } %t1694, 0
  %t1707 = add i64 %t1703, %t1706
  %t1708 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t1709 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t1710 = add i64 %t1707, %t1709
  %t1712 = call i64 @__olang_fmt_i64(ptr null, i64 %t1695)
  %t1713 = add i64 %t1710, %t1712
  %t1714 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t1715 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t1716 = add i64 %t1713, %t1715
  %t1717 = call ptr @__olang_scope_alloc(ptr %s65, i64 %t1716)
  call void @olang_textcopy(ptr %t1717, ptr %t1696, i64 %t1697)
  %t1718 = getelementptr i8, ptr %t1717, i64 %t1697
  %t1719 = call i64 @__olang_fmt_i64(ptr %t1718, i64 %t1693)
  %t1720 = getelementptr i8, ptr %t1718, i64 %t1699
  call void @olang_textcopy(ptr %t1720, ptr %t1701, i64 %t1702)
  %t1721 = getelementptr i8, ptr %t1720, i64 %t1702
  call void @olang_textcopy(ptr %t1721, ptr %t1705, i64 %t1706)
  %t1722 = getelementptr i8, ptr %t1721, i64 %t1706
  call void @olang_textcopy(ptr %t1722, ptr %t1708, i64 %t1709)
  %t1723 = getelementptr i8, ptr %t1722, i64 %t1709
  %t1724 = call i64 @__olang_fmt_i64(ptr %t1723, i64 %t1695)
  %t1725 = getelementptr i8, ptr %t1723, i64 %t1712
  call void @olang_textcopy(ptr %t1725, ptr %t1714, i64 %t1715)
  %t1726 = insertvalue { i64, ptr } undef, i64 %t1716, 0
  %t1727 = insertvalue { i64, ptr } %t1726, ptr %t1717, 1
  %t1729 = extractvalue { i64, ptr } %t1727, 0
  %t1730 = extractvalue { i64, ptr } %t1727, 1
  %t1731 = mul i64 %t1729, 1
  %t1732 = call ptr @__olang_scope_alloc(ptr %s65, i64 %t1731)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1732, ptr %t1730, i64 %t1731, i1 false)
  %t1733 = insertvalue { i64, ptr } undef, i64 %t1729, 0
  %t1734 = insertvalue { i64, ptr } %t1733, ptr %t1732, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s65, ptr %t1692, { i64, ptr } %t1734)
  br label %bb284
bb284:
  %t1737 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1737, ptr %l686, !tbaa !29
  %t1738 = load ptr, ptr %l1, !tbaa !29
  %t1740 = getelementptr %"compiler/mir:Fn", ptr %t1738, i32 0, i32 7
  %t1741 = load i64, ptr %l61, !tbaa !24
  %t1744 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t1740, i64 %t1741)
  store %"compiler/mir:Local" %t1744, ptr %l690
  br label %bb285
bb285:
  %t1745 = getelementptr %"compiler/mir:Local", ptr %l690, i32 0, i32 2
  %t1746 = load i32, ptr %t1745, !tbaa !23
  %t1747 = load ptr, ptr %l686, !tbaa !29
  %t1749 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %t1747, i32 %t1746)
  store i1 %t1749, ptr %l692
  br label %bb286
bb286:
  %t1750 = load i1, ptr %l692, !tbaa !21
  br i1 %t1750, label %bb287, label %bb288
bb287:
  store %olang.scope zeroinitializer, ptr %s68
  %t1751 = load ptr, ptr %l0, !tbaa !29
  %t1753 = getelementptr %"compiler/emit:fnEm", ptr %t1751, i32 0, i32 0
  %t1754 = load ptr, ptr %t1753, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s68, ptr %s68, ptr %t1754, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d236, i32 0, i32 1) }, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d237, i32 0, i32 1) })
  br label %bb289
bb288:
  store %olang.scope zeroinitializer, ptr %s70
  %t1756 = load ptr, ptr %l0, !tbaa !29
  %t1758 = getelementptr %"compiler/emit:fnEm", ptr %t1756, i32 0, i32 4
  %t1759 = load i64, ptr %l60, !tbaa !24
  %t1760 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t1761 = load i64, ptr %l60, !tbaa !24
  %t1762 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t1763 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  %t1765 = call i64 @__olang_fmt_i64(ptr null, i64 %t1759)
  %t1766 = add i64 %t1763, %t1765
  %t1767 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t1768 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  %t1769 = add i64 %t1766, %t1768
  %t1771 = extractvalue { i64, ptr } %t1760, 1
  %t1772 = extractvalue { i64, ptr } %t1760, 0
  %t1773 = add i64 %t1769, %t1772
  %t1774 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t1775 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  %t1776 = add i64 %t1773, %t1775
  %t1778 = call i64 @__olang_fmt_i64(ptr null, i64 %t1761)
  %t1779 = add i64 %t1776, %t1778
  %t1780 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t1781 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t1782 = add i64 %t1779, %t1781
  %t1783 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1782)
  call void @olang_textcopy(ptr %t1783, ptr %t1762, i64 %t1763)
  %t1784 = getelementptr i8, ptr %t1783, i64 %t1763
  %t1785 = call i64 @__olang_fmt_i64(ptr %t1784, i64 %t1759)
  %t1786 = getelementptr i8, ptr %t1784, i64 %t1765
  call void @olang_textcopy(ptr %t1786, ptr %t1767, i64 %t1768)
  %t1787 = getelementptr i8, ptr %t1786, i64 %t1768
  call void @olang_textcopy(ptr %t1787, ptr %t1771, i64 %t1772)
  %t1788 = getelementptr i8, ptr %t1787, i64 %t1772
  call void @olang_textcopy(ptr %t1788, ptr %t1774, i64 %t1775)
  %t1789 = getelementptr i8, ptr %t1788, i64 %t1775
  %t1790 = call i64 @__olang_fmt_i64(ptr %t1789, i64 %t1761)
  %t1791 = getelementptr i8, ptr %t1789, i64 %t1778
  call void @olang_textcopy(ptr %t1791, ptr %t1780, i64 %t1781)
  %t1792 = insertvalue { i64, ptr } undef, i64 %t1782, 0
  %t1793 = insertvalue { i64, ptr } %t1792, ptr %t1783, 1
  %t1795 = extractvalue { i64, ptr } %t1793, 0
  %t1796 = extractvalue { i64, ptr } %t1793, 1
  %t1797 = mul i64 %t1795, 1
  %t1798 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1797)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1798, ptr %t1796, i64 %t1797, i1 false)
  %t1799 = insertvalue { i64, ptr } undef, i64 %t1795, 0
  %t1800 = insertvalue { i64, ptr } %t1799, ptr %t1798, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s70, ptr %t1758, { i64, ptr } %t1800)
  br label %bb293
bb289:
  %t1803 = load ptr, ptr %l0, !tbaa !29
  %t1805 = getelementptr %"compiler/emit:fnEm", ptr %t1803, i32 0, i32 4
  store ptr %t1805, ptr %l696, !tbaa !29
  %t1806 = load i64, ptr %l61, !tbaa !24
  store i64 %t1806, ptr %l697, !tbaa !24
  %t1807 = load i64, ptr %l60, !tbaa !24
  store i64 %t1807, ptr %l698, !tbaa !24
  %t1808 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1808, ptr %l699, !tbaa !29
  %t1809 = load ptr, ptr %l1, !tbaa !29
  %t1811 = getelementptr %"compiler/mir:Fn", ptr %t1809, i32 0, i32 7
  %t1812 = load i64, ptr %l61, !tbaa !24
  %t1815 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t1811, i64 %t1812)
  store %"compiler/mir:Local" %t1815, ptr %l703
  br label %bb290
bb290:
  %t1816 = getelementptr %"compiler/mir:Local", ptr %l703, i32 0, i32 2
  %t1817 = load i32, ptr %t1816, !tbaa !23
  %t1818 = load ptr, ptr %l699, !tbaa !29
  %t1820 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1818, i32 %t1817)
  store i64 %t1820, ptr %l705
  br label %bb291
bb291:
  %t1821 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t1822 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t1823 = load i64, ptr %l697, !tbaa !24
  %t1824 = call i64 @__olang_fmt_i64(ptr null, i64 %t1823)
  %t1825 = add i64 %t1822, %t1824
  %t1826 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t1827 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t1828 = add i64 %t1825, %t1827
  %t1829 = load i64, ptr %l698, !tbaa !24
  %t1830 = call i64 @__olang_fmt_i64(ptr null, i64 %t1829)
  %t1831 = add i64 %t1828, %t1830
  %t1832 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t1833 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  %t1834 = add i64 %t1831, %t1833
  %t1835 = load i64, ptr %l705, !tbaa !24
  %t1836 = call i64 @__olang_fmt_i64(ptr null, i64 %t1835)
  %t1837 = add i64 %t1834, %t1836
  %t1838 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t1839 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t1840 = add i64 %t1837, %t1839
  %t1841 = call ptr @__olang_scope_alloc(ptr %s68, i64 %t1840)
  call void @olang_textcopy(ptr %t1841, ptr %t1821, i64 %t1822)
  %t1842 = getelementptr i8, ptr %t1841, i64 %t1822
  %t1843 = call i64 @__olang_fmt_i64(ptr %t1842, i64 %t1823)
  %t1844 = getelementptr i8, ptr %t1842, i64 %t1824
  call void @olang_textcopy(ptr %t1844, ptr %t1826, i64 %t1827)
  %t1845 = getelementptr i8, ptr %t1844, i64 %t1827
  %t1846 = call i64 @__olang_fmt_i64(ptr %t1845, i64 %t1829)
  %t1847 = getelementptr i8, ptr %t1845, i64 %t1830
  call void @olang_textcopy(ptr %t1847, ptr %t1832, i64 %t1833)
  %t1848 = getelementptr i8, ptr %t1847, i64 %t1833
  %t1849 = call i64 @__olang_fmt_i64(ptr %t1848, i64 %t1835)
  %t1850 = getelementptr i8, ptr %t1848, i64 %t1836
  call void @olang_textcopy(ptr %t1850, ptr %t1838, i64 %t1839)
  %t1851 = insertvalue { i64, ptr } undef, i64 %t1840, 0
  %t1852 = insertvalue { i64, ptr } %t1851, ptr %t1841, 1
  %t1854 = extractvalue { i64, ptr } %t1852, 0
  %t1855 = extractvalue { i64, ptr } %t1852, 1
  %t1856 = mul i64 %t1854, 1
  %t1857 = call ptr @__olang_scope_alloc(ptr %s68, i64 %t1856)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1857, ptr %t1855, i64 %t1856, i1 false)
  %t1858 = insertvalue { i64, ptr } undef, i64 %t1854, 0
  %t1859 = insertvalue { i64, ptr } %t1858, ptr %t1857, 1
  %t1860 = load ptr, ptr %l696, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s68, ptr %t1860, { i64, ptr } %t1859)
  br label %bb292
bb292:
  call void @__olang_scope_close(ptr %s68)
  br label %bb295
bb293:
  %t1862 = load ptr, ptr %l0, !tbaa !29
  %t1864 = getelementptr %"compiler/emit:fnEm", ptr %t1862, i32 0, i32 4
  %t1865 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t1866 = load i64, ptr %l60, !tbaa !24
  %t1867 = load i64, ptr %l61, !tbaa !24
  %t1868 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t1869 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t1871 = extractvalue { i64, ptr } %t1865, 1
  %t1872 = extractvalue { i64, ptr } %t1865, 0
  %t1873 = add i64 %t1869, %t1872
  %t1874 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t1875 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
  %t1876 = add i64 %t1873, %t1875
  %t1878 = call i64 @__olang_fmt_i64(ptr null, i64 %t1866)
  %t1879 = add i64 %t1876, %t1878
  %t1880 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d248, i32 0, i32 1) }, 1
  %t1881 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d248, i32 0, i32 1) }, 0
  %t1882 = add i64 %t1879, %t1881
  %t1884 = call i64 @__olang_fmt_i64(ptr null, i64 %t1867)
  %t1885 = add i64 %t1882, %t1884
  %t1886 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t1887 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t1888 = add i64 %t1885, %t1887
  %t1889 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1888)
  call void @olang_textcopy(ptr %t1889, ptr %t1868, i64 %t1869)
  %t1890 = getelementptr i8, ptr %t1889, i64 %t1869
  call void @olang_textcopy(ptr %t1890, ptr %t1871, i64 %t1872)
  %t1891 = getelementptr i8, ptr %t1890, i64 %t1872
  call void @olang_textcopy(ptr %t1891, ptr %t1874, i64 %t1875)
  %t1892 = getelementptr i8, ptr %t1891, i64 %t1875
  %t1893 = call i64 @__olang_fmt_i64(ptr %t1892, i64 %t1866)
  %t1894 = getelementptr i8, ptr %t1892, i64 %t1878
  call void @olang_textcopy(ptr %t1894, ptr %t1880, i64 %t1881)
  %t1895 = getelementptr i8, ptr %t1894, i64 %t1881
  %t1896 = call i64 @__olang_fmt_i64(ptr %t1895, i64 %t1867)
  %t1897 = getelementptr i8, ptr %t1895, i64 %t1884
  call void @olang_textcopy(ptr %t1897, ptr %t1886, i64 %t1887)
  %t1898 = insertvalue { i64, ptr } undef, i64 %t1888, 0
  %t1899 = insertvalue { i64, ptr } %t1898, ptr %t1889, 1
  %t1901 = extractvalue { i64, ptr } %t1899, 0
  %t1902 = extractvalue { i64, ptr } %t1899, 1
  %t1903 = mul i64 %t1901, 1
  %t1904 = call ptr @__olang_scope_alloc(ptr %s70, i64 %t1903)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1904, ptr %t1902, i64 %t1903, i1 false)
  %t1905 = insertvalue { i64, ptr } undef, i64 %t1901, 0
  %t1906 = insertvalue { i64, ptr } %t1905, ptr %t1904, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s70, ptr %t1864, { i64, ptr } %t1906)
  br label %bb294
bb294:
  call void @__olang_scope_close(ptr %s70)
  br label %bb295
bb295:
  call void @__olang_scope_close(ptr %s65)
  br label %bb296
bb296:
  %t1909 = load i64, ptr %l59, !tbaa !24
  %t1911 = add i64 %t1909, 1
  store i64 %t1911, ptr %l59, !tbaa !24
  br label %bb271
bb297:
  %t1913 = load ptr, ptr %l0, !tbaa !29
  %t1915 = getelementptr %"compiler/emit:fnEm", ptr %t1913, i32 0, i32 0
  %t1916 = load ptr, ptr %t1915, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s63, ptr %t1916, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d250, i32 0, i32 1) })
  br label %bb298
bb298:
  store i64 0, ptr %l63, !tbaa !24
  %t1918 = load ptr, ptr %l0, !tbaa !29
  %t1920 = getelementptr %"compiler/emit:fnEm", ptr %t1918, i32 0, i32 0
  %t1921 = load ptr, ptr %t1920, !tbaa !29
  %t1922 = load ptr, ptr %l1, !tbaa !29
  %t1924 = getelementptr %"compiler/mir:Fn", ptr %t1922, i32 0, i32 0
  %t1925 = load { i64, [2 x i64] }, ptr %t1924
  %t1928 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecapVars(ptr %v0, ptr %t1921, { i64, [2 x i64] } %t1925)
  store i64 %t1928, ptr %l730
  br label %bb299
bb299:
  %t1929 = load i64, ptr %l730, !tbaa !24
  store i64 %t1929, ptr %l64, !tbaa !24
  store i64 1, ptr %l65, !tbaa !24
  %t1930 = load i64, ptr %l64, !tbaa !24
  %t1931 = load i64, ptr %l63, !tbaa !24
  %t1934 = icmp sgt i64 %t1930, %t1931
  br i1 %t1934, label %bb300, label %bb301
bb300:
  %t1936 = load i64, ptr %l65, !tbaa !24
  %t1938 = icmp sgt i64 %t1936, 0
  br i1 %t1938, label %bb302, label %bb303
bb301:
  store i64 0, ptr %l734, !tbaa !24
  br label %bb305
bb302:
  %t1940 = load i64, ptr %l64, !tbaa !24
  %t1941 = load i64, ptr %l63, !tbaa !24
  %t1944 = sub i64 %t1940, %t1941
  %t1945 = load i64, ptr %l65, !tbaa !24
  %t1948 = add i64 %t1944, %t1945
  %t1950 = sub i64 %t1948, 1
  %t1951 = load i64, ptr %l65, !tbaa !24
  %t1954 = sdiv i64 %t1950, %t1951
  store i64 %t1954, ptr %l737, !tbaa !24
  br label %bb304
bb303:
  store i64 0, ptr %l737, !tbaa !24
  br label %bb304
bb304:
  %t1956 = load i64, ptr %l737, !tbaa !24
  store i64 %t1956, ptr %l734, !tbaa !24
  br label %bb305
bb305:
  %t1957 = load i64, ptr %l734, !tbaa !24
  store i64 %t1957, ptr %l66, !tbaa !24
  store i64 0, ptr %l67, !tbaa !24
  br label %bb306
bb306:
  store %olang.scope zeroinitializer, ptr %s75
  %t1958 = load i64, ptr %l67, !tbaa !24
  %t1959 = load i64, ptr %l66, !tbaa !24
  %t1962 = icmp slt i64 %t1958, %t1959
  %t1964 = xor i1 %t1962, true
  br i1 %t1964, label %bb307, label %bb308
bb307:
  call void @__olang_scope_close(ptr %s75)
  br label %bb316
bb308:
  br label %bb309
bb309:
  %t1966 = load i64, ptr %l63, !tbaa !24
  %t1967 = load i64, ptr %l67, !tbaa !24
  %t1968 = load i64, ptr %l65, !tbaa !24
  %t1971 = mul i64 %t1967, %t1968
  %t1974 = add i64 %t1966, %t1971
  store i64 %t1974, ptr %l68, !tbaa !24
  %t1976 = load ptr, ptr %l0, !tbaa !29
  %t1978 = getelementptr %"compiler/emit:fnEm", ptr %t1976, i32 0, i32 4
  store ptr %t1978, ptr %l756, !tbaa !29
  %t1979 = load i64, ptr %l68, !tbaa !24
  store i64 %t1979, ptr %l757, !tbaa !24
  %t1980 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t1980, ptr %l758, !tbaa !27
  %t1981 = load ptr, ptr %l1, !tbaa !29
  %t1983 = getelementptr %"compiler/mir:Fn", ptr %t1981, i32 0, i32 5
  %t1985 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t1983)
  store i64 %t1985, ptr %l761
  br label %bb310
bb310:
  %t1986 = load i64, ptr %l68, !tbaa !24
  %t1987 = load i64, ptr %l761, !tbaa !24
  %t1989 = add i64 %t1987, %t1986
  %t1990 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d251, i32 0, i32 1) }, 1
  %t1991 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d251, i32 0, i32 1) }, 0
  %t1992 = load i64, ptr %l757, !tbaa !24
  %t1993 = call i64 @__olang_fmt_i64(ptr null, i64 %t1992)
  %t1994 = add i64 %t1991, %t1993
  %t1995 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t1996 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t1997 = add i64 %t1994, %t1996
  %t1998 = load { i64, ptr }, ptr %l758, !tbaa !27
  %t1999 = extractvalue { i64, ptr } %t1998, 1
  %t2000 = extractvalue { i64, ptr } %t1998, 0
  %t2001 = add i64 %t1997, %t2000
  %t2002 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t2003 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t2004 = add i64 %t2001, %t2003
  %t2006 = call i64 @__olang_fmt_i64(ptr null, i64 %t1989)
  %t2007 = add i64 %t2004, %t2006
  %t2008 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t2009 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t2010 = add i64 %t2007, %t2009
  %t2011 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2010)
  call void @olang_textcopy(ptr %t2011, ptr %t1990, i64 %t1991)
  %t2012 = getelementptr i8, ptr %t2011, i64 %t1991
  %t2013 = call i64 @__olang_fmt_i64(ptr %t2012, i64 %t1992)
  %t2014 = getelementptr i8, ptr %t2012, i64 %t1993
  call void @olang_textcopy(ptr %t2014, ptr %t1995, i64 %t1996)
  %t2015 = getelementptr i8, ptr %t2014, i64 %t1996
  call void @olang_textcopy(ptr %t2015, ptr %t1999, i64 %t2000)
  %t2016 = getelementptr i8, ptr %t2015, i64 %t2000
  call void @olang_textcopy(ptr %t2016, ptr %t2002, i64 %t2003)
  %t2017 = getelementptr i8, ptr %t2016, i64 %t2003
  %t2018 = call i64 @__olang_fmt_i64(ptr %t2017, i64 %t1989)
  %t2019 = getelementptr i8, ptr %t2017, i64 %t2006
  call void @olang_textcopy(ptr %t2019, ptr %t2008, i64 %t2009)
  %t2020 = insertvalue { i64, ptr } undef, i64 %t2010, 0
  %t2021 = insertvalue { i64, ptr } %t2020, ptr %t2011, 1
  %t2023 = extractvalue { i64, ptr } %t2021, 0
  %t2024 = extractvalue { i64, ptr } %t2021, 1
  %t2025 = mul i64 %t2023, 1
  %t2026 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2025)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2026, ptr %t2024, i64 %t2025, i1 false)
  %t2027 = insertvalue { i64, ptr } undef, i64 %t2023, 0
  %t2028 = insertvalue { i64, ptr } %t2027, ptr %t2026, 1
  %t2029 = load ptr, ptr %l756, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s75, ptr %t2029, { i64, ptr } %t2028)
  br label %bb311
bb311:
  %t2031 = load ptr, ptr %l0, !tbaa !29
  %t2033 = getelementptr %"compiler/emit:fnEm", ptr %t2031, i32 0, i32 4
  %t2034 = load i64, ptr %l68, !tbaa !24
  %t2035 = load i64, ptr %l68, !tbaa !24
  %t2036 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d255, i32 0, i32 1) }, 1
  %t2037 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d255, i32 0, i32 1) }, 0
  %t2039 = call i64 @__olang_fmt_i64(ptr null, i64 %t2034)
  %t2040 = add i64 %t2037, %t2039
  %t2041 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t2042 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t2043 = add i64 %t2040, %t2042
  %t2045 = call i64 @__olang_fmt_i64(ptr null, i64 %t2035)
  %t2046 = add i64 %t2043, %t2045
  %t2047 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t2048 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t2049 = add i64 %t2046, %t2048
  %t2050 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2049)
  call void @olang_textcopy(ptr %t2050, ptr %t2036, i64 %t2037)
  %t2051 = getelementptr i8, ptr %t2050, i64 %t2037
  %t2052 = call i64 @__olang_fmt_i64(ptr %t2051, i64 %t2034)
  %t2053 = getelementptr i8, ptr %t2051, i64 %t2039
  call void @olang_textcopy(ptr %t2053, ptr %t2041, i64 %t2042)
  %t2054 = getelementptr i8, ptr %t2053, i64 %t2042
  %t2055 = call i64 @__olang_fmt_i64(ptr %t2054, i64 %t2035)
  %t2056 = getelementptr i8, ptr %t2054, i64 %t2045
  call void @olang_textcopy(ptr %t2056, ptr %t2047, i64 %t2048)
  %t2057 = insertvalue { i64, ptr } undef, i64 %t2049, 0
  %t2058 = insertvalue { i64, ptr } %t2057, ptr %t2050, 1
  %t2060 = extractvalue { i64, ptr } %t2058, 0
  %t2061 = extractvalue { i64, ptr } %t2058, 1
  %t2062 = mul i64 %t2060, 1
  %t2063 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2062)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2063, ptr %t2061, i64 %t2062, i1 false)
  %t2064 = insertvalue { i64, ptr } undef, i64 %t2060, 0
  %t2065 = insertvalue { i64, ptr } %t2064, ptr %t2063, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s75, ptr %t2033, { i64, ptr } %t2065)
  br label %bb312
bb312:
  %t2068 = load ptr, ptr %l0, !tbaa !29
  %t2070 = getelementptr %"compiler/emit:fnEm", ptr %t2068, i32 0, i32 4
  store ptr %t2070, ptr %l773, !tbaa !29
  %t2071 = load i64, ptr %l68, !tbaa !24
  store i64 %t2071, ptr %l774, !tbaa !24
  %t2072 = load i64, ptr %l68, !tbaa !24
  store i64 %t2072, ptr %l775, !tbaa !24
  %t2073 = load ptr, ptr %l0, !tbaa !29
  %t2075 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgEntry(ptr %v0, ptr %s75, ptr %t2073)
  store { i64, ptr } %t2075, ptr %l777
  br label %bb313
bb313:
  %t2076 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d258, i32 0, i32 1) }, 1
  %t2077 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d258, i32 0, i32 1) }, 0
  %t2078 = load i64, ptr %l774, !tbaa !24
  %t2079 = call i64 @__olang_fmt_i64(ptr null, i64 %t2078)
  %t2080 = add i64 %t2077, %t2079
  %t2081 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d259, i32 0, i32 1) }, 1
  %t2082 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d259, i32 0, i32 1) }, 0
  %t2083 = add i64 %t2080, %t2082
  %t2084 = load i64, ptr %l775, !tbaa !24
  %t2085 = call i64 @__olang_fmt_i64(ptr null, i64 %t2084)
  %t2086 = add i64 %t2083, %t2085
  %t2087 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t2088 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t2089 = add i64 %t2086, %t2088
  %t2090 = load { i64, ptr }, ptr %l777, !tbaa !27
  %t2091 = extractvalue { i64, ptr } %t2090, 1
  %t2092 = extractvalue { i64, ptr } %t2090, 0
  %t2093 = add i64 %t2089, %t2092
  %t2094 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t2095 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t2096 = add i64 %t2093, %t2095
  %t2097 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2096)
  call void @olang_textcopy(ptr %t2097, ptr %t2076, i64 %t2077)
  %t2098 = getelementptr i8, ptr %t2097, i64 %t2077
  %t2099 = call i64 @__olang_fmt_i64(ptr %t2098, i64 %t2078)
  %t2100 = getelementptr i8, ptr %t2098, i64 %t2079
  call void @olang_textcopy(ptr %t2100, ptr %t2081, i64 %t2082)
  %t2101 = getelementptr i8, ptr %t2100, i64 %t2082
  %t2102 = call i64 @__olang_fmt_i64(ptr %t2101, i64 %t2084)
  %t2103 = getelementptr i8, ptr %t2101, i64 %t2085
  call void @olang_textcopy(ptr %t2103, ptr %t2087, i64 %t2088)
  %t2104 = getelementptr i8, ptr %t2103, i64 %t2088
  call void @olang_textcopy(ptr %t2104, ptr %t2091, i64 %t2092)
  %t2105 = getelementptr i8, ptr %t2104, i64 %t2092
  call void @olang_textcopy(ptr %t2105, ptr %t2094, i64 %t2095)
  %t2106 = insertvalue { i64, ptr } undef, i64 %t2096, 0
  %t2107 = insertvalue { i64, ptr } %t2106, ptr %t2097, 1
  %t2109 = extractvalue { i64, ptr } %t2107, 0
  %t2110 = extractvalue { i64, ptr } %t2107, 1
  %t2111 = mul i64 %t2109, 1
  %t2112 = call ptr @__olang_scope_alloc(ptr %s75, i64 %t2111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2112, ptr %t2110, i64 %t2111, i1 false)
  %t2113 = insertvalue { i64, ptr } undef, i64 %t2109, 0
  %t2114 = insertvalue { i64, ptr } %t2113, ptr %t2112, 1
  %t2115 = load ptr, ptr %l773, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s75, ptr %t2115, { i64, ptr } %t2114)
  br label %bb314
bb314:
  call void @__olang_scope_close(ptr %s75)
  br label %bb315
bb315:
  %t2117 = load i64, ptr %l67, !tbaa !24
  %t2119 = add i64 %t2117, 1
  store i64 %t2119, ptr %l67, !tbaa !24
  br label %bb306
bb316:
  call void @__olang_scope_close(ptr %s63)
  br label %bb317
bb317:
  %t2121 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2121, ptr %l782
  br label %bb318
bb318:
  %t2122 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l782
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2122, ptr %l69
  %t2123 = load ptr, ptr %l1, !tbaa !29
  %t2125 = getelementptr %"compiler/mir:Fn", ptr %t2123, i32 0, i32 22
  store ptr %t2125, ptr %l70, !tbaa !29
  store i64 0, ptr %l71, !tbaa !24
  br label %bb319
bb319:
  %t2127 = load i64, ptr %l71, !tbaa !24
  store i64 %t2127, ptr %l785, !tbaa !24
  %t2128 = load ptr, ptr %l70, !tbaa !29
  %t2130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t2128)
  store i64 %t2130, ptr %l787
  br label %bb320
bb320:
  %t2131 = load i64, ptr %l785, !tbaa !24
  %t2132 = load i64, ptr %l787, !tbaa !24
  %t2133 = icmp slt i64 %t2131, %t2132
  %t2135 = xor i1 %t2133, true
  br i1 %t2135, label %bb321, label %bb322
bb321:
  br label %bb327
bb322:
  br label %bb323
bb323:
  %t2137 = load ptr, ptr %l70, !tbaa !29
  %t2138 = load i64, ptr %l71, !tbaa !24
  %t2141 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t2137, i64 %t2138)
  store i32 %t2141, ptr %l792
  br label %bb324
bb324:
  %t2142 = load i32, ptr %l792, !tbaa !23
  %t2145 = sext i32 %t2142 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l69, i64 %t2145, i1 true)
  br label %bb325
bb325:
  br label %bb326
bb326:
  %t2148 = load i64, ptr %l71, !tbaa !24
  %t2150 = add i64 %t2148, 1
  store i64 %t2150, ptr %l71, !tbaa !24
  br label %bb319
bb327:
  store i64 0, ptr %l73, !tbaa !24
  %t2152 = load ptr, ptr %l1, !tbaa !29
  %t2154 = getelementptr %"compiler/mir:Fn", ptr %t2152, i32 0, i32 9
  %t2156 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t2154)
  store i64 %t2156, ptr %l800
  br label %bb328
bb328:
  %t2157 = load i64, ptr %l800, !tbaa !24
  store i64 %t2157, ptr %l74, !tbaa !24
  store i64 1, ptr %l75, !tbaa !24
  %t2158 = load i64, ptr %l74, !tbaa !24
  %t2159 = load i64, ptr %l73, !tbaa !24
  %t2162 = icmp sgt i64 %t2158, %t2159
  br i1 %t2162, label %bb329, label %bb330
bb329:
  %t2164 = load i64, ptr %l75, !tbaa !24
  %t2166 = icmp sgt i64 %t2164, 0
  br i1 %t2166, label %bb331, label %bb332
bb330:
  store i64 0, ptr %l804, !tbaa !24
  br label %bb334
bb331:
  %t2168 = load i64, ptr %l74, !tbaa !24
  %t2169 = load i64, ptr %l73, !tbaa !24
  %t2172 = sub i64 %t2168, %t2169
  %t2173 = load i64, ptr %l75, !tbaa !24
  %t2176 = add i64 %t2172, %t2173
  %t2178 = sub i64 %t2176, 1
  %t2179 = load i64, ptr %l75, !tbaa !24
  %t2182 = sdiv i64 %t2178, %t2179
  store i64 %t2182, ptr %l807, !tbaa !24
  br label %bb333
bb332:
  store i64 0, ptr %l807, !tbaa !24
  br label %bb333
bb333:
  %t2184 = load i64, ptr %l807, !tbaa !24
  store i64 %t2184, ptr %l804, !tbaa !24
  br label %bb334
bb334:
  %t2185 = load i64, ptr %l804, !tbaa !24
  store i64 %t2185, ptr %l76, !tbaa !24
  store i64 0, ptr %l77, !tbaa !24
  br label %bb335
bb335:
  store %olang.scope zeroinitializer, ptr %s84
  %t2186 = load i64, ptr %l77, !tbaa !24
  %t2187 = load i64, ptr %l76, !tbaa !24
  %t2190 = icmp slt i64 %t2186, %t2187
  %t2192 = xor i1 %t2190, true
  br i1 %t2192, label %bb336, label %bb337
bb336:
  call void @__olang_scope_close(ptr %s84)
  br label %bb369
bb337:
  br label %bb338
bb338:
  %t2194 = load i64, ptr %l73, !tbaa !24
  %t2195 = load i64, ptr %l77, !tbaa !24
  %t2196 = load i64, ptr %l75, !tbaa !24
  %t2199 = mul i64 %t2195, %t2196
  %t2202 = add i64 %t2194, %t2199
  store i64 %t2202, ptr %l78, !tbaa !24
  %t2204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2204, ptr %l825, !tbaa !29
  %t2205 = load i64, ptr %l78, !tbaa !24
  %t2207 = trunc i64 %t2205 to i32
  %t2210 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s84, i32 %t2207)
  store { i64, ptr } %t2210, ptr %l829
  br label %bb339
bb339:
  %t2211 = load { i64, ptr }, ptr %l829, !tbaa !27
  %t2212 = extractvalue { i64, ptr } %t2211, 0
  %t2213 = extractvalue { i64, ptr } %t2211, 1
  %t2214 = mul i64 %t2212, 1
  %t2215 = call ptr @__olang_scope_alloc(ptr %s84, i64 %t2214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2215, ptr %t2213, i64 %t2214, i1 false)
  %t2216 = insertvalue { i64, ptr } undef, i64 %t2212, 0
  %t2217 = insertvalue { i64, ptr } %t2216, ptr %t2215, 1
  %t2218 = load ptr, ptr %l825, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s84, ptr %t2218, { i64, ptr } %t2217)
  br label %bb340
bb340:
  %t2220 = load ptr, ptr %l1, !tbaa !29
  %t2222 = getelementptr %"compiler/mir:Fn", ptr %t2220, i32 0, i32 9
  %t2223 = load i64, ptr %l78, !tbaa !24
  %t2226 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t2222, i64 %t2223)
  store ptr %t2226, ptr %l834
  br label %bb341
bb341:
  %t2227 = load ptr, ptr %l834, !tbaa !29
  store ptr %t2227, ptr %l79, !tbaa !29
  %t2228 = load i64, ptr %l78, !tbaa !24
  %t2231 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l69, i64 %t2228)
  store i1 %t2231, ptr %l837
  br label %bb342
bb342:
  %t2232 = load i1, ptr %l837, !tbaa !21
  br i1 %t2232, label %bb343, label %bb344
bb343:
  %t2233 = load ptr, ptr %l0, !tbaa !29
  %t2235 = getelementptr %"compiler/emit:fnEm", ptr %t2233, i32 0, i32 0
  %t2236 = load ptr, ptr %t2235, !tbaa !29
  %t2238 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %t2236)
  store i1 %t2238, ptr %l841
  br label %bb345
bb344:
  store i1 false, ptr %l838, !tbaa !21
  br label %bb346
bb345:
  %t2239 = load i1, ptr %l841, !tbaa !21
  store i1 %t2239, ptr %l838, !tbaa !21
  br label %bb346
bb346:
  %t2240 = load i1, ptr %l838, !tbaa !21
  br i1 %t2240, label %bb347, label %bb348
bb347:
  store %olang.scope zeroinitializer, ptr %s85
  %t2241 = load ptr, ptr %l0, !tbaa !29
  %t2243 = getelementptr %"compiler/emit:fnEm", ptr %t2241, i32 0, i32 0
  %t2244 = load ptr, ptr %t2243, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s85, ptr %t2244, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d262, i32 0, i32 1) })
  br label %bb349
bb348:
  br label %bb351
bb349:
  %t2246 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s85, ptr %t2246, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d263, i32 0, i32 1) })
  br label %bb350
bb350:
  call void @__olang_scope_close(ptr %s85)
  br label %bb351
bb351:
  %t2248 = load ptr, ptr %l0, !tbaa !29
  %t2249 = load i64, ptr %l78, !tbaa !24
  %t2252 = getelementptr %"compiler/emit:fnEm", ptr %t2248, i32 0, i32 34
  store i64 %t2249, ptr %t2252, !tbaa !24
  store i64 0, ptr %l80, !tbaa !24
  %t2253 = load ptr, ptr %l79, !tbaa !29
  %t2255 = getelementptr %"compiler/mir:BasicBlock", ptr %t2253, i32 0, i32 0
  %t2257 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t2255)
  store i64 %t2257, ptr %l849
  br label %bb352
bb352:
  %t2258 = load i64, ptr %l849, !tbaa !24
  store i64 %t2258, ptr %l81, !tbaa !24
  store i64 1, ptr %l82, !tbaa !24
  %t2259 = load i64, ptr %l81, !tbaa !24
  %t2260 = load i64, ptr %l80, !tbaa !24
  %t2263 = icmp sgt i64 %t2259, %t2260
  br i1 %t2263, label %bb353, label %bb354
bb353:
  %t2265 = load i64, ptr %l82, !tbaa !24
  %t2267 = icmp sgt i64 %t2265, 0
  br i1 %t2267, label %bb355, label %bb356
bb354:
  store i64 0, ptr %l853, !tbaa !24
  br label %bb358
bb355:
  %t2269 = load i64, ptr %l81, !tbaa !24
  %t2270 = load i64, ptr %l80, !tbaa !24
  %t2273 = sub i64 %t2269, %t2270
  %t2274 = load i64, ptr %l82, !tbaa !24
  %t2277 = add i64 %t2273, %t2274
  %t2279 = sub i64 %t2277, 1
  %t2280 = load i64, ptr %l82, !tbaa !24
  %t2283 = sdiv i64 %t2279, %t2280
  store i64 %t2283, ptr %l856, !tbaa !24
  br label %bb357
bb356:
  store i64 0, ptr %l856, !tbaa !24
  br label %bb357
bb357:
  %t2285 = load i64, ptr %l856, !tbaa !24
  store i64 %t2285, ptr %l853, !tbaa !24
  br label %bb358
bb358:
  %t2286 = load i64, ptr %l853, !tbaa !24
  store i64 %t2286, ptr %l83, !tbaa !24
  store i64 0, ptr %l84, !tbaa !24
  br label %bb359
bb359:
  store %olang.scope zeroinitializer, ptr %s87
  %t2287 = load i64, ptr %l84, !tbaa !24
  %t2288 = load i64, ptr %l83, !tbaa !24
  %t2291 = icmp slt i64 %t2287, %t2288
  %t2293 = xor i1 %t2291, true
  br i1 %t2293, label %bb360, label %bb361
bb360:
  call void @__olang_scope_close(ptr %s87)
  br label %bb366
bb361:
  br label %bb362
bb362:
  %t2295 = load i64, ptr %l80, !tbaa !24
  %t2296 = load i64, ptr %l84, !tbaa !24
  %t2297 = load i64, ptr %l82, !tbaa !24
  %t2300 = mul i64 %t2296, %t2297
  %t2303 = add i64 %t2295, %t2300
  store i64 %t2303, ptr %l85, !tbaa !24
  %t2305 = load ptr, ptr %l0, !tbaa !29
  %t2306 = load i64, ptr %l85, !tbaa !24
  %t2309 = getelementptr %"compiler/emit:fnEm", ptr %t2305, i32 0, i32 35
  store i64 %t2306, ptr %t2309, !tbaa !24
  %t2310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2310, ptr %l876, !tbaa !29
  %t2311 = load ptr, ptr %l79, !tbaa !29
  %t2313 = getelementptr %"compiler/mir:BasicBlock", ptr %t2311, i32 0, i32 0
  %t2314 = load i64, ptr %l85, !tbaa !24
  %t2317 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t2313, i64 %t2314)
  store { i64, [21 x i64] } %t2317, ptr %l880
  br label %bb363
bb363:
  %t2318 = load { i64, [21 x i64] }, ptr %l880
  %t2319 = call ptr @__olang_scope_alloc_a(ptr %s87, i64 176, i64 8)
  store { i64, [21 x i64] } %t2318, ptr %t2319
  %t2320 = load ptr, ptr %l876, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estmt(ptr %v0, ptr %s87, ptr %t2320, ptr %t2319)
  br label %bb364
bb364:
  call void @__olang_scope_close(ptr %s87)
  br label %bb365
bb365:
  %t2322 = load i64, ptr %l84, !tbaa !24
  %t2324 = add i64 %t2322, 1
  store i64 %t2324, ptr %l84, !tbaa !24
  br label %bb359
bb366:
  %t2326 = load ptr, ptr %l0, !tbaa !29
  %t2327 = load ptr, ptr %l79, !tbaa !29
  %t2329 = getelementptr %"compiler/mir:BasicBlock", ptr %t2327, i32 0, i32 1
  %t2330 = load { i64, [8 x i64] }, ptr %t2329
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eterm(ptr %v0, ptr %t2326, { i64, [8 x i64] } %t2330)
  br label %bb367
bb367:
  call void @__olang_scope_close(ptr %s84)
  br label %bb368
bb368:
  %t2333 = load i64, ptr %l77, !tbaa !24
  %t2335 = add i64 %t2333, 1
  store i64 %t2335, ptr %l77, !tbaa !24
  br label %bb335
bb369:
  %t2337 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnds(ptr %v0, ptr %t2337)
  br label %bb370
bb370:
  %t2339 = load ptr, ptr %l0, !tbaa !29
  %t2341 = getelementptr %"compiler/emit:fnEm", ptr %t2339, i32 0, i32 14
  %t2342 = load i1, ptr %t2341, !tbaa !21
  br i1 %t2342, label %bb371, label %bb372
bb371:
  store %olang.scope zeroinitializer, ptr %s90
  %t2344 = load ptr, ptr %l0, !tbaa !29
  %t2346 = getelementptr %"compiler/emit:fnEm", ptr %t2344, i32 0, i32 5
  %t2348 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s90, ptr %t2346)
  store { i64, ptr } %t2348, ptr %l894
  br label %bb373
bb372:
  br label %bb386
bb373:
  %t2349 = load { i64, ptr }, ptr %l894, !tbaa !27
  %t2351 = extractvalue { i64, ptr } %t2349, 0
  %t2352 = extractvalue { i64, ptr } %t2349, 1
  %t2353 = mul i64 %t2351, 1
  %t2354 = call ptr @__olang_scope_alloc(ptr %s90, i64 %t2353)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2354, ptr %t2352, i64 %t2353, i1 false)
  %t2355 = insertvalue { i64, ptr } undef, i64 %t2351, 0
  %t2356 = insertvalue { i64, ptr } %t2355, ptr %t2354, 1
  store { i64, ptr } %t2356, ptr %l896, !tbaa !27
  %t2357 = load { i64, ptr }, ptr @G_2ecompiler_2femit_2eBigCloseMark, !tbaa !27
  store { i64, ptr } %t2357, ptr %l898, !tbaa !27
  %t2359 = load ptr, ptr %l0, !tbaa !29
  %t2361 = getelementptr %"compiler/emit:fnEm", ptr %t2359, i32 0, i32 13
  %t2362 = load i1, ptr %t2361, !tbaa !21
  br i1 %t2362, label %bb374, label %bb375
bb374:
  store { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d264, i32 0, i32 1) }, ptr %l902, !tbaa !27
  %t2364 = load { i64, ptr }, ptr %l902, !tbaa !27
  store { i64, ptr } %t2364, ptr %l901, !tbaa !27
  br label %bb376
bb375:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d265, i32 0, i32 1) }, ptr %l904, !tbaa !27
  %t2366 = load { i64, ptr }, ptr %l904, !tbaa !27
  store { i64, ptr } %t2366, ptr %l901, !tbaa !27
  br label %bb376
bb376:
  %t2368 = load { i64, ptr }, ptr %l901, !tbaa !27
  %t2369 = extractvalue { i64, ptr } %t2368, 0
  %t2370 = extractvalue { i64, ptr } %t2368, 1
  %t2371 = mul i64 %t2369, 1
  %t2372 = call ptr @__olang_scope_alloc(ptr %s90, i64 %t2371)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2372, ptr %t2370, i64 %t2371, i1 false)
  %t2373 = insertvalue { i64, ptr } undef, i64 %t2369, 0
  %t2374 = insertvalue { i64, ptr } %t2373, ptr %t2372, 1
  %t2375 = load ptr, ptr @__olang_prog_scope
  %t2376 = load { i64, ptr }, ptr %l896, !tbaa !27
  %t2377 = load { i64, ptr }, ptr %l898, !tbaa !27
  %t2379 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s90, ptr %t2375, ptr %s90, ptr %s90, { i64, ptr } %t2376, { i64, ptr } %t2377, { i64, ptr } %t2374)
  store { i64, ptr } %t2379, ptr %l907
  br label %bb377
bb377:
  %t2380 = load { i64, ptr }, ptr %l907, !tbaa !27
  %t2381 = extractvalue { i64, ptr } %t2380, 0
  store i64 %t2381, ptr %l908, !tbaa !24
  %t2382 = load i64, ptr %l908, !tbaa !24
  %t2383 = mul i64 %t2382, 1
  %t2384 = call ptr @__olang_scope_alloc(ptr %s90, i64 %t2383)
  %t2385 = insertvalue { i64, ptr } undef, i64 %t2382, 0
  %t2386 = insertvalue { i64, ptr } %t2385, ptr %t2384, 1
  store { i64, ptr } %t2386, ptr %l909, !tbaa !27
  %t2387 = getelementptr { i64, ptr }, ptr %l909, i32 0, i32 1
  %t2388 = load ptr, ptr %t2387, !tbaa !27
  %t2389 = getelementptr { i64, ptr }, ptr %l907, i32 0, i32 1
  %t2390 = load ptr, ptr %t2389, !tbaa !27
  %t2391 = load i64, ptr %l908, !tbaa !24
  %t2392 = mul i64 %t2391, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t2388, ptr %t2390, i64 %t2392, i1 false)
  %t2393 = load { i64, ptr }, ptr %l909, !tbaa !27
  store { i64, ptr } %t2393, ptr %l86, !tbaa !27
  %t2395 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2395, ptr %l911, !tbaa !29
  %t2396 = ptrtoint ptr %v0 to i64
  store i64 %t2396, ptr %l912, !tbaa !24
  %t2397 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e5
  br i1 %t2397, label %bb378, label %bb379
bb378:
  %t2399 = call ptr @__olang_region_make(ptr %v0)
  %t2400 = ptrtoint ptr %t2399 to i64
  store i64 %t2400, ptr %l912, !tbaa !24
  br label %bb379
bb379:
  %t2401 = load i64, ptr %l912
  %t2402 = inttoptr i64 %t2401 to ptr
  %t2403 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t2402)
  store %"std/prelude/text:StringBuilder" %t2403, ptr %l914
  br label %bb380
bb380:
  %t2404 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e5
  br i1 %t2404, label %bb381, label %bb382
bb381:
  %t2406 = load i64, ptr %l912
  %t2407 = inttoptr i64 %t2406 to ptr
  %t2408 = getelementptr %"std/prelude/text:StringBuilder", ptr %l914, i32 0, i32 0
  %t2409 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2408, i32 0, i32 0
  %t2410 = load { i64, ptr }, ptr %t2409
  %t2411 = extractvalue { i64, ptr } %t2410, 1
  %t2412 = call ptr @__olang_region_or(ptr %t2411, ptr null)
  %t2413 = icmp ne ptr %t2412, null
  %t2414 = select i1 %t2413, ptr %t2412, ptr null
  %t2415 = icmp eq ptr %t2414, %t2407
  call void @__olang_region_settle(ptr %t2407, i1 %t2415)
  br label %bb382
bb382:
  %t2416 = load ptr, ptr %l911, !tbaa !29
  %t2417 = getelementptr %"compiler/emit:fnEm", ptr %t2416, i32 0, i32 5
  %t2418 = load %"std/prelude/text:StringBuilder", ptr %t2417
  store %"std/prelude/text:StringBuilder" %t2418, ptr %l916
  %t2419 = load %"std/prelude/text:StringBuilder", ptr %l914
  %t2420 = load ptr, ptr %l911, !tbaa !29
  %t2421 = getelementptr %"compiler/emit:fnEm", ptr %t2420, i32 0, i32 5
  store %"std/prelude/text:StringBuilder" %t2419, ptr %t2421
  %t2422 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e5
  br i1 %t2422, label %bb383, label %bb384
bb383:
  %t2424 = getelementptr %"std/prelude/text:StringBuilder", ptr %l916, i32 0, i32 0
  %t2425 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2424, i32 0, i32 0
  %t2426 = load { i64, ptr }, ptr %t2425
  %t2427 = extractvalue { i64, ptr } %t2426, 1
  %t2428 = call ptr @__olang_region_or(ptr %t2427, ptr null)
  %t2429 = icmp ne ptr %t2428, null
  %t2430 = select i1 %t2429, ptr %t2428, ptr null
  call void @__olang_region_drop(ptr %t2430)
  store %"std/prelude/text:StringBuilder" zeroinitializer, ptr %l916
  br label %bb384
bb384:
  %t2431 = load ptr, ptr %l0, !tbaa !29
  %t2433 = getelementptr %"compiler/emit:fnEm", ptr %t2431, i32 0, i32 5
  %t2434 = load { i64, ptr }, ptr %l86, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s90, ptr %t2433, { i64, ptr } %t2434)
  br label %bb385
bb385:
  call void @__olang_scope_close(ptr %s90)
  br label %bb386
bb386:
  %t2437 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t2437, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d266, i32 0, i32 1) })
  br label %bb387
bb387:
  %t2439 = load ptr, ptr %l0, !tbaa !29
  %t2441 = getelementptr %"compiler/emit:fnEm", ptr %t2439, i32 0, i32 28
  %t2442 = load i1, ptr %t2441, !tbaa !21
  br i1 %t2442, label %bb388, label %bb389
bb388:
  store %olang.scope zeroinitializer, ptr %s91
  %t2444 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s91, ptr %t2444, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d267, i32 0, i32 1) })
  br label %bb390
bb389:
  br label %bb404
bb390:
  %t2446 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s91, ptr %t2446, { i64, ptr } { i64 77, ptr getelementptr inbounds (<{ i64, [77 x i8] }>, ptr @.d268, i32 0, i32 1) })
  br label %bb391
bb391:
  %t2448 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s91, ptr %t2448, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d269, i32 0, i32 1) })
  br label %bb392
bb392:
  %t2450 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s91, ptr %t2450, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d270, i32 0, i32 1) })
  br label %bb393
bb393:
  %t2452 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s91, ptr %t2452, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d271, i32 0, i32 1) })
  br label %bb394
bb394:
  %t2454 = load ptr, ptr %l0, !tbaa !29
  %t2456 = getelementptr %"compiler/emit:fnEm", ptr %t2454, i32 0, i32 13
  %t2457 = load i1, ptr %t2456, !tbaa !21
  br i1 %t2457, label %bb395, label %bb396
bb395:
  store %olang.scope zeroinitializer, ptr %s92
  %t2459 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s92, ptr %t2459, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d272, i32 0, i32 1) })
  br label %bb397
bb396:
  br label %bb398
bb397:
  call void @__olang_scope_close(ptr %s92)
  br label %bb398
bb398:
  %t2461 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s91, ptr %t2461, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d273, i32 0, i32 1) })
  br label %bb399
bb399:
  %t2463 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s91, ptr %t2463, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d274, i32 0, i32 1) })
  br label %bb400
bb400:
  %t2465 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s91, ptr %t2465, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d275, i32 0, i32 1) })
  br label %bb401
bb401:
  %t2467 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s91, ptr %t2467, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d276, i32 0, i32 1) })
  br label %bb402
bb402:
  %t2469 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s91, ptr %t2469, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d277, i32 0, i32 1) })
  br label %bb403
bb403:
  call void @__olang_scope_close(ptr %s91)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb404:
  %t2471 = load ptr, ptr %l0, !tbaa !29
  %t2473 = getelementptr %"compiler/emit:fnEm", ptr %t2471, i32 0, i32 13
  %t2474 = load i1, ptr %t2473, !tbaa !21
  br i1 %t2474, label %bb405, label %bb406
bb405:
  store %olang.scope zeroinitializer, ptr %s93
  %t2476 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s93, ptr %t2476, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d278, i32 0, i32 1) })
  br label %bb407
bb406:
  br label %bb408
bb407:
  call void @__olang_scope_close(ptr %s93)
  br label %bb408
bb408:
  %t2478 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t2480 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t2478, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d279, i32 0, i32 1) })
  store i1 %t2480, ptr %l941
  br label %bb409
bb409:
  %t2481 = load i1, ptr %l941, !tbaa !21
  %t2482 = xor i1 %t2481, true
  br i1 %t2482, label %bb410, label %bb411
bb410:
  store %olang.scope zeroinitializer, ptr %s94
  %t2484 = load ptr, ptr %l0, !tbaa !29
  %t2485 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t2486 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t2487 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t2489 = extractvalue { i64, ptr } %t2485, 1
  %t2490 = extractvalue { i64, ptr } %t2485, 0
  %t2491 = add i64 %t2487, %t2490
  %t2492 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t2493 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t2494 = add i64 %t2491, %t2493
  %t2495 = call ptr @__olang_scope_alloc(ptr %s94, i64 %t2494)
  call void @olang_textcopy(ptr %t2495, ptr %t2486, i64 %t2487)
  %t2496 = getelementptr i8, ptr %t2495, i64 %t2487
  call void @olang_textcopy(ptr %t2496, ptr %t2489, i64 %t2490)
  %t2497 = getelementptr i8, ptr %t2496, i64 %t2490
  call void @olang_textcopy(ptr %t2497, ptr %t2492, i64 %t2493)
  %t2498 = insertvalue { i64, ptr } undef, i64 %t2494, 0
  %t2499 = insertvalue { i64, ptr } %t2498, ptr %t2495, 1
  %t2501 = extractvalue { i64, ptr } %t2499, 0
  %t2502 = extractvalue { i64, ptr } %t2499, 1
  %t2503 = mul i64 %t2501, 1
  %t2504 = call ptr @__olang_scope_alloc(ptr %s94, i64 %t2503)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2504, ptr %t2502, i64 %t2503, i1 false)
  %t2505 = insertvalue { i64, ptr } undef, i64 %t2501, 0
  %t2506 = insertvalue { i64, ptr } %t2505, ptr %t2504, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s94, ptr %t2484, { i64, ptr } %t2506)
  br label %bb412
bb411:
  store %olang.scope zeroinitializer, ptr %s97
  %t2509 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s97, ptr %t2509, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d282, i32 0, i32 1) })
  br label %bb414
bb412:
  %t2511 = load ptr, ptr %l0, !tbaa !29
  %t2512 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t2513 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t2514 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t2516 = extractvalue { i64, ptr } %t2512, 1
  %t2517 = extractvalue { i64, ptr } %t2512, 0
  %t2518 = add i64 %t2514, %t2517
  %t2519 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t2520 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t2521 = add i64 %t2518, %t2520
  %t2522 = call ptr @__olang_scope_alloc(ptr %s94, i64 %t2521)
  call void @olang_textcopy(ptr %t2522, ptr %t2513, i64 %t2514)
  %t2523 = getelementptr i8, ptr %t2522, i64 %t2514
  call void @olang_textcopy(ptr %t2523, ptr %t2516, i64 %t2517)
  %t2524 = getelementptr i8, ptr %t2523, i64 %t2517
  call void @olang_textcopy(ptr %t2524, ptr %t2519, i64 %t2520)
  %t2525 = insertvalue { i64, ptr } undef, i64 %t2521, 0
  %t2526 = insertvalue { i64, ptr } %t2525, ptr %t2522, 1
  %t2528 = extractvalue { i64, ptr } %t2526, 0
  %t2529 = extractvalue { i64, ptr } %t2526, 1
  %t2530 = mul i64 %t2528, 1
  %t2531 = call ptr @__olang_scope_alloc(ptr %s94, i64 %t2530)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2531, ptr %t2529, i64 %t2530, i1 false)
  %t2532 = insertvalue { i64, ptr } undef, i64 %t2528, 0
  %t2533 = insertvalue { i64, ptr } %t2532, ptr %t2531, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s94, ptr %t2511, { i64, ptr } %t2533)
  br label %bb413
bb413:
  call void @__olang_scope_close(ptr %s94)
  br label %bb415
bb414:
  call void @__olang_scope_close(ptr %s97)
  br label %bb415
bb415:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esatMulWide(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l35 = alloca i1
  %l36 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l48 = alloca i64
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca { i64, ptr }
  %l72 = alloca i64
  %l80 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = mul i64 2, %t1
  %t4 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t7 = call i64 @__olang_fmt_i64(ptr null, i64 %t3)
  %t8 = add i64 %t5, %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t4, i64 %t5)
  %t10 = getelementptr i8, ptr %t9, i64 %t5
  %t11 = call i64 @__olang_fmt_i64(ptr %t10, i64 %t3)
  %t12 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t9, 1
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d286, i32 0, i32 1) })
  store i1 %t17, ptr %l15
  br label %bb1
bb1:
  %t18 = load i1, ptr %l15, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d287, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d288, i32 0, i32 1) }, ptr %l16, !tbaa !27
  br label %bb4
bb4:
  %t19 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t19, ptr %l7, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t21, 1
  %t27 = extractvalue { i64, ptr } %t21, 0
  %t29 = extractvalue { i64, ptr } %t22, 1
  %t30 = extractvalue { i64, ptr } %t22, 0
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t34 = add i64 %t31, %t33
  %t36 = extractvalue { i64, ptr } %a4, 1
  %t37 = extractvalue { i64, ptr } %a4, 0
  %t38 = add i64 %t34, %t37
  %t39 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t43 = extractvalue { i64, ptr } %t24, 1
  %t44 = extractvalue { i64, ptr } %t24, 0
  %t45 = add i64 %t41, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t26, i64 %t27)
  %t47 = getelementptr i8, ptr %t46, i64 %t27
  call void @olang_textcopy(ptr %t47, ptr %t29, i64 %t30)
  %t48 = getelementptr i8, ptr %t47, i64 %t30
  call void @olang_textcopy(ptr %t48, ptr %t32, i64 %t33)
  %t49 = getelementptr i8, ptr %t48, i64 %t33
  call void @olang_textcopy(ptr %t49, ptr %t36, i64 %t37)
  %t50 = getelementptr i8, ptr %t49, i64 %t37
  call void @olang_textcopy(ptr %t50, ptr %t39, i64 %t40)
  %t51 = getelementptr i8, ptr %t50, i64 %t40
  call void @olang_textcopy(ptr %t51, ptr %t43, i64 %t44)
  %t52 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t46, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t63 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t20, { i64, ptr } %t60)
  store { i64, ptr } %t63, ptr %l24
  br label %bb5
bb5:
  %t64 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t64, ptr %l8, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t66, 1
  %t72 = extractvalue { i64, ptr } %t66, 0
  %t74 = extractvalue { i64, ptr } %t67, 1
  %t75 = extractvalue { i64, ptr } %t67, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t81 = extractvalue { i64, ptr } %a5, 1
  %t82 = extractvalue { i64, ptr } %a5, 0
  %t83 = add i64 %t79, %t82
  %t84 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t88 = extractvalue { i64, ptr } %t69, 1
  %t89 = extractvalue { i64, ptr } %t69, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t71, i64 %t72)
  %t92 = getelementptr i8, ptr %t91, i64 %t72
  call void @olang_textcopy(ptr %t92, ptr %t74, i64 %t75)
  %t93 = getelementptr i8, ptr %t92, i64 %t75
  call void @olang_textcopy(ptr %t93, ptr %t77, i64 %t78)
  %t94 = getelementptr i8, ptr %t93, i64 %t78
  call void @olang_textcopy(ptr %t94, ptr %t81, i64 %t82)
  %t95 = getelementptr i8, ptr %t94, i64 %t82
  call void @olang_textcopy(ptr %t95, ptr %t84, i64 %t85)
  %t96 = getelementptr i8, ptr %t95, i64 %t85
  call void @olang_textcopy(ptr %t96, ptr %t88, i64 %t89)
  %t97 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t91, 1
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t101 = extractvalue { i64, ptr } %t98, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t108 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t65, { i64, ptr } %t105)
  store { i64, ptr } %t108, ptr %l32
  br label %bb6
bb6:
  %t109 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t109, ptr %l9, !tbaa !27
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l33, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t111, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) })
  store i1 %t113, ptr %l35
  br label %bb7
bb7:
  %t114 = load i1, ptr %l35, !tbaa !21
  br i1 %t114, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d294, i32 0, i32 1) }, ptr %l36, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d295, i32 0, i32 1) }, ptr %l36, !tbaa !27
  br label %bb10
bb10:
  %t115 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t118 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t120 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = add i64 %t119, %t122
  %t125 = extractvalue { i64, ptr } %t115, 1
  %t126 = extractvalue { i64, ptr } %t115, 0
  %t127 = add i64 %t123, %t126
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t130 = add i64 %t127, %t129
  %t132 = extractvalue { i64, ptr } %t116, 1
  %t133 = extractvalue { i64, ptr } %t116, 0
  %t134 = add i64 %t130, %t133
  %t135 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t139 = extractvalue { i64, ptr } %t117, 1
  %t140 = extractvalue { i64, ptr } %t117, 0
  %t141 = add i64 %t137, %t140
  %t142 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t141)
  call void @olang_textcopy(ptr %t142, ptr %t118, i64 %t119)
  %t143 = getelementptr i8, ptr %t142, i64 %t119
  call void @olang_textcopy(ptr %t143, ptr %t121, i64 %t122)
  %t144 = getelementptr i8, ptr %t143, i64 %t122
  call void @olang_textcopy(ptr %t144, ptr %t125, i64 %t126)
  %t145 = getelementptr i8, ptr %t144, i64 %t126
  call void @olang_textcopy(ptr %t145, ptr %t128, i64 %t129)
  %t146 = getelementptr i8, ptr %t145, i64 %t129
  call void @olang_textcopy(ptr %t146, ptr %t132, i64 %t133)
  %t147 = getelementptr i8, ptr %t146, i64 %t133
  call void @olang_textcopy(ptr %t147, ptr %t135, i64 %t136)
  %t148 = getelementptr i8, ptr %t147, i64 %t136
  call void @olang_textcopy(ptr %t148, ptr %t139, i64 %t140)
  %t149 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t142, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = extractvalue { i64, ptr } %t150, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t158 = load ptr, ptr %l33, !tbaa !29
  %t160 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t158, { i64, ptr } %t157)
  store { i64, ptr } %t160, ptr %l42
  br label %bb11
bb11:
  %t161 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t161, ptr %l10, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t164 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t162, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d299, i32 0, i32 1) })
  store i1 %t164, ptr %l44
  br label %bb12
bb12:
  %t165 = load i1, ptr %l44, !tbaa !21
  br i1 %t165, label %bb13, label %bb14
bb13:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t168 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t169 = load i64, ptr %l3, !tbaa !24
  store i64 %t169, ptr %l48, !tbaa !24
  %t170 = load i64, ptr %l48, !tbaa !24
  %t171 = load i64, ptr %l48, !tbaa !24
  %t172 = shl i64 1, %t171
  %t174 = sub i64 %t172, 1
  %t179 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t166, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d300, i32 0, i32 1) }, { i64, ptr } %t167, { i64, ptr } %t168, i64 %t174)
  store { i64, ptr } %t179, ptr %l51
  br label %bb15
bb14:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l55, !tbaa !29
  %t181 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t181, ptr %l56, !tbaa !27
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t185 = load i64, ptr %l3, !tbaa !24
  %t187 = sub i64 %t185, 1
  store i64 %t187, ptr %l61, !tbaa !24
  %t188 = load i64, ptr %l61, !tbaa !24
  %t189 = load i64, ptr %l61, !tbaa !24
  %t190 = shl i64 1, %t189
  %t192 = sub i64 %t190, 1
  %t197 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t182, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d301, i32 0, i32 1) }, { i64, ptr } %t183, { i64, ptr } %t184, i64 %t192)
  store { i64, ptr } %t197, ptr %l64
  br label %bb19
bb15:
  %t198 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  %t200 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  store i64 %t201, ptr %l53, !tbaa !24
  %t203 = load i64, ptr %l53, !tbaa !24
  %t204 = icmp eq i64 %t199, %t203
  br i1 %t204, label %bb16, label %bb17
bb16:
  %t206 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = load i64, ptr %l53, !tbaa !24
  %t211 = mul i64 %t210, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t207, ptr %t209, i64 %t211, i1 false)
  br label %bb18
bb17:
  %t212 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t212, ptr %l10, !tbaa !27
  br label %bb18
bb18:
  br label %bb24
bb19:
  %t213 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  %t215 = extractvalue { i64, ptr } %t213, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t220 = load i64, ptr %l3, !tbaa !24
  %t222 = sub i64 %t220, 1
  store i64 %t222, ptr %l67, !tbaa !24
  %t223 = load i64, ptr %l67, !tbaa !24
  %t224 = load i64, ptr %l67, !tbaa !24
  %t225 = shl i64 1, %t224
  %t227 = sub i64 0, %t225
  %t228 = load ptr, ptr %l55, !tbaa !29
  %t229 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t232 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t228, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d302, i32 0, i32 1) }, { i64, ptr } %t229, { i64, ptr } %t219, i64 %t227)
  store { i64, ptr } %t232, ptr %l70
  br label %bb20
bb20:
  %t233 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  %t235 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  store i64 %t236, ptr %l72, !tbaa !24
  %t238 = load i64, ptr %l72, !tbaa !24
  %t239 = icmp eq i64 %t234, %t238
  br i1 %t239, label %bb21, label %bb22
bb21:
  %t241 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = load i64, ptr %l72, !tbaa !24
  %t246 = mul i64 %t245, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t242, ptr %t244, i64 %t246, i1 false)
  br label %bb23
bb22:
  %t247 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t247, ptr %l10, !tbaa !27
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t250 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t251 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t252 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t253 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t255 = extractvalue { i64, ptr } %t249, 1
  %t256 = extractvalue { i64, ptr } %t249, 0
  %t257 = add i64 %t253, %t256
  %t258 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t259 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t260 = add i64 %t257, %t259
  %t262 = extractvalue { i64, ptr } %t250, 1
  %t263 = extractvalue { i64, ptr } %t250, 0
  %t264 = add i64 %t260, %t263
  %t265 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t266 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
  %t267 = add i64 %t264, %t266
  %t269 = extractvalue { i64, ptr } %t251, 1
  %t270 = extractvalue { i64, ptr } %t251, 0
  %t271 = add i64 %t267, %t270
  %t272 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t271)
  call void @olang_textcopy(ptr %t272, ptr %t252, i64 %t253)
  %t273 = getelementptr i8, ptr %t272, i64 %t253
  call void @olang_textcopy(ptr %t273, ptr %t255, i64 %t256)
  %t274 = getelementptr i8, ptr %t273, i64 %t256
  call void @olang_textcopy(ptr %t274, ptr %t258, i64 %t259)
  %t275 = getelementptr i8, ptr %t274, i64 %t259
  call void @olang_textcopy(ptr %t275, ptr %t262, i64 %t263)
  %t276 = getelementptr i8, ptr %t275, i64 %t263
  call void @olang_textcopy(ptr %t276, ptr %t265, i64 %t266)
  %t277 = getelementptr i8, ptr %t276, i64 %t266
  call void @olang_textcopy(ptr %t277, ptr %t269, i64 %t270)
  %t278 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t272, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = extractvalue { i64, ptr } %t279, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t289 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v5, ptr %v5, ptr %t248, { i64, ptr } %t286)
  store { i64, ptr } %t289, ptr %l80
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t290 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t290, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2esrcAddr(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { { i64, ptr }, i32 }
  %lp4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca %"compiler/source:Span"
  %l14 = alloca { { i64, ptr }, i32 }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l2
  br label %bb3
bb2:
  br label %bb5
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/mir:Lvalue", ptr %l2
  %t14 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s1, ptr %t10, %"compiler/mir:Lvalue" %t11)
  store { { i64, ptr }, i32 } %t14, ptr %l14
  br label %bb4
bb4:
  %t15 = load { { i64, ptr }, i32 }, ptr %l14
  store { { i64, ptr }, i32 } %t15, ptr %l3
  %t16 = getelementptr { { i64, ptr }, i32 }, ptr %l3, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l16, !tbaa !24
  %t20 = load i64, ptr %l16, !tbaa !24
  %t21 = mul i64 %t20, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l17, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l16, !tbaa !24
  %t30 = mul i64 %t29, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t26, ptr %t28, i64 %t30, i1 false)
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t31, ptr %lp4
  %t32 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t33 = load ptr, ptr %lp4
  store { i64, ptr } %t32, ptr %t33, !tbaa !27
  %t34 = load ptr, ptr %lp4
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb5:
  %t37 = load { i64, [4 x i64] }, ptr %l1
  %t39 = extractvalue { i64, [4 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 3
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t42 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t42, i32 0, i32 0
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l5, !tbaa !23
  %t46 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t47 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t46, i32 0, i32 1
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l6, !tbaa !23
  %t50 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t51 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t50, i32 0, i32 2
  %t52 = load i64, ptr %t51
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t55 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t54, i32 0, i32 3
  %t56 = load %"compiler/source:Span", ptr %t55
  store %"compiler/source:Span" %t56, ptr %l8
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l5, !tbaa !23
  %t60 = load i32, ptr %l6, !tbaa !23
  %t61 = load i64, ptr %l7, !tbaa !24
  %t62 = load %"compiler/source:Span", ptr %l8
  %t68 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edata(ptr %v0, ptr %v1, ptr %t58, i32 %t59, i32 %t60, i64 %t61, %"compiler/source:Span" %t62, i1 true)
  store { i64, ptr } %t68, ptr %l30
  br label %bb9
bb9:
  %t69 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d306, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t70, ptr %l32, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l33, !tbaa !24
  %t73 = load i64, ptr %l33, !tbaa !24
  %t74 = mul i64 %t73, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l34, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l33, !tbaa !24
  %t83 = mul i64 %t82, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t79, ptr %t81, i64 %t83, i1 false)
  %t84 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t84, ptr %l32, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_37dcdc821423a995_2a435c3b360fb831)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etmp(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t2, i32 0, i32 6
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/emit:fnEm", ptr %t8, i32 0, i32 6
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:fnEm", ptr %t10, i32 0, i32 6
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t17 = call i64 @__olang_fmt_i64(ptr null, i64 %t13)
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t14, i64 %t15)
  %t20 = getelementptr i8, ptr %t19, i64 %t15
  %t21 = call i64 @__olang_fmt_i64(ptr %t20, i64 %t13)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t19, 1
  store { i64, ptr } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %lp12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca { i64, ptr }
  %lp21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l34 = alloca i32
  %l38 = alloca i1
  %l41 = alloca i1
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca i1
  %l62 = alloca i64
  %l67 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l82 = alloca i32
  %l88 = alloca i32
  %l91 = alloca i64
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
  %l101 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l132 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca { i64, ptr }
  %l135 = alloca i64
  %l138 = alloca i64
  %l139 = alloca i64
  %l144 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l148 = alloca i64
  %l155 = alloca { i64, ptr }
  %l158 = alloca i32
  %l161 = alloca i1
  %l167 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l187 = alloca i64
  %l188 = alloca { i64, ptr }
  %l194 = alloca i64
  %l197 = alloca i64
  %l220 = alloca { i64, ptr }
  %l221 = alloca ptr
  %l222 = alloca { i64, ptr }
  %l223 = alloca i64
  %l224 = alloca { i64, ptr }
  %l226 = alloca i64
  %l228 = alloca i64
  %l234 = alloca { i64, ptr }
  %l236 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a3, ptr %l3
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
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a2)
  store i32 %t13, ptr %l34
  br label %bb1
bb1:
  %t14 = load i32, ptr %l34, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t19 = icmp eq i32 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb5
bb3:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = load i32, ptr %l5, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l41
  br label %bb4
bb4:
  %t26 = load i1, ptr %l41, !tbaa !21
  store i1 %t26, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l38, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = extractvalue { i64, ptr } %t28, 0
  %t32 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t30, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t37 = load i32, ptr %l5, !tbaa !23
  %t40 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l46
  br label %bb9
bb9:
  %t41 = load i1, ptr %l46, !tbaa !21
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l47, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t43, ptr %l48, !tbaa !27
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l5, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v2, ptr %t44, i32 %t45)
  store { i64, ptr } %t48, ptr %l51
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t49 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t60 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t57, i64 %t58)
  %t63 = getelementptr i8, ptr %t62, i64 %t58
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t56)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t62, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = extractvalue { i64, ptr } %t66, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l47, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t78 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebitcast(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t74, { i64, ptr } %t75, { i64, ptr } %t55, { i64, ptr } %t73)
  store { i64, ptr } %t78, ptr %l56
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t79 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb14:
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t81 = load i32, ptr %l5, !tbaa !23
  %t84 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t84, ptr %l59
  br label %bb15
bb15:
  %t85 = load i1, ptr %l59, !tbaa !21
  br i1 %t85, label %bb16, label %bb17
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l5, !tbaa !23
  %t90 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t86, i32 %t87)
  store i64 %t90, ptr %l62
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t91 = load i64, ptr %l62, !tbaa !24
  %t92 = mul i64 8, %t91
  store i64 %t92, ptr %l6, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t96 = load i32, ptr %l5, !tbaa !23
  %t100 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easInt(ptr %v0, ptr %v1, ptr %v2, ptr %t94, { i64, ptr } %t95, i32 %t96)
  store { i64, ptr } %t100, ptr %l67
  br label %bb19
bb19:
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t101, ptr %lp7
  %t102 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t103 = load ptr, ptr %lp7
  store { i64, ptr } %t102, ptr %t103, !tbaa !27
  %t104 = load i64, ptr %l3, !tbaa !24
  %t105 = load i64, ptr %l6, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  br i1 %t108, label %bb20, label %bb21
bb20:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l6, !tbaa !24
  %t112 = load ptr, ptr %lp7
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l3, !tbaa !24
  %t115 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t118 = call i64 @__olang_fmt_i64(ptr null, i64 %t111)
  %t119 = add i64 %t116, %t118
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t122 = add i64 %t119, %t121
  %t124 = extractvalue { i64, ptr } %t113, 1
  %t125 = extractvalue { i64, ptr } %t113, 0
  %t126 = add i64 %t122, %t125
  %t127 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t129 = add i64 %t126, %t128
  %t131 = call i64 @__olang_fmt_i64(ptr null, i64 %t114)
  %t132 = add i64 %t129, %t131
  %t133 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t132)
  call void @olang_textcopy(ptr %t133, ptr %t115, i64 %t116)
  %t134 = getelementptr i8, ptr %t133, i64 %t116
  %t135 = call i64 @__olang_fmt_i64(ptr %t134, i64 %t111)
  %t136 = getelementptr i8, ptr %t134, i64 %t118
  call void @olang_textcopy(ptr %t136, ptr %t120, i64 %t121)
  %t137 = getelementptr i8, ptr %t136, i64 %t121
  call void @olang_textcopy(ptr %t137, ptr %t124, i64 %t125)
  %t138 = getelementptr i8, ptr %t137, i64 %t125
  call void @olang_textcopy(ptr %t138, ptr %t127, i64 %t128)
  %t139 = getelementptr i8, ptr %t138, i64 %t128
  %t140 = call i64 @__olang_fmt_i64(ptr %t139, i64 %t114)
  %t141 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t133, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t152 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t110, { i64, ptr } %t149)
  store { i64, ptr } %t152, ptr %l78
  br label %bb22
bb21:
  %t153 = load ptr, ptr %lp7
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l71, !tbaa !27
  br label %bb23
bb22:
  %t156 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t156, ptr %l71, !tbaa !27
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t157 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t157, ptr %rv
  br label %ret
bb24:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l5, !tbaa !23
  %t162 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t158, i32 %t159)
  store i32 %t162, ptr %l82
  br label %bb25
bb25:
  %t163 = load i32, ptr %l82, !tbaa !23
  store i32 %t163, ptr %l8, !tbaa !23
  %t164 = load i32, ptr %l8, !tbaa !23
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = icmp ne i32 %t164, %t165
  br i1 %t168, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s7
  %t170 = load ptr, ptr %l4, !tbaa !29
  %t171 = load i32, ptr %l8, !tbaa !23
  %t174 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t170, i32 %t171)
  store i32 %t174, ptr %l88
  br label %bb28
bb27:
  br label %bb50
bb28:
  %t175 = load i32, ptr %l88, !tbaa !23
  store i32 %t175, ptr %l9, !tbaa !23
  %t176 = load ptr, ptr %l4, !tbaa !29
  %t177 = load i32, ptr %l9, !tbaa !23
  %t180 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t176, i32 %t177)
  store i64 %t180, ptr %l91
  br label %bb29
bb29:
  %t181 = load i64, ptr %l91, !tbaa !24
  store i64 %t181, ptr %l10, !tbaa !24
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i32, ptr %l8, !tbaa !23
  %t186 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s7, ptr %t182, i32 %t183)
  store { i64, ptr } %t186, ptr %l94
  br label %bb30
bb30:
  %t187 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t187, ptr %l11, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d312, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t188, ptr %l96, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 0
  store i64 %t190, ptr %l97, !tbaa !24
  %t191 = load i64, ptr %l97, !tbaa !24
  %t192 = mul i64 %t191, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t192)
  %t194 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  store { i64, ptr } %t195, ptr %l98, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = load i64, ptr %l97, !tbaa !24
  %t201 = mul i64 %t200, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t197, ptr %t199, i64 %t201, i1 false)
  %t202 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t202, ptr %lp12
  %t203 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t204 = load ptr, ptr %lp12
  store { i64, ptr } %t203, ptr %t204, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i32, ptr %l8, !tbaa !23
  %t209 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t205, i32 %t206)
  store i64 %t209, ptr %l101
  br label %bb31
bb31:
  %t210 = load i64, ptr %l101, !tbaa !24
  store i64 %t210, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t211 = load i64, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l13, !tbaa !24
  %t215 = icmp sgt i64 %t211, %t212
  br i1 %t215, label %bb32, label %bb33
bb32:
  %t217 = load i64, ptr %l15, !tbaa !24
  %t219 = icmp sgt i64 %t217, 0
  br i1 %t219, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb37
bb34:
  %t221 = load i64, ptr %l14, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = sub i64 %t221, %t222
  %t226 = load i64, ptr %l15, !tbaa !24
  %t229 = add i64 %t225, %t226
  %t231 = sub i64 %t229, 1
  %t232 = load i64, ptr %l15, !tbaa !24
  %t235 = sdiv i64 %t231, %t232
  store i64 %t235, ptr %l108, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb36
bb36:
  %t237 = load i64, ptr %l108, !tbaa !24
  store i64 %t237, ptr %l105, !tbaa !24
  br label %bb37
bb37:
  %t238 = load i64, ptr %l105, !tbaa !24
  store i64 %t238, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  %t239 = load i64, ptr %l17, !tbaa !24
  %t240 = load i64, ptr %l16, !tbaa !24
  %t243 = icmp slt i64 %t239, %t240
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s9)
  br label %bb49
bb40:
  br label %bb41
bb41:
  %t247 = load i64, ptr %l13, !tbaa !24
  %t248 = load i64, ptr %l17, !tbaa !24
  %t249 = load i64, ptr %l15, !tbaa !24
  %t252 = mul i64 %t248, %t249
  %t255 = add i64 %t247, %t252
  store i64 %t255, ptr %l18, !tbaa !24
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t260 = load i64, ptr %l18, !tbaa !24
  %t261 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
  %t264 = extractvalue { i64, ptr } %t258, 1
  %t265 = extractvalue { i64, ptr } %t258, 0
  %t266 = add i64 %t262, %t265
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t269 = add i64 %t266, %t268
  %t271 = extractvalue { i64, ptr } %t259, 1
  %t272 = extractvalue { i64, ptr } %t259, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t278 = call i64 @__olang_fmt_i64(ptr null, i64 %t260)
  %t279 = add i64 %t276, %t278
  %t280 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t279)
  call void @olang_textcopy(ptr %t280, ptr %t261, i64 %t262)
  %t281 = getelementptr i8, ptr %t280, i64 %t262
  call void @olang_textcopy(ptr %t281, ptr %t264, i64 %t265)
  %t282 = getelementptr i8, ptr %t281, i64 %t265
  call void @olang_textcopy(ptr %t282, ptr %t267, i64 %t268)
  %t283 = getelementptr i8, ptr %t282, i64 %t268
  call void @olang_textcopy(ptr %t283, ptr %t271, i64 %t272)
  %t284 = getelementptr i8, ptr %t283, i64 %t272
  call void @olang_textcopy(ptr %t284, ptr %t274, i64 %t275)
  %t285 = getelementptr i8, ptr %t284, i64 %t275
  %t286 = call i64 @__olang_fmt_i64(ptr %t285, i64 %t260)
  %t287 = insertvalue { i64, ptr } undef, i64 %t279, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t280, 1
  %t290 = extractvalue { i64, ptr } %t288, 0
  %t291 = extractvalue { i64, ptr } %t288, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t298 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t257, { i64, ptr } %t295)
  store { i64, ptr } %t298, ptr %l132
  br label %bb42
bb42:
  %t299 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l133, !tbaa !29
  %t301 = load ptr, ptr %lp12
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  store { i64, ptr } %t302, ptr %l134, !tbaa !27
  %t303 = load i64, ptr %l3, !tbaa !24
  store i64 %t303, ptr %l135, !tbaa !24
  %t304 = load i64, ptr %l18, !tbaa !24
  %t305 = load i64, ptr %l10, !tbaa !24
  %t308 = mul i64 %t304, %t305
  store i64 %t308, ptr %l138, !tbaa !24
  %t309 = load i64, ptr %l10, !tbaa !24
  store i64 %t309, ptr %l139, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = load i32, ptr %l9, !tbaa !23
  %t313 = load i64, ptr %l10, !tbaa !24
  %t318 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etoBits(ptr %v0, ptr %s9, ptr %v2, ptr %t310, { i64, ptr } %t299, i32 %t312, i64 %t313)
  store { i64, ptr } %t318, ptr %l144
  br label %bb43
bb43:
  %t319 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t319, 0
  %t321 = extractvalue { i64, ptr } %t319, 1
  %t322 = mul i64 %t320, 1
  %t323 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t322)
  call void @llvm.memcpy.p0.p0.i64(ptr %t323, ptr %t321, i64 %t322, i1 false)
  %t324 = insertvalue { i64, ptr } undef, i64 %t320, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t323, 1
  %t326 = load ptr, ptr %l133, !tbaa !29
  %t327 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t328 = load i64, ptr %l135, !tbaa !24
  %t329 = load i64, ptr %l138, !tbaa !24
  %t330 = load i64, ptr %l139, !tbaa !24
  %t332 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t326, { i64, ptr } %t327, i64 %t328, i64 %t329, i64 %t330, { i64, ptr } %t325)
  store { i64, ptr } %t332, ptr %l146
  br label %bb44
bb44:
  %t333 = load ptr, ptr %lp12
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t334, 0
  %t336 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t336, 0
  store i64 %t337, ptr %l148, !tbaa !24
  %t339 = load i64, ptr %l148, !tbaa !24
  %t340 = icmp eq i64 %t335, %t339
  br i1 %t340, label %bb45, label %bb46
bb45:
  %t342 = load ptr, ptr %lp12
  %t343 = getelementptr { i64, ptr }, ptr %t342, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = load i64, ptr %l148, !tbaa !24
  %t348 = mul i64 %t347, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t344, ptr %t346, i64 %t348, i1 false)
  br label %bb47
bb46:
  %t349 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t350 = load ptr, ptr %lp12
  store { i64, ptr } %t349, ptr %t350, !tbaa !27
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s9)
  br label %bb48
bb48:
  %t351 = load i64, ptr %l17, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l17, !tbaa !24
  br label %bb38
bb49:
  %t355 = load ptr, ptr %lp12
  %t356 = load { i64, ptr }, ptr %t355, !tbaa !27
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t356, ptr %rv
  br label %ret
bb50:
  %t358 = load ptr, ptr %l4, !tbaa !29
  %t359 = load i32, ptr %l5, !tbaa !23
  %t362 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %s0, ptr %t358, i32 %t359)
  store { i64, ptr } %t362, ptr %l155
  br label %bb51
bb51:
  %t363 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t363, ptr %l20, !tbaa !27
  %t364 = load ptr, ptr %l4, !tbaa !29
  %t365 = load i32, ptr %l5, !tbaa !23
  %t368 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t364, i32 %t365)
  store i32 %t368, ptr %l158
  br label %bb52
bb52:
  %t369 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t370 = load i32, ptr %l158, !tbaa !23
  %t372 = icmp eq i32 %t370, %t369
  br i1 %t372, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l161, !tbaa !21
  br label %bb55
bb54:
  %t374 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t374, 0
  %t378 = icmp eq i64 %t376, 0
  store i1 %t378, ptr %l161, !tbaa !21
  br label %bb55
bb55:
  %t380 = load i1, ptr %l161, !tbaa !21
  br i1 %t380, label %bb56, label %bb57
bb56:
  %t381 = load i64, ptr %l3, !tbaa !24
  %t383 = icmp slt i64 %t381, 32
  br i1 %t383, label %bb58, label %bb59
bb57:
  br label %bb66
bb58:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t387 = load i64, ptr %l3, !tbaa !24
  %t388 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t391 = extractvalue { i64, ptr } %t386, 1
  %t392 = extractvalue { i64, ptr } %t386, 0
  %t393 = add i64 %t389, %t392
  %t394 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t395 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t396 = add i64 %t393, %t395
  %t398 = call i64 @__olang_fmt_i64(ptr null, i64 %t387)
  %t399 = add i64 %t396, %t398
  %t400 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t399)
  call void @olang_textcopy(ptr %t400, ptr %t388, i64 %t389)
  %t401 = getelementptr i8, ptr %t400, i64 %t389
  call void @olang_textcopy(ptr %t401, ptr %t391, i64 %t392)
  %t402 = getelementptr i8, ptr %t401, i64 %t392
  call void @olang_textcopy(ptr %t402, ptr %t394, i64 %t395)
  %t403 = getelementptr i8, ptr %t402, i64 %t395
  %t404 = call i64 @__olang_fmt_i64(ptr %t403, i64 %t387)
  %t405 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t400, 1
  %t408 = extractvalue { i64, ptr } %t406, 0
  %t409 = extractvalue { i64, ptr } %t406, 1
  %t410 = mul i64 %t408, 1
  %t411 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t410)
  call void @llvm.memcpy.p0.p0.i64(ptr %t411, ptr %t409, i64 %t410, i1 false)
  %t412 = insertvalue { i64, ptr } undef, i64 %t408, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t411, 1
  %t416 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t385, { i64, ptr } %t413)
  store { i64, ptr } %t416, ptr %l173
  br label %bb60
bb59:
  %t417 = load i64, ptr %l3, !tbaa !24
  %t419 = icmp sgt i64 %t417, 32
  br i1 %t419, label %bb61, label %bb62
bb60:
  %t421 = load { i64, ptr }, ptr %l173, !tbaa !27
  store { i64, ptr } %t421, ptr %l167, !tbaa !27
  br label %bb65
bb61:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t424 = load i64, ptr %l3, !tbaa !24
  %t425 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t426 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t428 = extractvalue { i64, ptr } %t423, 1
  %t429 = extractvalue { i64, ptr } %t423, 0
  %t430 = add i64 %t426, %t429
  %t431 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d319, i32 0, i32 1) }, 1
  %t432 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d319, i32 0, i32 1) }, 0
  %t433 = add i64 %t430, %t432
  %t435 = call i64 @__olang_fmt_i64(ptr null, i64 %t424)
  %t436 = add i64 %t433, %t435
  %t437 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t436)
  call void @olang_textcopy(ptr %t437, ptr %t425, i64 %t426)
  %t438 = getelementptr i8, ptr %t437, i64 %t426
  call void @olang_textcopy(ptr %t438, ptr %t428, i64 %t429)
  %t439 = getelementptr i8, ptr %t438, i64 %t429
  call void @olang_textcopy(ptr %t439, ptr %t431, i64 %t432)
  %t440 = getelementptr i8, ptr %t439, i64 %t432
  %t441 = call i64 @__olang_fmt_i64(ptr %t440, i64 %t424)
  %t442 = insertvalue { i64, ptr } undef, i64 %t436, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t437, 1
  %t445 = extractvalue { i64, ptr } %t443, 0
  %t446 = extractvalue { i64, ptr } %t443, 1
  %t447 = mul i64 %t445, 1
  %t448 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t447)
  call void @llvm.memcpy.p0.p0.i64(ptr %t448, ptr %t446, i64 %t447, i1 false)
  %t449 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t448, 1
  %t453 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t422, { i64, ptr } %t450)
  store { i64, ptr } %t453, ptr %l182
  br label %bb63
bb62:
  %t454 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t456 = extractvalue { i64, ptr } %t454, 1
  %t457 = extractvalue { i64, ptr } %t454, 0
  %t458 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t457)
  call void @olang_textcopy(ptr %t458, ptr %t456, i64 %t457)
  %t459 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t460 = insertvalue { i64, ptr } %t459, ptr %t458, 1
  store { i64, ptr } %t460, ptr %l176, !tbaa !27
  br label %bb64
bb63:
  %t462 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t462, ptr %l176, !tbaa !27
  br label %bb64
bb64:
  %t463 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t463, ptr %l167, !tbaa !27
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t464 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t464, ptr %rv
  br label %ret
bb66:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d320, i32 0, i32 1) }, ptr %l185, !tbaa !27
  %t465 = load { i64, ptr }, ptr %l185, !tbaa !27
  store { i64, ptr } %t465, ptr %l186, !tbaa !27
  %t466 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t466, 0
  store i64 %t467, ptr %l187, !tbaa !24
  %t468 = load i64, ptr %l187, !tbaa !24
  %t469 = mul i64 %t468, 1
  %t470 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t469)
  %t471 = insertvalue { i64, ptr } undef, i64 %t468, 0
  %t472 = insertvalue { i64, ptr } %t471, ptr %t470, 1
  store { i64, ptr } %t472, ptr %l188, !tbaa !27
  %t473 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !27
  %t477 = load i64, ptr %l187, !tbaa !24
  %t478 = mul i64 %t477, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t474, ptr %t476, i64 %t478, i1 false)
  %t479 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t479, ptr %lp21
  %t480 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t481 = load ptr, ptr %lp21
  store { i64, ptr } %t480, ptr %t481, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t482 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t482, 0
  store i64 %t484, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t486 = load i64, ptr %l23, !tbaa !24
  %t487 = load i64, ptr %l22, !tbaa !24
  %t490 = icmp sgt i64 %t486, %t487
  br i1 %t490, label %bb67, label %bb68
bb67:
  %t492 = load i64, ptr %l24, !tbaa !24
  %t494 = icmp sgt i64 %t492, 0
  br i1 %t494, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l194, !tbaa !24
  br label %bb72
bb69:
  %t496 = load i64, ptr %l23, !tbaa !24
  %t497 = load i64, ptr %l22, !tbaa !24
  %t500 = sub i64 %t496, %t497
  %t501 = load i64, ptr %l24, !tbaa !24
  %t504 = add i64 %t500, %t501
  %t506 = sub i64 %t504, 1
  %t507 = load i64, ptr %l24, !tbaa !24
  %t510 = sdiv i64 %t506, %t507
  store i64 %t510, ptr %l197, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l197, !tbaa !24
  br label %bb71
bb71:
  %t512 = load i64, ptr %l197, !tbaa !24
  store i64 %t512, ptr %l194, !tbaa !24
  br label %bb72
bb72:
  %t513 = load i64, ptr %l194, !tbaa !24
  store i64 %t513, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb73
bb73:
  store %olang.scope zeroinitializer, ptr %s17
  %t514 = load i64, ptr %l26, !tbaa !24
  %t515 = load i64, ptr %l25, !tbaa !24
  %t518 = icmp slt i64 %t514, %t515
  %t520 = xor i1 %t518, true
  br i1 %t520, label %bb74, label %bb75
bb74:
  call void @__olang_scope_close(ptr %s17)
  br label %bb84
bb75:
  br label %bb76
bb76:
  %t522 = load i64, ptr %l22, !tbaa !24
  %t523 = load i64, ptr %l26, !tbaa !24
  %t524 = load i64, ptr %l24, !tbaa !24
  %t527 = mul i64 %t523, %t524
  %t530 = add i64 %t522, %t527
  store i64 %t530, ptr %l27, !tbaa !24
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t534 = load i64, ptr %l27, !tbaa !24
  %t535 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t536 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t538 = extractvalue { i64, ptr } %t533, 1
  %t539 = extractvalue { i64, ptr } %t533, 0
  %t540 = add i64 %t536, %t539
  %t541 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d322, i32 0, i32 1) }, 1
  %t542 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d322, i32 0, i32 1) }, 0
  %t543 = add i64 %t540, %t542
  %t545 = call i64 @__olang_fmt_i64(ptr null, i64 %t534)
  %t546 = add i64 %t543, %t545
  %t547 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t546)
  call void @olang_textcopy(ptr %t547, ptr %t535, i64 %t536)
  %t548 = getelementptr i8, ptr %t547, i64 %t536
  call void @olang_textcopy(ptr %t548, ptr %t538, i64 %t539)
  %t549 = getelementptr i8, ptr %t548, i64 %t539
  call void @olang_textcopy(ptr %t549, ptr %t541, i64 %t542)
  %t550 = getelementptr i8, ptr %t549, i64 %t542
  %t551 = call i64 @__olang_fmt_i64(ptr %t550, i64 %t534)
  %t552 = insertvalue { i64, ptr } undef, i64 %t546, 0
  %t553 = insertvalue { i64, ptr } %t552, ptr %t547, 1
  %t555 = extractvalue { i64, ptr } %t553, 0
  %t556 = extractvalue { i64, ptr } %t553, 1
  %t557 = mul i64 %t555, 1
  %t558 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t557)
  call void @llvm.memcpy.p0.p0.i64(ptr %t558, ptr %t556, i64 %t557, i1 false)
  %t559 = insertvalue { i64, ptr } undef, i64 %t555, 0
  %t560 = insertvalue { i64, ptr } %t559, ptr %t558, 1
  %t563 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s17, ptr %s17, ptr %t532, { i64, ptr } %t560)
  store { i64, ptr } %t563, ptr %l220
  br label %bb77
bb77:
  %t564 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l221, !tbaa !29
  store { i64, ptr } %t564, ptr %l222, !tbaa !27
  %t567 = load i64, ptr %l3, !tbaa !24
  store i64 %t567, ptr %l223, !tbaa !24
  %t568 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t568, ptr %l224, !tbaa !27
  %t569 = load i64, ptr %l27, !tbaa !24
  %t571 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t572 = load ptr, ptr %t571, !tbaa !27
  %t573 = getelementptr i64, ptr %t572, i64 %t569
  %t574 = load i64, ptr %t573, !tbaa !34
  store i64 %t574, ptr %l226, !tbaa !24
  %t575 = load i64, ptr %l3, !tbaa !24
  %t577 = call i64 @compiler_2femit_2ebmaskOf(i64 %t575)
  store i64 %t577, ptr %l228
  br label %bb78
bb78:
  %t578 = load i64, ptr %l226, !tbaa !24
  %t579 = load i64, ptr %l228, !tbaa !24
  %t580 = and i64 %t578, %t579
  %t581 = load i64, ptr %l3, !tbaa !24
  %t582 = load ptr, ptr %lp21
  %t583 = load { i64, ptr }, ptr %t582, !tbaa !27
  %t584 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t585 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
  %t586 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t587 = extractvalue { i64, ptr } %t586, 1
  %t588 = extractvalue { i64, ptr } %t586, 0
  %t589 = add i64 %t585, %t588
  %t590 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t591 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t592 = add i64 %t589, %t591
  %t593 = load i64, ptr %l223, !tbaa !24
  %t594 = call i64 @__olang_fmt_i64(ptr null, i64 %t593)
  %t595 = add i64 %t592, %t594
  %t596 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t597 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t598 = add i64 %t595, %t597
  %t600 = call i64 @__olang_fmt_i64(ptr null, i64 %t580)
  %t601 = add i64 %t598, %t600
  %t602 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t603 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t604 = add i64 %t601, %t603
  %t606 = call i64 @__olang_fmt_i64(ptr null, i64 %t581)
  %t607 = add i64 %t604, %t606
  %t608 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t609 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t610 = add i64 %t607, %t609
  %t612 = extractvalue { i64, ptr } %t583, 1
  %t613 = extractvalue { i64, ptr } %t583, 0
  %t614 = add i64 %t610, %t613
  %t615 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t614)
  call void @olang_textcopy(ptr %t615, ptr %t584, i64 %t585)
  %t616 = getelementptr i8, ptr %t615, i64 %t585
  call void @olang_textcopy(ptr %t616, ptr %t587, i64 %t588)
  %t617 = getelementptr i8, ptr %t616, i64 %t588
  call void @olang_textcopy(ptr %t617, ptr %t590, i64 %t591)
  %t618 = getelementptr i8, ptr %t617, i64 %t591
  %t619 = call i64 @__olang_fmt_i64(ptr %t618, i64 %t593)
  %t620 = getelementptr i8, ptr %t618, i64 %t594
  call void @olang_textcopy(ptr %t620, ptr %t596, i64 %t597)
  %t621 = getelementptr i8, ptr %t620, i64 %t597
  %t622 = call i64 @__olang_fmt_i64(ptr %t621, i64 %t580)
  %t623 = getelementptr i8, ptr %t621, i64 %t600
  call void @olang_textcopy(ptr %t623, ptr %t602, i64 %t603)
  %t624 = getelementptr i8, ptr %t623, i64 %t603
  %t625 = call i64 @__olang_fmt_i64(ptr %t624, i64 %t581)
  %t626 = getelementptr i8, ptr %t624, i64 %t606
  call void @olang_textcopy(ptr %t626, ptr %t608, i64 %t609)
  %t627 = getelementptr i8, ptr %t626, i64 %t609
  call void @olang_textcopy(ptr %t627, ptr %t612, i64 %t613)
  %t628 = insertvalue { i64, ptr } undef, i64 %t614, 0
  %t629 = insertvalue { i64, ptr } %t628, ptr %t615, 1
  %t631 = extractvalue { i64, ptr } %t629, 0
  %t632 = extractvalue { i64, ptr } %t629, 1
  %t633 = mul i64 %t631, 1
  %t634 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t633)
  call void @llvm.memcpy.p0.p0.i64(ptr %t634, ptr %t632, i64 %t633, i1 false)
  %t635 = insertvalue { i64, ptr } undef, i64 %t631, 0
  %t636 = insertvalue { i64, ptr } %t635, ptr %t634, 1
  %t637 = load ptr, ptr %l221, !tbaa !29
  %t639 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t637, { i64, ptr } %t636)
  store { i64, ptr } %t639, ptr %l234
  br label %bb79
bb79:
  %t640 = load ptr, ptr %lp21
  %t641 = load { i64, ptr }, ptr %t640, !tbaa !27
  %t642 = extractvalue { i64, ptr } %t641, 0
  %t643 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t644 = extractvalue { i64, ptr } %t643, 0
  store i64 %t644, ptr %l236, !tbaa !24
  %t646 = load i64, ptr %l236, !tbaa !24
  %t647 = icmp eq i64 %t642, %t646
  br i1 %t647, label %bb80, label %bb81
bb80:
  %t649 = load ptr, ptr %lp21
  %t650 = getelementptr { i64, ptr }, ptr %t649, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = load i64, ptr %l236, !tbaa !24
  %t655 = mul i64 %t654, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t651, ptr %t653, i64 %t655, i1 false)
  br label %bb82
bb81:
  %t656 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t657 = load ptr, ptr %lp21
  store { i64, ptr } %t656, ptr %t657, !tbaa !27
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s17)
  br label %bb83
bb83:
  %t658 = load i64, ptr %l26, !tbaa !24
  %t660 = add i64 %t658, 1
  store i64 %t660, ptr %l26, !tbaa !24
  br label %bb73
bb84:
  %t662 = load ptr, ptr %lp21
  %t663 = load { i64, ptr }, ptr %t662, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t663, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2etrace(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca { i64, [8 x i64] }
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l17 = alloca i1
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l55 = alloca ptr
  %l72 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i32
  %l80 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l86 = alloca i1
  %l90 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %t4)
  store i1 %t6, ptr %l17
  br label %bb1
bb1:
  %t7 = load i1, ptr %l17, !tbaa !21
  %t8 = xor i1 %t7, true
  br i1 %t8, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:fnEm", ptr %t10, i32 0, i32 23
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/emit:fnEm", ptr %t17, i32 0, i32 23
  store i1 true, ptr %t19, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/emit:fnEm", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/mir:Fn", ptr %t23, i32 0, i32 9
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l26
  br label %bb7
bb6:
  br label %bb36
bb7:
  %t28 = load i64, ptr %l26, !tbaa !24
  store i64 %t28, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb13
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l33, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l33, !tbaa !24
  store i64 %t55, ptr %l30, !tbaa !24
  br label %bb13
bb13:
  %t56 = load i64, ptr %l30, !tbaa !24
  store i64 %t56, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t57 = load i64, ptr %l6, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb15, label %bb16
bb15:
  br label %bb35
bb16:
  br label %bb17
bb17:
  %t65 = load i64, ptr %l2, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t67 = load i64, ptr %l4, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/emit:fnEm", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/mir:Fn", ptr %t78, i32 0, i32 9
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t80, i64 %t73)
  store ptr %t84, ptr %l55
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l55, !tbaa !29
  %t88 = getelementptr %"compiler/mir:BasicBlock", ptr %t85, i32 0, i32 1
  %t89 = load { i64, [8 x i64] }, ptr %t88
  store { i64, [8 x i64] } %t89, ptr %l9
  %t91 = load { i64, [8 x i64] }, ptr %l9
  %t93 = extractvalue { i64, [8 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 4
  br i1 %t94, label %bb19, label %bb20
bb19:
  %t96 = getelementptr { i64, [8 x i64] }, ptr %l9, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", i32 }, ptr %t96, i32 0, i32 0
  %t98 = load %"compiler/source:Span", ptr %t97
  store %"compiler/source:Span" %t98, ptr %l10
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/emit:fnEm", ptr %t100, i32 0, i32 22
  %t103 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t104 = load i32, ptr %t103, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ePut_3cI32_2c_20I64_3e(ptr %v0, ptr %t102, i32 %t104, i64 1)
  br label %bb22
bb22:
  br label %bb33
bb23:
  %t107 = load { i64, [8 x i64] }, ptr %l9
  %t109 = extractvalue { i64, [8 x i64] } %t107, 0
  %t110 = icmp eq i64 %t109, 8
  br i1 %t110, label %bb24, label %bb25
bb24:
  %t112 = getelementptr { i64, [8 x i64] }, ptr %l9, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t112, i32 0, i32 0
  %t114 = load %"compiler/source:Span", ptr %t113
  store %"compiler/source:Span" %t114, ptr %l11
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/emit:fnEm", ptr %t116, i32 0, i32 22
  %t119 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 0
  %t120 = load i32, ptr %t119, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ePut_3cI32_2c_20I64_3e(ptr %v0, ptr %t118, i32 %t120, i64 2)
  br label %bb27
bb27:
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_2ea555a1037c9329_7e95fb4c4c24cb65)
  unreachable
bb33:
  br label %bb34
bb34:
  %t123 = load i64, ptr %l6, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l6, !tbaa !24
  br label %bb14
bb35:
  br label %bb36
bb36:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/emit:fnEm", ptr %t127, i32 0, i32 22
  %t130 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t131 = load i32, ptr %t130, !tbaa !23
  %t134 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2eGet_3cI32_2c_20I64_3e(ptr %v0, ptr %t129, i32 %t131)
  %t135 = extractvalue { i32, i64 } %t134, 1
  %t136 = extractvalue { i32, i64 } %t134, 0
  store i32 %t136, ptr %l77
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb38, label %ok.138, !prof !99
ok.138:
  store i64 %t135, ptr %l76
  br label %bb37
bb37:
  %t139 = load i64, ptr %l76, !tbaa !24
  store i64 %t139, ptr %l72, !tbaa !24
  br label %bb40
bb38:
  br label %bb39
bb39:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb40
bb40:
  %t140 = load i64, ptr %l72, !tbaa !24
  store i64 %t140, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l12, !tbaa !24
  %t143 = icmp eq i64 %t141, 1
  br i1 %t143, label %bb41, label %bb42
bb41:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d326, i32 0, i32 1) }, ptr %l80, !tbaa !27
  br label %bb46
bb42:
  %t145 = load i64, ptr %l12, !tbaa !24
  %t147 = icmp eq i64 %t145, 2
  br i1 %t147, label %bb43, label %bb44
bb43:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d327, i32 0, i32 1) }, ptr %l83, !tbaa !27
  br label %bb45
bb44:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d328, i32 0, i32 1) }, ptr %l83, !tbaa !27
  br label %bb45
bb45:
  %t149 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t149, ptr %l80, !tbaa !27
  br label %bb46
bb46:
  %t150 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t150, ptr %l13, !tbaa !27
  %t151 = load i64, ptr %l12, !tbaa !24
  %t153 = icmp eq i64 %t151, 0
  br i1 %t153, label %bb47, label %bb48
bb47:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/emit:fnEm", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load %"compiler/source:Span", ptr %l1
  %t162 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %s0, ptr %t158, %"compiler/source:Span" %t159)
  store { i64, ptr } %t162, ptr %l90
  br label %bb49
bb48:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb50
bb49:
  %t163 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  %t166 = icmp sgt i64 %t164, 0
  store i1 %t166, ptr %l86, !tbaa !21
  br label %bb50
bb50:
  %t168 = load i1, ptr %l86, !tbaa !21
  br i1 %t168, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s9
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/emit:fnEm", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l1
  %t176 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %s9, ptr %t172, %"compiler/source:Span" %t173)
  store { i64, ptr } %t176, ptr %l96
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t177 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 1
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t179)
  call void @olang_textcopy(ptr %t180, ptr %t178, i64 %t179)
  %t181 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = extractvalue { i64, ptr } %t182, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  store { i64, ptr } %t189, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb54
bb54:
  %t191 = load i64, ptr %l12, !tbaa !24
  %t193 = icmp eq i64 %t191, 1
  br i1 %t193, label %bb55, label %bb56
bb55:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d329, i32 0, i32 1) }, ptr %l101, !tbaa !27
  br label %bb57
bb56:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d330, i32 0, i32 1) }, ptr %l101, !tbaa !27
  br label %bb57
bb57:
  %t195 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t195, ptr %l14, !tbaa !27
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/emit:fnEm", ptr %t196, i32 0, i32 0
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t202 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t203 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t205 = extractvalue { i64, ptr } %t201, 1
  %t206 = extractvalue { i64, ptr } %t201, 0
  %t207 = add i64 %t203, %t206
  %t208 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t209 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t210 = add i64 %t207, %t209
  %t211 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t210)
  call void @olang_textcopy(ptr %t211, ptr %t202, i64 %t203)
  %t212 = getelementptr i8, ptr %t211, i64 %t203
  call void @olang_textcopy(ptr %t212, ptr %t205, i64 %t206)
  %t213 = getelementptr i8, ptr %t212, i64 %t206
  call void @olang_textcopy(ptr %t213, ptr %t208, i64 %t209)
  %t214 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t211, 1
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t218 = extractvalue { i64, ptr } %t215, 1
  %t219 = mul i64 %t217, 1
  %t220 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t219)
  call void @llvm.memcpy.p0.p0.i64(ptr %t220, ptr %t218, i64 %t219, i1 false)
  %t221 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  %t223 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %t223, ptr %s0, ptr %t199, { i64, ptr } %t200, { i64, ptr } %t222)
  br label %bb58
bb58:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l108, !tbaa !29
  %t228 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t228, ptr %l109, !tbaa !27
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l1
  %t231 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t232 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t235 = extractvalue { i64, ptr } %t231, 1
  %t236 = extractvalue { i64, ptr } %t231, 0
  %t237 = add i64 %t233, %t236
  %t238 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d334, i32 0, i32 1) }, 1
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d334, i32 0, i32 1) }, 0
  %t240 = add i64 %t237, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t232, i64 %t233)
  %t242 = getelementptr i8, ptr %t241, i64 %t233
  call void @olang_textcopy(ptr %t242, ptr %t235, i64 %t236)
  %t243 = getelementptr i8, ptr %t242, i64 %t236
  call void @olang_textcopy(ptr %t243, ptr %t238, i64 %t239)
  %t244 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t241, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = extractvalue { i64, ptr } %t245, 1
  %t249 = mul i64 %t247, 1
  %t250 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t249)
  call void @llvm.memcpy.p0.p0.i64(ptr %t250, ptr %t248, i64 %t249, i1 false)
  %t251 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t250, 1
  %t256 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocated(ptr %v0, ptr %s0, ptr %s0, ptr %t229, %"compiler/source:Span" %t230, { i64, ptr } %t252)
  store { i64, ptr } %t256, ptr %l115
  br label %bb59
bb59:
  %t257 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d335, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d335, i32 0, i32 1) }, 0
  %t259 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 1
  %t261 = extractvalue { i64, ptr } %t259, 0
  %t262 = add i64 %t258, %t261
  %t263 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t264 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t265 = add i64 %t262, %t264
  %t266 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 1
  %t268 = extractvalue { i64, ptr } %t266, 0
  %t269 = add i64 %t265, %t268
  %t270 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t273 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t272)
  call void @olang_textcopy(ptr %t273, ptr %t257, i64 %t258)
  %t274 = getelementptr i8, ptr %t273, i64 %t258
  call void @olang_textcopy(ptr %t274, ptr %t260, i64 %t261)
  %t275 = getelementptr i8, ptr %t274, i64 %t261
  call void @olang_textcopy(ptr %t275, ptr %t263, i64 %t264)
  %t276 = getelementptr i8, ptr %t275, i64 %t264
  call void @olang_textcopy(ptr %t276, ptr %t267, i64 %t268)
  %t277 = getelementptr i8, ptr %t276, i64 %t268
  call void @olang_textcopy(ptr %t277, ptr %t270, i64 %t271)
  %t278 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t273, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = extractvalue { i64, ptr } %t279, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t287 = load ptr, ptr %l108, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t287, { i64, ptr } %t286)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l16 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %t2
  %t7 = load i64, ptr %t6, !tbaa !34
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i64, ptr %t15, i64 %t12
  %t17 = load i64, ptr %t16, !tbaa !34
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  store i1 %t21, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t24 = load i64, ptr %l3, !tbaa !24
  store i64 %t24, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  store i64 2, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t26 = load i64, ptr %l16, !tbaa !24
  store i64 %t26, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t28, ptr %l19, !tbaa !27
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i64, ptr %t32, i64 %t29
  %t34 = load i64, ptr %t33, !tbaa !34
  %t37 = icmp ne i64 %t27, %t34
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load i64, ptr %l2, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i64, ptr %t45, i64 %t40
  store i64 %t41, ptr %t46, !tbaa !34
  %t48 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %a4, i64 %t48)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewideToBF16(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca [5 x i8]
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca { i64, ptr }
  %l54 = alloca i1
  %l60 = alloca { i64, ptr }
  %l62 = alloca i64
  %l68 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l85 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l122 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l159 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l172 = alloca ptr
  %l175 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  store ptr %t7, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t9, i32 %t10)
  store { i64, ptr } %t13, ptr %l25
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = extractvalue { i64, ptr } %t15, 0
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t17, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t23, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d338, i32 0, i32 1) })
  store i1 %t25, ptr %l29
  br label %bb2
bb2:
  %t26 = load i1, ptr %l29, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb3, label %bb4
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l31, !tbaa !29
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t31 = load i32, ptr %l2, !tbaa !23
  %t34 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l34
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t35 = load i1, ptr %l34, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d339, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d340, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb8
bb8:
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t42 = extractvalue { i64, ptr } %t36, 1
  %t43 = extractvalue { i64, ptr } %t36, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t49 = extractvalue { i64, ptr } %t37, 1
  %t50 = extractvalue { i64, ptr } %t37, 0
  %t51 = add i64 %t47, %t50
  %t52 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t54 = add i64 %t51, %t53
  %t55 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t54)
  call void @olang_textcopy(ptr %t55, ptr %t39, i64 %t40)
  %t56 = getelementptr i8, ptr %t55, i64 %t40
  call void @olang_textcopy(ptr %t56, ptr %t42, i64 %t43)
  %t57 = getelementptr i8, ptr %t56, i64 %t43
  call void @olang_textcopy(ptr %t57, ptr %t45, i64 %t46)
  %t58 = getelementptr i8, ptr %t57, i64 %t46
  call void @olang_textcopy(ptr %t58, ptr %t49, i64 %t50)
  %t59 = getelementptr i8, ptr %t58, i64 %t50
  call void @olang_textcopy(ptr %t59, ptr %t52, i64 %t53)
  %t60 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t55, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = extractvalue { i64, ptr } %t61, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t71 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t69, { i64, ptr } %t68)
  store { i64, ptr } %t71, ptr %l40
  br label %bb9
bb9:
  %t72 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t74 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l42, !tbaa !24
  %t77 = load i64, ptr %l42, !tbaa !24
  %t78 = icmp eq i64 %t73, %t77
  br i1 %t78, label %bb10, label %bb11
bb10:
  %t80 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l42, !tbaa !24
  %t85 = mul i64 %t84, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t81, ptr %t83, i64 %t85, i1 false)
  br label %bb12
bb11:
  %t86 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t86, ptr %l5, !tbaa !27
  br label %bb12
bb12:
  br label %bb13
bb13:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d343, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t87, ptr %l45, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = mul i64 5, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 5, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %l46, 1
  store { i64, ptr } %t93, ptr %l6, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t95, ptr %l49, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  store i64 %t97, ptr %l50, !tbaa !24
  %t98 = load i64, ptr %l50, !tbaa !24
  %t99 = mul i64 %t98, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t99)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l51, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = load i64, ptr %l50, !tbaa !24
  %t108 = mul i64 %t107, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t104, ptr %t106, i64 %t108, i1 false)
  %t109 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t109, ptr %l7, !tbaa !27
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t111 = load i32, ptr %l2, !tbaa !23
  %t114 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t110, i32 %t111)
  store i1 %t114, ptr %l54
  br label %bb14
bb14:
  %t115 = load i1, ptr %l54, !tbaa !21
  %t116 = xor i1 %t115, true
  br i1 %t116, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t120 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t123 = extractvalue { i64, ptr } %t119, 1
  %t124 = extractvalue { i64, ptr } %t119, 0
  %t125 = add i64 %t121, %t124
  %t126 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t128 = add i64 %t125, %t127
  %t129 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t120, i64 %t121)
  %t130 = getelementptr i8, ptr %t129, i64 %t121
  call void @olang_textcopy(ptr %t130, ptr %t123, i64 %t124)
  %t131 = getelementptr i8, ptr %t130, i64 %t124
  call void @olang_textcopy(ptr %t131, ptr %t126, i64 %t127)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t129, 1
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t136 = extractvalue { i64, ptr } %t133, 1
  %t137 = mul i64 %t135, 1
  %t138 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t137)
  call void @llvm.memcpy.p0.p0.i64(ptr %t138, ptr %t136, i64 %t137, i1 false)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  %t143 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t118, { i64, ptr } %t140)
  store { i64, ptr } %t143, ptr %l60
  br label %bb17
bb16:
  br label %bb26
bb17:
  %t144 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  store i64 %t147, ptr %l62, !tbaa !24
  %t149 = load i64, ptr %l62, !tbaa !24
  %t150 = icmp eq i64 %t145, %t149
  br i1 %t150, label %bb18, label %bb19
bb18:
  %t152 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = load i64, ptr %l62, !tbaa !24
  %t157 = mul i64 %t156, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t153, ptr %t155, i64 %t157, i1 false)
  br label %bb20
bb19:
  %t158 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t158, ptr %l6, !tbaa !27
  br label %bb20
bb20:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t161 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t164 = extractvalue { i64, ptr } %t160, 1
  %t165 = extractvalue { i64, ptr } %t160, 0
  %t166 = add i64 %t162, %t165
  %t167 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t166)
  call void @olang_textcopy(ptr %t167, ptr %t161, i64 %t162)
  %t168 = getelementptr i8, ptr %t167, i64 %t162
  call void @olang_textcopy(ptr %t168, ptr %t164, i64 %t165)
  %t169 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t167, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = extractvalue { i64, ptr } %t170, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t180 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %s4, ptr %t159, { i64, ptr } %t177)
  store { i64, ptr } %t180, ptr %l68
  br label %bb21
bb21:
  %t181 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t186 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t189 = extractvalue { i64, ptr } %t183, 1
  %t190 = extractvalue { i64, ptr } %t183, 0
  %t191 = add i64 %t187, %t190
  %t192 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t194 = add i64 %t191, %t193
  %t196 = extractvalue { i64, ptr } %t181, 1
  %t197 = extractvalue { i64, ptr } %t181, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d348, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d348, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t203 = extractvalue { i64, ptr } %t185, 1
  %t204 = extractvalue { i64, ptr } %t185, 0
  %t205 = add i64 %t201, %t204
  %t206 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t205)
  call void @olang_textcopy(ptr %t206, ptr %t186, i64 %t187)
  %t207 = getelementptr i8, ptr %t206, i64 %t187
  call void @olang_textcopy(ptr %t207, ptr %t189, i64 %t190)
  %t208 = getelementptr i8, ptr %t207, i64 %t190
  call void @olang_textcopy(ptr %t208, ptr %t192, i64 %t193)
  %t209 = getelementptr i8, ptr %t208, i64 %t193
  call void @olang_textcopy(ptr %t209, ptr %t196, i64 %t197)
  %t210 = getelementptr i8, ptr %t209, i64 %t197
  call void @olang_textcopy(ptr %t210, ptr %t199, i64 %t200)
  %t211 = getelementptr i8, ptr %t210, i64 %t200
  call void @olang_textcopy(ptr %t211, ptr %t203, i64 %t204)
  %t212 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t206, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = extractvalue { i64, ptr } %t213, 1
  %t217 = mul i64 %t215, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t217)
  call void @llvm.memcpy.p0.p0.i64(ptr %t218, ptr %t216, i64 %t217, i1 false)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  %t223 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t182, { i64, ptr } %t220)
  store { i64, ptr } %t223, ptr %l75
  br label %bb22
bb22:
  %t224 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t224, 0
  %t226 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t226, 0
  store i64 %t227, ptr %l77, !tbaa !24
  %t229 = load i64, ptr %l77, !tbaa !24
  %t230 = icmp eq i64 %t225, %t229
  br i1 %t230, label %bb23, label %bb24
bb23:
  %t232 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = load i64, ptr %l77, !tbaa !24
  %t237 = mul i64 %t236, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t233, ptr %t235, i64 %t237, i1 false)
  br label %bb25
bb24:
  %t238 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t238, ptr %l7, !tbaa !27
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb26
bb26:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/emit:fnEm", ptr %t239, i32 0, i32 0
  %t242 = load ptr, ptr %t241, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t242, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d349, i32 0, i32 1) }, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d350, i32 0, i32 1) })
  br label %bb27
bb27:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t246 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t249 = extractvalue { i64, ptr } %t245, 1
  %t250 = extractvalue { i64, ptr } %t245, 0
  %t251 = add i64 %t247, %t250
  %t252 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t253 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t254 = add i64 %t251, %t253
  %t255 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t254)
  call void @olang_textcopy(ptr %t255, ptr %t246, i64 %t247)
  %t256 = getelementptr i8, ptr %t255, i64 %t247
  call void @olang_textcopy(ptr %t256, ptr %t249, i64 %t250)
  %t257 = getelementptr i8, ptr %t256, i64 %t250
  call void @olang_textcopy(ptr %t257, ptr %t252, i64 %t253)
  %t258 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t255, 1
  %t261 = extractvalue { i64, ptr } %t259, 0
  %t262 = extractvalue { i64, ptr } %t259, 1
  %t263 = mul i64 %t261, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t263)
  call void @llvm.memcpy.p0.p0.i64(ptr %t264, ptr %t262, i64 %t263, i1 false)
  %t265 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  %t269 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t244, { i64, ptr } %t266)
  store { i64, ptr } %t269, ptr %l85
  br label %bb28
bb28:
  %t270 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d353, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d353, i32 0, i32 1) }, 0
  %t276 = extractvalue { i64, ptr } %t270, 1
  %t277 = extractvalue { i64, ptr } %t270, 0
  %t278 = add i64 %t274, %t277
  %t279 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t281 = add i64 %t278, %t280
  %t282 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t281)
  call void @olang_textcopy(ptr %t282, ptr %t273, i64 %t274)
  %t283 = getelementptr i8, ptr %t282, i64 %t274
  call void @olang_textcopy(ptr %t283, ptr %t276, i64 %t277)
  %t284 = getelementptr i8, ptr %t283, i64 %t277
  call void @olang_textcopy(ptr %t284, ptr %t279, i64 %t280)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t282, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = extractvalue { i64, ptr } %t286, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  %t296 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t271, { i64, ptr } %t293)
  store { i64, ptr } %t296, ptr %l90
  br label %bb29
bb29:
  %t297 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d355, i32 0, i32 1) }, 1
  %t301 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d355, i32 0, i32 1) }, 0
  %t303 = extractvalue { i64, ptr } %t297, 1
  %t304 = extractvalue { i64, ptr } %t297, 0
  %t305 = add i64 %t301, %t304
  %t306 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t305)
  call void @olang_textcopy(ptr %t306, ptr %t300, i64 %t301)
  %t307 = getelementptr i8, ptr %t306, i64 %t301
  call void @olang_textcopy(ptr %t307, ptr %t303, i64 %t304)
  %t308 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t306, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = extractvalue { i64, ptr } %t309, 1
  %t313 = mul i64 %t311, 1
  %t314 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t313)
  call void @llvm.memcpy.p0.p0.i64(ptr %t314, ptr %t312, i64 %t313, i1 false)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  %t319 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t298, { i64, ptr } %t316)
  store { i64, ptr } %t319, ptr %l95
  br label %bb30
bb30:
  %t320 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t320, ptr %l11, !tbaa !27
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t323 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d356, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d356, i32 0, i32 1) }, 0
  %t326 = extractvalue { i64, ptr } %t322, 1
  %t327 = extractvalue { i64, ptr } %t322, 0
  %t328 = add i64 %t324, %t327
  %t329 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d357, i32 0, i32 1) }, 1
  %t330 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d357, i32 0, i32 1) }, 0
  %t331 = add i64 %t328, %t330
  %t332 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t331)
  call void @olang_textcopy(ptr %t332, ptr %t323, i64 %t324)
  %t333 = getelementptr i8, ptr %t332, i64 %t324
  call void @olang_textcopy(ptr %t333, ptr %t326, i64 %t327)
  %t334 = getelementptr i8, ptr %t333, i64 %t327
  call void @olang_textcopy(ptr %t334, ptr %t329, i64 %t330)
  %t335 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t332, 1
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t339 = extractvalue { i64, ptr } %t336, 1
  %t340 = mul i64 %t338, 1
  %t341 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t340)
  call void @llvm.memcpy.p0.p0.i64(ptr %t341, ptr %t339, i64 %t340, i1 false)
  %t342 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t341, 1
  %t346 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t321, { i64, ptr } %t343)
  store { i64, ptr } %t346, ptr %l100
  br label %bb31
bb31:
  %t347 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t351 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t352 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
  %t354 = extractvalue { i64, ptr } %t347, 1
  %t355 = extractvalue { i64, ptr } %t347, 0
  %t356 = add i64 %t352, %t355
  %t357 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t358 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  %t359 = add i64 %t356, %t358
  %t361 = extractvalue { i64, ptr } %t350, 1
  %t362 = extractvalue { i64, ptr } %t350, 0
  %t363 = add i64 %t359, %t362
  %t364 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d360, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d360, i32 0, i32 1) }, 0
  %t366 = add i64 %t363, %t365
  %t367 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t366)
  call void @olang_textcopy(ptr %t367, ptr %t351, i64 %t352)
  %t368 = getelementptr i8, ptr %t367, i64 %t352
  call void @olang_textcopy(ptr %t368, ptr %t354, i64 %t355)
  %t369 = getelementptr i8, ptr %t368, i64 %t355
  call void @olang_textcopy(ptr %t369, ptr %t357, i64 %t358)
  %t370 = getelementptr i8, ptr %t369, i64 %t358
  call void @olang_textcopy(ptr %t370, ptr %t361, i64 %t362)
  %t371 = getelementptr i8, ptr %t370, i64 %t362
  call void @olang_textcopy(ptr %t371, ptr %t364, i64 %t365)
  %t372 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t367, 1
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t376 = extractvalue { i64, ptr } %t373, 1
  %t377 = mul i64 %t375, 1
  %t378 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t377)
  call void @llvm.memcpy.p0.p0.i64(ptr %t378, ptr %t376, i64 %t377, i1 false)
  %t379 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  %t383 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t348, { i64, ptr } %t380)
  store { i64, ptr } %t383, ptr %l106
  br label %bb32
bb32:
  %t384 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t384, ptr %l13, !tbaa !27
  %t385 = load ptr, ptr %l0, !tbaa !29
  store ptr %t385, ptr %l107, !tbaa !29
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t388 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t389 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  %t391 = extractvalue { i64, ptr } %t387, 1
  %t392 = extractvalue { i64, ptr } %t387, 0
  %t393 = add i64 %t389, %t392
  %t394 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t393)
  call void @olang_textcopy(ptr %t394, ptr %t388, i64 %t389)
  %t395 = getelementptr i8, ptr %t394, i64 %t389
  call void @olang_textcopy(ptr %t395, ptr %t391, i64 %t392)
  %t396 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t397 = insertvalue { i64, ptr } %t396, ptr %t394, 1
  %t399 = extractvalue { i64, ptr } %t397, 0
  %t400 = extractvalue { i64, ptr } %t397, 1
  %t401 = mul i64 %t399, 1
  %t402 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t401)
  call void @llvm.memcpy.p0.p0.i64(ptr %t402, ptr %t400, i64 %t401, i1 false)
  %t403 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t404 = insertvalue { i64, ptr } %t403, ptr %t402, 1
  %t407 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t386, { i64, ptr } %t404)
  store { i64, ptr } %t407, ptr %l112
  br label %bb33
bb33:
  %t408 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t409 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
  %t410 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t411 = extractvalue { i64, ptr } %t410, 1
  %t412 = extractvalue { i64, ptr } %t410, 0
  %t413 = add i64 %t409, %t412
  %t414 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t415 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
  %t416 = add i64 %t413, %t415
  %t417 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t416)
  call void @olang_textcopy(ptr %t417, ptr %t408, i64 %t409)
  %t418 = getelementptr i8, ptr %t417, i64 %t409
  call void @olang_textcopy(ptr %t418, ptr %t411, i64 %t412)
  %t419 = getelementptr i8, ptr %t418, i64 %t412
  call void @olang_textcopy(ptr %t419, ptr %t414, i64 %t415)
  %t420 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t421 = insertvalue { i64, ptr } %t420, ptr %t417, 1
  %t423 = extractvalue { i64, ptr } %t421, 0
  %t424 = extractvalue { i64, ptr } %t421, 1
  %t425 = mul i64 %t423, 1
  %t426 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t425)
  call void @llvm.memcpy.p0.p0.i64(ptr %t426, ptr %t424, i64 %t425, i1 false)
  %t427 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t426, 1
  %t429 = load ptr, ptr %l107, !tbaa !29
  %t431 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t429, { i64, ptr } %t428)
  store { i64, ptr } %t431, ptr %l115
  br label %bb34
bb34:
  %t432 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t433, ptr %l116, !tbaa !29
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t435 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t437 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t438 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  %t440 = extractvalue { i64, ptr } %t435, 1
  %t441 = extractvalue { i64, ptr } %t435, 0
  %t442 = add i64 %t438, %t441
  %t443 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t444 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  %t445 = add i64 %t442, %t444
  %t447 = extractvalue { i64, ptr } %t432, 1
  %t448 = extractvalue { i64, ptr } %t432, 0
  %t449 = add i64 %t445, %t448
  %t450 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t449)
  call void @olang_textcopy(ptr %t450, ptr %t437, i64 %t438)
  %t451 = getelementptr i8, ptr %t450, i64 %t438
  call void @olang_textcopy(ptr %t451, ptr %t440, i64 %t441)
  %t452 = getelementptr i8, ptr %t451, i64 %t441
  call void @olang_textcopy(ptr %t452, ptr %t443, i64 %t444)
  %t453 = getelementptr i8, ptr %t452, i64 %t444
  call void @olang_textcopy(ptr %t453, ptr %t447, i64 %t448)
  %t454 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t455 = insertvalue { i64, ptr } %t454, ptr %t450, 1
  %t457 = extractvalue { i64, ptr } %t455, 0
  %t458 = extractvalue { i64, ptr } %t455, 1
  %t459 = mul i64 %t457, 1
  %t460 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t459)
  call void @llvm.memcpy.p0.p0.i64(ptr %t460, ptr %t458, i64 %t459, i1 false)
  %t461 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  %t465 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t434, { i64, ptr } %t462)
  store { i64, ptr } %t465, ptr %l122
  br label %bb35
bb35:
  %t466 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t467 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
  %t468 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t469 = extractvalue { i64, ptr } %t468, 1
  %t470 = extractvalue { i64, ptr } %t468, 0
  %t471 = add i64 %t467, %t470
  %t472 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d367, i32 0, i32 1) }, 1
  %t473 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d367, i32 0, i32 1) }, 0
  %t474 = add i64 %t471, %t473
  %t475 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t474)
  call void @olang_textcopy(ptr %t475, ptr %t466, i64 %t467)
  %t476 = getelementptr i8, ptr %t475, i64 %t467
  call void @olang_textcopy(ptr %t476, ptr %t469, i64 %t470)
  %t477 = getelementptr i8, ptr %t476, i64 %t470
  call void @olang_textcopy(ptr %t477, ptr %t472, i64 %t473)
  %t478 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t475, 1
  %t481 = extractvalue { i64, ptr } %t479, 0
  %t482 = extractvalue { i64, ptr } %t479, 1
  %t483 = mul i64 %t481, 1
  %t484 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t483)
  call void @llvm.memcpy.p0.p0.i64(ptr %t484, ptr %t482, i64 %t483, i1 false)
  %t485 = insertvalue { i64, ptr } undef, i64 %t481, 0
  %t486 = insertvalue { i64, ptr } %t485, ptr %t484, 1
  %t487 = load ptr, ptr %l116, !tbaa !29
  %t489 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t487, { i64, ptr } %t486)
  store { i64, ptr } %t489, ptr %l125
  br label %bb36
bb36:
  %t490 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t490, ptr %l15, !tbaa !27
  %t491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t491, ptr %l126, !tbaa !29
  %t492 = load ptr, ptr %l0, !tbaa !29
  store ptr %t492, ptr %l127, !tbaa !29
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t495 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t496 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d368, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d368, i32 0, i32 1) }, 0
  %t499 = extractvalue { i64, ptr } %t494, 1
  %t500 = extractvalue { i64, ptr } %t494, 0
  %t501 = add i64 %t497, %t500
  %t502 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d369, i32 0, i32 1) }, 1
  %t503 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d369, i32 0, i32 1) }, 0
  %t504 = add i64 %t501, %t503
  %t506 = extractvalue { i64, ptr } %t495, 1
  %t507 = extractvalue { i64, ptr } %t495, 0
  %t508 = add i64 %t504, %t507
  %t509 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t508)
  call void @olang_textcopy(ptr %t509, ptr %t496, i64 %t497)
  %t510 = getelementptr i8, ptr %t509, i64 %t497
  call void @olang_textcopy(ptr %t510, ptr %t499, i64 %t500)
  %t511 = getelementptr i8, ptr %t510, i64 %t500
  call void @olang_textcopy(ptr %t511, ptr %t502, i64 %t503)
  %t512 = getelementptr i8, ptr %t511, i64 %t503
  call void @olang_textcopy(ptr %t512, ptr %t506, i64 %t507)
  %t513 = insertvalue { i64, ptr } undef, i64 %t508, 0
  %t514 = insertvalue { i64, ptr } %t513, ptr %t509, 1
  %t516 = extractvalue { i64, ptr } %t514, 0
  %t517 = extractvalue { i64, ptr } %t514, 1
  %t518 = mul i64 %t516, 1
  %t519 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t518)
  call void @llvm.memcpy.p0.p0.i64(ptr %t519, ptr %t517, i64 %t518, i1 false)
  %t520 = insertvalue { i64, ptr } undef, i64 %t516, 0
  %t521 = insertvalue { i64, ptr } %t520, ptr %t519, 1
  %t524 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t493, { i64, ptr } %t521)
  store { i64, ptr } %t524, ptr %l133
  br label %bb37
bb37:
  %t525 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t526 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
  %t527 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t528 = extractvalue { i64, ptr } %t527, 1
  %t529 = extractvalue { i64, ptr } %t527, 0
  %t530 = add i64 %t526, %t529
  %t531 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t532 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
  %t533 = add i64 %t530, %t532
  %t534 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t533)
  call void @olang_textcopy(ptr %t534, ptr %t525, i64 %t526)
  %t535 = getelementptr i8, ptr %t534, i64 %t526
  call void @olang_textcopy(ptr %t535, ptr %t528, i64 %t529)
  %t536 = getelementptr i8, ptr %t535, i64 %t529
  call void @olang_textcopy(ptr %t536, ptr %t531, i64 %t532)
  %t537 = insertvalue { i64, ptr } undef, i64 %t533, 0
  %t538 = insertvalue { i64, ptr } %t537, ptr %t534, 1
  %t540 = extractvalue { i64, ptr } %t538, 0
  %t541 = extractvalue { i64, ptr } %t538, 1
  %t542 = mul i64 %t540, 1
  %t543 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t542)
  call void @llvm.memcpy.p0.p0.i64(ptr %t543, ptr %t541, i64 %t542, i1 false)
  %t544 = insertvalue { i64, ptr } undef, i64 %t540, 0
  %t545 = insertvalue { i64, ptr } %t544, ptr %t543, 1
  %t546 = load ptr, ptr %l127, !tbaa !29
  %t548 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t546, { i64, ptr } %t545)
  store { i64, ptr } %t548, ptr %l136
  br label %bb38
bb38:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t551 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d372, i32 0, i32 1) }, 1
  %t552 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d372, i32 0, i32 1) }, 0
  %t554 = extractvalue { i64, ptr } %t550, 1
  %t555 = extractvalue { i64, ptr } %t550, 0
  %t556 = add i64 %t552, %t555
  %t557 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d373, i32 0, i32 1) }, 1
  %t558 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d373, i32 0, i32 1) }, 0
  %t559 = add i64 %t556, %t558
  %t560 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t559)
  call void @olang_textcopy(ptr %t560, ptr %t551, i64 %t552)
  %t561 = getelementptr i8, ptr %t560, i64 %t552
  call void @olang_textcopy(ptr %t561, ptr %t554, i64 %t555)
  %t562 = getelementptr i8, ptr %t561, i64 %t555
  call void @olang_textcopy(ptr %t562, ptr %t557, i64 %t558)
  %t563 = insertvalue { i64, ptr } undef, i64 %t559, 0
  %t564 = insertvalue { i64, ptr } %t563, ptr %t560, 1
  %t566 = extractvalue { i64, ptr } %t564, 0
  %t567 = extractvalue { i64, ptr } %t564, 1
  %t568 = mul i64 %t566, 1
  %t569 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t568)
  call void @llvm.memcpy.p0.p0.i64(ptr %t569, ptr %t567, i64 %t568, i1 false)
  %t570 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t571 = insertvalue { i64, ptr } %t570, ptr %t569, 1
  %t574 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t549, { i64, ptr } %t571)
  store { i64, ptr } %t574, ptr %l141
  br label %bb39
bb39:
  %t575 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d374, i32 0, i32 1) }, 1
  %t576 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d374, i32 0, i32 1) }, 0
  %t577 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t577, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = add i64 %t576, %t579
  %t581 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d375, i32 0, i32 1) }, 1
  %t582 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d375, i32 0, i32 1) }, 0
  %t583 = add i64 %t580, %t582
  %t584 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t585 = extractvalue { i64, ptr } %t584, 1
  %t586 = extractvalue { i64, ptr } %t584, 0
  %t587 = add i64 %t583, %t586
  %t588 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t587)
  call void @olang_textcopy(ptr %t588, ptr %t575, i64 %t576)
  %t589 = getelementptr i8, ptr %t588, i64 %t576
  call void @olang_textcopy(ptr %t589, ptr %t578, i64 %t579)
  %t590 = getelementptr i8, ptr %t589, i64 %t579
  call void @olang_textcopy(ptr %t590, ptr %t581, i64 %t582)
  %t591 = getelementptr i8, ptr %t590, i64 %t582
  call void @olang_textcopy(ptr %t591, ptr %t585, i64 %t586)
  %t592 = insertvalue { i64, ptr } undef, i64 %t587, 0
  %t593 = insertvalue { i64, ptr } %t592, ptr %t588, 1
  %t595 = extractvalue { i64, ptr } %t593, 0
  %t596 = extractvalue { i64, ptr } %t593, 1
  %t597 = mul i64 %t595, 1
  %t598 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t597)
  call void @llvm.memcpy.p0.p0.i64(ptr %t598, ptr %t596, i64 %t597, i1 false)
  %t599 = insertvalue { i64, ptr } undef, i64 %t595, 0
  %t600 = insertvalue { i64, ptr } %t599, ptr %t598, 1
  %t601 = load ptr, ptr %l126, !tbaa !29
  %t603 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t601, { i64, ptr } %t600)
  store { i64, ptr } %t603, ptr %l144
  br label %bb40
bb40:
  %t604 = load { i64, ptr }, ptr %l144, !tbaa !27
  store { i64, ptr } %t604, ptr %l16, !tbaa !27
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/emit:fnEm", ptr %t605, i32 0, i32 0
  %t608 = load ptr, ptr %t607, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t608, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d376, i32 0, i32 1) })
  br label %bb41
bb41:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t612 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t613 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t614 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
  %t616 = extractvalue { i64, ptr } %t611, 1
  %t617 = extractvalue { i64, ptr } %t611, 0
  %t618 = add i64 %t614, %t617
  %t619 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t620 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  %t621 = add i64 %t618, %t620
  %t623 = extractvalue { i64, ptr } %t612, 1
  %t624 = extractvalue { i64, ptr } %t612, 0
  %t625 = add i64 %t621, %t624
  %t626 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t627 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  %t628 = add i64 %t625, %t627
  %t629 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t628)
  call void @olang_textcopy(ptr %t629, ptr %t613, i64 %t614)
  %t630 = getelementptr i8, ptr %t629, i64 %t614
  call void @olang_textcopy(ptr %t630, ptr %t616, i64 %t617)
  %t631 = getelementptr i8, ptr %t630, i64 %t617
  call void @olang_textcopy(ptr %t631, ptr %t619, i64 %t620)
  %t632 = getelementptr i8, ptr %t631, i64 %t620
  call void @olang_textcopy(ptr %t632, ptr %t623, i64 %t624)
  %t633 = getelementptr i8, ptr %t632, i64 %t624
  call void @olang_textcopy(ptr %t633, ptr %t626, i64 %t627)
  %t634 = insertvalue { i64, ptr } undef, i64 %t628, 0
  %t635 = insertvalue { i64, ptr } %t634, ptr %t629, 1
  %t637 = extractvalue { i64, ptr } %t635, 0
  %t638 = extractvalue { i64, ptr } %t635, 1
  %t639 = mul i64 %t637, 1
  %t640 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t639)
  call void @llvm.memcpy.p0.p0.i64(ptr %t640, ptr %t638, i64 %t639, i1 false)
  %t641 = insertvalue { i64, ptr } undef, i64 %t637, 0
  %t642 = insertvalue { i64, ptr } %t641, ptr %t640, 1
  %t645 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t610, { i64, ptr } %t642)
  store { i64, ptr } %t645, ptr %l152
  br label %bb42
bb42:
  %t646 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t646, ptr %l17, !tbaa !27
  %t647 = load ptr, ptr %l0, !tbaa !29
  store ptr %t647, ptr %l153, !tbaa !29
  %t648 = load ptr, ptr %l0, !tbaa !29
  store ptr %t648, ptr %l154, !tbaa !29
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t651 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t652 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
  %t654 = extractvalue { i64, ptr } %t650, 1
  %t655 = extractvalue { i64, ptr } %t650, 0
  %t656 = add i64 %t652, %t655
  %t657 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t658 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
  %t659 = add i64 %t656, %t658
  %t660 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t659)
  call void @olang_textcopy(ptr %t660, ptr %t651, i64 %t652)
  %t661 = getelementptr i8, ptr %t660, i64 %t652
  call void @olang_textcopy(ptr %t661, ptr %t654, i64 %t655)
  %t662 = getelementptr i8, ptr %t661, i64 %t655
  call void @olang_textcopy(ptr %t662, ptr %t657, i64 %t658)
  %t663 = insertvalue { i64, ptr } undef, i64 %t659, 0
  %t664 = insertvalue { i64, ptr } %t663, ptr %t660, 1
  %t666 = extractvalue { i64, ptr } %t664, 0
  %t667 = extractvalue { i64, ptr } %t664, 1
  %t668 = mul i64 %t666, 1
  %t669 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t668)
  call void @llvm.memcpy.p0.p0.i64(ptr %t669, ptr %t667, i64 %t668, i1 false)
  %t670 = insertvalue { i64, ptr } undef, i64 %t666, 0
  %t671 = insertvalue { i64, ptr } %t670, ptr %t669, 1
  %t674 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t649, { i64, ptr } %t671)
  store { i64, ptr } %t674, ptr %l159
  br label %bb43
bb43:
  %t675 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t676 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
  %t677 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t677, 1
  %t679 = extractvalue { i64, ptr } %t677, 0
  %t680 = add i64 %t676, %t679
  %t681 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t682 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
  %t683 = add i64 %t680, %t682
  %t684 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t683)
  call void @olang_textcopy(ptr %t684, ptr %t675, i64 %t676)
  %t685 = getelementptr i8, ptr %t684, i64 %t676
  call void @olang_textcopy(ptr %t685, ptr %t678, i64 %t679)
  %t686 = getelementptr i8, ptr %t685, i64 %t679
  call void @olang_textcopy(ptr %t686, ptr %t681, i64 %t682)
  %t687 = insertvalue { i64, ptr } undef, i64 %t683, 0
  %t688 = insertvalue { i64, ptr } %t687, ptr %t684, 1
  %t690 = extractvalue { i64, ptr } %t688, 0
  %t691 = extractvalue { i64, ptr } %t688, 1
  %t692 = mul i64 %t690, 1
  %t693 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t692)
  call void @llvm.memcpy.p0.p0.i64(ptr %t693, ptr %t691, i64 %t692, i1 false)
  %t694 = insertvalue { i64, ptr } undef, i64 %t690, 0
  %t695 = insertvalue { i64, ptr } %t694, ptr %t693, 1
  %t696 = load ptr, ptr %l154, !tbaa !29
  %t698 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t696, { i64, ptr } %t695)
  store { i64, ptr } %t698, ptr %l162
  br label %bb44
bb44:
  %t699 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t700 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
  %t701 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t702 = extractvalue { i64, ptr } %t701, 1
  %t703 = extractvalue { i64, ptr } %t701, 0
  %t704 = add i64 %t700, %t703
  %t705 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d385, i32 0, i32 1) }, 1
  %t706 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d385, i32 0, i32 1) }, 0
  %t707 = add i64 %t704, %t706
  %t708 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t707)
  call void @olang_textcopy(ptr %t708, ptr %t699, i64 %t700)
  %t709 = getelementptr i8, ptr %t708, i64 %t700
  call void @olang_textcopy(ptr %t709, ptr %t702, i64 %t703)
  %t710 = getelementptr i8, ptr %t709, i64 %t703
  call void @olang_textcopy(ptr %t710, ptr %t705, i64 %t706)
  %t711 = insertvalue { i64, ptr } undef, i64 %t707, 0
  %t712 = insertvalue { i64, ptr } %t711, ptr %t708, 1
  %t714 = extractvalue { i64, ptr } %t712, 0
  %t715 = extractvalue { i64, ptr } %t712, 1
  %t716 = mul i64 %t714, 1
  %t717 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t716)
  call void @llvm.memcpy.p0.p0.i64(ptr %t717, ptr %t715, i64 %t716, i1 false)
  %t718 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t717, 1
  %t720 = load ptr, ptr %l153, !tbaa !29
  %t722 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t720, { i64, ptr } %t719)
  store { i64, ptr } %t722, ptr %l165
  br label %bb45
bb45:
  %t723 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t724 = load ptr, ptr %l0, !tbaa !29
  %t726 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d386, i32 0, i32 1) }, 1
  %t727 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d386, i32 0, i32 1) }, 0
  %t729 = extractvalue { i64, ptr } %t723, 1
  %t730 = extractvalue { i64, ptr } %t723, 0
  %t731 = add i64 %t727, %t730
  %t732 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d387, i32 0, i32 1) }, 1
  %t733 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d387, i32 0, i32 1) }, 0
  %t734 = add i64 %t731, %t733
  %t735 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t734)
  call void @olang_textcopy(ptr %t735, ptr %t726, i64 %t727)
  %t736 = getelementptr i8, ptr %t735, i64 %t727
  call void @olang_textcopy(ptr %t736, ptr %t729, i64 %t730)
  %t737 = getelementptr i8, ptr %t736, i64 %t730
  call void @olang_textcopy(ptr %t737, ptr %t732, i64 %t733)
  %t738 = insertvalue { i64, ptr } undef, i64 %t734, 0
  %t739 = insertvalue { i64, ptr } %t738, ptr %t735, 1
  %t741 = extractvalue { i64, ptr } %t739, 0
  %t742 = extractvalue { i64, ptr } %t739, 1
  %t743 = mul i64 %t741, 1
  %t744 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t743)
  call void @llvm.memcpy.p0.p0.i64(ptr %t744, ptr %t742, i64 %t743, i1 false)
  %t745 = insertvalue { i64, ptr } undef, i64 %t741, 0
  %t746 = insertvalue { i64, ptr } %t745, ptr %t744, 1
  %t749 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t724, { i64, ptr } %t746)
  store { i64, ptr } %t749, ptr %l170
  br label %bb46
bb46:
  %t750 = load { i64, ptr }, ptr %l170, !tbaa !27
  store { i64, ptr } %t750, ptr %l19, !tbaa !27
  %t751 = load ptr, ptr %l0, !tbaa !29
  store ptr %t751, ptr %l171, !tbaa !29
  %t752 = load ptr, ptr %l0, !tbaa !29
  store ptr %t752, ptr %l172, !tbaa !29
  %t753 = load ptr, ptr %l0, !tbaa !29
  %t754 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t757 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t753, { i64, ptr } %t754, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d388, i32 0, i32 1) })
  store { i64, ptr } %t757, ptr %l175
  br label %bb47
bb47:
  %t758 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t759 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d389, i32 0, i32 1) }, 1
  %t760 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d389, i32 0, i32 1) }, 0
  %t761 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t762 = extractvalue { i64, ptr } %t761, 1
  %t763 = extractvalue { i64, ptr } %t761, 0
  %t764 = add i64 %t760, %t763
  %t765 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t766 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  %t767 = add i64 %t764, %t766
  %t769 = extractvalue { i64, ptr } %t758, 1
  %t770 = extractvalue { i64, ptr } %t758, 0
  %t771 = add i64 %t767, %t770
  %t772 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t771)
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
  %t782 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t781)
  call void @llvm.memcpy.p0.p0.i64(ptr %t782, ptr %t780, i64 %t781, i1 false)
  %t783 = insertvalue { i64, ptr } undef, i64 %t779, 0
  %t784 = insertvalue { i64, ptr } %t783, ptr %t782, 1
  %t785 = load ptr, ptr %l172, !tbaa !29
  %t787 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t785, { i64, ptr } %t784)
  store { i64, ptr } %t787, ptr %l179
  br label %bb48
bb48:
  %t788 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t789 = extractvalue { i64, ptr } %t788, 0
  %t790 = extractvalue { i64, ptr } %t788, 1
  %t791 = mul i64 %t789, 1
  %t792 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t791)
  call void @llvm.memcpy.p0.p0.i64(ptr %t792, ptr %t790, i64 %t791, i1 false)
  %t793 = insertvalue { i64, ptr } undef, i64 %t789, 0
  %t794 = insertvalue { i64, ptr } %t793, ptr %t792, 1
  %t795 = load ptr, ptr %l171, !tbaa !29
  %t797 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v2, ptr %v2, ptr %t795, { i64, ptr } %t794)
  store { i64, ptr } %t797, ptr %l181
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t798 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t798, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2edirsOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 1, ptr %l2, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l17, !tbaa !24
  store i64 %t35, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l14, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l35, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t56
  %t61 = load i8, ptr %t60, !tbaa !32
  %t63 = icmp eq i8 %t61, 47
  br i1 %t63, label %bb12, label %bb13
bb12:
  %t65 = load ptr, ptr %lp1
  store ptr %t65, ptr %l39, !tbaa !29
  %t66 = ptrtoint ptr %v1 to i64
  store i64 %t66, ptr %l40, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t67, label %bb14, label %bb15
bb13:
  br label %bb23
bb14:
  %t69 = call ptr @__olang_region_make(ptr %v1)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l40, !tbaa !24
  br label %bb15
bb15:
  %t71 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t71, ptr %l42, !tbaa !27
  %t72 = load i64, ptr %l7, !tbaa !24
  store i64 %t72, ptr %l43, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  store i64 %t74, ptr %l44, !tbaa !24
  %t75 = icmp sge i64 0, 0
  br i1 %t75, label %bb16, label %bb17
bb16:
  %t77 = load i64, ptr %l43, !tbaa !24
  %t78 = icmp sle i64 0, %t77
  br i1 %t78, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_3adde053bd4372a6_ba741c94b3abe99a)
  unreachable
bb18:
  %t80 = load i64, ptr %l43, !tbaa !24
  %t81 = load i64, ptr %l44, !tbaa !24
  %t82 = icmp sle i64 %t80, %t81
  br i1 %t82, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_3adde053bd4372a6_ba741c94b3abe99a)
  unreachable
bb20:
  %t84 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l43, !tbaa !24
  %t87 = getelementptr i8, ptr %t85, i64 0
  %t88 = sub i64 %t86, 0
  %t89 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t87, 1
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = extractvalue { i64, ptr } %t90, 0
  %t94 = load i64, ptr %l40
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = call ptr @__olang_scope_alloc(ptr %t95, i64 %t93)
  call void @olang_textcopy(ptr %t96, ptr %t92, i64 %t93)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t100 = load i64, ptr %l40
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = extractvalue { i64, ptr } %t98, 0
  %t103 = extractvalue { i64, ptr } %t98, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %t101, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t108 = load ptr, ptr %l39, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t108, { i64, ptr } %t107)
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_3adde053bd4372a6_ba741c94b3abe99a)
  unreachable
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t110 = load i64, ptr %l6, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l6, !tbaa !24
  br label %bb8
bb25:
  %t114 = load ptr, ptr %lp1
  store ptr %t114, ptr %l53, !tbaa !29
  %t115 = ptrtoint ptr %v1 to i64
  store i64 %t115, ptr %l54, !tbaa !24
  %t116 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t118 = call ptr @__olang_region_make(ptr %v1)
  %t119 = ptrtoint ptr %t118 to i64
  store i64 %t119, ptr %l54, !tbaa !24
  br label %bb27
bb27:
  %t120 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = extractvalue { i64, ptr } %t120, 0
  %t124 = load i64, ptr %l54
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call ptr @__olang_scope_alloc(ptr %t125, i64 %t123)
  call void @olang_textcopy(ptr %t126, ptr %t122, i64 %t123)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  %t130 = load i64, ptr %l54
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = extractvalue { i64, ptr } %t128, 0
  %t133 = extractvalue { i64, ptr } %t128, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %t131, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t138 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t138, { i64, ptr } %t137)
  br label %bb28
bb28:
  %t140 = load ptr, ptr %lp1
  %t141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t140
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2femit_2efnTypeOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l38 = alloca %"std/prelude/text:StringBuilder"
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l58 = alloca i1
  %l63 = alloca i1
  %l64 = alloca { i64, ptr }
  %l69 = alloca i1
  %l74 = alloca i1
  %l75 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca i64
  %l91 = alloca i64
  %l99 = alloca i1
  %l100 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d391, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l13
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l12
  br label %bb1
bb1:
  %t8 = load i64, ptr %l12, !tbaa !24
  store i64 %t8, ptr %l10, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t10, ptr %l14, !tbaa !27
  store i64 %t9, ptr %l15, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l16, !tbaa !24
  %t14 = icmp sge i64 8, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp sle i64 8, %t16
  br i1 %t17, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_e82d0ac416d48216_324114d396543a52)
  unreachable
bb7:
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = load i64, ptr %l16, !tbaa !24
  %t21 = icmp sle i64 %t19, %t20
  br i1 %t21, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_e82d0ac416d48216_324114d396543a52)
  unreachable
bb9:
  %t23 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = getelementptr i8, ptr %t24, i64 8
  %t27 = sub i64 %t25, 8
  %t28 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t26, 1
  store { i64, ptr } %t29, ptr %l2, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d392, i32 0, i32 1) })
  %t34 = extractvalue { i32, i64 } %t33, 1
  %t35 = extractvalue { i32, i64 } %t33, 0
  store i32 %t35, ptr %l24
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb12, label %ok.37, !prof !99
ok.37:
  store i64 %t34, ptr %l23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e82d0ac416d48216_324114d396543a52)
  unreachable
bb11:
  %t38 = load i64, ptr %l23, !tbaa !24
  store i64 %t38, ptr %l21, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l21, !tbaa !24
  br label %bb14
bb14:
  %t43 = load i64, ptr %l21, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t44, ptr %l27, !tbaa !27
  %t47 = add i64 %t43, 1
  store i64 %t47, ptr %l29, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = sub i64 %t50, 2
  store i64 %t52, ptr %l32, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l33, !tbaa !24
  %t55 = load i64, ptr %l29, !tbaa !24
  %t56 = icmp sge i64 %t55, 0
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t58 = load i64, ptr %l29, !tbaa !24
  %t59 = load i64, ptr %l32, !tbaa !24
  %t60 = icmp sle i64 %t58, %t59
  br i1 %t60, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_22732ff0c0400a73_b2dcb14ed3e7aa4f)
  unreachable
bb17:
  %t62 = load i64, ptr %l32, !tbaa !24
  %t63 = load i64, ptr %l33, !tbaa !24
  %t64 = icmp sle i64 %t62, %t63
  br i1 %t64, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_22732ff0c0400a73_b2dcb14ed3e7aa4f)
  unreachable
bb19:
  %t66 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l29, !tbaa !24
  %t69 = load i64, ptr %l32, !tbaa !24
  %t70 = getelementptr i8, ptr %t67, i64 %t68
  %t71 = sub i64 %t69, %t68
  %t72 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t70, 1
  store { i64, ptr } %t73, ptr %l4, !tbaa !27
  %t75 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t75, ptr %l38
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_22732ff0c0400a73_b2dcb14ed3e7aa4f)
  unreachable
bb21:
  %t76 = load %"std/prelude/text:StringBuilder", ptr %l38
  store %"std/prelude/text:StringBuilder" %t76, ptr %l5
  %t77 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 1
  %t80 = extractvalue { i64, ptr } %t77, 0
  %t81 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
  %t83 = add i64 %t80, %t82
  %t84 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t79, i64 %t80)
  %t85 = getelementptr i8, ptr %t84, i64 %t80
  call void @olang_textcopy(ptr %t85, ptr %t81, i64 %t82)
  %t86 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t84, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = extractvalue { i64, ptr } %t87, 1
  %t91 = mul i64 %t89, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t91)
  call void @llvm.memcpy.p0.p0.i64(ptr %t92, ptr %t90, i64 %t91, i1 false)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } %t94)
  br label %bb22
bb22:
  store i64 0, ptr %l6, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  store i64 %t99, ptr %l7, !tbaa !24
  store i1 true, ptr %l8, !tbaa !21
  br label %bb23
bb23:
  %t101 = load i64, ptr %l6, !tbaa !24
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb24, label %bb25
bb24:
  br label %bb69
bb25:
  br label %bb26
bb26:
  %t109 = load i64, ptr %l6, !tbaa !24
  store i64 %t109, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  %t111 = load i64, ptr %l6, !tbaa !24
  %t112 = load i64, ptr %l7, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  br i1 %t115, label %bb28, label %bb29
bb28:
  %t117 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t117, ptr %l54, !tbaa !27
  %t118 = load i64, ptr %l6, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i8, ptr %t121, i64 %t118
  %t123 = load i8, ptr %t122, !tbaa !32
  %t125 = icmp eq i8 %t123, 32
  br i1 %t125, label %bb30, label %bb31
bb29:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb42
bb30:
  %t127 = load i64, ptr %l6, !tbaa !24
  %t129 = add i64 %t127, 1
  %t130 = load i64, ptr %l7, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  store i1 %t133, ptr %l58, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb32
bb32:
  %t135 = load i1, ptr %l58, !tbaa !21
  br i1 %t135, label %bb33, label %bb34
bb33:
  %t136 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t136, ptr %l64, !tbaa !27
  %t137 = load i64, ptr %l6, !tbaa !24
  %t139 = add i64 %t137, 1
  %t141 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i8, ptr %t142, i64 %t139
  %t144 = load i8, ptr %t143, !tbaa !32
  %t146 = icmp eq i8 %t144, 37
  store i1 %t146, ptr %l63, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb35
bb35:
  %t148 = load i1, ptr %l63, !tbaa !21
  br i1 %t148, label %bb36, label %bb37
bb36:
  %t149 = load i64, ptr %l6, !tbaa !24
  %t151 = add i64 %t149, 2
  %t152 = load i64, ptr %l7, !tbaa !24
  %t155 = icmp sge i64 %t151, %t152
  br i1 %t155, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb41
bb38:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb40
bb39:
  %t157 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t157, ptr %l75, !tbaa !27
  %t158 = load i64, ptr %l6, !tbaa !24
  %t160 = add i64 %t158, 2
  %t162 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 %t160
  %t165 = load i8, ptr %t164, !tbaa !32
  %t167 = icmp ne i8 %t165, 34
  store i1 %t167, ptr %l74, !tbaa !21
  br label %bb40
bb40:
  %t169 = load i1, ptr %l74, !tbaa !21
  store i1 %t169, ptr %l69, !tbaa !21
  br label %bb41
bb41:
  %t170 = load i1, ptr %l69, !tbaa !21
  %t171 = xor i1 %t170, true
  store i1 %t171, ptr %l53, !tbaa !21
  br label %bb42
bb42:
  %t173 = load i1, ptr %l53, !tbaa !21
  %t174 = xor i1 %t173, true
  br i1 %t174, label %bb43, label %bb44
bb43:
  br label %bb47
bb44:
  br label %bb45
bb45:
  %t176 = load i64, ptr %l6, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l6, !tbaa !24
  br label %bb46
bb46:
  br label %bb27
bb47:
  %t180 = load i1, ptr %l8, !tbaa !21
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d394, i32 0, i32 1) })
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s4)
  br label %bb51
bb51:
  store i1 false, ptr %l8, !tbaa !21
  store ptr %l5, ptr %l87, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t185, ptr %l88, !tbaa !27
  %t186 = load i64, ptr %l9, !tbaa !24
  store i64 %t186, ptr %l89, !tbaa !24
  %t187 = load i64, ptr %l6, !tbaa !24
  store i64 %t187, ptr %l90, !tbaa !24
  %t188 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  store i64 %t189, ptr %l91, !tbaa !24
  %t190 = load i64, ptr %l89, !tbaa !24
  %t191 = icmp sge i64 %t190, 0
  br i1 %t191, label %bb52, label %bb53
bb52:
  %t193 = load i64, ptr %l89, !tbaa !24
  %t194 = load i64, ptr %l90, !tbaa !24
  %t195 = icmp sle i64 %t193, %t194
  br i1 %t195, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_8ee0ebce1ce81198_5305d4c1c6657a64)
  unreachable
bb54:
  %t197 = load i64, ptr %l90, !tbaa !24
  %t198 = load i64, ptr %l91, !tbaa !24
  %t199 = icmp sle i64 %t197, %t198
  br i1 %t199, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_8ee0ebce1ce81198_5305d4c1c6657a64)
  unreachable
bb56:
  %t201 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = load i64, ptr %l89, !tbaa !24
  %t204 = load i64, ptr %l90, !tbaa !24
  %t205 = getelementptr i8, ptr %t202, i64 %t203
  %t206 = sub i64 %t204, %t203
  %t207 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t205, 1
  %t209 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t209, { i64, ptr } %t208)
  br label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_8ee0ebce1ce81198_5305d4c1c6657a64)
  unreachable
bb58:
  br label %bb59
bb59:
  %t211 = load i64, ptr %l6, !tbaa !24
  %t212 = load i64, ptr %l7, !tbaa !24
  %t215 = icmp slt i64 %t211, %t212
  br i1 %t215, label %bb60, label %bb61
bb60:
  %t217 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t217, ptr %l100, !tbaa !27
  %t218 = load i64, ptr %l6, !tbaa !24
  %t220 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr i8, ptr %t221, i64 %t218
  %t223 = load i8, ptr %t222, !tbaa !32
  %t225 = icmp ne i8 %t223, 44
  store i1 %t225, ptr %l99, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb62
bb62:
  %t227 = load i1, ptr %l99, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  br label %bb65
bb65:
  %t230 = load i64, ptr %l6, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l6, !tbaa !24
  br label %bb66
bb66:
  br label %bb59
bb67:
  %t234 = load i64, ptr %l6, !tbaa !24
  %t236 = add i64 %t234, 2
  store i64 %t236, ptr %l6, !tbaa !24
  br label %bb68
bb68:
  br label %bb23
bb69:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d395, i32 0, i32 1) })
  br label %bb70
bb70:
  %t240 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l5)
  store { i64, ptr } %t240, ptr %l111
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s0)
  %t241 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t241, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_3aReused_2ector(ptr %out, ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i1
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"compiler/emit:Reused"
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l1, !tbaa !24
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l10
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l10
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l2
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l14, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e2
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l14
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l16
  br label %bb8
bb8:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e2
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load i64, ptr %l14
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l3
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l18, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e3
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l18
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l20
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e3
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l18
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb15
bb15:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  %t63 = ptrtoint ptr %v0 to i64
  store i64 %t63, ptr %l22, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e6
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = call ptr @__olang_region_make(ptr %v0)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l22, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l22
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t69, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l24
  br label %bb18
bb18:
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aReused_2e6
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = load i64, ptr %l22
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  %t81 = icmp eq ptr %t80, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t81)
  br label %bb20
bb20:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t83 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 0
  %t84 = load i64, ptr %l1, !tbaa !24
  store i64 %t84, ptr %t83, !tbaa !24
  %t85 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 1
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %t85
  %t87 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 2
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %t87
  %t89 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 3
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t89
  %t91 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 4
  %t92 = load i64, ptr %l5, !tbaa !24
  store i64 %t92, ptr %t91, !tbaa !24
  %t93 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 5
  %t94 = load i1, ptr %l6, !tbaa !21
  store i1 %t94, ptr %t93, !tbaa !21
  %t95 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %t95
  %t97 = getelementptr %"compiler/emit:Reused", ptr %l26, i32 0, i32 7
  store i64 -1, ptr %t97, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l26, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" : " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c";\0A" }>, align 8
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
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" : " }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c";\0A" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d10 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_thread_init" }>, align 8
@.d11 = private constant <{ i64, [88 x i8] }> <{ i64 0, [88 x i8] c"define internal void @__olang_lib_init() #0 {\0Aentry:\0A  call void @__olang_thread_init()\0A" }>, align 8
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
@.d12 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"  call void @" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"()\0A" }>, align 8
@.d14 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"  ret void\0A}\0A\0A" }>, align 8
@.d15 = private constant <{ i64, [130 x i8] }> <{ i64 0, [130 x i8] c"@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__olang_lib_init, ptr null }]\0A\0A" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d16 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_lib_init" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang.notable" }>, align 8
@.d19 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"@olang.notable = linkonce_odr constant ptr null\0A" }>, align 8
@.d20 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang.notable" }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"*/" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"* /" }>, align 8
@.d24 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_test_name" }>, align 8
@.d25 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"@__olang_test_name = external global ptr" }>, align 8
@.d26 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_test_file" }>, align 8
@.d27 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"@__olang_test_file = external global ptr" }>, align 8
@.d28 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_fuzz_data" }>, align 8
@.d29 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"@__olang_fuzz_data = external global ptr" }>, align 8
@.d30 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_fuzz_size" }>, align 8
@.d31 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"@__olang_fuzz_size = external global i64" }>, align 8
@.d32 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"olang.typeid." }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d34 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c" = linkonce_odr constant i8 0\0A" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcabi_3aWay_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fcabi_3aWay_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcabi_3aWay_2e3 = weak hidden constant i1 false
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fcabi_3aWay_2e4 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d37 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ptr sret(" }>, align 8
@.d38 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d41 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"@__olang_" }>, align 8
@.d42 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ptr @" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d48 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d51 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" alignstack(8)" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d54 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d57 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ptr byval(" }>, align 8
@.d58 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c") align " }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d61 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d63 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ..." }>, align 8
@.d64 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d65 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d69 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d73 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d77 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d78 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d80 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d81 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d82 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d84 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d85 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d86 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d87 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d88 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d89 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d90 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ptr" }>, align 8
@.d91 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d92 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d93 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c", ptr null, i32 1" }>, align 8
@.d94 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d95 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d96 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d97 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d98 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d99 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", !tbaa !28" }>, align 8
@.d100 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d101 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d102 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_scope_escape" }>, align 8
@.d103 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call void @__olang_scope_escape(ptr " }>, align 8
@.d104 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d105 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d106 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d107 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d108 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d109 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", !tbaa !28" }>, align 8
@.d110 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call ptr @" }>, align 8
@.d111 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c".coro(ptr " }>, align 8
@.d112 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d114 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"__olang_scope_register_dtor" }>, align 8
@.d115 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"call void @__olang_scope_register_dtor(ptr " }>, align 8
@.d116 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d117 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d118 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".drop)" }>, align 8
@.d119 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".wnext" }>, align 8
@.d120 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"insertvalue { ptr, ptr } undef, ptr @" }>, align 8
@.d121 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d122 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"insertvalue { ptr, ptr } " }>, align 8
@.d123 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d124 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d125 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3ascopeUse_2e0 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d126 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"fpext " }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d128 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" to double" }>, align 8
@.d129 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d130 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d131 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"fcmp ogt double " }>, align 8
@.d132 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", -1.0" }>, align 8
@.d133 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"fcmp olt double " }>, align 8
@.d134 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d135 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"fcmp oge double " }>, align 8
@.d136 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d137 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"fcmp ogt double " }>, align 8
@.d138 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d139 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"fcmp olt double " }>, align 8
@.d140 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d141 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"and i1 " }>, align 8
@.d142 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d143 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"xor i1 " }>, align 8
@.d144 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", true" }>, align 8
@.d145 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d146 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"llvm.memset.p0.i64" }>, align 8
@.d147 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"void @llvm.memset.p0.i64(ptr, i8, i64, i1)" }>, align 8
@.d148 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call void @llvm.memset.p0.i64(ptr " }>, align 8
@.d149 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", i8 0, i64 " }>, align 8
@.d150 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d151 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d152 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_scope_alloc_a" }>, align 8
@.d153 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d154 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", i32, ptr" }>, align 8
@.d155 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ptr" }>, align 8
@.d156 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@olang_2esole_2ecompiler_2femit_3afnEm_2e29 = weak hidden constant i1 false
@.d157 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"  %prom = alloca " }>, align 8
@.d158 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", align 8\0A" }>, align 8
@.d159 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  store " }>, align 8
@.d160 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" zeroinitializer, ptr %prom\0A" }>, align 8
@.d161 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  %rv = getelementptr " }>, align 8
@.d162 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c", ptr %prom, i32 0, i32 0\0A" }>, align 8
@.d163 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"  %cid = call token @llvm.coro.id(i32 8, ptr %prom, ptr null, ptr null)\0A" }>, align 8
@.d164 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"  %cneed = call i1 @llvm.coro.alloc(token %cid)\0A  br i1 %cneed, label %coro.alloc, label %coro.begin\0A" }>, align 8
@.d165 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"coro.alloc:\0A  %csz = call i64 @llvm.coro.size.i64()\0A  %cal = call i64 @llvm.coro.align.i64()\0A" }>, align 8
@.d166 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"  %cmem0 = call ptr @__olang_scope_alloc_a(ptr %home, i64 %csz, i64 %cal)" }>, align 8
@.d167 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"\0A  br label %coro.begin\0A" }>, align 8
@.d168 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"coro.begin:\0A  %cmem = phi ptr [ null, %entry ], [ %cmem0, %coro.alloc ]\0A" }>, align 8
@.d169 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"  %hdl = call ptr @llvm.coro.begin(token %cid, ptr %cmem)\0A" }>, align 8
@.d170 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %lp" }>, align 8
@.d171 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" = alloca ptr\0A" }>, align 8
@.d172 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"a parameter or capture in an arena" }>, align 8
@.d173 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %l" }>, align 8
@.d174 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" = alloca " }>, align 8
@.d175 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d176 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %l" }>, align 8
@.d177 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c" = call ptr @__olang_scope_alloc_a(ptr %big, i64 " }>, align 8
@.d178 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d179 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d180 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %s" }>, align 8
@.d181 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" = alloca %olang.builder\0A  %s" }>, align 8
@.d182 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"room = alloca [64 x i8], align 8\0A" }>, align 8
@.d183 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %s" }>, align 8
@.d184 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" = alloca %olang.scope\0A" }>, align 8
@.d185 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %jh" }>, align 8
@.d186 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" = alloca ptr\0A" }>, align 8
@.d187 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %u" }>, align 8
@.d188 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" = alloca %olang.unwind\0A" }>, align 8
@.d189 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %wh" }>, align 8
@.d190 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = alloca ptr\0A  %wc" }>, align 8
@.d191 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = alloca ptr\0A  %ws" }>, align 8
@.d192 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" = alloca i32\0A" }>, align 8
@.d193 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d194 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"  %rv = alloca " }>, align 8
@.d195 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d196 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a parameter homed in an arena" }>, align 8
@.d197 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d198 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d199 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"  call void @llvm.memmove.p0.p0.i64(ptr %l" }>, align 8
@.d200 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %a" }>, align 8
@.d201 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d202 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", i1 false)\0A" }>, align 8
@.d203 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %pf" }>, align 8
@.d204 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" = insertvalue { ptr, ptr } undef, ptr %a" }>, align 8
@.d205 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"c, 0\0A" }>, align 8
@.d206 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %pg" }>, align 8
@.d207 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" = insertvalue { ptr, ptr } %pf" }>, align 8
@.d208 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %a" }>, align 8
@.d209 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"e, 1\0A" }>, align 8
@.d210 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"  store { ptr, ptr } %pg" }>, align 8
@.d211 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %l" }>, align 8
@.d212 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d213 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  store " }>, align 8
@.d214 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" %a" }>, align 8
@.d215 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %l" }>, align 8
@.d216 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d217 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"start" }>, align 8
@.d218 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"%is = call i8 @llvm.coro.suspend(token none, i1 false)" }>, align 8
@.d219 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"switch i8 %is, label %gen.end [ i8 0, label %gen.go i8 1, label %gen.fresh ]" }>, align 8
@.d220 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"gen.fresh" }>, align 8
@.d221 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"br label %gen.free" }>, align 8
@.d222 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"gen.go" }>, align 8
@.d223 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d224 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%l" }>, align 8
@.d225 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d226 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d227 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%big" }>, align 8
@.d228 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%l" }>, align 8
@.d229 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d230 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"br label %bb0" }>, align 8
@.d231 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a capture homed in an arena" }>, align 8
@.d232 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %cp" }>, align 8
@.d233 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = getelementptr " }>, align 8
@.d234 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", ptr %env, i32 0, i32 " }>, align 8
@.d235 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d236 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"llvm.memmove.p0.p0.i64" }>, align 8
@.d237 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d238 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %cv" }>, align 8
@.d239 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" = load " }>, align 8
@.d240 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %cp" }>, align 8
@.d241 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", !tbaa !28\0A" }>, align 8
@.d242 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"  call void @llvm.memmove.p0.p0.i64(ptr %l" }>, align 8
@.d243 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %cp" }>, align 8
@.d244 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d245 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", i1 false)\0A" }>, align 8
@.d246 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  store " }>, align 8
@.d247 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" %cv" }>, align 8
@.d248 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %l" }>, align 8
@.d249 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d250 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_capture_scope" }>, align 8
@.d251 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %vq" }>, align 8
@.d252 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = getelementptr " }>, align 8
@.d253 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", ptr %env, i32 0, i32 " }>, align 8
@.d254 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d255 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %vr" }>, align 8
@.d256 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" = load ptr, ptr %vq" }>, align 8
@.d257 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c", !tbaa !28\0A" }>, align 8
@.d258 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %vc" }>, align 8
@.d259 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" = call ptr @__olang_capture_scope(ptr %vr" }>, align 8
@.d260 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d261 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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

@.d262 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_ert_clear" }>, align 8
@.d263 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @__olang_ert_clear()" }>, align 8
@.d264 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"  call void @__olang_scope_close(ptr %big)\0A" }>, align 8
@.d265 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@olang_2esole_2ecompiler_2femit_3afnEm_2e5 = weak hidden constant i1 false
@.d266 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ret" }>, align 8
@.d267 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"%fs = call i8 @llvm.coro.suspend(token none, i1 true)" }>, align 8
@.d268 = private constant <{ i64, [77 x i8] }> <{ i64 0, [77 x i8] c"switch i8 %fs, label %gen.end [ i8 0, label %gen.dead i8 1, label %gen.free ]" }>, align 8
@.d269 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"gen.dead" }>, align 8
@.d270 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d271 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"gen.free" }>, align 8
@.d272 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"call void @__olang_scope_close(ptr %big)" }>, align 8
@.d273 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"%fm = call ptr @llvm.coro.free(token %cid, ptr %hdl)" }>, align 8
@.d274 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"br label %gen.end" }>, align 8
@.d275 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"gen.end" }>, align 8
@.d276 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"%ce = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)" }>, align 8
@.d277 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"ret ptr %hdl" }>, align 8
@.d278 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"call void @__olang_scope_close(ptr %big)" }>, align 8
@.d279 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d280 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"%rr = load " }>, align 8
@.d281 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %rv" }>, align 8
@.d282 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret void" }>, align 8
@.d283 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d284 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" %rr" }>, align 8
@.d285 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d286 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d287 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d288 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d289 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d290 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d291 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d292 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d293 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d294 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"nuw " }>, align 8
@.d295 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"nsw " }>, align 8
@.d296 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mul " }>, align 8
@.d297 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d298 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d299 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d300 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"umin" }>, align 8
@.d301 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"smin" }>, align 8
@.d302 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"smax" }>, align 8
@.d303 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trunc " }>, align 8
@.d304 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d305 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d306 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d307 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%t" }>, align 8
@.d308 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d309 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"trunc i" }>, align 8
@.d310 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d311 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" to i" }>, align 8
@.d312 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d313 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d314 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d315 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d316 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"trunc i32 " }>, align 8
@.d317 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" to i" }>, align 8
@.d318 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"zext i32 " }>, align 8
@.d319 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" to i" }>, align 8
@.d320 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d321 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq i32 " }>, align 8
@.d322 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d323 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d324 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", i" }>, align 8
@.d325 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d326 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"try passed it on" }>, align 8
@.d327 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a task failed, and its join passed it on" }>, align 8
@.d328 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"raised here" }>, align 8
@.d329 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_ert_pass" }>, align 8
@.d330 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_ert_raise" }>, align 8
@.d331 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"void @" }>, align 8
@.d332 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr)" }>, align 8
@.d333 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d334 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d335 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"call void @" }>, align 8
@.d336 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(ptr " }>, align 8
@.d337 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d338 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i128" }>, align 8
@.d339 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d340 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d341 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d342 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" to i128" }>, align 8
@.d343 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d344 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"icmp slt i128 " }>, align 8
@.d345 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d346 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"sub i128 0, " }>, align 8
@.d347 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d348 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", i128 " }>, align 8
@.d349 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"llvm.ctlz.i128" }>, align 8
@.d350 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"i128 @llvm.ctlz.i128(i128, i1)" }>, align 8
@.d351 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"or i128 " }>, align 8
@.d352 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d353 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call i128 @llvm.ctlz.i128(i128 " }>, align 8
@.d354 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", i1 true)" }>, align 8
@.d355 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"sub i128 65, " }>, align 8
@.d356 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"icmp sgt i128 " }>, align 8
@.d357 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d358 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d359 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", i128 " }>, align 8
@.d360 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i128 0" }>, align 8
@.d361 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"shl i128 1, " }>, align 8
@.d362 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"sub i128 " }>, align 8
@.d363 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d364 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"and i128 " }>, align 8
@.d365 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d366 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp ne i128 " }>, align 8
@.d367 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d368 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"lshr i128 " }>, align 8
@.d369 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d370 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"trunc i128 " }>, align 8
@.d371 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d372 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"zext i1 " }>, align 8
@.d373 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d374 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"or i64 " }>, align 8
@.d375 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d376 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_int_bf16" }>, align 8
@.d377 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call bfloat @__olang_int_bf16(i64 " }>, align 8
@.d378 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i1 " }>, align 8
@.d379 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d380 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"trunc i128 " }>, align 8
@.d381 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i32" }>, align 8
@.d382 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"add i32 " }>, align 8
@.d383 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", 127" }>, align 8
@.d384 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"shl i32 " }>, align 8
@.d385 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 23" }>, align 8
@.d386 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"bitcast i32 " }>, align 8
@.d387 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" to float" }>, align 8
@.d388 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d389 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"fmul float " }>, align 8
@.d390 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d391 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d392 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d393 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d394 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d395 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@olang_2esole_2ecompiler_2femit_3aReused_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aReused_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aReused_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aReused_2e6 = weak hidden constant i1 false
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
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecBitfield(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalOrder(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H901ad831a5883703dcf426ee01511832(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_42bc5298e90f43ae_6d491b8985e0cdda = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_5c86fd64ff4c2cab_ac7223dcbaf0ef37 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecanonOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %v0, i64 %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i32 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, { i64, ptr } %a4)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexternArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eexportNamed(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, ptr %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_11f14fa65e4040d5_e8173accb9b141e1 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecHeader(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_c1b63f01de4704cb_7c986704c53dd4e7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecParamList(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ememmove(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3)
@olang_loc_abf674e0f035191f_fe40c9b44f4d0b8b = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2eblockName(ptr %v0, i32 %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeFor(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecapVars(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_4c53df269225a815_e91774848fc42cb1 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGen(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0)
declare %"compiler/emit:scopeUse" @compiler_2femit_3ascopeUse_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_3b6348629663638e_4d98396f767ecbfa = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
@olang_loc_e68eff5da6298283_f7922e79bdd8a34f = external constant [0 x i8]
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2euse(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3ascopeUse_2estmt(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1)
@olang_loc_7398c824c6ccd25f_37644bbf4fe2ca83 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2epow2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_3a52453b80be52d1_6c5ca24620edcd6d = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebigArena(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindDirect(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2efindWalks(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_fad0caecc364ec25_9c3ddefd20d373f1 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2efreshDrops(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etailCopies(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eWritesInto(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArrayIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eenvType(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eterm(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnds(ptr %v0, ptr %a0)
@G_2ecompiler_2femit_2eBigCloseMark = external constant <{ [8 x i8], ptr }>
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eminMax(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edata(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4, i1 %a5)
@olang_loc_37dcdc821423a995_2a435c3b360fb831 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebitcast(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easInt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceBits(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, { i64, ptr } %a5)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ebmaskOf(i64 %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ePut_3cI32_2c_20I64_3e(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_2ea555a1037c9329_7e95fb4c4c24cb65 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2eGet_3cI32_2c_20I64_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocated(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_3adde053bd4372a6_ba741c94b3abe99a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_e82d0ac416d48216_324114d396543a52 = external constant [0 x i8]
@olang_loc_22732ff0c0400a73_b2dcb14ed3e7aa4f = external constant [0 x i8]
@olang_loc_8ee0ebce1ce81198_5305d4c1c6657a64 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)

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
