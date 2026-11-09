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
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/effects:Verdict" = type { { i64, ptr }, { i64, ptr }, i1, i32, { i64, ptr }, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/effects:part" = type { i64, i64, i32, ptr }
%"compiler/effects:Effects" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/effects:Facts", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, { i64, ptr }, i1, %"compiler/source:Span", { i64, ptr }, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/effects:root" = type { i64, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/effects:given" = type { i64, i64, i64, i64, i32 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/effects:pend" = type { i64, i64, ptr }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/effects:pair" = type { i64, i64 }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/effects:link" = type { i64, i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
define dso_local { i64, ptr } @compiler_2feffects_2eBreaks(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l52 = alloca i1
  %l53 = alloca i1
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l79 = alloca i1
  %l82 = alloca i1
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l88 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 13
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l7, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load i64, ptr %l1, !tbaa !24
  %t23 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoalloc, !tbaa !24
  %t26 = icmp eq i64 %t22, %t23
  br i1 %t26, label %bb4, label %bb5
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %t28, i32 0)
  store i1 %t31, ptr %l13
  br label %bb6
bb5:
  br label %bb10
bb6:
  %t32 = load i1, ptr %l13, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t33, ptr %l14, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t35, ptr %l14, !tbaa !27
  br label %bb9
bb9:
  %t37 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l19, !tbaa !24
  %t39 = load i64, ptr %l19, !tbaa !24
  %t40 = mul i64 %t39, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l20, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l19, !tbaa !24
  %t49 = mul i64 %t48, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %t47, i64 %t49, i1 false)
  %t50 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t50, ptr %l14, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb10:
  %t52 = load i64, ptr %l1, !tbaa !24
  %t53 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoblock, !tbaa !24
  %t56 = icmp eq i64 %t52, %t53
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t61 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %t58, i32 1)
  store i1 %t61, ptr %l26
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t62 = load i1, ptr %l26, !tbaa !21
  br i1 %t62, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t63, ptr %l27, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t65, ptr %l27, !tbaa !27
  br label %bb16
bb16:
  %t67 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l32, !tbaa !24
  %t69 = load i64, ptr %l32, !tbaa !24
  %t70 = mul i64 %t69, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l33, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l32, !tbaa !24
  %t79 = mul i64 %t78, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t75, ptr %t77, i64 %t79, i1 false)
  %t80 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t80, ptr %l27, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t81, ptr %rv
  br label %ret
bb17:
  %t82 = load i64, ptr %l1, !tbaa !24
  %t83 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNospawn, !tbaa !24
  %t86 = icmp eq i64 %t82, %t83
  br i1 %t86, label %bb18, label %bb19
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t91 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %t88, i32 4)
  store i1 %t91, ptr %l39
  br label %bb20
bb19:
  br label %bb24
bb20:
  %t92 = load i1, ptr %l39, !tbaa !21
  br i1 %t92, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t93, ptr %l40, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l43, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t95, ptr %l40, !tbaa !27
  br label %bb23
bb23:
  %t97 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  store i64 %t98, ptr %l45, !tbaa !24
  %t99 = load i64, ptr %l45, !tbaa !24
  %t100 = mul i64 %t99, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t100)
  %t102 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  store { i64, ptr } %t103, ptr %l46, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l45, !tbaa !24
  %t109 = mul i64 %t108, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %t107, i64 %t109, i1 false)
  %t110 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t110, ptr %l40, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
bb24:
  %t112 = load i64, ptr %l1, !tbaa !24
  %t113 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoextern, !tbaa !24
  %t116 = icmp eq i64 %t112, %t113
  br i1 %t116, label %bb25, label %bb26
bb25:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t121 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %t118, i32 3)
  store i1 %t121, ptr %l52
  br label %bb27
bb26:
  br label %bb34
bb27:
  %t122 = load i1, ptr %l52, !tbaa !21
  br i1 %t122, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb30
bb29:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/effects:Facts", ptr %t123, i32 0, i32 18
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  %t129 = xor i64 %t127, -1
  %t132 = and i64 %t126, %t129
  %t134 = icmp ne i64 %t132, 0
  store i1 %t134, ptr %l53, !tbaa !21
  br label %bb30
bb30:
  %t136 = load i1, ptr %l53, !tbaa !21
  br i1 %t136, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l61, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t137, ptr %l60, !tbaa !27
  br label %bb33
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l63, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t139, ptr %l60, !tbaa !27
  br label %bb33
bb33:
  %t141 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l65, !tbaa !24
  %t143 = load i64, ptr %l65, !tbaa !24
  %t144 = mul i64 %t143, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t144)
  %t146 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  store { i64, ptr } %t147, ptr %l66, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = load i64, ptr %l65, !tbaa !24
  %t153 = mul i64 %t152, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t149, ptr %t151, i64 %t153, i1 false)
  %t154 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t154, ptr %l60, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t155, ptr %rv
  br label %ret
bb34:
  %t156 = load i64, ptr %l1, !tbaa !24
  %t157 = load i64, ptr @G_2ecompiler_2ftypes_2ePromReturns, !tbaa !24
  %t160 = icmp eq i64 %t156, %t157
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = call { i64, ptr } @compiler_2feffects_2enotReturning(ptr %v0, ptr %v1, ptr %t162)
  store { i64, ptr } %t164, ptr %l71
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t165 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t165, ptr %rv
  br label %ret
bb38:
  %t166 = load i64, ptr %l1, !tbaa !24
  %t167 = load i64, ptr @G_2ecompiler_2ftypes_2ePromPure, !tbaa !24
  %t170 = icmp eq i64 %t166, %t167
  br i1 %t170, label %bb39, label %bb40
bb39:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = call { i64, ptr } @compiler_2feffects_2eimpure(ptr %v0, ptr %v1, ptr %t172)
  store { i64, ptr } %t174, ptr %l76
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t175 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t175, ptr %rv
  br label %ret
bb42:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/effects:Facts", ptr %t176, i32 0, i32 14
  %t179 = load i1, ptr %t178, !tbaa !21
  br i1 %t179, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb45
bb44:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/effects:Facts", ptr %t181, i32 0, i32 9
  %t184 = load i1, ptr %t183, !tbaa !21
  store i1 %t184, ptr %l79, !tbaa !21
  br label %bb45
bb45:
  %t186 = load i1, ptr %l79, !tbaa !21
  br i1 %t186, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb48
bb47:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/effects:Facts", ptr %t187, i32 0, i32 10
  %t190 = load i1, ptr %t189, !tbaa !21
  store i1 %t190, ptr %l82, !tbaa !21
  br label %bb48
bb48:
  %t192 = load i1, ptr %l82, !tbaa !21
  br i1 %t192, label %bb49, label %bb50
bb49:
  store { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l85, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t193, ptr %l86, !tbaa !27
  %t194 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 0
  store i64 %t195, ptr %l87, !tbaa !24
  %t196 = load i64, ptr %l87, !tbaa !24
  %t197 = mul i64 %t196, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t197)
  %t199 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  store { i64, ptr } %t200, ptr %l88, !tbaa !27
  %t201 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = load i64, ptr %l87, !tbaa !24
  %t206 = mul i64 %t205, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t202, ptr %t204, i64 %t206, i1 false)
  %t207 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t207, ptr %l86, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t208, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/effects:Facts", ptr %t209, i32 0, i32 7
  %t212 = load i1, ptr %t211, !tbaa !21
  br i1 %t212, label %bb52, label %bb53
bb52:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l92, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t214, ptr %l91, !tbaa !27
  br label %bb54
bb53:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t216 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t216, ptr %l91, !tbaa !27
  br label %bb54
bb54:
  %t218 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  store i64 %t219, ptr %l96, !tbaa !24
  %t220 = load i64, ptr %l96, !tbaa !24
  %t221 = mul i64 %t220, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t221)
  %t223 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  store { i64, ptr } %t224, ptr %l97, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = load i64, ptr %l96, !tbaa !24
  %t230 = mul i64 %t229, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t226, ptr %t228, i64 %t230, i1 false)
  %t231 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t231, ptr %l91, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t232, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feffects_2eMerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca i1
  %l44 = alloca ptr
  %l47 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i1
  %l56 = alloca ptr
  %l59 = alloca i1
  %l62 = alloca ptr
  %l65 = alloca i1
  %l68 = alloca ptr
  %l71 = alloca i1
  %l74 = alloca ptr
  %l77 = alloca i1
  %l80 = alloca ptr
  %l83 = alloca i1
  %l86 = alloca ptr
  %l89 = alloca i1
  %l92 = alloca ptr
  %l95 = alloca i1
  %l98 = alloca ptr
  %l101 = alloca i1
  %l104 = alloca ptr
  %l107 = alloca i1
  %l110 = alloca ptr
  %l113 = alloca i1
  %l129 = alloca i64
  %l132 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/effects:Facts", ptr %t2, i32 0, i32 0
  %t5 = load i1, ptr %t4, !tbaa !21
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Facts", ptr %t7, i32 0, i32 0
  %t10 = load i1, ptr %t9, !tbaa !21
  store i1 %t10, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l11, !tbaa !21
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t13, i32 0, i32 0
  store i1 %t12, ptr %t14, !tbaa !21
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l14, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/effects:Facts", ptr %t16, i32 0, i32 1
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Facts", ptr %t21, i32 0, i32 1
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t26 = load i1, ptr %l17, !tbaa !21
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = getelementptr %"compiler/effects:Facts", ptr %t27, i32 0, i32 1
  store i1 %t26, ptr %t28, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l20, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Facts", ptr %t30, i32 0, i32 2
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Facts", ptr %t35, i32 0, i32 2
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l23, !tbaa !21
  %t41 = load ptr, ptr %l20, !tbaa !29
  %t42 = getelementptr %"compiler/effects:Facts", ptr %t41, i32 0, i32 2
  store i1 %t40, ptr %t42, !tbaa !21
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l26, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/effects:Facts", ptr %t44, i32 0, i32 3
  %t47 = load i1, ptr %t46, !tbaa !21
  br i1 %t47, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb12
bb11:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/effects:Facts", ptr %t49, i32 0, i32 3
  %t52 = load i1, ptr %t51, !tbaa !21
  store i1 %t52, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l29, !tbaa !21
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = getelementptr %"compiler/effects:Facts", ptr %t55, i32 0, i32 3
  store i1 %t54, ptr %t56, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l32, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/effects:Facts", ptr %t58, i32 0, i32 4
  %t61 = load i1, ptr %t60, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb15
bb14:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/effects:Facts", ptr %t63, i32 0, i32 4
  %t66 = load i1, ptr %t65, !tbaa !21
  store i1 %t66, ptr %l35, !tbaa !21
  br label %bb15
bb15:
  %t68 = load i1, ptr %l35, !tbaa !21
  %t69 = load ptr, ptr %l32, !tbaa !29
  %t70 = getelementptr %"compiler/effects:Facts", ptr %t69, i32 0, i32 4
  store i1 %t68, ptr %t70, !tbaa !21
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l38, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/effects:Facts", ptr %t72, i32 0, i32 5
  %t75 = load i1, ptr %t74, !tbaa !21
  br i1 %t75, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb18
bb17:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/effects:Facts", ptr %t77, i32 0, i32 5
  %t80 = load i1, ptr %t79, !tbaa !21
  store i1 %t80, ptr %l41, !tbaa !21
  br label %bb18
bb18:
  %t82 = load i1, ptr %l41, !tbaa !21
  %t83 = load ptr, ptr %l38, !tbaa !29
  %t84 = getelementptr %"compiler/effects:Facts", ptr %t83, i32 0, i32 5
  store i1 %t82, ptr %t84, !tbaa !21
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l44, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/effects:Facts", ptr %t86, i32 0, i32 6
  %t89 = load i1, ptr %t88, !tbaa !21
  br i1 %t89, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb21
bb20:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/effects:Facts", ptr %t91, i32 0, i32 6
  %t94 = load i1, ptr %t93, !tbaa !21
  store i1 %t94, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t96 = load i1, ptr %l47, !tbaa !21
  %t97 = load ptr, ptr %l44, !tbaa !29
  %t98 = getelementptr %"compiler/effects:Facts", ptr %t97, i32 0, i32 6
  store i1 %t96, ptr %t98, !tbaa !21
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l50, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/effects:Facts", ptr %t100, i32 0, i32 7
  %t103 = load i1, ptr %t102, !tbaa !21
  br i1 %t103, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb24
bb23:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr %"compiler/effects:Facts", ptr %t105, i32 0, i32 7
  %t108 = load i1, ptr %t107, !tbaa !21
  store i1 %t108, ptr %l53, !tbaa !21
  br label %bb24
bb24:
  %t110 = load i1, ptr %l53, !tbaa !21
  %t111 = load ptr, ptr %l50, !tbaa !29
  %t112 = getelementptr %"compiler/effects:Facts", ptr %t111, i32 0, i32 7
  store i1 %t110, ptr %t112, !tbaa !21
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l56, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/effects:Facts", ptr %t114, i32 0, i32 8
  %t117 = load i1, ptr %t116, !tbaa !21
  br i1 %t117, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb27
bb26:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr %"compiler/effects:Facts", ptr %t119, i32 0, i32 8
  %t122 = load i1, ptr %t121, !tbaa !21
  store i1 %t122, ptr %l59, !tbaa !21
  br label %bb27
bb27:
  %t124 = load i1, ptr %l59, !tbaa !21
  %t125 = load ptr, ptr %l56, !tbaa !29
  %t126 = getelementptr %"compiler/effects:Facts", ptr %t125, i32 0, i32 8
  store i1 %t124, ptr %t126, !tbaa !21
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l62, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/effects:Facts", ptr %t128, i32 0, i32 9
  %t131 = load i1, ptr %t130, !tbaa !21
  br i1 %t131, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb30
bb29:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/effects:Facts", ptr %t133, i32 0, i32 9
  %t136 = load i1, ptr %t135, !tbaa !21
  store i1 %t136, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  %t138 = load i1, ptr %l65, !tbaa !21
  %t139 = load ptr, ptr %l62, !tbaa !29
  %t140 = getelementptr %"compiler/effects:Facts", ptr %t139, i32 0, i32 9
  store i1 %t138, ptr %t140, !tbaa !21
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l68, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/effects:Facts", ptr %t142, i32 0, i32 10
  %t145 = load i1, ptr %t144, !tbaa !21
  br i1 %t145, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb33
bb32:
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t149 = getelementptr %"compiler/effects:Facts", ptr %t147, i32 0, i32 10
  %t150 = load i1, ptr %t149, !tbaa !21
  store i1 %t150, ptr %l71, !tbaa !21
  br label %bb33
bb33:
  %t152 = load i1, ptr %l71, !tbaa !21
  %t153 = load ptr, ptr %l68, !tbaa !29
  %t154 = getelementptr %"compiler/effects:Facts", ptr %t153, i32 0, i32 10
  store i1 %t152, ptr %t154, !tbaa !21
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l74, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/effects:Facts", ptr %t156, i32 0, i32 11
  %t159 = load i1, ptr %t158, !tbaa !21
  br i1 %t159, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb36
bb35:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/effects:Facts", ptr %t161, i32 0, i32 11
  %t164 = load i1, ptr %t163, !tbaa !21
  store i1 %t164, ptr %l77, !tbaa !21
  br label %bb36
bb36:
  %t166 = load i1, ptr %l77, !tbaa !21
  %t167 = load ptr, ptr %l74, !tbaa !29
  %t168 = getelementptr %"compiler/effects:Facts", ptr %t167, i32 0, i32 11
  store i1 %t166, ptr %t168, !tbaa !21
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l80, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/effects:Facts", ptr %t170, i32 0, i32 12
  %t173 = load i1, ptr %t172, !tbaa !21
  br i1 %t173, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb39
bb38:
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr %"compiler/effects:Facts", ptr %t175, i32 0, i32 12
  %t178 = load i1, ptr %t177, !tbaa !21
  store i1 %t178, ptr %l83, !tbaa !21
  br label %bb39
bb39:
  %t180 = load i1, ptr %l83, !tbaa !21
  %t181 = load ptr, ptr %l80, !tbaa !29
  %t182 = getelementptr %"compiler/effects:Facts", ptr %t181, i32 0, i32 12
  store i1 %t180, ptr %t182, !tbaa !21
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l86, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/effects:Facts", ptr %t184, i32 0, i32 13
  %t187 = load i1, ptr %t186, !tbaa !21
  br i1 %t187, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb42
bb41:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr %"compiler/effects:Facts", ptr %t189, i32 0, i32 13
  %t192 = load i1, ptr %t191, !tbaa !21
  store i1 %t192, ptr %l89, !tbaa !21
  br label %bb42
bb42:
  %t194 = load i1, ptr %l89, !tbaa !21
  %t195 = load ptr, ptr %l86, !tbaa !29
  %t196 = getelementptr %"compiler/effects:Facts", ptr %t195, i32 0, i32 13
  store i1 %t194, ptr %t196, !tbaa !21
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l92, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/effects:Facts", ptr %t198, i32 0, i32 14
  %t201 = load i1, ptr %t200, !tbaa !21
  br i1 %t201, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb45
bb44:
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = getelementptr %"compiler/effects:Facts", ptr %t203, i32 0, i32 14
  %t206 = load i1, ptr %t205, !tbaa !21
  store i1 %t206, ptr %l95, !tbaa !21
  br label %bb45
bb45:
  %t208 = load i1, ptr %l95, !tbaa !21
  %t209 = load ptr, ptr %l92, !tbaa !29
  %t210 = getelementptr %"compiler/effects:Facts", ptr %t209, i32 0, i32 14
  store i1 %t208, ptr %t210, !tbaa !21
  %t211 = load ptr, ptr %l0, !tbaa !29
  store ptr %t211, ptr %l98, !tbaa !29
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/effects:Facts", ptr %t212, i32 0, i32 15
  %t215 = load i1, ptr %t214, !tbaa !21
  br i1 %t215, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l101, !tbaa !21
  br label %bb48
bb47:
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr %"compiler/effects:Facts", ptr %t217, i32 0, i32 15
  %t220 = load i1, ptr %t219, !tbaa !21
  store i1 %t220, ptr %l101, !tbaa !21
  br label %bb48
bb48:
  %t222 = load i1, ptr %l101, !tbaa !21
  %t223 = load ptr, ptr %l98, !tbaa !29
  %t224 = getelementptr %"compiler/effects:Facts", ptr %t223, i32 0, i32 15
  store i1 %t222, ptr %t224, !tbaa !21
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l104, !tbaa !29
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/effects:Facts", ptr %t226, i32 0, i32 16
  %t229 = load i1, ptr %t228, !tbaa !21
  br i1 %t229, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l107, !tbaa !21
  br label %bb51
bb50:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr %"compiler/effects:Facts", ptr %t231, i32 0, i32 16
  %t234 = load i1, ptr %t233, !tbaa !21
  store i1 %t234, ptr %l107, !tbaa !21
  br label %bb51
bb51:
  %t236 = load i1, ptr %l107, !tbaa !21
  %t237 = load ptr, ptr %l104, !tbaa !29
  %t238 = getelementptr %"compiler/effects:Facts", ptr %t237, i32 0, i32 16
  store i1 %t236, ptr %t238, !tbaa !21
  %t239 = load ptr, ptr %l0, !tbaa !29
  store ptr %t239, ptr %l110, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/effects:Facts", ptr %t240, i32 0, i32 17
  %t243 = load i1, ptr %t242, !tbaa !21
  br i1 %t243, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb54
bb53:
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t247 = getelementptr %"compiler/effects:Facts", ptr %t245, i32 0, i32 17
  %t248 = load i1, ptr %t247, !tbaa !21
  store i1 %t248, ptr %l113, !tbaa !21
  br label %bb54
bb54:
  %t250 = load i1, ptr %l113, !tbaa !21
  %t251 = load ptr, ptr %l110, !tbaa !29
  %t252 = getelementptr %"compiler/effects:Facts", ptr %t251, i32 0, i32 17
  store i1 %t250, ptr %t252, !tbaa !21
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = getelementptr %"compiler/effects:Facts", ptr %t253, i32 0, i32 18
  %t256 = load i64, ptr %t255, !tbaa !24
  %t258 = icmp eq i64 %t256, 0
  br i1 %t258, label %bb55, label %bb56
bb55:
  br label %ret
bb56:
  br label %bb57
bb57:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/effects:Facts", ptr %t261, i32 0, i32 18
  %t264 = load i64, ptr %t263, !tbaa !24
  %t265 = load ptr, ptr %l1, !tbaa !29
  %t267 = getelementptr %"compiler/effects:Facts", ptr %t265, i32 0, i32 18
  %t268 = load i64, ptr %t267, !tbaa !24
  %t271 = or i64 %t264, %t268
  %t274 = getelementptr %"compiler/effects:Facts", ptr %t260, i32 0, i32 18
  store i64 %t271, ptr %t274, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t275 = load i64, ptr @G_2ecompiler_2feffects_2eCapCount, !tbaa !24
  store i64 %t275, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t277 = load i64, ptr %l3, !tbaa !24
  %t278 = load i64, ptr %l2, !tbaa !24
  %t281 = icmp sgt i64 %t277, %t278
  br i1 %t281, label %bb58, label %bb59
bb58:
  %t283 = load i64, ptr %l4, !tbaa !24
  %t285 = icmp sgt i64 %t283, 0
  br i1 %t285, label %bb60, label %bb61
bb59:
  store i64 0, ptr %l129, !tbaa !24
  br label %bb63
bb60:
  %t287 = load i64, ptr %l3, !tbaa !24
  %t288 = load i64, ptr %l2, !tbaa !24
  %t291 = sub i64 %t287, %t288
  %t292 = load i64, ptr %l4, !tbaa !24
  %t295 = add i64 %t291, %t292
  %t297 = sub i64 %t295, 1
  %t298 = load i64, ptr %l4, !tbaa !24
  %t301 = sdiv i64 %t297, %t298
  store i64 %t301, ptr %l132, !tbaa !24
  br label %bb62
bb61:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb62
bb62:
  %t303 = load i64, ptr %l132, !tbaa !24
  store i64 %t303, ptr %l129, !tbaa !24
  br label %bb63
bb63:
  %t304 = load i64, ptr %l129, !tbaa !24
  store i64 %t304, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb64
bb64:
  %t305 = load i64, ptr %l6, !tbaa !24
  %t306 = load i64, ptr %l5, !tbaa !24
  %t309 = icmp slt i64 %t305, %t306
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb65, label %bb66
bb65:
  br label %bb72
bb66:
  br label %bb67
bb67:
  %t313 = load i64, ptr %l2, !tbaa !24
  %t314 = load i64, ptr %l6, !tbaa !24
  %t315 = load i64, ptr %l4, !tbaa !24
  %t318 = mul i64 %t314, %t315
  %t321 = add i64 %t313, %t318
  store i64 %t321, ptr %l7, !tbaa !24
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load i64, ptr %l7, !tbaa !24
  %t326 = getelementptr %"compiler/effects:Facts", ptr %t323, i32 0, i32 19
  %t328 = getelementptr [6 x i64], ptr %t326, i64 0, i64 %t324
  %t329 = load i64, ptr %t328, !tbaa !34
  %t331 = icmp slt i64 %t329, 0
  br i1 %t331, label %bb68, label %bb69
bb68:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load i64, ptr %l7, !tbaa !24
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t336 = load i64, ptr %l7, !tbaa !24
  %t338 = getelementptr %"compiler/effects:Facts", ptr %t335, i32 0, i32 19
  %t340 = getelementptr [6 x i64], ptr %t338, i64 0, i64 %t336
  %t341 = load i64, ptr %t340, !tbaa !34
  %t344 = getelementptr %"compiler/effects:Facts", ptr %t333, i32 0, i32 19
  %t346 = getelementptr [6 x i64], ptr %t344, i64 0, i64 %t334
  store i64 %t341, ptr %t346, !tbaa !34
  br label %bb70
bb69:
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t347 = load i64, ptr %l6, !tbaa !24
  %t349 = add i64 %t347, 1
  store i64 %t349, ptr %l6, !tbaa !24
  br label %bb64
bb72:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecapIndex(i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %l32 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load i64, ptr @G_2ecompiler_2feffects_2eCapCount, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l14, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l14, !tbaa !24
  store i64 %t29, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l11, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  store i64 %t49, ptr %l32, !tbaa !24
  %t50 = load i64, ptr %l32, !tbaa !24
  %t51 = load i64, ptr %l32, !tbaa !24
  %t52 = shl i64 1, %t51
  %t56 = icmp eq i64 %t52, %a0
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load i64, ptr %l6, !tbaa !24
  store i64 %t58, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l5, !tbaa !24
  br label %bb7
bb15:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eJudge(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/effects:part"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca %"compiler/effects:Facts"
  %l15 = alloca %"compiler/effects:Verdict"
  %l20 = alloca i64
  %l25 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i64
  %l32 = alloca i64
  %l37 = alloca %"compiler/effects:Facts"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca i64
  %l52 = alloca i64
  %l57 = alloca %"compiler/effects:part"
  %l61 = alloca i1
  %l65 = alloca i1
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca i64
  %l80 = alloca ptr
  %l83 = alloca %"compiler/effects:Facts"
  %l88 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca %"compiler/effects:Verdict"
  %l93 = alloca %"compiler/effects:Verdict"
  %l94 = alloca i64
  %l97 = alloca { i64, ptr }
  %l99 = alloca %"compiler/effects:Verdict"
  %l101 = alloca %"compiler/effects:Verdict"
  %l107 = alloca i1
  %l111 = alloca i1
  %l118 = alloca i32
  %l122 = alloca i32
  %l129 = alloca i1
  %l135 = alloca ptr
  %l138 = alloca %"compiler/effects:Facts"
  %l143 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca %"compiler/effects:Verdict"
  %l148 = alloca %"compiler/effects:Verdict"
  %l149 = alloca i64
  %l152 = alloca { i64, ptr }
  %l154 = alloca %"compiler/effects:Verdict"
  %l156 = alloca %"compiler/effects:Verdict"
  %l162 = alloca %"compiler/effects:Facts"
  %l164 = alloca i1
  %l170 = alloca i1
  %l172 = alloca ptr
  %l173 = alloca %"compiler/effects:Verdict"
  %l175 = alloca %"compiler/effects:Verdict"
  %l177 = alloca %"compiler/effects:Verdict"
  %l179 = alloca %"compiler/effects:Verdict"
  %l183 = alloca ptr
  %l184 = alloca ptr
  %l185 = alloca i64
  %l186 = alloca i64
  %l190 = alloca %"compiler/effects:Facts"
  %l195 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca %"compiler/effects:Verdict"
  %l200 = alloca %"compiler/effects:Verdict"
  %l202 = alloca %"compiler/effects:Verdict"
  %l204 = alloca %"compiler/effects:Verdict"
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Verdict"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/effects:Verdict" @compiler_2feffects_3aVerdict_2ector(ptr %v2)
  store %"compiler/effects:Verdict" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 88, i64 8)
  store ptr %t2, ptr %lp4
  %t3 = load %"compiler/effects:Verdict", ptr %l15
  %t4 = load ptr, ptr %lp4
  store %"compiler/effects:Verdict" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Effects", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t14 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t10, i32 %a3)
  store i64 %t14, ptr %l20
  br label %bb2
bb2:
  %t15 = load i64, ptr @G_2ecompiler_2feffects_2eEffectWords, !tbaa !24
  %t16 = load i64, ptr %l20, !tbaa !24
  %t18 = and i64 %t16, %t15
  store i64 %t18, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp eq i64 %t20, 0
  br i1 %t22, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb5
bb4:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = icmp slt i64 %t24, 0
  store i1 %t26, ptr %l25, !tbaa !21
  br label %bb5
bb5:
  %t28 = load i1, ptr %l25, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb9
bb7:
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %l29, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Effects", ptr %t30, i32 0, i32 1
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l32
  br label %bb8
bb8:
  %t35 = load i64, ptr %l29, !tbaa !24
  %t36 = load i64, ptr %l32, !tbaa !24
  %t37 = icmp sge i64 %t35, %t36
  store i1 %t37, ptr %l28, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l28, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %lp4
  %t41 = load %"compiler/effects:Verdict", ptr %t40
  store %"compiler/effects:Verdict" %t41, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l1, !tbaa !24
  %t47 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/effects:Facts" %t47, ptr %l37
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %t48, i64 %t49)
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/effects:Effects", ptr %t52, i32 0, i32 33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t54)
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t56, ptr %a2, i64 0)
  br label %bb16
bb16:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/effects:Effects", ptr %t61, i32 0, i32 33
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l46
  %t66 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %l46)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l48
  br label %bb17
bb17:
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l6
  store ptr %l6, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  %t69 = load i64, ptr %l8, !tbaa !24
  store i64 %t69, ptr %l50, !tbaa !24
  %t70 = load ptr, ptr %l7, !tbaa !29
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l52
  br label %bb19
bb19:
  %t73 = load i64, ptr %l50, !tbaa !24
  %t74 = load i64, ptr %l52, !tbaa !24
  %t75 = icmp slt i64 %t73, %t74
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb20, label %bb21
bb20:
  br label %bb114
bb21:
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l7, !tbaa !29
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  store %"compiler/effects:part" %t83, ptr %l57
  br label %bb23
bb23:
  %t84 = load %"compiler/effects:part", ptr %l57
  store %"compiler/effects:part" %t84, ptr %l9
  %t85 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t90 = icmp eq i64 %t86, %t87
  br i1 %t90, label %bb24, label %bb25
bb24:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/effects:Effects", ptr %t92, i32 0, i32 7
  %t95 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t96 = load i64, ptr %t95, !tbaa !24
  %t99 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t94, i64 %t96)
  store i1 %t99, ptr %l65
  br label %bb26
bb25:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb27
bb26:
  %t100 = load i1, ptr %l65, !tbaa !21
  store i1 %t100, ptr %l61, !tbaa !21
  br label %bb27
bb27:
  %t101 = load i1, ptr %l61, !tbaa !21
  br i1 %t101, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t104 = load i64, ptr %t103, !tbaa !24
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %s5, ptr %t102, i64 %t104)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l68
  br label %bb30
bb29:
  br label %bb50
bb30:
  %t109 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s5, ptr %l68)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l70
  br label %bb31
bb31:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  %t111 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t111
  store ptr %t111, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  %t113 = load i64, ptr %l11, !tbaa !24
  store i64 %t113, ptr %l72, !tbaa !24
  %t114 = load ptr, ptr %l10, !tbaa !29
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s5, ptr %t114)
  store i64 %t116, ptr %l74
  br label %bb33
bb33:
  %t117 = load i64, ptr %l72, !tbaa !24
  %t118 = load i64, ptr %l74, !tbaa !24
  %t119 = icmp slt i64 %t117, %t118
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s6)
  br label %bb49
bb35:
  br label %bb36
bb36:
  %t123 = load ptr, ptr %l10, !tbaa !29
  %t124 = load i64, ptr %l11, !tbaa !24
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s5, ptr %t123, i64 %t124)
  store i64 %t127, ptr %l79
  br label %bb37
bb37:
  %t128 = load i64, ptr %l79, !tbaa !24
  store i64 %t128, ptr %l12, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l80, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i64, ptr %l12, !tbaa !24
  %t134 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t130, i64 %t131)
  store %"compiler/effects:Facts" %t134, ptr %l83
  br label %bb38
bb38:
  %t135 = load i64, ptr %l5, !tbaa !24
  %t136 = load ptr, ptr %lp4
  %t137 = load ptr, ptr %l80, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %s6, ptr %v2, ptr %t137, ptr %l83, i64 %t135, ptr %t136)
  br label %bb39
bb39:
  %t141 = load ptr, ptr %lp4
  %t142 = getelementptr %"compiler/effects:Verdict", ptr %t141, i32 0, i32 0
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  %t145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s6, { i64, ptr } %t143, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t145, ptr %l88
  br label %bb40
bb40:
  %t146 = load i1, ptr %l88, !tbaa !21
  %t147 = xor i1 %t146, true
  br i1 %t147, label %bb41, label %bb42
bb41:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l90, !tbaa !29
  %t150 = load ptr, ptr %lp4
  %t151 = load %"compiler/effects:Verdict", ptr %t150
  store %"compiler/effects:Verdict" %t151, ptr %l91
  %t153 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l91)
  store %"compiler/effects:Verdict" %t153, ptr %l93
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t154 = load i64, ptr %l12, !tbaa !24
  store i64 %t154, ptr %l94, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l12, !tbaa !24
  %t159 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebodyName(ptr %v0, ptr %v2, ptr %t155, i64 %t156)
  store { i64, ptr } %t159, ptr %l97
  br label %bb44
bb44:
  %t160 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t167 = load ptr, ptr %l90, !tbaa !29
  %t168 = load %"compiler/effects:Verdict", ptr %l93
  %t169 = load i64, ptr %l94, !tbaa !24
  %t171 = call %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblame(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t167, %"compiler/effects:Verdict" %t168, i64 %t169, { i64, ptr } %t166)
  store %"compiler/effects:Verdict" %t171, ptr %l99
  br label %bb45
bb45:
  %t173 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l99)
  store %"compiler/effects:Verdict" %t173, ptr %l101
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  %t174 = load %"compiler/effects:Verdict", ptr %l101
  store %"compiler/effects:Verdict" %t174, ptr %rv
  br label %ret
bb47:
  call void @__olang_scope_close(ptr %s6)
  br label %bb48
bb48:
  %t175 = load i64, ptr %l11, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l11, !tbaa !24
  br label %bb32
bb49:
  call void @__olang_scope_close(ptr %s5)
  br label %bb113
bb50:
  %t179 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t180 = load i64, ptr %t179, !tbaa !24
  %t181 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t184 = icmp eq i64 %t180, %t181
  br i1 %t184, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l107, !tbaa !21
  br label %bb53
bb52:
  %t186 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t187 = load i64, ptr %t186, !tbaa !24
  %t188 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t191 = icmp eq i64 %t187, %t188
  store i1 %t191, ptr %l107, !tbaa !21
  br label %bb53
bb53:
  %t193 = load i1, ptr %l107, !tbaa !21
  br i1 %t193, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb56
bb55:
  %t194 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t195 = load i64, ptr %t194, !tbaa !24
  %t196 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t199 = icmp eq i64 %t195, %t196
  store i1 %t199, ptr %l111, !tbaa !21
  br label %bb56
bb56:
  %t201 = load i1, ptr %l111, !tbaa !21
  br i1 %t201, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s9
  %t202 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t203 = load i64, ptr %t202, !tbaa !24
  %t204 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t207 = icmp eq i64 %t203, %t204
  br i1 %t207, label %bb59, label %bb60
bb58:
  br label %bb68
bb59:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l1, !tbaa !24
  %t211 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t212 = load i64, ptr %t211, !tbaa !24
  %t216 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t209, i64 %t210, i64 %t212)
  store i32 %t216, ptr %l122
  br label %bb61
bb60:
  %t217 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 2
  %t218 = load i32, ptr %t217, !tbaa !23
  store i32 %t218, ptr %l118, !tbaa !23
  br label %bb62
bb61:
  %t220 = load i32, ptr %l122, !tbaa !23
  store i32 %t220, ptr %l118, !tbaa !23
  br label %bb62
bb62:
  %t221 = load i32, ptr %l118, !tbaa !23
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = load i64, ptr %l5, !tbaa !24
  %t225 = load ptr, ptr %lp4
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeType(ptr %v0, ptr %v2, ptr %t222, i32 %t221, i64 %t224, ptr %t225)
  br label %bb63
bb63:
  %t230 = load ptr, ptr %lp4
  %t231 = getelementptr %"compiler/effects:Verdict", ptr %t230, i32 0, i32 0
  %t232 = load { i64, ptr }, ptr %t231, !tbaa !27
  %t234 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s9, { i64, ptr } %t232, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t234, ptr %l129
  br label %bb64
bb64:
  %t235 = load i1, ptr %l129, !tbaa !21
  %t236 = xor i1 %t235, true
  br i1 %t236, label %bb65, label %bb66
bb65:
  %t238 = load ptr, ptr %lp4
  %t239 = load %"compiler/effects:Verdict", ptr %t238
  call void @__olang_scope_close(ptr %s9)
  store %"compiler/effects:Verdict" %t239, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s9)
  br label %bb113
bb68:
  %t241 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t242 = load i64, ptr %t241, !tbaa !24
  %t243 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t246 = icmp eq i64 %t242, %t243
  br i1 %t246, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s11
  %t248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t248, ptr %l135, !tbaa !29
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t251 = load i64, ptr %t250, !tbaa !24
  %t254 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t249, i64 %t251)
  store %"compiler/effects:Facts" %t254, ptr %l138
  br label %bb71
bb70:
  br label %bb81
bb71:
  %t255 = load i64, ptr %l5, !tbaa !24
  %t256 = load ptr, ptr %lp4
  %t257 = load ptr, ptr %l135, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %s11, ptr %v2, ptr %t257, ptr %l138, i64 %t255, ptr %t256)
  br label %bb72
bb72:
  %t261 = load ptr, ptr %lp4
  %t262 = getelementptr %"compiler/effects:Verdict", ptr %t261, i32 0, i32 0
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  %t265 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s11, { i64, ptr } %t263, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t265, ptr %l143
  br label %bb73
bb73:
  %t266 = load i1, ptr %l143, !tbaa !21
  %t267 = xor i1 %t266, true
  br i1 %t267, label %bb74, label %bb75
bb74:
  %t269 = load ptr, ptr %l0, !tbaa !29
  store ptr %t269, ptr %l145, !tbaa !29
  %t270 = load ptr, ptr %lp4
  %t271 = load %"compiler/effects:Verdict", ptr %t270
  store %"compiler/effects:Verdict" %t271, ptr %l146
  %t273 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l146)
  store %"compiler/effects:Verdict" %t273, ptr %l148
  br label %bb76
bb75:
  br label %bb80
bb76:
  %t274 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t275 = load i64, ptr %t274, !tbaa !24
  store i64 %t275, ptr %l149, !tbaa !24
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t278 = load i64, ptr %t277, !tbaa !24
  %t281 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebodyName(ptr %v0, ptr %v2, ptr %t276, i64 %t278)
  store { i64, ptr } %t281, ptr %l152
  br label %bb77
bb77:
  %t282 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 0
  %t284 = extractvalue { i64, ptr } %t282, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  %t289 = load ptr, ptr %l145, !tbaa !29
  %t290 = load %"compiler/effects:Verdict", ptr %l148
  %t291 = load i64, ptr %l149, !tbaa !24
  %t293 = call %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblame(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t289, %"compiler/effects:Verdict" %t290, i64 %t291, { i64, ptr } %t288)
  store %"compiler/effects:Verdict" %t293, ptr %l154
  br label %bb78
bb78:
  %t295 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l154)
  store %"compiler/effects:Verdict" %t295, ptr %l156
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s11)
  %t296 = load %"compiler/effects:Verdict", ptr %l156
  store %"compiler/effects:Verdict" %t296, ptr %rv
  br label %ret
bb80:
  call void @__olang_scope_close(ptr %s11)
  br label %bb81
bb81:
  %t297 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t298 = load i64, ptr %t297, !tbaa !24
  %t299 = load i64, ptr @G_2ecompiler_2feffects_2ePartAdapter, !tbaa !24
  %t302 = icmp eq i64 %t298, %t299
  br i1 %t302, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s13
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t306 = load i64, ptr %t305, !tbaa !24
  %t309 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t304, i64 %t306)
  store %"compiler/effects:Facts" %t309, ptr %l162
  br label %bb84
bb83:
  br label %bb97
bb84:
  %t310 = load %"compiler/effects:Facts", ptr %l162
  store %"compiler/effects:Facts" %t310, ptr %l14
  %t311 = getelementptr %"compiler/effects:Facts", ptr %l14, i32 0, i32 20
  %t312 = load i64, ptr %t311, !tbaa !24
  %t314 = call i1 @compiler_2feffects_2ehasBit(i64 %t312, i64 0)
  store i1 %t314, ptr %l164
  br label %bb85
bb85:
  %t315 = load i1, ptr %l164, !tbaa !21
  br i1 %t315, label %bb86, label %bb87
bb86:
  %t316 = getelementptr %"compiler/effects:Facts", ptr %l14, i32 0, i32 17
  store i1 true, ptr %t316, !tbaa !21
  br label %bb88
bb87:
  br label %bb88
bb88:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load i64, ptr %l5, !tbaa !24
  %t319 = load ptr, ptr %lp4
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %s13, ptr %v2, ptr %t317, ptr %l14, i64 %t318, ptr %t319)
  br label %bb89
bb89:
  %t324 = load ptr, ptr %lp4
  %t325 = getelementptr %"compiler/effects:Verdict", ptr %t324, i32 0, i32 0
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  %t328 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s13, { i64, ptr } %t326, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t328, ptr %l170
  br label %bb90
bb90:
  %t329 = load i1, ptr %l170, !tbaa !21
  %t330 = xor i1 %t329, true
  br i1 %t330, label %bb91, label %bb92
bb91:
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l172, !tbaa !29
  %t333 = load ptr, ptr %lp4
  %t334 = load %"compiler/effects:Verdict", ptr %t333
  store %"compiler/effects:Verdict" %t334, ptr %l173
  %t336 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l173)
  store %"compiler/effects:Verdict" %t336, ptr %l175
  br label %bb93
bb92:
  br label %bb96
bb93:
  %t337 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t338 = load i64, ptr %t337, !tbaa !24
  %t339 = load ptr, ptr %l172, !tbaa !29
  %t340 = load %"compiler/effects:Verdict", ptr %l175
  %t342 = call %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblame(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t339, %"compiler/effects:Verdict" %t340, i64 %t338, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store %"compiler/effects:Verdict" %t342, ptr %l177
  br label %bb94
bb94:
  %t344 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l177)
  store %"compiler/effects:Verdict" %t344, ptr %l179
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s13)
  %t345 = load %"compiler/effects:Verdict", ptr %l179
  store %"compiler/effects:Verdict" %t345, ptr %rv
  br label %ret
bb96:
  call void @__olang_scope_close(ptr %s13)
  br label %bb97
bb97:
  %t346 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t347 = load i64, ptr %t346, !tbaa !24
  %t348 = load i64, ptr @G_2ecompiler_2feffects_2ePartLambda, !tbaa !24
  %t351 = icmp eq i64 %t347, %t348
  br i1 %t351, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s16
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l183, !tbaa !29
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l184, !tbaa !29
  %t355 = load i64, ptr %l1, !tbaa !24
  store i64 %t355, ptr %l185, !tbaa !24
  %t356 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t357 = load i64, ptr %t356, !tbaa !24
  store i64 %t357, ptr %l186, !tbaa !24
  %t358 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 3
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t361 = icmp eq ptr %t359, null
  br i1 %t361, label %bb100, label %bb101
bb99:
  br label %bb112
bb100:
  call void @__olang_check_failed(ptr @olang_loc_cce6b986552578d0_26bb880b6e07dfc)
  unreachable
bb101:
  br label %bb102
bb102:
  %t363 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 3
  %t364 = load ptr, ptr %t363, !tbaa !29
  %t365 = load ptr, ptr %l184, !tbaa !29
  %t366 = load i64, ptr %l185, !tbaa !24
  %t367 = load i64, ptr %l186, !tbaa !24
  %t369 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2elambdaFacts(ptr %v0, ptr %v0, ptr %t365, i64 %t366, i64 %t367, ptr %t364)
  store %"compiler/effects:Facts" %t369, ptr %l190
  br label %bb103
bb103:
  %t370 = load i64, ptr %l5, !tbaa !24
  %t371 = load ptr, ptr %lp4
  %t372 = load ptr, ptr %l183, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %s16, ptr %v2, ptr %t372, ptr %l190, i64 %t370, ptr %t371)
  br label %bb104
bb104:
  %t376 = load ptr, ptr %lp4
  %t377 = getelementptr %"compiler/effects:Verdict", ptr %t376, i32 0, i32 0
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  %t380 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s16, { i64, ptr } %t378, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t380, ptr %l195
  br label %bb105
bb105:
  %t381 = load i1, ptr %l195, !tbaa !21
  %t382 = xor i1 %t381, true
  br i1 %t382, label %bb106, label %bb107
bb106:
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l197, !tbaa !29
  %t385 = load ptr, ptr %lp4
  %t386 = load %"compiler/effects:Verdict", ptr %t385
  store %"compiler/effects:Verdict" %t386, ptr %l198
  %t388 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l198)
  store %"compiler/effects:Verdict" %t388, ptr %l200
  br label %bb108
bb107:
  br label %bb111
bb108:
  %t389 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t390 = load i64, ptr %t389, !tbaa !24
  %t391 = load ptr, ptr %l197, !tbaa !29
  %t392 = load %"compiler/effects:Verdict", ptr %l200
  %t394 = call %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblame(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t391, %"compiler/effects:Verdict" %t392, i64 %t390, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store %"compiler/effects:Verdict" %t394, ptr %l202
  br label %bb109
bb109:
  %t396 = call %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v2, ptr %l202)
  store %"compiler/effects:Verdict" %t396, ptr %l204
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s16)
  %t397 = load %"compiler/effects:Verdict", ptr %l204
  store %"compiler/effects:Verdict" %t397, ptr %rv
  br label %ret
bb111:
  call void @__olang_scope_close(ptr %s16)
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t398 = load i64, ptr %l8, !tbaa !24
  %t400 = add i64 %t398, 1
  store i64 %t400, ptr %l8, !tbaa !24
  br label %bb18
bb114:
  %t402 = load ptr, ptr %lp4
  %t403 = load %"compiler/effects:Verdict", ptr %t402
  store %"compiler/effects:Verdict" %t403, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Verdict", ptr %rv
  ret %"compiler/effects:Verdict" %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eModuleOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2egrow(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/effects:Effects", ptr %t3, i32 0, i32 15
  store ptr %t5, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t8, i64 %a1)
  store ptr %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l9, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 3
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t19 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t17, i64 %t16)
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l13
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb4, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l12
  br label %bb3
bb3:
  %t24 = load i64, ptr %l12, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb6
bb6:
  %t25 = load i64, ptr %l3, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/effects:Facts"
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"compiler/effects:Facts"
  %l17 = alloca i64
  %l24 = alloca i64
  %l29 = alloca %"compiler/effects:Facts"
  %l32 = alloca %"compiler/effects:Facts"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l9
  br label %bb3
bb3:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l5, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s1)
  store %"compiler/effects:Facts" %t16, ptr %l11
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t17 = load %"compiler/effects:Facts", ptr %l11
  store %"compiler/effects:Facts" %t17, ptr %l2
  %t18 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 13
  store i1 true, ptr %t18, !tbaa !21
  %t19 = load %"compiler/effects:Facts", ptr %l2
  call void @__olang_scope_close(ptr %s1)
  store %"compiler/effects:Facts" %t19, ptr %rv
  br label %ret
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2egrow(ptr %v0, ptr %t21)
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/effects:Effects", ptr %t23, i32 0, i32 14
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t25, i64 %t26)
  store i64 %t29, ptr %l17
  br label %bb10
bb10:
  %t30 = load i64, ptr %l17, !tbaa !24
  %t31 = icmp slt i64 %t30, 2
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2evisit(ptr %v0, ptr %t33, i64 %t34)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/effects:Effects", ptr %t37, i32 0, i32 9
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l24
  br label %bb15
bb15:
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = icmp eq i64 %t44, 0
  br i1 %t45, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/effects:Effects", ptr %t47, i32 0, i32 8
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t49, i64 %t50)
  store %"compiler/effects:Facts" %t53, ptr %l29
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t54 = load %"compiler/effects:Facts", ptr %l29
  store %"compiler/effects:Facts" %t54, ptr %rv
  br label %ret
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t59 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2enamed(ptr %v0, ptr %t55, i64 %t56)
  store %"compiler/effects:Facts" %t59, ptr %l32
  br label %bb20
bb20:
  %t60 = load %"compiler/effects:Facts", ptr %l32
  store %"compiler/effects:Facts" %t60, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOfExtern(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/effects:Facts"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/effects:Facts"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2egrow(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/effects:Effects", ptr %t3, i32 0, i32 22
  %t6 = load %"compiler/effects:Facts", ptr %t5
  store %"compiler/effects:Facts" %t6, ptr %l2
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load %"compiler/effects:Facts", ptr %l8
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 22
  store %"compiler/effects:Facts" %t10, ptr %t12
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/effects:Effects", ptr %t13, i32 0, i32 31
  store i64 -1, ptr %t15, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eextern(ptr %v0, ptr %t16, i64 %a1)
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/effects:Effects", ptr %t20, i32 0, i32 22
  %t23 = load %"compiler/effects:Facts", ptr %t22
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load %"compiler/effects:Facts", ptr %l2
  %t29 = getelementptr %"compiler/effects:Effects", ptr %t25, i32 0, i32 22
  store %"compiler/effects:Facts" %t26, ptr %t29
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t23, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load i1, ptr %l15, !tbaa !21
  store i1 %t21, ptr %l6, !tbaa !21
  br label %bb34
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34
  store i32 %t35, ptr %l3, !tbaa !23
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/effects:Effects", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l28
  br label %bb13
bb13:
  %t53 = load i1, ptr %l28, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb17
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/effects:Effects", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l3, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t59, i32 %t60)
  store i1 %t63, ptr %l34
  br label %bb16
bb16:
  %t64 = load i1, ptr %l34, !tbaa !21
  store i1 %t64, ptr %l29, !tbaa !21
  br label %bb17
bb17:
  %t65 = load i1, ptr %l29, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t70 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t66, ptr %t67)
  store i1 %t70, ptr %l38
  br label %bb20
bb19:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb21
bb20:
  %t71 = load i1, ptr %l38, !tbaa !21
  store i1 %t71, ptr %l35, !tbaa !21
  br label %bb21
bb21:
  %t72 = load i1, ptr %l35, !tbaa !21
  store i1 %t72, ptr %l6, !tbaa !21
  br label %bb34
bb22:
  %t73 = load ptr, ptr %l1, !tbaa !29
  store ptr %t73, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t74 = load ptr, ptr %l39, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t77 = load ptr, ptr %l39, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 18}
  %t80 = icmp eq i64 %t78, 17
  store i1 %t80, ptr %l40, !tbaa !21
  br label %bb24
bb24:
  %t81 = load i1, ptr %l40, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [5 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t84, i32 0, i32 2
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l5, !tbaa !29
  %t92 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargGlobal(ptr %v0, ptr %v1, ptr %t88, ptr %t89)
  store i1 %t92, ptr %l47
  br label %bb28
bb28:
  %t93 = load i1, ptr %l47, !tbaa !21
  store i1 %t93, ptr %l6, !tbaa !21
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_7ef30bd5545b1b3f_da1c1797c8787b93)
  unreachable
bb34:
  %t94 = load i1, ptr %l6, !tbaa !21
  store i1 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/effects:root"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca %"compiler/effects:root"
  %l29 = alloca i64
  %l30 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca %"compiler/effects:root"
  %l43 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load i1, ptr %l19, !tbaa !21
  %t33 = xor i1 %t32, true
  br i1 %t33, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t36, i32 0, i32 26
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t43 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t39, ptr %t40)
  store %"compiler/effects:root" %t43, ptr %l27
  br label %bb10
bb10:
  %t44 = getelementptr %"compiler/effects:root", ptr %l27, i32 0, i32 0
  %t45 = load i64, ptr %t44, !tbaa !24
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t48 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t46, i64 %t45)
  %t49 = extractvalue { i32, i64 } %t48, 1
  %t50 = extractvalue { i32, i64 } %t48, 0
  store i32 %t50, ptr %l30
  %t51 = icmp ne i32 %t50, 0
  br i1 %t51, label %bb12, label %ok.52, !prof !99
ok.52:
  store i64 %t49, ptr %l29
  br label %bb11
bb11:
  %t53 = load i64, ptr %l29, !tbaa !24
  store i64 %t53, ptr %l22, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 -1, ptr %l22, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l22, !tbaa !24
  store i64 %t54, ptr %rv
  br label %ret
bb15:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 18}
  %t62 = icmp eq i64 %t60, 3
  store i1 %t62, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t63 = load i1, ptr %l32, !tbaa !21
  br i1 %t63, label %bb18, label %bb19
bb18:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l4, !tbaa !29
  br label %bb20
bb19:
  br label %bb29
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t74 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t70, ptr %t71)
  store %"compiler/effects:root" %t74, ptr %l39
  br label %bb21
bb21:
  %t75 = load %"compiler/effects:root", ptr %l39
  store %"compiler/effects:root" %t75, ptr %l5
  %t76 = getelementptr %"compiler/effects:root", ptr %l5, i32 0, i32 1
  %t77 = load i1, ptr %t76, !tbaa !21
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb22, label %bb23
bb22:
  store i64 -1, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/effects:Effects", ptr %t82, i32 0, i32 26
  %t85 = getelementptr %"compiler/effects:root", ptr %l5, i32 0, i32 0
  %t86 = load i64, ptr %t85, !tbaa !24
  %t89 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t84, i64 %t86)
  %t90 = extractvalue { i32, i64 } %t89, 1
  %t91 = extractvalue { i32, i64 } %t89, 0
  store i32 %t91, ptr %l48
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb26, label %ok.93, !prof !99
ok.93:
  store i64 %t90, ptr %l47
  br label %bb25
bb25:
  %t94 = load i64, ptr %l47, !tbaa !24
  store i64 %t94, ptr %l43, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l43, !tbaa !24
  br label %bb28
bb28:
  %t95 = load i64, ptr %l43, !tbaa !24
  store i64 %t95, ptr %rv
  br label %ret
bb29:
  %t96 = load ptr, ptr %l1, !tbaa !29
  store ptr %t96, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t97 = load ptr, ptr %l49, !tbaa !29
  %t98 = icmp ne ptr %t97, null
  br i1 %t98, label %bb30, label %bb31
bb30:
  %t100 = load ptr, ptr %l49, !tbaa !29
  %t101 = load i64, ptr %t100, !range !{i64 0, i64 18}
  %t103 = icmp eq i64 %t101, 17
  store i1 %t103, ptr %l50, !tbaa !21
  br label %bb31
bb31:
  %t104 = load i1, ptr %l50, !tbaa !21
  br i1 %t104, label %bb32, label %bb33
bb32:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t107, i32 0, i32 2
  %t109 = load ptr, ptr %t108
  store ptr %t109, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l6, !tbaa !29
  %t115 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargParam(ptr %v0, ptr %v1, ptr %t111, ptr %t112)
  store i64 %t115, ptr %l57
  br label %bb35
bb35:
  %t116 = load i64, ptr %l57, !tbaa !24
  store i64 %t116, ptr %rv
  br label %ret
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i64 -1, ptr %rv
  br label %ret
bb40:
  call void @__olang_check_failed(ptr @olang_loc_4055e0fe87b920f9_59f1ceb8b6607d)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblame(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/effects:Verdict" %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/effects:Verdict"
  %l2 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i1
  %l47 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l80 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Verdict"
  store ptr %a0, ptr %l0
  store %"compiler/effects:Verdict" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load %"compiler/effects:Verdict", ptr %l1
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 88, i64 8)
  store ptr %t2, ptr %lp4
  %t4 = load ptr, ptr %lp4
  store %"compiler/effects:Verdict" %t1, ptr %t4
  %t7 = load ptr, ptr %lp4
  %t8 = getelementptr %"compiler/effects:Verdict", ptr %t7, i32 0, i32 4
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l15, !tbaa !27
  %t11 = load ptr, ptr %lp4
  %t12 = getelementptr %"compiler/effects:Verdict", ptr %t11, i32 0, i32 4
  store { i64, ptr } %a3, ptr %t12, !tbaa !27
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e4
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load { i64, ptr }, ptr %l15
  %t16 = extractvalue { i64, ptr } %t15, 1
  call void @__olang_region_release(ptr %t16)
  store { i64, ptr } zeroinitializer, ptr %l15
  br label %bb2
bb2:
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t17 = load [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames
  store i64 8, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i64, ptr %l8, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l8, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l25, !tbaa !24
  store i64 %t46, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l22, !tbaa !24
  store i64 %t47, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l11, !tbaa !24
  %t66 = load i64, ptr %l11, !tbaa !24
  %t68 = getelementptr [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames, i64 0, i64 %t66
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !37
  %t70 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 0
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t72 = load ptr, ptr @__olang_prog_scope
  %t75 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t72, ptr %s0, { i64, ptr } %t69, { i64, ptr } %t71)
  store i1 %t75, ptr %l46
  br label %bb13
bb13:
  %t76 = load i1, ptr %l46, !tbaa !21
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t77 = load i64, ptr %l11, !tbaa !24
  store i64 %t77, ptr %l47, !tbaa !24
  %t78 = load i64, ptr %l47, !tbaa !24
  %t79 = load i64, ptr %l47, !tbaa !24
  %t80 = shl i64 1, %t79
  store i64 %t80, ptr %l5, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l10, !tbaa !24
  br label %bb9
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l5, !tbaa !24
  %t90 = getelementptr %"compiler/effects:Effects", ptr %t86, i32 0, i32 44
  store i64 %t87, ptr %t90, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l53, !tbaa !29
  %t92 = ptrtoint ptr %v0 to i64
  store i64 %t92, ptr %l54, !tbaa !24
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e45
  br i1 %t93, label %bb19, label %bb20
bb19:
  %t95 = call ptr @__olang_region_make(ptr %v0)
  %t96 = ptrtoint ptr %t95 to i64
  store i64 %t96, ptr %l54, !tbaa !24
  br label %bb20
bb20:
  %t97 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 1
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l56, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l57, !tbaa !24
  %t101 = load i64, ptr %l57, !tbaa !24
  %t102 = mul i64 %t101, 1
  %t103 = load i64, ptr %l54
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = call ptr @__olang_scope_alloc(ptr %t104, i64 %t102)
  %t106 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  store { i64, ptr } %t107, ptr %l58, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l57, !tbaa !24
  %t113 = mul i64 %t112, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t109, ptr %t111, i64 %t113, i1 false)
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e45
  br i1 %t114, label %bb21, label %bb22
bb21:
  %t116 = load i64, ptr %l54
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = load { i64, ptr }, ptr %l58
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr null
  %t123 = icmp eq ptr %t122, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t123)
  br label %bb22
bb22:
  %t124 = load ptr, ptr %l53, !tbaa !29
  %t125 = getelementptr %"compiler/effects:Effects", ptr %t124, i32 0, i32 45
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l60, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t128 = load ptr, ptr %l53, !tbaa !29
  %t129 = getelementptr %"compiler/effects:Effects", ptr %t128, i32 0, i32 45
  store { i64, ptr } %t127, ptr %t129, !tbaa !27
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e45
  br i1 %t130, label %bb23, label %bb24
bb23:
  %t132 = load { i64, ptr }, ptr %l60
  %t133 = extractvalue { i64, ptr } %t132, 1
  call void @__olang_region_release(ptr %t133)
  store { i64, ptr } zeroinitializer, ptr %l60
  br label %bb24
bb24:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/effects:Effects", ptr %t134, i32 0, i32 46
  store i1 false, ptr %t136, !tbaa !21
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %t137, i64 %t138)
  br label %bb25
bb25:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/effects:Effects", ptr %t141, i32 0, i32 44
  store i64 0, ptr %t143, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/effects:Effects", ptr %t144, i32 0, i32 46
  %t147 = load i1, ptr %t146, !tbaa !21
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb26, label %bb27
bb26:
  %t151 = load ptr, ptr %lp4
  %t152 = load %"compiler/effects:Verdict", ptr %t151
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Verdict" %t152, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/effects:Effects", ptr %t154, i32 0, i32 1
  %t157 = load i64, ptr %l2, !tbaa !24
  %t160 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t156, i64 %t157)
  store ptr %t160, ptr %l73
  br label %bb29
bb29:
  %t161 = load ptr, ptr %l73, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Body", ptr %t161, i32 0, i32 3
  %t164 = load i64, ptr %t163, !tbaa !24
  %t166 = load ptr, ptr %lp4
  %t167 = getelementptr %"compiler/effects:Verdict", ptr %t166, i32 0, i32 5
  store i64 %t164, ptr %t167, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/effects:Effects", ptr %t168, i32 0, i32 47
  %t171 = load %"compiler/source:Span", ptr %t170
  %t173 = load ptr, ptr %lp4
  %t174 = getelementptr %"compiler/effects:Verdict", ptr %t173, i32 0, i32 6
  store %"compiler/source:Span" %t171, ptr %t174
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/effects:Effects", ptr %t175, i32 0, i32 48
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  %t179 = load ptr, ptr %lp4
  %t180 = getelementptr %"compiler/effects:Verdict", ptr %t179, i32 0, i32 7
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l80, !tbaa !27
  %t183 = load ptr, ptr %lp4
  %t184 = getelementptr %"compiler/effects:Verdict", ptr %t183, i32 0, i32 7
  store { i64, ptr } %t178, ptr %t184, !tbaa !27
  %t185 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e7
  br i1 %t185, label %bb30, label %bb31
bb30:
  %t187 = load { i64, ptr }, ptr %l80
  %t188 = extractvalue { i64, ptr } %t187, 1
  call void @__olang_region_release(ptr %t188)
  store { i64, ptr } zeroinitializer, ptr %l80
  br label %bb31
bb31:
  %t189 = load ptr, ptr %lp4
  %t190 = load %"compiler/effects:Verdict", ptr %t189
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Verdict" %t190, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Verdict", ptr %rv
  ret %"compiler/effects:Verdict" %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l16 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb14
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Effects", ptr %t30, i32 0, i32 44
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = icmp eq i64 %t33, 0
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  br label %bb10
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyStmt(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l3, !tbaa !24
  br label %bb4
bb14:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebodyName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l2
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i64 }, ptr %t18, i32 0, i32 0
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  br label %bb8
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/load:Loader", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l17, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/effects:Effects", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l19, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l23
  br label %bb5
bb5:
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s1, ptr %t44, i64 %t45)
  store ptr %t46, ptr %l24
  br label %bb6
bb6:
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Func", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load ptr, ptr %l17, !tbaa !29
  %t53 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s1, ptr %t51, i32 %t50)
  store { i64, ptr } %t53, ptr %l27
  br label %bb7
bb7:
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t56 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = add i64 %t55, %t58
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t54, i64 %t55)
  %t64 = getelementptr i8, ptr %t63, i64 %t55
  call void @olang_textcopy(ptr %t64, ptr %t57, i64 %t58)
  %t65 = getelementptr i8, ptr %t64, i64 %t58
  call void @olang_textcopy(ptr %t65, ptr %t60, i64 %t61)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t63, 1
  store { i64, ptr } %t67, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb25
bb8:
  %t69 = load { i64, [2 x i64] }, ptr %l2
  %t71 = extractvalue { i64, [2 x i64] } %t69, 0
  %t72 = icmp eq i64 %t71, 4
  br i1 %t72, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t74, ptr %l10, !tbaa !27
  br label %bb25
bb12:
  %t76 = load { i64, [2 x i64] }, ptr %l2
  %t78 = extractvalue { i64, [2 x i64] } %t76, 0
  %t79 = icmp eq i64 %t78, 1
  br i1 %t79, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t81, ptr %l10, !tbaa !27
  br label %bb25
bb16:
  %t83 = load { i64, [2 x i64] }, ptr %l2
  %t85 = extractvalue { i64, [2 x i64] } %t83, 0
  %t86 = icmp eq i64 %t85, 3
  br i1 %t86, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t88, ptr %l10, !tbaa !27
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t90, ptr %l10, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_480f10282bdc13cf_4349ffb73b811f6b)
  unreachable
bb25:
  %t92 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l43, !tbaa !24
  %t94 = load i64, ptr %l43, !tbaa !24
  %t95 = mul i64 %t94, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l44, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l43, !tbaa !24
  %t104 = mul i64 %t103, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t100, ptr %t102, i64 %t104, i1 false)
  %t105 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t105, ptr %l10, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t106, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebounds(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/effects:Facts"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
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
  %l17 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/effects:given"
  %l21 = alloca %"compiler/effects:Facts"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i32
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca i64
  %l70 = alloca i1
  %l71 = alloca i64
  %l74 = alloca i64
  %l76 = alloca i1
  %l80 = alloca i64
  %l85 = alloca i64
  %l88 = alloca i64
  %l109 = alloca i64
  %l111 = alloca i1
  %l114 = alloca i64
  %l116 = alloca i64
  %l121 = alloca %"compiler/effects:given"
  %l125 = alloca i1
  %l132 = alloca i1
  %l136 = alloca i1
  %l140 = alloca i1
  %l142 = alloca ptr
  %l147 = alloca %"compiler/effects:Facts"
  %l153 = alloca ptr
  %l156 = alloca ptr
  %l160 = alloca i32
  %l161 = alloca %"compiler/effects:Facts"
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t1, ptr %l21
  br label %bb1
bb1:
  %t2 = load %"compiler/effects:Facts", ptr %l21
  store %"compiler/effects:Facts" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/effects:Effects", ptr %t3, i32 0, i32 6
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v0, ptr %t5, i64 %t6)
  %t10 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t9, 1
  %t11 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t9, 0
  store i32 %t11, ptr %l27
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb3, label %ok.13, !prof !99
ok.13:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l26
  br label %bb2
bb2:
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %l26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l29
  br label %bb5
bb3:
  br label %bb4
bb4:
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l30
  br label %bb6
bb5:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l22
  br label %bb7
bb6:
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l22
  br label %bb7
bb7:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/effects:Effects", ptr %t20, i32 0, i32 4
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l34
  br label %bb8
bb8:
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %l34)
  store i64 %t28, ptr %l36
  br label %bb9
bb9:
  %t29 = load i64, ptr %l36, !tbaa !24
  store i64 %t29, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb15
bb12:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l43, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb14
bb14:
  %t56 = load i64, ptr %l43, !tbaa !24
  store i64 %t56, ptr %l40, !tbaa !24
  br label %bb15
bb15:
  %t57 = load i64, ptr %l40, !tbaa !24
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb16
bb16:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb17, label %bb18
bb17:
  br label %bb83
bb18:
  br label %bb19
bb19:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l9, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/effects:Effects", ptr %t76, i32 0, i32 4
  %t79 = load i64, ptr %l1, !tbaa !24
  %t82 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l64
  br label %bb20
bb20:
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %l64, i64 %t83)
  store i64 %t86, ptr %l67
  br label %bb21
bb21:
  %t87 = load i64, ptr %l67, !tbaa !24
  store i64 %t87, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l10, !tbaa !24
  %t90 = icmp slt i64 %t88, 0
  br i1 %t90, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb25
bb23:
  %t92 = load i64, ptr %l10, !tbaa !24
  store i64 %t92, ptr %l71, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/effects:Effects", ptr %t93, i32 0, i32 1
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l74
  br label %bb24
bb24:
  %t98 = load i64, ptr %l71, !tbaa !24
  %t99 = load i64, ptr %l74, !tbaa !24
  %t100 = icmp sge i64 %t98, %t99
  store i1 %t100, ptr %l70, !tbaa !21
  br label %bb25
bb25:
  %t102 = load i1, ptr %l70, !tbaa !21
  br i1 %t102, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb29
bb27:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/effects:Effects", ptr %t103, i32 0, i32 9
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t105, i64 %t106)
  store i64 %t109, ptr %l80
  br label %bb28
bb28:
  %t110 = load i64, ptr %l80, !tbaa !24
  %t111 = icmp eq i64 %t110, 0
  store i1 %t111, ptr %l76, !tbaa !21
  br label %bb29
bb29:
  %t113 = load i1, ptr %l76, !tbaa !21
  br i1 %t113, label %bb30, label %bb31
bb30:
  br label %bb82
bb31:
  br label %bb32
bb32:
  store i64 0, ptr %l11, !tbaa !24
  store i64 63, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t114 = load i64, ptr %l12, !tbaa !24
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = icmp sgt i64 %t114, %t115
  br i1 %t118, label %bb33, label %bb34
bb33:
  %t120 = load i64, ptr %l13, !tbaa !24
  %t122 = icmp sgt i64 %t120, 0
  br i1 %t122, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb38
bb35:
  %t124 = load i64, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l11, !tbaa !24
  %t128 = sub i64 %t124, %t125
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = add i64 %t128, %t129
  %t134 = sub i64 %t132, 1
  %t135 = load i64, ptr %l13, !tbaa !24
  %t138 = sdiv i64 %t134, %t135
  store i64 %t138, ptr %l88, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb37
bb37:
  %t140 = load i64, ptr %l88, !tbaa !24
  store i64 %t140, ptr %l85, !tbaa !24
  br label %bb38
bb38:
  %t141 = load i64, ptr %l85, !tbaa !24
  store i64 %t141, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb39
bb39:
  %t142 = load i64, ptr %l15, !tbaa !24
  %t143 = load i64, ptr %l14, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb40, label %bb41
bb40:
  br label %bb81
bb41:
  br label %bb42
bb42:
  %t150 = load i64, ptr %l11, !tbaa !24
  %t151 = load i64, ptr %l15, !tbaa !24
  %t152 = load i64, ptr %l13, !tbaa !24
  %t155 = mul i64 %t151, %t152
  %t158 = add i64 %t150, %t155
  store i64 %t158, ptr %l16, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/effects:Effects", ptr %t160, i32 0, i32 9
  %t163 = load i64, ptr %l10, !tbaa !24
  %t166 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t162, i64 %t163)
  store i64 %t166, ptr %l109
  br label %bb43
bb43:
  %t167 = load i64, ptr %l16, !tbaa !24
  %t168 = load i64, ptr %l109, !tbaa !24
  %t170 = call i1 @compiler_2feffects_2ehasBit(i64 %t168, i64 %t167)
  store i1 %t170, ptr %l111
  br label %bb44
bb44:
  %t171 = load i1, ptr %l111, !tbaa !21
  %t172 = xor i1 %t171, true
  br i1 %t172, label %bb45, label %bb46
bb45:
  br label %bb80
bb46:
  br label %bb47
bb47:
  store i1 false, ptr %l17, !tbaa !21
  store ptr %l3, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb48
bb48:
  %t175 = load i64, ptr %l19, !tbaa !24
  store i64 %t175, ptr %l114, !tbaa !24
  %t176 = load ptr, ptr %l18, !tbaa !29
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t176)
  store i64 %t178, ptr %l116
  br label %bb49
bb49:
  %t179 = load i64, ptr %l114, !tbaa !24
  %t180 = load i64, ptr %l116, !tbaa !24
  %t181 = icmp slt i64 %t179, %t180
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb50, label %bb51
bb50:
  br label %bb73
bb51:
  br label %bb52
bb52:
  %t185 = load ptr, ptr %l18, !tbaa !29
  %t186 = load i64, ptr %l19, !tbaa !24
  %t189 = call %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t185, i64 %t186)
  store %"compiler/effects:given" %t189, ptr %l121
  br label %bb53
bb53:
  %t190 = load %"compiler/effects:given", ptr %l121
  store %"compiler/effects:given" %t190, ptr %l20
  %t191 = getelementptr %"compiler/effects:given", ptr %l20, i32 0, i32 0
  %t192 = load i64, ptr %t191, !tbaa !24
  %t193 = load i64, ptr %l9, !tbaa !24
  %t196 = icmp ne i64 %t192, %t193
  br i1 %t196, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l125, !tbaa !21
  br label %bb56
bb55:
  %t198 = getelementptr %"compiler/effects:given", ptr %l20, i32 0, i32 1
  %t199 = load i64, ptr %t198, !tbaa !24
  %t200 = load i64, ptr %l16, !tbaa !24
  %t203 = icmp ne i64 %t199, %t200
  store i1 %t203, ptr %l125, !tbaa !21
  br label %bb56
bb56:
  %t205 = load i1, ptr %l125, !tbaa !21
  br i1 %t205, label %bb57, label %bb58
bb57:
  br label %bb72
bb58:
  br label %bb59
bb59:
  store i1 true, ptr %l17, !tbaa !21
  %t206 = getelementptr %"compiler/effects:given", ptr %l20, i32 0, i32 2
  %t207 = load i64, ptr %t206, !tbaa !24
  %t208 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t211 = icmp eq i64 %t207, %t208
  br i1 %t211, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb66
bb61:
  %t213 = getelementptr %"compiler/effects:given", ptr %l20, i32 0, i32 2
  %t214 = load i64, ptr %t213, !tbaa !24
  %t215 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t218 = icmp eq i64 %t214, %t215
  br i1 %t218, label %bb62, label %bb63
bb62:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/effects:Effects", ptr %t220, i32 0, i32 7
  %t223 = getelementptr %"compiler/effects:given", ptr %l20, i32 0, i32 3
  %t224 = load i64, ptr %t223, !tbaa !24
  %t227 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t222, i64 %t224)
  store i1 %t227, ptr %l140
  br label %bb64
bb63:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb65
bb64:
  %t228 = load i1, ptr %l140, !tbaa !21
  %t229 = xor i1 %t228, true
  store i1 %t229, ptr %l136, !tbaa !21
  br label %bb65
bb65:
  %t231 = load i1, ptr %l136, !tbaa !21
  store i1 %t231, ptr %l132, !tbaa !21
  br label %bb66
bb66:
  %t232 = load i1, ptr %l132, !tbaa !21
  br i1 %t232, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %l2, ptr %l142, !tbaa !29
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/effects:Effects", ptr %t233, i32 0, i32 0
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 2
  %t239 = getelementptr %"compiler/effects:given", ptr %l20, i32 0, i32 4
  %t240 = load i32, ptr %t239, !tbaa !23
  %t243 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t238, i32 %t240)
  store %"compiler/effects:Facts" %t243, ptr %l147
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t244 = load ptr, ptr %l142, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s10, ptr %t244, ptr %l147)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t246 = load i64, ptr %l19, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l19, !tbaa !24
  br label %bb48
bb73:
  %t250 = load i1, ptr %l17, !tbaa !21
  %t252 = xor i1 %t250, true
  br i1 %t252, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s12
  store ptr %l2, ptr %l153, !tbaa !29
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/effects:Effects", ptr %t254, i32 0, i32 0
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 2
  store ptr %t259, ptr %l156, !tbaa !29
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i64, ptr %l10, !tbaa !24
  %t262 = load i64, ptr %l16, !tbaa !24
  %t266 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t260, i64 %t261, i64 %t262)
  store i32 %t266, ptr %l160
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t267 = load ptr, ptr %l156, !tbaa !29
  %t268 = load i32, ptr %l160, !tbaa !23
  %t269 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t267, i32 %t268)
  store %"compiler/effects:Facts" %t269, ptr %l161
  br label %bb77
bb77:
  %t270 = load ptr, ptr %l153, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s12, ptr %t270, ptr %l161)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s12)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t272 = load i64, ptr %l15, !tbaa !24
  %t274 = add i64 %t272, 1
  store i64 %t274, ptr %l15, !tbaa !24
  br label %bb39
bb81:
  br label %bb82
bb82:
  %t276 = load i64, ptr %l8, !tbaa !24
  %t278 = add i64 %t276, 1
  store i64 %t278, ptr %l8, !tbaa !24
  br label %bb16
bb83:
  %t280 = load %"compiler/effects:Facts", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t280, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecMayCallBack(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca i64
  %l16 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 17
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Effects", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 18
  %t22 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l10
  br label %bb3
bb3:
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = icmp sgt i64 %t23, 0
  store i1 %t24, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t26 = load i1, ptr %l5, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/effects:Effects", ptr %t28, i32 0, i32 50
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = icmp slt i64 %t31, 0
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l16, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = call i1 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinksOwnC(ptr %v0, ptr %t42)
  store i1 %t44, ptr %l20
  br label %bb10
bb9:
  br label %bb18
bb10:
  %t45 = load i1, ptr %l20, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ehasExport(ptr %v0, ptr %t46)
  store i1 %t48, ptr %l23
  br label %bb13
bb12:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  %t49 = load i1, ptr %l23, !tbaa !21
  store i1 %t49, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l21, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  store i64 1, ptr %l24, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb17
bb17:
  %t51 = load i64, ptr %l24, !tbaa !24
  %t52 = load ptr, ptr %l16, !tbaa !29
  %t53 = getelementptr %"compiler/effects:Effects", ptr %t52, i32 0, i32 50
  store i64 %t51, ptr %t53, !tbaa !24
  br label %bb18
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/effects:Effects", ptr %t54, i32 0, i32 50
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = icmp eq i64 %t57, 1
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l40 = alloca ptr
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/effects:Effects", ptr %t16, i32 0, i32 13
  %t19 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t18, i64 %t19, i1 true)
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 4
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %s2, ptr %t24, i64 %t25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l20
  br label %bb9
bb9:
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s2, ptr %l20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l22
  br label %bb10
bb10:
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  %t32 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %t32
  store ptr %t32, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t34 = load i64, ptr %l4, !tbaa !24
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t35)
  store i64 %t37, ptr %l26
  br label %bb12
bb12:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l26, !tbaa !24
  %t40 = icmp slt i64 %t38, %t39
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t44, i64 %t45)
  store i64 %t48, ptr %l31
  br label %bb16
bb16:
  %t49 = load i64, ptr %l31, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = icmp eq i64 %t49, %t51
  br i1 %t54, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l4, !tbaa !24
  br label %bb11
bb21:
  call void @__olang_scope_close(ptr %s2)
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/effects:Effects", ptr %t60, i32 0, i32 4
  %t63 = load i64, ptr %l1, !tbaa !24
  %t66 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l40
  br label %bb22
bb22:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t68, i64 %t67)
  br label %bb23
bb23:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i64, ptr %l1, !tbaa !24
  %t72 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eedge(ptr %v0, ptr %t70, i64 %t71, i64 %t72)
  br label %bb24
bb24:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyLocal(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l18 = alloca ptr
  %l22 = alloca %"compiler/effects:part"
  %l26 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l34 = alloca i1
  %l37 = alloca ptr
  %l40 = alloca %"compiler/effects:part"
  %l44 = alloca i1
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i32
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l58 = alloca i64
  %l63 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 26
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l14
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t12 = load i64, ptr %l13, !tbaa !24
  store i64 %t12, ptr %l9, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l9, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Effects", ptr %t18, i32 0, i32 33
  store ptr %t20, ptr %l18, !tbaa !29
  %t21 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i32, ptr %l2, !tbaa !23
  %t27 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t21, i64 %t22, i32 %t23, ptr null)
  store %"compiler/effects:part" %t27, ptr %l22
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = load %"compiler/effects:part", ptr %l22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t28, %"compiler/effects:part" %t29)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Effects", ptr %t30, i32 0, i32 35
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t32, i64 %t33)
  store i1 %t36, ptr %l26
  br label %bb10
bb10:
  %t37 = load i1, ptr %l26, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb17
bb12:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp slt i64 %t38, 0
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/effects:Effects", ptr %t42, i32 0, i32 34
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H812d4871fea5544bd17001c04038a9fe(ptr %v0, ptr %t44, i64 %t45)
  store i1 %t48, ptr %l34
  br label %bb15
bb14:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb16
bb15:
  %t49 = load i1, ptr %l34, !tbaa !21
  %t50 = xor i1 %t49, true
  store i1 %t50, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t52 = load i1, ptr %l30, !tbaa !21
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l27, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/effects:Effects", ptr %t54, i32 0, i32 33
  store ptr %t56, ptr %l37, !tbaa !29
  %t57 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t57, i64 0, i32 %t58, ptr null)
  store %"compiler/effects:part" %t61, ptr %l40
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t62 = load ptr, ptr %l37, !tbaa !29
  %t63 = load %"compiler/effects:part", ptr %l40
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t62, %"compiler/effects:part" %t63)
  br label %bb21
bb21:
  br label %ret
bb22:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/effects:Effects", ptr %t64, i32 0, i32 34
  %t67 = load i64, ptr %l1, !tbaa !24
  %t70 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H812d4871fea5544bd17001c04038a9fe(ptr %v0, ptr %t66, i64 %t67)
  store i1 %t70, ptr %l44
  br label %bb23
bb23:
  %t71 = load i1, ptr %l44, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb24, label %bb25
bb24:
  br label %ret
bb25:
  br label %bb26
bb26:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/effects:Effects", ptr %t74, i32 0, i32 34
  %t77 = load i64, ptr %l1, !tbaa !24
  %t80 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H0900524597b2264f5a31dc7ea3fca989(ptr %v0, ptr %v0, ptr %t76, i64 %t77)
  %t81 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t80, 1
  %t82 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t80, 0
  store i32 %t82, ptr %l51
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb28, label %ok.84, !prof !99
ok.84:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %l50
  br label %bb27
bb27:
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %l50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l53
  br label %bb30
bb28:
  br label %bb29
bb29:
  %t87 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l54
  br label %bb31
bb30:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l46
  br label %bb32
bb31:
  %t89 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l46
  br label %bb32
bb32:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l5
  store ptr %l5, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb33
bb33:
  %t92 = load i64, ptr %l7, !tbaa !24
  store i64 %t92, ptr %l56, !tbaa !24
  %t93 = load ptr, ptr %l6, !tbaa !29
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t93)
  store i64 %t95, ptr %l58
  br label %bb34
bb34:
  %t96 = load i64, ptr %l56, !tbaa !24
  %t97 = load i64, ptr %l58, !tbaa !24
  %t98 = icmp slt i64 %t96, %t97
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  br label %bb37
bb37:
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t103 = load i64, ptr %l7, !tbaa !24
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t102, i64 %t103)
  store ptr %t106, ptr %l63
  br label %bb38
bb38:
  %t107 = load ptr, ptr %l63, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t113 = add i64 %a3, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v0, ptr %t108, ptr %t107, i64 %t113)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l7, !tbaa !24
  br label %bb33
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclause(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Clause", ptr %t2, i32 0, i32 3
  %t5 = load ptr, ptr %t4, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Clause", ptr %t8, i32 0, i32 4
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t25, ptr %l17, !tbaa !27
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  %t33 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t33, ptr %t31)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb2
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l6 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l31 = alloca i1
  %l32 = alloca i1
  %l37 = alloca i1
  %l41 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i32
  %l58 = alloca ptr
  %l60 = alloca i64
  %l63 = alloca i1
  %l64 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i32, ptr %l6, !tbaa !23
  store i32 %t4, ptr %l3, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l3, !tbaa !23
  %t9 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l9
  br label %bb2
bb2:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 34
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H812d4871fea5544bd17001c04038a9fe(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l13
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t18 = load i1, ptr %l13, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Effects", ptr %t21, i32 0, i32 34
  store ptr %t23, ptr %l16, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  store i64 %t24, ptr %l17, !tbaa !24
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l18
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hc680bc8b736298027ff580de04f60380(ptr %v0, ptr %v0, ptr %t26, i64 %t27, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/effects:Effects", ptr %t29, i32 0, i32 34
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hfb9e5165fbc860148668cf342d052cc0(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  %t36 = extractvalue { i32, ptr } %t35, 1
  %t37 = extractvalue { i32, ptr } %t35, 0
  store i32 %t37, ptr %l24
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb12, label %ok.39, !prof !99
ok.39:
  store ptr %t36, ptr %l23
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l23, !tbaa !29
  store ptr %t40, ptr %l19, !tbaa !29
  br label %bb15
bb12:
  %t41 = load i32, ptr %l24, !tbaa !23
  %t42 = icmp eq i32 %t41, 65536
  br i1 %t42, label %bb13, label %bb14
bb13:
  call void @__olang_bang_failed_plain(ptr @olang_loc_12d41178ea699117_cd5c06b5e62ab993)
  unreachable
bb14:
  call void @__olang_bang_failed_plain(ptr @olang_loc_bfb31f4e096fcfdd_9eff6572189cd471)
  unreachable
bb15:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t45 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t45, ptr %t44)
  br label %bb16
bb16:
  br label %ret
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/effects:Effects", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l3, !tbaa !23
  %t56 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t52, i32 %t53)
  store i1 %t56, ptr %l31
  br label %bb18
bb18:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb22
bb20:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/effects:Effects", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t67, ptr %l37
  br label %bb21
bb21:
  %t68 = load i1, ptr %l37, !tbaa !21
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t69 = load i1, ptr %l32, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb23, label %bb24
bb23:
  br label %ret
bb24:
  br label %bb25
bb25:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t76 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %t72, ptr %t73, i64 0)
  store i64 %t76, ptr %l41
  br label %bb26
bb26:
  %t77 = load i64, ptr %l41, !tbaa !24
  store i64 %t77, ptr %l4, !tbaa !24
  %t78 = load i64, ptr %l4, !tbaa !24
  %t80 = icmp ne i64 %t78, 0
  br i1 %t80, label %bb27, label %bb28
bb27:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/effects:Effects", ptr %t82, i32 0, i32 27
  store ptr %t84, ptr %l45, !tbaa !29
  %t85 = load i64, ptr %l1, !tbaa !24
  store i64 %t85, ptr %l46, !tbaa !24
  %t86 = load i64, ptr %l4, !tbaa !24
  store i64 %t86, ptr %l47, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 27
  %t90 = load i64, ptr %l1, !tbaa !24
  %t93 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t89, i64 %t90)
  %t94 = extractvalue { i32, i64 } %t93, 1
  %t95 = extractvalue { i32, i64 } %t93, 0
  store i32 %t95, ptr %l53
  %t96 = icmp ne i32 %t95, 0
  br i1 %t96, label %bb30, label %ok.97, !prof !99
ok.97:
  store i64 %t94, ptr %l52
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t98 = load i64, ptr %l52, !tbaa !24
  store i64 %t98, ptr %l48, !tbaa !24
  br label %bb32
bb30:
  br label %bb31
bb31:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb32
bb32:
  %t99 = load i64, ptr %l47, !tbaa !24
  %t100 = load i64, ptr %l48, !tbaa !24
  %t101 = or i64 %t99, %t100
  %t102 = load ptr, ptr %l45, !tbaa !29
  %t103 = load i64, ptr %l46, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t102, i64 %t103, i64 %t101)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/effects:Effects", ptr %t105, i32 0, i32 2
  %t108 = load i1, ptr %t107, !tbaa !21
  br i1 %t108, label %bb35, label %bb36
bb35:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/effects:Effects", ptr %t110, i32 0, i32 36
  store ptr %t112, ptr %l58, !tbaa !29
  %t113 = load i64, ptr %l1, !tbaa !24
  %t115 = mul i64 2, %t113
  store i64 %t115, ptr %l60, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t120 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebuilt(ptr %v0, ptr %v1, ptr %t116, ptr %t117)
  store i1 %t120, ptr %l63
  br label %bb37
bb36:
  br label %bb42
bb37:
  %t121 = load i1, ptr %l63, !tbaa !21
  br i1 %t121, label %bb38, label %bb39
bb38:
  store i64 1, ptr %l64, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb40
bb40:
  %t122 = load i64, ptr %l60, !tbaa !24
  %t123 = load i64, ptr %l64, !tbaa !24
  %t124 = add i64 %t122, %t123
  %t125 = load ptr, ptr %l58, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t125, i64 %t124)
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l30 = alloca i1
  %l36 = alloca i32
  %l41 = alloca i32
  %l48 = alloca i1
  %l53 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i32
  %l64 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l88 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l147 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Effects", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l24
  br label %bb3
bb3:
  %t15 = load i1, ptr %l24, !tbaa !21
  store i1 %t15, ptr %l19, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l19, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb8
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/effects:Effects", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l30
  br label %bb7
bb7:
  %t27 = load i1, ptr %l30, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l25, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l25, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/effects:Effects", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l36
  br label %bb12
bb12:
  %t41 = load i32, ptr %l36, !tbaa !23
  store i32 %t41, ptr %l3, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/effects:Effects", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l41
  br label %bb13
bb13:
  %t52 = load i32, ptr %l41, !range !{i32 0, i32 33}
  store i32 %t52, ptr %l4
  %t53 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t55 = trunc i64 18 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb48
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/effects:Effects", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t67, ptr %l48
  br label %bb17
bb17:
  %t68 = load i1, ptr %l48, !tbaa !21
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edtorCalled(ptr %v0, ptr %t69, i32 %t70)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/effects:Effects", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  store ptr %t78, ptr %l53, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/effects:Effects", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l3, !tbaa !23
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t88, ptr %l58
  br label %bb22
bb22:
  %t89 = load ptr, ptr %l53, !tbaa !29
  %t90 = load i32, ptr %l58, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t91, ptr %l59
  br label %bb23
bb23:
  %t92 = load i32, ptr %l59, !range !{i32 0, i32 6}
  %t94 = trunc i64 0 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  store ptr %t102, ptr %l64, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/effects:Effects", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %l3, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t108, i32 %t109)
  store i32 %t112, ptr %l69
  br label %bb26
bb25:
  br label %bb35
bb26:
  %t113 = load ptr, ptr %l64, !tbaa !29
  %t114 = load i32, ptr %l69, !tbaa !23
  %t115 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t113, i32 %t114)
  store { i64, ptr } %t115, ptr %l70
  br label %bb27
bb27:
  %t116 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t116, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  store i64 %t119, ptr %l7, !tbaa !24
  br label %bb28
bb28:
  %t121 = load i64, ptr %l6, !tbaa !24
  %t122 = load i64, ptr %l7, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t129 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t129, ptr %l77, !tbaa !27
  %t130 = load i64, ptr %l6, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i32, ptr %t133, i64 %t130
  %t135 = load i32, ptr %t134, !tbaa !33
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i64, ptr %l2, !tbaa !24
  %t141 = add i64 %t139, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %t137, i32 %t135, i64 %t141)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t145 = load i64, ptr %l6, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l6, !tbaa !24
  br label %bb28
bb34:
  br label %ret
bb35:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/effects:Effects", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  store ptr %t154, ptr %l88, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/effects:Effects", ptr %t155, i32 0, i32 0
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 2
  %t161 = load i32, ptr %l3, !tbaa !23
  %t164 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l93
  br label %bb36
bb36:
  %t165 = load ptr, ptr %l88, !tbaa !29
  %t166 = load i32, ptr %l93, !tbaa !23
  %t167 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t165, i32 %t166)
  store { i64, ptr } %t167, ptr %l94
  br label %bb37
bb37:
  %t168 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t168, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t169, 0
  store i64 %t171, ptr %l11, !tbaa !24
  br label %bb38
bb38:
  %t173 = load i64, ptr %l10, !tbaa !24
  %t174 = load i64, ptr %l11, !tbaa !24
  %t177 = icmp slt i64 %t173, %t174
  %t179 = xor i1 %t177, true
  br i1 %t179, label %bb39, label %bb40
bb39:
  br label %bb47
bb40:
  br label %bb41
bb41:
  %t181 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t181, ptr %l101, !tbaa !27
  %t182 = load i64, ptr %l10, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i32, ptr %t185, i64 %t182
  %t187 = load i32, ptr %t186, !tbaa !33
  store i32 %t187, ptr %l12, !tbaa !23
  %t189 = load i32, ptr %l12, !tbaa !23
  %t191 = icmp ne i32 %t189, 0
  br i1 %t191, label %bb42, label %bb43
bb42:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i32, ptr %l12, !tbaa !23
  %t195 = load i64, ptr %l2, !tbaa !24
  %t197 = add i64 %t195, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %t193, i32 %t194, i64 %t197)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t201 = load i64, ptr %l10, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l10, !tbaa !24
  br label %bb38
bb47:
  br label %bb74
bb48:
  %t205 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t207 = trunc i64 23 to i32
  %t208 = icmp eq i32 %t205, %t207
  br i1 %t208, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  %t210 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t212 = trunc i64 22 to i32
  %t213 = icmp eq i32 %t210, %t212
  br i1 %t213, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb63
bb53:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/effects:Effects", ptr %t215, i32 0, i32 0
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 2
  store ptr %t220, ptr %l118, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/effects:Effects", ptr %t221, i32 0, i32 0
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %l3, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l123
  br label %bb54
bb54:
  %t231 = load ptr, ptr %l118, !tbaa !29
  %t232 = load i32, ptr %l123, !tbaa !23
  %t233 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t231, i32 %t232)
  store { i64, ptr } %t233, ptr %l124
  br label %bb55
bb55:
  %t234 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t234, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t235, 0
  store i64 %t237, ptr %l15, !tbaa !24
  br label %bb56
bb56:
  %t239 = load i64, ptr %l14, !tbaa !24
  %t240 = load i64, ptr %l15, !tbaa !24
  %t243 = icmp slt i64 %t239, %t240
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t247 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t247, ptr %l131, !tbaa !27
  %t248 = load i64, ptr %l14, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t248
  %t253 = load i32, ptr %t252, !tbaa !33
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = load i64, ptr %l2, !tbaa !24
  %t259 = add i64 %t257, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %t255, i32 %t253, i64 %t259)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t263 = load i64, ptr %l14, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l14, !tbaa !24
  br label %bb56
bb62:
  br label %bb74
bb63:
  %t267 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t269 = trunc i64 19 to i32
  %t270 = icmp eq i32 %t267, %t269
  br i1 %t270, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l142, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/effects:Effects", ptr %t273, i32 0, i32 0
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  %t279 = load i32, ptr %l3, !tbaa !23
  %t282 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t278, i32 %t279)
  store i32 %t282, ptr %l147
  br label %bb67
bb67:
  %t283 = load i64, ptr %l2, !tbaa !24
  %t285 = add i64 %t283, 1
  %t286 = load ptr, ptr %l142, !tbaa !29
  %t287 = load i32, ptr %l147, !tbaa !23
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %t286, i32 %t287, i64 %t285)
  br label %bb68
bb68:
  br label %bb74
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_a95aecd22ff58df7_af716a2d87a126b3)
  unreachable
bb74:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eedge(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l15 = alloca i64
  %l20 = alloca i64
  %l27 = alloca i64
  %l31 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca i64
  %l60 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l9
  br label %bb3
bb3:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l5, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/effects:Effects", ptr %t16, i32 0, i32 14
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l15
  br label %bb7
bb7:
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = icmp eq i64 %t23, 2
  store i1 %t24, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l11, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Effects", ptr %t27, i32 0, i32 17
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t29, i64 %t30)
  store i64 %t33, ptr %l20
  br label %bb12
bb12:
  %t34 = load i64, ptr %l20, !tbaa !24
  %t35 = icmp slt i64 %t34, 0
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2evisit(ptr %v0, ptr %t37, i64 %t38)
  br label %bb15
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/effects:Effects", ptr %t41, i32 0, i32 19
  %t44 = load i64, ptr %l2, !tbaa !24
  %t47 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t43, i64 %t44)
  store i1 %t47, ptr %l43
  br label %bb23
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/effects:Effects", ptr %t48, i32 0, i32 18
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l27
  br label %bb16
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/effects:Effects", ptr %t55, i32 0, i32 18
  %t58 = load i64, ptr %l1, !tbaa !24
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l31
  br label %bb17
bb17:
  %t62 = load i64, ptr %l27, !tbaa !24
  %t63 = load i64, ptr %l31, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/effects:Effects", ptr %t66, i32 0, i32 18
  store ptr %t68, ptr %l34, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  store i64 %t69, ptr %l35, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/effects:Effects", ptr %t70, i32 0, i32 18
  %t73 = load i64, ptr %l2, !tbaa !24
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t72, i64 %t73)
  store i64 %t76, ptr %l39
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t77 = load ptr, ptr %l34, !tbaa !29
  %t78 = load i64, ptr %l35, !tbaa !24
  %t79 = load i64, ptr %l39, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t77, i64 %t78, i64 %t79)
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb34
bb23:
  %t80 = load i1, ptr %l43, !tbaa !21
  br i1 %t80, label %bb24, label %bb25
bb24:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/effects:Effects", ptr %t81, i32 0, i32 17
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t83, i64 %t84)
  store i64 %t87, ptr %l48
  br label %bb26
bb25:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb28
bb26:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/effects:Effects", ptr %t88, i32 0, i32 18
  %t91 = load i64, ptr %l1, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l52
  br label %bb27
bb27:
  %t95 = load i64, ptr %l48, !tbaa !24
  %t96 = load i64, ptr %l52, !tbaa !24
  %t97 = icmp slt i64 %t95, %t96
  store i1 %t97, ptr %l44, !tbaa !21
  br label %bb28
bb28:
  %t99 = load i1, ptr %l44, !tbaa !21
  br i1 %t99, label %bb29, label %bb30
bb29:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/effects:Effects", ptr %t100, i32 0, i32 18
  store ptr %t102, ptr %l55, !tbaa !29
  %t103 = load i64, ptr %l1, !tbaa !24
  store i64 %t103, ptr %l56, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/effects:Effects", ptr %t104, i32 0, i32 17
  %t107 = load i64, ptr %l2, !tbaa !24
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t106, i64 %t107)
  store i64 %t110, ptr %l60
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t111 = load ptr, ptr %l55, !tbaa !29
  %t112 = load i64, ptr %l56, !tbaa !24
  %t113 = load i64, ptr %l60, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t111, i64 %t112, i64 %t113)
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l87 = alloca i1
  %l88 = alloca ptr
  %l93 = alloca i32
  %l98 = alloca ptr
  %l99 = alloca i1
  %l113 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l117 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i1
  %l177 = alloca { i64, ptr }
  %l185 = alloca ptr
  %l186 = alloca i1
  %l196 = alloca ptr
  %l197 = alloca i1
  %l213 = alloca ptr
  %l214 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i1
  %l244 = alloca { i64, ptr }
  %l254 = alloca ptr
  %l255 = alloca i1
  %l268 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l294 = alloca ptr
  %l300 = alloca ptr
  %l301 = alloca i1
  %l320 = alloca { i64, ptr }
  %l327 = alloca ptr
  %l328 = alloca i1
  %l335 = alloca ptr
  %l336 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t6 = load ptr, ptr %l46, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l46, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l47, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l47, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t15 = load ptr, ptr %l50, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l50, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 18}
  %t21 = icmp eq i64 %t19, 1
  store i1 %t21, ptr %l51, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l51, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb198
bb13:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t24 = load ptr, ptr %l54, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb14, label %bb15
bb14:
  %t27 = load ptr, ptr %l54, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l55, !tbaa !21
  br label %bb15
bb15:
  %t31 = load i1, ptr %l55, !tbaa !21
  br i1 %t31, label %bb16, label %bb17
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l2, !tbaa !29
  br label %bb26
bb17:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t39 = load ptr, ptr %l60, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l60, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l61, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l61, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l2, !tbaa !29
  br label %bb26
bb21:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t54 = load ptr, ptr %l66, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l66, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 4
  store i1 %t60, ptr %l67, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l67, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l2, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %t68, ptr %t69, i1 false)
  br label %bb27
bb27:
  br label %bb198
bb28:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t73 = load ptr, ptr %l74, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb29, label %bb30
bb29:
  %t76 = load ptr, ptr %l74, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 5
  store i1 %t79, ptr %l75, !tbaa !21
  br label %bb30
bb30:
  %t80 = load i1, ptr %l75, !tbaa !21
  br i1 %t80, label %bb31, label %bb32
bb31:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l3, !tbaa !23
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb41
bb33:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/effects:Effects", ptr %t93, i32 0, i32 22
  %t96 = getelementptr %"compiler/effects:Facts", ptr %t95, i32 0, i32 0
  store i1 true, ptr %t96, !tbaa !21
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t106, ptr %l87
  br label %bb34
bb34:
  %t107 = load i1, ptr %l87, !tbaa !21
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l88, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/effects:Effects", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %l3, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l93
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t119 = load ptr, ptr %l88, !tbaa !29
  %t120 = load i32, ptr %l93, !tbaa !23
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %t119, i32 %t120, i64 0)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Promote", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t121, ptr %t125)
  br label %bb40
bb40:
  br label %bb198
bb41:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t130 = load ptr, ptr %l98, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb42, label %bb43
bb42:
  %t133 = load ptr, ptr %l98, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 18}
  %t136 = icmp eq i64 %t134, 16
  store i1 %t136, ptr %l99, !tbaa !21
  br label %bb43
bb43:
  %t137 = load i1, ptr %l99, !tbaa !21
  br i1 %t137, label %bb44, label %bb45
bb44:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [5 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t140, i32 0, i32 2
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l5, !tbaa !29
  br label %bb46
bb45:
  br label %bb65
bb46:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/effects:Effects", ptr %t144, i32 0, i32 22
  %t147 = getelementptr %"compiler/effects:Facts", ptr %t146, i32 0, i32 0
  store i1 true, ptr %t147, !tbaa !21
  %t148 = load ptr, ptr %l5, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Text", ptr %t148, i32 0, i32 0
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  store { i64, ptr } %t151, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t153 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  store i64 %t155, ptr %l8, !tbaa !24
  br label %bb47
bb47:
  %t157 = load i64, ptr %l7, !tbaa !24
  %t158 = load i64, ptr %l8, !tbaa !24
  %t161 = icmp slt i64 %t157, %t158
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb48, label %bb49
bb48:
  br label %bb64
bb49:
  br label %bb50
bb50:
  %t165 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t165, ptr %l113, !tbaa !27
  %t166 = load i64, ptr %l7, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr ptr, ptr %t169, i64 %t166
  %t171 = load ptr, ptr %t170, !tbaa !39
  store ptr %t171, ptr %l9, !tbaa !29
  %t173 = load ptr, ptr %l9, !tbaa !29
  store ptr %t173, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t174 = load ptr, ptr %l116, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb51, label %bb52
bb51:
  %t177 = load ptr, ptr %l116, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 2}
  %t180 = icmp eq i64 %t178, 1
  store i1 %t180, ptr %l117, !tbaa !21
  br label %bb52
bb52:
  %t181 = load i1, ptr %l117, !tbaa !21
  br i1 %t181, label %bb53, label %bb54
bb53:
  %t182 = load ptr, ptr %l9, !tbaa !29
  %t184 = getelementptr { i64, [2 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { ptr }, ptr %t184, i32 0, i32 0
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l10, !tbaa !29
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t188, ptr %t189)
  br label %bb56
bb56:
  br label %bb62
bb57:
  br i1 true, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_check_failed(ptr @olang_loc_696967e496dd013f_3ccf8d6ad66b978b)
  unreachable
bb62:
  br label %bb63
bb63:
  %t193 = load i64, ptr %l7, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l7, !tbaa !24
  br label %bb47
bb64:
  br label %bb198
bb65:
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t198 = load ptr, ptr %l127, !tbaa !29
  %t199 = icmp ne ptr %t198, null
  br i1 %t199, label %bb66, label %bb67
bb66:
  %t201 = load ptr, ptr %l127, !tbaa !29
  %t202 = load i64, ptr %t201, !range !{i64 0, i64 18}
  %t204 = icmp eq i64 %t202, 8
  store i1 %t204, ptr %l128, !tbaa !21
  br label %bb67
bb67:
  %t205 = load i1, ptr %l128, !tbaa !21
  br i1 %t205, label %bb68, label %bb69
bb68:
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [5 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t208, i32 0, i32 2
  %t210 = load ptr, ptr %t209
  store ptr %t210, ptr %l11, !tbaa !29
  br label %bb70
bb69:
  br label %bb73
bb70:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/effects:Effects", ptr %t212, i32 0, i32 22
  %t215 = getelementptr %"compiler/effects:Facts", ptr %t214, i32 0, i32 0
  store i1 true, ptr %t215, !tbaa !21
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load ptr, ptr %l11, !tbaa !29
  %t219 = getelementptr %"compiler/typed:Collect", ptr %t217, i32 0, i32 0
  %t220 = load ptr, ptr %t219, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t216, ptr %t220)
  br label %bb71
bb71:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load ptr, ptr %l11, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Collect", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t223, ptr %t227)
  br label %bb72
bb72:
  br label %bb198
bb73:
  %t231 = load ptr, ptr %l1, !tbaa !29
  store ptr %t231, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t232 = load ptr, ptr %l141, !tbaa !29
  %t233 = icmp ne ptr %t232, null
  br i1 %t233, label %bb74, label %bb75
bb74:
  %t235 = load ptr, ptr %l141, !tbaa !29
  %t236 = load i64, ptr %t235, !range !{i64 0, i64 18}
  %t238 = icmp eq i64 %t236, 6
  store i1 %t238, ptr %l142, !tbaa !21
  br label %bb75
bb75:
  %t239 = load i1, ptr %l142, !tbaa !21
  br i1 %t239, label %bb76, label %bb77
bb76:
  %t240 = load ptr, ptr %l1, !tbaa !29
  %t242 = getelementptr { i64, [5 x i64] }, ptr %t240, i32 0, i32 1
  %t243 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t242, i32 0, i32 1
  %t244 = load i32, ptr %t243
  store i32 %t244, ptr %l12, !tbaa !23
  %t246 = load ptr, ptr %l1, !tbaa !29
  %t248 = getelementptr { i64, [5 x i64] }, ptr %t246, i32 0, i32 1
  %t249 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t248, i32 0, i32 2
  %t250 = load ptr, ptr %t249
  store ptr %t250, ptr %l13, !tbaa !29
  br label %bb78
bb77:
  br label %bb83
bb78:
  %t252 = load i32, ptr %l12, !tbaa !23
  %t253 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t256 = icmp eq i32 %t252, %t253
  br i1 %t256, label %bb79, label %bb80
bb79:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/effects:Effects", ptr %t258, i32 0, i32 22
  %t261 = getelementptr %"compiler/effects:Facts", ptr %t260, i32 0, i32 15
  store i1 true, ptr %t261, !tbaa !21
  br label %bb81
bb80:
  br label %bb81
bb81:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecall(ptr %v0, ptr %v1, ptr %t262, ptr %t263)
  br label %bb82
bb82:
  br label %bb198
bb83:
  %t266 = load ptr, ptr %l1, !tbaa !29
  store ptr %t266, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t267 = load ptr, ptr %l155, !tbaa !29
  %t268 = icmp ne ptr %t267, null
  br i1 %t268, label %bb84, label %bb85
bb84:
  %t270 = load ptr, ptr %l155, !tbaa !29
  %t271 = load i64, ptr %t270, !range !{i64 0, i64 18}
  %t273 = icmp eq i64 %t271, 7
  store i1 %t273, ptr %l156, !tbaa !21
  br label %bb85
bb85:
  %t274 = load i1, ptr %l156, !tbaa !21
  br i1 %t274, label %bb86, label %bb87
bb86:
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr { i64, [5 x i64] }, ptr %t275, i32 0, i32 1
  %t278 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t277, i32 0, i32 2
  %t279 = load ptr, ptr %t278
  store ptr %t279, ptr %l14, !tbaa !29
  br label %bb88
bb87:
  br label %bb100
bb88:
  %t281 = load ptr, ptr %l14, !tbaa !29
  %t283 = getelementptr %"compiler/typed:Make", ptr %t281, i32 0, i32 4
  %t284 = load i32, ptr %t283, !tbaa !23
  %t286 = sext i32 %t284 to i64
  %t288 = icmp sge i64 %t286, 0
  br i1 %t288, label %bb89, label %bb90
bb89:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/effects:Effects", ptr %t290, i32 0, i32 22
  %t293 = getelementptr %"compiler/effects:Facts", ptr %t292, i32 0, i32 0
  store i1 true, ptr %t293, !tbaa !21
  br label %bb91
bb90:
  br label %bb91
bb91:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l14, !tbaa !29
  %t297 = getelementptr %"compiler/typed:Make", ptr %t295, i32 0, i32 3
  %t298 = load ptr, ptr %t297, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t294, ptr %t298)
  br label %bb92
bb92:
  %t301 = load ptr, ptr %l14, !tbaa !29
  %t303 = getelementptr %"compiler/typed:Make", ptr %t301, i32 0, i32 2
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t306 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t306, 0
  store i64 %t308, ptr %l17, !tbaa !24
  br label %bb93
bb93:
  %t310 = load i64, ptr %l16, !tbaa !24
  %t311 = load i64, ptr %l17, !tbaa !24
  %t314 = icmp slt i64 %t310, %t311
  %t316 = xor i1 %t314, true
  br i1 %t316, label %bb94, label %bb95
bb94:
  br label %bb99
bb95:
  br label %bb96
bb96:
  %t318 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t318, ptr %l177, !tbaa !27
  %t319 = load i64, ptr %l16, !tbaa !24
  %t321 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr ptr, ptr %t322, i64 %t319
  %t324 = load ptr, ptr %t323, !tbaa !39
  %t326 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t326, ptr %t324)
  br label %bb97
bb97:
  br label %bb98
bb98:
  %t331 = load i64, ptr %l16, !tbaa !24
  %t333 = add i64 %t331, 1
  store i64 %t333, ptr %l16, !tbaa !24
  br label %bb93
bb99:
  br label %bb198
bb100:
  %t335 = load ptr, ptr %l1, !tbaa !29
  store ptr %t335, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t336 = load ptr, ptr %l185, !tbaa !29
  %t337 = icmp ne ptr %t336, null
  br i1 %t337, label %bb101, label %bb102
bb101:
  %t339 = load ptr, ptr %l185, !tbaa !29
  %t340 = load i64, ptr %t339, !range !{i64 0, i64 18}
  %t342 = icmp eq i64 %t340, 9
  store i1 %t342, ptr %l186, !tbaa !21
  br label %bb102
bb102:
  %t343 = load i1, ptr %l186, !tbaa !21
  br i1 %t343, label %bb103, label %bb104
bb103:
  %t344 = load ptr, ptr %l1, !tbaa !29
  %t346 = getelementptr { i64, [5 x i64] }, ptr %t344, i32 0, i32 1
  %t347 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t346, i32 0, i32 2
  %t348 = load i32, ptr %t347, !range !{i32 0, i32 52}
  store i32 %t348, ptr %l19
  %t350 = load ptr, ptr %l1, !tbaa !29
  %t352 = getelementptr { i64, [5 x i64] }, ptr %t350, i32 0, i32 1
  %t353 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t352, i32 0, i32 4
  %t354 = load { i64, ptr }, ptr %t353
  store { i64, ptr } %t354, ptr %l20, !tbaa !27
  br label %bb105
bb104:
  br label %bb107
bb105:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t358 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eprim(ptr %v0, ptr %v1, ptr %t356, i32 %t357, { i64, ptr } %t358)
  br label %bb106
bb106:
  br label %bb198
bb107:
  %t362 = load ptr, ptr %l1, !tbaa !29
  store ptr %t362, ptr %l196, !tbaa !29
  store i1 false, ptr %l197, !tbaa !21
  %t363 = load ptr, ptr %l196, !tbaa !29
  %t364 = icmp ne ptr %t363, null
  br i1 %t364, label %bb108, label %bb109
bb108:
  %t366 = load ptr, ptr %l196, !tbaa !29
  %t367 = load i64, ptr %t366, !range !{i64 0, i64 18}
  %t369 = icmp eq i64 %t367, 10
  store i1 %t369, ptr %l197, !tbaa !21
  br label %bb109
bb109:
  %t370 = load i1, ptr %l197, !tbaa !21
  br i1 %t370, label %bb110, label %bb111
bb110:
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [5 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t373, i32 0, i32 2
  %t375 = load ptr, ptr %t374
  store ptr %t375, ptr %l21, !tbaa !29
  br label %bb112
bb111:
  br label %bb116
bb112:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l21, !tbaa !29
  %t380 = getelementptr %"compiler/typed:Slice", ptr %t378, i32 0, i32 0
  %t381 = load ptr, ptr %t380, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %t377, ptr %t381, i1 false)
  br label %bb113
bb113:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load ptr, ptr %l21, !tbaa !29
  %t387 = getelementptr %"compiler/typed:Slice", ptr %t385, i32 0, i32 1
  %t388 = load ptr, ptr %t387, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t384, ptr %t388)
  br label %bb114
bb114:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load ptr, ptr %l21, !tbaa !29
  %t395 = getelementptr %"compiler/typed:Slice", ptr %t393, i32 0, i32 2
  %t396 = load ptr, ptr %t395, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t392, ptr %t396)
  br label %bb115
bb115:
  br label %bb198
bb116:
  %t400 = load ptr, ptr %l1, !tbaa !29
  store ptr %t400, ptr %l213, !tbaa !29
  store i1 false, ptr %l214, !tbaa !21
  %t401 = load ptr, ptr %l213, !tbaa !29
  %t402 = icmp ne ptr %t401, null
  br i1 %t402, label %bb117, label %bb118
bb117:
  %t404 = load ptr, ptr %l213, !tbaa !29
  %t405 = load i64, ptr %t404, !range !{i64 0, i64 18}
  %t407 = icmp eq i64 %t405, 11
  store i1 %t407, ptr %l214, !tbaa !21
  br label %bb118
bb118:
  %t408 = load i1, ptr %l214, !tbaa !21
  br i1 %t408, label %bb119, label %bb120
bb119:
  %t409 = load ptr, ptr %l1, !tbaa !29
  %t411 = getelementptr { i64, [5 x i64] }, ptr %t409, i32 0, i32 1
  %t412 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t411, i32 0, i32 2
  %t413 = load ptr, ptr %t412
  store ptr %t413, ptr %l22, !tbaa !29
  br label %bb121
bb120:
  br label %bb125
bb121:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load ptr, ptr %l22, !tbaa !29
  %t418 = getelementptr %"compiler/typed:Cond", ptr %t416, i32 0, i32 0
  %t419 = load ptr, ptr %t418, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t415, ptr %t419)
  br label %bb122
bb122:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load ptr, ptr %l22, !tbaa !29
  %t426 = getelementptr %"compiler/typed:Cond", ptr %t424, i32 0, i32 1
  %t427 = load ptr, ptr %t426, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t423, ptr %t427)
  br label %bb123
bb123:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load ptr, ptr %l22, !tbaa !29
  %t433 = getelementptr %"compiler/typed:Cond", ptr %t431, i32 0, i32 2
  %t434 = load ptr, ptr %t433, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t430, ptr %t434)
  br label %bb124
bb124:
  br label %bb198
bb125:
  %t438 = load ptr, ptr %l1, !tbaa !29
  store ptr %t438, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t439 = load ptr, ptr %l230, !tbaa !29
  %t440 = icmp ne ptr %t439, null
  br i1 %t440, label %bb126, label %bb127
bb126:
  %t442 = load ptr, ptr %l230, !tbaa !29
  %t443 = load i64, ptr %t442, !range !{i64 0, i64 18}
  %t445 = icmp eq i64 %t443, 12
  store i1 %t445, ptr %l231, !tbaa !21
  br label %bb127
bb127:
  %t446 = load i1, ptr %l231, !tbaa !21
  br i1 %t446, label %bb128, label %bb129
bb128:
  %t447 = load ptr, ptr %l1, !tbaa !29
  %t449 = getelementptr { i64, [5 x i64] }, ptr %t447, i32 0, i32 1
  %t450 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t449, i32 0, i32 2
  %t451 = load ptr, ptr %t450
  store ptr %t451, ptr %l23, !tbaa !29
  br label %bb130
bb129:
  br label %bb139
bb130:
  %t453 = load ptr, ptr %l23, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Seq", ptr %t453, i32 0, i32 0
  %t456 = load { i64, ptr }, ptr %t455, !tbaa !27
  store { i64, ptr } %t456, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t458 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t460 = extractvalue { i64, ptr } %t458, 0
  store i64 %t460, ptr %l26, !tbaa !24
  br label %bb131
bb131:
  %t462 = load i64, ptr %l25, !tbaa !24
  %t463 = load i64, ptr %l26, !tbaa !24
  %t466 = icmp slt i64 %t462, %t463
  %t468 = xor i1 %t466, true
  br i1 %t468, label %bb132, label %bb133
bb132:
  br label %bb137
bb133:
  br label %bb134
bb134:
  %t470 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t470, ptr %l244, !tbaa !27
  %t471 = load i64, ptr %l25, !tbaa !24
  %t473 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = getelementptr ptr, ptr %t474, i64 %t471
  %t476 = load ptr, ptr %t475, !tbaa !39
  %t478 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %t478, ptr %t476)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t482 = load i64, ptr %l25, !tbaa !24
  %t484 = add i64 %t482, 1
  store i64 %t484, ptr %l25, !tbaa !24
  br label %bb131
bb137:
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t487 = load ptr, ptr %l23, !tbaa !29
  %t489 = getelementptr %"compiler/typed:Seq", ptr %t487, i32 0, i32 1
  %t490 = load ptr, ptr %t489, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t486, ptr %t490)
  br label %bb138
bb138:
  br label %bb198
bb139:
  %t493 = load ptr, ptr %l1, !tbaa !29
  store ptr %t493, ptr %l254, !tbaa !29
  store i1 false, ptr %l255, !tbaa !21
  %t494 = load ptr, ptr %l254, !tbaa !29
  %t495 = icmp ne ptr %t494, null
  br i1 %t495, label %bb140, label %bb141
bb140:
  %t497 = load ptr, ptr %l254, !tbaa !29
  %t498 = load i64, ptr %t497, !range !{i64 0, i64 18}
  %t500 = icmp eq i64 %t498, 13
  store i1 %t500, ptr %l255, !tbaa !21
  br label %bb141
bb141:
  %t501 = load i1, ptr %l255, !tbaa !21
  br i1 %t501, label %bb142, label %bb143
bb142:
  %t502 = load ptr, ptr %l1, !tbaa !29
  %t504 = getelementptr { i64, [5 x i64] }, ptr %t502, i32 0, i32 1
  %t505 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t504, i32 0, i32 2
  %t506 = load ptr, ptr %t505
  store ptr %t506, ptr %l28, !tbaa !29
  br label %bb144
bb143:
  br label %bb166
bb144:
  %t508 = load ptr, ptr %l28, !tbaa !29
  %t510 = getelementptr %"compiler/typed:Match", ptr %t508, i32 0, i32 0
  %t511 = load { i64, ptr }, ptr %t510, !tbaa !27
  store { i64, ptr } %t511, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t513 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t513, 0
  store i64 %t515, ptr %l31, !tbaa !24
  br label %bb145
bb145:
  %t517 = load i64, ptr %l30, !tbaa !24
  %t518 = load i64, ptr %l31, !tbaa !24
  %t521 = icmp slt i64 %t517, %t518
  %t523 = xor i1 %t521, true
  br i1 %t523, label %bb146, label %bb147
bb146:
  br label %bb151
bb147:
  br label %bb148
bb148:
  %t525 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t525, ptr %l268, !tbaa !27
  %t526 = load i64, ptr %l30, !tbaa !24
  %t528 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t529 = load ptr, ptr %t528, !tbaa !27
  %t530 = getelementptr ptr, ptr %t529, i64 %t526
  %t531 = load ptr, ptr %t530, !tbaa !39
  %t533 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %t533, ptr %t531)
  br label %bb149
bb149:
  br label %bb150
bb150:
  %t537 = load i64, ptr %l30, !tbaa !24
  %t539 = add i64 %t537, 1
  store i64 %t539, ptr %l30, !tbaa !24
  br label %bb145
bb151:
  %t541 = load ptr, ptr %l28, !tbaa !29
  %t543 = getelementptr %"compiler/typed:Match", ptr %t541, i32 0, i32 1
  %t544 = load { i64, ptr }, ptr %t543, !tbaa !27
  store { i64, ptr } %t544, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t546 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t548 = extractvalue { i64, ptr } %t546, 0
  store i64 %t548, ptr %l35, !tbaa !24
  br label %bb152
bb152:
  %t550 = load i64, ptr %l34, !tbaa !24
  %t551 = load i64, ptr %l35, !tbaa !24
  %t554 = icmp slt i64 %t550, %t551
  %t556 = xor i1 %t554, true
  br i1 %t556, label %bb153, label %bb154
bb153:
  br label %bb158
bb154:
  br label %bb155
bb155:
  %t558 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t558, ptr %l283, !tbaa !27
  %t559 = load i64, ptr %l34, !tbaa !24
  %t561 = getelementptr { i64, ptr }, ptr %l283, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !27
  %t563 = getelementptr ptr, ptr %t562, i64 %t559
  %t564 = load ptr, ptr %t563, !tbaa !39
  %t566 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2earm(ptr %v0, ptr %v1, ptr %t566, ptr %t564)
  br label %bb156
bb156:
  br label %bb157
bb157:
  %t570 = load i64, ptr %l34, !tbaa !24
  %t572 = add i64 %t570, 1
  store i64 %t572, ptr %l34, !tbaa !24
  br label %bb152
bb158:
  %t574 = load ptr, ptr %l28, !tbaa !29
  %t576 = getelementptr %"compiler/typed:Match", ptr %t574, i32 0, i32 2
  %t577 = load ptr, ptr %t576, !tbaa !29
  %t579 = icmp eq ptr %t577, null
  %t581 = xor i1 %t579, true
  br i1 %t581, label %bb159, label %bb160
bb159:
  %t583 = load ptr, ptr %l0, !tbaa !29
  store ptr %t583, ptr %l294, !tbaa !29
  %t584 = load ptr, ptr %l28, !tbaa !29
  %t586 = getelementptr %"compiler/typed:Match", ptr %t584, i32 0, i32 2
  %t587 = load ptr, ptr %t586, !tbaa !29
  %t589 = icmp eq ptr %t587, null
  br i1 %t589, label %bb161, label %bb162
bb160:
  br label %bb165
bb161:
  call void @__olang_check_failed(ptr @olang_loc_97fbcd283fc57d27_f3da2d8a892755b3)
  unreachable
bb162:
  br label %bb163
bb163:
  %t591 = load ptr, ptr %l28, !tbaa !29
  %t593 = getelementptr %"compiler/typed:Match", ptr %t591, i32 0, i32 2
  %t594 = load ptr, ptr %t593, !tbaa !29
  %t595 = load ptr, ptr %l294, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2earm(ptr %v0, ptr %v1, ptr %t595, ptr %t594)
  br label %bb164
bb164:
  br label %bb165
bb165:
  br label %bb198
bb166:
  %t597 = load ptr, ptr %l1, !tbaa !29
  store ptr %t597, ptr %l300, !tbaa !29
  store i1 false, ptr %l301, !tbaa !21
  %t598 = load ptr, ptr %l300, !tbaa !29
  %t599 = icmp ne ptr %t598, null
  br i1 %t599, label %bb167, label %bb168
bb167:
  %t601 = load ptr, ptr %l300, !tbaa !29
  %t602 = load i64, ptr %t601, !range !{i64 0, i64 18}
  %t604 = icmp eq i64 %t602, 14
  store i1 %t604, ptr %l301, !tbaa !21
  br label %bb168
bb168:
  %t605 = load i1, ptr %l301, !tbaa !21
  br i1 %t605, label %bb169, label %bb170
bb169:
  %t606 = load ptr, ptr %l1, !tbaa !29
  %t608 = getelementptr { i64, [5 x i64] }, ptr %t606, i32 0, i32 1
  %t609 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t608, i32 0, i32 2
  %t610 = load ptr, ptr %t609
  store ptr %t610, ptr %l37, !tbaa !29
  br label %bb171
bb170:
  br label %bb183
bb171:
  %t612 = load ptr, ptr %l37, !tbaa !29
  %t614 = getelementptr %"compiler/typed:Try", ptr %t612, i32 0, i32 2
  %t615 = load i1, ptr %t614, !tbaa !21
  br i1 %t615, label %bb172, label %bb173
bb172:
  %t617 = load ptr, ptr %l0, !tbaa !29
  %t619 = getelementptr %"compiler/effects:Effects", ptr %t617, i32 0, i32 22
  %t620 = getelementptr %"compiler/effects:Facts", ptr %t619, i32 0, i32 15
  store i1 true, ptr %t620, !tbaa !21
  br label %bb174
bb173:
  br label %bb174
bb174:
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t622 = load ptr, ptr %l37, !tbaa !29
  %t624 = getelementptr %"compiler/typed:Try", ptr %t622, i32 0, i32 0
  %t625 = load ptr, ptr %t624, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t621, ptr %t625)
  br label %bb175
bb175:
  %t628 = load ptr, ptr %l37, !tbaa !29
  %t630 = getelementptr %"compiler/typed:Try", ptr %t628, i32 0, i32 1
  %t631 = load { i64, ptr }, ptr %t630, !tbaa !27
  store { i64, ptr } %t631, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t633 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t635 = extractvalue { i64, ptr } %t633, 0
  store i64 %t635, ptr %l40, !tbaa !24
  br label %bb176
bb176:
  %t637 = load i64, ptr %l39, !tbaa !24
  %t638 = load i64, ptr %l40, !tbaa !24
  %t641 = icmp slt i64 %t637, %t638
  %t643 = xor i1 %t641, true
  br i1 %t643, label %bb177, label %bb178
bb177:
  br label %bb182
bb178:
  br label %bb179
bb179:
  %t645 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t645, ptr %l320, !tbaa !27
  %t646 = load i64, ptr %l39, !tbaa !24
  %t648 = getelementptr { i64, ptr }, ptr %l320, i32 0, i32 1
  %t649 = load ptr, ptr %t648, !tbaa !27
  %t650 = getelementptr ptr, ptr %t649, i64 %t646
  %t651 = load ptr, ptr %t650, !tbaa !39
  %t653 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclause(ptr %v0, ptr %v1, ptr %t653, ptr %t651)
  br label %bb180
bb180:
  br label %bb181
bb181:
  %t657 = load i64, ptr %l39, !tbaa !24
  %t659 = add i64 %t657, 1
  store i64 %t659, ptr %l39, !tbaa !24
  br label %bb176
bb182:
  br label %bb198
bb183:
  %t661 = load ptr, ptr %l1, !tbaa !29
  store ptr %t661, ptr %l327, !tbaa !29
  store i1 false, ptr %l328, !tbaa !21
  %t662 = load ptr, ptr %l327, !tbaa !29
  %t663 = icmp ne ptr %t662, null
  br i1 %t663, label %bb184, label %bb185
bb184:
  %t665 = load ptr, ptr %l327, !tbaa !29
  %t666 = load i64, ptr %t665, !range !{i64 0, i64 18}
  %t668 = icmp eq i64 %t666, 15
  store i1 %t668, ptr %l328, !tbaa !21
  br label %bb185
bb185:
  %t669 = load i1, ptr %l328, !tbaa !21
  br i1 %t669, label %bb186, label %bb187
bb186:
  %t670 = load ptr, ptr %l1, !tbaa !29
  %t672 = getelementptr { i64, [5 x i64] }, ptr %t670, i32 0, i32 1
  %t673 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t672, i32 0, i32 2
  %t674 = load ptr, ptr %t673
  store ptr %t674, ptr %l42, !tbaa !29
  br label %bb188
bb187:
  br label %bb190
bb188:
  %t676 = load ptr, ptr %l0, !tbaa !29
  %t677 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efnVal(ptr %v0, ptr %v1, ptr %t676, ptr %t677)
  br label %bb189
bb189:
  br label %bb198
bb190:
  %t680 = load ptr, ptr %l1, !tbaa !29
  store ptr %t680, ptr %l335, !tbaa !29
  store i1 false, ptr %l336, !tbaa !21
  %t681 = load ptr, ptr %l335, !tbaa !29
  %t682 = icmp ne ptr %t681, null
  br i1 %t682, label %bb191, label %bb192
bb191:
  %t684 = load ptr, ptr %l335, !tbaa !29
  %t685 = load i64, ptr %t684, !range !{i64 0, i64 18}
  %t687 = icmp eq i64 %t685, 17
  store i1 %t687, ptr %l336, !tbaa !21
  br label %bb192
bb192:
  %t688 = load i1, ptr %l336, !tbaa !21
  br i1 %t688, label %bb193, label %bb194
bb193:
  %t689 = load ptr, ptr %l1, !tbaa !29
  %t691 = getelementptr { i64, [5 x i64] }, ptr %t689, i32 0, i32 1
  %t692 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t691, i32 0, i32 2
  %t693 = load ptr, ptr %t692
  store ptr %t693, ptr %l43, !tbaa !29
  br label %bb195
bb194:
  br label %bb197
bb195:
  %t695 = load ptr, ptr %l0, !tbaa !29
  %t696 = load ptr, ptr %l43, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t695, ptr %t696)
  br label %bb196
bb196:
  br label %bb198
bb197:
  call void @__olang_check_failed(ptr @olang_loc_261689b2925f7f5_26a5fe8340cfcde1)
  unreachable
bb198:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca %"compiler/effects:root"
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l40 = alloca i64
  %l41 = alloca ptr
  %l47 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 3
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store %"compiler/effects:root" %t35, ptr %l19
  br label %bb10
bb10:
  %t36 = getelementptr %"compiler/effects:root", ptr %l19, i32 0, i32 0
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
bb11:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 17
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t58 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %t54, ptr %t55)
  store i64 %t58, ptr %l29
  br label %bb17
bb17:
  %t59 = load i64, ptr %l29, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
bb18:
  %t60 = load ptr, ptr %l1, !tbaa !29
  store ptr %t60, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t61 = load ptr, ptr %l30, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb19, label %bb20
bb19:
  %t64 = load ptr, ptr %l30, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 18}
  %t67 = icmp eq i64 %t65, 12
  store i1 %t67, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t68 = load i1, ptr %l31, !tbaa !21
  br i1 %t68, label %bb21, label %bb22
bb21:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [5 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l4, !tbaa !29
  br label %bb23
bb22:
  br label %bb31
bb23:
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Seq", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l41, !tbaa !29
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Seq", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = icmp eq ptr %t88, null
  br i1 %t90, label %bb26, label %bb27
bb25:
  store i64 -1, ptr %l40, !tbaa !24
  br label %bb30
bb26:
  call void @__olang_check_failed(ptr @olang_loc_b6aab166389be830_fe1a1964ddaa5424)
  unreachable
bb27:
  br label %bb28
bb28:
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Seq", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load ptr, ptr %l41, !tbaa !29
  %t98 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %t96, ptr %t95)
  store i64 %t98, ptr %l47
  br label %bb29
bb29:
  %t99 = load i64, ptr %l47, !tbaa !24
  store i64 %t99, ptr %l40, !tbaa !24
  br label %bb30
bb30:
  %t100 = load i64, ptr %l40, !tbaa !24
  store i64 %t100, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i64 -1, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_28b83159130c3f56_5f8d6e7786c968a)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efinish(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/effects:part"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/effects:pend"
  %l26 = alloca i64
  %l28 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l45 = alloca ptr
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca %"compiler/effects:part"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 32
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2eLen_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l14
  br label %bb2
bb2:
  %t9 = load i64, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/effects:pend" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2eAt_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/effects:pend" %t19, ptr %l19
  br label %bb6
bb6:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store ptr %t20, ptr %lp3
  %t21 = load %"compiler/effects:pend", ptr %l19
  %t22 = load ptr, ptr %lp3
  store %"compiler/effects:pend" %t21, ptr %t22
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %lp3
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresolve(ptr %v0, ptr %v0, ptr %t23, ptr %t24)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb1
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/effects:Effects", ptr %t31, i32 0, i32 37
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l26
  br label %bb10
bb10:
  %t36 = load i64, ptr %l26, !tbaa !24
  %t37 = icmp sgt i64 %t36, 0
  br i1 %t37, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Effects", ptr %t39, i32 0, i32 38
  %t42 = load i1, ptr %t41, !tbaa !21
  store i1 %t42, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l28, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutsJudged(ptr %v0, ptr %t45)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/effects:Effects", ptr %t47, i32 0, i32 40
  %t50 = load i1, ptr %t49, !tbaa !21
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/effects:Effects", ptr %t54, i32 0, i32 43
  store i1 true, ptr %t56, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/effects:Effects", ptr %t57, i32 0, i32 41
  store ptr %t59, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb21
bb21:
  %t61 = load i64, ptr %l5, !tbaa !24
  store i64 %t61, ptr %l38, !tbaa !24
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l40
  br label %bb22
bb22:
  %t65 = load i64, ptr %l38, !tbaa !24
  %t66 = load i64, ptr %l40, !tbaa !24
  %t67 = icmp slt i64 %t65, %t66
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb23, label %bb24
bb23:
  br label %bb45
bb24:
  br label %bb25
bb25:
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l45
  br label %bb26
bb26:
  %t76 = load ptr, ptr %l45, !tbaa !29
  store ptr %t76, ptr %l6, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/effects:Effects", ptr %t77, i32 0, i32 33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t79)
  br label %bb27
bb27:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v0, ptr %t81, ptr %t82, i64 0)
  br label %bb28
bb28:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/effects:Effects", ptr %t86, i32 0, i32 33
  store ptr %t88, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t90 = load i64, ptr %l8, !tbaa !24
  store i64 %t90, ptr %l53, !tbaa !24
  %t91 = load ptr, ptr %l7, !tbaa !29
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l55
  br label %bb30
bb30:
  %t94 = load i64, ptr %l53, !tbaa !24
  %t95 = load i64, ptr %l55, !tbaa !24
  %t96 = icmp slt i64 %t94, %t95
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb31, label %bb32
bb31:
  br label %bb43
bb32:
  br label %bb33
bb33:
  %t100 = load ptr, ptr %l7, !tbaa !29
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t100, i64 %t101)
  store %"compiler/effects:part" %t104, ptr %l60
  br label %bb34
bb34:
  %t105 = load %"compiler/effects:part", ptr %l60
  store %"compiler/effects:part" %t105, ptr %l9
  %t106 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t111 = icmp eq i64 %t107, %t108
  br i1 %t111, label %bb35, label %bb36
bb35:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/effects:Effects", ptr %t113, i32 0, i32 42
  %t116 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 1
  %t117 = load i64, ptr %t116, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t115, i64 %t117)
  br label %bb37
bb36:
  %t120 = getelementptr %"compiler/effects:part", ptr %l9, i32 0, i32 0
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  %t125 = icmp ne i64 %t121, %t122
  br i1 %t125, label %bb38, label %bb39
bb37:
  br label %bb41
bb38:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/effects:Effects", ptr %t127, i32 0, i32 43
  store i1 false, ptr %t129, !tbaa !21
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t130 = load i64, ptr %l8, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l8, !tbaa !24
  br label %bb29
bb43:
  br label %bb44
bb44:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l5, !tbaa !24
  br label %bb21
bb45:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:part" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efnPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/effects:part"
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i32
  %l18 = alloca %"compiler/effects:part"
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i32
  %l32 = alloca %"compiler/effects:part"
  %l33 = alloca ptr
  %l34 = alloca i1
  %l39 = alloca i64
  %l41 = alloca i64
  %l43 = alloca i32
  %l44 = alloca %"compiler/effects:part"
  %rv = alloca %"compiler/effects:part"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  store i64 %t16, ptr %l13, !tbaa !24
  %t17 = load i32, ptr %l3, !tbaa !23
  %t19 = sext i32 %t17 to i64
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t20)
  store i32 %t22, ptr %l17
  br label %bb6
bb6:
  %t23 = load i64, ptr %l13, !tbaa !24
  %t24 = load i64, ptr %l15, !tbaa !24
  %t25 = load i32, ptr %l17, !tbaa !23
  %t26 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v3, ptr %v3, i64 %t23, i64 %t24, i32 %t25, ptr null)
  store %"compiler/effects:part" %t26, ptr %l18
  br label %bb7
bb7:
  %t27 = load %"compiler/effects:part", ptr %l18
  store %"compiler/effects:part" %t27, ptr %l6
  br label %bb25
bb8:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t29 = load ptr, ptr %l19, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 3}
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t36 = load i1, ptr %l20, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l4, !tbaa !23
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t43 = load i64, ptr @G_2ecompiler_2feffects_2ePartLambda, !tbaa !24
  store i64 %t43, ptr %l25, !tbaa !24
  %t44 = load i32, ptr %l4, !tbaa !23
  %t46 = sext i32 %t44 to i64
  store i64 %t46, ptr %l27, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t47)
  store i32 %t49, ptr %l29
  br label %bb14
bb14:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = load i64, ptr %l25, !tbaa !24
  %t53 = load i64, ptr %l27, !tbaa !24
  %t54 = load i32, ptr %l29, !tbaa !23
  %t56 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v2, ptr %v3, i64 %t52, i64 %t53, i32 %t54, ptr %t50)
  store %"compiler/effects:part" %t56, ptr %l32
  br label %bb15
bb15:
  %t57 = load %"compiler/effects:part", ptr %l32
  store %"compiler/effects:part" %t57, ptr %l6
  br label %bb25
bb16:
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t62 = load ptr, ptr %l33, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 3}
  %t65 = icmp eq i64 %t63, 2
  store i1 %t65, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t66 = load i1, ptr %l34, !tbaa !21
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { i32, ptr, i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  store i32 %t71, ptr %l5, !tbaa !23
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t73 = load i64, ptr @G_2ecompiler_2feffects_2ePartAdapter, !tbaa !24
  store i64 %t73, ptr %l39, !tbaa !24
  %t74 = load i32, ptr %l5, !tbaa !23
  %t76 = sext i32 %t74 to i64
  store i64 %t76, ptr %l41, !tbaa !24
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t77)
  store i32 %t79, ptr %l43
  br label %bb22
bb22:
  %t80 = load i64, ptr %l39, !tbaa !24
  %t81 = load i64, ptr %l41, !tbaa !24
  %t82 = load i32, ptr %l43, !tbaa !23
  %t83 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v3, ptr %v3, i64 %t80, i64 %t81, i32 %t82, ptr null)
  store %"compiler/effects:part" %t83, ptr %l44
  br label %bb23
bb23:
  %t84 = load %"compiler/effects:part", ptr %l44
  store %"compiler/effects:part" %t84, ptr %l6
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_e33fbd58e0454875_653468874e31cf21)
  unreachable
bb25:
  %t85 = load %"compiler/effects:part", ptr %l6
  store %"compiler/effects:part" %t85, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:part", ptr %rv
  ret %"compiler/effects:part" %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efnVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l38 = alloca { i64, ptr }
  %l49 = alloca i64
  %l62 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i64
  %l79 = alloca i64
  %l82 = alloca %"compiler/effects:pend"
  %l85 = alloca ptr
  %l86 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t2 = load ptr, ptr %l15, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l15, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l16, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb47
bb6:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t11 = load ptr, ptr %l19, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l19, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 3}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l20, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t21, i32 0, i32 0
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l2, !tbaa !23
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t27, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  br label %bb11
bb10:
  br label %bb38
bb11:
  %t31 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/effects:Effects", ptr %t37, i32 0, i32 22
  %t40 = getelementptr %"compiler/effects:Facts", ptr %t39, i32 0, i32 0
  store i1 true, ptr %t40, !tbaa !21
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t41, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t55, ptr %l38, !tbaa !27
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Capture", ptr %t61, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t63, ptr %t67)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l5, !tbaa !24
  br label %bb15
bb21:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/effects:Effects", ptr %t75, i32 0, i32 23
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t77)
  store i64 %t79, ptr %l49
  br label %bb22
bb22:
  %t80 = load i64, ptr %l49, !tbaa !24
  store i64 %t80, ptr %l8, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/effects:Effects", ptr %t81, i32 0, i32 23
  %t84 = load i32, ptr %l2, !tbaa !23
  %t86 = sext i32 %t84 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t83, i64 %t86)
  br label %bb23
bb23:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/effects:Effects", ptr %t89, i32 0, i32 39
  store i1 true, ptr %t91, !tbaa !21
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t92, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  store i64 %t96, ptr %l11, !tbaa !24
  br label %bb24
bb24:
  %t98 = load i64, ptr %l10, !tbaa !24
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb25, label %bb26
bb25:
  br label %bb37
bb26:
  br label %bb27
bb27:
  %t106 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t106, ptr %l62, !tbaa !27
  %t107 = load i64, ptr %l10, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr ptr, ptr %t110, i64 %t107
  %t112 = load ptr, ptr %t111, !tbaa !39
  store ptr %t112, ptr %l12, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l65, !tbaa !29
  %t115 = load ptr, ptr %l12, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Capture", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t118)
  store i32 %t120, ptr %l68
  br label %bb28
bb28:
  %t121 = load ptr, ptr %l65, !tbaa !29
  %t122 = load i32, ptr %l68, !tbaa !23
  %t123 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t121, i32 %t122)
  store i1 %t123, ptr %l69
  br label %bb29
bb29:
  %t124 = load i1, ptr %l69, !tbaa !21
  br i1 %t124, label %bb30, label %bb31
bb30:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/effects:Effects", ptr %t125, i32 0, i32 32
  store ptr %t127, ptr %l71, !tbaa !29
  %t128 = load i64, ptr %l8, !tbaa !24
  store i64 %t128, ptr %l72, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l2, !tbaa !23
  %t132 = sext i32 %t130 to i64
  %t133 = load ptr, ptr %l12, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Capture", ptr %t133, i32 0, i32 0
  %t136 = load i32, ptr %t135, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t142 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecaptureSlot(ptr %v0, ptr %t129, i64 %t132, i64 %t138)
  store i64 %t142, ptr %l79
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t143 = load ptr, ptr %l12, !tbaa !29
  %t145 = getelementptr %"compiler/typed:Capture", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i64, ptr %l72, !tbaa !24
  %t148 = load i64, ptr %l79, !tbaa !24
  %t150 = call %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v1, ptr %v0, i64 %t147, i64 %t148, ptr %t146)
  store %"compiler/effects:pend" %t150, ptr %l82
  br label %bb33
bb33:
  %t151 = load ptr, ptr %l71, !tbaa !29
  %t152 = load %"compiler/effects:pend", ptr %l82
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v0, ptr %t151, %"compiler/effects:pend" %t152)
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t153 = load i64, ptr %l10, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l10, !tbaa !24
  br label %bb24
bb37:
  br label %bb47
bb38:
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t158 = load ptr, ptr %l85, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb39, label %bb40
bb39:
  %t161 = load ptr, ptr %l85, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 3}
  %t164 = icmp eq i64 %t162, 2
  store i1 %t164, ptr %l86, !tbaa !21
  br label %bb40
bb40:
  %t165 = load i1, ptr %l86, !tbaa !21
  br i1 %t165, label %bb41, label %bb42
bb41:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { i32, ptr, i32 }, ptr %t168, i32 0, i32 0
  %t170 = load i32, ptr %t169
  store i32 %t170, ptr %l13, !tbaa !23
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { i32, ptr, i32 }, ptr %t174, i32 0, i32 1
  %t176 = load ptr, ptr %t175
  store ptr %t176, ptr %l14, !tbaa !29
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/effects:Effects", ptr %t178, i32 0, i32 39
  store i1 true, ptr %t180, !tbaa !21
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/effects:Effects", ptr %t181, i32 0, i32 22
  %t184 = getelementptr %"compiler/effects:Facts", ptr %t183, i32 0, i32 0
  store i1 true, ptr %t184, !tbaa !21
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t185, ptr %t186)
  br label %bb44
bb44:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/effects:Effects", ptr %t190, i32 0, i32 23
  %t193 = load i32, ptr %l13, !tbaa !23
  %t195 = sext i32 %t193 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t192, i64 %t195)
  br label %bb45
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d8634726df7208f7_383307572af5b0b3)
  unreachable
bb47:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l48 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb39
bb6:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t29 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t25, ptr %t26)
  store i1 %t29, ptr %l19
  br label %bb12
bb12:
  %t30 = load i1, ptr %l19, !tbaa !21
  store i1 %t30, ptr %l6, !tbaa !21
  br label %bb39
bb13:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 4
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb15
bb15:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Elem", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t53 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t46, ptr %t50)
  store i1 %t53, ptr %l29
  br label %bb19
bb19:
  %t54 = load i1, ptr %l29, !tbaa !21
  store i1 %t54, ptr %l6, !tbaa !21
  br label %bb39
bb20:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l30, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 5
  store i1 %t62, ptr %l31, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l31, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Payload", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t70, ptr %t74)
  store i1 %t77, ptr %l39
  br label %bb26
bb26:
  %t78 = load i1, ptr %l39, !tbaa !21
  store i1 %t78, ptr %l6, !tbaa !21
  br label %bb39
bb27:
  %t79 = load ptr, ptr %l1, !tbaa !29
  store ptr %t79, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t80 = load ptr, ptr %l40, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb28, label %bb29
bb28:
  %t83 = load ptr, ptr %l40, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 8}
  %t86 = icmp eq i64 %t84, 2
  store i1 %t86, ptr %l41, !tbaa !21
  br label %bb29
bb29:
  %t87 = load i1, ptr %l41, !tbaa !21
  br i1 %t87, label %bb30, label %bb31
bb30:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t90, i32 0, i32 2
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l5, !tbaa !29
  %t98 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargGlobal(ptr %v0, ptr %v1, ptr %t94, ptr %t95)
  store i1 %t98, ptr %l48
  br label %bb33
bb33:
  %t99 = load i1, ptr %l48, !tbaa !21
  store i1 %t99, ptr %l6, !tbaa !21
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_994d18a8c74b163b_1372ae1002f7258f)
  unreachable
bb39:
  %t100 = load i1, ptr %l6, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2egrow(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca %"compiler/effects:Facts"
  %l27 = alloca ptr
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca ptr
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca ptr
  %l34 = alloca %"compiler/effects:Facts"
  %l57 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l85 = alloca ptr
  %l99 = alloca i64
  %l105 = alloca i64
  %l109 = alloca i64
  %l112 = alloca i64
  %l135 = alloca ptr
  %l140 = alloca ptr
  %l146 = alloca ptr
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 14
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l17
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l20
  br label %bb3
bb3:
  %t11 = load i64, ptr %l17, !tbaa !24
  %t12 = load i64, ptr %l20, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb24
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/effects:Effects", ptr %t17, i32 0, i32 3
  store ptr %t19, ptr %l24, !tbaa !29
  %t20 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s1)
  store %"compiler/effects:Facts" %t20, ptr %l25
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l24, !tbaa !29
  %t22 = load %"compiler/effects:Facts", ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ePush_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t21, %"compiler/effects:Facts" %t22)
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/effects:Effects", ptr %t23, i32 0, i32 4
  store ptr %t25, ptr %l27, !tbaa !29
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l28
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l27, !tbaa !29
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %s1, ptr %t27, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28)
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/effects:Effects", ptr %t29, i32 0, i32 5
  store ptr %t31, ptr %l30, !tbaa !29
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l31
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l30, !tbaa !29
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H691765597a1d0d55e0f84306543aa643(ptr %v0, ptr %s1, ptr %t33, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34)
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 8
  store ptr %t37, ptr %l33, !tbaa !29
  %t38 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s1)
  store %"compiler/effects:Facts" %t38, ptr %l34
  br label %bb13
bb13:
  %t39 = load ptr, ptr %l33, !tbaa !29
  %t40 = load %"compiler/effects:Facts", ptr %l34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ePush_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t39, %"compiler/effects:Facts" %t40)
  br label %bb14
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/effects:Effects", ptr %t41, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t43, i64 0)
  br label %bb15
bb15:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/effects:Effects", ptr %t45, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t47, i64 -1)
  br label %bb16
bb16:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/effects:Effects", ptr %t49, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t51, i64 -1)
  br label %bb17
bb17:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/effects:Effects", ptr %t53, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t55, i1 false)
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/effects:Effects", ptr %t57, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t59, i64 0)
  br label %bb19
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/effects:Effects", ptr %t61, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t63, i64 -1)
  br label %bb20
bb20:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/effects:Effects", ptr %t65, i32 0, i32 18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t67, i64 0)
  br label %bb21
bb21:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/effects:Effects", ptr %t69, i32 0, i32 19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t71, i1 false)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  br label %bb23
bb23:
  br label %bb1
bb24:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/effects:Effects", ptr %t73, i32 0, i32 49
  %t76 = load i1, ptr %t75, !tbaa !21
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb25, label %bb26
bb25:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/effects:Effects", ptr %t80, i32 0, i32 49
  store i1 true, ptr %t82, !tbaa !21
  store i64 0, ptr %l1, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/effects:Effects", ptr %t83, i32 0, i32 1
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l57
  br label %bb27
bb26:
  br label %bb45
bb27:
  %t88 = load i64, ptr %l57, !tbaa !24
  store i64 %t88, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l1, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb28, label %bb29
bb28:
  %t95 = load i64, ptr %l3, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb33
bb30:
  %t99 = load i64, ptr %l2, !tbaa !24
  %t100 = load i64, ptr %l1, !tbaa !24
  %t103 = sub i64 %t99, %t100
  %t104 = load i64, ptr %l3, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = sub i64 %t107, 1
  %t110 = load i64, ptr %l3, !tbaa !24
  %t113 = sdiv i64 %t109, %t110
  store i64 %t113, ptr %l64, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb32
bb32:
  %t115 = load i64, ptr %l64, !tbaa !24
  store i64 %t115, ptr %l61, !tbaa !24
  br label %bb33
bb33:
  %t116 = load i64, ptr %l61, !tbaa !24
  store i64 %t116, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb34
bb34:
  %t117 = load i64, ptr %l5, !tbaa !24
  %t118 = load i64, ptr %l4, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb35, label %bb36
bb35:
  br label %bb44
bb36:
  br label %bb37
bb37:
  %t125 = load i64, ptr %l1, !tbaa !24
  %t126 = load i64, ptr %l5, !tbaa !24
  %t127 = load i64, ptr %l3, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  store i64 %t133, ptr %l6, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/effects:Effects", ptr %t135, i32 0, i32 1
  %t138 = load i64, ptr %l6, !tbaa !24
  %t141 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t137, i64 %t138)
  store ptr %t141, ptr %l85
  br label %bb38
bb38:
  %t142 = load ptr, ptr %l85, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Body", ptr %t142, i32 0, i32 1
  %t145 = load { i64, [2 x i64] }, ptr %t144
  store { i64, [2 x i64] } %t145, ptr %l7
  %t147 = load { i64, [2 x i64] }, ptr %l7
  %t149 = extractvalue { i64, [2 x i64] } %t147, 0
  %t150 = icmp eq i64 %t149, 3
  br i1 %t150, label %bb39, label %bb40
bb39:
  %t152 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t153 = getelementptr { i32 }, ptr %t152, i32 0, i32 0
  %t154 = load i32, ptr %t153
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/effects:Effects", ptr %t156, i32 0, i32 51
  %t160 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t158, i32 %t154, i64 %t160)
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t164 = load i64, ptr %l5, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l5, !tbaa !24
  br label %bb34
bb44:
  br label %bb45
bb45:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/effects:Effects", ptr %t168, i32 0, i32 15
  %t172 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l99
  br label %bb46
bb46:
  %t173 = load i64, ptr %l99, !tbaa !24
  %t174 = icmp eq i64 %t173, 0
  br i1 %t174, label %bb47, label %bb48
bb47:
  store i64 0, ptr %l9, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/effects:Effects", ptr %t176, i32 0, i32 0
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = getelementptr %"compiler/generic:Program", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/load:Loader", ptr %t182, i32 0, i32 10
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l105
  br label %bb49
bb48:
  br label %bb68
bb49:
  %t187 = load i64, ptr %l105, !tbaa !24
  store i64 %t187, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t188 = load i64, ptr %l10, !tbaa !24
  %t189 = load i64, ptr %l9, !tbaa !24
  %t192 = icmp sgt i64 %t188, %t189
  br i1 %t192, label %bb50, label %bb51
bb50:
  %t194 = load i64, ptr %l11, !tbaa !24
  %t196 = icmp sgt i64 %t194, 0
  br i1 %t196, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb55
bb52:
  %t198 = load i64, ptr %l10, !tbaa !24
  %t199 = load i64, ptr %l9, !tbaa !24
  %t202 = sub i64 %t198, %t199
  %t203 = load i64, ptr %l11, !tbaa !24
  %t206 = add i64 %t202, %t203
  %t208 = sub i64 %t206, 1
  %t209 = load i64, ptr %l11, !tbaa !24
  %t212 = sdiv i64 %t208, %t209
  store i64 %t212, ptr %l112, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb54
bb54:
  %t214 = load i64, ptr %l112, !tbaa !24
  store i64 %t214, ptr %l109, !tbaa !24
  br label %bb55
bb55:
  %t215 = load i64, ptr %l109, !tbaa !24
  store i64 %t215, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb56
bb56:
  %t216 = load i64, ptr %l13, !tbaa !24
  %t217 = load i64, ptr %l12, !tbaa !24
  %t220 = icmp slt i64 %t216, %t217
  %t222 = xor i1 %t220, true
  br i1 %t222, label %bb57, label %bb58
bb57:
  br label %bb67
bb58:
  br label %bb59
bb59:
  %t224 = load i64, ptr %l9, !tbaa !24
  %t225 = load i64, ptr %l13, !tbaa !24
  %t226 = load i64, ptr %l11, !tbaa !24
  %t229 = mul i64 %t225, %t226
  %t232 = add i64 %t224, %t229
  store i64 %t232, ptr %l14, !tbaa !24
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/effects:Effects", ptr %t234, i32 0, i32 0
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 0
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = getelementptr %"compiler/load:Loader", ptr %t240, i32 0, i32 10
  %t243 = load i64, ptr %l14, !tbaa !24
  %t246 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t242, i64 %t243)
  store ptr %t246, ptr %l135
  br label %bb60
bb60:
  %t247 = load ptr, ptr %l135, !tbaa !29
  %t249 = getelementptr %"compiler/load:Module", ptr %t247, i32 0, i32 4
  %t250 = load i64, ptr %t249, !tbaa !24
  %t252 = icmp sge i64 %t250, 0
  br i1 %t252, label %bb61, label %bb62
bb61:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/effects:Effects", ptr %t254, i32 0, i32 15
  store ptr %t256, ptr %l140, !tbaa !29
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/effects:Effects", ptr %t257, i32 0, i32 0
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t262 = getelementptr %"compiler/generic:Program", ptr %t260, i32 0, i32 0
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t265 = getelementptr %"compiler/load:Loader", ptr %t263, i32 0, i32 10
  %t266 = load i64, ptr %l14, !tbaa !24
  %t269 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t265, i64 %t266)
  store ptr %t269, ptr %l146
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t270 = load ptr, ptr %l146, !tbaa !29
  %t272 = getelementptr %"compiler/load:Module", ptr %t270, i32 0, i32 4
  %t273 = load i64, ptr %t272, !tbaa !24
  %t274 = load i64, ptr %l14, !tbaa !24
  %t275 = load ptr, ptr %l140, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t275, i64 %t273, i64 %t274)
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t278 = load i64, ptr %l13, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l13, !tbaa !24
  br label %bb56
bb67:
  br label %bb68
bb68:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeType(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/effects:Facts"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/effects:Facts"
  %l22 = alloca i64
  %l25 = alloca i64
  %l43 = alloca i64
  %l49 = alloca i1
  %l52 = alloca { i64, ptr }
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store i32 %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t6, i32 %t7)
  store %"compiler/effects:Facts" %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load %"compiler/effects:Facts", ptr %l16
  store %"compiler/effects:Facts" %t11, ptr %l4
  %t12 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 14
  store i1 false, ptr %t12, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  %t13 = load [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames
  store i64 8, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l25, !tbaa !24
  store i64 %t42, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l22, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l10, !tbaa !24
  %t62 = load i64, ptr %l10, !tbaa !24
  store i64 %t62, ptr %l43, !tbaa !24
  %t63 = load i64, ptr %l43, !tbaa !24
  %t64 = load i64, ptr %l43, !tbaa !24
  %t65 = shl i64 1, %t64
  store i64 %t65, ptr %l11, !tbaa !24
  %t68 = load i64, ptr %l11, !tbaa !24
  %t71 = and i64 %a2, %t68
  %t73 = icmp eq i64 %t71, 0
  br i1 %t73, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb16
bb13:
  %t75 = load i64, ptr %l11, !tbaa !24
  %t78 = call { i64, ptr } @compiler_2feffects_2eBreaks(ptr %s0, ptr %s2, ptr %l4, i64 %t75)
  store { i64, ptr } %t78, ptr %l52
  br label %bb14
bb14:
  %t79 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  %t81 = extractvalue { i64, ptr } %t79, 1
  %t82 = mul i64 %t80, 1
  %t83 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t82)
  call void @llvm.memcpy.p0.p0.i64(ptr %t83, ptr %t81, i64 %t82, i1 false)
  %t84 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t85, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t87, ptr %l54
  br label %bb15
bb15:
  %t88 = load i1, ptr %l54, !tbaa !21
  store i1 %t88, ptr %l49, !tbaa !21
  br label %bb16
bb16:
  %t89 = load i1, ptr %l49, !tbaa !21
  br i1 %t89, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t90 = load ptr, ptr %l3, !tbaa !29
  store ptr %t90, ptr %l55, !tbaa !29
  %t91 = ptrtoint ptr %v1 to i64
  store i64 %t91, ptr %l56, !tbaa !24
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t92, label %bb20, label %bb21
bb20:
  %t94 = call ptr @__olang_region_make(ptr %v1)
  %t95 = ptrtoint ptr %t94 to i64
  store i64 %t95, ptr %l56, !tbaa !24
  br label %bb21
bb21:
  %t96 = load i64, ptr %l10, !tbaa !24
  %t98 = getelementptr [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames, i64 0, i64 %t96
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !37
  store { i64, ptr } %t99, ptr %l60, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  store i64 %t102, ptr %l61, !tbaa !24
  %t103 = load i64, ptr %l61, !tbaa !24
  %t104 = mul i64 %t103, 1
  %t105 = load i64, ptr %l56
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = call ptr @__olang_scope_alloc(ptr %t106, i64 %t104)
  %t108 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l62, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l61, !tbaa !24
  %t115 = mul i64 %t114, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t111, ptr %t113, i64 %t115, i1 false)
  %t116 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t116, label %bb22, label %bb23
bb22:
  %t118 = load i64, ptr %l56
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = load { i64, ptr }, ptr %l62
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = icmp eq ptr %t124, %t119
  call void @__olang_region_settle(ptr %t119, i1 %t125)
  br label %bb23
bb23:
  %t126 = load ptr, ptr %l55, !tbaa !29
  %t127 = getelementptr %"compiler/effects:Verdict", ptr %t126, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l64, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t130 = load ptr, ptr %l55, !tbaa !29
  %t131 = getelementptr %"compiler/effects:Verdict", ptr %t130, i32 0, i32 0
  store { i64, ptr } %t129, ptr %t131, !tbaa !27
  %t132 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t132, label %bb24, label %bb25
bb24:
  %t134 = load { i64, ptr }, ptr %l64
  %t135 = extractvalue { i64, ptr } %t134, 1
  call void @__olang_region_release(ptr %t135)
  store { i64, ptr } zeroinitializer, ptr %l64
  br label %bb25
bb25:
  %t136 = load ptr, ptr %l3, !tbaa !29
  %t138 = getelementptr %"compiler/effects:Verdict", ptr %t136, i32 0, i32 2
  store i1 false, ptr %t138, !tbaa !21
  %t139 = load ptr, ptr %l3, !tbaa !29
  %t140 = load i32, ptr %l1, !tbaa !23
  %t143 = getelementptr %"compiler/effects:Verdict", ptr %t139, i32 0, i32 3
  store i32 %t140, ptr %t143, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  %t144 = load i64, ptr %l9, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l9, !tbaa !24
  br label %bb8
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2emutGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/effects:pair"
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/names:Entry"
  %l11 = alloca %"compiler/effects:pair"
  %l15 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i32
  %l24 = alloca i1
  %l25 = alloca i64
  %l30 = alloca i64
  %l37 = alloca ptr
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca %"compiler/names:Entry"
  %l51 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i32, ptr %l2, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t7 = call %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %s0, i64 %t1, i64 %t4)
  store %"compiler/effects:pair" %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load %"compiler/effects:pair", ptr %l11
  store %"compiler/effects:pair" %t8, ptr %l3
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 16
  %t12 = load %"compiler/effects:pair", ptr %l3
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_H7835af935af759534f3892df019d3666(ptr %v0, ptr %t11, %"compiler/effects:pair" %t12)
  store i1 %t15, ptr %l15
  br label %bb2
bb2:
  %t16 = load i1, ptr %l15, !tbaa !21
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/effects:Effects", ptr %t17, i32 0, i32 16
  %t20 = load %"compiler/effects:pair", ptr %l3
  %t23 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_H5e2f333902255d77192898689554d128(ptr %v0, ptr %t19, %"compiler/effects:pair" %t20)
  %t24 = extractvalue { i32, i1 } %t23, 1
  %t25 = extractvalue { i32, i1 } %t23, 0
  store i32 %t25, ptr %l21
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb6, label %ok.27, !prof !99
ok.27:
  store i1 %t24, ptr %l20
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t28 = load i1, ptr %l20, !tbaa !21
  store i1 %t28, ptr %l16, !tbaa !21
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb9:
  store i1 false, ptr %l4, !tbaa !21
  %t30 = load i64, ptr %l1, !tbaa !24
  %t32 = icmp sge i64 %t30, 0
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load i64, ptr %l1, !tbaa !24
  store i64 %t34, ptr %l25, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/names:Resolver", ptr %t41, i32 0, i32 1
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_H1e7e683fc0332c06b6c705cd46691777(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l30
  br label %bb12
bb11:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb13
bb12:
  %t46 = load i64, ptr %l25, !tbaa !24
  %t47 = load i64, ptr %l30, !tbaa !24
  %t48 = icmp slt i64 %t46, %t47
  store i1 %t48, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t50 = load i1, ptr %l24, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/effects:Effects", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/names:Resolver", ptr %t57, i32 0, i32 1
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l37
  br label %bb16
bb15:
  br label %bb31
bb16:
  %t64 = load ptr, ptr %l37, !tbaa !29
  %t66 = getelementptr %"compiler/names:Table", ptr %t64, i32 0, i32 0
  store ptr %t66, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l6, !tbaa !24
  store i64 %t68, ptr %l40, !tbaa !24
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l42
  br label %bb18
bb18:
  %t72 = load i64, ptr %l40, !tbaa !24
  %t73 = load i64, ptr %l42, !tbaa !24
  %t74 = icmp slt i64 %t72, %t73
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb19, label %bb20
bb19:
  br label %bb30
bb20:
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store %"compiler/names:Entry" %t82, ptr %l47
  br label %bb22
bb22:
  %t83 = load %"compiler/names:Entry", ptr %l47
  store %"compiler/names:Entry" %t83, ptr %l7
  %t84 = getelementptr %"compiler/names:Entry", ptr %l7, i32 0, i32 0
  %t85 = load i32, ptr %t84, !tbaa !23
  %t86 = load i32, ptr %l2, !tbaa !23
  %t89 = icmp eq i32 %t85, %t86
  br i1 %t89, label %bb23, label %bb24
bb23:
  %t91 = getelementptr %"compiler/names:Entry", ptr %l7, i32 0, i32 3
  %t92 = load i1, ptr %t91, !tbaa !21
  store i1 %t92, ptr %l51, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb25
bb25:
  %t94 = load i1, ptr %l51, !tbaa !21
  br i1 %t94, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l6, !tbaa !24
  br label %bb17
bb30:
  br label %bb31
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/effects:Effects", ptr %t99, i32 0, i32 16
  %t102 = load %"compiler/effects:pair", ptr %l3
  %t103 = load i1, ptr %l4, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_Ha1bc2f35f7d195c0ca99c509224bae7a(ptr %v0, ptr %t101, %"compiler/effects:pair" %t102, i1 %t103)
  br label %bb32
bb32:
  %t107 = load i1, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t107, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2enamed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/effects:Facts"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %l17 = alloca %"compiler/effects:Facts"
  %l21 = alloca %"compiler/effects:Facts"
  %l25 = alloca i64
  %l28 = alloca i64
  %l48 = alloca i1
  %l49 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca %"compiler/effects:Facts"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 9
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i64, ptr %l12, !tbaa !24
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 8
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t13, i64 %t14)
  store %"compiler/effects:Facts" %t17, ptr %l17
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"compiler/effects:Facts", ptr %l17
  store %"compiler/effects:Facts" %t18, ptr %rv
  br label %ret
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/effects:Effects", ptr %t19, i32 0, i32 8
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t21, i64 %t22)
  store %"compiler/effects:Facts" %t25, ptr %l21
  br label %bb6
bb6:
  %t26 = load %"compiler/effects:Facts", ptr %l21
  store %"compiler/effects:Facts" %t26, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  store i64 63, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb12
bb9:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l3, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l28, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l28, !tbaa !24
  store i64 %t53, ptr %l25, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l25, !tbaa !24
  store i64 %t54, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb14, label %bb15
bb14:
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l5, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l8, !tbaa !24
  %t73 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 21
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = call i1 @compiler_2feffects_2ehasBit(i64 %t74, i64 %t75)
  store i1 %t78, ptr %l48
  br label %bb17
bb17:
  %t79 = load i1, ptr %l48, !tbaa !21
  br i1 %t79, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l2, ptr %l49, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/effects:Effects", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  store ptr %t85, ptr %l52, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l1, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t92 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t86, i64 %t87, i64 %t88)
  store i32 %t92, ptr %l56
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t93 = load ptr, ptr %l52, !tbaa !29
  %t94 = load i32, ptr %l56, !tbaa !23
  %t95 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t93, i32 %t94)
  store %"compiler/effects:Facts" %t95, ptr %l57
  br label %bb21
bb21:
  %t96 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s4, ptr %t96, ptr %l57)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l7, !tbaa !24
  br label %bb13
bb25:
  %t102 = load %"compiler/effects:Facts", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t102, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca %"compiler/effects:root"
  %l11 = alloca i1
  %l12 = alloca i64
  %l17 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/effects:root" %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/effects:root", ptr %l5, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t17 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t13, ptr %t14)
  store i1 %t17, ptr %l11
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  %t19 = load i64, ptr @G_2ecompiler_2feffects_2eoutParam, !tbaa !24
  store i64 %t19, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t21 = load i64, ptr %l12, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 26
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t24, i64 %t25)
  store i1 %t28, ptr %l17
  br label %bb9
bb9:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb13
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Effects", ptr %t30, i32 0, i32 27
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t32, i64 %t33)
  store i1 %t36, ptr %l22
  br label %bb12
bb12:
  %t37 = load i1, ptr %l22, !tbaa !21
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l18, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  store i64 0, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/effects:Effects", ptr %t40, i32 0, i32 38
  store i1 true, ptr %t42, !tbaa !21
  %t43 = load i64, ptr @G_2ecompiler_2feffects_2eoutLocal, !tbaa !24
  %t44 = load i64, ptr %l2, !tbaa !24
  %t47 = sub i64 %t43, %t44
  store i64 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epassWrites(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/effects:link"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l12 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca i1
  %l20 = alloca i64
  %l21 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca %"compiler/effects:link"
  %l40 = alloca i1
  %l41 = alloca i64
  %l44 = alloca i64
  %l46 = alloca i1
  %l50 = alloca i64
  %l54 = alloca i1
  %l55 = alloca i1
  %l59 = alloca i64
  %l65 = alloca %"compiler/effects:Facts"
  %l68 = alloca i1
  %l76 = alloca %"compiler/effects:Facts"
  %l79 = alloca i64
  %l81 = alloca i64
  %l86 = alloca i64
  %l91 = alloca ptr
  %l104 = alloca %"compiler/effects:Facts"
  %l107 = alloca i64
  %l109 = alloca i64
  %l114 = alloca i64
  %l119 = alloca ptr
  %l129 = alloca %"compiler/effects:Facts"
  %l132 = alloca i1
  %l137 = alloca %"compiler/effects:Facts"
  %l138 = alloca i64
  %l140 = alloca i64
  %l145 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hec46674a538af874724ad5c9698b0829(ptr %v0, ptr %s1, ptr %t3, i64 %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l26
  br label %bb1
bb1:
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %s1, ptr %l26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l28
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  %t11 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  store ptr %t11, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l6, !tbaa !24
  store i64 %t13, ptr %l30, !tbaa !24
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eLen_3ccompiler_2feffects_3alink_3e(ptr %s1, ptr %t14)
  store i64 %t16, ptr %l32
  br label %bb4
bb4:
  %t17 = load i64, ptr %l30, !tbaa !24
  %t18 = load i64, ptr %l32, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb74
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = call %"compiler/effects:link" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eAt_3ccompiler_2feffects_3alink_3e(ptr %s1, ptr %t23, i64 %t24)
  store %"compiler/effects:link" %t27, ptr %l37
  br label %bb8
bb8:
  %t28 = load %"compiler/effects:link", ptr %l37
  store %"compiler/effects:link" %t28, ptr %l7
  %t29 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = icmp slt i64 %t30, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb12
bb10:
  %t34 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l41, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t36, i32 0, i32 1
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l44
  br label %bb11
bb11:
  %t41 = load i64, ptr %l41, !tbaa !24
  %t42 = load i64, ptr %l44, !tbaa !24
  %t43 = icmp sge i64 %t41, %t42
  store i1 %t43, ptr %l40, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l40, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb16
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/effects:Effects", ptr %t46, i32 0, i32 14
  %t49 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 0
  %t50 = load i64, ptr %t49, !tbaa !24
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t48, i64 %t50)
  store i64 %t53, ptr %l50
  br label %bb15
bb15:
  %t54 = load i64, ptr %l50, !tbaa !24
  %t55 = icmp slt i64 %t54, 1
  store i1 %t55, ptr %l46, !tbaa !21
  br label %bb16
bb16:
  %t57 = load i1, ptr %l46, !tbaa !21
  br i1 %t57, label %bb17, label %bb18
bb17:
  br label %bb73
bb18:
  br label %bb19
bb19:
  %t59 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 0
  %t60 = load i64, ptr %t59, !tbaa !24
  %t63 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v2, ptr %a3, i64 %t60)
  store i1 %t63, ptr %l54
  br label %bb20
bb20:
  %t64 = load i1, ptr %l54, !tbaa !21
  br i1 %t64, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb24
bb22:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/effects:Effects", ptr %t65, i32 0, i32 14
  %t68 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t69)
  store i64 %t72, ptr %l59
  br label %bb23
bb23:
  %t73 = load i64, ptr %l59, !tbaa !24
  %t74 = icmp eq i64 %t73, 2
  store i1 %t74, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t76 = load i1, ptr %l55, !tbaa !21
  %t77 = xor i1 %t76, true
  br i1 %t77, label %bb25, label %bb26
bb25:
  br label %bb73
bb26:
  br label %bb27
bb27:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/effects:Effects", ptr %t79, i32 0, i32 8
  %t82 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t86 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t81, i64 %t83)
  store %"compiler/effects:Facts" %t86, ptr %l65
  br label %bb28
bb28:
  %t87 = getelementptr %"compiler/effects:Facts", ptr %l65, i32 0, i32 20
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 1
  %t90 = load i64, ptr %t89, !tbaa !24
  %t93 = call i1 @compiler_2feffects_2ehasBit(i64 %t88, i64 %t90)
  store i1 %t93, ptr %l68
  br label %bb29
bb29:
  %t94 = load i1, ptr %l68, !tbaa !21
  %t95 = xor i1 %t94, true
  br i1 %t95, label %bb30, label %bb31
bb30:
  br label %bb73
bb31:
  br label %bb32
bb32:
  %t97 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 2
  %t98 = load i64, ptr %t97, !tbaa !24
  %t99 = load i64, ptr @G_2ecompiler_2feffects_2eglobalParam, !tbaa !24
  %t102 = icmp eq i64 %t98, %t99
  br i1 %t102, label %bb33, label %bb34
bb33:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/effects:Effects", ptr %t104, i32 0, i32 8
  %t107 = load i64, ptr %l1, !tbaa !24
  %t110 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t106, i64 %t107)
  store %"compiler/effects:Facts" %t110, ptr %l76
  br label %bb35
bb34:
  br label %bb48
bb35:
  %t111 = getelementptr %"compiler/effects:Facts", ptr %l76, i32 0, i32 2
  %t112 = load i1, ptr %t111, !tbaa !21
  br i1 %t112, label %bb36, label %bb37
bb36:
  br label %bb73
bb37:
  br label %bb38
bb38:
  %t114 = load ptr, ptr %l2, !tbaa !29
  store ptr %t114, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb39
bb39:
  %t116 = load i64, ptr %l9, !tbaa !24
  store i64 %t116, ptr %l79, !tbaa !24
  %t117 = load ptr, ptr %l8, !tbaa !29
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t117)
  store i64 %t119, ptr %l81
  br label %bb40
bb40:
  %t120 = load i64, ptr %l79, !tbaa !24
  %t121 = load i64, ptr %l81, !tbaa !24
  %t122 = icmp slt i64 %t120, %t121
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb41, label %bb42
bb41:
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t126 = load ptr, ptr %l8, !tbaa !29
  %t127 = load i64, ptr %l9, !tbaa !24
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t126, i64 %t127)
  store i64 %t130, ptr %l86
  br label %bb44
bb44:
  %t131 = load i64, ptr %l86, !tbaa !24
  store i1 true, ptr %l12, !tbaa !21
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/effects:Effects", ptr %t134, i32 0, i32 8
  %t140 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t136, i64 %t131)
  store ptr %t140, ptr %l91
  br label %bb45
bb45:
  %t141 = load ptr, ptr %l91, !tbaa !29
  %t143 = load i1, ptr %l12, !tbaa !21
  %t146 = getelementptr %"compiler/effects:Facts", ptr %t141, i32 0, i32 2
  store i1 %t143, ptr %t146, !tbaa !21
  br label %bb46
bb46:
  %t147 = load i64, ptr %l9, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l9, !tbaa !24
  br label %bb39
bb47:
  %t151 = load i64, ptr %l4, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l4, !tbaa !24
  br label %bb73
bb48:
  %t155 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 2
  %t156 = load i64, ptr %t155, !tbaa !24
  %t157 = load i64, ptr @G_2ecompiler_2feffects_2eoutParam, !tbaa !24
  %t160 = icmp eq i64 %t156, %t157
  br i1 %t160, label %bb49, label %bb50
bb49:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/effects:Effects", ptr %t162, i32 0, i32 8
  %t165 = load i64, ptr %l1, !tbaa !24
  %t168 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t164, i64 %t165)
  store %"compiler/effects:Facts" %t168, ptr %l104
  br label %bb51
bb50:
  br label %bb64
bb51:
  %t169 = getelementptr %"compiler/effects:Facts", ptr %l104, i32 0, i32 16
  %t170 = load i1, ptr %t169, !tbaa !21
  br i1 %t170, label %bb52, label %bb53
bb52:
  br label %bb73
bb53:
  br label %bb54
bb54:
  %t172 = load ptr, ptr %l2, !tbaa !29
  store ptr %t172, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb55
bb55:
  %t174 = load i64, ptr %l15, !tbaa !24
  store i64 %t174, ptr %l107, !tbaa !24
  %t175 = load ptr, ptr %l14, !tbaa !29
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t175)
  store i64 %t177, ptr %l109
  br label %bb56
bb56:
  %t178 = load i64, ptr %l107, !tbaa !24
  %t179 = load i64, ptr %l109, !tbaa !24
  %t180 = icmp slt i64 %t178, %t179
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb57, label %bb58
bb57:
  br label %bb63
bb58:
  br label %bb59
bb59:
  %t184 = load ptr, ptr %l14, !tbaa !29
  %t185 = load i64, ptr %l15, !tbaa !24
  %t188 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t184, i64 %t185)
  store i64 %t188, ptr %l114
  br label %bb60
bb60:
  %t189 = load i64, ptr %l114, !tbaa !24
  store i1 true, ptr %l18, !tbaa !21
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/effects:Effects", ptr %t192, i32 0, i32 8
  %t198 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t194, i64 %t189)
  store ptr %t198, ptr %l119
  br label %bb61
bb61:
  %t199 = load ptr, ptr %l119, !tbaa !29
  %t201 = load i1, ptr %l18, !tbaa !21
  %t204 = getelementptr %"compiler/effects:Facts", ptr %t199, i32 0, i32 16
  store i1 %t201, ptr %t204, !tbaa !21
  br label %bb62
bb62:
  %t205 = load i64, ptr %l15, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l15, !tbaa !24
  br label %bb55
bb63:
  %t209 = load i64, ptr %l4, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l4, !tbaa !24
  br label %bb73
bb64:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/effects:Effects", ptr %t213, i32 0, i32 8
  %t216 = load i64, ptr %l1, !tbaa !24
  %t219 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t215, i64 %t216)
  store %"compiler/effects:Facts" %t219, ptr %l129
  br label %bb65
bb65:
  %t220 = getelementptr %"compiler/effects:Facts", ptr %l129, i32 0, i32 20
  %t221 = load i64, ptr %t220, !tbaa !24
  %t222 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 2
  %t223 = load i64, ptr %t222, !tbaa !24
  %t226 = call i1 @compiler_2feffects_2ehasBit(i64 %t221, i64 %t223)
  store i1 %t226, ptr %l132
  br label %bb66
bb66:
  %t227 = load i1, ptr %l132, !tbaa !21
  br i1 %t227, label %bb67, label %bb68
bb67:
  br label %bb73
bb68:
  br label %bb69
bb69:
  %t228 = load i64, ptr %l1, !tbaa !24
  store i64 %t228, ptr %l20, !tbaa !24
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/effects:Effects", ptr %t230, i32 0, i32 8
  %t233 = load i64, ptr %l1, !tbaa !24
  %t236 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t232, i64 %t233)
  store %"compiler/effects:Facts" %t236, ptr %l137
  br label %bb70
bb70:
  %t237 = getelementptr %"compiler/effects:Facts", ptr %l137, i32 0, i32 20
  %t238 = load i64, ptr %t237, !tbaa !24
  store i64 %t238, ptr %l138, !tbaa !24
  %t239 = getelementptr %"compiler/effects:link", ptr %l7, i32 0, i32 2
  %t240 = load i64, ptr %t239, !tbaa !24
  %t242 = call i64 @compiler_2feffects_2eparamBit(i64 %t240)
  store i64 %t242, ptr %l140
  br label %bb71
bb71:
  %t243 = load i64, ptr %l138, !tbaa !24
  %t244 = load i64, ptr %l140, !tbaa !24
  %t245 = or i64 %t243, %t244
  store i64 %t245, ptr %l21, !tbaa !24
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/effects:Effects", ptr %t247, i32 0, i32 8
  %t250 = load i64, ptr %l20, !tbaa !24
  %t253 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t249, i64 %t250)
  store ptr %t253, ptr %l145
  br label %bb72
bb72:
  %t254 = load ptr, ptr %l145, !tbaa !29
  %t256 = load i64, ptr %l21, !tbaa !24
  %t259 = getelementptr %"compiler/effects:Facts", ptr %t254, i32 0, i32 20
  store i64 %t256, ptr %t259, !tbaa !24
  %t260 = load i64, ptr %l4, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l4, !tbaa !24
  br label %bb73
bb73:
  %t264 = load i64, ptr %l6, !tbaa !24
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l6, !tbaa !24
  br label %bb3
bb74:
  call void @__olang_scope_close(ptr %s1)
  %t268 = load i64, ptr %l4, !tbaa !24
  store i64 %t268, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estore(ptr %v0, ptr %v1, ptr %t3, ptr %t4)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceParts(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceParts(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l28 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l13, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 7
  store i1 %t17, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l14, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb57
bb10:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t20 = load ptr, ptr %l17, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 1
  store i1 %t26, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l18, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t30, i32 0, i32 2
  %t32 = load i64, ptr %t31
  store i64 %t32, ptr %l2, !tbaa !24
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t36, i32 0, i32 3
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l3, !tbaa !23
  br label %bb15
bb14:
  br label %bb20
bb15:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i32, ptr %l3, !tbaa !23
  %t46 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2emutGlobal(ptr %v0, ptr %t40, i64 %t41, i32 %t42)
  store i1 %t46, ptr %l28
  br label %bb16
bb16:
  %t47 = load i1, ptr %l28, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/effects:Effects", ptr %t48, i32 0, i32 22
  %t51 = getelementptr %"compiler/effects:Facts", ptr %t50, i32 0, i32 3
  store i1 true, ptr %t51, !tbaa !21
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb57
bb20:
  %t52 = load ptr, ptr %l1, !tbaa !29
  store ptr %t52, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb21, label %bb22
bb21:
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 8}
  %t59 = icmp eq i64 %t57, 2
  store i1 %t59, ptr %l31, !tbaa !21
  br label %bb22
bb22:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb23, label %bb24
bb23:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t63, i32 0, i32 2
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  br label %bb26
bb26:
  br label %bb57
bb27:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t73 = load ptr, ptr %l39, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb28, label %bb29
bb28:
  %t76 = load ptr, ptr %l39, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 8}
  %t79 = icmp eq i64 %t77, 3
  store i1 %t79, ptr %l40, !tbaa !21
  br label %bb29
bb29:
  %t80 = load i1, ptr %l40, !tbaa !21
  br i1 %t80, label %bb30, label %bb31
bb30:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceParts(ptr %v0, ptr %v1, ptr %t87, ptr %t88)
  br label %bb33
bb33:
  br label %bb57
bb34:
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t92 = load ptr, ptr %l47, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb35, label %bb36
bb35:
  %t95 = load ptr, ptr %l47, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 8}
  %t98 = icmp eq i64 %t96, 4
  store i1 %t98, ptr %l48, !tbaa !21
  br label %bb36
bb36:
  %t99 = load i1, ptr %l48, !tbaa !21
  br i1 %t99, label %bb37, label %bb38
bb37:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr { i64, [4 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t102, i32 0, i32 2
  %t104 = load ptr, ptr %t103
  store ptr %t104, ptr %l6, !tbaa !29
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l6, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Elem", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceParts(ptr %v0, ptr %v1, ptr %t106, ptr %t110)
  br label %bb40
bb40:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Elem", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t113, ptr %t117)
  br label %bb41
bb41:
  br label %bb57
bb42:
  %t121 = load ptr, ptr %l1, !tbaa !29
  store ptr %t121, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t122 = load ptr, ptr %l60, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb43, label %bb44
bb43:
  %t125 = load ptr, ptr %l60, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 8}
  %t128 = icmp eq i64 %t126, 5
  store i1 %t128, ptr %l61, !tbaa !21
  br label %bb44
bb44:
  %t129 = load i1, ptr %l61, !tbaa !21
  br i1 %t129, label %bb45, label %bb46
bb45:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t132, i32 0, i32 2
  %t134 = load ptr, ptr %t133
  store ptr %t134, ptr %l7, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l7, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Payload", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceParts(ptr %v0, ptr %v1, ptr %t136, ptr %t140)
  br label %bb48
bb48:
  br label %bb57
bb49:
  %t143 = load ptr, ptr %l1, !tbaa !29
  store ptr %t143, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t144 = load ptr, ptr %l69, !tbaa !29
  %t145 = icmp ne ptr %t144, null
  br i1 %t145, label %bb50, label %bb51
bb50:
  %t147 = load ptr, ptr %l69, !tbaa !29
  %t148 = load i64, ptr %t147, !range !{i64 0, i64 8}
  %t150 = icmp eq i64 %t148, 6
  store i1 %t150, ptr %l70, !tbaa !21
  br label %bb51
bb51:
  %t151 = load i1, ptr %l70, !tbaa !21
  br i1 %t151, label %bb52, label %bb53
bb52:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t154, i32 0, i32 2
  %t156 = load ptr, ptr %t155
  store ptr %t156, ptr %l8, !tbaa !29
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t158, ptr %t159)
  br label %bb55
bb55:
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_8e774b84f9d07387_321b570aadbfd9f3)
  unreachable
bb57:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/effects:root"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca %"compiler/effects:root"
  %l18 = alloca ptr
  %l19 = alloca i1
  %l26 = alloca %"compiler/effects:root"
  %l27 = alloca ptr
  %l28 = alloca i1
  %l36 = alloca %"compiler/effects:root"
  %l37 = alloca i64
  %l39 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i1
  %l47 = alloca %"compiler/effects:root"
  %l48 = alloca ptr
  %l49 = alloca i1
  %l57 = alloca %"compiler/effects:root"
  %l58 = alloca ptr
  %l59 = alloca i1
  %l66 = alloca i64
  %l68 = alloca %"compiler/effects:root"
  %l69 = alloca %"compiler/effects:root"
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"compiler/effects:root"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t20 = call %"compiler/effects:root" @compiler_2feffects_3aroot_2ector(ptr %s1, i64 %t18, i1 false)
  store %"compiler/effects:root" %t20, ptr %l17
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  %t21 = load %"compiler/effects:root", ptr %l17
  store %"compiler/effects:root" %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t41 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store %"compiler/effects:root" %t41, ptr %l26
  br label %bb13
bb13:
  %t42 = load %"compiler/effects:root", ptr %l26
  store %"compiler/effects:root" %t42, ptr %rv
  br label %ret
bb14:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t44 = load ptr, ptr %l27, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l27, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 4
  store i1 %t50, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l28, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 2
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb27
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Elem", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t65 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t58, ptr %t62)
  store %"compiler/effects:root" %t65, ptr %l36
  br label %bb20
bb20:
  %t66 = load %"compiler/effects:root", ptr %l36
  store %"compiler/effects:root" %t66, ptr %l5
  %t67 = getelementptr %"compiler/effects:root", ptr %l5, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  store i64 %t68, ptr %l37, !tbaa !24
  %t69 = getelementptr %"compiler/effects:root", ptr %l5, i32 0, i32 1
  %t70 = load i1, ptr %t69, !tbaa !21
  br i1 %t70, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb25
bb22:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/effects:Effects", ptr %t72, i32 0, i32 0
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 2
  store ptr %t77, ptr %l42, !tbaa !29
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Elem", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t81)
  store i32 %t83, ptr %l45
  br label %bb23
bb23:
  %t84 = load ptr, ptr %l42, !tbaa !29
  %t85 = load i32, ptr %l45, !tbaa !23
  %t86 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t86, ptr %l46
  br label %bb24
bb24:
  %t87 = load i1, ptr %l46, !tbaa !21
  store i1 %t87, ptr %l39, !tbaa !21
  br label %bb25
bb25:
  %t88 = load i64, ptr %l37, !tbaa !24
  %t89 = load i1, ptr %l39, !tbaa !21
  %t90 = call %"compiler/effects:root" @compiler_2feffects_3aroot_2ector(ptr %s3, i64 %t88, i1 %t89)
  store %"compiler/effects:root" %t90, ptr %l47
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  %t91 = load %"compiler/effects:root", ptr %l47
  store %"compiler/effects:root" %t91, ptr %rv
  br label %ret
bb27:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t93 = load ptr, ptr %l48, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb28, label %bb29
bb28:
  %t96 = load ptr, ptr %l48, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 8}
  %t99 = icmp eq i64 %t97, 5
  store i1 %t99, ptr %l49, !tbaa !21
  br label %bb29
bb29:
  %t100 = load i1, ptr %l49, !tbaa !21
  br i1 %t100, label %bb30, label %bb31
bb30:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l6, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Payload", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t114 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t107, ptr %t111)
  store %"compiler/effects:root" %t114, ptr %l57
  br label %bb33
bb33:
  %t115 = load %"compiler/effects:root", ptr %l57
  store %"compiler/effects:root" %t115, ptr %rv
  br label %ret
bb34:
  %t116 = load ptr, ptr %l1, !tbaa !29
  store ptr %t116, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t117 = load ptr, ptr %l58, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb35, label %bb36
bb35:
  %t120 = load ptr, ptr %l58, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 8}
  %t123 = icmp eq i64 %t121, 2
  store i1 %t123, ptr %l59, !tbaa !21
  br label %bb36
bb36:
  %t124 = load i1, ptr %l59, !tbaa !21
  br i1 %t124, label %bb37, label %bb38
bb37:
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr { i64, [4 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t127, i32 0, i32 2
  %t129 = load ptr, ptr %t128
  store ptr %t129, ptr %l7, !tbaa !29
  br label %bb39
bb38:
  br label %bb42
bb39:
  store %olang.scope zeroinitializer, ptr %s5
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l7, !tbaa !29
  %t135 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %t131, ptr %t132)
  store i64 %t135, ptr %l66
  br label %bb40
bb40:
  %t136 = load i64, ptr %l66, !tbaa !24
  %t139 = call %"compiler/effects:root" @compiler_2feffects_3aroot_2ector(ptr %s5, i64 %t136, i1 true)
  store %"compiler/effects:root" %t139, ptr %l68
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s5)
  %t140 = load %"compiler/effects:root", ptr %l68
  store %"compiler/effects:root" %t140, ptr %rv
  br label %ret
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb47
bb45:
  store %olang.scope zeroinitializer, ptr %s6
  %t141 = call %"compiler/effects:root" @compiler_2feffects_3aroot_2ector(ptr %s6, i64 -1, i1 false)
  store %"compiler/effects:root" %t141, ptr %l69
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  %t142 = load %"compiler/effects:root", ptr %l69
  store %"compiler/effects:root" %t142, ptr %rv
  br label %ret
bb47:
  call void @__olang_check_failed(ptr @olang_loc_def19e55677a13ff_78d59d2dfbb79d83)
  unreachable
ret:
  %rr = load %"compiler/effects:root", ptr %rv
  ret %"compiler/effects:root" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i32
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 7
  %t7 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t7, 1
  %t9 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l6
  br label %bb1
bb1:
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v1, ptr %l6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l9
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l10
  br label %bb5
bb4:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l2
  br label %bb6
bb5:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l2
  br label %bb6
bb6:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2esettle(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/effects:Facts"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/effects:Facts"
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i1
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i1
  %l36 = alloca %"compiler/effects:Facts"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l39 = alloca i64
  %l41 = alloca i64
  %l46 = alloca i64
  %l52 = alloca i64
  %l54 = alloca ptr
  %l58 = alloca i64
  %l60 = alloca i64
  %l65 = alloca i64
  %l66 = alloca ptr
  %l70 = alloca %"compiler/effects:Facts"
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca i64
  %l86 = alloca i64
  %l92 = alloca i1
  %l93 = alloca i64
  %l96 = alloca i64
  %l101 = alloca i64
  %l105 = alloca i1
  %l108 = alloca i1
  %l114 = alloca ptr
  %l118 = alloca %"compiler/effects:Facts"
  %l126 = alloca i64
  %l128 = alloca i64
  %l133 = alloca i64
  %l138 = alloca %"compiler/effects:Facts"
  %l143 = alloca %"compiler/effects:Facts"
  %l152 = alloca i64
  %l154 = alloca i64
  %l159 = alloca i64
  %l160 = alloca i64
  %l165 = alloca i64
  %l169 = alloca i64
  %l177 = alloca i64
  %l179 = alloca i64
  %l184 = alloca i64
  %l186 = alloca ptr
  %l187 = alloca i64
  %l191 = alloca %"compiler/effects:Facts"
  %l193 = alloca ptr
  %l194 = alloca i64
  %l198 = alloca %"compiler/effects:Facts"
  %l200 = alloca i1
  %l204 = alloca i64
  %l206 = alloca i64
  %l211 = alloca i64
  %l214 = alloca i1
  %l218 = alloca i1
  %l219 = alloca i1
  %l222 = alloca i1
  %l229 = alloca i64
  %l231 = alloca i64
  %l236 = alloca i64
  %l242 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t1, ptr %l36
  br label %bb1
bb1:
  %t2 = load %"compiler/effects:Facts", ptr %l36
  store %"compiler/effects:Facts" %t2, ptr %l2
  %t3 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %l37
  br label %bb2
bb2:
  %t4 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l3
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l39, !tbaa !24
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l41
  br label %bb4
bb4:
  %t11 = load i64, ptr %l39, !tbaa !24
  %t12 = load i64, ptr %l41, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l46
  br label %bb8
bb8:
  %t22 = load i64, ptr %l46, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l3, i64 %t22, i1 true)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l5, !tbaa !24
  br label %bb3
bb11:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t30)
  store i64 %t32, ptr %l52
  br label %bb12
bb12:
  %t33 = load i64, ptr %l52, !tbaa !24
  %t34 = icmp sgt i64 %t33, 1
  store i1 %t34, ptr %l7, !tbaa !21
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l54, !tbaa !29
  %t37 = load ptr, ptr %l54, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t37, i32 0, i32 12
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = add i64 %t39, 1
  %t43 = load ptr, ptr %l54, !tbaa !29
  %t44 = getelementptr %"compiler/effects:Effects", ptr %t43, i32 0, i32 12
  store i64 %t41, ptr %t44, !tbaa !24
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t47 = load i64, ptr %l9, !tbaa !24
  store i64 %t47, ptr %l58, !tbaa !24
  %t48 = load ptr, ptr %l8, !tbaa !29
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t48)
  store i64 %t50, ptr %l60
  br label %bb14
bb14:
  %t51 = load i64, ptr %l58, !tbaa !24
  %t52 = load i64, ptr %l60, !tbaa !24
  %t53 = icmp slt i64 %t51, %t52
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb16:
  br label %bb17
bb17:
  %t57 = load ptr, ptr %l8, !tbaa !29
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l65
  br label %bb18
bb18:
  %t62 = load i64, ptr %l65, !tbaa !24
  store i64 %t62, ptr %l10, !tbaa !24
  store ptr %l2, ptr %l66, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/effects:Effects", ptr %t63, i32 0, i32 3
  %t66 = load i64, ptr %l10, !tbaa !24
  %t69 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t65, i64 %t66)
  store %"compiler/effects:Facts" %t69, ptr %l70
  br label %bb19
bb19:
  %t70 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s5, ptr %t70, ptr %l70)
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s6
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/effects:Effects", ptr %t72, i32 0, i32 4
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %s6, ptr %t74, i64 %t75)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l75
  br label %bb21
bb21:
  %t80 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s6, ptr %l75)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l77
  br label %bb22
bb22:
  %t81 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  %t82 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %t82
  store ptr %t82, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t84 = load i64, ptr %l12, !tbaa !24
  store i64 %t84, ptr %l79, !tbaa !24
  %t85 = load ptr, ptr %l11, !tbaa !29
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s6, ptr %t85)
  store i64 %t87, ptr %l81
  br label %bb24
bb24:
  %t88 = load i64, ptr %l79, !tbaa !24
  %t89 = load i64, ptr %l81, !tbaa !24
  %t90 = icmp slt i64 %t88, %t89
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  br label %bb51
bb26:
  br label %bb27
bb27:
  %t94 = load ptr, ptr %l11, !tbaa !29
  %t95 = load i64, ptr %l12, !tbaa !24
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s6, ptr %t94, i64 %t95)
  store i64 %t98, ptr %l86
  br label %bb28
bb28:
  %t99 = load i64, ptr %l86, !tbaa !24
  store i64 %t99, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l13, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = icmp eq i64 %t100, %t101
  br i1 %t104, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t106 = load i64, ptr %l13, !tbaa !24
  %t108 = icmp slt i64 %t106, 0
  br i1 %t108, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb35
bb33:
  %t110 = load i64, ptr %l13, !tbaa !24
  store i64 %t110, ptr %l93, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/effects:Effects", ptr %t111, i32 0, i32 1
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t113)
  store i64 %t115, ptr %l96
  br label %bb34
bb34:
  %t116 = load i64, ptr %l93, !tbaa !24
  %t117 = load i64, ptr %l96, !tbaa !24
  %t118 = icmp sge i64 %t116, %t117
  store i1 %t118, ptr %l92, !tbaa !21
  br label %bb35
bb35:
  %t120 = load i1, ptr %l92, !tbaa !21
  br i1 %t120, label %bb36, label %bb37
bb36:
  %t121 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 13
  store i1 true, ptr %t121, !tbaa !21
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb37:
  br label %bb38
bb38:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/effects:Effects", ptr %t122, i32 0, i32 11
  %t125 = load i64, ptr %l13, !tbaa !24
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t124, i64 %t125)
  store i64 %t128, ptr %l101
  br label %bb39
bb39:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/effects:Effects", ptr %t129, i32 0, i32 12
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i64, ptr %l101, !tbaa !24
  %t135 = icmp eq i64 %t133, %t132
  br i1 %t135, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb43
bb41:
  %t137 = load i64, ptr %l13, !tbaa !24
  %t140 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l3, i64 %t137)
  store i1 %t140, ptr %l108
  br label %bb42
bb42:
  %t141 = load i1, ptr %l108, !tbaa !21
  store i1 %t141, ptr %l105, !tbaa !21
  br label %bb43
bb43:
  %t142 = load i1, ptr %l105, !tbaa !21
  br i1 %t142, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb45:
  br label %bb46
bb46:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/effects:Effects", ptr %t143, i32 0, i32 11
  %t146 = load i64, ptr %l13, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/effects:Effects", ptr %t147, i32 0, i32 12
  %t150 = load i64, ptr %t149, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t145, i64 %t146, i64 %t150)
  br label %bb47
bb47:
  store ptr %l2, ptr %l114, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/effects:Effects", ptr %t154, i32 0, i32 8
  %t157 = load i64, ptr %l13, !tbaa !24
  %t160 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t156, i64 %t157)
  store %"compiler/effects:Facts" %t160, ptr %l118
  br label %bb48
bb48:
  %t161 = load ptr, ptr %l114, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s7, ptr %t161, ptr %l118)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb50:
  %t163 = load i64, ptr %l12, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l12, !tbaa !24
  br label %bb23
bb51:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  %t167 = load i64, ptr %l9, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l9, !tbaa !24
  br label %bb13
bb53:
  %t171 = load i1, ptr %l7, !tbaa !21
  br i1 %t171, label %bb54, label %bb55
bb54:
  %t173 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 7
  store i1 true, ptr %t173, !tbaa !21
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t174 = load ptr, ptr %l1, !tbaa !29
  store ptr %t174, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb57
bb57:
  %t176 = load i64, ptr %l15, !tbaa !24
  store i64 %t176, ptr %l126, !tbaa !24
  %t177 = load ptr, ptr %l14, !tbaa !29
  %t179 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t177)
  store i64 %t179, ptr %l128
  br label %bb58
bb58:
  %t180 = load i64, ptr %l126, !tbaa !24
  %t181 = load i64, ptr %l128, !tbaa !24
  %t182 = icmp slt i64 %t180, %t181
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb59, label %bb60
bb59:
  br label %bb67
bb60:
  br label %bb61
bb61:
  %t186 = load ptr, ptr %l14, !tbaa !29
  %t187 = load i64, ptr %l15, !tbaa !24
  %t190 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t186, i64 %t187)
  store i64 %t190, ptr %l133
  br label %bb62
bb62:
  %t191 = load i64, ptr %l133, !tbaa !24
  store i64 %t191, ptr %l16, !tbaa !24
  %t192 = load %"compiler/effects:Facts", ptr %l2
  store %"compiler/effects:Facts" %t192, ptr %l17
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/effects:Effects", ptr %t194, i32 0, i32 3
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t196, i64 %t197)
  store %"compiler/effects:Facts" %t200, ptr %l138
  br label %bb63
bb63:
  %t201 = getelementptr %"compiler/effects:Facts", ptr %l138, i32 0, i32 20
  %t202 = load i64, ptr %t201, !tbaa !24
  %t204 = getelementptr %"compiler/effects:Facts", ptr %l17, i32 0, i32 20
  store i64 %t202, ptr %t204, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/effects:Effects", ptr %t205, i32 0, i32 3
  %t208 = load i64, ptr %l16, !tbaa !24
  %t211 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t207, i64 %t208)
  store %"compiler/effects:Facts" %t211, ptr %l143
  br label %bb64
bb64:
  %t212 = getelementptr %"compiler/effects:Facts", ptr %l143, i32 0, i32 21
  %t213 = load i64, ptr %t212, !tbaa !24
  %t215 = getelementptr %"compiler/effects:Facts", ptr %l17, i32 0, i32 21
  store i64 %t213, ptr %t215, !tbaa !24
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/effects:Effects", ptr %t216, i32 0, i32 8
  %t219 = load i64, ptr %l16, !tbaa !24
  %t220 = load %"compiler/effects:Facts", ptr %l17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eSetAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t218, i64 %t219, %"compiler/effects:Facts" %t220)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t224 = load i64, ptr %l15, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l15, !tbaa !24
  br label %bb57
bb67:
  br label %bb68
bb68:
  store i64 0, ptr %l18, !tbaa !24
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb69
bb69:
  %t230 = load i64, ptr %l20, !tbaa !24
  store i64 %t230, ptr %l152, !tbaa !24
  %t231 = load ptr, ptr %l19, !tbaa !29
  %t233 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t231)
  store i64 %t233, ptr %l154
  br label %bb70
bb70:
  %t234 = load i64, ptr %l152, !tbaa !24
  %t235 = load i64, ptr %l154, !tbaa !24
  %t236 = icmp slt i64 %t234, %t235
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb71, label %bb72
bb71:
  br label %bb78
bb72:
  br label %bb73
bb73:
  %t240 = load ptr, ptr %l19, !tbaa !29
  %t241 = load i64, ptr %l20, !tbaa !24
  %t244 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t240, i64 %t241)
  store i64 %t244, ptr %l159
  br label %bb74
bb74:
  %t245 = load i64, ptr %l159, !tbaa !24
  store i64 %t245, ptr %l21, !tbaa !24
  %t246 = load i64, ptr %l18, !tbaa !24
  store i64 %t246, ptr %l160, !tbaa !24
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i64, ptr %l21, !tbaa !24
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t254 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epassWrites(ptr %v0, ptr %v1, ptr %s0, ptr %t247, i64 %t248, ptr %t249, ptr %l3)
  store i64 %t254, ptr %l165
  br label %bb75
bb75:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l21, !tbaa !24
  %t260 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epassCalls(ptr %v0, ptr %s0, ptr %t255, i64 %t256, ptr %l3)
  store i64 %t260, ptr %l169
  br label %bb76
bb76:
  %t261 = load i64, ptr %l165, !tbaa !24
  %t262 = load i64, ptr %l169, !tbaa !24
  %t263 = add i64 %t261, %t262
  %t264 = load i64, ptr %l160, !tbaa !24
  %t266 = add i64 %t264, %t263
  store i64 %t266, ptr %l18, !tbaa !24
  br label %bb77
bb77:
  %t268 = load i64, ptr %l20, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l20, !tbaa !24
  br label %bb69
bb78:
  %t272 = load i64, ptr %l18, !tbaa !24
  %t274 = icmp eq i64 %t272, 0
  br i1 %t274, label %bb79, label %bb80
bb79:
  br label %bb83
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  br label %bb68
bb83:
  store i1 false, ptr %l22, !tbaa !21
  store i1 false, ptr %l23, !tbaa !21
  %t276 = load ptr, ptr %l1, !tbaa !29
  store ptr %t276, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb84
bb84:
  %t278 = load i64, ptr %l25, !tbaa !24
  store i64 %t278, ptr %l177, !tbaa !24
  %t279 = load ptr, ptr %l24, !tbaa !29
  %t281 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t279)
  store i64 %t281, ptr %l179
  br label %bb85
bb85:
  %t282 = load i64, ptr %l177, !tbaa !24
  %t283 = load i64, ptr %l179, !tbaa !24
  %t284 = icmp slt i64 %t282, %t283
  %t286 = xor i1 %t284, true
  br i1 %t286, label %bb86, label %bb87
bb86:
  br label %bb98
bb87:
  br label %bb88
bb88:
  %t288 = load ptr, ptr %l24, !tbaa !29
  %t289 = load i64, ptr %l25, !tbaa !24
  %t292 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t288, i64 %t289)
  store i64 %t292, ptr %l184
  br label %bb89
bb89:
  %t293 = load i64, ptr %l184, !tbaa !24
  store i64 %t293, ptr %l26, !tbaa !24
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/effects:Effects", ptr %t294, i32 0, i32 9
  store ptr %t296, ptr %l186, !tbaa !29
  %t297 = load i64, ptr %l26, !tbaa !24
  store i64 %t297, ptr %l187, !tbaa !24
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/effects:Effects", ptr %t298, i32 0, i32 8
  %t301 = load i64, ptr %l26, !tbaa !24
  %t304 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t300, i64 %t301)
  store %"compiler/effects:Facts" %t304, ptr %l191
  br label %bb90
bb90:
  %t305 = getelementptr %"compiler/effects:Facts", ptr %l191, i32 0, i32 21
  %t306 = load i64, ptr %t305, !tbaa !24
  %t307 = load ptr, ptr %l186, !tbaa !29
  %t308 = load i64, ptr %l187, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t307, i64 %t308, i64 %t306)
  br label %bb91
bb91:
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l193, !tbaa !29
  %t311 = load i64, ptr %l26, !tbaa !24
  store i64 %t311, ptr %l194, !tbaa !24
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/effects:Effects", ptr %t312, i32 0, i32 8
  %t315 = load i64, ptr %l26, !tbaa !24
  %t318 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t314, i64 %t315)
  store %"compiler/effects:Facts" %t318, ptr %l198
  br label %bb92
bb92:
  %t319 = getelementptr %"compiler/effects:Facts", ptr %l198, i32 0, i32 20
  %t320 = load i64, ptr %t319, !tbaa !24
  %t321 = load ptr, ptr %l193, !tbaa !29
  %t322 = load i64, ptr %l194, !tbaa !24
  %t324 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritesUnowned(ptr %v0, ptr %t321, i64 %t322, i64 %t320)
  store i1 %t324, ptr %l200
  br label %bb93
bb93:
  %t325 = load i1, ptr %l200, !tbaa !21
  br i1 %t325, label %bb94, label %bb95
bb94:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb96
bb95:
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t326 = load i64, ptr %l25, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l25, !tbaa !24
  br label %bb84
bb98:
  %t330 = load ptr, ptr %l1, !tbaa !29
  store ptr %t330, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb99
bb99:
  %t332 = load i64, ptr %l28, !tbaa !24
  store i64 %t332, ptr %l204, !tbaa !24
  %t333 = load ptr, ptr %l27, !tbaa !29
  %t335 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t333)
  store i64 %t335, ptr %l206
  br label %bb100
bb100:
  %t336 = load i64, ptr %l204, !tbaa !24
  %t337 = load i64, ptr %l206, !tbaa !24
  %t338 = icmp slt i64 %t336, %t337
  %t340 = xor i1 %t338, true
  br i1 %t340, label %bb101, label %bb102
bb101:
  br label %bb117
bb102:
  br label %bb103
bb103:
  %t342 = load ptr, ptr %l27, !tbaa !29
  %t343 = load i64, ptr %l28, !tbaa !24
  %t346 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t342, i64 %t343)
  store i64 %t346, ptr %l211
  br label %bb104
bb104:
  %t347 = load i64, ptr %l211, !tbaa !24
  store i64 %t347, ptr %l29, !tbaa !24
  %t348 = load i1, ptr %l22, !tbaa !21
  %t350 = xor i1 %t348, true
  br i1 %t350, label %bb105, label %bb106
bb105:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/effects:Effects", ptr %t352, i32 0, i32 13
  %t355 = load i64, ptr %l29, !tbaa !24
  %t358 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t354, i64 %t355)
  store i1 %t358, ptr %l218
  br label %bb107
bb106:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb108
bb107:
  %t359 = load i1, ptr %l218, !tbaa !21
  store i1 %t359, ptr %l214, !tbaa !21
  br label %bb108
bb108:
  %t360 = load i1, ptr %l214, !tbaa !21
  br i1 %t360, label %bb109, label %bb110
bb109:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i64, ptr %l29, !tbaa !24
  %t365 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallsThrough(ptr %v0, ptr %t361, i64 %t362)
  store i1 %t365, ptr %l222
  br label %bb111
bb110:
  store i1 false, ptr %l219, !tbaa !21
  br label %bb112
bb111:
  %t366 = load i1, ptr %l222, !tbaa !21
  store i1 %t366, ptr %l219, !tbaa !21
  br label %bb112
bb112:
  %t367 = load i1, ptr %l219, !tbaa !21
  br i1 %t367, label %bb113, label %bb114
bb113:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb115
bb114:
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t368 = load i64, ptr %l28, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l28, !tbaa !24
  br label %bb99
bb117:
  %t372 = load i1, ptr %l22, !tbaa !21
  br i1 %t372, label %bb118, label %bb119
bb118:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ethroughBounds(ptr %v0, ptr %v1, ptr %t374, ptr %t375)
  br label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb121
bb121:
  %t378 = load ptr, ptr %l1, !tbaa !29
  store ptr %t378, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb122
bb122:
  %t380 = load i64, ptr %l31, !tbaa !24
  store i64 %t380, ptr %l229, !tbaa !24
  %t381 = load ptr, ptr %l30, !tbaa !29
  %t383 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t381)
  store i64 %t383, ptr %l231
  br label %bb123
bb123:
  %t384 = load i64, ptr %l229, !tbaa !24
  %t385 = load i64, ptr %l231, !tbaa !24
  %t386 = icmp slt i64 %t384, %t385
  %t388 = xor i1 %t386, true
  br i1 %t388, label %bb124, label %bb125
bb124:
  br label %bb134
bb125:
  br label %bb126
bb126:
  %t390 = load ptr, ptr %l30, !tbaa !29
  %t391 = load i64, ptr %l31, !tbaa !24
  %t394 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t390, i64 %t391)
  store i64 %t394, ptr %l236
  br label %bb127
bb127:
  %t395 = load i64, ptr %l236, !tbaa !24
  store i64 %t395, ptr %l32, !tbaa !24
  %t396 = load i1, ptr %l23, !tbaa !21
  br i1 %t396, label %bb128, label %bb129
bb128:
  %t398 = load i64, ptr %l32, !tbaa !24
  store i1 true, ptr %l34, !tbaa !21
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/effects:Effects", ptr %t400, i32 0, i32 8
  %t406 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t402, i64 %t398)
  store ptr %t406, ptr %l242
  br label %bb130
bb129:
  br label %bb131
bb130:
  %t407 = load ptr, ptr %l242, !tbaa !29
  %t409 = load i1, ptr %l34, !tbaa !21
  %t412 = getelementptr %"compiler/effects:Facts", ptr %t407, i32 0, i32 17
  store i1 %t409, ptr %t412, !tbaa !21
  br label %bb131
bb131:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/effects:Effects", ptr %t413, i32 0, i32 14
  %t416 = load i64, ptr %l32, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t415, i64 %t416, i64 2)
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t419 = load i64, ptr %l31, !tbaa !24
  %t421 = add i64 %t419, 1
  store i64 %t421, ptr %l31, !tbaa !24
  br label %bb122
bb134:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estore(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/effects:root"
  %l5 = alloca i1
  %l9 = alloca %"compiler/effects:root"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Effects", ptr %t7, i32 0, i32 22
  %t10 = getelementptr %"compiler/effects:Facts", ptr %t9, i32 0, i32 2
  store i1 true, ptr %t10, !tbaa !21
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store %"compiler/effects:root" %t15, ptr %l9
  br label %bb5
bb5:
  %t16 = load %"compiler/effects:root", ptr %l9
  store %"compiler/effects:root" %t16, ptr %l2
  %t17 = getelementptr %"compiler/effects:root", ptr %l2, i32 0, i32 1
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = getelementptr %"compiler/effects:root", ptr %l2, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = icmp sge i64 %t23, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/effects:root", ptr %l2, i32 0, i32 0
  %t29 = load i64, ptr %t28, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ethrough(ptr %v0, ptr %t27, i64 %t29)
  br label %bb11
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/effects:Effects", ptr %t32, i32 0, i32 22
  %t35 = getelementptr %"compiler/effects:Facts", ptr %t34, i32 0, i32 16
  store i1 true, ptr %t35, !tbaa !21
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ethrough(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l19 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i64
  %l29 = alloca i1
  %l32 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 26
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l9
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l4, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/effects:Effects", ptr %t14, i32 0, i32 27
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t16, i64 %t17)
  %t21 = extractvalue { i32, i64 } %t20, 1
  %t22 = extractvalue { i32, i64 } %t20, 0
  store i32 %t22, ptr %l15
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb6, label %ok.24, !prof !99
ok.24:
  store i64 %t21, ptr %l14
  br label %bb5
bb5:
  %t25 = load i64, ptr %l14, !tbaa !24
  store i64 %t25, ptr %l10, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  %t26 = load i64, ptr %l10, !tbaa !24
  store i64 %t26, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp sge i64 %t27, 63
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/effects:Effects", ptr %t31, i32 0, i32 22
  %t34 = getelementptr %"compiler/effects:Facts", ptr %t33, i32 0, i32 16
  store i1 true, ptr %t34, !tbaa !21
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l19, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t36, i32 0, i32 22
  %t39 = getelementptr %"compiler/effects:Facts", ptr %t38, i32 0, i32 20
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l21, !tbaa !24
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = call i64 @compiler_2feffects_2eparamBit(i64 %t41)
  store i64 %t43, ptr %l23
  br label %bb12
bb12:
  %t44 = load i64, ptr %l21, !tbaa !24
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = or i64 %t44, %t45
  %t47 = load i64, ptr %l3, !tbaa !24
  %t50 = or i64 %t46, %t47
  %t52 = load ptr, ptr %l19, !tbaa !29
  %t53 = getelementptr %"compiler/effects:Effects", ptr %t52, i32 0, i32 22
  %t54 = getelementptr %"compiler/effects:Facts", ptr %t53, i32 0, i32 20
  store i64 %t50, ptr %t54, !tbaa !24
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp slt i64 %t55, 0
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = icmp eq i64 %t59, 0
  store i1 %t61, ptr %l29, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l29, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/effects:Effects", ptr %t64, i32 0, i32 2
  %t67 = load i1, ptr %t66, !tbaa !21
  store i1 %t67, ptr %l32, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb18
bb18:
  %t69 = load i1, ptr %l32, !tbaa !21
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/effects:Effects", ptr %t70, i32 0, i32 37
  %t73 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t72, i64 %t73)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2evisit(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l19 = alloca ptr
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i64
  %l53 = alloca i64
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalk(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Effects", ptr %t5, i32 0, i32 17
  %t8 = load i64, ptr %l1, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 21
  %t12 = load i64, ptr %t11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t7, i64 %t8, i64 %t12)
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/effects:Effects", ptr %t16, i32 0, i32 18
  %t19 = load i64, ptr %l1, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/effects:Effects", ptr %t20, i32 0, i32 21
  %t23 = load i64, ptr %t22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19, i64 %t23)
  br label %bb3
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Effects", ptr %t28, i32 0, i32 21
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = add i64 %t30, 1
  %t34 = load ptr, ptr %l19, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Effects", ptr %t34, i32 0, i32 21
  store i64 %t32, ptr %t35, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t36, i32 0, i32 20
  %t39 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t38, i64 %t39)
  br label %bb4
bb4:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/effects:Effects", ptr %t42, i32 0, i32 19
  %t45 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t44, i64 %t45, i1 true)
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/effects:Effects", ptr %t48, i32 0, i32 4
  %t51 = load i64, ptr %l1, !tbaa !24
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %s1, ptr %t50, i64 %t51)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l31
  br label %bb6
bb6:
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s1, ptr %l31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l33
  br label %bb7
bb7:
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t58 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %t58
  store ptr %t58, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb8
bb8:
  %t60 = load i64, ptr %l3, !tbaa !24
  store i64 %t60, ptr %l35, !tbaa !24
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t61)
  store i64 %t63, ptr %l37
  br label %bb9
bb9:
  %t64 = load i64, ptr %l35, !tbaa !24
  %t65 = load i64, ptr %l37, !tbaa !24
  %t66 = icmp slt i64 %t64, %t65
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load i64, ptr %l3, !tbaa !24
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t70, i64 %t71)
  store i64 %t74, ptr %l42
  br label %bb13
bb13:
  %t75 = load i64, ptr %l42, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eedge(ptr %v0, ptr %t76, i64 %t77, i64 %t75)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l3, !tbaa !24
  br label %bb8
bb16:
  call void @__olang_scope_close(ptr %s1)
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpand(ptr %v0, ptr %t86, i64 %t87)
  br label %bb17
bb17:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/effects:Effects", ptr %t90, i32 0, i32 18
  %t93 = load i64, ptr %l1, !tbaa !24
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t92, i64 %t93)
  store i64 %t96, ptr %l53
  br label %bb18
bb18:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 17
  %t100 = load i64, ptr %l1, !tbaa !24
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t99, i64 %t100)
  store i64 %t103, ptr %l57
  br label %bb19
bb19:
  %t104 = load i64, ptr %l53, !tbaa !24
  %t105 = load i64, ptr %l57, !tbaa !24
  %t106 = icmp ne i64 %t104, %t105
  br i1 %t106, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  br label %bb22
bb22:
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l59
  br label %bb23
bb23:
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l5
  br label %bb24
bb24:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/effects:Effects", ptr %t110, i32 0, i32 20
  %t114 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t112)
  %t115 = extractvalue { i32, i64 } %t114, 1
  %t116 = extractvalue { i32, i64 } %t114, 0
  store i32 %t116, ptr %l64
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb26, label %ok.118, !prof !99
ok.118:
  store i64 %t115, ptr %l63
  br label %bb25
bb25:
  %t119 = load i64, ptr %l63, !tbaa !24
  store i64 %t119, ptr %l60, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  br label %bb35
bb28:
  %t120 = load i64, ptr %l60, !tbaa !24
  store i64 %t120, ptr %l6, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/effects:Effects", ptr %t121, i32 0, i32 19
  %t124 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t123, i64 %t124, i1 false)
  br label %bb29
bb29:
  %t127 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t127)
  br label %bb30
bb30:
  %t130 = load i64, ptr %l6, !tbaa !24
  %t131 = load i64, ptr %l1, !tbaa !24
  %t134 = icmp eq i64 %t130, %t131
  br i1 %t134, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb24
bb35:
  %t136 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2esettle(ptr %v0, ptr %s0, ptr %t136, ptr %l5)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalk(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca ptr
  %l39 = alloca i64
  %l42 = alloca i1
  %l45 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4, i64 1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %t7, i64 %t8)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 3
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/effects:Effects", ptr %t15, i32 0, i32 22
  %t18 = load %"compiler/effects:Facts", ptr %t17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eSetAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t13, i64 %t14, %"compiler/effects:Facts" %t18)
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 4
  store ptr %t24, ptr %l13, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  store i64 %t25, ptr %l14, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/effects:Effects", ptr %t26, i32 0, i32 23
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l16
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l16)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l18
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l13, !tbaa !29
  %t33 = load i64, ptr %l14, !tbaa !24
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hca3b6abf349bf7326560c41fbdf5fb42(ptr %v0, ptr %s0, ptr %t32, i64 %t33, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34)
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 5
  store ptr %t37, ptr %l20, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  store i64 %t38, ptr %l21, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Effects", ptr %t39, i32 0, i32 24
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l23
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %s0, ptr %l23)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l25
  br label %bb6
bb6:
  %t45 = load ptr, ptr %l20, !tbaa !29
  %t46 = load i64, ptr %l21, !tbaa !24
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Had7562134349141a1e65e244951d3fe8(ptr %v0, ptr %s0, ptr %t45, i64 %t46, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47)
  br label %bb7
bb7:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/effects:Effects", ptr %t48, i32 0, i32 25
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t50)
  store i64 %t52, ptr %l28
  br label %bb8
bb8:
  %t53 = load i64, ptr %l28, !tbaa !24
  %t54 = icmp sgt i64 %t53, 0
  br i1 %t54, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Effects", ptr %t56, i32 0, i32 6
  store ptr %t58, ptr %l31, !tbaa !29
  %t59 = load i64, ptr %l1, !tbaa !24
  store i64 %t59, ptr %l32, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/effects:Effects", ptr %t60, i32 0, i32 25
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l34
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %s1, ptr %l34)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l36
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t67 = load i64, ptr %l32, !tbaa !24
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H17d172c890106e7669720f11d3813b09(ptr %v0, ptr %s1, ptr %t66, i64 %t67, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/effects:Effects", ptr %t69, i32 0, i32 13
  store ptr %t71, ptr %l38, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  store i64 %t72, ptr %l39, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/effects:Effects", ptr %t73, i32 0, i32 39
  %t76 = load i1, ptr %t75, !tbaa !21
  br i1 %t76, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb17
bb15:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/effects:Effects", ptr %t78, i32 0, i32 25
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l45
  br label %bb16
bb16:
  %t83 = load i64, ptr %l45, !tbaa !24
  %t84 = icmp sgt i64 %t83, 0
  store i1 %t84, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t86 = load ptr, ptr %l38, !tbaa !29
  %t87 = load i64, ptr %l39, !tbaa !24
  %t88 = load i1, ptr %l42, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t86, i64 %t87, i1 %t88)
  br label %bb18
bb18:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/effects:Effects", ptr %t89, i32 0, i32 40
  %t92 = load i1, ptr %t91, !tbaa !21
  br i1 %t92, label %bb19, label %bb20
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/effects:Effects", ptr %t94, i32 0, i32 43
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb21, label %bb22
bb20:
  br label %bb26
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/effects:Effects", ptr %t99, i32 0, i32 7
  store ptr %t101, ptr %l52, !tbaa !29
  %t102 = load i64, ptr %l1, !tbaa !24
  store i64 %t102, ptr %l53, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/effects:Effects", ptr %t103, i32 0, i32 42
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l55
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s3, ptr %l55)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l57
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t109 = load ptr, ptr %l52, !tbaa !29
  %t110 = load i64, ptr %l53, !tbaa !24
  %t111 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H5b4ed7dba3fb4e44f8784ebbf4461977(ptr %v0, ptr %s3, ptr %t109, i64 %t110, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t111)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca { i64, [2 x i64] }
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca %"compiler/effects:Facts"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca ptr
  %l34 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i64
  %l48 = alloca i64
  %l54 = alloca i64
  %l60 = alloca i64
  %l66 = alloca i64
  %l72 = alloca i64
  %l80 = alloca i64
  %l86 = alloca i64
  %l91 = alloca ptr
  %l97 = alloca i32
  %l100 = alloca i1
  %l101 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca i64
  %l112 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l114 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l116 = alloca ptr
  %l117 = alloca i64
  %l119 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l121 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l125 = alloca i64
  %l129 = alloca i64
  %l132 = alloca i64
  %l151 = alloca ptr
  %l155 = alloca i32
  %l165 = alloca i64
  %l168 = alloca i64
  %l172 = alloca i64
  %l175 = alloca i64
  %l196 = alloca %"compiler/typed:Local"
  %l208 = alloca ptr
  %l209 = alloca i64
  %l211 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l213 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l217 = alloca i64
  %l219 = alloca i64
  %l224 = alloca i32
  %l231 = alloca ptr
  %l233 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l234 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l238 = alloca ptr
  %l239 = alloca i64
  %l244 = alloca i64
  %l245 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l23
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l23, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l24, !tbaa !29
  %t10 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t10, ptr %l25
  br label %bb2
bb2:
  %t11 = load %"compiler/effects:Facts", ptr %l25
  %t12 = load ptr, ptr %l24, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t12, i32 0, i32 22
  store %"compiler/effects:Facts" %t11, ptr %t13
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l26, !tbaa !29
  %t15 = ptrtoint ptr %v0 to i64
  store i64 %t15, ptr %l27, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e23
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = call ptr @__olang_region_make(ptr %v0)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l27, !tbaa !24
  br label %bb4
bb4:
  %t20 = load i64, ptr %l27
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t21, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l29
  br label %bb5
bb5:
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e23
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load i64, ptr %l27
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr null
  %t33 = icmp eq ptr %t32, %t26
  call void @__olang_region_settle(ptr %t26, i1 %t33)
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l26, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Effects", ptr %t34, i32 0, i32 23
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l31
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t38 = load ptr, ptr %l26, !tbaa !29
  %t39 = getelementptr %"compiler/effects:Effects", ptr %t38, i32 0, i32 23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %t39
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e23
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t43 = load { i64, ptr }, ptr %t42
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = call ptr @__olang_region_or(ptr %t44, ptr null)
  %t46 = icmp ne ptr %t45, null
  %t47 = select i1 %t46, ptr %t45, ptr null
  call void @__olang_region_drop(ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l31
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l33, !tbaa !29
  %t49 = ptrtoint ptr %v0 to i64
  store i64 %t49, ptr %l34, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = call ptr @__olang_region_make(ptr %v0)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l34, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l34
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %t55, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l36
  br label %bb12
bb12:
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load i64, ptr %l34
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr null
  %t67 = icmp eq ptr %t66, %t60
  call void @__olang_region_settle(ptr %t60, i1 %t67)
  br label %bb14
bb14:
  %t68 = load ptr, ptr %l33, !tbaa !29
  %t69 = getelementptr %"compiler/effects:Effects", ptr %t68, i32 0, i32 24
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l38
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  %t72 = load ptr, ptr %l33, !tbaa !29
  %t73 = getelementptr %"compiler/effects:Effects", ptr %t72, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %t73
  %t74 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t76 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38, i32 0, i32 0
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = icmp ne ptr %t79, null
  %t81 = select i1 %t80, ptr %t79, ptr null
  call void @__olang_region_drop(ptr %t81)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l38
  br label %bb16
bb16:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/effects:Effects", ptr %t82, i32 0, i32 25
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t84)
  store i64 %t86, ptr %l42
  br label %bb17
bb17:
  %t87 = load i64, ptr %l42, !tbaa !24
  %t88 = icmp sgt i64 %t87, 0
  br i1 %t88, label %bb18, label %bb19
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/effects:Effects", ptr %t90, i32 0, i32 25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eClear_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t92)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/effects:Effects", ptr %t94, i32 0, i32 32
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2eLen_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l48
  br label %bb22
bb22:
  %t99 = load i64, ptr %l48, !tbaa !24
  %t100 = icmp sgt i64 %t99, 0
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/effects:Effects", ptr %t102, i32 0, i32 32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2eClear_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %t104)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/effects:Effects", ptr %t106, i32 0, i32 34
  %t110 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H0398947fe830469ce1a64c5da7c2d54d(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l54
  br label %bb27
bb27:
  %t111 = load i64, ptr %l54, !tbaa !24
  %t112 = icmp sgt i64 %t111, 0
  br i1 %t112, label %bb28, label %bb29
bb28:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/effects:Effects", ptr %t114, i32 0, i32 34
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4527323723b724269d0557de47b57e0e(ptr %v0, ptr %t116)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/effects:Effects", ptr %t118, i32 0, i32 35
  %t122 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t120)
  store i64 %t122, ptr %l60
  br label %bb32
bb32:
  %t123 = load i64, ptr %l60, !tbaa !24
  %t124 = icmp sgt i64 %t123, 0
  br i1 %t124, label %bb33, label %bb34
bb33:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/effects:Effects", ptr %t126, i32 0, i32 35
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t128)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/effects:Effects", ptr %t130, i32 0, i32 36
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t132)
  store i64 %t134, ptr %l66
  br label %bb37
bb37:
  %t135 = load i64, ptr %l66, !tbaa !24
  %t136 = icmp sgt i64 %t135, 0
  br i1 %t136, label %bb38, label %bb39
bb38:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/effects:Effects", ptr %t138, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t140)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/effects:Effects", ptr %t142, i32 0, i32 37
  %t146 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t144)
  store i64 %t146, ptr %l72
  br label %bb42
bb42:
  %t147 = load i64, ptr %l72, !tbaa !24
  %t148 = icmp sgt i64 %t147, 0
  br i1 %t148, label %bb43, label %bb44
bb43:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/effects:Effects", ptr %t150, i32 0, i32 37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t152)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/effects:Effects", ptr %t154, i32 0, i32 38
  store i1 false, ptr %t156, !tbaa !21
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/effects:Effects", ptr %t157, i32 0, i32 39
  store i1 false, ptr %t159, !tbaa !21
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/effects:Effects", ptr %t160, i32 0, i32 41
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t162)
  store i64 %t164, ptr %l80
  br label %bb47
bb47:
  %t165 = load i64, ptr %l80, !tbaa !24
  %t166 = icmp sgt i64 %t165, 0
  br i1 %t166, label %bb48, label %bb49
bb48:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/effects:Effects", ptr %t168, i32 0, i32 41
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eClear_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t170)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/effects:Effects", ptr %t172, i32 0, i32 42
  %t176 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t174)
  store i64 %t176, ptr %l86
  br label %bb52
bb52:
  %t177 = load i64, ptr %l86, !tbaa !24
  %t178 = icmp sgt i64 %t177, 0
  br i1 %t178, label %bb53, label %bb54
bb53:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/effects:Effects", ptr %t180, i32 0, i32 42
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t182)
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/effects:Effects", ptr %t184, i32 0, i32 43
  store i1 false, ptr %t186, !tbaa !21
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l91, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/effects:Effects", ptr %t188, i32 0, i32 0
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/generic:Program", ptr %t191, i32 0, i32 2
  %t194 = load ptr, ptr %l2, !tbaa !29
  %t196 = getelementptr %"compiler/typed:Body", ptr %t194, i32 0, i32 2
  %t197 = load i32, ptr %t196, !tbaa !23
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t193, i32 %t197)
  store i32 %t200, ptr %l97
  br label %bb57
bb57:
  %t201 = load i32, ptr %l97, !range !{i32 0, i32 33}
  %t203 = trunc i64 21 to i32
  %t204 = icmp eq i32 %t201, %t203
  br i1 %t204, label %bb58, label %bb59
bb58:
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l101, !tbaa !29
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/effects:Effects", ptr %t207, i32 0, i32 0
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t212 = getelementptr %"compiler/generic:Program", ptr %t210, i32 0, i32 2
  %t213 = load ptr, ptr %l2, !tbaa !29
  %t215 = getelementptr %"compiler/typed:Body", ptr %t213, i32 0, i32 2
  %t216 = load i32, ptr %t215, !tbaa !23
  %t219 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t212, i32 %t216)
  store i32 %t219, ptr %l107
  br label %bb60
bb59:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb62
bb60:
  %t220 = load ptr, ptr %l101, !tbaa !29
  %t221 = load i32, ptr %l107, !tbaa !23
  %t222 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t220, i32 %t221)
  store i1 %t222, ptr %l108
  br label %bb61
bb61:
  %t223 = load i1, ptr %l108, !tbaa !21
  store i1 %t223, ptr %l100, !tbaa !21
  br label %bb62
bb62:
  %t224 = load i1, ptr %l100, !tbaa !21
  %t225 = load ptr, ptr %l91, !tbaa !29
  %t226 = getelementptr %"compiler/effects:Effects", ptr %t225, i32 0, i32 40
  store i1 %t224, ptr %t226, !tbaa !21
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l109, !tbaa !29
  %t228 = ptrtoint ptr %v0 to i64
  store i64 %t228, ptr %l110, !tbaa !24
  %t229 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e26
  br i1 %t229, label %bb63, label %bb64
bb63:
  %t231 = call ptr @__olang_region_make(ptr %v0)
  %t232 = ptrtoint ptr %t231 to i64
  store i64 %t232, ptr %l110, !tbaa !24
  br label %bb64
bb64:
  %t233 = load i64, ptr %l110
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %t234)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t235, ptr %l112
  br label %bb65
bb65:
  %t236 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e26
  br i1 %t236, label %bb66, label %bb67
bb66:
  %t238 = load i64, ptr %l110
  %t239 = inttoptr i64 %t238 to ptr
  %t240 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 2
  %t241 = load { i64, ptr }, ptr %t240
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = call ptr @__olang_region_or(ptr %t242, ptr null)
  %t244 = icmp ne ptr %t243, null
  %t245 = select i1 %t244, ptr %t243, ptr null
  %t246 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 1
  %t247 = load { i64, ptr }, ptr %t246
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = call ptr @__olang_region_or(ptr %t248, ptr null)
  %t250 = icmp ne ptr %t249, null
  %t251 = select i1 %t250, ptr %t249, ptr %t245
  %t252 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 0
  %t253 = load { i64, ptr }, ptr %t252
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = call ptr @__olang_region_or(ptr %t254, ptr null)
  %t256 = icmp ne ptr %t255, null
  %t257 = select i1 %t256, ptr %t255, ptr %t251
  %t258 = icmp eq ptr %t257, %t239
  call void @__olang_region_settle(ptr %t239, i1 %t258)
  br label %bb67
bb67:
  %t259 = load ptr, ptr %l109, !tbaa !29
  %t260 = getelementptr %"compiler/effects:Effects", ptr %t259, i32 0, i32 26
  %t261 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t260
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t261, ptr %l114
  %t262 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112
  %t263 = load ptr, ptr %l109, !tbaa !29
  %t264 = getelementptr %"compiler/effects:Effects", ptr %t263, i32 0, i32 26
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t262, ptr %t264
  %t265 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e26
  br i1 %t265, label %bb68, label %bb69
bb68:
  %t267 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l114, i32 0, i32 2
  %t268 = load { i64, ptr }, ptr %t267
  %t269 = extractvalue { i64, ptr } %t268, 1
  %t270 = call ptr @__olang_region_or(ptr %t269, ptr null)
  %t271 = icmp ne ptr %t270, null
  %t272 = select i1 %t271, ptr %t270, ptr null
  %t273 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l114, i32 0, i32 1
  %t274 = load { i64, ptr }, ptr %t273
  %t275 = extractvalue { i64, ptr } %t274, 1
  %t276 = call ptr @__olang_region_or(ptr %t275, ptr null)
  %t277 = icmp ne ptr %t276, null
  %t278 = select i1 %t277, ptr %t276, ptr %t272
  %t279 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l114, i32 0, i32 0
  %t280 = load { i64, ptr }, ptr %t279
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = call ptr @__olang_region_or(ptr %t281, ptr null)
  %t283 = icmp ne ptr %t282, null
  %t284 = select i1 %t283, ptr %t282, ptr %t278
  call void @__olang_region_drop(ptr %t284)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l114
  br label %bb69
bb69:
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l116, !tbaa !29
  %t286 = ptrtoint ptr %v0 to i64
  store i64 %t286, ptr %l117, !tbaa !24
  %t287 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t287, label %bb70, label %bb71
bb70:
  %t289 = call ptr @__olang_region_make(ptr %v0)
  %t290 = ptrtoint ptr %t289 to i64
  store i64 %t290, ptr %l117, !tbaa !24
  br label %bb71
bb71:
  %t291 = load i64, ptr %l117
  %t292 = inttoptr i64 %t291 to ptr
  %t293 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %t292)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t293, ptr %l119
  br label %bb72
bb72:
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t294, label %bb73, label %bb74
bb73:
  %t296 = load i64, ptr %l117
  %t297 = inttoptr i64 %t296 to ptr
  %t298 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119, i32 0, i32 2
  %t299 = load { i64, ptr }, ptr %t298
  %t300 = extractvalue { i64, ptr } %t299, 1
  %t301 = call ptr @__olang_region_or(ptr %t300, ptr null)
  %t302 = icmp ne ptr %t301, null
  %t303 = select i1 %t302, ptr %t301, ptr null
  %t304 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119, i32 0, i32 1
  %t305 = load { i64, ptr }, ptr %t304
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = call ptr @__olang_region_or(ptr %t306, ptr null)
  %t308 = icmp ne ptr %t307, null
  %t309 = select i1 %t308, ptr %t307, ptr %t303
  %t310 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119, i32 0, i32 0
  %t311 = load { i64, ptr }, ptr %t310
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = call ptr @__olang_region_or(ptr %t312, ptr null)
  %t314 = icmp ne ptr %t313, null
  %t315 = select i1 %t314, ptr %t313, ptr %t309
  %t316 = icmp eq ptr %t315, %t297
  call void @__olang_region_settle(ptr %t297, i1 %t316)
  br label %bb74
bb74:
  %t317 = load ptr, ptr %l116, !tbaa !29
  %t318 = getelementptr %"compiler/effects:Effects", ptr %t317, i32 0, i32 27
  %t319 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t318
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t319, ptr %l121
  %t320 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119
  %t321 = load ptr, ptr %l116, !tbaa !29
  %t322 = getelementptr %"compiler/effects:Effects", ptr %t321, i32 0, i32 27
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t320, ptr %t322
  %t323 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t323, label %bb75, label %bb76
bb75:
  %t325 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l121, i32 0, i32 2
  %t326 = load { i64, ptr }, ptr %t325
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = call ptr @__olang_region_or(ptr %t327, ptr null)
  %t329 = icmp ne ptr %t328, null
  %t330 = select i1 %t329, ptr %t328, ptr null
  %t331 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l121, i32 0, i32 1
  %t332 = load { i64, ptr }, ptr %t331
  %t333 = extractvalue { i64, ptr } %t332, 1
  %t334 = call ptr @__olang_region_or(ptr %t333, ptr null)
  %t335 = icmp ne ptr %t334, null
  %t336 = select i1 %t335, ptr %t334, ptr %t330
  %t337 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l121, i32 0, i32 0
  %t338 = load { i64, ptr }, ptr %t337
  %t339 = extractvalue { i64, ptr } %t338, 1
  %t340 = call ptr @__olang_region_or(ptr %t339, ptr null)
  %t341 = icmp ne ptr %t340, null
  %t342 = select i1 %t341, ptr %t340, ptr %t336
  call void @__olang_region_drop(ptr %t342)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l121
  br label %bb76
bb76:
  store i64 0, ptr %l3, !tbaa !24
  %t343 = load ptr, ptr %l2, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Body", ptr %t343, i32 0, i32 5
  %t347 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t345)
  store i64 %t347, ptr %l125
  br label %bb77
bb77:
  %t348 = load i64, ptr %l125, !tbaa !24
  store i64 %t348, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t349 = load i64, ptr %l4, !tbaa !24
  %t350 = load i64, ptr %l3, !tbaa !24
  %t353 = icmp sgt i64 %t349, %t350
  br i1 %t353, label %bb78, label %bb79
bb78:
  %t355 = load i64, ptr %l5, !tbaa !24
  %t357 = icmp sgt i64 %t355, 0
  br i1 %t357, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l129, !tbaa !24
  br label %bb83
bb80:
  %t359 = load i64, ptr %l4, !tbaa !24
  %t360 = load i64, ptr %l3, !tbaa !24
  %t363 = sub i64 %t359, %t360
  %t364 = load i64, ptr %l5, !tbaa !24
  %t367 = add i64 %t363, %t364
  %t369 = sub i64 %t367, 1
  %t370 = load i64, ptr %l5, !tbaa !24
  %t373 = sdiv i64 %t369, %t370
  store i64 %t373, ptr %l132, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb82
bb82:
  %t375 = load i64, ptr %l132, !tbaa !24
  store i64 %t375, ptr %l129, !tbaa !24
  br label %bb83
bb83:
  %t376 = load i64, ptr %l129, !tbaa !24
  store i64 %t376, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb84
bb84:
  %t377 = load i64, ptr %l7, !tbaa !24
  %t378 = load i64, ptr %l6, !tbaa !24
  %t381 = icmp slt i64 %t377, %t378
  %t383 = xor i1 %t381, true
  br i1 %t383, label %bb85, label %bb86
bb85:
  br label %bb91
bb86:
  br label %bb87
bb87:
  %t385 = load i64, ptr %l3, !tbaa !24
  %t386 = load i64, ptr %l7, !tbaa !24
  %t387 = load i64, ptr %l5, !tbaa !24
  %t390 = mul i64 %t386, %t387
  %t393 = add i64 %t385, %t390
  store i64 %t393, ptr %l8, !tbaa !24
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/effects:Effects", ptr %t395, i32 0, i32 26
  store ptr %t397, ptr %l151, !tbaa !29
  %t398 = load ptr, ptr %l2, !tbaa !29
  %t400 = getelementptr %"compiler/typed:Body", ptr %t398, i32 0, i32 5
  %t401 = load i64, ptr %l8, !tbaa !24
  %t404 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t400, i64 %t401)
  store i32 %t404, ptr %l155
  br label %bb88
bb88:
  %t405 = load i32, ptr %l155, !tbaa !23
  %t406 = sext i32 %t405 to i64
  %t407 = load i64, ptr %l8, !tbaa !24
  %t408 = load ptr, ptr %l151, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t408, i64 %t406, i64 %t407)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t411 = load i64, ptr %l7, !tbaa !24
  %t413 = add i64 %t411, 1
  store i64 %t413, ptr %l7, !tbaa !24
  br label %bb84
bb91:
  %t415 = load ptr, ptr %l2, !tbaa !29
  %t417 = getelementptr %"compiler/typed:Body", ptr %t415, i32 0, i32 1
  %t418 = load { i64, [2 x i64] }, ptr %t417
  %t420 = extractvalue { i64, [2 x i64] } %t418, 0
  %t421 = icmp eq i64 %t420, 4
  br i1 %t421, label %bb92, label %bb93
bb92:
  %t423 = load ptr, ptr %l2, !tbaa !29
  %t425 = getelementptr %"compiler/typed:Body", ptr %t423, i32 0, i32 5
  %t427 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t425)
  store i64 %t427, ptr %l165
  br label %bb94
bb93:
  br label %bb113
bb94:
  %t428 = load i64, ptr %l165, !tbaa !24
  store i64 %t428, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t429 = load ptr, ptr %l2, !tbaa !29
  %t431 = getelementptr %"compiler/typed:Body", ptr %t429, i32 0, i32 7
  %t433 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t431)
  store i64 %t433, ptr %l168
  br label %bb95
bb95:
  %t434 = load i64, ptr %l168, !tbaa !24
  store i64 %t434, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t435 = load i64, ptr %l11, !tbaa !24
  %t436 = load i64, ptr %l10, !tbaa !24
  %t439 = icmp sgt i64 %t435, %t436
  br i1 %t439, label %bb96, label %bb97
bb96:
  %t441 = load i64, ptr %l12, !tbaa !24
  %t443 = icmp sgt i64 %t441, 0
  br i1 %t443, label %bb98, label %bb99
bb97:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb101
bb98:
  %t445 = load i64, ptr %l11, !tbaa !24
  %t446 = load i64, ptr %l10, !tbaa !24
  %t449 = sub i64 %t445, %t446
  %t450 = load i64, ptr %l12, !tbaa !24
  %t453 = add i64 %t449, %t450
  %t455 = sub i64 %t453, 1
  %t456 = load i64, ptr %l12, !tbaa !24
  %t459 = sdiv i64 %t455, %t456
  store i64 %t459, ptr %l175, !tbaa !24
  br label %bb100
bb99:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb100
bb100:
  %t461 = load i64, ptr %l175, !tbaa !24
  store i64 %t461, ptr %l172, !tbaa !24
  br label %bb101
bb101:
  %t462 = load i64, ptr %l172, !tbaa !24
  store i64 %t462, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb102
bb102:
  %t463 = load i64, ptr %l14, !tbaa !24
  %t464 = load i64, ptr %l13, !tbaa !24
  %t467 = icmp slt i64 %t463, %t464
  %t469 = xor i1 %t467, true
  br i1 %t469, label %bb103, label %bb104
bb103:
  br label %bb112
bb104:
  br label %bb105
bb105:
  %t471 = load i64, ptr %l10, !tbaa !24
  %t472 = load i64, ptr %l14, !tbaa !24
  %t473 = load i64, ptr %l12, !tbaa !24
  %t476 = mul i64 %t472, %t473
  %t479 = add i64 %t471, %t476
  store i64 %t479, ptr %l15, !tbaa !24
  %t481 = load ptr, ptr %l2, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Body", ptr %t481, i32 0, i32 7
  %t484 = load i64, ptr %l15, !tbaa !24
  %t487 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t483, i64 %t484)
  store %"compiler/typed:Local" %t487, ptr %l196
  br label %bb106
bb106:
  %t488 = getelementptr %"compiler/typed:Local", ptr %l196, i32 0, i32 4
  %t489 = load i32, ptr %t488, !range !{i32 0, i32 7}
  %t491 = trunc i64 5 to i32
  %t492 = icmp eq i32 %t489, %t491
  %t494 = xor i1 %t492, true
  br i1 %t494, label %bb107, label %bb108
bb107:
  br label %bb111
bb108:
  br label %bb109
bb109:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/effects:Effects", ptr %t496, i32 0, i32 26
  %t499 = load i64, ptr %l15, !tbaa !24
  %t500 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t498, i64 %t499, i64 %t500)
  br label %bb110
bb110:
  %t504 = load i64, ptr %l9, !tbaa !24
  %t506 = add i64 %t504, 1
  store i64 %t506, ptr %l9, !tbaa !24
  br label %bb111
bb111:
  %t508 = load i64, ptr %l14, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l14, !tbaa !24
  br label %bb102
bb112:
  br label %bb113
bb113:
  %t512 = load ptr, ptr %l0, !tbaa !29
  store ptr %t512, ptr %l208, !tbaa !29
  %t513 = ptrtoint ptr %v0 to i64
  store i64 %t513, ptr %l209, !tbaa !24
  %t514 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e28
  br i1 %t514, label %bb114, label %bb115
bb114:
  %t516 = call ptr @__olang_region_make(ptr %v0)
  %t517 = ptrtoint ptr %t516 to i64
  store i64 %t517, ptr %l209, !tbaa !24
  br label %bb115
bb115:
  %t518 = load i64, ptr %l209
  %t519 = inttoptr i64 %t518 to ptr
  %t520 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %t519)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t520, ptr %l211
  br label %bb116
bb116:
  %t521 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e28
  br i1 %t521, label %bb117, label %bb118
bb117:
  %t523 = load i64, ptr %l209
  %t524 = inttoptr i64 %t523 to ptr
  %t525 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l211, i32 0, i32 2
  %t526 = load { i64, ptr }, ptr %t525
  %t527 = extractvalue { i64, ptr } %t526, 1
  %t528 = call ptr @__olang_region_or(ptr %t527, ptr null)
  %t529 = icmp ne ptr %t528, null
  %t530 = select i1 %t529, ptr %t528, ptr null
  %t531 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l211, i32 0, i32 1
  %t532 = load { i64, ptr }, ptr %t531
  %t533 = extractvalue { i64, ptr } %t532, 1
  %t534 = call ptr @__olang_region_or(ptr %t533, ptr null)
  %t535 = icmp ne ptr %t534, null
  %t536 = select i1 %t535, ptr %t534, ptr %t530
  %t537 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l211, i32 0, i32 0
  %t538 = load { i64, ptr }, ptr %t537
  %t539 = extractvalue { i64, ptr } %t538, 1
  %t540 = call ptr @__olang_region_or(ptr %t539, ptr null)
  %t541 = icmp ne ptr %t540, null
  %t542 = select i1 %t541, ptr %t540, ptr %t536
  %t543 = icmp eq ptr %t542, %t524
  call void @__olang_region_settle(ptr %t524, i1 %t543)
  br label %bb118
bb118:
  %t544 = load ptr, ptr %l208, !tbaa !29
  %t545 = getelementptr %"compiler/effects:Effects", ptr %t544, i32 0, i32 28
  %t546 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t545
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t546, ptr %l213
  %t547 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l211
  %t548 = load ptr, ptr %l208, !tbaa !29
  %t549 = getelementptr %"compiler/effects:Effects", ptr %t548, i32 0, i32 28
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t547, ptr %t549
  %t550 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e28
  br i1 %t550, label %bb119, label %bb120
bb119:
  %t552 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l213, i32 0, i32 2
  %t553 = load { i64, ptr }, ptr %t552
  %t554 = extractvalue { i64, ptr } %t553, 1
  %t555 = call ptr @__olang_region_or(ptr %t554, ptr null)
  %t556 = icmp ne ptr %t555, null
  %t557 = select i1 %t556, ptr %t555, ptr null
  %t558 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l213, i32 0, i32 1
  %t559 = load { i64, ptr }, ptr %t558
  %t560 = extractvalue { i64, ptr } %t559, 1
  %t561 = call ptr @__olang_region_or(ptr %t560, ptr null)
  %t562 = icmp ne ptr %t561, null
  %t563 = select i1 %t562, ptr %t561, ptr %t557
  %t564 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l213, i32 0, i32 0
  %t565 = load { i64, ptr }, ptr %t564
  %t566 = extractvalue { i64, ptr } %t565, 1
  %t567 = call ptr @__olang_region_or(ptr %t566, ptr null)
  %t568 = icmp ne ptr %t567, null
  %t569 = select i1 %t568, ptr %t567, ptr %t563
  call void @__olang_region_drop(ptr %t569)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l213
  br label %bb120
bb120:
  %t570 = load ptr, ptr %l2, !tbaa !29
  %t572 = getelementptr %"compiler/typed:Body", ptr %t570, i32 0, i32 19
  store ptr %t572, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb121
bb121:
  %t574 = load i64, ptr %l17, !tbaa !24
  store i64 %t574, ptr %l217, !tbaa !24
  %t575 = load ptr, ptr %l16, !tbaa !29
  %t577 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t575)
  store i64 %t577, ptr %l219
  br label %bb122
bb122:
  %t578 = load i64, ptr %l217, !tbaa !24
  %t579 = load i64, ptr %l219, !tbaa !24
  %t580 = icmp slt i64 %t578, %t579
  %t582 = xor i1 %t580, true
  br i1 %t582, label %bb123, label %bb124
bb123:
  br label %bb129
bb124:
  br label %bb125
bb125:
  %t584 = load ptr, ptr %l16, !tbaa !29
  %t585 = load i64, ptr %l17, !tbaa !24
  %t588 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t584, i64 %t585)
  store i32 %t588, ptr %l224
  br label %bb126
bb126:
  %t589 = load i32, ptr %l224, !tbaa !23
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t592 = getelementptr %"compiler/effects:Effects", ptr %t590, i32 0, i32 28
  %t595 = sext i32 %t589 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t592, i64 %t595, i1 true)
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t598 = load i64, ptr %l17, !tbaa !24
  %t600 = add i64 %t598, 1
  store i64 %t600, ptr %l17, !tbaa !24
  br label %bb121
bb129:
  %t602 = load ptr, ptr %l0, !tbaa !29
  store ptr %t602, ptr %l231, !tbaa !29
  %t603 = load ptr, ptr %l2, !tbaa !29
  %t605 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eDropsRun(ptr %v0, ptr %v0, ptr %t603)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t605, ptr %l233
  br label %bb130
bb130:
  %t606 = load ptr, ptr %l231, !tbaa !29
  %t607 = getelementptr %"compiler/effects:Effects", ptr %t606, i32 0, i32 29
  %t608 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t607
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t608, ptr %l234
  %t609 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l233
  %t610 = load ptr, ptr %l231, !tbaa !29
  %t611 = getelementptr %"compiler/effects:Effects", ptr %t610, i32 0, i32 29
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t609, ptr %t611
  %t612 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e29
  br i1 %t612, label %bb131, label %bb132
bb131:
  %t614 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l234, i32 0, i32 2
  %t615 = load { i64, ptr }, ptr %t614
  %t616 = extractvalue { i64, ptr } %t615, 1
  %t617 = call ptr @__olang_region_or(ptr %t616, ptr null)
  %t618 = icmp ne ptr %t617, null
  %t619 = select i1 %t618, ptr %t617, ptr null
  %t620 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l234, i32 0, i32 1
  %t621 = load { i64, ptr }, ptr %t620
  %t622 = extractvalue { i64, ptr } %t621, 1
  %t623 = call ptr @__olang_region_or(ptr %t622, ptr null)
  %t624 = icmp ne ptr %t623, null
  %t625 = select i1 %t624, ptr %t623, ptr %t619
  %t626 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l234, i32 0, i32 0
  %t627 = load { i64, ptr }, ptr %t626
  %t628 = extractvalue { i64, ptr } %t627, 1
  %t629 = call ptr @__olang_region_or(ptr %t628, ptr null)
  %t630 = icmp ne ptr %t629, null
  %t631 = select i1 %t630, ptr %t629, ptr %t625
  call void @__olang_region_drop(ptr %t631)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l234
  br label %bb132
bb132:
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load i64, ptr %l1, !tbaa !24
  %t636 = getelementptr %"compiler/effects:Effects", ptr %t632, i32 0, i32 30
  store i64 %t633, ptr %t636, !tbaa !24
  %t637 = load ptr, ptr %l0, !tbaa !29
  store ptr %t637, ptr %l238, !tbaa !29
  %t638 = load ptr, ptr %l0, !tbaa !29
  %t640 = getelementptr %"compiler/effects:Effects", ptr %t638, i32 0, i32 15
  %t641 = load ptr, ptr %l2, !tbaa !29
  %t643 = getelementptr %"compiler/typed:Body", ptr %t641, i32 0, i32 3
  %t644 = load i64, ptr %t643, !tbaa !24
  %t647 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t640, i64 %t644)
  %t648 = extractvalue { i32, i64 } %t647, 1
  %t649 = extractvalue { i32, i64 } %t647, 0
  store i32 %t649, ptr %l245
  %t650 = icmp ne i32 %t649, 0
  br i1 %t650, label %bb134, label %ok.651, !prof !99
ok.651:
  store i64 %t648, ptr %l244
  br label %bb133
bb133:
  %t652 = load i64, ptr %l244, !tbaa !24
  store i64 %t652, ptr %l239, !tbaa !24
  br label %bb136
bb134:
  br label %bb135
bb135:
  store i64 -1, ptr %l239, !tbaa !24
  br label %bb136
bb136:
  %t653 = load i64, ptr %l239, !tbaa !24
  %t654 = load ptr, ptr %l238, !tbaa !29
  %t655 = getelementptr %"compiler/effects:Effects", ptr %t654, i32 0, i32 31
  store i64 %t653, ptr %t655, !tbaa !24
  %t656 = load ptr, ptr %l2, !tbaa !29
  %t658 = getelementptr %"compiler/typed:Body", ptr %t656, i32 0, i32 11
  %t659 = load ptr, ptr %t658, !tbaa !29
  %t661 = icmp eq ptr %t659, null
  br i1 %t661, label %bb137, label %bb138
bb137:
  %t663 = load ptr, ptr %l2, !tbaa !29
  %t665 = getelementptr %"compiler/typed:Body", ptr %t663, i32 0, i32 1
  %t666 = load { i64, [2 x i64] }, ptr %t665
  store { i64, [2 x i64] } %t666, ptr %l19
  %t668 = load { i64, [2 x i64] }, ptr %l19
  %t670 = extractvalue { i64, [2 x i64] } %t668, 0
  %t671 = icmp eq i64 %t670, 2
  br i1 %t671, label %bb139, label %bb140
bb138:
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t674 = load ptr, ptr %l2, !tbaa !29
  %t676 = getelementptr %"compiler/typed:Body", ptr %t674, i32 0, i32 11
  %t677 = load ptr, ptr %t676, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v0, ptr %t673, ptr %t677)
  br label %bb150
bb139:
  br label %bb143
bb140:
  %t680 = load { i64, [2 x i64] }, ptr %l19
  %t682 = extractvalue { i64, [2 x i64] } %t680, 0
  %t683 = icmp eq i64 %t682, 10
  br i1 %t683, label %bb141, label %bb142
bb141:
  br label %bb143
bb142:
  br label %bb144
bb143:
  br label %bb149
bb144:
  br i1 true, label %bb145, label %bb146
bb145:
  br label %bb147
bb146:
  br label %bb148
bb147:
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t687 = getelementptr %"compiler/effects:Effects", ptr %t685, i32 0, i32 22
  %t688 = getelementptr %"compiler/effects:Facts", ptr %t687, i32 0, i32 13
  store i1 true, ptr %t688, !tbaa !21
  br label %bb149
bb148:
  call void @__olang_check_failed(ptr @olang_loc_1339f6fe14a38149_c7d1650dc39f436d)
  unreachable
bb149:
  br label %bb151
bb150:
  br label %bb151
bb151:
  %t689 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efinish(ptr %v0, ptr %t689)
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/effects:Facts"
  %l8 = alloca i1
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 22
  %t4 = load %"compiler/effects:Facts", ptr %t3
  store %"compiler/effects:Facts" %t4, ptr %l1
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Effects", ptr %t7, i32 0, i32 30
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/effects:Facts", ptr %l1, i32 0, i32 20
  %t12 = load i64, ptr %t11, !tbaa !24
  %t16 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritesUnowned(ptr %v0, ptr %t6, i64 %t10, i64 %t12)
  store i1 %t16, ptr %l8
  br label %bb1
bb1:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t18 = getelementptr %"compiler/effects:Facts", ptr %l1, i32 0, i32 17
  store i1 true, ptr %t18, !tbaa !21
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/effects:Effects", ptr %t19, i32 0, i32 44
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = call { i64, ptr } @compiler_2feffects_2eBreaks(ptr %s0, ptr %v1, ptr %l1, i64 %t22)
  store { i64, ptr } %t25, ptr %l12
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/effects:root"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l22 = alloca i1
  %l26 = alloca %"compiler/effects:root"
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estore(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb48
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 2
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t39 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eglobalReached(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  store i1 %t39, ptr %l22
  br label %bb13
bb13:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/effects:Effects", ptr %t41, i32 0, i32 22
  %t44 = getelementptr %"compiler/effects:Facts", ptr %t43, i32 0, i32 2
  store i1 true, ptr %t44, !tbaa !21
  br label %ret
bb15:
  br label %bb16
bb16:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t49 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t45, ptr %t46)
  store %"compiler/effects:root" %t49, ptr %l26
  br label %bb17
bb17:
  %t50 = load %"compiler/effects:root", ptr %l26
  store %"compiler/effects:root" %t50, ptr %l4
  %t51 = getelementptr %"compiler/effects:root", ptr %l4, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t54 = icmp sge i64 %t52, 0
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/effects:root", ptr %l4, i32 0, i32 0
  %t58 = load i64, ptr %t57, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ethrough(ptr %v0, ptr %t56, i64 %t58)
  br label %bb20
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/effects:Effects", ptr %t61, i32 0, i32 22
  %t64 = getelementptr %"compiler/effects:Facts", ptr %t63, i32 0, i32 16
  store i1 true, ptr %t64, !tbaa !21
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb48
bb22:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t66 = load ptr, ptr %l32, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb23, label %bb24
bb23:
  %t69 = load ptr, ptr %l32, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 18}
  %t72 = icmp eq i64 %t70, 17
  store i1 %t72, ptr %l33, !tbaa !21
  br label %bb24
bb24:
  %t73 = load i1, ptr %l33, !tbaa !21
  br i1 %t73, label %bb25, label %bb26
bb25:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %t80, ptr %t81)
  br label %bb28
bb28:
  br label %bb48
bb29:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t85 = load ptr, ptr %l40, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb30, label %bb31
bb30:
  %t88 = load ptr, ptr %l40, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 18}
  %t91 = icmp eq i64 %t89, 5
  store i1 %t91, ptr %l41, !tbaa !21
  br label %bb31
bb31:
  %t92 = load i1, ptr %l41, !tbaa !21
  br i1 %t92, label %bb32, label %bb33
bb32:
  br label %bb42
bb33:
  %t93 = load ptr, ptr %l1, !tbaa !29
  store ptr %t93, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb34, label %bb35
bb34:
  %t97 = load ptr, ptr %l44, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 18}
  %t100 = icmp eq i64 %t98, 7
  store i1 %t100, ptr %l45, !tbaa !21
  br label %bb35
bb35:
  %t101 = load i1, ptr %l45, !tbaa !21
  br i1 %t101, label %bb36, label %bb37
bb36:
  br label %bb42
bb37:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t103 = load ptr, ptr %l48, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb38, label %bb39
bb38:
  %t106 = load ptr, ptr %l48, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 18}
  %t109 = icmp eq i64 %t107, 0
  store i1 %t109, ptr %l49, !tbaa !21
  br label %bb39
bb39:
  %t110 = load i1, ptr %l49, !tbaa !21
  br i1 %t110, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/effects:Effects", ptr %t111, i32 0, i32 22
  %t114 = getelementptr %"compiler/effects:Facts", ptr %t113, i32 0, i32 16
  store i1 true, ptr %t114, !tbaa !21
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_b365fbc2fc2a8203_e371dcb77fb488d7)
  unreachable
bb48:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l74 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb10
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 0
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb6
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Facts", ptr %t11, i32 0, i32 9
  %t14 = load i1, ptr %t13, !tbaa !21
  store i1 %t14, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb9
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/effects:Facts", ptr %t17, i32 0, i32 13
  %t20 = load i1, ptr %t19, !tbaa !21
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l10, !tbaa !21
  store i1 %t22, ptr %l2, !tbaa !21
  br label %bb80
bb10:
  %t23 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t25 = trunc i64 1 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/effects:Facts", ptr %t28, i32 0, i32 1
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb16
bb15:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Facts", ptr %t33, i32 0, i32 9
  %t36 = load i1, ptr %t35, !tbaa !21
  store i1 %t36, ptr %l17, !tbaa !21
  br label %bb16
bb16:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb19
bb18:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Facts", ptr %t39, i32 0, i32 13
  %t42 = load i1, ptr %t41, !tbaa !21
  store i1 %t42, ptr %l20, !tbaa !21
  br label %bb19
bb19:
  %t44 = load i1, ptr %l20, !tbaa !21
  store i1 %t44, ptr %l2, !tbaa !21
  br label %bb80
bb20:
  %t45 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t47 = trunc i64 2 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb30
bb23:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/effects:Facts", ptr %t50, i32 0, i32 2
  %t53 = load i1, ptr %t52, !tbaa !21
  br i1 %t53, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb26
bb25:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/effects:Facts", ptr %t55, i32 0, i32 9
  %t58 = load i1, ptr %t57, !tbaa !21
  store i1 %t58, ptr %l27, !tbaa !21
  br label %bb26
bb26:
  %t60 = load i1, ptr %l27, !tbaa !21
  br i1 %t60, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb29
bb28:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/effects:Facts", ptr %t61, i32 0, i32 13
  %t64 = load i1, ptr %t63, !tbaa !21
  store i1 %t64, ptr %l30, !tbaa !21
  br label %bb29
bb29:
  %t66 = load i1, ptr %l30, !tbaa !21
  store i1 %t66, ptr %l2, !tbaa !21
  br label %bb80
bb30:
  %t67 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t69 = trunc i64 3 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb40
bb33:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/effects:Facts", ptr %t72, i32 0, i32 4
  %t75 = load i1, ptr %t74, !tbaa !21
  br i1 %t75, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb36
bb35:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/effects:Facts", ptr %t77, i32 0, i32 9
  %t80 = load i1, ptr %t79, !tbaa !21
  store i1 %t80, ptr %l37, !tbaa !21
  br label %bb36
bb36:
  %t82 = load i1, ptr %l37, !tbaa !21
  br i1 %t82, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb39
bb38:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/effects:Facts", ptr %t83, i32 0, i32 13
  %t86 = load i1, ptr %t85, !tbaa !21
  store i1 %t86, ptr %l40, !tbaa !21
  br label %bb39
bb39:
  %t88 = load i1, ptr %l40, !tbaa !21
  store i1 %t88, ptr %l2, !tbaa !21
  br label %bb80
bb40:
  %t89 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t91 = trunc i64 4 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb50
bb43:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/effects:Facts", ptr %t94, i32 0, i32 6
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb46
bb45:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/effects:Facts", ptr %t99, i32 0, i32 9
  %t102 = load i1, ptr %t101, !tbaa !21
  store i1 %t102, ptr %l47, !tbaa !21
  br label %bb46
bb46:
  %t104 = load i1, ptr %l47, !tbaa !21
  br i1 %t104, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb49
bb48:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/effects:Facts", ptr %t105, i32 0, i32 13
  %t108 = load i1, ptr %t107, !tbaa !21
  store i1 %t108, ptr %l50, !tbaa !21
  br label %bb49
bb49:
  %t110 = load i1, ptr %l50, !tbaa !21
  store i1 %t110, ptr %l2, !tbaa !21
  br label %bb80
bb50:
  %t111 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t113 = trunc i64 5 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb60
bb53:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/effects:Facts", ptr %t116, i32 0, i32 7
  %t119 = load i1, ptr %t118, !tbaa !21
  br i1 %t119, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb56
bb55:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/effects:Facts", ptr %t121, i32 0, i32 9
  %t124 = load i1, ptr %t123, !tbaa !21
  store i1 %t124, ptr %l57, !tbaa !21
  br label %bb56
bb56:
  %t126 = load i1, ptr %l57, !tbaa !21
  br i1 %t126, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb59
bb58:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/effects:Facts", ptr %t127, i32 0, i32 13
  %t130 = load i1, ptr %t129, !tbaa !21
  store i1 %t130, ptr %l60, !tbaa !21
  br label %bb59
bb59:
  %t132 = load i1, ptr %l60, !tbaa !21
  store i1 %t132, ptr %l2, !tbaa !21
  br label %bb80
bb60:
  %t133 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t135 = trunc i64 6 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %t138)
  store i1 %t140, ptr %l66
  br label %bb64
bb64:
  %t141 = load i1, ptr %l66, !tbaa !21
  store i1 %t141, ptr %l2, !tbaa !21
  br label %bb80
bb65:
  %t142 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t144 = trunc i64 7 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2ePure(ptr %v0, ptr %t147)
  store i1 %t149, ptr %l70
  br label %bb69
bb69:
  %t150 = load i1, ptr %l70, !tbaa !21
  store i1 %t150, ptr %l2, !tbaa !21
  br label %bb80
bb70:
  %t151 = load i32, ptr %l1, !range !{i32 0, i32 10}
  %t153 = trunc i64 8 to i32
  %t154 = icmp eq i32 %t151, %t153
  br i1 %t154, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eReturns(ptr %v0, ptr %t156)
  store i1 %t158, ptr %l74
  br label %bb74
bb74:
  %t159 = load i1, ptr %l74, !tbaa !21
  store i1 %t159, ptr %l2, !tbaa !21
  br label %bb80
bb75:
  br i1 true, label %bb76, label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb79
bb78:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_5b8067b2e95ea30f_d9100a71d97bc52b)
  unreachable
bb80:
  %t160 = load i1, ptr %l2, !tbaa !21
  store i1 %t160, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eIdle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l28 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 1
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t12, i32 0, i32 2
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Facts", ptr %t18, i32 0, i32 4
  %t21 = load i1, ptr %t20, !tbaa !21
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/effects:Facts", ptr %t24, i32 0, i32 6
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Facts", ptr %t30, i32 0, i32 9
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  br i1 %t35, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb18
bb17:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Facts", ptr %t36, i32 0, i32 11
  %t39 = load i1, ptr %t38, !tbaa !21
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb18
bb18:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb21
bb20:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/effects:Facts", ptr %t42, i32 0, i32 13
  %t45 = load i1, ptr %t44, !tbaa !21
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb21
bb21:
  %t47 = load i1, ptr %l21, !tbaa !21
  br i1 %t47, label %bb22, label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/effects:Facts", ptr %t49, i32 0, i32 12
  %t52 = load i1, ptr %t51, !tbaa !21
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb25, label %bb26
bb25:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Facts", ptr %t56, i32 0, i32 18
  %t59 = load i64, ptr %t58, !tbaa !24
  %t61 = icmp eq i64 %t59, 0
  store i1 %t61, ptr %l28, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb27
bb27:
  %t63 = load i1, ptr %l28, !tbaa !21
  br i1 %t63, label %bb28, label %bb29
bb28:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/effects:Facts", ptr %t64, i32 0, i32 20
  %t67 = load i64, ptr %t66, !tbaa !24
  %t69 = icmp eq i64 %t67, 0
  store i1 %t69, ptr %l32, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb30
bb30:
  %t71 = load i1, ptr %l32, !tbaa !21
  br i1 %t71, label %bb31, label %bb32
bb31:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/effects:Facts", ptr %t72, i32 0, i32 21
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = icmp eq i64 %t75, 0
  store i1 %t77, ptr %l36, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb33
bb33:
  %t79 = load i1, ptr %l36, !tbaa !21
  store i1 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2ePure(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 17
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t12, i32 0, i32 3
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Facts", ptr %t18, i32 0, i32 16
  %t21 = load i1, ptr %t20, !tbaa !21
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/effects:Facts", ptr %t24, i32 0, i32 4
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Facts", ptr %t30, i32 0, i32 9
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  br i1 %t35, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb18
bb17:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Facts", ptr %t36, i32 0, i32 10
  %t39 = load i1, ptr %t38, !tbaa !21
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb18
bb18:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb21
bb20:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/effects:Facts", ptr %t42, i32 0, i32 13
  %t45 = load i1, ptr %t44, !tbaa !21
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb21
bb21:
  %t47 = load i1, ptr %l21, !tbaa !21
  br i1 %t47, label %bb22, label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/effects:Facts", ptr %t49, i32 0, i32 18
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  %t55 = xor i64 %t53, -1
  %t58 = and i64 %t52, %t55
  %t60 = icmp eq i64 %t58, 0
  store i1 %t60, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 8
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 7
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t12, i32 0, i32 9
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Facts", ptr %t18, i32 0, i32 1
  %t21 = load i1, ptr %t20, !tbaa !21
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/effects:Facts", ptr %t24, i32 0, i32 5
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Facts", ptr %t30, i32 0, i32 13
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 7
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %t22)
  store i1 %t24, ptr %l8
  br label %bb4
bb4:
  %t25 = load i1, ptr %l8, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t26, ptr %l9, !tbaa !27
  br label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t28, ptr %l9, !tbaa !27
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l14, !tbaa !24
  %t32 = load i64, ptr %l14, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l15, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l14, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t43, ptr %l9, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t44, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2eimpure(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l33 = alloca i1
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 9
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 10
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %l7, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l8, !tbaa !24
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = mul i64 %t15, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l9, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l8, !tbaa !24
  %t25 = mul i64 %t24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %t23, i64 %t25, i1 false)
  %t26 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/effects:Facts", ptr %t28, i32 0, i32 2
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t33, ptr %l13, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l14, !tbaa !24
  %t36 = load i64, ptr %l14, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l15, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l14, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t47, ptr %l13, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/effects:Facts", ptr %t49, i32 0, i32 3
  %t52 = load i1, ptr %t51, !tbaa !21
  br i1 %t52, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t54, ptr %l19, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l20, !tbaa !24
  %t57 = load i64, ptr %l20, !tbaa !24
  %t58 = mul i64 %t57, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l21, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l20, !tbaa !24
  %t67 = mul i64 %t66, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %t65, i64 %t67, i1 false)
  %t68 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t68, ptr %l19, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/effects:Facts", ptr %t70, i32 0, i32 17
  %t73 = load i1, ptr %t72, !tbaa !21
  br i1 %t73, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb15
bb14:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/effects:Facts", ptr %t75, i32 0, i32 16
  %t78 = load i1, ptr %t77, !tbaa !21
  store i1 %t78, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t80 = load i1, ptr %l24, !tbaa !21
  br i1 %t80, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t81, ptr %l28, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l29, !tbaa !24
  %t84 = load i64, ptr %l29, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l30, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l29, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t95, ptr %l28, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Facts", ptr %t97, i32 0, i32 4
  %t100 = load i1, ptr %t99, !tbaa !21
  br i1 %t100, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb21
bb20:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/effects:Facts", ptr %t102, i32 0, i32 18
  %t105 = load i64, ptr %t104, !tbaa !24
  %t106 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  %t108 = xor i64 %t106, -1
  %t111 = and i64 %t105, %t108
  %t113 = icmp ne i64 %t111, 0
  store i1 %t113, ptr %l33, !tbaa !21
  br label %bb21
bb21:
  %t115 = load i1, ptr %l33, !tbaa !21
  br i1 %t115, label %bb22, label %bb23
bb22:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t116, ptr %l41, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l42, !tbaa !24
  %t119 = load i64, ptr %l42, !tbaa !24
  %t120 = mul i64 %t119, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t120)
  %t122 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  store { i64, ptr } %t123, ptr %l43, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = load i64, ptr %l42, !tbaa !24
  %t129 = mul i64 %t128, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t125, ptr %t127, i64 %t129, i1 false)
  %t130 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t130, ptr %l41, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t131, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t132, ptr %l45, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  store i64 %t134, ptr %l46, !tbaa !24
  %t135 = load i64, ptr %l46, !tbaa !24
  %t136 = mul i64 %t135, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t136)
  %t138 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  store { i64, ptr } %t139, ptr %l47, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = load i64, ptr %l46, !tbaa !24
  %t145 = mul i64 %t144, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t141, ptr %t143, i64 %t145, i1 false)
  %t146 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t146, ptr %l45, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t147, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2feffects_2eparamBit(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = icmp slt i64 %t5, 63
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load i64, ptr %l0, !tbaa !24
  store i64 %t10, ptr %l7, !tbaa !24
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = shl i64 1, %t12
  store i64 %t13, ptr %l6, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t15 = load i64, ptr %l6, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feffects_2equickC(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l17 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr @G_2ecompiler_2feffects_2equickNames, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t2 = load ptr, ptr %l1
  store i64 26, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t5, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = getelementptr [26 x { i64, ptr }], ptr %t13, i64 0, i64 %t14
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !37
  %t22 = load ptr, ptr @__olang_prog_scope
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t22, { i64, ptr } %a0, { i64, ptr } %t18)
  store i1 %t25, ptr %l17
  br label %bb5
bb5:
  %t26 = load i1, ptr %l17, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l2, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2feffects_2estmtSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 17}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 17}
  %t38 = icmp eq i64 %t36, 15
  store i1 %t38, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l1
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 17}
  %t53 = icmp eq i64 %t51, 1
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l6
  br label %bb79
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t64 = load ptr, ptr %l32, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l32, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 17}
  %t70 = icmp eq i64 %t68, 3
  store i1 %t70, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l33, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [3 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr }, ptr %t74, i32 0, i32 0
  %t76 = load %"compiler/source:Span", ptr %t75
  store %"compiler/source:Span" %t76, ptr %l2
  br label %bb35
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t79 = load ptr, ptr %l38, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l38, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 17}
  %t85 = icmp eq i64 %t83, 4
  store i1 %t85, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l39, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb35
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l44, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 17}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l45, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [3 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb35
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t109 = load ptr, ptr %l50, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l50, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 17}
  %t115 = icmp eq i64 %t113, 16
  store i1 %t115, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l51, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [3 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l2
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t123, ptr %l6
  br label %bb79
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t126 = load ptr, ptr %l57, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb37, label %bb38
bb37:
  %t129 = load ptr, ptr %l57, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 17}
  %t132 = icmp eq i64 %t130, 8
  store i1 %t132, ptr %l58, !tbaa !21
  br label %bb38
bb38:
  %t133 = load i1, ptr %l58, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr { i64, [3 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t136, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l3
  br label %bb53
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t141 = load ptr, ptr %l63, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb41, label %bb42
bb41:
  %t144 = load ptr, ptr %l63, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 17}
  %t147 = icmp eq i64 %t145, 5
  store i1 %t147, ptr %l64, !tbaa !21
  br label %bb42
bb42:
  %t148 = load i1, ptr %l64, !tbaa !21
  br i1 %t148, label %bb43, label %bb44
bb43:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t151, i32 0, i32 0
  %t153 = load %"compiler/source:Span", ptr %t152
  store %"compiler/source:Span" %t153, ptr %l3
  br label %bb53
bb44:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t156 = load ptr, ptr %l69, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t159 = load ptr, ptr %l69, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 17}
  %t162 = icmp eq i64 %t160, 7
  store i1 %t162, ptr %l70, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l70, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [3 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t166, i32 0, i32 0
  %t168 = load %"compiler/source:Span", ptr %t167
  store %"compiler/source:Span" %t168, ptr %l3
  br label %bb53
bb48:
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t171 = load ptr, ptr %l75, !tbaa !29
  %t172 = icmp ne ptr %t171, null
  br i1 %t172, label %bb49, label %bb50
bb49:
  %t174 = load ptr, ptr %l75, !tbaa !29
  %t175 = load i64, ptr %t174, !range !{i64 0, i64 17}
  %t177 = icmp eq i64 %t175, 11
  store i1 %t177, ptr %l76, !tbaa !21
  br label %bb50
bb50:
  %t178 = load i1, ptr %l76, !tbaa !21
  br i1 %t178, label %bb51, label %bb52
bb51:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr { i64, [3 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", ptr }, ptr %t181, i32 0, i32 0
  %t183 = load %"compiler/source:Span", ptr %t182
  store %"compiler/source:Span" %t183, ptr %l3
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t185 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t185, ptr %l6
  br label %bb79
bb54:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t188 = load ptr, ptr %l82, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb55, label %bb56
bb55:
  %t191 = load ptr, ptr %l82, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 17}
  %t194 = icmp eq i64 %t192, 12
  store i1 %t194, ptr %l83, !tbaa !21
  br label %bb56
bb56:
  %t195 = load i1, ptr %l83, !tbaa !21
  br i1 %t195, label %bb57, label %bb58
bb57:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr { i64, [3 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", ptr }, ptr %t198, i32 0, i32 0
  %t200 = load %"compiler/source:Span", ptr %t199
  store %"compiler/source:Span" %t200, ptr %l4
  br label %bb71
bb58:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t203 = load ptr, ptr %l88, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb59, label %bb60
bb59:
  %t206 = load ptr, ptr %l88, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 17}
  %t209 = icmp eq i64 %t207, 9
  store i1 %t209, ptr %l89, !tbaa !21
  br label %bb60
bb60:
  %t210 = load i1, ptr %l89, !tbaa !21
  br i1 %t210, label %bb61, label %bb62
bb61:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t213, i32 0, i32 0
  %t215 = load %"compiler/source:Span", ptr %t214
  store %"compiler/source:Span" %t215, ptr %l4
  br label %bb71
bb62:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t218 = load ptr, ptr %l94, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t221 = load ptr, ptr %l94, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 17}
  %t224 = icmp eq i64 %t222, 10
  store i1 %t224, ptr %l95, !tbaa !21
  br label %bb64
bb64:
  %t225 = load i1, ptr %l95, !tbaa !21
  br i1 %t225, label %bb65, label %bb66
bb65:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [3 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/source:Span", ptr %t229
  store %"compiler/source:Span" %t230, ptr %l4
  br label %bb71
bb66:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t233 = load ptr, ptr %l100, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb67, label %bb68
bb67:
  %t236 = load ptr, ptr %l100, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 17}
  %t239 = icmp eq i64 %t237, 13
  store i1 %t239, ptr %l101, !tbaa !21
  br label %bb68
bb68:
  %t240 = load i1, ptr %l101, !tbaa !21
  br i1 %t240, label %bb69, label %bb70
bb69:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr }, ptr %t243, i32 0, i32 0
  %t245 = load %"compiler/source:Span", ptr %t244
  store %"compiler/source:Span" %t245, ptr %l4
  br label %bb71
bb70:
  br label %bb72
bb71:
  %t247 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t247, ptr %l6
  br label %bb79
bb72:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t250 = load ptr, ptr %l107, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb73, label %bb74
bb73:
  %t253 = load ptr, ptr %l107, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 17}
  %t256 = icmp eq i64 %t254, 14
  store i1 %t256, ptr %l108, !tbaa !21
  br label %bb74
bb74:
  %t257 = load i1, ptr %l108, !tbaa !21
  br i1 %t257, label %bb75, label %bb76
bb75:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", ptr }, ptr %t260, i32 0, i32 0
  %t262 = load %"compiler/source:Span", ptr %t261
  store %"compiler/source:Span" %t262, ptr %l5
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t264 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t264, ptr %l6
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_f9d1419be2a6bd97_a466df32bbf19e6b)
  unreachable
bb79:
  %t266 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t266, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/effects:Facts"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [6 x i64] undef, i64 -1, 0
  %t2 = insertvalue [6 x i64] %t1, i64 -1, 1
  %t3 = insertvalue [6 x i64] %t2, i64 -1, 2
  %t4 = insertvalue [6 x i64] %t3, i64 -1, 3
  %t5 = insertvalue [6 x i64] %t4, i64 -1, 4
  %t6 = insertvalue [6 x i64] %t5, i64 -1, 5
  %t9 = insertvalue %"compiler/effects:Facts" undef, i1 false, 0
  %t11 = insertvalue %"compiler/effects:Facts" %t9, i1 false, 1
  %t13 = insertvalue %"compiler/effects:Facts" %t11, i1 false, 2
  %t15 = insertvalue %"compiler/effects:Facts" %t13, i1 false, 3
  %t17 = insertvalue %"compiler/effects:Facts" %t15, i1 false, 4
  %t19 = insertvalue %"compiler/effects:Facts" %t17, i1 false, 5
  %t21 = insertvalue %"compiler/effects:Facts" %t19, i1 false, 6
  %t23 = insertvalue %"compiler/effects:Facts" %t21, i1 false, 7
  %t25 = insertvalue %"compiler/effects:Facts" %t23, i1 false, 8
  %t27 = insertvalue %"compiler/effects:Facts" %t25, i1 false, 9
  %t29 = insertvalue %"compiler/effects:Facts" %t27, i1 false, 10
  %t31 = insertvalue %"compiler/effects:Facts" %t29, i1 false, 11
  %t33 = insertvalue %"compiler/effects:Facts" %t31, i1 false, 12
  %t35 = insertvalue %"compiler/effects:Facts" %t33, i1 false, 13
  %t37 = insertvalue %"compiler/effects:Facts" %t35, i1 false, 14
  %t39 = insertvalue %"compiler/effects:Facts" %t37, i1 false, 15
  %t41 = insertvalue %"compiler/effects:Facts" %t39, i1 false, 16
  %t43 = insertvalue %"compiler/effects:Facts" %t41, i1 false, 17
  %t45 = insertvalue %"compiler/effects:Facts" %t43, i64 0, 18
  %t47 = insertvalue %"compiler/effects:Facts" %t45, [6 x i64] %t6, 19
  %t49 = insertvalue %"compiler/effects:Facts" %t47, i64 0, 20
  %t51 = insertvalue %"compiler/effects:Facts" %t49, i64 0, 21
  store %"compiler/effects:Facts" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local %"compiler/effects:Verdict" @compiler_2feffects_3aVerdict_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %rv = alloca %"compiler/effects:Verdict"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t1, ptr %l9, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t2, 0
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load i64, ptr %l10, !tbaa !24
  %t5 = mul i64 %t4, 1
  %t6 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t5)
  %t7 = insertvalue { i64, ptr } undef, i64 %t4, 0
  %t8 = insertvalue { i64, ptr } %t7, ptr %t6, 1
  store { i64, ptr } %t8, ptr %l11, !tbaa !27
  %t9 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = mul i64 %t13, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t10, ptr %t12, i64 %t14, i1 false)
  %t15 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t15, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t16, ptr %l13, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l14, !tbaa !24
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l15, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t30, ptr %l1, !tbaa !27
  store i1 true, ptr %l2, !tbaa !21
  %t31 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t33, ptr %l18, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l19, !tbaa !24
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l20, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l19, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t47, ptr %l4, !tbaa !27
  store i64 -1, ptr %l5, !tbaa !24
  %t48 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t48, ptr %l21
  br label %bb1
bb1:
  %t49 = load %"compiler/source:Span", ptr %l21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t50, ptr %l23, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  store i64 %t52, ptr %l24, !tbaa !24
  %t53 = load i64, ptr %l24, !tbaa !24
  %t54 = mul i64 %t53, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l25, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = load i64, ptr %l24, !tbaa !24
  %t63 = mul i64 %t62, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t59, ptr %t61, i64 %t63, i1 false)
  %t64 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t66 = insertvalue %"compiler/effects:Verdict" undef, { i64, ptr } %t65, 0
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = insertvalue %"compiler/effects:Verdict" %t66, { i64, ptr } %t67, 1
  %t69 = load i1, ptr %l2, !tbaa !21
  %t70 = insertvalue %"compiler/effects:Verdict" %t68, i1 %t69, 2
  %t71 = load i32, ptr %l3, !tbaa !23
  %t72 = insertvalue %"compiler/effects:Verdict" %t70, i32 %t71, 3
  %t73 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t74 = insertvalue %"compiler/effects:Verdict" %t72, { i64, ptr } %t73, 4
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = insertvalue %"compiler/effects:Verdict" %t74, i64 %t75, 5
  %t78 = insertvalue %"compiler/effects:Verdict" %t76, %"compiler/source:Span" %t49, 6
  %t80 = insertvalue %"compiler/effects:Verdict" %t78, { i64, ptr } %t64, 7
  store %"compiler/effects:Verdict" %t80, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Verdict", ptr %rv
  ret %"compiler/effects:Verdict" %rr
}

define dso_local %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i32 %a4) #0 {
entry:
  %rv = alloca %"compiler/effects:given"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/effects:given" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/effects:given" %t12, i64 %a1, 1
  %t16 = insertvalue %"compiler/effects:given" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/effects:given" %t16, i64 %a3, 3
  %t20 = insertvalue %"compiler/effects:given" %t18, i32 %a4, 4
  store %"compiler/effects:given" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:given", ptr %rv
  ret %"compiler/effects:given" %rr
}

define dso_local %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %rv = alloca %"compiler/effects:part"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/effects:part" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/effects:part" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/effects:part" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/effects:part" %t14, ptr %a3, 3
  store %"compiler/effects:part" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:part", ptr %rv
  ret %"compiler/effects:part" %rr
}

define dso_local %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, ptr %a2) #0 {
entry:
  %rv = alloca %"compiler/effects:pend"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/effects:pend" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/effects:pend" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/effects:pend" %t10, ptr %a2, 2
  store %"compiler/effects:pend" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:pend", ptr %rv
  ret %"compiler/effects:pend" %rr
}

@.d0 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"reach code that did not check" }>, align 8
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
@.d1 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"allocate" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"block" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"start a task" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"call C" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"call through a function value it does not follow, which may lead back to it" }>, align 8
@.d10 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"call itself" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
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
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"compiler/effects:Verdict" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aVerdict(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/effects:Verdict"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %rv = alloca %"compiler/effects:Verdict"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/effects:Verdict", ptr %a0
  store %"compiler/effects:Verdict" %t2, ptr %l1
  %t3 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 4
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 4
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 7
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l11, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  store i64 %t57, ptr %l12, !tbaa !24
  %t58 = load i64, ptr %l12, !tbaa !24
  %t59 = mul i64 %t58, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l13, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l12, !tbaa !24
  %t68 = mul i64 %t67, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %t66, i64 %t68, i1 false)
  %t69 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t70 = getelementptr %"compiler/effects:Verdict", ptr %l1, i32 0, i32 7
  store { i64, ptr } %t69, ptr %t70, !tbaa !27
  %t71 = load %"compiler/effects:Verdict", ptr %l1
  store %"compiler/effects:Verdict" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Verdict", ptr %rv
  ret %"compiler/effects:Verdict" %rr
}

declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"this value's Call" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"this lambda" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aVerdict_2e4 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@__olang_prog_scope = external thread_local(initialexec) global ptr
@olang_2esole_2ecompiler_2feffects_3aEffects_2e45 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2feffects_3aVerdict_2e7 = weak hidden constant i1 false
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d21 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a lambda" }>, align 8
@.d22 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a constructor" }>, align 8
@.d23 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a destructor" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a body" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 40
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 40
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0) #0 {
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

declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aVerdict_2e0 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 24
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 24
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e23 = weak hidden constant i1 false
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2feffects_3aEffects_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e26 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e29 = weak hidden constant i1 false
@.d26 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"; recursive" }>, align 8
@.d27 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"; always ends" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"call through a function value or an 'any', which may do anything" }>, align 8
@.d30 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"write a global" }>, align 8
@.d31 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"read a global that changes" }>, align 8
@.d32 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"write through what it was not given writably" }>, align 8
@.d33 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"call C" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@G_2ecompiler_2ftypes_2ePromNoalloc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoblock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNospawn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoextern = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapThreads = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromReturns = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2feffects_2enotReturning(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftypes_2ePromPure = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapCount = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feffects_2eEffectWords = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\7F\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feffects_2eGivResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2feffects_2eGivSlot = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivBound = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2feffects_2eGivNamed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2ePartAdapter = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feffects_2ehasBit(i64 %a0, i64 %a1)
@G_2ecompiler_2feffects_2ePartLambda = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@olang_loc_cce6b986552578d0_26bb880b6e07dfc = external constant [0 x i8]
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2elambdaFacts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eextern(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7ef30bd5545b1b3f_da1c1797c8787b93 = external constant [0 x i8]
@olang_loc_4055e0fe87b920f9_59f1ceb8b6607d = external constant [0 x i8]
@G_2ecompiler_2ftypes_2ePromiseNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_480f10282bdc13cf_4349ffb73b811f6b = external constant [0 x i8]
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinksOwnC(ptr %v0, ptr %a0)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ehasExport(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:part" %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H812d4871fea5544bd17001c04038a9fe(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H0900524597b2264f5a31dc7ea3fca989(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hc680bc8b736298027ff580de04f60380(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hfb9e5165fbc860148668cf342d052cc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_12d41178ea699117_cd5c06b5e62ab993 = external constant [0 x i8]
@olang_loc_bfb31f4e096fcfdd_9eff6572189cd471 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebuilt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edtorCalled(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a95aecd22ff58df7_af716a2d87a126b3 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_696967e496dd013f_3ccf8d6ad66b978b = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_97fbcd283fc57d27_f3da2d8a892755b3 = external constant [0 x i8]
@olang_loc_261689b2925f7f5_26a5fe8340cfcde1 = external constant [0 x i8]
@olang_loc_b6aab166389be830_fe1a1964ddaa5424 = external constant [0 x i8]
@olang_loc_28b83159130c3f56_5f8d6e7786c968a = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2eLen_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:pend" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2eAt_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutsJudged(ptr %v0, ptr %a0)
@G_2ecompiler_2feffects_2eGivMade = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_e33fbd58e0454875_653468874e31cf21 = external constant [0 x i8]
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecaptureSlot(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:pend" %a1)
@olang_loc_d8634726df7208f7_383307572af5b0b3 = external constant [0 x i8]
@olang_loc_994d18a8c74b163b_1372ae1002f7258f = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ePush_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %a0, %"compiler/effects:Facts" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H691765597a1d0d55e0f84306543aa643(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_H7835af935af759534f3892df019d3666(ptr %v0, ptr %a0, %"compiler/effects:pair" %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_H5e2f333902255d77192898689554d128(ptr %v0, ptr %a0, %"compiler/effects:pair" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_H1e7e683fc0332c06b6c705cd46691777(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_Ha1bc2f35f7d195c0ca99c509224bae7a(ptr %v0, ptr %a0, %"compiler/effects:pair" %a1, i1 %a2)
@G_2ecompiler_2feffects_2eoutParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feffects_2eoutLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\FC\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hec46674a538af874724ad5c9698b0829(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eLen_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:link" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eAt_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feffects_2eglobalParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8e774b84f9d07387_321b570aadbfd9f3 = external constant [0 x i8]
declare %"compiler/effects:root" @compiler_2feffects_3aroot_2ector(ptr %v0, i64 %a0, i1 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
@olang_loc_def19e55677a13ff_78d59d2dfbb79d83 = external constant [0 x i8]
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eSetAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/effects:Facts" %a2)
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epassCalls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritesUnowned(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallsThrough(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ethroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpand(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hca3b6abf349bf7326560c41fbdf5fb42(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Had7562134349141a1e65e244951d3fe8(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H17d172c890106e7669720f11d3813b09(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H5b4ed7dba3fb4e44f8784ebbf4461977(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eClear_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2eClear_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H0398947fe830469ce1a64c5da7c2d54d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4527323723b724269d0557de47b57e0e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eClear_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eDropsRun(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1339f6fe14a38149_c7d1650dc39f436d = external constant [0 x i8]
@olang_loc_b365fbc2fc2a8203_e371dcb77fb488d7 = external constant [0 x i8]
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eReturns(ptr %v0, ptr %a0)
@olang_loc_5b8067b2e95ea30f_d9100a71d97bc52b = external constant [0 x i8]
@G_2ecompiler_2feffects_2equickNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
@olang_loc_f9d1419be2a6bd97_a466df32bbf19e6b = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)

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
