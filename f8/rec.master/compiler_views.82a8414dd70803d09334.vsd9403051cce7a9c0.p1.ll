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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/views:Viewer" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/views:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:fact" = type { i64, i64, i32, i64, i64, i1, i64, %"compiler/source:Span", i64 }
%"compiler/views:place" = type { { i64, [2 x i64] }, i64, i64, i1 }
%"compiler/views:state" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:holding" = type { i64, %"compiler/views:view" }
%"compiler/views:view" = type { %"compiler/views:place", i64, i1, %"compiler/source:Span", i64, i64, %"compiler/source:Span", i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/views:tasked" = type { %"compiler/views:view", %"compiler/source:Span" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/views:naming" = type { i64, %"compiler/views:place" }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/views:loopFrame" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca ptr
  %l61 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca i1
  %l112 = alloca ptr
  %l113 = alloca i1
  %l129 = alloca { i64, ptr }
  %l137 = alloca ptr
  %l138 = alloca i1
  %l151 = alloca { i64, ptr }
  %l162 = alloca ptr
  %l163 = alloca i1
  %l175 = alloca ptr
  %l176 = alloca i1
  %l188 = alloca { i64, ptr }
  %l196 = alloca ptr
  %l197 = alloca i1
  %l214 = alloca ptr
  %l215 = alloca i1
  %l231 = alloca ptr
  %l232 = alloca i1
  %l245 = alloca { i64, ptr }
  %l256 = alloca ptr
  %l257 = alloca i1
  %l270 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l297 = alloca ptr
  %l298 = alloca i1
  %l314 = alloca { i64, ptr }
  %l328 = alloca { i64, ptr }
  %l338 = alloca ptr
  %l339 = alloca i1
  %l344 = alloca ptr
  %l345 = alloca i1
  %l357 = alloca { i64, ptr }
  %l366 = alloca ptr
  %l367 = alloca i1
  %l375 = alloca ptr
  %l376 = alloca i1
  %l389 = alloca { i64, ptr }
  %l392 = alloca ptr
  %l393 = alloca i1
  %l403 = alloca ptr
  %l404 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t6 = load ptr, ptr %l64, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l64, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l65, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l65, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb16
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t21 = load ptr, ptr %l70, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l70, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l71, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l71, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb16
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t36 = load ptr, ptr %l76, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l76, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 4
  store i1 %t42, ptr %l77, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l77, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %t50, ptr %t52)
  br label %bb17
bb17:
  br label %bb227
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t56 = load ptr, ptr %l85, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l85, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 18}
  %t62 = icmp eq i64 %t60, 5
  store i1 %t62, ptr %l86, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l86, !tbaa !21
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Promote", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t73, ptr %t75)
  br label %bb24
bb24:
  br label %bb227
bb25:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t79 = load ptr, ptr %l95, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb26, label %bb27
bb26:
  %t82 = load ptr, ptr %l95, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 18}
  %t85 = icmp eq i64 %t83, 6
  store i1 %t85, ptr %l96, !tbaa !21
  br label %bb27
bb27:
  %t86 = load i1, ptr %l96, !tbaa !21
  br i1 %t86, label %bb28, label %bb29
bb28:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l4, !tbaa !29
  br label %bb30
bb29:
  br label %bb57
bb30:
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Call", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l5, !tbaa !29
  %t98 = load ptr, ptr %l5, !tbaa !29
  store ptr %t98, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t99 = load ptr, ptr %l103, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t102 = load ptr, ptr %l103, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 5}
  %t105 = icmp eq i64 %t103, 0
  store i1 %t105, ptr %l104, !tbaa !21
  br label %bb32
bb32:
  %t106 = load i1, ptr %l104, !tbaa !21
  br i1 %t106, label %bb33, label %bb34
bb33:
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = getelementptr { i64, [3 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { i32 }, ptr %t109, i32 0, i32 0
  %t111 = load i32, ptr %t110
  store i32 %t111, ptr %l6, !tbaa !23
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t114 = load i32, ptr %l6, !tbaa !23
  %t116 = sext i32 %t114 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t113, i64 %t116)
  br label %bb36
bb36:
  br label %bb49
bb37:
  %t119 = load ptr, ptr %l5, !tbaa !29
  store ptr %t119, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t120 = load ptr, ptr %l112, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb38, label %bb39
bb38:
  %t123 = load ptr, ptr %l112, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 5}
  %t126 = icmp eq i64 %t124, 2
  store i1 %t126, ptr %l113, !tbaa !21
  br label %bb39
bb39:
  %t127 = load i1, ptr %l113, !tbaa !21
  br i1 %t127, label %bb40, label %bb41
bb40:
  %t128 = load ptr, ptr %l5, !tbaa !29
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { ptr }, ptr %t130, i32 0, i32 0
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l7, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t134 = load ptr, ptr %l7, !tbaa !29
  %t136 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t134, ptr %t136)
  br label %bb43
bb43:
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_3cbb6fb3b51c25bd_1e9ab5921d6290d1)
  unreachable
bb49:
  %t139 = load ptr, ptr %l4, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Call", ptr %t139, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t144 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t144, 0
  store i64 %t146, ptr %l10, !tbaa !24
  br label %bb50
bb50:
  %t148 = load i64, ptr %l9, !tbaa !24
  %t149 = load i64, ptr %l10, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb51, label %bb52
bb51:
  br label %bb56
bb52:
  br label %bb53
bb53:
  %t156 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t156, ptr %l129, !tbaa !27
  %t157 = load i64, ptr %l9, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr ptr, ptr %t160, i64 %t157
  %t162 = load ptr, ptr %t161, !tbaa !39
  %t166 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t162, ptr %t166)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t169 = load i64, ptr %l9, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l9, !tbaa !24
  br label %bb50
bb56:
  br label %bb227
bb57:
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t174 = load ptr, ptr %l137, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb58, label %bb59
bb58:
  %t177 = load ptr, ptr %l137, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 18}
  %t180 = icmp eq i64 %t178, 7
  store i1 %t180, ptr %l138, !tbaa !21
  br label %bb59
bb59:
  %t181 = load i1, ptr %l138, !tbaa !21
  br i1 %t181, label %bb60, label %bb61
bb60:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr { i64, [5 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t184, i32 0, i32 2
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l12, !tbaa !29
  br label %bb62
bb61:
  br label %bb71
bb62:
  %t188 = load ptr, ptr %l12, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Make", ptr %t188, i32 0, i32 2
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t193, 0
  store i64 %t195, ptr %l15, !tbaa !24
  br label %bb63
bb63:
  %t197 = load i64, ptr %l14, !tbaa !24
  %t198 = load i64, ptr %l15, !tbaa !24
  %t201 = icmp slt i64 %t197, %t198
  %t203 = xor i1 %t201, true
  br i1 %t203, label %bb64, label %bb65
bb64:
  br label %bb69
bb65:
  br label %bb66
bb66:
  %t205 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t205, ptr %l151, !tbaa !27
  %t206 = load i64, ptr %l14, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr ptr, ptr %t209, i64 %t206
  %t211 = load ptr, ptr %t210, !tbaa !39
  %t215 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t211, ptr %t215)
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t218 = load i64, ptr %l14, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l14, !tbaa !24
  br label %bb63
bb69:
  %t222 = load ptr, ptr %l12, !tbaa !29
  %t224 = getelementptr %"compiler/typed:Make", ptr %t222, i32 0, i32 3
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t226 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t225, ptr %t226)
  br label %bb70
bb70:
  br label %bb227
bb71:
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t230 = load ptr, ptr %l162, !tbaa !29
  %t231 = icmp ne ptr %t230, null
  br i1 %t231, label %bb72, label %bb73
bb72:
  %t233 = load ptr, ptr %l162, !tbaa !29
  %t234 = load i64, ptr %t233, !range !{i64 0, i64 18}
  %t236 = icmp eq i64 %t234, 8
  store i1 %t236, ptr %l163, !tbaa !21
  br label %bb73
bb73:
  %t237 = load i1, ptr %l163, !tbaa !21
  br i1 %t237, label %bb74, label %bb75
bb74:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr { i64, [5 x i64] }, ptr %t238, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t240, i32 0, i32 2
  %t242 = load ptr, ptr %t241
  store ptr %t242, ptr %l17, !tbaa !29
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t244 = load ptr, ptr %l17, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Collect", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t248 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t247, ptr %t248)
  br label %bb77
bb77:
  %t251 = load ptr, ptr %l17, !tbaa !29
  %t253 = getelementptr %"compiler/typed:Collect", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t256 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t254, ptr %t256)
  br label %bb78
bb78:
  br label %bb227
bb79:
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l175, !tbaa !29
  store i1 false, ptr %l176, !tbaa !21
  %t260 = load ptr, ptr %l175, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb80, label %bb81
bb80:
  %t263 = load ptr, ptr %l175, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 18}
  %t266 = icmp eq i64 %t264, 9
  store i1 %t266, ptr %l176, !tbaa !21
  br label %bb81
bb81:
  %t267 = load i1, ptr %l176, !tbaa !21
  br i1 %t267, label %bb82, label %bb83
bb82:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t270, i32 0, i32 4
  %t272 = load { i64, ptr }, ptr %t271
  store { i64, ptr } %t272, ptr %l18, !tbaa !27
  br label %bb84
bb83:
  br label %bb92
bb84:
  %t274 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t274, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t276 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t276, 0
  store i64 %t278, ptr %l21, !tbaa !24
  br label %bb85
bb85:
  %t280 = load i64, ptr %l20, !tbaa !24
  %t281 = load i64, ptr %l21, !tbaa !24
  %t284 = icmp slt i64 %t280, %t281
  %t286 = xor i1 %t284, true
  br i1 %t286, label %bb86, label %bb87
bb86:
  br label %bb91
bb87:
  br label %bb88
bb88:
  %t288 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t288, ptr %l188, !tbaa !27
  %t289 = load i64, ptr %l20, !tbaa !24
  %t291 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr ptr, ptr %t292, i64 %t289
  %t294 = load ptr, ptr %t293, !tbaa !39
  %t298 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t294, ptr %t298)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t301 = load i64, ptr %l20, !tbaa !24
  %t303 = add i64 %t301, 1
  store i64 %t303, ptr %l20, !tbaa !24
  br label %bb85
bb91:
  br label %bb227
bb92:
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l196, !tbaa !29
  store i1 false, ptr %l197, !tbaa !21
  %t306 = load ptr, ptr %l196, !tbaa !29
  %t307 = icmp ne ptr %t306, null
  br i1 %t307, label %bb93, label %bb94
bb93:
  %t309 = load ptr, ptr %l196, !tbaa !29
  %t310 = load i64, ptr %t309, !range !{i64 0, i64 18}
  %t312 = icmp eq i64 %t310, 10
  store i1 %t312, ptr %l197, !tbaa !21
  br label %bb94
bb94:
  %t313 = load i1, ptr %l197, !tbaa !21
  br i1 %t313, label %bb95, label %bb96
bb95:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr { i64, [5 x i64] }, ptr %t314, i32 0, i32 1
  %t317 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t316, i32 0, i32 2
  %t318 = load ptr, ptr %t317
  store ptr %t318, ptr %l23, !tbaa !29
  br label %bb97
bb96:
  br label %bb101
bb97:
  %t320 = load ptr, ptr %l23, !tbaa !29
  %t322 = getelementptr %"compiler/typed:Slice", ptr %t320, i32 0, i32 0
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t325 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %t323, ptr %t325)
  br label %bb98
bb98:
  %t328 = load ptr, ptr %l23, !tbaa !29
  %t330 = getelementptr %"compiler/typed:Slice", ptr %t328, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t333 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t331, ptr %t333)
  br label %bb99
bb99:
  %t336 = load ptr, ptr %l23, !tbaa !29
  %t338 = getelementptr %"compiler/typed:Slice", ptr %t336, i32 0, i32 2
  %t339 = load ptr, ptr %t338, !tbaa !29
  %t341 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t339, ptr %t341)
  br label %bb100
bb100:
  br label %bb227
bb101:
  %t344 = load ptr, ptr %l0, !tbaa !29
  store ptr %t344, ptr %l214, !tbaa !29
  store i1 false, ptr %l215, !tbaa !21
  %t345 = load ptr, ptr %l214, !tbaa !29
  %t346 = icmp ne ptr %t345, null
  br i1 %t346, label %bb102, label %bb103
bb102:
  %t348 = load ptr, ptr %l214, !tbaa !29
  %t349 = load i64, ptr %t348, !range !{i64 0, i64 18}
  %t351 = icmp eq i64 %t349, 11
  store i1 %t351, ptr %l215, !tbaa !21
  br label %bb103
bb103:
  %t352 = load i1, ptr %l215, !tbaa !21
  br i1 %t352, label %bb104, label %bb105
bb104:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = getelementptr { i64, [5 x i64] }, ptr %t353, i32 0, i32 1
  %t356 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t355, i32 0, i32 2
  %t357 = load ptr, ptr %t356
  store ptr %t357, ptr %l24, !tbaa !29
  br label %bb106
bb105:
  br label %bb110
bb106:
  %t359 = load ptr, ptr %l24, !tbaa !29
  %t361 = getelementptr %"compiler/typed:Cond", ptr %t359, i32 0, i32 0
  %t362 = load ptr, ptr %t361, !tbaa !29
  %t364 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t362, ptr %t364)
  br label %bb107
bb107:
  %t367 = load ptr, ptr %l24, !tbaa !29
  %t369 = getelementptr %"compiler/typed:Cond", ptr %t367, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t371 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t370, ptr %t371)
  br label %bb108
bb108:
  %t374 = load ptr, ptr %l24, !tbaa !29
  %t376 = getelementptr %"compiler/typed:Cond", ptr %t374, i32 0, i32 2
  %t377 = load ptr, ptr %t376, !tbaa !29
  %t379 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t377, ptr %t379)
  br label %bb109
bb109:
  br label %bb227
bb110:
  %t382 = load ptr, ptr %l0, !tbaa !29
  store ptr %t382, ptr %l231, !tbaa !29
  store i1 false, ptr %l232, !tbaa !21
  %t383 = load ptr, ptr %l231, !tbaa !29
  %t384 = icmp ne ptr %t383, null
  br i1 %t384, label %bb111, label %bb112
bb111:
  %t386 = load ptr, ptr %l231, !tbaa !29
  %t387 = load i64, ptr %t386, !range !{i64 0, i64 18}
  %t389 = icmp eq i64 %t387, 12
  store i1 %t389, ptr %l232, !tbaa !21
  br label %bb112
bb112:
  %t390 = load i1, ptr %l232, !tbaa !21
  br i1 %t390, label %bb113, label %bb114
bb113:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr { i64, [5 x i64] }, ptr %t391, i32 0, i32 1
  %t394 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t393, i32 0, i32 2
  %t395 = load ptr, ptr %t394
  store ptr %t395, ptr %l25, !tbaa !29
  br label %bb115
bb114:
  br label %bb124
bb115:
  %t397 = load ptr, ptr %l25, !tbaa !29
  %t399 = getelementptr %"compiler/typed:Seq", ptr %t397, i32 0, i32 0
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  store { i64, ptr } %t400, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t402 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t404 = extractvalue { i64, ptr } %t402, 0
  store i64 %t404, ptr %l28, !tbaa !24
  br label %bb116
bb116:
  %t406 = load i64, ptr %l27, !tbaa !24
  %t407 = load i64, ptr %l28, !tbaa !24
  %t410 = icmp slt i64 %t406, %t407
  %t412 = xor i1 %t410, true
  br i1 %t412, label %bb117, label %bb118
bb117:
  br label %bb122
bb118:
  br label %bb119
bb119:
  %t414 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t414, ptr %l245, !tbaa !27
  %t415 = load i64, ptr %l27, !tbaa !24
  %t417 = getelementptr { i64, ptr }, ptr %l245, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = getelementptr ptr, ptr %t418, i64 %t415
  %t420 = load ptr, ptr %t419, !tbaa !39
  %t424 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsStmt(ptr %v0, ptr %v1, ptr %t420, ptr %t424)
  br label %bb120
bb120:
  br label %bb121
bb121:
  %t427 = load i64, ptr %l27, !tbaa !24
  %t429 = add i64 %t427, 1
  store i64 %t429, ptr %l27, !tbaa !24
  br label %bb116
bb122:
  %t431 = load ptr, ptr %l25, !tbaa !29
  %t433 = getelementptr %"compiler/typed:Seq", ptr %t431, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !29
  %t435 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t434, ptr %t435)
  br label %bb123
bb123:
  br label %bb227
bb124:
  %t438 = load ptr, ptr %l0, !tbaa !29
  store ptr %t438, ptr %l256, !tbaa !29
  store i1 false, ptr %l257, !tbaa !21
  %t439 = load ptr, ptr %l256, !tbaa !29
  %t440 = icmp ne ptr %t439, null
  br i1 %t440, label %bb125, label %bb126
bb125:
  %t442 = load ptr, ptr %l256, !tbaa !29
  %t443 = load i64, ptr %t442, !range !{i64 0, i64 18}
  %t445 = icmp eq i64 %t443, 13
  store i1 %t445, ptr %l257, !tbaa !21
  br label %bb126
bb126:
  %t446 = load i1, ptr %l257, !tbaa !21
  br i1 %t446, label %bb127, label %bb128
bb127:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr { i64, [5 x i64] }, ptr %t447, i32 0, i32 1
  %t450 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t449, i32 0, i32 2
  %t451 = load ptr, ptr %t450
  store ptr %t451, ptr %l30, !tbaa !29
  br label %bb129
bb128:
  br label %bb145
bb129:
  %t453 = load ptr, ptr %l30, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Match", ptr %t453, i32 0, i32 0
  %t456 = load { i64, ptr }, ptr %t455, !tbaa !27
  store { i64, ptr } %t456, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t458 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t460 = extractvalue { i64, ptr } %t458, 0
  store i64 %t460, ptr %l33, !tbaa !24
  br label %bb130
bb130:
  %t462 = load i64, ptr %l32, !tbaa !24
  %t463 = load i64, ptr %l33, !tbaa !24
  %t466 = icmp slt i64 %t462, %t463
  %t468 = xor i1 %t466, true
  br i1 %t468, label %bb131, label %bb132
bb131:
  br label %bb136
bb132:
  br label %bb133
bb133:
  %t470 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t470, ptr %l270, !tbaa !27
  %t471 = load i64, ptr %l32, !tbaa !24
  %t473 = getelementptr { i64, ptr }, ptr %l270, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = getelementptr ptr, ptr %t474, i64 %t471
  %t476 = load ptr, ptr %t475, !tbaa !39
  %t480 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsStmt(ptr %v0, ptr %v1, ptr %t476, ptr %t480)
  br label %bb134
bb134:
  br label %bb135
bb135:
  %t483 = load i64, ptr %l32, !tbaa !24
  %t485 = add i64 %t483, 1
  store i64 %t485, ptr %l32, !tbaa !24
  br label %bb130
bb136:
  %t487 = load ptr, ptr %l30, !tbaa !29
  %t489 = getelementptr %"compiler/typed:Match", ptr %t487, i32 0, i32 1
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  store { i64, ptr } %t490, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t492 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t494 = extractvalue { i64, ptr } %t492, 0
  store i64 %t494, ptr %l37, !tbaa !24
  br label %bb137
bb137:
  %t496 = load i64, ptr %l36, !tbaa !24
  %t497 = load i64, ptr %l37, !tbaa !24
  %t500 = icmp slt i64 %t496, %t497
  %t502 = xor i1 %t500, true
  br i1 %t502, label %bb138, label %bb139
bb138:
  br label %bb143
bb139:
  br label %bb140
bb140:
  %t504 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t504, ptr %l286, !tbaa !27
  %t505 = load i64, ptr %l36, !tbaa !24
  %t507 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t508 = load ptr, ptr %t507, !tbaa !27
  %t509 = getelementptr ptr, ptr %t508, i64 %t505
  %t510 = load ptr, ptr %t509, !tbaa !39
  %t514 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsArm(ptr %v0, ptr %v1, ptr %t510, ptr %t514)
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t517 = load i64, ptr %l36, !tbaa !24
  %t519 = add i64 %t517, 1
  store i64 %t519, ptr %l36, !tbaa !24
  br label %bb137
bb143:
  %t521 = load ptr, ptr %l30, !tbaa !29
  %t523 = getelementptr %"compiler/typed:Match", ptr %t521, i32 0, i32 2
  %t524 = load ptr, ptr %t523, !tbaa !29
  %t525 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsArm(ptr %v0, ptr %v1, ptr %t524, ptr %t525)
  br label %bb144
bb144:
  br label %bb227
bb145:
  %t528 = load ptr, ptr %l0, !tbaa !29
  store ptr %t528, ptr %l297, !tbaa !29
  store i1 false, ptr %l298, !tbaa !21
  %t529 = load ptr, ptr %l297, !tbaa !29
  %t530 = icmp ne ptr %t529, null
  br i1 %t530, label %bb146, label %bb147
bb146:
  %t532 = load ptr, ptr %l297, !tbaa !29
  %t533 = load i64, ptr %t532, !range !{i64 0, i64 18}
  %t535 = icmp eq i64 %t533, 14
  store i1 %t535, ptr %l298, !tbaa !21
  br label %bb147
bb147:
  %t536 = load i1, ptr %l298, !tbaa !21
  br i1 %t536, label %bb148, label %bb149
bb148:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t539 = getelementptr { i64, [5 x i64] }, ptr %t537, i32 0, i32 1
  %t540 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t539, i32 0, i32 2
  %t541 = load ptr, ptr %t540
  store ptr %t541, ptr %l39, !tbaa !29
  br label %bb150
bb149:
  br label %bb166
bb150:
  %t543 = load ptr, ptr %l39, !tbaa !29
  %t545 = getelementptr %"compiler/typed:Try", ptr %t543, i32 0, i32 0
  %t546 = load ptr, ptr %t545, !tbaa !29
  %t547 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t546, ptr %t547)
  br label %bb151
bb151:
  %t550 = load ptr, ptr %l39, !tbaa !29
  %t552 = getelementptr %"compiler/typed:Try", ptr %t550, i32 0, i32 1
  %t553 = load { i64, ptr }, ptr %t552, !tbaa !27
  store { i64, ptr } %t553, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t555 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t557 = extractvalue { i64, ptr } %t555, 0
  store i64 %t557, ptr %l42, !tbaa !24
  br label %bb152
bb152:
  %t559 = load i64, ptr %l41, !tbaa !24
  %t560 = load i64, ptr %l42, !tbaa !24
  %t563 = icmp slt i64 %t559, %t560
  %t565 = xor i1 %t563, true
  br i1 %t565, label %bb153, label %bb154
bb153:
  br label %bb165
bb154:
  br label %bb155
bb155:
  %t567 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t567, ptr %l314, !tbaa !27
  %t568 = load i64, ptr %l41, !tbaa !24
  %t570 = getelementptr { i64, ptr }, ptr %l314, i32 0, i32 1
  %t571 = load ptr, ptr %t570, !tbaa !27
  %t572 = getelementptr ptr, ptr %t571, i64 %t568
  %t573 = load ptr, ptr %t572, !tbaa !39
  store ptr %t573, ptr %l43, !tbaa !29
  %t575 = load ptr, ptr %l43, !tbaa !29
  %t577 = getelementptr %"compiler/typed:Clause", ptr %t575, i32 0, i32 3
  %t578 = load ptr, ptr %t577, !tbaa !29
  %t579 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t578, ptr %t579)
  br label %bb156
bb156:
  %t582 = load ptr, ptr %l43, !tbaa !29
  %t584 = getelementptr %"compiler/typed:Clause", ptr %t582, i32 0, i32 4
  %t585 = load { i64, ptr }, ptr %t584, !tbaa !27
  store { i64, ptr } %t585, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t587 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t589 = extractvalue { i64, ptr } %t587, 0
  store i64 %t589, ptr %l46, !tbaa !24
  br label %bb157
bb157:
  %t591 = load i64, ptr %l45, !tbaa !24
  %t592 = load i64, ptr %l46, !tbaa !24
  %t595 = icmp slt i64 %t591, %t592
  %t597 = xor i1 %t595, true
  br i1 %t597, label %bb158, label %bb159
bb158:
  br label %bb163
bb159:
  br label %bb160
bb160:
  %t599 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t599, ptr %l328, !tbaa !27
  %t600 = load i64, ptr %l45, !tbaa !24
  %t602 = getelementptr { i64, ptr }, ptr %l328, i32 0, i32 1
  %t603 = load ptr, ptr %t602, !tbaa !27
  %t604 = getelementptr ptr, ptr %t603, i64 %t600
  %t605 = load ptr, ptr %t604, !tbaa !39
  %t609 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t605, ptr %t609)
  br label %bb161
bb161:
  br label %bb162
bb162:
  %t612 = load i64, ptr %l45, !tbaa !24
  %t614 = add i64 %t612, 1
  store i64 %t614, ptr %l45, !tbaa !24
  br label %bb157
bb163:
  br label %bb164
bb164:
  %t616 = load i64, ptr %l41, !tbaa !24
  %t618 = add i64 %t616, 1
  store i64 %t618, ptr %l41, !tbaa !24
  br label %bb152
bb165:
  br label %bb227
bb166:
  %t620 = load ptr, ptr %l0, !tbaa !29
  store ptr %t620, ptr %l338, !tbaa !29
  store i1 false, ptr %l339, !tbaa !21
  %t621 = load ptr, ptr %l338, !tbaa !29
  %t622 = icmp ne ptr %t621, null
  br i1 %t622, label %bb167, label %bb168
bb167:
  %t624 = load ptr, ptr %l338, !tbaa !29
  %t625 = load i64, ptr %t624, !range !{i64 0, i64 18}
  %t627 = icmp eq i64 %t625, 15
  store i1 %t627, ptr %l339, !tbaa !21
  br label %bb168
bb168:
  %t628 = load i1, ptr %l339, !tbaa !21
  br i1 %t628, label %bb169, label %bb170
bb169:
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t631 = getelementptr { i64, [5 x i64] }, ptr %t629, i32 0, i32 1
  %t632 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t631, i32 0, i32 2
  %t633 = load ptr, ptr %t632
  store ptr %t633, ptr %l48, !tbaa !29
  br label %bb171
bb170:
  br label %bb197
bb171:
  %t635 = load ptr, ptr %l48, !tbaa !29
  store ptr %t635, ptr %l344, !tbaa !29
  store i1 false, ptr %l345, !tbaa !21
  %t636 = load ptr, ptr %l344, !tbaa !29
  %t637 = icmp ne ptr %t636, null
  br i1 %t637, label %bb172, label %bb173
bb172:
  %t639 = load ptr, ptr %l344, !tbaa !29
  %t640 = load i64, ptr %t639, !range !{i64 0, i64 3}
  %t642 = icmp eq i64 %t640, 1
  store i1 %t642, ptr %l345, !tbaa !21
  br label %bb173
bb173:
  %t643 = load i1, ptr %l345, !tbaa !21
  br i1 %t643, label %bb174, label %bb175
bb174:
  %t644 = load ptr, ptr %l48, !tbaa !29
  %t646 = getelementptr { i64, [4 x i64] }, ptr %t644, i32 0, i32 1
  %t647 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t646, i32 0, i32 1
  %t648 = load { i64, ptr }, ptr %t647
  store { i64, ptr } %t648, ptr %l49, !tbaa !27
  br label %bb176
bb175:
  br label %bb184
bb176:
  %t650 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t650, ptr %l50, !tbaa !27
  store i64 0, ptr %l51, !tbaa !24
  %t652 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t654 = extractvalue { i64, ptr } %t652, 0
  store i64 %t654, ptr %l52, !tbaa !24
  br label %bb177
bb177:
  %t656 = load i64, ptr %l51, !tbaa !24
  %t657 = load i64, ptr %l52, !tbaa !24
  %t660 = icmp slt i64 %t656, %t657
  %t662 = xor i1 %t660, true
  br i1 %t662, label %bb178, label %bb179
bb178:
  br label %bb183
bb179:
  br label %bb180
bb180:
  %t664 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t664, ptr %l357, !tbaa !27
  %t665 = load i64, ptr %l51, !tbaa !24
  %t667 = getelementptr { i64, ptr }, ptr %l357, i32 0, i32 1
  %t668 = load ptr, ptr %t667, !tbaa !27
  %t669 = getelementptr ptr, ptr %t668, i64 %t665
  %t670 = load ptr, ptr %t669, !tbaa !39
  %t674 = getelementptr %"compiler/typed:Capture", ptr %t670, i32 0, i32 1
  %t675 = load ptr, ptr %t674, !tbaa !29
  %t677 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t675, ptr %t677)
  br label %bb181
bb181:
  br label %bb182
bb182:
  %t680 = load i64, ptr %l51, !tbaa !24
  %t682 = add i64 %t680, 1
  store i64 %t682, ptr %l51, !tbaa !24
  br label %bb177
bb183:
  br label %bb196
bb184:
  %t684 = load ptr, ptr %l48, !tbaa !29
  store ptr %t684, ptr %l366, !tbaa !29
  store i1 false, ptr %l367, !tbaa !21
  %t685 = load ptr, ptr %l366, !tbaa !29
  %t686 = icmp ne ptr %t685, null
  br i1 %t686, label %bb185, label %bb186
bb185:
  %t688 = load ptr, ptr %l366, !tbaa !29
  %t689 = load i64, ptr %t688, !range !{i64 0, i64 3}
  %t691 = icmp eq i64 %t689, 2
  store i1 %t691, ptr %l367, !tbaa !21
  br label %bb186
bb186:
  %t692 = load i1, ptr %l367, !tbaa !21
  br i1 %t692, label %bb187, label %bb188
bb187:
  %t693 = load ptr, ptr %l48, !tbaa !29
  %t695 = getelementptr { i64, [4 x i64] }, ptr %t693, i32 0, i32 1
  %t696 = getelementptr { i32, ptr, i32 }, ptr %t695, i32 0, i32 1
  %t697 = load ptr, ptr %t696
  store ptr %t697, ptr %l54, !tbaa !29
  br label %bb189
bb188:
  br label %bb191
bb189:
  %t699 = load ptr, ptr %l54, !tbaa !29
  %t701 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t699, ptr %t701)
  br label %bb190
bb190:
  br label %bb196
bb191:
  br i1 true, label %bb192, label %bb193
bb192:
  br label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb196
bb195:
  call void @__olang_check_failed(ptr @olang_loc_87083398c1f96e8c_18c50ee403fa2840)
  unreachable
bb196:
  br label %bb227
bb197:
  %t704 = load ptr, ptr %l0, !tbaa !29
  store ptr %t704, ptr %l375, !tbaa !29
  store i1 false, ptr %l376, !tbaa !21
  %t705 = load ptr, ptr %l375, !tbaa !29
  %t706 = icmp ne ptr %t705, null
  br i1 %t706, label %bb198, label %bb199
bb198:
  %t708 = load ptr, ptr %l375, !tbaa !29
  %t709 = load i64, ptr %t708, !range !{i64 0, i64 18}
  %t711 = icmp eq i64 %t709, 16
  store i1 %t711, ptr %l376, !tbaa !21
  br label %bb199
bb199:
  %t712 = load i1, ptr %l376, !tbaa !21
  br i1 %t712, label %bb200, label %bb201
bb200:
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t715 = getelementptr { i64, [5 x i64] }, ptr %t713, i32 0, i32 1
  %t716 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t715, i32 0, i32 2
  %t717 = load ptr, ptr %t716
  store ptr %t717, ptr %l55, !tbaa !29
  br label %bb202
bb201:
  br label %bb215
bb202:
  %t719 = load ptr, ptr %l55, !tbaa !29
  %t721 = getelementptr %"compiler/typed:Text", ptr %t719, i32 0, i32 0
  %t722 = load { i64, ptr }, ptr %t721, !tbaa !27
  store { i64, ptr } %t722, ptr %l56, !tbaa !27
  store i64 0, ptr %l57, !tbaa !24
  %t724 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t726 = extractvalue { i64, ptr } %t724, 0
  store i64 %t726, ptr %l58, !tbaa !24
  br label %bb203
bb203:
  %t728 = load i64, ptr %l57, !tbaa !24
  %t729 = load i64, ptr %l58, !tbaa !24
  %t732 = icmp slt i64 %t728, %t729
  %t734 = xor i1 %t732, true
  br i1 %t734, label %bb204, label %bb205
bb204:
  br label %bb214
bb205:
  br label %bb206
bb206:
  %t736 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t736, ptr %l389, !tbaa !27
  %t737 = load i64, ptr %l57, !tbaa !24
  %t739 = getelementptr { i64, ptr }, ptr %l389, i32 0, i32 1
  %t740 = load ptr, ptr %t739, !tbaa !27
  %t741 = getelementptr ptr, ptr %t740, i64 %t737
  %t742 = load ptr, ptr %t741, !tbaa !39
  store ptr %t742, ptr %l59, !tbaa !29
  %t744 = load ptr, ptr %l59, !tbaa !29
  store ptr %t744, ptr %l392, !tbaa !29
  store i1 false, ptr %l393, !tbaa !21
  %t745 = load ptr, ptr %l392, !tbaa !29
  %t746 = icmp ne ptr %t745, null
  br i1 %t746, label %bb207, label %bb208
bb207:
  %t748 = load ptr, ptr %l392, !tbaa !29
  %t749 = load i64, ptr %t748, !range !{i64 0, i64 2}
  %t751 = icmp eq i64 %t749, 1
  store i1 %t751, ptr %l393, !tbaa !21
  br label %bb208
bb208:
  %t752 = load i1, ptr %l393, !tbaa !21
  br i1 %t752, label %bb209, label %bb210
bb209:
  %t753 = load ptr, ptr %l59, !tbaa !29
  %t755 = getelementptr { i64, [2 x i64] }, ptr %t753, i32 0, i32 1
  %t756 = getelementptr { ptr }, ptr %t755, i32 0, i32 0
  %t757 = load ptr, ptr %t756
  %t761 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t757, ptr %t761)
  br label %bb211
bb210:
  br label %bb212
bb211:
  br label %bb212
bb212:
  br label %bb213
bb213:
  %t764 = load i64, ptr %l57, !tbaa !24
  %t766 = add i64 %t764, 1
  store i64 %t766, ptr %l57, !tbaa !24
  br label %bb203
bb214:
  br label %bb227
bb215:
  %t768 = load ptr, ptr %l0, !tbaa !29
  store ptr %t768, ptr %l403, !tbaa !29
  store i1 false, ptr %l404, !tbaa !21
  %t769 = load ptr, ptr %l403, !tbaa !29
  %t770 = icmp ne ptr %t769, null
  br i1 %t770, label %bb216, label %bb217
bb216:
  %t772 = load ptr, ptr %l403, !tbaa !29
  %t773 = load i64, ptr %t772, !range !{i64 0, i64 18}
  %t775 = icmp eq i64 %t773, 17
  store i1 %t775, ptr %l404, !tbaa !21
  br label %bb217
bb217:
  %t776 = load i1, ptr %l404, !tbaa !21
  br i1 %t776, label %bb218, label %bb219
bb218:
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t779 = getelementptr { i64, [5 x i64] }, ptr %t777, i32 0, i32 1
  %t780 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t779, i32 0, i32 2
  %t781 = load ptr, ptr %t780
  store ptr %t781, ptr %l61, !tbaa !29
  br label %bb220
bb219:
  br label %bb222
bb220:
  %t783 = load ptr, ptr %l61, !tbaa !29
  %t785 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t783, ptr %t785)
  br label %bb221
bb221:
  br label %bb227
bb222:
  br i1 true, label %bb223, label %bb224
bb223:
  br label %bb225
bb224:
  br label %bb226
bb225:
  br label %bb227
bb226:
  call void @__olang_check_failed(ptr @olang_loc_b5f5b909b97f4b87_db04b2c3237782bb)
  unreachable
bb227:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t6 = load ptr, ptr %l9, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t20, ptr %t22)
  br label %bb9
bb9:
  br label %bb44
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 8}
  %t32 = icmp eq i64 %t30, 3
  store i1 %t32, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t36, i32 0, i32 2
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %t40, ptr %t42)
  br label %bb16
bb16:
  br label %bb44
bb17:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t46 = load ptr, ptr %l27, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb18, label %bb19
bb18:
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l28, !tbaa !21
  br label %bb19
bb19:
  %t53 = load i1, ptr %l28, !tbaa !21
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Elem", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %t63, ptr %t65)
  br label %bb23
bb23:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Elem", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t71, ptr %t73)
  br label %bb24
bb24:
  br label %bb44
bb25:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t77 = load ptr, ptr %l41, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb26, label %bb27
bb26:
  %t80 = load ptr, ptr %l41, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 5
  store i1 %t83, ptr %l42, !tbaa !21
  br label %bb27
bb27:
  %t84 = load i1, ptr %l42, !tbaa !21
  br i1 %t84, label %bb28, label %bb29
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l5, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Payload", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %t94, ptr %t96)
  br label %bb31
bb31:
  br label %bb44
bb32:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb33, label %bb34
bb33:
  %t103 = load ptr, ptr %l51, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 8}
  %t106 = icmp eq i64 %t104, 6
  store i1 %t106, ptr %l52, !tbaa !21
  br label %bb34
bb34:
  %t107 = load i1, ptr %l52, !tbaa !21
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t114, ptr %t116)
  br label %bb38
bb38:
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_f21fc7c42b27f081_20ede69b6f10d945)
  unreachable
bb44:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eGather(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l42 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l59 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i64
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 35
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:Viewer", ptr %t8, i32 0, i32 1
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l14
  br label %bb4
bb4:
  %t13 = load i64, ptr %l14, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb7:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l21, !tbaa !24
  store i64 %t40, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l18, !tbaa !24
  store i64 %t41, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l2, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l7, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/views:Viewer", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l42
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l42, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 3
  %t70 = load i64, ptr %t69, !tbaa !24
  store i64 %t70, ptr %l8, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/views:Viewer", ptr %t72, i32 0, i32 34
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l46, !tbaa !27
  %t76 = load i64, ptr %l7, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %t79, i64 %t76
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !37
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t81, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t83, ptr %l49
  br label %bb16
bb16:
  %t84 = load i1, ptr %l49, !tbaa !21
  br i1 %t84, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb20
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/views:Viewer", ptr %t85, i32 0, i32 33
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t87, i64 %t88)
  store i1 %t91, ptr %l54
  br label %bb19
bb19:
  %t92 = load i1, ptr %l54, !tbaa !21
  store i1 %t92, ptr %l50, !tbaa !21
  br label %bb20
bb20:
  %t93 = load i1, ptr %l50, !tbaa !21
  br i1 %t93, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb24
bb22:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/views:Kept", ptr %t94, i32 0, i32 7
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_Hffe51834a288d097bc653a6423d7b5a2(ptr %v1, ptr %t96, i64 %t97)
  store i1 %t100, ptr %l59
  br label %bb23
bb23:
  %t101 = load i1, ptr %l59, !tbaa !21
  store i1 %t101, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t102 = load i1, ptr %l55, !tbaa !21
  br i1 %t102, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb28
bb26:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr %"compiler/views:Kept", ptr %t103, i32 0, i32 5
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v1, ptr %t105, i64 %t106)
  store i1 %t109, ptr %l64
  br label %bb27
bb27:
  %t110 = load i1, ptr %l64, !tbaa !21
  store i1 %t110, ptr %l60, !tbaa !21
  br label %bb28
bb28:
  %t111 = load i1, ptr %l60, !tbaa !21
  br i1 %t111, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr %"compiler/views:Kept", ptr %t112, i32 0, i32 7
  store ptr %t114, ptr %l66, !tbaa !29
  %t115 = load i64, ptr %l8, !tbaa !24
  store i64 %t115, ptr %l67, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l8, !tbaa !24
  %t120 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaries(ptr %v0, ptr %v1, ptr %t116, i64 %t117)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l70
  br label %bb32
bb32:
  %t121 = load ptr, ptr %l66, !tbaa !29
  %t122 = load i64, ptr %l67, !tbaa !24
  %t123 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H46d34990adaac4ca3e42bec6b3496b28(ptr %v1, ptr %v1, ptr %t121, i64 %t122, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb34:
  %t124 = load i64, ptr %l6, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l6, !tbaa !24
  br label %bb11
bb35:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRun(ptr %v0, ptr %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca %"compiler/views:Kept"
  %t1 = alloca %"compiler/views:Kept", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fviews_3aKept_2ector(ptr %t1, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %t1, i64 296, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 296, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l2, i64 296, i1 false)
  %t5 = load ptr, ptr %lp1
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRunKept(ptr %v0, ptr %v0, ptr %a0, ptr %t5)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRunKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i1
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
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l44 = alloca i64
  %l46 = alloca i64
  %l51 = alloca ptr
  %l60 = alloca ptr
  %l62 = alloca i64
  %l72 = alloca i1
  %l79 = alloca i1
  %l85 = alloca i1
  %l91 = alloca i1
  %l101 = alloca i64
  %l104 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i64
  %l130 = alloca ptr
  %l131 = alloca i64
  %l133 = alloca %"compiler/views:summary"
  %l138 = alloca ptr
  %l141 = alloca i64
  %l143 = alloca i64
  %l148 = alloca i32
  %l152 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca ptr
  %l164 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i64
  %l171 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l181 = alloca i1
  %l186 = alloca i64
  %l190 = alloca i64
  %l193 = alloca i64
  %l212 = alloca i64
  %l215 = alloca i64
  %l217 = alloca i64
  %l222 = alloca i64
  %l225 = alloca i64
  %l226 = alloca i64
  %l230 = alloca i64
  %l233 = alloca i1
  %l234 = alloca ptr
  %l236 = alloca ptr
  %l240 = alloca i64
  %l241 = alloca i64
  %l242 = alloca i1
  %l246 = alloca i64
  %l249 = alloca i64
  %l271 = alloca i64
  %l276 = alloca i64
  %l279 = alloca i64
  %l297 = alloca ptr
  %l301 = alloca i64
  %l307 = alloca i1
  %l315 = alloca i64
  %l320 = alloca i64
  %l323 = alloca i64
  %l341 = alloca ptr
  %l345 = alloca i64
  %s2 = alloca %olang.scope
  %t203 = alloca %"compiler/views:summary", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l44, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l46
  br label %bb2
bb2:
  %t15 = load i64, ptr %l44, !tbaa !24
  %t16 = load i64, ptr %l46, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l51
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l51, !tbaa !29
  store ptr %t26, ptr %l4, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/load:Module", ptr %t27, i32 0, i32 4
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = icmp slt i64 %t30, 0
  br i1 %t32, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb8:
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = getelementptr %"compiler/load:Module", ptr %t34, i32 0, i32 6
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/views:Viewer", ptr %t43, i32 0, i32 5
  store ptr %t45, ptr %l60, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = getelementptr %"compiler/load:Module", ptr %t46, i32 0, i32 4
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l62, !tbaa !24
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/load:Module", ptr %t50, i32 0, i32 6
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  br i1 %t55, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  call void @__olang_check_failed(ptr @olang_loc_82903f089977a4a2_6ca1fe8e95ddb76e)
  unreachable
bb13:
  br label %bb14
bb14:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 6
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t63 = getelementptr %"compiler/source:Source", ptr %t60, i32 0, i32 1
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  %t65 = load ptr, ptr %l60, !tbaa !29
  %t66 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v0, ptr %t65, i64 %t66, { i64, ptr } %t64)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/load:Module", ptr %t68, i32 0, i32 2
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t71, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t73, ptr %l72
  br label %bb17
bb17:
  %t74 = load i1, ptr %l72, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/views:Viewer", ptr %t75, i32 0, i32 6
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 4
  %t81 = load i64, ptr %t80, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t77, i64 %t81, i1 true)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = getelementptr %"compiler/load:Module", ptr %t84, i32 0, i32 2
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t87, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t89, ptr %l79
  br label %bb22
bb22:
  %t90 = load i1, ptr %l79, !tbaa !21
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t94 = getelementptr %"compiler/load:Module", ptr %t92, i32 0, i32 4
  %t95 = load i64, ptr %t94, !tbaa !24
  %t98 = getelementptr %"compiler/views:Viewer", ptr %t91, i32 0, i32 7
  store i64 %t95, ptr %t98, !tbaa !24
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t99 = load ptr, ptr %l4, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t102, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t104, ptr %l85
  br label %bb26
bb26:
  %t105 = load i1, ptr %l85, !tbaa !21
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr %"compiler/load:Module", ptr %t107, i32 0, i32 4
  %t110 = load i64, ptr %t109, !tbaa !24
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t106, i32 0, i32 8
  store i64 %t110, ptr %t113, !tbaa !24
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t114 = load ptr, ptr %l4, !tbaa !29
  %t116 = getelementptr %"compiler/load:Module", ptr %t114, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t117, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t119, ptr %l91
  br label %bb30
bb30:
  %t120 = load i1, ptr %l91, !tbaa !21
  br i1 %t120, label %bb31, label %bb32
bb31:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 4
  %t125 = load i64, ptr %t124, !tbaa !24
  %t128 = getelementptr %"compiler/views:Viewer", ptr %t121, i32 0, i32 9
  store i64 %t125, ptr %t128, !tbaa !24
  br label %bb33
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t129 = load i64, ptr %l3, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l3, !tbaa !24
  br label %bb1
bb35:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/views:Viewer", ptr %t133, i32 0, i32 7
  %t136 = load i64, ptr %t135, !tbaa !24
  %t138 = icmp slt i64 %t136, 0
  br i1 %t138, label %bb36, label %bb37
bb36:
  br label %ret
bb37:
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t140, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i64 %t142, ptr %l101
  br label %bb39
bb39:
  store i64 0, ptr %l5, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/views:Viewer", ptr %t143, i32 0, i32 1
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t145)
  store i64 %t147, ptr %l104
  br label %bb40
bb40:
  %t148 = load i64, ptr %l104, !tbaa !24
  store i64 %t148, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t149 = load i64, ptr %l6, !tbaa !24
  %t150 = load i64, ptr %l5, !tbaa !24
  %t153 = icmp sgt i64 %t149, %t150
  br i1 %t153, label %bb41, label %bb42
bb41:
  %t155 = load i64, ptr %l7, !tbaa !24
  %t157 = icmp sgt i64 %t155, 0
  br i1 %t157, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb46
bb43:
  %t159 = load i64, ptr %l6, !tbaa !24
  %t160 = load i64, ptr %l5, !tbaa !24
  %t163 = sub i64 %t159, %t160
  %t164 = load i64, ptr %l7, !tbaa !24
  %t167 = add i64 %t163, %t164
  %t169 = sub i64 %t167, 1
  %t170 = load i64, ptr %l7, !tbaa !24
  %t173 = sdiv i64 %t169, %t170
  store i64 %t173, ptr %l111, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb45
bb45:
  %t175 = load i64, ptr %l111, !tbaa !24
  store i64 %t175, ptr %l108, !tbaa !24
  br label %bb46
bb46:
  %t176 = load i64, ptr %l108, !tbaa !24
  store i64 %t176, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb47
bb47:
  %t177 = load i64, ptr %l9, !tbaa !24
  %t178 = load i64, ptr %l8, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb48, label %bb49
bb48:
  br label %bb69
bb49:
  br label %bb50
bb50:
  %t185 = load i64, ptr %l5, !tbaa !24
  %t186 = load i64, ptr %l9, !tbaa !24
  %t187 = load i64, ptr %l7, !tbaa !24
  %t190 = mul i64 %t186, %t187
  %t193 = add i64 %t185, %t190
  store i64 %t193, ptr %l10, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/views:Viewer", ptr %t195, i32 0, i32 2
  store ptr %t197, ptr %l130, !tbaa !29
  %t198 = ptrtoint ptr %v0 to i64
  store i64 %t198, ptr %l131, !tbaa !24
  %t199 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2fviews_3asummary_26_3e_2e_2d1
  br i1 %t199, label %bb51, label %bb52
bb51:
  %t201 = call ptr @__olang_region_make(ptr %v0)
  %t202 = ptrtoint ptr %t201 to i64
  store i64 %t202, ptr %l131, !tbaa !24
  br label %bb52
bb52:
  %t204 = load i64, ptr %l131
  %t205 = inttoptr i64 %t204 to ptr
  call void @compiler_2fviews_3asummary_2ector(ptr %t203, ptr %t205)
  call void @llvm.memmove.p0.p0.i64(ptr %l133, ptr %t203, i64 136, i1 false)
  br label %bb53
bb53:
  %t206 = load i64, ptr %l131
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = call ptr @__olang_scope_alloc_a(ptr %t207, i64 136, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t208, ptr %l133, i64 136, i1 false)
  %t209 = load ptr, ptr %l130, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H23bbaa5fdc623cf1e33b32cb6290302c(ptr %v0, ptr %v0, ptr %t209, ptr %t208)
  br label %bb54
bb54:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/views:Viewer", ptr %t211, i32 0, i32 1
  %t214 = load i64, ptr %l10, !tbaa !24
  %t217 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t213, i64 %t214)
  store ptr %t217, ptr %l138
  br label %bb55
bb55:
  %t218 = load ptr, ptr %l138, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Body", ptr %t218, i32 0, i32 5
  store ptr %t220, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb56
bb56:
  %t222 = load i64, ptr %l12, !tbaa !24
  store i64 %t222, ptr %l141, !tbaa !24
  %t223 = load ptr, ptr %l11, !tbaa !29
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t223)
  store i64 %t225, ptr %l143
  br label %bb57
bb57:
  %t226 = load i64, ptr %l141, !tbaa !24
  %t227 = load i64, ptr %l143, !tbaa !24
  %t228 = icmp slt i64 %t226, %t227
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb58, label %bb59
bb58:
  br label %bb65
bb59:
  br label %bb60
bb60:
  %t232 = load ptr, ptr %l11, !tbaa !29
  %t233 = load i64, ptr %l12, !tbaa !24
  %t236 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t232, i64 %t233)
  store i32 %t236, ptr %l148
  br label %bb61
bb61:
  %t237 = load i32, ptr %l148, !tbaa !23
  store i32 %t237, ptr %l13, !tbaa !23
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/views:Viewer", ptr %t238, i32 0, i32 2
  %t241 = load i64, ptr %l10, !tbaa !24
  %t244 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t240, i64 %t241)
  store ptr %t244, ptr %l152
  br label %bb62
bb62:
  %t245 = load ptr, ptr %l152, !tbaa !29
  %t247 = getelementptr %"compiler/views:summary", ptr %t245, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t247, i1 false)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t249 = load i64, ptr %l12, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l12, !tbaa !24
  br label %bb56
bb65:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/views:Viewer", ptr %t253, i32 0, i32 2
  %t256 = load i64, ptr %l10, !tbaa !24
  %t259 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t255, i64 %t256)
  store ptr %t259, ptr %l160
  br label %bb66
bb66:
  %t260 = load ptr, ptr %l160, !tbaa !29
  store ptr %t260, ptr %l161, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l10, !tbaa !24
  %t265 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalkable(ptr %v0, ptr %t261, i64 %t262)
  store i1 %t265, ptr %l164
  br label %bb67
bb67:
  %t266 = load i1, ptr %l164, !tbaa !21
  %t267 = load ptr, ptr %l161, !tbaa !29
  %t268 = getelementptr %"compiler/views:summary", ptr %t267, i32 0, i32 4
  store i1 %t266, ptr %t268, !tbaa !21
  br label %bb68
bb68:
  %t269 = load i64, ptr %l9, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l9, !tbaa !24
  br label %bb47
bb69:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l167, !tbaa !29
  %t274 = ptrtoint ptr %v0 to i64
  store i64 %t274, ptr %l168, !tbaa !24
  %t275 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e34
  br i1 %t275, label %bb70, label %bb71
bb70:
  %t277 = call ptr @__olang_region_make(ptr %v0)
  %t278 = ptrtoint ptr %t277 to i64
  store i64 %t278, ptr %l168, !tbaa !24
  br label %bb71
bb71:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i64, ptr %l168
  %t281 = inttoptr i64 %t280 to ptr
  %t283 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eBodyKeys(ptr %v0, ptr %t281, ptr %t279)
  store { i64, ptr } %t283, ptr %l171
  br label %bb72
bb72:
  %t284 = load ptr, ptr %l167, !tbaa !29
  %t285 = getelementptr %"compiler/views:Viewer", ptr %t284, i32 0, i32 34
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  store { i64, ptr } %t286, ptr %l172, !tbaa !27
  %t287 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t288 = load ptr, ptr %l167, !tbaa !29
  %t289 = getelementptr %"compiler/views:Viewer", ptr %t288, i32 0, i32 34
  store { i64, ptr } %t287, ptr %t289, !tbaa !27
  %t290 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e34
  br i1 %t290, label %bb73, label %bb74
bb73:
  %t292 = load { i64, ptr }, ptr %l172
  %t293 = extractvalue { i64, ptr } %t292, 1
  call void @__olang_region_release(ptr %t293)
  store { i64, ptr } zeroinitializer, ptr %l172
  br label %bb74
bb74:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr %"compiler/views:Kept", ptr %t294, i32 0, i32 2
  %t297 = load i1, ptr %t296, !tbaa !21
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb75, label %bb76
bb75:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etake(ptr %v0, ptr %v1, ptr %t301, ptr %t302)
  br label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb78
bb78:
  %t305 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecomponents(ptr %v0, ptr %t305)
  br label %bb79
bb79:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eviewsHeld(ptr %v0, ptr %t307)
  store i1 %t309, ptr %l181
  br label %bb80
bb80:
  %t310 = load i1, ptr %l181, !tbaa !21
  %t311 = xor i1 %t310, true
  br i1 %t311, label %bb81, label %bb82
bb81:
  br label %ret
bb82:
  br label %bb83
bb83:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/views:Viewer", ptr %t313, i32 0, i32 35
  store i1 true, ptr %t315, !tbaa !21
  store i64 0, ptr %l14, !tbaa !24
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/views:Viewer", ptr %t316, i32 0, i32 19
  %t320 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t318)
  store i64 %t320, ptr %l186
  br label %bb84
bb84:
  %t321 = load i64, ptr %l186, !tbaa !24
  store i64 %t321, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t322 = load i64, ptr %l15, !tbaa !24
  %t323 = load i64, ptr %l14, !tbaa !24
  %t326 = icmp sgt i64 %t322, %t323
  br i1 %t326, label %bb85, label %bb86
bb85:
  %t328 = load i64, ptr %l16, !tbaa !24
  %t330 = icmp sgt i64 %t328, 0
  br i1 %t330, label %bb87, label %bb88
bb86:
  store i64 0, ptr %l190, !tbaa !24
  br label %bb90
bb87:
  %t332 = load i64, ptr %l15, !tbaa !24
  %t333 = load i64, ptr %l14, !tbaa !24
  %t336 = sub i64 %t332, %t333
  %t337 = load i64, ptr %l16, !tbaa !24
  %t340 = add i64 %t336, %t337
  %t342 = sub i64 %t340, 1
  %t343 = load i64, ptr %l16, !tbaa !24
  %t346 = sdiv i64 %t342, %t343
  store i64 %t346, ptr %l193, !tbaa !24
  br label %bb89
bb88:
  store i64 0, ptr %l193, !tbaa !24
  br label %bb89
bb89:
  %t348 = load i64, ptr %l193, !tbaa !24
  store i64 %t348, ptr %l190, !tbaa !24
  br label %bb90
bb90:
  %t349 = load i64, ptr %l190, !tbaa !24
  store i64 %t349, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb91
bb91:
  %t350 = load i64, ptr %l18, !tbaa !24
  %t351 = load i64, ptr %l17, !tbaa !24
  %t354 = icmp slt i64 %t350, %t351
  %t356 = xor i1 %t354, true
  br i1 %t356, label %bb92, label %bb93
bb92:
  br label %bb157
bb93:
  br label %bb94
bb94:
  %t358 = load i64, ptr %l14, !tbaa !24
  %t359 = load i64, ptr %l18, !tbaa !24
  %t360 = load i64, ptr %l16, !tbaa !24
  %t363 = mul i64 %t359, %t360
  %t366 = add i64 %t358, %t363
  store i64 %t366, ptr %l19, !tbaa !24
  %t368 = load i64, ptr %l19, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l212, !tbaa !24
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/views:Viewer", ptr %t371, i32 0, i32 19
  %t375 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t373)
  store i64 %t375, ptr %l215
  br label %bb95
bb95:
  %t376 = load i64, ptr %l212, !tbaa !24
  %t377 = load i64, ptr %l215, !tbaa !24
  %t378 = icmp slt i64 %t376, %t377
  br i1 %t378, label %bb96, label %bb97
bb96:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/views:Viewer", ptr %t380, i32 0, i32 19
  %t383 = load i64, ptr %l19, !tbaa !24
  %t385 = add i64 %t383, 1
  %t388 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t382, i64 %t385)
  store i64 %t388, ptr %l222
  br label %bb98
bb97:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/views:Viewer", ptr %t389, i32 0, i32 20
  %t393 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t391)
  store i64 %t393, ptr %l225
  br label %bb99
bb98:
  %t394 = load i64, ptr %l222, !tbaa !24
  store i64 %t394, ptr %l217, !tbaa !24
  br label %bb100
bb99:
  %t395 = load i64, ptr %l225, !tbaa !24
  store i64 %t395, ptr %l217, !tbaa !24
  br label %bb100
bb100:
  %t396 = load i64, ptr %l217, !tbaa !24
  store i64 %t396, ptr %l20, !tbaa !24
  %t397 = load i64, ptr %l20, !tbaa !24
  store i64 %t397, ptr %l226, !tbaa !24
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr %"compiler/views:Viewer", ptr %t398, i32 0, i32 19
  %t401 = load i64, ptr %l19, !tbaa !24
  %t404 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t400, i64 %t401)
  store i64 %t404, ptr %l230
  br label %bb101
bb101:
  %t405 = load i64, ptr %l226, !tbaa !24
  %t406 = load i64, ptr %l230, !tbaa !24
  %t407 = sub i64 %t405, %t406
  %t409 = icmp sgt i64 %t407, 1
  br i1 %t409, label %bb102, label %bb103
bb102:
  store i1 true, ptr %l233, !tbaa !21
  br label %bb107
bb103:
  %t411 = load ptr, ptr %l0, !tbaa !29
  store ptr %t411, ptr %l234, !tbaa !29
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t414 = getelementptr %"compiler/views:Viewer", ptr %t412, i32 0, i32 20
  store ptr %t414, ptr %l236, !tbaa !29
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/views:Viewer", ptr %t415, i32 0, i32 19
  %t418 = load i64, ptr %l19, !tbaa !24
  %t421 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t417, i64 %t418)
  store i64 %t421, ptr %l240
  br label %bb104
bb104:
  %t422 = load ptr, ptr %l236, !tbaa !29
  %t423 = load i64, ptr %l240, !tbaa !24
  %t424 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t422, i64 %t423)
  store i64 %t424, ptr %l241
  br label %bb105
bb105:
  %t425 = load ptr, ptr %l234, !tbaa !29
  %t426 = load i64, ptr %l241, !tbaa !24
  %t427 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallsItself(ptr %v0, ptr %t425, i64 %t426)
  store i1 %t427, ptr %l242
  br label %bb106
bb106:
  %t428 = load i1, ptr %l242, !tbaa !21
  store i1 %t428, ptr %l233, !tbaa !21
  br label %bb107
bb107:
  %t429 = load i1, ptr %l233, !tbaa !21
  store i1 %t429, ptr %l21, !tbaa !21
  store i64 0, ptr %l22, !tbaa !24
  store i64 100, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t430 = load i64, ptr %l23, !tbaa !24
  %t431 = load i64, ptr %l22, !tbaa !24
  %t434 = icmp sgt i64 %t430, %t431
  br i1 %t434, label %bb108, label %bb109
bb108:
  %t436 = load i64, ptr %l24, !tbaa !24
  %t438 = icmp sgt i64 %t436, 0
  br i1 %t438, label %bb110, label %bb111
bb109:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb113
bb110:
  %t440 = load i64, ptr %l23, !tbaa !24
  %t441 = load i64, ptr %l22, !tbaa !24
  %t444 = sub i64 %t440, %t441
  %t445 = load i64, ptr %l24, !tbaa !24
  %t448 = add i64 %t444, %t445
  %t450 = sub i64 %t448, 1
  %t451 = load i64, ptr %l24, !tbaa !24
  %t454 = sdiv i64 %t450, %t451
  store i64 %t454, ptr %l249, !tbaa !24
  br label %bb112
bb111:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb112
bb112:
  %t456 = load i64, ptr %l249, !tbaa !24
  store i64 %t456, ptr %l246, !tbaa !24
  br label %bb113
bb113:
  %t457 = load i64, ptr %l246, !tbaa !24
  store i64 %t457, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb114
bb114:
  %t458 = load i64, ptr %l26, !tbaa !24
  %t459 = load i64, ptr %l25, !tbaa !24
  %t462 = icmp slt i64 %t458, %t459
  %t464 = xor i1 %t462, true
  br i1 %t464, label %bb115, label %bb116
bb115:
  br label %bb140
bb116:
  br label %bb117
bb117:
  %t466 = load i64, ptr %l22, !tbaa !24
  %t467 = load i64, ptr %l26, !tbaa !24
  %t468 = load i64, ptr %l24, !tbaa !24
  %t471 = mul i64 %t467, %t468
  %t474 = add i64 %t466, %t471
  store i64 %t474, ptr %l27, !tbaa !24
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/views:Viewer", ptr %t476, i32 0, i32 26
  store i1 false, ptr %t478, !tbaa !21
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/views:Viewer", ptr %t479, i32 0, i32 19
  %t482 = load i64, ptr %l19, !tbaa !24
  %t485 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t481, i64 %t482)
  store i64 %t485, ptr %l271
  br label %bb118
bb118:
  %t486 = load i64, ptr %l271, !tbaa !24
  store i64 %t486, ptr %l28, !tbaa !24
  %t487 = load i64, ptr %l20, !tbaa !24
  store i64 %t487, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t489 = load i64, ptr %l29, !tbaa !24
  %t490 = load i64, ptr %l28, !tbaa !24
  %t493 = icmp sgt i64 %t489, %t490
  br i1 %t493, label %bb119, label %bb120
bb119:
  %t495 = load i64, ptr %l30, !tbaa !24
  %t497 = icmp sgt i64 %t495, 0
  br i1 %t497, label %bb121, label %bb122
bb120:
  store i64 0, ptr %l276, !tbaa !24
  br label %bb124
bb121:
  %t499 = load i64, ptr %l29, !tbaa !24
  %t500 = load i64, ptr %l28, !tbaa !24
  %t503 = sub i64 %t499, %t500
  %t504 = load i64, ptr %l30, !tbaa !24
  %t507 = add i64 %t503, %t504
  %t509 = sub i64 %t507, 1
  %t510 = load i64, ptr %l30, !tbaa !24
  %t513 = sdiv i64 %t509, %t510
  store i64 %t513, ptr %l279, !tbaa !24
  br label %bb123
bb122:
  store i64 0, ptr %l279, !tbaa !24
  br label %bb123
bb123:
  %t515 = load i64, ptr %l279, !tbaa !24
  store i64 %t515, ptr %l276, !tbaa !24
  br label %bb124
bb124:
  %t516 = load i64, ptr %l276, !tbaa !24
  store i64 %t516, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb125
bb125:
  %t517 = load i64, ptr %l32, !tbaa !24
  %t518 = load i64, ptr %l31, !tbaa !24
  %t521 = icmp slt i64 %t517, %t518
  %t523 = xor i1 %t521, true
  br i1 %t523, label %bb126, label %bb127
bb126:
  br label %bb132
bb127:
  br label %bb128
bb128:
  %t525 = load i64, ptr %l28, !tbaa !24
  %t526 = load i64, ptr %l32, !tbaa !24
  %t527 = load i64, ptr %l30, !tbaa !24
  %t530 = mul i64 %t526, %t527
  %t533 = add i64 %t525, %t530
  %t535 = load ptr, ptr %l0, !tbaa !29
  store ptr %t535, ptr %l297, !tbaa !29
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/views:Viewer", ptr %t536, i32 0, i32 20
  %t542 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t538, i64 %t533)
  store i64 %t542, ptr %l301
  br label %bb129
bb129:
  %t543 = load ptr, ptr %l297, !tbaa !29
  %t544 = load i64, ptr %l301, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalk(ptr %v0, ptr %t543, i64 %t544, i1 false)
  br label %bb130
bb130:
  br label %bb131
bb131:
  %t545 = load i64, ptr %l32, !tbaa !24
  %t547 = add i64 %t545, 1
  store i64 %t547, ptr %l32, !tbaa !24
  br label %bb125
bb132:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t551 = getelementptr %"compiler/views:Viewer", ptr %t549, i32 0, i32 26
  %t552 = load i1, ptr %t551, !tbaa !21
  %t554 = xor i1 %t552, true
  br i1 %t554, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l307, !tbaa !21
  br label %bb135
bb134:
  %t556 = load i1, ptr %l21, !tbaa !21
  %t558 = xor i1 %t556, true
  store i1 %t558, ptr %l307, !tbaa !21
  br label %bb135
bb135:
  %t560 = load i1, ptr %l307, !tbaa !21
  br i1 %t560, label %bb136, label %bb137
bb136:
  br label %bb140
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  %t561 = load i64, ptr %l26, !tbaa !24
  %t563 = add i64 %t561, 1
  store i64 %t563, ptr %l26, !tbaa !24
  br label %bb114
bb140:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = getelementptr %"compiler/views:Viewer", ptr %t565, i32 0, i32 19
  %t568 = load i64, ptr %l19, !tbaa !24
  %t571 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t567, i64 %t568)
  store i64 %t571, ptr %l315
  br label %bb141
bb141:
  %t572 = load i64, ptr %l315, !tbaa !24
  store i64 %t572, ptr %l34, !tbaa !24
  %t573 = load i64, ptr %l20, !tbaa !24
  store i64 %t573, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t575 = load i64, ptr %l35, !tbaa !24
  %t576 = load i64, ptr %l34, !tbaa !24
  %t579 = icmp sgt i64 %t575, %t576
  br i1 %t579, label %bb142, label %bb143
bb142:
  %t581 = load i64, ptr %l36, !tbaa !24
  %t583 = icmp sgt i64 %t581, 0
  br i1 %t583, label %bb144, label %bb145
bb143:
  store i64 0, ptr %l320, !tbaa !24
  br label %bb147
bb144:
  %t585 = load i64, ptr %l35, !tbaa !24
  %t586 = load i64, ptr %l34, !tbaa !24
  %t589 = sub i64 %t585, %t586
  %t590 = load i64, ptr %l36, !tbaa !24
  %t593 = add i64 %t589, %t590
  %t595 = sub i64 %t593, 1
  %t596 = load i64, ptr %l36, !tbaa !24
  %t599 = sdiv i64 %t595, %t596
  store i64 %t599, ptr %l323, !tbaa !24
  br label %bb146
bb145:
  store i64 0, ptr %l323, !tbaa !24
  br label %bb146
bb146:
  %t601 = load i64, ptr %l323, !tbaa !24
  store i64 %t601, ptr %l320, !tbaa !24
  br label %bb147
bb147:
  %t602 = load i64, ptr %l320, !tbaa !24
  store i64 %t602, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb148
bb148:
  %t603 = load i64, ptr %l38, !tbaa !24
  %t604 = load i64, ptr %l37, !tbaa !24
  %t607 = icmp slt i64 %t603, %t604
  %t609 = xor i1 %t607, true
  br i1 %t609, label %bb149, label %bb150
bb149:
  br label %bb155
bb150:
  br label %bb151
bb151:
  %t611 = load i64, ptr %l34, !tbaa !24
  %t612 = load i64, ptr %l38, !tbaa !24
  %t613 = load i64, ptr %l36, !tbaa !24
  %t616 = mul i64 %t612, %t613
  %t619 = add i64 %t611, %t616
  %t621 = load ptr, ptr %l0, !tbaa !29
  store ptr %t621, ptr %l341, !tbaa !29
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"compiler/views:Viewer", ptr %t622, i32 0, i32 20
  %t628 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t624, i64 %t619)
  store i64 %t628, ptr %l345
  br label %bb152
bb152:
  %t629 = load ptr, ptr %l341, !tbaa !29
  %t630 = load i64, ptr %l345, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalk(ptr %v0, ptr %t629, i64 %t630, i1 true)
  br label %bb153
bb153:
  br label %bb154
bb154:
  %t631 = load i64, ptr %l38, !tbaa !24
  %t633 = add i64 %t631, 1
  store i64 %t633, ptr %l38, !tbaa !24
  br label %bb148
bb155:
  br label %bb156
bb156:
  %t635 = load i64, ptr %l18, !tbaa !24
  %t637 = add i64 %t635, 1
  store i64 %t637, ptr %l18, !tbaa !24
  br label %bb91
bb157:
  %t639 = load ptr, ptr %l1, !tbaa !29
  %t641 = getelementptr %"compiler/views:Kept", ptr %t639, i32 0, i32 2
  %t642 = load i1, ptr %t641, !tbaa !21
  br i1 %t642, label %bb158, label %bb159
bb158:
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t645 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecompare(ptr %v0, ptr %v1, ptr %t644, ptr %t645)
  br label %bb160
bb159:
  br label %bb161
bb160:
  br label %bb161
bb161:
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t649 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eGather(ptr %v0, ptr %v1, ptr %t648, ptr %t649)
  br label %bb162
bb162:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaryText(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/views:fact"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/views:fact"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/views:fact"
  %l21 = alloca ptr
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca %"std/prelude/text:StringBuilder"
  %l38 = alloca i64
  %l40 = alloca i64
  %l46 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i64
  %l58 = alloca { i64, ptr }
  %l62 = alloca i64
  %l64 = alloca i64
  %l69 = alloca %"compiler/views:fact"
  %l70 = alloca ptr
  %l71 = alloca i64
  %l73 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l77 = alloca i32
  %l84 = alloca i64
  %l86 = alloca i64
  %l91 = alloca %"compiler/views:fact"
  %l92 = alloca ptr
  %l93 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i32
  %l106 = alloca i64
  %l108 = alloca i64
  %l113 = alloca %"compiler/views:fact"
  %l114 = alloca ptr
  %l115 = alloca i64
  %l117 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l121 = alloca i32
  %l127 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 2
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l21
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l21, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l22
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l3
  store ptr %l3, ptr %l23, !tbaa !29
  %t11 = ptrtoint ptr %s0 to i64
  store i64 %t11, ptr %l24, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = call ptr @__olang_region_make(ptr %s0)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l24, !tbaa !24
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/views:summary", ptr %t16, i32 0, i32 4
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t21, ptr %l28, !tbaa !27
  br label %bb7
bb6:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t23, ptr %l28, !tbaa !27
  br label %bb7
bb7:
  %t25 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t26 = load i64, ptr %l24
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = extractvalue { i64, ptr } %t25, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load ptr, ptr %l23, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t34, { i64, ptr } %t33)
  br label %bb8
bb8:
  %t36 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t36, ptr %l34
  br label %bb9
bb9:
  %t37 = load %"std/prelude/text:StringBuilder", ptr %l34
  store %"std/prelude/text:StringBuilder" %t37, ptr %l4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/views:summary", ptr %t39, i32 0, i32 3
  store ptr %t41, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l6, !tbaa !24
  store i64 %t43, ptr %l38, !tbaa !24
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l40
  br label %bb12
bb12:
  %t47 = load i64, ptr %l38, !tbaa !24
  %t48 = load i64, ptr %l40, !tbaa !24
  %t49 = icmp slt i64 %t47, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb13, label %bb14
bb13:
  br label %bb22
bb14:
  br label %bb15
bb15:
  %t53 = load i64, ptr %l6, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t55, i64 %t56)
  store i1 %t59, ptr %l46
  br label %bb16
bb16:
  %t60 = load i1, ptr %l46, !tbaa !21
  br i1 %t60, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t63 = load i64, ptr %l7, !tbaa !24
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t67 = call i64 @__olang_fmt_i64(ptr null, i64 %t63)
  %t68 = add i64 %t65, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t64, i64 %t65)
  %t70 = getelementptr i8, ptr %t69, i64 %t65
  %t71 = call i64 @__olang_fmt_i64(ptr %t70, i64 %t63)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t69, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = extractvalue { i64, ptr } %t73, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l4, { i64, ptr } %t80)
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb11
bb22:
  store ptr %l3, ptr %l54, !tbaa !29
  %t87 = ptrtoint ptr %s0 to i64
  store i64 %t87, ptr %l55, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t88, label %bb23, label %bb24
bb23:
  %t90 = call ptr @__olang_region_make(ptr %s0)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l55, !tbaa !24
  br label %bb24
bb24:
  %t92 = load i64, ptr %l55
  %t93 = inttoptr i64 %t92 to ptr
  %t95 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t93, ptr %l4)
  store { i64, ptr } %t95, ptr %l58
  br label %bb25
bb25:
  %t96 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t97 = load i64, ptr %l55
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = extractvalue { i64, ptr } %t96, 0
  %t100 = extractvalue { i64, ptr } %t96, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %t98, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t105, { i64, ptr } %t104)
  br label %bb26
bb26:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t109 = getelementptr %"compiler/views:summary", ptr %t107, i32 0, i32 0
  store ptr %t109, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t111 = load i64, ptr %l10, !tbaa !24
  store i64 %t111, ptr %l62, !tbaa !24
  %t112 = load ptr, ptr %l9, !tbaa !29
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l64
  br label %bb28
bb28:
  %t115 = load i64, ptr %l62, !tbaa !24
  %t116 = load i64, ptr %l64, !tbaa !24
  %t117 = icmp slt i64 %t115, %t116
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb30:
  br label %bb31
bb31:
  %t121 = load ptr, ptr %l9, !tbaa !29
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t121, i64 %t122)
  store %"compiler/views:fact" %t125, ptr %l69
  br label %bb32
bb32:
  %t126 = load %"compiler/views:fact", ptr %l69
  store %"compiler/views:fact" %t126, ptr %l11
  store ptr %l3, ptr %l70, !tbaa !29
  %t127 = ptrtoint ptr %s0 to i64
  store i64 %t127, ptr %l71, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = call ptr @__olang_region_make(ptr %s0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l71, !tbaa !24
  br label %bb34
bb34:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/views:fact", ptr %l11
  %t136 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %s7, ptr %s0, ptr %t132, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, %"compiler/views:fact" %t133)
  %t137 = extractvalue { i32, { i64, ptr } } %t136, 1
  %t138 = extractvalue { i32, { i64, ptr } } %t136, 0
  store i32 %t138, ptr %l77
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb36, label %ok.140, !prof !99
ok.140:
  store { i64, ptr } %t137, ptr %l76
  br label %bb35
bb35:
  %t141 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t141, ptr %l73, !tbaa !27
  br label %bb37
bb36:
  %t142 = load i32, ptr %l77, !tbaa !23
  %t143 = lshr i32 %t142, 16
  %t144 = and i32 %t142, 65535
  %t145 = icmp eq i32 %t143, 1
  %t146 = select i1 %t145, i32 1, i32 0
  %t147 = icmp eq i32 %t142, 0
  %t148 = shl i32 %t146, 16
  %t149 = or i32 %t148, %t144
  %t150 = select i1 %t147, i32 0, i32 %t149
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t152 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t150, 0
  store { i32, { i64, ptr } } %t152, ptr %rv
  br label %ret
bb37:
  %t153 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t154 = load i64, ptr %l71
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = extractvalue { i64, ptr } %t153, 0
  %t157 = extractvalue { i64, ptr } %t153, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %t155, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t162 = load ptr, ptr %l70, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t162, { i64, ptr } %t161)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb39
bb39:
  %t164 = load i64, ptr %l10, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l10, !tbaa !24
  br label %bb27
bb40:
  %t168 = load ptr, ptr %l2, !tbaa !29
  %t170 = getelementptr %"compiler/views:summary", ptr %t168, i32 0, i32 1
  store ptr %t170, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s10
  %t172 = load i64, ptr %l13, !tbaa !24
  store i64 %t172, ptr %l84, !tbaa !24
  %t173 = load ptr, ptr %l12, !tbaa !29
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t173)
  store i64 %t175, ptr %l86
  br label %bb42
bb42:
  %t176 = load i64, ptr %l84, !tbaa !24
  %t177 = load i64, ptr %l86, !tbaa !24
  %t178 = icmp slt i64 %t176, %t177
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s10)
  br label %bb54
bb44:
  br label %bb45
bb45:
  %t182 = load ptr, ptr %l12, !tbaa !29
  %t183 = load i64, ptr %l13, !tbaa !24
  %t186 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t182, i64 %t183)
  store %"compiler/views:fact" %t186, ptr %l91
  br label %bb46
bb46:
  %t187 = load %"compiler/views:fact", ptr %l91
  store %"compiler/views:fact" %t187, ptr %l14
  store ptr %l3, ptr %l92, !tbaa !29
  %t188 = ptrtoint ptr %s0 to i64
  store i64 %t188, ptr %l93, !tbaa !24
  %t189 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t189, label %bb47, label %bb48
bb47:
  %t191 = call ptr @__olang_region_make(ptr %s0)
  %t192 = ptrtoint ptr %t191 to i64
  store i64 %t192, ptr %l93, !tbaa !24
  br label %bb48
bb48:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load %"compiler/views:fact", ptr %l14
  %t197 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %s10, ptr %s0, ptr %t193, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d11, i32 0, i32 1) }, %"compiler/views:fact" %t194)
  %t198 = extractvalue { i32, { i64, ptr } } %t197, 1
  %t199 = extractvalue { i32, { i64, ptr } } %t197, 0
  store i32 %t199, ptr %l99
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %bb50, label %ok.201, !prof !99
ok.201:
  store { i64, ptr } %t198, ptr %l98
  br label %bb49
bb49:
  %t202 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t202, ptr %l95, !tbaa !27
  br label %bb51
bb50:
  %t203 = load i32, ptr %l99, !tbaa !23
  %t204 = lshr i32 %t203, 16
  %t205 = and i32 %t203, 65535
  %t206 = icmp eq i32 %t204, 1
  %t207 = select i1 %t206, i32 1, i32 0
  %t208 = icmp eq i32 %t203, 0
  %t209 = shl i32 %t207, 16
  %t210 = or i32 %t209, %t205
  %t211 = select i1 %t208, i32 0, i32 %t210
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t213 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t211, 0
  store { i32, { i64, ptr } } %t213, ptr %rv
  br label %ret
bb51:
  %t214 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t215 = load i64, ptr %l93
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = extractvalue { i64, ptr } %t214, 0
  %t218 = extractvalue { i64, ptr } %t214, 1
  %t219 = mul i64 %t217, 1
  %t220 = call ptr @__olang_scope_alloc(ptr %t216, i64 %t219)
  call void @llvm.memcpy.p0.p0.i64(ptr %t220, ptr %t218, i64 %t219, i1 false)
  %t221 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  %t223 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t223, { i64, ptr } %t222)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s10)
  br label %bb53
bb53:
  %t225 = load i64, ptr %l13, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l13, !tbaa !24
  br label %bb41
bb54:
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = getelementptr %"compiler/views:summary", ptr %t229, i32 0, i32 2
  store ptr %t231, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s13
  %t233 = load i64, ptr %l16, !tbaa !24
  store i64 %t233, ptr %l106, !tbaa !24
  %t234 = load ptr, ptr %l15, !tbaa !29
  %t236 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t234)
  store i64 %t236, ptr %l108
  br label %bb56
bb56:
  %t237 = load i64, ptr %l106, !tbaa !24
  %t238 = load i64, ptr %l108, !tbaa !24
  %t239 = icmp slt i64 %t237, %t238
  %t241 = xor i1 %t239, true
  br i1 %t241, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s13)
  br label %bb68
bb58:
  br label %bb59
bb59:
  %t243 = load ptr, ptr %l15, !tbaa !29
  %t244 = load i64, ptr %l16, !tbaa !24
  %t247 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t243, i64 %t244)
  store %"compiler/views:fact" %t247, ptr %l113
  br label %bb60
bb60:
  %t248 = load %"compiler/views:fact", ptr %l113
  store %"compiler/views:fact" %t248, ptr %l17
  store ptr %l3, ptr %l114, !tbaa !29
  %t249 = ptrtoint ptr %s0 to i64
  store i64 %t249, ptr %l115, !tbaa !24
  %t250 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t250, label %bb61, label %bb62
bb61:
  %t252 = call ptr @__olang_region_make(ptr %s0)
  %t253 = ptrtoint ptr %t252 to i64
  store i64 %t253, ptr %l115, !tbaa !24
  br label %bb62
bb62:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load %"compiler/views:fact", ptr %l17
  %t258 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %s13, ptr %s0, ptr %t254, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, %"compiler/views:fact" %t255)
  %t259 = extractvalue { i32, { i64, ptr } } %t258, 1
  %t260 = extractvalue { i32, { i64, ptr } } %t258, 0
  store i32 %t260, ptr %l121
  %t261 = icmp ne i32 %t260, 0
  br i1 %t261, label %bb64, label %ok.262, !prof !99
ok.262:
  store { i64, ptr } %t259, ptr %l120
  br label %bb63
bb63:
  %t263 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t263, ptr %l117, !tbaa !27
  br label %bb65
bb64:
  %t264 = load i32, ptr %l121, !tbaa !23
  %t265 = lshr i32 %t264, 16
  %t266 = and i32 %t264, 65535
  %t267 = icmp eq i32 %t265, 1
  %t268 = select i1 %t267, i32 1, i32 0
  %t269 = icmp eq i32 %t264, 0
  %t270 = shl i32 %t268, 16
  %t271 = or i32 %t270, %t266
  %t272 = select i1 %t269, i32 0, i32 %t271
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t274 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t272, 0
  store { i32, { i64, ptr } } %t274, ptr %rv
  br label %ret
bb65:
  %t275 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t276 = load i64, ptr %l115
  %t277 = inttoptr i64 %t276 to ptr
  %t278 = extractvalue { i64, ptr } %t275, 0
  %t279 = extractvalue { i64, ptr } %t275, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %t277, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load ptr, ptr %l114, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t284, { i64, ptr } %t283)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s13)
  br label %bb67
bb67:
  %t286 = load i64, ptr %l16, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l16, !tbaa !24
  br label %bb55
bb68:
  %t291 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v1, ptr %l3, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store { i64, ptr } %t291, ptr %l127
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s0)
  %t292 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t293 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t292, 1
  store { i32, { i64, ptr } } %t293, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l7
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load i32, ptr %l7, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l8
  br label %bb2
bb2:
  %t15 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t17 = trunc i64 19 to i32
  %t18 = icmp eq i32 %t15, %t17
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i1
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i1
  %l34 = alloca i1
  %l39 = alloca i1
  %l41 = alloca ptr
  %l43 = alloca i64
  %l47 = alloca %"compiler/views:place"
  %l52 = alloca ptr
  %l53 = alloca i1
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i32
  %l66 = alloca i1
  %l73 = alloca i64
  %l75 = alloca i64
  %l80 = alloca %"compiler/views:place"
  %l81 = alloca ptr
  %l82 = alloca %"compiler/views:place"
  %l84 = alloca %"compiler/source:Span"
  %l86 = alloca i64
  %l87 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %t70 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t6 = load ptr, ptr %l13, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l13, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l14, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l5, !tbaa !23
  br label %bb8
bb7:
  br label %bb25
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l5, !tbaa !23
  %t23 = sext i32 %t21 to i64
  %t26 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eisParam(ptr %v0, ptr %t20, i64 %t23)
  store i1 %t26, ptr %l22
  br label %bb9
bb9:
  %t27 = load i1, ptr %l22, !tbaa !21
  store i1 %t27, ptr %l6, !tbaa !21
  %t28 = load i1, ptr %l6, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t32 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estoreInto(ptr %v0, ptr %v1, ptr %s3, ptr %v4, ptr %t30, ptr %t31, ptr null, ptr %t32)
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l5, !tbaa !23
  %t39 = sext i32 %t37 to i64
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebind(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t36, i64 %t39, ptr %a2, ptr %t41, i1 true, ptr %t42)
  br label %bb14
bb14:
  %t48 = load i1, ptr %l6, !tbaa !21
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t52 = load i32, ptr %l5, !tbaa !23
  %t54 = sext i32 %t52 to i64
  %t58 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enamed(ptr %v0, ptr %v4, ptr %t50, ptr %t51, i64 %t54)
  store i1 %t58, ptr %l39
  br label %bb17
bb16:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb18
bb17:
  %t59 = load i1, ptr %l39, !tbaa !21
  %t60 = xor i1 %t59, true
  store i1 %t60, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t62 = load i1, ptr %l34, !tbaa !21
  br i1 %t62, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t63 = load ptr, ptr %l4, !tbaa !29
  store ptr %t63, ptr %l41, !tbaa !29
  %t64 = load i32, ptr %l5, !tbaa !23
  %t66 = sext i32 %t64 to i64
  store i64 %t66, ptr %l43, !tbaa !24
  %t67 = load i32, ptr %l5, !tbaa !23
  %t69 = sext i32 %t67 to i64
  store { i64, [2 x i64] } zeroinitializer, ptr %t70
  %t71 = getelementptr { i64, [2 x i64] }, ptr %t70, i32 0, i32 0
  store i64 1, ptr %t71
  %t73 = insertvalue { i64 } undef, i64 %t69, 0
  %t74 = getelementptr { i64, [2 x i64] }, ptr %t70, i32 0, i32 1
  store { i64 } %t73, ptr %t74
  %t75 = load { i64, [2 x i64] }, ptr %t70
  %t77 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s4, { i64, [2 x i64] } %t75, i64 0, i64 0, i1 false)
  store %"compiler/views:place" %t77, ptr %l47
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t78 = load ptr, ptr %l41, !tbaa !29
  %t79 = load i64, ptr %l43, !tbaa !24
  %t80 = load %"compiler/views:place", ptr %l47
  call void @compiler_2fviews_2enameAdd(ptr %v4, ptr %t78, i64 %t79, %"compiler/views:place" %t80)
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr %"compiler/views:state", ptr %t81, i32 0, i32 3
  %t84 = load i32, ptr %l5, !tbaa !23
  %t86 = sext i32 %t84 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v4, ptr %t83, i64 %t86)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t90 = load ptr, ptr %l52, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb26, label %bb27
bb26:
  %t93 = load ptr, ptr %l52, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 1
  store i1 %t96, ptr %l53, !tbaa !21
  br label %bb27
bb27:
  %t97 = load i1, ptr %l53, !tbaa !21
  br i1 %t97, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb37
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t100 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eparts(ptr %v0, ptr %v1, ptr %v4, ptr %t98, ptr %t99, ptr %t100)
  br label %bb35
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_55308b3b5a1f5c1_cb52dc999ec87de5)
  unreachable
bb37:
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l59
  br label %bb38
bb38:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l7
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t108 = load ptr, ptr %l4, !tbaa !29
  %t113 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferOf(ptr %v0, ptr %v1, ptr %v4, ptr %s0, ptr %t106, ptr %t107, ptr %t108, ptr %l7)
  store i32 %t113, ptr %l64
  %t114 = icmp ne i32 %t113, 0
  br i1 %t114, label %bb40, label %ok.115, !prof !99
ok.115:
  br label %bb39
bb39:
  br label %bb43
bb40:
  %t116 = load i32, ptr %l64, !tbaa !23
  %t117 = ashr i32 %t116, 16
  %t119 = icmp eq i32 %t117, 1
  store i1 %t119, ptr %l66, !tbaa !21
  br label %bb41
bb41:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t122 = load ptr, ptr %l3, !tbaa !29
  %t124 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estoreInto(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t120, ptr %t121, ptr %t122, ptr %t124)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb43:
  store ptr %l7, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s9
  %t130 = load i64, ptr %l9, !tbaa !24
  store i64 %t130, ptr %l73, !tbaa !24
  %t131 = load ptr, ptr %l8, !tbaa !29
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t131)
  store i64 %t133, ptr %l75
  br label %bb45
bb45:
  %t134 = load i64, ptr %l73, !tbaa !24
  %t135 = load i64, ptr %l75, !tbaa !24
  %t136 = icmp slt i64 %t134, %t135
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s9)
  br label %bb55
bb47:
  br label %bb48
bb48:
  %t140 = load ptr, ptr %l8, !tbaa !29
  %t141 = load i64, ptr %l9, !tbaa !24
  %t144 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t140, i64 %t141)
  store %"compiler/views:place" %t144, ptr %l80
  br label %bb49
bb49:
  %t145 = load %"compiler/views:place", ptr %l80
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l81, !tbaa !29
  store %"compiler/views:place" %t145, ptr %l82
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t148)
  store %"compiler/source:Span" %t150, ptr %l84
  br label %bb50
bb50:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t151, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i64 %t153, ptr %l86
  br label %bb51
bb51:
  %t154 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s9, i32 0, i32 0)
  store %"compiler/source:Span" %t154, ptr %l87
  br label %bb52
bb52:
  %t155 = load ptr, ptr %l4, !tbaa !29
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load %"compiler/views:place", ptr %l82
  %t158 = load %"compiler/source:Span", ptr %l84
  %t159 = load i64, ptr %l86, !tbaa !24
  %t160 = load %"compiler/source:Span", ptr %l87
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrow(ptr %v0, ptr %v4, ptr %t156, %"compiler/views:place" %t157, %"compiler/source:Span" %t158, i64 %t159, i64 -1, %"compiler/source:Span" %t160, ptr %t155)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s9)
  br label %bb54
bb54:
  %t162 = load i64, ptr %l9, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l9, !tbaa !24
  br label %bb44
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %rv = alloca { i64, [3 x i64] }
  %t24 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 21
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_bb5d94b92cb03aee_965554ec574ba44a)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:Viewer", ptr %t8, i32 0, i32 21
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 3
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t20 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 0
  store i64 3, ptr %t25
  %t27 = insertvalue { i64, i64, i64 } undef, i64 %t15, 0
  %t29 = insertvalue { i64, i64, i64 } %t27, i64 %t19, 1
  %t31 = insertvalue { i64, i64, i64 } %t29, i64 %t23, 2
  %t32 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 1
  store { i64, i64, i64 } %t31, ptr %t32
  %t33 = load { i64, [3 x i64] }, ptr %t24
  store { i64, [3 x i64] } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %a0, %"compiler/views:place" %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:place"
  %l3 = alloca i64
  %l5 = alloca i64
  %l10 = alloca i64
  %l14 = alloca { i64, ptr }
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca %"compiler/views:place"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/views:place"
  store ptr %a0, ptr %l0
  store %"compiler/views:place" %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 3
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = load %"compiler/views:place", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/views:place" %t4, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t8 = icmp sgt i64 %t6, 0
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/views:Viewer", ptr %t10, i32 0, i32 3
  %t13 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t12, i64 %t14)
  store { i64, ptr } %t17, ptr %l14
  br label %bb6
bb5:
  %t18 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 2
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l10, !tbaa !24
  br label %bb7
bb6:
  %t21 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = add i64 %t22, %t23
  store i64 %t26, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l10, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  %t29 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 0
  %t30 = load { i64, [2 x i64] }, ptr %t29
  store { i64, [2 x i64] } %t30, ptr %l19
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/views:Viewer", ptr %t32, i32 0, i32 3
  %t35 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t39 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t34, i64 %t36)
  store { i64, ptr } %t39, ptr %l24
  br label %bb8
bb8:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/views:Viewer", ptr %t40, i32 0, i32 3
  %t46 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t42, i64 %a2)
  store { i64, ptr } %t46, ptr %l28
  br label %bb9
bb9:
  %t47 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = add i64 %t49, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t48, i64 %t49)
  %t55 = getelementptr i8, ptr %t54, i64 %t49
  call void @olang_textcopy(ptr %t55, ptr %t51, i64 %t52)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = extractvalue { i64, ptr } %t57, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t65 = load ptr, ptr %l20, !tbaa !29
  %t67 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t65, { i64, ptr } %t64)
  store i64 %t67, ptr %l31
  br label %bb10
bb10:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = load { i64, [2 x i64] }, ptr %l19
  %t71 = load i64, ptr %l31, !tbaa !24
  %t74 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s0, { i64, [2 x i64] } %t70, i64 %t71, i64 %t68, i1 %a4)
  store %"compiler/views:place" %t74, ptr %l34
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load %"compiler/views:place", ptr %l34
  store %"compiler/views:place" %t75, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:place", ptr %rv
  ret %"compiler/views:place" %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebind(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/views:holding"
  %l13 = alloca i64
  %l14 = alloca %"compiler/views:view"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/views:place"
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l30 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l58 = alloca %"compiler/views:holding"
  %l61 = alloca i1
  %l71 = alloca %"compiler/views:place"
  %l73 = alloca ptr
  %l74 = alloca i64
  %l77 = alloca %"compiler/views:holding"
  %l85 = alloca i1
  %l86 = alloca ptr
  %l88 = alloca i32
  %l89 = alloca i1
  %l90 = alloca i1
  %l93 = alloca ptr
  %l102 = alloca %"compiler/typed:Local"
  %l104 = alloca i1
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l112 = alloca i64
  %l114 = alloca i64
  %l119 = alloca %"compiler/views:place"
  %l122 = alloca i1
  %l130 = alloca i64
  %l132 = alloca i1
  %l136 = alloca i64
  %l138 = alloca i64
  %l143 = alloca %"compiler/views:place"
  %l152 = alloca ptr
  %l161 = alloca %"compiler/typed:Local"
  %l163 = alloca i1
  %l166 = alloca i64
  %l168 = alloca i64
  %l173 = alloca %"compiler/views:view"
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t93 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a4, label %bb1, label %bb2
bb1:
  store i64 0, ptr %l6, !tbaa !24
  %t3 = load ptr, ptr %l5, !tbaa !29
  %t5 = getelementptr %"compiler/views:state", ptr %t3, i32 0, i32 1
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t5)
  store i64 %t7, ptr %l30
  br label %bb3
bb2:
  br label %bb76
bb3:
  %t8 = load i64, ptr %l30, !tbaa !24
  store i64 %t8, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l8, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb9
bb6:
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l8, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l8, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l37, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l37, !tbaa !24
  store i64 %t35, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l34, !tbaa !24
  store i64 %t36, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb10
bb10:
  %t37 = load i64, ptr %l10, !tbaa !24
  %t38 = load i64, ptr %l9, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l10, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l11, !tbaa !24
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = getelementptr %"compiler/views:state", ptr %t55, i32 0, i32 1
  %t58 = load i64, ptr %l11, !tbaa !24
  %t61 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t57, i64 %t58)
  store %"compiler/views:holding" %t61, ptr %l58
  br label %bb14
bb14:
  %t62 = load %"compiler/views:holding", ptr %l58
  store %"compiler/views:holding" %t62, ptr %l12
  %t63 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t64 = getelementptr %"compiler/views:view", ptr %t63, i32 0, i32 0
  %t65 = getelementptr %"compiler/views:place", ptr %t64, i32 0, i32 0
  %t66 = load { i64, [2 x i64] }, ptr %t65
  %t68 = extractvalue { i64, [2 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 1
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t72 = getelementptr %"compiler/views:view", ptr %t71, i32 0, i32 0
  %t73 = getelementptr %"compiler/views:place", ptr %t72, i32 0, i32 0
  %t74 = getelementptr { i64, [2 x i64] }, ptr %t73, i32 0, i32 1
  %t75 = getelementptr { i64 }, ptr %t74, i32 0, i32 0
  %t76 = load i64, ptr %t75
  %t77 = load i64, ptr %l1, !tbaa !24
  %t80 = icmp eq i64 %t76, %t77
  store i1 %t80, ptr %l61, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb17
bb17:
  %t82 = load i1, ptr %l61, !tbaa !21
  br i1 %t82, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t83 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t84 = getelementptr %"compiler/views:view", ptr %t83, i32 0, i32 0
  %t85 = getelementptr %"compiler/views:place", ptr %t84, i32 0, i32 0
  %t86 = getelementptr { i64, [2 x i64] }, ptr %t85, i32 0, i32 1
  %t87 = getelementptr { i64 }, ptr %t86, i32 0, i32 0
  %t88 = load i64, ptr %t87
  store i64 %t88, ptr %l13, !tbaa !24
  %t90 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t91 = load %"compiler/views:view", ptr %t90
  store %"compiler/views:view" %t91, ptr %l14
  store { i64, [2 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [2 x i64] }, ptr %t93, i32 0, i32 0
  store i64 0, ptr %t94
  %t95 = load { i64, [2 x i64] }, ptr %t93
  %t96 = getelementptr %"compiler/views:view", ptr %l14, i32 0, i32 0
  %t97 = getelementptr %"compiler/views:place", ptr %t96, i32 0, i32 1
  %t98 = load i64, ptr %t97, !tbaa !24
  %t99 = getelementptr %"compiler/views:view", ptr %l14, i32 0, i32 0
  %t100 = getelementptr %"compiler/views:place", ptr %t99, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = getelementptr %"compiler/views:view", ptr %l14, i32 0, i32 0
  %t103 = getelementptr %"compiler/views:place", ptr %t102, i32 0, i32 3
  %t104 = load i1, ptr %t103, !tbaa !21
  %t109 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s4, { i64, [2 x i64] } %t95, i64 %t98, i64 %t101, i1 %t104)
  store %"compiler/views:place" %t109, ptr %l71
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t110 = load %"compiler/views:place", ptr %l71
  %t111 = getelementptr %"compiler/views:view", ptr %l14, i32 0, i32 0
  store %"compiler/views:place" %t110, ptr %t111
  %t112 = load ptr, ptr %l5, !tbaa !29
  %t114 = getelementptr %"compiler/views:state", ptr %t112, i32 0, i32 1
  store ptr %t114, ptr %l73, !tbaa !29
  %t115 = load i64, ptr %l11, !tbaa !24
  store i64 %t115, ptr %l74, !tbaa !24
  %t116 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = load %"compiler/views:view", ptr %l14
  %t121 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s4, i64 %t117, %"compiler/views:view" %t118)
  store %"compiler/views:holding" %t121, ptr %l77
  br label %bb21
bb21:
  %t122 = load ptr, ptr %l73, !tbaa !29
  %t123 = load i64, ptr %l74, !tbaa !24
  %t124 = load %"compiler/views:holding", ptr %l77
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t122, i64 %t123, %"compiler/views:holding" %t124)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t125 = load i64, ptr %l10, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l10, !tbaa !24
  br label %bb10
bb25:
  %t129 = load ptr, ptr %l5, !tbaa !29
  %t130 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eforget(ptr %v3, ptr %t129, i64 %t130)
  br label %bb26
bb26:
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb27, label %bb28
bb27:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l86, !tbaa !29
  %t140 = load ptr, ptr %l2, !tbaa !29
  %t142 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t140)
  store i32 %t142, ptr %l88
  br label %bb29
bb28:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb31
bb29:
  %t143 = load ptr, ptr %l86, !tbaa !29
  %t144 = load i32, ptr %l88, !tbaa !23
  %t145 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %t143, i32 %t144)
  store i1 %t145, ptr %l89
  br label %bb30
bb30:
  %t146 = load i1, ptr %l89, !tbaa !21
  store i1 %t146, ptr %l85, !tbaa !21
  br label %bb31
bb31:
  %t147 = load i1, ptr %l85, !tbaa !21
  br i1 %t147, label %bb32, label %bb33
bb32:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/views:Viewer", ptr %t148, i32 0, i32 0
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 2
  store ptr %t153, ptr %l93, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/views:Viewer", ptr %t154, i32 0, i32 21
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = icmp eq ptr %t157, null
  br i1 %t159, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb39
bb34:
  call void @__olang_check_failed(ptr @olang_loc_7ef79401c16fe1d4_255ec247f03840e8)
  unreachable
bb35:
  br label %bb36
bb36:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/views:Viewer", ptr %t161, i32 0, i32 21
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t167 = getelementptr %"compiler/typed:Body", ptr %t164, i32 0, i32 7
  %t168 = load i64, ptr %l1, !tbaa !24
  %t171 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t167, i64 %t168)
  store %"compiler/typed:Local" %t171, ptr %l102
  br label %bb37
bb37:
  %t172 = getelementptr %"compiler/typed:Local", ptr %l102, i32 0, i32 2
  %t173 = load i32, ptr %t172, !tbaa !23
  %t174 = load ptr, ptr %l93, !tbaa !29
  %t176 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t174, i32 %t173)
  store i1 %t176, ptr %l104
  br label %bb38
bb38:
  %t177 = load i1, ptr %l104, !tbaa !21
  store i1 %t177, ptr %l90, !tbaa !21
  br label %bb39
bb39:
  %t178 = load i1, ptr %l90, !tbaa !21
  br i1 %t178, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t179 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s6, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %l105
  br label %bb42
bb41:
  br label %bb75
bb42:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l15
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load ptr, ptr %l2, !tbaa !29
  %t184 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v3, ptr %s6, ptr %t181, ptr %t182, ptr %t184, ptr %l15)
  br label %bb43
bb43:
  store i1 false, ptr %l16, !tbaa !21
  store ptr %l15, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  %t190 = load i64, ptr %l18, !tbaa !24
  store i64 %t190, ptr %l112, !tbaa !24
  %t191 = load ptr, ptr %l17, !tbaa !29
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t191)
  store i64 %t193, ptr %l114
  br label %bb45
bb45:
  %t194 = load i64, ptr %l112, !tbaa !24
  %t195 = load i64, ptr %l114, !tbaa !24
  %t196 = icmp slt i64 %t194, %t195
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb46, label %bb47
bb46:
  br label %bb57
bb47:
  br label %bb48
bb48:
  %t200 = load ptr, ptr %l17, !tbaa !29
  %t201 = load i64, ptr %l18, !tbaa !24
  %t204 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t200, i64 %t201)
  store %"compiler/views:place" %t204, ptr %l119
  br label %bb49
bb49:
  %t205 = load %"compiler/views:place", ptr %l119
  store %"compiler/views:place" %t205, ptr %l19
  %t206 = getelementptr %"compiler/views:place", ptr %l19, i32 0, i32 0
  %t207 = load { i64, [2 x i64] }, ptr %t206
  %t209 = extractvalue { i64, [2 x i64] } %t207, 0
  %t210 = icmp eq i64 %t209, 1
  br i1 %t210, label %bb50, label %bb51
bb50:
  %t212 = getelementptr %"compiler/views:place", ptr %l19, i32 0, i32 0
  %t213 = getelementptr { i64, [2 x i64] }, ptr %t212, i32 0, i32 1
  %t214 = getelementptr { i64 }, ptr %t213, i32 0, i32 0
  %t215 = load i64, ptr %t214
  %t216 = load i64, ptr %l1, !tbaa !24
  %t219 = icmp eq i64 %t215, %t216
  store i1 %t219, ptr %l122, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb52
bb52:
  %t221 = load i1, ptr %l122, !tbaa !21
  br i1 %t221, label %bb53, label %bb54
bb53:
  %t222 = getelementptr %"compiler/views:place", ptr %l19, i32 0, i32 0
  %t223 = getelementptr { i64, [2 x i64] }, ptr %t222, i32 0, i32 1
  %t224 = getelementptr { i64 }, ptr %t223, i32 0, i32 0
  %t225 = load i64, ptr %t224
  store i64 %t225, ptr %l20, !tbaa !24
  store i1 true, ptr %l16, !tbaa !21
  br label %bb55
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t227 = load i64, ptr %l18, !tbaa !24
  %t229 = add i64 %t227, 1
  store i64 %t229, ptr %l18, !tbaa !24
  br label %bb44
bb57:
  %t232 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %l15)
  store i64 %t232, ptr %l130
  br label %bb58
bb58:
  %t233 = load i64, ptr %l130, !tbaa !24
  %t234 = icmp sgt i64 %t233, 0
  br i1 %t234, label %bb59, label %bb60
bb59:
  %t236 = load i1, ptr %l16, !tbaa !21
  %t238 = xor i1 %t236, true
  store i1 %t238, ptr %l132, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb61
bb61:
  %t240 = load i1, ptr %l132, !tbaa !21
  br i1 %t240, label %bb62, label %bb63
bb62:
  store ptr %l15, ptr %l21, !tbaa !29
  store i64 0, ptr %l22, !tbaa !24
  br label %bb64
bb63:
  br label %bb74
bb64:
  %t242 = load i64, ptr %l22, !tbaa !24
  store i64 %t242, ptr %l136, !tbaa !24
  %t243 = load ptr, ptr %l21, !tbaa !29
  %t245 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t243)
  store i64 %t245, ptr %l138
  br label %bb65
bb65:
  %t246 = load i64, ptr %l136, !tbaa !24
  %t247 = load i64, ptr %l138, !tbaa !24
  %t248 = icmp slt i64 %t246, %t247
  %t250 = xor i1 %t248, true
  br i1 %t250, label %bb66, label %bb67
bb66:
  br label %bb72
bb67:
  br label %bb68
bb68:
  %t252 = load ptr, ptr %l21, !tbaa !29
  %t253 = load i64, ptr %l22, !tbaa !24
  %t256 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t252, i64 %t253)
  store %"compiler/views:place" %t256, ptr %l143
  br label %bb69
bb69:
  %t257 = load %"compiler/views:place", ptr %l143
  %t258 = load ptr, ptr %l5, !tbaa !29
  %t259 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fviews_2enameAdd(ptr %v3, ptr %t258, i64 %t259, %"compiler/views:place" %t257)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t264 = load i64, ptr %l22, !tbaa !24
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l22, !tbaa !24
  br label %bb64
bb72:
  %t268 = load ptr, ptr %l5, !tbaa !29
  %t270 = getelementptr %"compiler/views:state", ptr %t268, i32 0, i32 3
  %t271 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v3, ptr %t270, i64 %t271)
  br label %bb73
bb73:
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s6)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t274 = load ptr, ptr %l0, !tbaa !29
  store ptr %t274, ptr %l152, !tbaa !29
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/views:Viewer", ptr %t275, i32 0, i32 21
  %t278 = load ptr, ptr %t277, !tbaa !29
  %t280 = icmp eq ptr %t278, null
  br i1 %t280, label %bb77, label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_f2a9606e62f672e3_f02fc5d7c09a9e07)
  unreachable
bb78:
  br label %bb79
bb79:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/views:Viewer", ptr %t282, i32 0, i32 21
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t288 = getelementptr %"compiler/typed:Body", ptr %t285, i32 0, i32 7
  %t289 = load i64, ptr %l1, !tbaa !24
  %t292 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t288, i64 %t289)
  store %"compiler/typed:Local" %t292, ptr %l161
  br label %bb80
bb80:
  %t293 = getelementptr %"compiler/typed:Local", ptr %l161, i32 0, i32 2
  %t294 = load i32, ptr %t293, !tbaa !23
  %t295 = load ptr, ptr %l152, !tbaa !29
  %t297 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t295, i32 %t294)
  store i1 %t297, ptr %l163
  br label %bb81
bb81:
  %t298 = load i1, ptr %l163, !tbaa !21
  %t299 = xor i1 %t298, true
  br i1 %t299, label %bb82, label %bb83
bb82:
  br label %ret
bb83:
  br label %bb84
bb84:
  store ptr %a3, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb85
bb85:
  %t303 = load i64, ptr %l25, !tbaa !24
  store i64 %t303, ptr %l166, !tbaa !24
  %t304 = load ptr, ptr %l24, !tbaa !29
  %t306 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t304)
  store i64 %t306, ptr %l168
  br label %bb86
bb86:
  %t307 = load i64, ptr %l166, !tbaa !24
  %t308 = load i64, ptr %l168, !tbaa !24
  %t309 = icmp slt i64 %t307, %t308
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb87, label %bb88
bb87:
  br label %bb93
bb88:
  br label %bb89
bb89:
  %t313 = load ptr, ptr %l24, !tbaa !29
  %t314 = load i64, ptr %l25, !tbaa !24
  %t317 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t313, i64 %t314)
  store %"compiler/views:view" %t317, ptr %l173
  br label %bb90
bb90:
  %t318 = load %"compiler/views:view", ptr %l173
  %t319 = load ptr, ptr %l5, !tbaa !29
  %t320 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fviews_2eholdAdd(ptr %v3, ptr %t319, i64 %t320, %"compiler/views:view" %t318)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t325 = load i64, ptr %l25, !tbaa !24
  %t327 = add i64 %t325, 1
  store i64 %t327, ptr %l25, !tbaa !24
  br label %bb85
bb93:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l6, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/views:state", ptr %t30, i32 0, i32 0
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %t35, ptr %t36, ptr %t38)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb4
bb13:
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/views:state", ptr %t46, i32 0, i32 0
  %t49 = load i1, ptr %t48, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  br label %ret
bb15:
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Block", ptr %t51, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t58 = sub i64 %t56, 1
  store i64 %t58, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp sge i64 %t60, 0
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb18, label %bb19
bb18:
  br label %bb34
bb19:
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Block", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l41, !tbaa !27
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %t75, ptr %l8, !tbaa !29
  %t77 = load ptr, ptr %l8, !tbaa !29
  store ptr %t77, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t78 = load ptr, ptr %l44, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l44, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 17}
  %t84 = icmp eq i64 %t82, 12
  store i1 %t84, ptr %l45, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l45, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l8, !tbaa !29
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l9, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l9, !tbaa !29
  %t95 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t92, ptr %t93, ptr %t95)
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_f4d9265444485b3d_7f3b362071bb80f9)
  unreachable
bb32:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t101 = sub i64 %t99, 1
  store i64 %t101, ptr %l7, !tbaa !24
  br label %bb33
bb33:
  br label %bb17
bb34:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebodyKey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i64
  %l17 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l32 = alloca i32
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l45 = alloca i1
  %l48 = alloca i1
  %l49 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l17
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l17, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 4
  %t12 = getelementptr %"compiler/source:Span", ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 4
  %t17 = getelementptr %"compiler/source:Span", ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t13 to i64
  %t21 = call i64 @__olang_fmt_i64(ptr null, i64 %t20)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t26 = sext i32 %t18 to i64
  %t27 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t28 = add i64 %t24, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t20)
  %t31 = getelementptr i8, ptr %t29, i64 %t21
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  %t33 = call i64 @__olang_fmt_i64(ptr %t32, i64 %t26)
  %t34 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t29, 1
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Body", ptr %t37, i32 0, i32 1
  %t40 = load { i64, [2 x i64] }, ptr %t39
  store { i64, [2 x i64] } %t40, ptr %l5
  %t42 = load { i64, [2 x i64] }, ptr %l5
  %t44 = extractvalue { i64, [2 x i64] } %t42, 0
  %t45 = icmp eq i64 %t44, 0
  br i1 %t45, label %bb2, label %bb3
bb2:
  %t47 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t48 = getelementptr { i64 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  store i64 %t49, ptr %l6, !tbaa !24
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/views:Viewer", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t54, i64 %t55)
  store i32 %t58, ptr %l32
  br label %bb5
bb5:
  %t59 = load i32, ptr %l32, !tbaa !23
  %t60 = icmp eq i32 %t59, 0
  br i1 %t60, label %bb6, label %bb7
bb6:
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t66 = extractvalue { i64, ptr } %t62, 1
  %t67 = extractvalue { i64, ptr } %t62, 0
  %t68 = add i64 %t64, %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t63, i64 %t64)
  %t70 = getelementptr i8, ptr %t69, i64 %t64
  call void @olang_textcopy(ptr %t70, ptr %t66, i64 %t67)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  store { i64, ptr } %t72, ptr %l34, !tbaa !27
  br label %bb8
bb7:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t74, ptr %l34, !tbaa !27
  br label %bb8
bb8:
  %t76 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t76, ptr %l25, !tbaa !27
  br label %bb54
bb9:
  %t77 = load { i64, [2 x i64] }, ptr %l5
  %t79 = extractvalue { i64, [2 x i64] } %t77, 0
  %t80 = icmp eq i64 %t79, 1
  br i1 %t80, label %bb10, label %bb11
bb10:
  %t82 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t83 = getelementptr { i32, i32 }, ptr %t82, i32 0, i32 0
  %t84 = load i32, ptr %t83
  store i32 %t84, ptr %l7, !tbaa !23
  %t86 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t87 = getelementptr { i32, i32 }, ptr %t86, i32 0, i32 1
  %t88 = load i32, ptr %t87
  store i32 %t88, ptr %l8, !tbaa !23
  br label %bb12
bb11:
  br label %bb20
bb12:
  %t90 = load i32, ptr %l8, !tbaa !23
  %t92 = icmp eq i32 %t90, 0
  br i1 %t92, label %bb13, label %bb14
bb13:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l7, !tbaa !23
  %t98 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplainType(ptr %v0, ptr %t94, i32 %t95)
  store i1 %t98, ptr %l48
  br label %bb15
bb14:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb16
bb15:
  %t99 = load i1, ptr %l48, !tbaa !21
  store i1 %t99, ptr %l45, !tbaa !21
  br label %bb16
bb16:
  %t100 = load i1, ptr %l45, !tbaa !21
  br i1 %t100, label %bb17, label %bb18
bb17:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t102 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t105 = extractvalue { i64, ptr } %t101, 1
  %t106 = extractvalue { i64, ptr } %t101, 0
  %t107 = add i64 %t103, %t106
  %t108 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t107)
  call void @olang_textcopy(ptr %t108, ptr %t102, i64 %t103)
  %t109 = getelementptr i8, ptr %t108, i64 %t103
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t106)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t108, 1
  store { i64, ptr } %t111, ptr %l49, !tbaa !27
  br label %bb19
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t113, ptr %l49, !tbaa !27
  br label %bb19
bb19:
  %t115 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t115, ptr %l25, !tbaa !27
  br label %bb54
bb20:
  %t116 = load { i64, [2 x i64] }, ptr %l5
  %t118 = extractvalue { i64, [2 x i64] } %t116, 0
  %t119 = icmp eq i64 %t118, 3
  br i1 %t119, label %bb21, label %bb22
bb21:
  %t121 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t122 = getelementptr { i32 }, ptr %t121, i32 0, i32 0
  %t123 = load i32, ptr %t122
  store i32 %t123, ptr %l9, !tbaa !23
  br label %bb23
bb22:
  br label %bb28
bb23:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i32, ptr %l9, !tbaa !23
  %t129 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplainType(ptr %v0, ptr %t125, i32 %t126)
  store i1 %t129, ptr %l59
  br label %bb24
bb24:
  %t130 = load i1, ptr %l59, !tbaa !21
  br i1 %t130, label %bb25, label %bb26
bb25:
  %t131 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t132 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t135 = extractvalue { i64, ptr } %t131, 1
  %t136 = extractvalue { i64, ptr } %t131, 0
  %t137 = add i64 %t133, %t136
  %t138 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t137)
  call void @olang_textcopy(ptr %t138, ptr %t132, i64 %t133)
  %t139 = getelementptr i8, ptr %t138, i64 %t133
  call void @olang_textcopy(ptr %t139, ptr %t135, i64 %t136)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t138, 1
  store { i64, ptr } %t141, ptr %l60, !tbaa !27
  br label %bb27
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l63, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t143, ptr %l60, !tbaa !27
  br label %bb27
bb27:
  %t145 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t145, ptr %l25, !tbaa !27
  br label %bb54
bb28:
  %t146 = load { i64, [2 x i64] }, ptr %l5
  %t148 = extractvalue { i64, [2 x i64] } %t146, 0
  %t149 = icmp eq i64 %t148, 4
  br i1 %t149, label %bb29, label %bb30
bb29:
  %t151 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t152 = getelementptr { i32 }, ptr %t151, i32 0, i32 0
  %t153 = load i32, ptr %t152
  store i32 %t153, ptr %l10, !tbaa !23
  br label %bb31
bb30:
  br label %bb36
bb31:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i32, ptr %l10, !tbaa !23
  %t158 = sext i32 %t156 to i64
  %t159 = load i64, ptr %l1, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t165 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeyedBefore(ptr %v0, ptr %v1, ptr %t155, i64 %t158, i64 %t159, { i64, ptr } %t160)
  store i1 %t165, ptr %l73
  br label %bb32
bb32:
  %t166 = load i1, ptr %l73, !tbaa !21
  br i1 %t166, label %bb33, label %bb34
bb33:
  %t167 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t168 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t171 = extractvalue { i64, ptr } %t167, 1
  %t172 = extractvalue { i64, ptr } %t167, 0
  %t173 = add i64 %t169, %t172
  %t174 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t168, i64 %t169)
  %t175 = getelementptr i8, ptr %t174, i64 %t169
  call void @olang_textcopy(ptr %t175, ptr %t171, i64 %t172)
  %t176 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t174, 1
  store { i64, ptr } %t177, ptr %l74, !tbaa !27
  br label %bb35
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l77, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t179, ptr %l74, !tbaa !27
  br label %bb35
bb35:
  %t181 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t181, ptr %l25, !tbaa !27
  br label %bb54
bb36:
  %t182 = load { i64, [2 x i64] }, ptr %l5
  %t184 = extractvalue { i64, [2 x i64] } %t182, 0
  %t185 = icmp eq i64 %t184, 6
  br i1 %t185, label %bb37, label %bb38
bb37:
  %t187 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t188 = getelementptr { i64, i32 }, ptr %t187, i32 0, i32 1
  %t189 = load i32, ptr %t188
  store i32 %t189, ptr %l11, !tbaa !23
  br label %bb39
bb38:
  br label %bb41
bb39:
  store %olang.scope zeroinitializer, ptr %s10
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i32, ptr %l11, !tbaa !23
  %t195 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s10, ptr %t191, i32 %t192)
  store { i64, ptr } %t195, ptr %l84
  br label %bb40
bb40:
  %t196 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t198 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t201 = add i64 %t197, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t196, i64 %t197)
  %t203 = getelementptr i8, ptr %t202, i64 %t197
  call void @olang_textcopy(ptr %t203, ptr %t199, i64 %t200)
  %t204 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t202, 1
  store { i64, ptr } %t205, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  br label %bb54
bb41:
  %t207 = load { i64, [2 x i64] }, ptr %l5
  %t209 = extractvalue { i64, [2 x i64] } %t207, 0
  %t210 = icmp eq i64 %t209, 8
  br i1 %t210, label %bb42, label %bb43
bb42:
  %t212 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t213 = getelementptr { i32, i32, i64 }, ptr %t212, i32 0, i32 0
  %t214 = load i32, ptr %t213
  store i32 %t214, ptr %l12, !tbaa !23
  %t216 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t217 = getelementptr { i32, i32, i64 }, ptr %t216, i32 0, i32 2
  %t218 = load i64, ptr %t217
  store i64 %t218, ptr %l13, !tbaa !24
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l12, !tbaa !23
  %t223 = sext i32 %t221 to i64
  %t224 = load i64, ptr %l1, !tbaa !24
  %t225 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t230 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeyedBefore(ptr %v0, ptr %v1, ptr %t220, i64 %t223, i64 %t224, { i64, ptr } %t225)
  store i1 %t230, ptr %l95
  br label %bb45
bb45:
  %t231 = load i1, ptr %l95, !tbaa !21
  br i1 %t231, label %bb46, label %bb47
bb46:
  %t232 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t233 = load i64, ptr %l13, !tbaa !24
  %t234 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t235 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t237 = extractvalue { i64, ptr } %t232, 1
  %t238 = extractvalue { i64, ptr } %t232, 0
  %t239 = add i64 %t235, %t238
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t242 = add i64 %t239, %t241
  %t244 = call i64 @__olang_fmt_i64(ptr null, i64 %t233)
  %t245 = add i64 %t242, %t244
  %t246 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t245)
  call void @olang_textcopy(ptr %t246, ptr %t234, i64 %t235)
  %t247 = getelementptr i8, ptr %t246, i64 %t235
  call void @olang_textcopy(ptr %t247, ptr %t237, i64 %t238)
  %t248 = getelementptr i8, ptr %t247, i64 %t238
  call void @olang_textcopy(ptr %t248, ptr %t240, i64 %t241)
  %t249 = getelementptr i8, ptr %t248, i64 %t241
  %t250 = call i64 @__olang_fmt_i64(ptr %t249, i64 %t233)
  %t251 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t246, 1
  store { i64, ptr } %t252, ptr %l96, !tbaa !27
  br label %bb48
bb47:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l100, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t254, ptr %l96, !tbaa !27
  br label %bb48
bb48:
  %t256 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t256, ptr %l25, !tbaa !27
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l102, !tbaa !27
  %t257 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t257, ptr %l25, !tbaa !27
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_adfa23ace0171c5f_e5223cf4b947af3)
  unreachable
bb54:
  %t259 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 0
  store i64 %t260, ptr %l104, !tbaa !24
  %t261 = load i64, ptr %l104, !tbaa !24
  %t262 = mul i64 %t261, 1
  %t263 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t262)
  %t264 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  store { i64, ptr } %t265, ptr %l105, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = load i64, ptr %l104, !tbaa !24
  %t271 = mul i64 %t270, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t267, ptr %t269, i64 %t271, i1 false)
  %t272 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t272, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t273 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t273, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l18 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca i1
  %l43 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Elem", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t27 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t16, ptr %t20, ptr %t21, ptr %t22)
  store i32 %t27, ptr %l18
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb7, label %ok.29, !prof !99
ok.29:
  br label %bb6
bb6:
  br label %bb8
bb7:
  %t30 = load i32, ptr %l18, !tbaa !23
  %t31 = lshr i32 %t30, 16
  %t32 = and i32 %t30, 65535
  %t33 = icmp eq i32 %t31, 1
  %t34 = select i1 %t33, i32 1, i32 0
  %t35 = icmp eq i32 %t30, 0
  %t36 = shl i32 %t34, 16
  %t37 = or i32 %t36, %t32
  %t38 = select i1 %t35, i32 0, i32 %t37
  store i32 %t38, ptr %rv
  br label %ret
bb8:
  store i32 0, ptr %rv
  br label %ret
bb9:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t41 = load ptr, ptr %l20, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 8}
  %t47 = icmp eq i64 %t45, 3
  store i1 %t47, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l21, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l5, !tbaa !29
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t63 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t55, ptr %t56, ptr %t57, ptr %t58)
  store i32 %t63, ptr %l30
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb16, label %ok.65, !prof !99
ok.65:
  br label %bb15
bb15:
  br label %bb17
bb16:
  %t66 = load i32, ptr %l30, !tbaa !23
  %t67 = lshr i32 %t66, 16
  %t68 = and i32 %t66, 65535
  %t69 = icmp eq i32 %t67, 1
  %t70 = select i1 %t69, i32 1, i32 0
  %t71 = icmp eq i32 %t66, 0
  %t72 = shl i32 %t70, 16
  %t73 = or i32 %t72, %t68
  %t74 = select i1 %t71, i32 0, i32 %t73
  store i32 %t74, ptr %rv
  br label %ret
bb17:
  store i32 0, ptr %rv
  br label %ret
bb18:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t77 = load ptr, ptr %l32, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t80 = load ptr, ptr %l32, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 5
  store i1 %t83, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t84 = load i1, ptr %l33, !tbaa !21
  br i1 %t84, label %bb21, label %bb22
bb21:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l6, !tbaa !29
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Payload", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t97 = load ptr, ptr %l3, !tbaa !29
  %t102 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t91, ptr %t95, ptr %t96, ptr %t97)
  store i32 %t102, ptr %l43
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb25, label %ok.104, !prof !99
ok.104:
  br label %bb24
bb24:
  br label %bb26
bb25:
  %t105 = load i32, ptr %l43, !tbaa !23
  %t106 = lshr i32 %t105, 16
  %t107 = and i32 %t105, 65535
  %t108 = icmp eq i32 %t106, 1
  %t109 = select i1 %t108, i32 1, i32 0
  %t110 = icmp eq i32 %t105, 0
  %t111 = shl i32 %t109, 16
  %t112 = or i32 %t111, %t107
  %t113 = select i1 %t110, i32 0, i32 %t112
  store i32 %t113, ptr %rv
  br label %ret
bb26:
  store i32 0, ptr %rv
  br label %ret
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_3e3606e9c916d325_999483638397109)
  unreachable
bb32:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i1
  %l28 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l43 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i32
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %l64 = alloca i32
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb21
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = call ptr @compiler_2fviews_2eunAway(ptr %v1, ptr %s1, ptr %t16)
  store ptr %t18, ptr %l17
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l17, !tbaa !29
  store ptr %t19, ptr %l5, !tbaa !29
  %t20 = load ptr, ptr %l5, !tbaa !29
  store ptr %t20, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t21 = load ptr, ptr %l18, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l18, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 2
  store i1 %t27, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l6, !tbaa !29
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferOf(ptr %v0, ptr %s1, ptr %v2, ptr %v3, ptr %t35, ptr %t36, ptr %t37, ptr %t38)
  store i32 %t43, ptr %l28
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb13, label %ok.45, !prof !99
ok.45:
  br label %bb12
bb12:
  br label %bb14
bb13:
  %t46 = load i32, ptr %l28, !tbaa !23
  %t47 = lshr i32 %t46, 16
  %t48 = and i32 %t46, 65535
  %t49 = icmp eq i32 %t47, 1
  %t50 = select i1 %t49, i32 1, i32 0
  %t51 = icmp eq i32 %t46, 0
  %t52 = shl i32 %t50, 16
  %t53 = or i32 %t52, %t48
  %t54 = select i1 %t51, i32 0, i32 %t53
  call void @__olang_scope_close(ptr %s1)
  store i32 %t54, ptr %rv
  br label %ret
bb14:
  call void @__olang_scope_close(ptr %s1)
  store i32 0, ptr %rv
  br label %ret
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1bacef8f79fa259f_b65daa57821eac43)
  unreachable
bb20:
  call void @__olang_scope_close(ptr %s1)
  br label %bb49
bb21:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb22, label %bb23
bb22:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 8}
  %t63 = icmp eq i64 %t61, 3
  store i1 %t63, ptr %l31, !tbaa !21
  br label %bb23
bb23:
  %t64 = load i1, ptr %l31, !tbaa !21
  br i1 %t64, label %bb24, label %bb25
bb24:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l7, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t73, i32 0, i32 3
  %t75 = load i64, ptr %t74
  store i64 %t75, ptr %l8, !tbaa !24
  br label %bb26
bb25:
  br label %bb44
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l38, !tbaa !29
  %t78 = load ptr, ptr %l7, !tbaa !29
  %t80 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t78)
  store i32 %t80, ptr %l40
  br label %bb27
bb27:
  %t81 = load ptr, ptr %l38, !tbaa !29
  %t82 = load i32, ptr %l40, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %s4, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l41
  br label %bb28
bb28:
  %t84 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t84, ptr %l9, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t85, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t87, ptr %l43
  br label %bb29
bb29:
  %t88 = load i1, ptr %l43, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb30, label %bb31
bb30:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l46, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l47, !tbaa !29
  %t93 = load ptr, ptr %l7, !tbaa !29
  %t95 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t93)
  store i32 %t95, ptr %l49
  br label %bb32
bb31:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb36
bb32:
  %t96 = load ptr, ptr %l47, !tbaa !29
  %t97 = load i32, ptr %l49, !tbaa !23
  %t98 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t98, ptr %l50
  br label %bb33
bb33:
  %t99 = load i64, ptr %l8, !tbaa !24
  %t100 = load ptr, ptr %l46, !tbaa !29
  %t101 = load i32, ptr %l50, !tbaa !23
  %t103 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efieldName(ptr %v0, ptr %s4, ptr %t100, i32 %t101, i64 %t99)
  store { i64, ptr } %t103, ptr %l52
  br label %bb34
bb34:
  %t104 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  %t106 = extractvalue { i64, ptr } %t104, 1
  %t107 = mul i64 %t105, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t107)
  call void @llvm.memcpy.p0.p0.i64(ptr %t108, ptr %t106, i64 %t107, i1 false)
  %t109 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  %t111 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t110, { i64, ptr } %t111)
  store i1 %t114, ptr %l55
  br label %bb35
bb35:
  %t115 = load i1, ptr %l55, !tbaa !21
  store i1 %t115, ptr %l45, !tbaa !21
  br label %bb36
bb36:
  %t116 = load i1, ptr %l45, !tbaa !21
  br i1 %t116, label %bb37, label %bb38
bb37:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l7, !tbaa !29
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t120 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erecordPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t117, ptr %t118, ptr %t119, ptr %t120)
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_scope_close(ptr %s4)
  store i32 0, ptr %rv
  br label %ret
bb40:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l7, !tbaa !29
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t128 = load ptr, ptr %l3, !tbaa !29
  %t133 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecolumnOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t125, ptr %t126, ptr %t127, ptr %t128)
  store i32 %t133, ptr %l64
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb42, label %ok.135, !prof !99
ok.135:
  br label %bb41
bb41:
  br label %bb43
bb42:
  %t136 = load i32, ptr %l64, !tbaa !23
  %t137 = lshr i32 %t136, 16
  %t138 = and i32 %t136, 65535
  %t139 = icmp eq i32 %t137, 1
  %t140 = select i1 %t139, i32 1, i32 0
  %t141 = icmp eq i32 %t136, 0
  %t142 = shl i32 %t140, 16
  %t143 = or i32 %t142, %t138
  %t144 = select i1 %t141, i32 0, i32 %t143
  call void @__olang_scope_close(ptr %s4)
  store i32 %t144, ptr %rv
  br label %ret
bb43:
  call void @__olang_scope_close(ptr %s4)
  store i32 0, ptr %rv
  br label %ret
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_b34deef82c4dbb1e_7a61043bb66e64c2)
  unreachable
bb49:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t6, i32 %a1)
  store i1 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i1, ptr %l6, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l17 = alloca i1
  %l22 = alloca i8
  %l23 = alloca { i64, ptr }
  %rv = alloca i8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 5
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/views:Viewer", ptr %t4, i32 0, i32 21
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_66a9fc2455c15d42_1dde5b0b0f74f18e)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/views:Viewer", ptr %t11, i32 0, i32 21
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l14
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l13
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = icmp sge i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t38 = icmp slt i64 %t32, %t35
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l17, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t41, ptr %l23, !tbaa !27
  %t42 = load i64, ptr %l1, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  store i8 %t47, ptr %l22, !tbaa !22
  br label %bb13
bb12:
  store i8 0, ptr %l22, !tbaa !22
  br label %bb13
bb13:
  %t49 = load i8, ptr %l22, !tbaa !22
  store i8 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecolumnOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i32
  %l32 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca { i64, ptr }
  %l51 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i32
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l5, !tbaa !24
  br label %bb5
bb4:
  br label %bb30
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t23)
  store i32 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i32, ptr %l17, !tbaa !23
  %t28 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t28, ptr %l18
  br label %bb7
bb7:
  %t29 = load i32, ptr %l18, !tbaa !23
  store i32 %t29, ptr %l6, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l6, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %s1, ptr %t30, i32 %t31)
  store { i64, ptr } %t34, ptr %l21
  br label %bb8
bb8:
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t41, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t43, ptr %l23
  br label %bb9
bb9:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/views:Viewer", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l6, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l29
  br label %bb12
bb11:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb13
bb12:
  %t55 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t57 = trunc i64 18 to i32
  %t58 = icmp eq i32 %t55, %t57
  store i1 %t58, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t60 = load i1, ptr %l24, !tbaa !21
  br i1 %t60, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l33, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/views:Viewer", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  store ptr %t67, ptr %l36, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/views:Viewer", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l6, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l41
  br label %bb16
bb15:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb20
bb16:
  %t78 = load ptr, ptr %l36, !tbaa !29
  %t79 = load i32, ptr %l41, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t80, ptr %l42
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l33, !tbaa !29
  %t82 = load i32, ptr %l42, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l43
  br label %bb18
bb18:
  %t84 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t85 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t84, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t85, ptr %l44
  br label %bb19
bb19:
  %t86 = load i1, ptr %l44, !tbaa !21
  store i1 %t86, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  %t87 = load i1, ptr %l32, !tbaa !21
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l6, !tbaa !23
  %t90 = load i64, ptr %l5, !tbaa !24
  %t94 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efieldName(ptr %v0, ptr %s1, ptr %t88, i32 %t89, i64 %t90)
  store { i64, ptr } %t94, ptr %l49
  br label %bb23
bb22:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb25
bb23:
  %t95 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 0
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t103 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t101, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t103, ptr %l51
  br label %bb24
bb24:
  %t104 = load i1, ptr %l51, !tbaa !21
  store i1 %t104, ptr %l45, !tbaa !21
  br label %bb25
bb25:
  %t105 = load i1, ptr %l45, !tbaa !21
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erecordPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t106, ptr %t107, ptr %a2, ptr %a3)
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s1)
  store i32 0, ptr %rv
  br label %ret
bb29:
  call void @__olang_scope_close(ptr %s1)
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_dfc376be0a55e0c3_9b1743fdc36697af)
  unreachable
bb35:
  store i32 65536, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecompare(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l50 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i32
  %l64 = alloca ptr
  %l67 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i32
  %l73 = alloca i1
  %l74 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l80 = alloca i1
  %l81 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l86 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l90 = alloca i32
  %l92 = alloca i1
  %l93 = alloca { i64, ptr }
  %l95 = alloca i64
  %l96 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca i64
  %l103 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 35
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:Viewer", ptr %t8, i32 0, i32 1
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l17
  br label %bb4
bb4:
  %t13 = load i64, ptr %l17, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l21, !tbaa !24
  store i64 %t41, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb41
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l2, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l7, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/views:Viewer", ptr %t60, i32 0, i32 34
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l43, !tbaa !27
  %t64 = load i64, ptr %l7, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %t67, i64 %t64
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !37
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t69, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t71, ptr %l46
  br label %bb15
bb15:
  %t72 = load i1, ptr %l46, !tbaa !21
  br i1 %t72, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb17:
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/views:Viewer", ptr %t73, i32 0, i32 1
  %t76 = load i64, ptr %l7, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l50
  br label %bb19
bb19:
  %t80 = load ptr, ptr %l50, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 3
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/views:Viewer", ptr %t84, i32 0, i32 34
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l54, !tbaa !27
  %t88 = load i64, ptr %l7, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %t91, i64 %t88
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !37
  %t95 = call i64 @__olang_fmt_i64(ptr null, i64 %t83)
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t100 = extractvalue { i64, ptr } %t93, 1
  %t101 = extractvalue { i64, ptr } %t93, 0
  %t102 = add i64 %t98, %t101
  %t103 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t102)
  %t104 = call i64 @__olang_fmt_i64(ptr %t103, i64 %t83)
  %t105 = getelementptr i8, ptr %t103, i64 %t95
  call void @olang_textcopy(ptr %t105, ptr %t96, i64 %t97)
  %t106 = getelementptr i8, ptr %t105, i64 %t97
  call void @olang_textcopy(ptr %t106, ptr %t100, i64 %t101)
  %t107 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t103, 1
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr %"compiler/views:Kept", ptr %t110, i32 0, i32 1
  %t116 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H33c414027a4af7673dd1306c9e88dc00(ptr %v1, ptr %v1, ptr %t112, { i64, ptr } %t108)
  %t117 = extractvalue { i32, { i64, ptr } } %t116, 1
  %t118 = extractvalue { i32, { i64, ptr } } %t116, 0
  store i32 %t118, ptr %l63
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb21, label %ok.120, !prof !99
ok.120:
  store { i64, ptr } %t117, ptr %l62
  br label %bb20
bb20:
  %t121 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t121, ptr %l58, !tbaa !27
  br label %bb23
bb21:
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb23:
  %t122 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t122, ptr %l9, !tbaa !27
  %t123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t123, ptr %l64, !tbaa !29
  %t124 = load ptr, ptr %l64, !tbaa !29
  %t125 = getelementptr %"compiler/views:Kept", ptr %t124, i32 0, i32 4
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = add i64 %t126, 1
  %t130 = load ptr, ptr %l64, !tbaa !29
  %t131 = getelementptr %"compiler/views:Kept", ptr %t130, i32 0, i32 4
  store i64 %t128, ptr %t131, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l7, !tbaa !24
  %t136 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaryText(ptr %v0, ptr %s3, ptr %t132, i64 %t133)
  %t137 = extractvalue { i32, { i64, ptr } } %t136, 1
  %t138 = extractvalue { i32, { i64, ptr } } %t136, 0
  store i32 %t138, ptr %l71
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb25, label %ok.140, !prof !99
ok.140:
  store { i64, ptr } %t137, ptr %l70
  br label %bb24
bb24:
  %t141 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t141, ptr %l67, !tbaa !27
  br label %bb27
bb25:
  %t142 = load i32, ptr %l71, !tbaa !23
  %t143 = ashr i32 %t142, 16
  %t145 = icmp eq i32 %t143, 1
  store i1 %t145, ptr %l73, !tbaa !21
  br label %bb26
bb26:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l74, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t146, ptr %l67, !tbaa !27
  br label %bb27
bb27:
  %t148 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 0
  store i64 %t149, ptr %l76, !tbaa !24
  %t150 = load i64, ptr %l76, !tbaa !24
  %t151 = mul i64 %t150, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l77, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = load i64, ptr %l76, !tbaa !24
  %t160 = mul i64 %t159, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t156, ptr %t158, i64 %t160, i1 false)
  %t161 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t161, ptr %l10, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %v1, { i64, ptr } %t162, { i64, ptr } %t163)
  store i1 %t166, ptr %l80
  br label %bb28
bb28:
  %t167 = load i1, ptr %l80, !tbaa !21
  br i1 %t167, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb30:
  br label %bb31
bb31:
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l82, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/views:Viewer", ptr %t169, i32 0, i32 1
  %t172 = load i64, ptr %l7, !tbaa !24
  %t175 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t171, i64 %t172)
  store ptr %t175, ptr %l86
  br label %bb32
bb32:
  %t176 = load ptr, ptr %l86, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Body", ptr %t176, i32 0, i32 3
  %t179 = load i64, ptr %t178, !tbaa !24
  %t180 = load ptr, ptr %l82, !tbaa !29
  %t182 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efileWord(ptr %v0, ptr %s3, ptr %t180, i64 %t179)
  %t183 = extractvalue { i32, { i64, ptr } } %t182, 1
  %t184 = extractvalue { i32, { i64, ptr } } %t182, 0
  store i32 %t184, ptr %l90
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb34, label %ok.186, !prof !99
ok.186:
  store { i64, ptr } %t183, ptr %l89
  br label %bb33
bb33:
  %t187 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t187, ptr %l81, !tbaa !27
  br label %bb36
bb34:
  %t188 = load i32, ptr %l90, !tbaa !23
  %t189 = ashr i32 %t188, 16
  %t191 = icmp eq i32 %t189, 1
  store i1 %t191, ptr %l92, !tbaa !21
  br label %bb35
bb35:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l93, !tbaa !27
  %t192 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t192, ptr %l81, !tbaa !27
  br label %bb36
bb36:
  %t194 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 0
  store i64 %t195, ptr %l95, !tbaa !24
  %t196 = load i64, ptr %l95, !tbaa !24
  %t197 = mul i64 %t196, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t197)
  %t199 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  store { i64, ptr } %t200, ptr %l96, !tbaa !27
  %t201 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = load i64, ptr %l95, !tbaa !24
  %t206 = mul i64 %t205, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t202, ptr %t204, i64 %t206, i1 false)
  %t207 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t207, ptr %l11, !tbaa !27
  %t208 = load ptr, ptr %l1, !tbaa !29
  %t210 = getelementptr %"compiler/views:Kept", ptr %t208, i32 0, i32 6
  store ptr %t210, ptr %l98, !tbaa !29
  %t211 = ptrtoint ptr %v1 to i64
  store i64 %t211, ptr %l99, !tbaa !24
  %t212 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t212, label %bb37, label %bb38
bb37:
  %t214 = call ptr @__olang_region_make(ptr %v1)
  %t215 = ptrtoint ptr %t214 to i64
  store i64 %t215, ptr %l99, !tbaa !24
  br label %bb38
bb38:
  %t216 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/views:Viewer", ptr %t217, i32 0, i32 34
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l103, !tbaa !27
  %t221 = load i64, ptr %l7, !tbaa !24
  %t223 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %t224, i64 %t221
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !37
  %t227 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t229 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t232 = extractvalue { i64, ptr } %t216, 1
  %t233 = extractvalue { i64, ptr } %t216, 0
  %t234 = add i64 %t230, %t233
  %t235 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t237 = add i64 %t234, %t236
  %t239 = extractvalue { i64, ptr } %t226, 1
  %t240 = extractvalue { i64, ptr } %t226, 0
  %t241 = add i64 %t237, %t240
  %t242 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t246 = extractvalue { i64, ptr } %t227, 1
  %t247 = extractvalue { i64, ptr } %t227, 0
  %t248 = add i64 %t244, %t247
  %t249 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t251 = add i64 %t248, %t250
  %t253 = extractvalue { i64, ptr } %t228, 1
  %t254 = extractvalue { i64, ptr } %t228, 0
  %t255 = add i64 %t251, %t254
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t258 = add i64 %t255, %t257
  %t259 = load i64, ptr %l99
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call ptr @__olang_scope_alloc(ptr %t260, i64 %t258)
  call void @olang_textcopy(ptr %t261, ptr %t229, i64 %t230)
  %t262 = getelementptr i8, ptr %t261, i64 %t230
  call void @olang_textcopy(ptr %t262, ptr %t232, i64 %t233)
  %t263 = getelementptr i8, ptr %t262, i64 %t233
  call void @olang_textcopy(ptr %t263, ptr %t235, i64 %t236)
  %t264 = getelementptr i8, ptr %t263, i64 %t236
  call void @olang_textcopy(ptr %t264, ptr %t239, i64 %t240)
  %t265 = getelementptr i8, ptr %t264, i64 %t240
  call void @olang_textcopy(ptr %t265, ptr %t242, i64 %t243)
  %t266 = getelementptr i8, ptr %t265, i64 %t243
  call void @olang_textcopy(ptr %t266, ptr %t246, i64 %t247)
  %t267 = getelementptr i8, ptr %t266, i64 %t247
  call void @olang_textcopy(ptr %t267, ptr %t249, i64 %t250)
  %t268 = getelementptr i8, ptr %t267, i64 %t250
  call void @olang_textcopy(ptr %t268, ptr %t253, i64 %t254)
  %t269 = getelementptr i8, ptr %t268, i64 %t254
  call void @olang_textcopy(ptr %t269, ptr %t256, i64 %t257)
  %t270 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t261, 1
  %t273 = load i64, ptr %l99
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = extractvalue { i64, ptr } %t271, 0
  %t276 = extractvalue { i64, ptr } %t271, 1
  %t277 = mul i64 %t275, 1
  %t278 = call ptr @__olang_scope_alloc(ptr %t274, i64 %t277)
  call void @llvm.memcpy.p0.p0.i64(ptr %t278, ptr %t276, i64 %t277, i1 false)
  %t279 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  %t281 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t281, { i64, ptr } %t280)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb40:
  %t283 = load i64, ptr %l6, !tbaa !24
  %t285 = add i64 %t283, 1
  store i64 %t285, ptr %l6, !tbaa !24
  br label %bb11
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca ptr
  %l34 = alloca i64
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca ptr
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca ptr
  %l40 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca %"compiler/views:state"
  %l44 = alloca %"compiler/views:state"
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca i32
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l60 = alloca i32
  %l62 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i64
  %l75 = alloca i1
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca ptr
  %l81 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca i32
  %l111 = alloca i1
  %l113 = alloca i64
  %l115 = alloca i64
  %l120 = alloca %"compiler/views:place"
  %l121 = alloca ptr
  %l125 = alloca %"compiler/views:view"
  %l128 = alloca ptr
  %l129 = alloca i1
  %l139 = alloca ptr
  %l140 = alloca i1
  %l151 = alloca ptr
  %l152 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i1
  %l181 = alloca { i64, ptr }
  %l196 = alloca ptr
  %l197 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca i1
  %l225 = alloca i64
  %l228 = alloca i64
  %l246 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l248 = alloca { i64, ptr }
  %l255 = alloca i1
  %l257 = alloca i1
  %l261 = alloca i64
  %l263 = alloca i64
  %l268 = alloca %"compiler/views:view"
  %l275 = alloca ptr
  %l276 = alloca i1
  %l301 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l307 = alloca i32
  %l309 = alloca i1
  %l311 = alloca i64
  %l313 = alloca i64
  %l318 = alloca %"compiler/views:place"
  %l319 = alloca ptr
  %l323 = alloca %"compiler/views:view"
  %l326 = alloca ptr
  %l327 = alloca i1
  %l339 = alloca %"compiler/views:state"
  %l341 = alloca %"compiler/views:state"
  %l343 = alloca %"compiler/views:state"
  %l345 = alloca %"compiler/views:state"
  %l361 = alloca ptr
  %l362 = alloca i1
  %l375 = alloca { i64, ptr }
  %l389 = alloca ptr
  %l390 = alloca i1
  %l399 = alloca ptr
  %l400 = alloca i1
  %l415 = alloca ptr
  %l416 = alloca i1
  %l421 = alloca ptr
  %l422 = alloca i1
  %l438 = alloca { i64, ptr }
  %l449 = alloca ptr
  %l450 = alloca i1
  %l464 = alloca ptr
  %l465 = alloca i1
  %l478 = alloca { i64, ptr }
  %l481 = alloca ptr
  %l482 = alloca i1
  %l494 = alloca ptr
  %l495 = alloca i1
  %l505 = alloca ptr
  %l507 = alloca i32
  %l508 = alloca i1
  %l510 = alloca i64
  %l512 = alloca i64
  %l517 = alloca %"compiler/views:view"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %t555 = alloca %"compiler/views:state", align 8
  %t557 = alloca %"compiler/views:state", align 8
  %t560 = alloca %"compiler/views:state", align 8
  %t562 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/views:state", ptr %t5, i32 0, i32 0
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l75, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l75, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l78
  br label %bb7
bb7:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l4
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l79
  br label %bb8
bb8:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l5
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t16 = load ptr, ptr %l80, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l80, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 2
  store i1 %t22, ptr %l81, !tbaa !21
  br label %bb10
bb10:
  %t23 = load i1, ptr %l81, !tbaa !21
  br i1 %t23, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l6, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l6, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t30, ptr %t31, i1 false, ptr %t33, ptr %l4)
  br label %bb14
bb14:
  br label %bb238
bb15:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t39 = load ptr, ptr %l91, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t42 = load ptr, ptr %l91, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l92, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l92, !tbaa !21
  br i1 %t46, label %bb18, label %bb19
bb18:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 0
  %t51 = load %"compiler/source:Span", ptr %t50
  store %"compiler/source:Span" %t51, ptr %l7
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l8, !tbaa !29
  br label %bb20
bb19:
  br label %bb37
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l8, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t59, ptr %t60, i1 true, ptr %t62, ptr %l4)
  br label %bb21
bb21:
  %t67 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l104
  br label %bb22
bb22:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l9
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l8, !tbaa !29
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t76 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferElem(ptr %v0, ptr %v1, ptr %v2, ptr %s3, ptr %t69, ptr %t70, ptr %t71, ptr %l9)
  store i32 %t76, ptr %l109
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb24, label %ok.78, !prof !99
ok.78:
  br label %bb23
bb23:
  br label %bb26
bb24:
  %t79 = load i32, ptr %l109, !tbaa !23
  %t80 = ashr i32 %t79, 16
  %t82 = icmp eq i32 %t80, 1
  store i1 %t82, ptr %l111, !tbaa !21
  br label %bb25
bb25:
  br label %bb26
bb26:
  store ptr %l9, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t84 = load i64, ptr %l11, !tbaa !24
  store i64 %t84, ptr %l113, !tbaa !24
  %t85 = load ptr, ptr %l10, !tbaa !29
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s3, ptr %t85)
  store i64 %t87, ptr %l115
  br label %bb28
bb28:
  %t88 = load i64, ptr %l113, !tbaa !24
  %t89 = load i64, ptr %l115, !tbaa !24
  %t90 = icmp slt i64 %t88, %t89
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb30:
  br label %bb31
bb31:
  %t94 = load ptr, ptr %l10, !tbaa !29
  %t95 = load i64, ptr %l11, !tbaa !24
  %t98 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s3, ptr %t94, i64 %t95)
  store %"compiler/views:place" %t98, ptr %l120
  br label %bb32
bb32:
  %t99 = load %"compiler/views:place", ptr %l120
  store ptr %l4, ptr %l121, !tbaa !29
  %t101 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t104 = sext i32 %t102 to i64
  %t107 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s6, %"compiler/views:place" %t99, i64 %t104)
  store %"compiler/views:view" %t107, ptr %l125
  br label %bb33
bb33:
  %t108 = load ptr, ptr %l121, !tbaa !29
  %t109 = load %"compiler/views:view", ptr %l125
  call void @compiler_2fviews_2eviewAdd(ptr %s0, ptr %t108, %"compiler/views:view" %t109)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s6)
  br label %bb35
bb35:
  %t110 = load i64, ptr %l11, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l11, !tbaa !24
  br label %bb27
bb36:
  call void @__olang_scope_close(ptr %s3)
  br label %bb238
bb37:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t115 = load ptr, ptr %l128, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb38, label %bb39
bb38:
  %t118 = load ptr, ptr %l128, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 18}
  %t121 = icmp eq i64 %t119, 4
  store i1 %t121, ptr %l129, !tbaa !21
  br label %bb39
bb39:
  %t122 = load i1, ptr %l129, !tbaa !21
  br i1 %t122, label %bb40, label %bb41
bb40:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [5 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l13, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l13, !tbaa !29
  %t132 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t129, ptr %t130, i1 false, ptr %t132, ptr %l4)
  br label %bb43
bb43:
  br label %bb238
bb44:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t138 = load ptr, ptr %l139, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb45, label %bb46
bb45:
  %t141 = load ptr, ptr %l139, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 18}
  %t144 = icmp eq i64 %t142, 5
  store i1 %t144, ptr %l140, !tbaa !21
  br label %bb46
bb46:
  %t145 = load i1, ptr %l140, !tbaa !21
  br i1 %t145, label %bb47, label %bb48
bb47:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l14, !tbaa !29
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l14, !tbaa !29
  %t155 = getelementptr %"compiler/typed:Promote", ptr %t153, i32 0, i32 0
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t152, ptr %t156, ptr %t158, ptr %l4)
  br label %bb50
bb50:
  br label %bb238
bb51:
  %t163 = load ptr, ptr %l1, !tbaa !29
  store ptr %t163, ptr %l151, !tbaa !29
  store i1 false, ptr %l152, !tbaa !21
  %t164 = load ptr, ptr %l151, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb52, label %bb53
bb52:
  %t167 = load ptr, ptr %l151, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 18}
  %t170 = icmp eq i64 %t168, 6
  store i1 %t170, ptr %l152, !tbaa !21
  br label %bb53
bb53:
  %t171 = load i1, ptr %l152, !tbaa !21
  br i1 %t171, label %bb54, label %bb55
bb54:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr { i64, [5 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t174, i32 0, i32 0
  %t176 = load %"compiler/source:Span", ptr %t175
  store %"compiler/source:Span" %t176, ptr %l15
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr { i64, [5 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t180, i32 0, i32 1
  %t182 = load i32, ptr %t181
  store i32 %t182, ptr %l16, !tbaa !23
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t186 = getelementptr { i64, [5 x i64] }, ptr %t184, i32 0, i32 1
  %t187 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t186, i32 0, i32 2
  %t188 = load ptr, ptr %t187
  store ptr %t188, ptr %l17, !tbaa !29
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l15
  %t192 = load i32, ptr %l16, !tbaa !23
  %t193 = load ptr, ptr %l17, !tbaa !29
  %t194 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t190, %"compiler/source:Span" %t191, i32 %t192, ptr %t193, ptr %t194, ptr %l4)
  br label %bb57
bb57:
  br label %bb238
bb58:
  %t201 = load ptr, ptr %l1, !tbaa !29
  store ptr %t201, ptr %l167, !tbaa !29
  store i1 false, ptr %l168, !tbaa !21
  %t202 = load ptr, ptr %l167, !tbaa !29
  %t203 = icmp ne ptr %t202, null
  br i1 %t203, label %bb59, label %bb60
bb59:
  %t205 = load ptr, ptr %l167, !tbaa !29
  %t206 = load i64, ptr %t205, !range !{i64 0, i64 18}
  %t208 = icmp eq i64 %t206, 7
  store i1 %t208, ptr %l168, !tbaa !21
  br label %bb60
bb60:
  %t209 = load i1, ptr %l168, !tbaa !21
  br i1 %t209, label %bb61, label %bb62
bb61:
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t212 = getelementptr { i64, [5 x i64] }, ptr %t210, i32 0, i32 1
  %t213 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t212, i32 0, i32 2
  %t214 = load ptr, ptr %t213
  store ptr %t214, ptr %l18, !tbaa !29
  br label %bb63
bb62:
  br label %bb72
bb63:
  %t216 = load ptr, ptr %l18, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Make", ptr %t216, i32 0, i32 2
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  store { i64, ptr } %t219, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t221, 0
  store i64 %t223, ptr %l21, !tbaa !24
  br label %bb64
bb64:
  %t225 = load i64, ptr %l20, !tbaa !24
  %t226 = load i64, ptr %l21, !tbaa !24
  %t229 = icmp slt i64 %t225, %t226
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb65, label %bb66
bb65:
  br label %bb70
bb66:
  br label %bb67
bb67:
  %t233 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t233, ptr %l181, !tbaa !27
  %t234 = load i64, ptr %l20, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr ptr, ptr %t237, i64 %t234
  %t239 = load ptr, ptr %t238, !tbaa !39
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t241, ptr %t239, ptr %t244, ptr %l4)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t249 = load i64, ptr %l20, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l20, !tbaa !24
  br label %bb64
bb70:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %l18, !tbaa !29
  %t256 = getelementptr %"compiler/typed:Make", ptr %t254, i32 0, i32 3
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t258 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t253, ptr %t257, ptr %t258, ptr %l5)
  br label %bb71
bb71:
  br label %bb238
bb72:
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %l196, !tbaa !29
  store i1 false, ptr %l197, !tbaa !21
  %t264 = load ptr, ptr %l196, !tbaa !29
  %t265 = icmp ne ptr %t264, null
  br i1 %t265, label %bb73, label %bb74
bb73:
  %t267 = load ptr, ptr %l196, !tbaa !29
  %t268 = load i64, ptr %t267, !range !{i64 0, i64 18}
  %t270 = icmp eq i64 %t268, 8
  store i1 %t270, ptr %l197, !tbaa !21
  br label %bb74
bb74:
  %t271 = load i1, ptr %l197, !tbaa !21
  br i1 %t271, label %bb75, label %bb76
bb75:
  %t272 = load ptr, ptr %l1, !tbaa !29
  %t274 = getelementptr { i64, [5 x i64] }, ptr %t272, i32 0, i32 1
  %t275 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t274, i32 0, i32 2
  %t276 = load ptr, ptr %t275
  store ptr %t276, ptr %l23, !tbaa !29
  br label %bb77
bb76:
  br label %bb80
bb77:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load ptr, ptr %l23, !tbaa !29
  %t281 = getelementptr %"compiler/typed:Collect", ptr %t279, i32 0, i32 0
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t283 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t278, ptr %t282, ptr %t283, ptr %l5)
  br label %bb78
bb78:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load ptr, ptr %l23, !tbaa !29
  %t291 = getelementptr %"compiler/typed:Collect", ptr %t289, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t294 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t288, ptr %t292, ptr %t294)
  br label %bb79
bb79:
  br label %bb238
bb80:
  %t298 = load ptr, ptr %l1, !tbaa !29
  store ptr %t298, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t299 = load ptr, ptr %l212, !tbaa !29
  %t300 = icmp ne ptr %t299, null
  br i1 %t300, label %bb81, label %bb82
bb81:
  %t302 = load ptr, ptr %l212, !tbaa !29
  %t303 = load i64, ptr %t302, !range !{i64 0, i64 18}
  %t305 = icmp eq i64 %t303, 9
  store i1 %t305, ptr %l213, !tbaa !21
  br label %bb82
bb82:
  %t306 = load i1, ptr %l213, !tbaa !21
  br i1 %t306, label %bb83, label %bb84
bb83:
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr { i64, [5 x i64] }, ptr %t307, i32 0, i32 1
  %t310 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t309, i32 0, i32 2
  %t311 = load i32, ptr %t310, !range !{i32 0, i32 51}
  store i32 %t311, ptr %l24
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t315 = getelementptr { i64, [5 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t315, i32 0, i32 4
  %t317 = load { i64, ptr }, ptr %t316
  store { i64, ptr } %t317, ptr %l25, !tbaa !27
  br label %bb85
bb84:
  br label %bb116
bb85:
  store i64 0, ptr %l26, !tbaa !24
  %t319 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t319, 0
  store i64 %t321, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t323 = load i64, ptr %l27, !tbaa !24
  %t324 = load i64, ptr %l26, !tbaa !24
  %t327 = icmp sgt i64 %t323, %t324
  br i1 %t327, label %bb86, label %bb87
bb86:
  %t329 = load i64, ptr %l28, !tbaa !24
  %t331 = icmp sgt i64 %t329, 0
  br i1 %t331, label %bb88, label %bb89
bb87:
  store i64 0, ptr %l225, !tbaa !24
  br label %bb91
bb88:
  %t333 = load i64, ptr %l27, !tbaa !24
  %t334 = load i64, ptr %l26, !tbaa !24
  %t337 = sub i64 %t333, %t334
  %t338 = load i64, ptr %l28, !tbaa !24
  %t341 = add i64 %t337, %t338
  %t343 = sub i64 %t341, 1
  %t344 = load i64, ptr %l28, !tbaa !24
  %t347 = sdiv i64 %t343, %t344
  store i64 %t347, ptr %l228, !tbaa !24
  br label %bb90
bb89:
  store i64 0, ptr %l228, !tbaa !24
  br label %bb90
bb90:
  %t349 = load i64, ptr %l228, !tbaa !24
  store i64 %t349, ptr %l225, !tbaa !24
  br label %bb91
bb91:
  %t350 = load i64, ptr %l225, !tbaa !24
  store i64 %t350, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb92
bb92:
  store %olang.scope zeroinitializer, ptr %s18
  %t351 = load i64, ptr %l30, !tbaa !24
  %t352 = load i64, ptr %l29, !tbaa !24
  %t355 = icmp slt i64 %t351, %t352
  %t357 = xor i1 %t355, true
  br i1 %t357, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s18)
  br label %bb115
bb94:
  br label %bb95
bb95:
  %t359 = load i64, ptr %l26, !tbaa !24
  %t360 = load i64, ptr %l30, !tbaa !24
  %t361 = load i64, ptr %l28, !tbaa !24
  %t364 = mul i64 %t360, %t361
  %t367 = add i64 %t359, %t364
  store i64 %t367, ptr %l31, !tbaa !24
  %t369 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s18, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t369, ptr %l246
  br label %bb96
bb96:
  %t370 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l246
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t370, ptr %l32
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t372, ptr %l248, !tbaa !27
  %t373 = load i64, ptr %l31, !tbaa !24
  %t375 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !27
  %t377 = getelementptr ptr, ptr %t376, i64 %t373
  %t378 = load ptr, ptr %t377, !tbaa !39
  %t380 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s18, ptr %t371, ptr %t378, ptr %t380, ptr %l32)
  br label %bb97
bb97:
  %t385 = load i32, ptr %l24, !range !{i32 0, i32 51}
  %t387 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t385)
  store i1 %t387, ptr %l255
  br label %bb98
bb98:
  %t388 = load i1, ptr %l255, !tbaa !21
  %t389 = xor i1 %t388, true
  br i1 %t389, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l257, !tbaa !21
  br label %bb101
bb100:
  %t391 = load i64, ptr %l31, !tbaa !24
  %t393 = icmp ne i64 %t391, 0
  store i1 %t393, ptr %l257, !tbaa !21
  br label %bb101
bb101:
  %t395 = load i1, ptr %l257, !tbaa !21
  br i1 %t395, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s18)
  br label %bb114
bb103:
  br label %bb104
bb104:
  store ptr %l32, ptr %l33, !tbaa !29
  store i64 0, ptr %l34, !tbaa !24
  br label %bb105
bb105:
  %t397 = load i64, ptr %l34, !tbaa !24
  store i64 %t397, ptr %l261, !tbaa !24
  %t398 = load ptr, ptr %l33, !tbaa !29
  %t400 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s18, ptr %t398)
  store i64 %t400, ptr %l263
  br label %bb106
bb106:
  %t401 = load i64, ptr %l261, !tbaa !24
  %t402 = load i64, ptr %l263, !tbaa !24
  %t403 = icmp slt i64 %t401, %t402
  %t405 = xor i1 %t403, true
  br i1 %t405, label %bb107, label %bb108
bb107:
  br label %bb113
bb108:
  br label %bb109
bb109:
  %t407 = load ptr, ptr %l33, !tbaa !29
  %t408 = load i64, ptr %l34, !tbaa !24
  %t411 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s18, ptr %t407, i64 %t408)
  store %"compiler/views:view" %t411, ptr %l268
  br label %bb110
bb110:
  %t412 = load %"compiler/views:view", ptr %l268
  call void @compiler_2fviews_2eviewAdd(ptr %s0, ptr %l4, %"compiler/views:view" %t412)
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t416 = load i64, ptr %l34, !tbaa !24
  %t418 = add i64 %t416, 1
  store i64 %t418, ptr %l34, !tbaa !24
  br label %bb105
bb113:
  call void @__olang_scope_close(ptr %s18)
  br label %bb114
bb114:
  %t420 = load i64, ptr %l30, !tbaa !24
  %t422 = add i64 %t420, 1
  store i64 %t422, ptr %l30, !tbaa !24
  br label %bb92
bb115:
  br label %bb238
bb116:
  %t424 = load ptr, ptr %l1, !tbaa !29
  store ptr %t424, ptr %l275, !tbaa !29
  store i1 false, ptr %l276, !tbaa !21
  %t425 = load ptr, ptr %l275, !tbaa !29
  %t426 = icmp ne ptr %t425, null
  br i1 %t426, label %bb117, label %bb118
bb117:
  %t428 = load ptr, ptr %l275, !tbaa !29
  %t429 = load i64, ptr %t428, !range !{i64 0, i64 18}
  %t431 = icmp eq i64 %t429, 10
  store i1 %t431, ptr %l276, !tbaa !21
  br label %bb118
bb118:
  %t432 = load i1, ptr %l276, !tbaa !21
  br i1 %t432, label %bb119, label %bb120
bb119:
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t435 = getelementptr { i64, [5 x i64] }, ptr %t433, i32 0, i32 1
  %t436 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t435, i32 0, i32 0
  %t437 = load %"compiler/source:Span", ptr %t436
  store %"compiler/source:Span" %t437, ptr %l36
  %t439 = load ptr, ptr %l1, !tbaa !29
  %t441 = getelementptr { i64, [5 x i64] }, ptr %t439, i32 0, i32 1
  %t442 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t441, i32 0, i32 2
  %t443 = load ptr, ptr %t442
  store ptr %t443, ptr %l37, !tbaa !29
  br label %bb121
bb120:
  br label %bb140
bb121:
  store %olang.scope zeroinitializer, ptr %s24
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load ptr, ptr %l37, !tbaa !29
  %t448 = getelementptr %"compiler/typed:Slice", ptr %t446, i32 0, i32 0
  %t449 = load ptr, ptr %t448, !tbaa !29
  %t451 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t445, ptr %t449, i1 false, ptr %t451, ptr %l4)
  br label %bb122
bb122:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t457 = load ptr, ptr %l37, !tbaa !29
  %t459 = getelementptr %"compiler/typed:Slice", ptr %t457, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !29
  %t462 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t456, ptr %t460, ptr %t462, ptr %l5)
  br label %bb123
bb123:
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t468 = load ptr, ptr %l37, !tbaa !29
  %t470 = getelementptr %"compiler/typed:Slice", ptr %t468, i32 0, i32 2
  %t471 = load ptr, ptr %t470, !tbaa !29
  %t473 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t467, ptr %t471, ptr %t473, ptr %l5)
  br label %bb124
bb124:
  %t478 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s24, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478, ptr %l301
  br label %bb125
bb125:
  %t479 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l301
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t479, ptr %l38
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l37, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Slice", ptr %t481, i32 0, i32 0
  %t484 = load ptr, ptr %t483, !tbaa !29
  %t485 = load ptr, ptr %l2, !tbaa !29
  %t490 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferOf(ptr %v0, ptr %v1, ptr %v2, ptr %s24, ptr %t480, ptr %t484, ptr %t485, ptr %l38)
  store i32 %t490, ptr %l307
  %t491 = icmp ne i32 %t490, 0
  br i1 %t491, label %bb127, label %ok.492, !prof !99
ok.492:
  br label %bb126
bb126:
  br label %bb129
bb127:
  %t493 = load i32, ptr %l307, !tbaa !23
  %t494 = ashr i32 %t493, 16
  %t496 = icmp eq i32 %t494, 1
  store i1 %t496, ptr %l309, !tbaa !21
  br label %bb128
bb128:
  br label %bb129
bb129:
  store ptr %l38, ptr %l39, !tbaa !29
  store i64 0, ptr %l40, !tbaa !24
  br label %bb130
bb130:
  store %olang.scope zeroinitializer, ptr %s27
  %t498 = load i64, ptr %l40, !tbaa !24
  store i64 %t498, ptr %l311, !tbaa !24
  %t499 = load ptr, ptr %l39, !tbaa !29
  %t501 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s24, ptr %t499)
  store i64 %t501, ptr %l313
  br label %bb131
bb131:
  %t502 = load i64, ptr %l311, !tbaa !24
  %t503 = load i64, ptr %l313, !tbaa !24
  %t504 = icmp slt i64 %t502, %t503
  %t506 = xor i1 %t504, true
  br i1 %t506, label %bb132, label %bb133
bb132:
  call void @__olang_scope_close(ptr %s27)
  br label %bb139
bb133:
  br label %bb134
bb134:
  %t508 = load ptr, ptr %l39, !tbaa !29
  %t509 = load i64, ptr %l40, !tbaa !24
  %t512 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s24, ptr %t508, i64 %t509)
  store %"compiler/views:place" %t512, ptr %l318
  br label %bb135
bb135:
  %t513 = load %"compiler/views:place", ptr %l318
  store ptr %l4, ptr %l319, !tbaa !29
  %t515 = getelementptr %"compiler/source:Span", ptr %l36, i32 0, i32 0
  %t516 = load i32, ptr %t515, !tbaa !23
  %t518 = sext i32 %t516 to i64
  %t521 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s27, %"compiler/views:place" %t513, i64 %t518)
  store %"compiler/views:view" %t521, ptr %l323
  br label %bb136
bb136:
  %t522 = load ptr, ptr %l319, !tbaa !29
  %t523 = load %"compiler/views:view", ptr %l323
  call void @compiler_2fviews_2eviewAdd(ptr %s0, ptr %t522, %"compiler/views:view" %t523)
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s27)
  br label %bb138
bb138:
  %t524 = load i64, ptr %l40, !tbaa !24
  %t526 = add i64 %t524, 1
  store i64 %t526, ptr %l40, !tbaa !24
  br label %bb130
bb139:
  call void @__olang_scope_close(ptr %s24)
  br label %bb238
bb140:
  %t528 = load ptr, ptr %l1, !tbaa !29
  store ptr %t528, ptr %l326, !tbaa !29
  store i1 false, ptr %l327, !tbaa !21
  %t529 = load ptr, ptr %l326, !tbaa !29
  %t530 = icmp ne ptr %t529, null
  br i1 %t530, label %bb141, label %bb142
bb141:
  %t532 = load ptr, ptr %l326, !tbaa !29
  %t533 = load i64, ptr %t532, !range !{i64 0, i64 18}
  %t535 = icmp eq i64 %t533, 11
  store i1 %t535, ptr %l327, !tbaa !21
  br label %bb142
bb142:
  %t536 = load i1, ptr %l327, !tbaa !21
  br i1 %t536, label %bb143, label %bb144
bb143:
  %t537 = load ptr, ptr %l1, !tbaa !29
  %t539 = getelementptr { i64, [5 x i64] }, ptr %t537, i32 0, i32 1
  %t540 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t539, i32 0, i32 2
  %t541 = load ptr, ptr %t540
  store ptr %t541, ptr %l42, !tbaa !29
  br label %bb145
bb144:
  br label %bb155
bb145:
  store %olang.scope zeroinitializer, ptr %s29
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load ptr, ptr %l42, !tbaa !29
  %t546 = getelementptr %"compiler/typed:Cond", ptr %t544, i32 0, i32 0
  %t547 = load ptr, ptr %t546, !tbaa !29
  %t549 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t543, ptr %t547, ptr %t549, ptr %l5)
  br label %bb146
bb146:
  %t554 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t555, ptr %v2, ptr %s29, ptr %t554)
  call void @llvm.memmove.p0.p0.i64(ptr %l339, ptr %t555, i64 136, i1 false)
  br label %bb147
bb147:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t557, ptr %s29, ptr %l339)
  call void @llvm.memmove.p0.p0.i64(ptr %l341, ptr %t557, i64 136, i1 false)
  br label %bb148
bb148:
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %l341, i64 136, i1 false)
  %t559 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t560, ptr %v2, ptr %s29, ptr %t559)
  call void @llvm.memmove.p0.p0.i64(ptr %l343, ptr %t560, i64 136, i1 false)
  br label %bb149
bb149:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t562, ptr %s29, ptr %l343)
  call void @llvm.memmove.p0.p0.i64(ptr %l345, ptr %t562, i64 136, i1 false)
  br label %bb150
bb150:
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %l345, i64 136, i1 false)
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t565 = load ptr, ptr %l42, !tbaa !29
  %t567 = getelementptr %"compiler/typed:Cond", ptr %t565, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %s29, ptr %s0, ptr %t564, ptr %t568, ptr %l43, ptr %l4)
  br label %bb151
bb151:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = load ptr, ptr %l42, !tbaa !29
  %t576 = getelementptr %"compiler/typed:Cond", ptr %t574, i32 0, i32 2
  %t577 = load ptr, ptr %t576, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %s29, ptr %s0, ptr %t573, ptr %t577, ptr %l44, ptr %l4)
  br label %bb152
bb152:
  call void @compiler_2fviews_2emerge(ptr %s29, ptr %s29, ptr %l43, ptr %l44)
  br label %bb153
bb153:
  %t585 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v2, ptr %s29, ptr %t585, ptr %l43)
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s29)
  br label %bb238
bb155:
  %t588 = load ptr, ptr %l1, !tbaa !29
  store ptr %t588, ptr %l361, !tbaa !29
  store i1 false, ptr %l362, !tbaa !21
  %t589 = load ptr, ptr %l361, !tbaa !29
  %t590 = icmp ne ptr %t589, null
  br i1 %t590, label %bb156, label %bb157
bb156:
  %t592 = load ptr, ptr %l361, !tbaa !29
  %t593 = load i64, ptr %t592, !range !{i64 0, i64 18}
  %t595 = icmp eq i64 %t593, 12
  store i1 %t595, ptr %l362, !tbaa !21
  br label %bb157
bb157:
  %t596 = load i1, ptr %l362, !tbaa !21
  br i1 %t596, label %bb158, label %bb159
bb158:
  %t597 = load ptr, ptr %l1, !tbaa !29
  %t599 = getelementptr { i64, [5 x i64] }, ptr %t597, i32 0, i32 1
  %t600 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t599, i32 0, i32 2
  %t601 = load ptr, ptr %t600
  store ptr %t601, ptr %l45, !tbaa !29
  br label %bb160
bb159:
  br label %bb169
bb160:
  %t603 = load ptr, ptr %l45, !tbaa !29
  %t605 = getelementptr %"compiler/typed:Seq", ptr %t603, i32 0, i32 0
  %t606 = load { i64, ptr }, ptr %t605, !tbaa !27
  store { i64, ptr } %t606, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t608 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t610 = extractvalue { i64, ptr } %t608, 0
  store i64 %t610, ptr %l48, !tbaa !24
  br label %bb161
bb161:
  %t612 = load i64, ptr %l47, !tbaa !24
  %t613 = load i64, ptr %l48, !tbaa !24
  %t616 = icmp slt i64 %t612, %t613
  %t618 = xor i1 %t616, true
  br i1 %t618, label %bb162, label %bb163
bb162:
  br label %bb167
bb163:
  br label %bb164
bb164:
  %t620 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t620, ptr %l375, !tbaa !27
  %t621 = load i64, ptr %l47, !tbaa !24
  %t623 = getelementptr { i64, ptr }, ptr %l375, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !27
  %t625 = getelementptr ptr, ptr %t624, i64 %t621
  %t626 = load ptr, ptr %t625, !tbaa !39
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t631 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %t628, ptr %t626, ptr %t631)
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t635 = load i64, ptr %l47, !tbaa !24
  %t637 = add i64 %t635, 1
  store i64 %t637, ptr %l47, !tbaa !24
  br label %bb161
bb167:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t640 = load ptr, ptr %l45, !tbaa !29
  %t642 = getelementptr %"compiler/typed:Seq", ptr %t640, i32 0, i32 1
  %t643 = load ptr, ptr %t642, !tbaa !29
  %t644 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t639, ptr %t643, ptr %t644, ptr %l4)
  br label %bb168
bb168:
  br label %bb238
bb169:
  %t649 = load ptr, ptr %l1, !tbaa !29
  store ptr %t649, ptr %l389, !tbaa !29
  store i1 false, ptr %l390, !tbaa !21
  %t650 = load ptr, ptr %l389, !tbaa !29
  %t651 = icmp ne ptr %t650, null
  br i1 %t651, label %bb170, label %bb171
bb170:
  %t653 = load ptr, ptr %l389, !tbaa !29
  %t654 = load i64, ptr %t653, !range !{i64 0, i64 18}
  %t656 = icmp eq i64 %t654, 13
  store i1 %t656, ptr %l390, !tbaa !21
  br label %bb171
bb171:
  %t657 = load i1, ptr %l390, !tbaa !21
  br i1 %t657, label %bb172, label %bb173
bb172:
  %t658 = load ptr, ptr %l1, !tbaa !29
  %t660 = getelementptr { i64, [5 x i64] }, ptr %t658, i32 0, i32 1
  %t661 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t660, i32 0, i32 2
  %t662 = load ptr, ptr %t661
  store ptr %t662, ptr %l50, !tbaa !29
  br label %bb174
bb173:
  br label %bb176
bb174:
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load ptr, ptr %l50, !tbaa !29
  %t666 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ematchOf(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t664, ptr %t665, ptr %t666, ptr %l4)
  br label %bb175
bb175:
  br label %bb238
bb176:
  %t671 = load ptr, ptr %l1, !tbaa !29
  store ptr %t671, ptr %l399, !tbaa !29
  store i1 false, ptr %l400, !tbaa !21
  %t672 = load ptr, ptr %l399, !tbaa !29
  %t673 = icmp ne ptr %t672, null
  br i1 %t673, label %bb177, label %bb178
bb177:
  %t675 = load ptr, ptr %l399, !tbaa !29
  %t676 = load i64, ptr %t675, !range !{i64 0, i64 18}
  %t678 = icmp eq i64 %t676, 14
  store i1 %t678, ptr %l400, !tbaa !21
  br label %bb178
bb178:
  %t679 = load i1, ptr %l400, !tbaa !21
  br i1 %t679, label %bb179, label %bb180
bb179:
  %t680 = load ptr, ptr %l1, !tbaa !29
  %t682 = getelementptr { i64, [5 x i64] }, ptr %t680, i32 0, i32 1
  %t683 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t682, i32 0, i32 2
  %t684 = load ptr, ptr %t683
  store ptr %t684, ptr %l51, !tbaa !29
  br label %bb181
bb180:
  br label %bb184
bb181:
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t687 = load ptr, ptr %l51, !tbaa !29
  %t689 = getelementptr %"compiler/typed:Try", ptr %t687, i32 0, i32 0
  %t690 = load ptr, ptr %t689, !tbaa !29
  %t691 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t686, ptr %t690, ptr %t691, ptr %l4)
  br label %bb182
bb182:
  %t696 = load ptr, ptr %l0, !tbaa !29
  %t697 = load ptr, ptr %l51, !tbaa !29
  %t699 = getelementptr %"compiler/typed:Try", ptr %t697, i32 0, i32 1
  %t700 = load { i64, ptr }, ptr %t699, !tbaa !27
  %t701 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t696, { i64, ptr } %t700, ptr %t701, ptr %l4)
  br label %bb183
bb183:
  br label %bb238
bb184:
  %t706 = load ptr, ptr %l1, !tbaa !29
  store ptr %t706, ptr %l415, !tbaa !29
  store i1 false, ptr %l416, !tbaa !21
  %t707 = load ptr, ptr %l415, !tbaa !29
  %t708 = icmp ne ptr %t707, null
  br i1 %t708, label %bb185, label %bb186
bb185:
  %t710 = load ptr, ptr %l415, !tbaa !29
  %t711 = load i64, ptr %t710, !range !{i64 0, i64 18}
  %t713 = icmp eq i64 %t711, 15
  store i1 %t713, ptr %l416, !tbaa !21
  br label %bb186
bb186:
  %t714 = load i1, ptr %l416, !tbaa !21
  br i1 %t714, label %bb187, label %bb188
bb187:
  %t715 = load ptr, ptr %l1, !tbaa !29
  %t717 = getelementptr { i64, [5 x i64] }, ptr %t715, i32 0, i32 1
  %t718 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t717, i32 0, i32 2
  %t719 = load ptr, ptr %t718
  store ptr %t719, ptr %l52, !tbaa !29
  br label %bb189
bb188:
  br label %bb208
bb189:
  %t721 = load ptr, ptr %l52, !tbaa !29
  store ptr %t721, ptr %l421, !tbaa !29
  store i1 false, ptr %l422, !tbaa !21
  %t722 = load ptr, ptr %l421, !tbaa !29
  %t723 = icmp ne ptr %t722, null
  br i1 %t723, label %bb190, label %bb191
bb190:
  %t725 = load ptr, ptr %l421, !tbaa !29
  %t726 = load i64, ptr %t725, !range !{i64 0, i64 3}
  %t728 = icmp eq i64 %t726, 1
  store i1 %t728, ptr %l422, !tbaa !21
  br label %bb191
bb191:
  %t729 = load i1, ptr %l422, !tbaa !21
  br i1 %t729, label %bb192, label %bb193
bb192:
  %t730 = load ptr, ptr %l52, !tbaa !29
  %t732 = getelementptr { i64, [4 x i64] }, ptr %t730, i32 0, i32 1
  %t733 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t732, i32 0, i32 0
  %t734 = load i32, ptr %t733
  store i32 %t734, ptr %l53, !tbaa !23
  %t736 = load ptr, ptr %l52, !tbaa !29
  %t738 = getelementptr { i64, [4 x i64] }, ptr %t736, i32 0, i32 1
  %t739 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t738, i32 0, i32 1
  %t740 = load { i64, ptr }, ptr %t739
  %t742 = load ptr, ptr %l52, !tbaa !29
  %t744 = getelementptr { i64, [4 x i64] }, ptr %t742, i32 0, i32 1
  %t745 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t744, i32 0, i32 2
  %t746 = load i32, ptr %t745
  store i32 %t746, ptr %l55, !tbaa !23
  store { i64, ptr } %t740, ptr %l56, !tbaa !27
  store i64 0, ptr %l57, !tbaa !24
  %t750 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t752 = extractvalue { i64, ptr } %t750, 0
  store i64 %t752, ptr %l58, !tbaa !24
  br label %bb194
bb193:
  br label %bb201
bb194:
  %t754 = load i64, ptr %l57, !tbaa !24
  %t755 = load i64, ptr %l58, !tbaa !24
  %t758 = icmp slt i64 %t754, %t755
  %t760 = xor i1 %t758, true
  br i1 %t760, label %bb195, label %bb196
bb195:
  br label %bb200
bb196:
  br label %bb197
bb197:
  %t762 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t762, ptr %l438, !tbaa !27
  %t763 = load i64, ptr %l57, !tbaa !24
  %t765 = getelementptr { i64, ptr }, ptr %l438, i32 0, i32 1
  %t766 = load ptr, ptr %t765, !tbaa !27
  %t767 = getelementptr ptr, ptr %t766, i64 %t763
  %t768 = load ptr, ptr %t767, !tbaa !39
  %t770 = load ptr, ptr %l0, !tbaa !29
  %t773 = getelementptr %"compiler/typed:Capture", ptr %t768, i32 0, i32 1
  %t774 = load ptr, ptr %t773, !tbaa !29
  %t776 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t770, ptr %t774, ptr %t776, ptr %l4)
  br label %bb198
bb198:
  br label %bb199
bb199:
  %t781 = load i64, ptr %l57, !tbaa !24
  %t783 = add i64 %t781, 1
  store i64 %t783, ptr %l57, !tbaa !24
  br label %bb194
bb200:
  br label %bb201
bb201:
  %t785 = load ptr, ptr %l52, !tbaa !29
  store ptr %t785, ptr %l449, !tbaa !29
  store i1 false, ptr %l450, !tbaa !21
  %t786 = load ptr, ptr %l449, !tbaa !29
  %t787 = icmp ne ptr %t786, null
  br i1 %t787, label %bb202, label %bb203
bb202:
  %t789 = load ptr, ptr %l449, !tbaa !29
  %t790 = load i64, ptr %t789, !range !{i64 0, i64 3}
  %t792 = icmp eq i64 %t790, 2
  store i1 %t792, ptr %l450, !tbaa !21
  br label %bb203
bb203:
  %t793 = load i1, ptr %l450, !tbaa !21
  br i1 %t793, label %bb204, label %bb205
bb204:
  %t794 = load ptr, ptr %l52, !tbaa !29
  %t796 = getelementptr { i64, [4 x i64] }, ptr %t794, i32 0, i32 1
  %t797 = getelementptr { i32, ptr, i32 }, ptr %t796, i32 0, i32 0
  %t798 = load i32, ptr %t797
  store i32 %t798, ptr %l60, !tbaa !23
  %t800 = load ptr, ptr %l52, !tbaa !29
  %t802 = getelementptr { i64, [4 x i64] }, ptr %t800, i32 0, i32 1
  %t803 = getelementptr { i32, ptr, i32 }, ptr %t802, i32 0, i32 1
  %t804 = load ptr, ptr %t803
  %t806 = load ptr, ptr %l52, !tbaa !29
  %t808 = getelementptr { i64, [4 x i64] }, ptr %t806, i32 0, i32 1
  %t809 = getelementptr { i32, ptr, i32 }, ptr %t808, i32 0, i32 2
  %t810 = load i32, ptr %t809
  store i32 %t810, ptr %l62, !tbaa !23
  %t812 = load ptr, ptr %l0, !tbaa !29
  %t815 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t812, ptr %t804, ptr %t815, ptr %l4)
  br label %bb206
bb205:
  br label %bb207
bb206:
  br label %bb207
bb207:
  br label %bb238
bb208:
  %t820 = load ptr, ptr %l1, !tbaa !29
  store ptr %t820, ptr %l464, !tbaa !29
  store i1 false, ptr %l465, !tbaa !21
  %t821 = load ptr, ptr %l464, !tbaa !29
  %t822 = icmp ne ptr %t821, null
  br i1 %t822, label %bb209, label %bb210
bb209:
  %t824 = load ptr, ptr %l464, !tbaa !29
  %t825 = load i64, ptr %t824, !range !{i64 0, i64 18}
  %t827 = icmp eq i64 %t825, 16
  store i1 %t827, ptr %l465, !tbaa !21
  br label %bb210
bb210:
  %t828 = load i1, ptr %l465, !tbaa !21
  br i1 %t828, label %bb211, label %bb212
bb211:
  %t829 = load ptr, ptr %l1, !tbaa !29
  %t831 = getelementptr { i64, [5 x i64] }, ptr %t829, i32 0, i32 1
  %t832 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t831, i32 0, i32 2
  %t833 = load ptr, ptr %t832
  store ptr %t833, ptr %l63, !tbaa !29
  br label %bb213
bb212:
  br label %bb226
bb213:
  %t835 = load ptr, ptr %l63, !tbaa !29
  %t837 = getelementptr %"compiler/typed:Text", ptr %t835, i32 0, i32 0
  %t838 = load { i64, ptr }, ptr %t837, !tbaa !27
  store { i64, ptr } %t838, ptr %l64, !tbaa !27
  store i64 0, ptr %l65, !tbaa !24
  %t840 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t842 = extractvalue { i64, ptr } %t840, 0
  store i64 %t842, ptr %l66, !tbaa !24
  br label %bb214
bb214:
  %t844 = load i64, ptr %l65, !tbaa !24
  %t845 = load i64, ptr %l66, !tbaa !24
  %t848 = icmp slt i64 %t844, %t845
  %t850 = xor i1 %t848, true
  br i1 %t850, label %bb215, label %bb216
bb215:
  br label %bb225
bb216:
  br label %bb217
bb217:
  %t852 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t852, ptr %l478, !tbaa !27
  %t853 = load i64, ptr %l65, !tbaa !24
  %t855 = getelementptr { i64, ptr }, ptr %l478, i32 0, i32 1
  %t856 = load ptr, ptr %t855, !tbaa !27
  %t857 = getelementptr ptr, ptr %t856, i64 %t853
  %t858 = load ptr, ptr %t857, !tbaa !39
  store ptr %t858, ptr %l67, !tbaa !29
  %t860 = load ptr, ptr %l67, !tbaa !29
  store ptr %t860, ptr %l481, !tbaa !29
  store i1 false, ptr %l482, !tbaa !21
  %t861 = load ptr, ptr %l481, !tbaa !29
  %t862 = icmp ne ptr %t861, null
  br i1 %t862, label %bb218, label %bb219
bb218:
  %t864 = load ptr, ptr %l481, !tbaa !29
  %t865 = load i64, ptr %t864, !range !{i64 0, i64 2}
  %t867 = icmp eq i64 %t865, 1
  store i1 %t867, ptr %l482, !tbaa !21
  br label %bb219
bb219:
  %t868 = load i1, ptr %l482, !tbaa !21
  br i1 %t868, label %bb220, label %bb221
bb220:
  %t869 = load ptr, ptr %l67, !tbaa !29
  %t871 = getelementptr { i64, [2 x i64] }, ptr %t869, i32 0, i32 1
  %t872 = getelementptr { ptr }, ptr %t871, i32 0, i32 0
  %t873 = load ptr, ptr %t872
  %t875 = load ptr, ptr %l0, !tbaa !29
  %t878 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t875, ptr %t873, ptr %t878, ptr %l5)
  br label %bb222
bb221:
  br label %bb223
bb222:
  br label %bb223
bb223:
  br label %bb224
bb224:
  %t883 = load i64, ptr %l65, !tbaa !24
  %t885 = add i64 %t883, 1
  store i64 %t885, ptr %l65, !tbaa !24
  br label %bb214
bb225:
  br label %bb238
bb226:
  %t887 = load ptr, ptr %l1, !tbaa !29
  store ptr %t887, ptr %l494, !tbaa !29
  store i1 false, ptr %l495, !tbaa !21
  %t888 = load ptr, ptr %l494, !tbaa !29
  %t889 = icmp ne ptr %t888, null
  br i1 %t889, label %bb227, label %bb228
bb227:
  %t891 = load ptr, ptr %l494, !tbaa !29
  %t892 = load i64, ptr %t891, !range !{i64 0, i64 18}
  %t894 = icmp eq i64 %t892, 17
  store i1 %t894, ptr %l495, !tbaa !21
  br label %bb228
bb228:
  %t895 = load i1, ptr %l495, !tbaa !21
  br i1 %t895, label %bb229, label %bb230
bb229:
  %t896 = load ptr, ptr %l1, !tbaa !29
  %t898 = getelementptr { i64, [5 x i64] }, ptr %t896, i32 0, i32 1
  %t899 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t898, i32 0, i32 2
  %t900 = load ptr, ptr %t899
  store ptr %t900, ptr %l69, !tbaa !29
  br label %bb231
bb230:
  br label %bb233
bb231:
  %t902 = load ptr, ptr %l0, !tbaa !29
  %t903 = load ptr, ptr %l69, !tbaa !29
  %t905 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t902, ptr %t903, ptr %t905, ptr %l4)
  br label %bb232
bb232:
  br label %bb238
bb233:
  br i1 true, label %bb234, label %bb235
bb234:
  br label %bb236
bb235:
  br label %bb237
bb236:
  br label %bb238
bb237:
  call void @__olang_check_failed(ptr @olang_loc_57534b0b4c840b9f_734207cf536b370b)
  unreachable
bb238:
  %t910 = load ptr, ptr %l0, !tbaa !29
  store ptr %t910, ptr %l505, !tbaa !29
  %t911 = load ptr, ptr %l1, !tbaa !29
  %t913 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t911)
  store i32 %t913, ptr %l507
  br label %bb239
bb239:
  %t914 = load ptr, ptr %l505, !tbaa !29
  %t915 = load i32, ptr %l507, !tbaa !23
  %t916 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t914, i32 %t915)
  store i1 %t916, ptr %l508
  br label %bb240
bb240:
  %t917 = load i1, ptr %l508, !tbaa !21
  br i1 %t917, label %bb241, label %bb242
bb241:
  store ptr %l4, ptr %l70, !tbaa !29
  store i64 0, ptr %l71, !tbaa !24
  br label %bb243
bb242:
  br label %bb252
bb243:
  %t919 = load i64, ptr %l71, !tbaa !24
  store i64 %t919, ptr %l510, !tbaa !24
  %t920 = load ptr, ptr %l70, !tbaa !29
  %t922 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t920)
  store i64 %t922, ptr %l512
  br label %bb244
bb244:
  %t923 = load i64, ptr %l510, !tbaa !24
  %t924 = load i64, ptr %l512, !tbaa !24
  %t925 = icmp slt i64 %t923, %t924
  %t927 = xor i1 %t925, true
  br i1 %t927, label %bb245, label %bb246
bb245:
  br label %bb251
bb246:
  br label %bb247
bb247:
  %t929 = load ptr, ptr %l70, !tbaa !29
  %t930 = load i64, ptr %l71, !tbaa !24
  %t933 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t929, i64 %t930)
  store %"compiler/views:view" %t933, ptr %l517
  br label %bb248
bb248:
  %t934 = load %"compiler/views:view", ptr %l517
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %a3, %"compiler/views:view" %t934)
  br label %bb249
bb249:
  br label %bb250
bb250:
  %t939 = load i64, ptr %l71, !tbaa !24
  %t941 = add i64 %t939, 1
  store i64 %t941, ptr %l71, !tbaa !24
  br label %bb243
bb251:
  br label %bb252
bb252:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  store ptr %t5, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t6 = load ptr, ptr %l11, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l12, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l4, !tbaa !29
  br label %bb12
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t21 = load ptr, ptr %l17, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t35, ptr %t36, ptr %t38, ptr %t39)
  br label %bb13
bb13:
  br label %bb48
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l28, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 11
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t52 = load i1, ptr %l29, !tbaa !21
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l5, !tbaa !29
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Cond", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t65 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t59, ptr %t63, ptr %t64, ptr %t65)
  br label %bb20
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Cond", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t70, ptr %t74, ptr %t76, ptr %t77)
  br label %bb21
bb21:
  br label %bb48
bb22:
  %t82 = load ptr, ptr %l1, !tbaa !29
  store ptr %t82, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t83 = load ptr, ptr %l45, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l45, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 18}
  %t89 = icmp eq i64 %t87, 17
  store i1 %t89, ptr %l46, !tbaa !21
  br label %bb24
bb24:
  %t90 = load i1, ptr %l46, !tbaa !21
  br i1 %t90, label %bb25, label %bb26
bb25:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [5 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t93, i32 0, i32 2
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l6, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t101 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t97, ptr %t98, ptr %t100, ptr %t101)
  br label %bb28
bb28:
  br label %bb48
bb29:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t107 = load ptr, ptr %l56, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb30, label %bb31
bb30:
  %t110 = load ptr, ptr %l56, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 18}
  %t113 = icmp eq i64 %t111, 12
  store i1 %t113, ptr %l57, !tbaa !21
  br label %bb31
bb31:
  %t114 = load i1, ptr %l57, !tbaa !21
  br i1 %t114, label %bb32, label %bb33
bb32:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l7, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l7, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Seq", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t126 = load ptr, ptr %l2, !tbaa !29
  %t127 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t121, ptr %t125, ptr %t126, ptr %t127)
  br label %bb35
bb35:
  br label %bb48
bb36:
  %t132 = load ptr, ptr %l1, !tbaa !29
  store ptr %t132, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t133 = load ptr, ptr %l67, !tbaa !29
  %t134 = icmp ne ptr %t133, null
  br i1 %t134, label %bb37, label %bb38
bb37:
  %t136 = load ptr, ptr %l67, !tbaa !29
  %t137 = load i64, ptr %t136, !range !{i64 0, i64 18}
  %t139 = icmp eq i64 %t137, 6
  store i1 %t139, ptr %l68, !tbaa !21
  br label %bb38
bb38:
  %t140 = load i1, ptr %l68, !tbaa !21
  br i1 %t140, label %bb39, label %bb40
bb39:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t143, i32 0, i32 2
  %t145 = load ptr, ptr %t144
  store ptr %t145, ptr %l8, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l8, !tbaa !29
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t150 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t147, ptr %t148, ptr %t149, ptr %t150)
  br label %bb42
bb42:
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_a471d4cd6a39e3a7_bf796cf0b70bcd93)
  unreachable
bb48:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactPut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, i32 %a4, %"compiler/views:place" %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"compiler/views:place"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/views:fact"
  %l24 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l53 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l69 = alloca i64
  %l73 = alloca i64
  %l75 = alloca i64
  %l80 = alloca %"compiler/views:fact"
  %l84 = alloca i1
  %l88 = alloca i1
  %l95 = alloca i1
  %l97 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i64
  %l112 = alloca { i64, ptr }
  %l115 = alloca i64
  %l120 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i64
  %l124 = alloca i64
  %l125 = alloca i32
  %l126 = alloca i64
  %l127 = alloca i64
  %l128 = alloca i1
  %l137 = alloca %"compiler/views:fact"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store %"compiler/views:place" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/views:place", ptr %l5, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t3, i64 %t5)
  store { i64, ptr } %t8, ptr %l24
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = getelementptr %"compiler/views:place", ptr %l5, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l8, !tbaa !24
  %t13 = getelementptr %"compiler/views:place", ptr %l5, i32 0, i32 3
  %t14 = load i1, ptr %t13, !tbaa !21
  store i1 %t14, ptr %l9, !tbaa !21
  store i64 0, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = load i64, ptr %l11, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb2, label %bb3
bb2:
  %t26 = load i64, ptr %l13, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb4:
  %t30 = load i64, ptr %l12, !tbaa !24
  %t31 = load i64, ptr %l11, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l13, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l13, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l35, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb6
bb6:
  %t46 = load i64, ptr %l35, !tbaa !24
  store i64 %t46, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l32, !tbaa !24
  store i64 %t47, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l15, !tbaa !24
  %t49 = load i64, ptr %l14, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb9, label %bb10
bb9:
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t56 = load i64, ptr %l11, !tbaa !24
  %t57 = load i64, ptr %l15, !tbaa !24
  %t58 = load i64, ptr %l13, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l16, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t66, ptr %l53, !tbaa !27
  %t67 = load i64, ptr %l16, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  %t74 = icmp eq i8 %t72, 46
  br i1 %t74, label %bb12, label %bb13
bb12:
  %t76 = load i64, ptr %l10, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t82 = icmp sgt i64 %t80, 8
  br i1 %t82, label %bb14, label %bb15
bb13:
  br label %bb24
bb14:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l61, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t85, ptr %l62, !tbaa !27
  %t86 = load i64, ptr %l16, !tbaa !24
  store i64 %t86, ptr %l63, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l64, !tbaa !24
  %t89 = icmp sge i64 0, 0
  br i1 %t89, label %bb16, label %bb17
bb15:
  br label %bb23
bb16:
  %t91 = load i64, ptr %l63, !tbaa !24
  %t92 = icmp sle i64 0, %t91
  br i1 %t92, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_bf0f9cdbc99a00cc_873cbf0138bd5dc8)
  unreachable
bb18:
  %t94 = load i64, ptr %l63, !tbaa !24
  %t95 = load i64, ptr %l64, !tbaa !24
  %t96 = icmp sle i64 %t94, %t95
  br i1 %t96, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_bf0f9cdbc99a00cc_873cbf0138bd5dc8)
  unreachable
bb20:
  %t98 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l63, !tbaa !24
  %t101 = getelementptr i8, ptr %t99, i64 0
  %t102 = sub i64 %t100, 0
  %t103 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t101, 1
  %t105 = load ptr, ptr %l61, !tbaa !29
  %t107 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t105, { i64, ptr } %t104)
  store i64 %t107, ptr %l69
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bf0f9cdbc99a00cc_873cbf0138bd5dc8)
  unreachable
bb22:
  %t108 = load i64, ptr %l69, !tbaa !24
  store i64 %t108, ptr %l8, !tbaa !24
  store i1 true, ptr %l9, !tbaa !21
  br label %bb26
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t109 = load i64, ptr %l15, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l15, !tbaa !24
  br label %bb8
bb26:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb27
bb27:
  %t115 = load i64, ptr %l18, !tbaa !24
  store i64 %t115, ptr %l73, !tbaa !24
  %t116 = load ptr, ptr %l17, !tbaa !29
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v1, ptr %t116)
  store i64 %t118, ptr %l75
  br label %bb28
bb28:
  %t119 = load i64, ptr %l73, !tbaa !24
  %t120 = load i64, ptr %l75, !tbaa !24
  %t121 = icmp slt i64 %t119, %t120
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb29, label %bb30
bb29:
  br label %bb59
bb30:
  br label %bb31
bb31:
  %t125 = load ptr, ptr %l17, !tbaa !29
  %t126 = load i64, ptr %l18, !tbaa !24
  %t129 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v1, ptr %t125, i64 %t126)
  store %"compiler/views:fact" %t129, ptr %l80
  br label %bb32
bb32:
  %t130 = load %"compiler/views:fact", ptr %l80
  store %"compiler/views:fact" %t130, ptr %l19
  %t131 = getelementptr %"compiler/views:fact", ptr %l19, i32 0, i32 0
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i64, ptr %l2, !tbaa !24
  %t136 = icmp ne i64 %t132, %t133
  br i1 %t136, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb35
bb34:
  %t138 = getelementptr %"compiler/views:fact", ptr %l19, i32 0, i32 1
  %t139 = load i64, ptr %t138, !tbaa !24
  %t140 = load i64, ptr %l3, !tbaa !24
  %t143 = icmp ne i64 %t139, %t140
  store i1 %t143, ptr %l84, !tbaa !21
  br label %bb35
bb35:
  %t145 = load i1, ptr %l84, !tbaa !21
  br i1 %t145, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb38
bb37:
  %t146 = getelementptr %"compiler/views:fact", ptr %l19, i32 0, i32 2
  %t147 = load i32, ptr %t146, !tbaa !23
  %t148 = load i32, ptr %l4, !tbaa !23
  %t151 = icmp ne i32 %t147, %t148
  store i1 %t151, ptr %l88, !tbaa !21
  br label %bb38
bb38:
  %t153 = load i1, ptr %l88, !tbaa !21
  br i1 %t153, label %bb39, label %bb40
bb39:
  br label %bb58
bb40:
  br label %bb41
bb41:
  %t154 = getelementptr %"compiler/views:fact", ptr %l19, i32 0, i32 3
  %t155 = load i64, ptr %t154, !tbaa !24
  %t156 = load i64, ptr %l8, !tbaa !24
  %t159 = icmp eq i64 %t155, %t156
  br i1 %t159, label %bb42, label %bb43
bb42:
  %t161 = getelementptr %"compiler/views:fact", ptr %l19, i32 0, i32 5
  %t162 = load i1, ptr %t161, !tbaa !21
  br i1 %t162, label %bb44, label %bb45
bb43:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb47
bb44:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb46
bb45:
  %t164 = load i1, ptr %l9, !tbaa !21
  %t166 = xor i1 %t164, true
  store i1 %t166, ptr %l97, !tbaa !21
  br label %bb46
bb46:
  %t168 = load i1, ptr %l97, !tbaa !21
  store i1 %t168, ptr %l95, !tbaa !21
  br label %bb47
bb47:
  %t169 = load i1, ptr %l95, !tbaa !21
  br i1 %t169, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  br label %bb50
bb50:
  %t170 = getelementptr %"compiler/views:fact", ptr %l19, i32 0, i32 5
  %t171 = load i1, ptr %t170, !tbaa !21
  br i1 %t171, label %bb51, label %bb52
bb51:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/views:fact", ptr %l19, i32 0, i32 3
  %t175 = load i64, ptr %t174, !tbaa !24
  %t176 = load i64, ptr %l8, !tbaa !24
  %t180 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %t173, i64 %t175, i64 %t176)
  store i1 %t180, ptr %l105
  br label %bb53
bb52:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb54
bb53:
  %t181 = load i1, ptr %l105, !tbaa !21
  store i1 %t181, ptr %l101, !tbaa !21
  br label %bb54
bb54:
  %t182 = load i1, ptr %l101, !tbaa !21
  br i1 %t182, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t183 = load i64, ptr %l18, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l18, !tbaa !24
  br label %bb27
bb59:
  %t187 = getelementptr %"compiler/views:place", ptr %l5, i32 0, i32 2
  %t188 = load i64, ptr %t187, !tbaa !24
  store i64 %t188, ptr %l108, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/views:Viewer", ptr %t189, i32 0, i32 3
  %t192 = load i64, ptr %l8, !tbaa !24
  %t195 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t191, i64 %t192)
  store { i64, ptr } %t195, ptr %l112
  br label %bb60
bb60:
  %t196 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 0
  %t198 = load i64, ptr %l108, !tbaa !24
  %t200 = icmp sle i64 %t198, %t197
  br i1 %t200, label %bb61, label %bb62
bb61:
  %t202 = getelementptr %"compiler/views:place", ptr %l5, i32 0, i32 2
  %t203 = load i64, ptr %t202, !tbaa !24
  store i64 %t203, ptr %l115, !tbaa !24
  br label %bb64
bb62:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/views:Viewer", ptr %t205, i32 0, i32 3
  %t208 = load i64, ptr %l8, !tbaa !24
  %t211 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t207, i64 %t208)
  store { i64, ptr } %t211, ptr %l120
  br label %bb63
bb63:
  %t212 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  store i64 %t213, ptr %l115, !tbaa !24
  br label %bb64
bb64:
  %t215 = load i64, ptr %l115, !tbaa !24
  %t216 = load ptr, ptr %l1, !tbaa !29
  store ptr %t216, ptr %l122, !tbaa !29
  %t217 = load i64, ptr %l2, !tbaa !24
  store i64 %t217, ptr %l123, !tbaa !24
  %t218 = load i64, ptr %l3, !tbaa !24
  store i64 %t218, ptr %l124, !tbaa !24
  %t219 = load i32, ptr %l4, !tbaa !23
  store i32 %t219, ptr %l125, !tbaa !23
  %t220 = load i64, ptr %l8, !tbaa !24
  store i64 %t220, ptr %l126, !tbaa !24
  store i64 %t215, ptr %l127, !tbaa !24
  %t222 = load i1, ptr %l9, !tbaa !21
  store i1 %t222, ptr %l128, !tbaa !21
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/views:Viewer", ptr %t223, i32 0, i32 21
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = icmp eq ptr %t226, null
  br i1 %t228, label %bb65, label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_59f7caf9a8021923_a477b9c5c640d35f)
  unreachable
bb66:
  br label %bb67
bb67:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/views:Viewer", ptr %t230, i32 0, i32 21
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Body", ptr %t233, i32 0, i32 3
  %t237 = load i64, ptr %t236, !tbaa !24
  %t239 = load i64, ptr %l123, !tbaa !24
  %t240 = load i64, ptr %l124, !tbaa !24
  %t241 = load i32, ptr %l125, !tbaa !23
  %t242 = load i64, ptr %l126, !tbaa !24
  %t243 = load i64, ptr %l127, !tbaa !24
  %t244 = load i1, ptr %l128, !tbaa !21
  %t247 = call %"compiler/views:fact" @compiler_2fviews_3afact_2ector(ptr %s0, i64 %t239, i64 %t240, i32 %t241, i64 %t242, i64 %t243, i1 %t244, i64 %t237, %"compiler/source:Span" %a6)
  store %"compiler/views:fact" %t247, ptr %l137
  br label %bb68
bb68:
  %t248 = load ptr, ptr %l122, !tbaa !29
  %t249 = load %"compiler/views:fact", ptr %l137
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v1, ptr %t248, %"compiler/views:fact" %t249)
  br label %bb69
bb69:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/views:Viewer", ptr %t250, i32 0, i32 26
  store i1 true, ptr %t252, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, %"compiler/views:fact" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/views:fact"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca [11 x { i64, ptr }]
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l25 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l51 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l70 = alloca [11 x { i64, ptr }]
  %l82 = alloca i1
  %l83 = alloca i1
  %l86 = alloca { i64, ptr }
  %l87 = alloca i1
  %l88 = alloca i1
  %l91 = alloca { i64, ptr }
  %l92 = alloca i1
  %l93 = alloca i1
  %l96 = alloca { i64, ptr }
  %l97 = alloca i1
  %l98 = alloca i1
  %l101 = alloca { i64, ptr }
  %l102 = alloca i1
  %l108 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store %"compiler/views:fact" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 1
  %t3 = load i64, ptr %t2, !tbaa !24
  %t6 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleWord(ptr %v0, ptr %s0, ptr %t1, i64 %t3)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l15
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l14
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  br label %bb3
bb2:
  %t12 = load i32, ptr %l15, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  call void @__olang_scope_close(ptr %s0)
  %t22 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t20, 0
  store { i32, { i64, ptr } } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t23, ptr %l3, !tbaa !27
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 6
  %t26 = load i64, ptr %t25, !tbaa !24
  %t29 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efileWord(ptr %v0, ptr %s0, ptr %t24, i64 %t26)
  %t30 = extractvalue { i32, { i64, ptr } } %t29, 1
  %t31 = extractvalue { i32, { i64, ptr } } %t29, 0
  store i32 %t31, ptr %l21
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb5, label %ok.33, !prof !99
ok.33:
  store { i64, ptr } %t30, ptr %l20
  br label %bb4
bb4:
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t34, ptr %l17, !tbaa !27
  br label %bb6
bb5:
  %t35 = load i32, ptr %l21, !tbaa !23
  %t36 = lshr i32 %t35, 16
  %t37 = and i32 %t35, 65535
  %t38 = icmp eq i32 %t36, 1
  %t39 = select i1 %t38, i32 1, i32 0
  %t40 = icmp eq i32 %t35, 0
  %t41 = shl i32 %t39, 16
  %t42 = or i32 %t41, %t37
  %t43 = select i1 %t40, i32 0, i32 %t42
  call void @__olang_scope_close(ptr %s0)
  %t45 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t43, 0
  store { i32, { i64, ptr } } %t45, ptr %rv
  br label %ret
bb6:
  %t46 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t46, ptr %l4, !tbaa !27
  %t47 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 2
  %t48 = load i32, ptr %t47, !tbaa !23
  %t50 = icmp eq i32 %t48, 0
  br i1 %t50, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l25, !tbaa !27
  br label %bb10
bb8:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 2
  %t54 = load i32, ptr %t53, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s0, ptr %t52, i32 %t54)
  store { i64, ptr } %t57, ptr %l28
  br label %bb9
bb9:
  %t58 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t59, i64 %t60)
  %t62 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = extractvalue { i64, ptr } %t63, 1
  %t67 = mul i64 %t65, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t67)
  call void @llvm.memcpy.p0.p0.i64(ptr %t68, ptr %t66, i64 %t67, i1 false)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l25, !tbaa !27
  br label %bb10
bb10:
  %t72 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t72, ptr %l5, !tbaa !27
  store { i64, ptr } %a1, ptr %l31, !tbaa !27
  %t74 = ptrtoint ptr %s0 to i64
  store i64 %t74, ptr %l32, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1
  br i1 %t75, label %bb11, label %bb12
bb11:
  %t77 = call ptr @__olang_region_make(ptr %s0)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l32, !tbaa !24
  br label %bb12
bb12:
  %t79 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = call i64 @__olang_fmt_i64(ptr null, i64 %t80)
  %t83 = load i64, ptr %l32
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = call ptr @__olang_scope_alloc(ptr %t84, i64 %t82)
  %t86 = call i64 @__olang_fmt_i64(ptr %t85, i64 %t80)
  %t87 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t85, 1
  %t90 = load i64, ptr %l32
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = extractvalue { i64, ptr } %t88, 0
  %t93 = extractvalue { i64, ptr } %t88, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l36, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l37, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t99, ptr %l38, !tbaa !27
  %t100 = ptrtoint ptr %s0 to i64
  store i64 %t100, ptr %l39, !tbaa !24
  %t101 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1
  br i1 %t101, label %bb13, label %bb14
bb13:
  %t103 = call ptr @__olang_region_make(ptr %s0)
  %t104 = ptrtoint ptr %t103 to i64
  store i64 %t104, ptr %l39, !tbaa !24
  br label %bb14
bb14:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/views:Viewer", ptr %t105, i32 0, i32 3
  %t108 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 3
  %t109 = load i64, ptr %t108, !tbaa !24
  %t112 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t107, i64 %t109)
  store { i64, ptr } %t112, ptr %l44
  br label %bb15
bb15:
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t115 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = add i64 %t114, %t117
  %t119 = load i64, ptr %l39
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = call ptr @__olang_scope_alloc(ptr %t120, i64 %t118)
  call void @olang_textcopy(ptr %t121, ptr %t113, i64 %t114)
  %t122 = getelementptr i8, ptr %t121, i64 %t114
  call void @olang_textcopy(ptr %t122, ptr %t116, i64 %t117)
  %t123 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  %t126 = load i64, ptr %l39
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = extractvalue { i64, ptr } %t124, 0
  %t129 = extractvalue { i64, ptr } %t124, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %t127, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  store { i64, ptr } %t133, ptr %l46, !tbaa !27
  %t134 = ptrtoint ptr %s0 to i64
  store i64 %t134, ptr %l47, !tbaa !24
  %t135 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1
  br i1 %t135, label %bb16, label %bb17
bb16:
  %t137 = call ptr @__olang_region_make(ptr %s0)
  %t138 = ptrtoint ptr %t137 to i64
  store i64 %t138, ptr %l47, !tbaa !24
  br label %bb17
bb17:
  %t139 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 4
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = call i64 @__olang_fmt_i64(ptr null, i64 %t140)
  %t143 = load i64, ptr %l47
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t142)
  %t146 = call i64 @__olang_fmt_i64(ptr %t145, i64 %t140)
  %t147 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  %t150 = load i64, ptr %l47
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = extractvalue { i64, ptr } %t148, 0
  %t153 = extractvalue { i64, ptr } %t148, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  store { i64, ptr } %t157, ptr %l51, !tbaa !27
  %t158 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 5
  %t159 = load i1, ptr %t158, !tbaa !21
  br i1 %t159, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l53, !tbaa !27
  br label %bb20
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l53, !tbaa !27
  br label %bb20
bb20:
  %t161 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t161, ptr %l54, !tbaa !27
  %t162 = ptrtoint ptr %s0 to i64
  store i64 %t162, ptr %l55, !tbaa !24
  %t163 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1
  br i1 %t163, label %bb21, label %bb22
bb21:
  %t165 = call ptr @__olang_region_make(ptr %s0)
  %t166 = ptrtoint ptr %t165 to i64
  store i64 %t166, ptr %l55, !tbaa !24
  br label %bb22
bb22:
  %t167 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 7
  %t168 = getelementptr %"compiler/source:Span", ptr %t167, i32 0, i32 0
  %t169 = load i32, ptr %t168, !tbaa !23
  %t171 = sext i32 %t169 to i64
  %t172 = call i64 @__olang_fmt_i64(ptr null, i64 %t171)
  %t173 = load i64, ptr %l55
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = call ptr @__olang_scope_alloc(ptr %t174, i64 %t172)
  %t176 = call i64 @__olang_fmt_i64(ptr %t175, i64 %t171)
  %t177 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  %t180 = load i64, ptr %l55
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = extractvalue { i64, ptr } %t178, 0
  %t183 = extractvalue { i64, ptr } %t178, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %t181, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  store { i64, ptr } %t187, ptr %l59, !tbaa !27
  %t188 = ptrtoint ptr %s0 to i64
  store i64 %t188, ptr %l60, !tbaa !24
  %t189 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1
  br i1 %t189, label %bb23, label %bb24
bb23:
  %t191 = call ptr @__olang_region_make(ptr %s0)
  %t192 = ptrtoint ptr %t191 to i64
  store i64 %t192, ptr %l60, !tbaa !24
  br label %bb24
bb24:
  %t193 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 7
  %t194 = getelementptr %"compiler/source:Span", ptr %t193, i32 0, i32 1
  %t195 = load i32, ptr %t194, !tbaa !23
  %t197 = sext i32 %t195 to i64
  %t198 = call i64 @__olang_fmt_i64(ptr null, i64 %t197)
  %t199 = load i64, ptr %l60
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = call ptr @__olang_scope_alloc(ptr %t200, i64 %t198)
  %t202 = call i64 @__olang_fmt_i64(ptr %t201, i64 %t197)
  %t203 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t201, 1
  %t206 = load i64, ptr %l60
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = extractvalue { i64, ptr } %t204, 0
  %t209 = extractvalue { i64, ptr } %t204, 1
  %t210 = mul i64 %t208, 1
  %t211 = call ptr @__olang_scope_alloc(ptr %t207, i64 %t210)
  call void @llvm.memcpy.p0.p0.i64(ptr %t211, ptr %t209, i64 %t210, i1 false)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  store { i64, ptr } %t213, ptr %l64, !tbaa !27
  %t214 = ptrtoint ptr %s0 to i64
  store i64 %t214, ptr %l65, !tbaa !24
  %t215 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1
  br i1 %t215, label %bb25, label %bb26
bb25:
  %t217 = call ptr @__olang_region_make(ptr %s0)
  %t218 = ptrtoint ptr %t217 to i64
  store i64 %t218, ptr %l65, !tbaa !24
  br label %bb26
bb26:
  %t219 = getelementptr %"compiler/views:fact", ptr %l2, i32 0, i32 8
  %t220 = load i64, ptr %t219, !tbaa !24
  %t222 = call i64 @__olang_fmt_i64(ptr null, i64 %t220)
  %t223 = load i64, ptr %l65
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = call ptr @__olang_scope_alloc(ptr %t224, i64 %t222)
  %t226 = call i64 @__olang_fmt_i64(ptr %t225, i64 %t220)
  %t227 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t225, 1
  %t230 = load i64, ptr %l65
  %t231 = inttoptr i64 %t230 to ptr
  %t232 = extractvalue { i64, ptr } %t228, 0
  %t233 = extractvalue { i64, ptr } %t228, 1
  %t234 = mul i64 %t232, 1
  %t235 = call ptr @__olang_scope_alloc(ptr %t231, i64 %t234)
  call void @llvm.memcpy.p0.p0.i64(ptr %t235, ptr %t233, i64 %t234, i1 false)
  %t236 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t235, 1
  %t238 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 0
  %t239 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t239, ptr %t238, !tbaa !37
  %t240 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 1
  %t241 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t241, ptr %t240, !tbaa !37
  %t242 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 2
  %t243 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t243, ptr %t242, !tbaa !37
  %t244 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 3
  %t245 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t245, ptr %t244, !tbaa !37
  %t246 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 4
  %t247 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t247, ptr %t246, !tbaa !37
  %t248 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 5
  %t249 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t249, ptr %t248, !tbaa !37
  %t250 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 6
  %t251 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t251, ptr %t250, !tbaa !37
  %t252 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 7
  %t253 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t253, ptr %t252, !tbaa !37
  %t254 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 8
  %t255 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t255, ptr %t254, !tbaa !37
  %t256 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 9
  %t257 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t257, ptr %t256, !tbaa !37
  %t258 = getelementptr [11 x { i64, ptr }], ptr %l70, i64 0, i64 10
  store { i64, ptr } %t237, ptr %t258, !tbaa !37
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l70, i64 176, i1 false)
  store ptr %l6, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t261 = load ptr, ptr %l7
  store i64 11, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s9
  %t264 = load i64, ptr %l8, !tbaa !24
  %t265 = load i64, ptr %l9, !tbaa !24
  %t268 = icmp slt i64 %t264, %t265
  %t270 = xor i1 %t268, true
  br i1 %t270, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb29:
  br label %bb30
bb30:
  %t272 = load ptr, ptr %l7
  %t273 = load i64, ptr %l8, !tbaa !24
  %t276 = getelementptr [11 x { i64, ptr }], ptr %t272, i64 0, i64 %t273
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !37
  store { i64, ptr } %t277, ptr %l10, !tbaa !27
  %t279 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t281 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t279, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t281, ptr %l82
  br label %bb31
bb31:
  %t282 = load i1, ptr %l82, !tbaa !21
  br i1 %t282, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb35
bb33:
  %t283 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l86, !tbaa !27
  %t286 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t287 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s9, { i64, ptr } %t283, { i64, ptr } %t286)
  store i1 %t287, ptr %l87
  br label %bb34
bb34:
  %t288 = load i1, ptr %l87, !tbaa !21
  store i1 %t288, ptr %l83, !tbaa !21
  br label %bb35
bb35:
  %t289 = load i1, ptr %l83, !tbaa !21
  br i1 %t289, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb39
bb37:
  %t290 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l91, !tbaa !27
  %t293 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t294 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s9, { i64, ptr } %t290, { i64, ptr } %t293)
  store i1 %t294, ptr %l92
  br label %bb38
bb38:
  %t295 = load i1, ptr %l92, !tbaa !21
  store i1 %t295, ptr %l88, !tbaa !21
  br label %bb39
bb39:
  %t296 = load i1, ptr %l88, !tbaa !21
  br i1 %t296, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb43
bb41:
  %t297 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l96, !tbaa !27
  %t300 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t301 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s9, { i64, ptr } %t297, { i64, ptr } %t300)
  store i1 %t301, ptr %l97
  br label %bb42
bb42:
  %t302 = load i1, ptr %l97, !tbaa !21
  store i1 %t302, ptr %l93, !tbaa !21
  br label %bb43
bb43:
  %t303 = load i1, ptr %l93, !tbaa !21
  br i1 %t303, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l98, !tbaa !21
  br label %bb47
bb45:
  %t304 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l101, !tbaa !27
  %t307 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t308 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s9, { i64, ptr } %t304, { i64, ptr } %t307)
  store i1 %t308, ptr %l102
  br label %bb46
bb46:
  %t309 = load i1, ptr %l102, !tbaa !21
  store i1 %t309, ptr %l98, !tbaa !21
  br label %bb47
bb47:
  %t310 = load i1, ptr %l98, !tbaa !21
  br i1 %t310, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t312 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t312, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s9)
  br label %bb51
bb51:
  %t313 = load i64, ptr %l8, !tbaa !24
  %t315 = add i64 %t313, 1
  store i64 %t315, ptr %l8, !tbaa !24
  br label %bb27
bb52:
  %t318 = insertvalue { i64, ptr } undef, i64 11, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %l6, 1
  %t321 = call { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v2, { i64, ptr } %t319, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t321, ptr %l108
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t322 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t323 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t322, 1
  store { i32, { i64, ptr } } %t323, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efieldName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l14 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l47 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca i64
  %l71 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = call i64 @__olang_fmt_i64(ptr null, i64 %t18)
  %t21 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t20)
  %t22 = call i64 @__olang_fmt_i64(ptr %t21, i64 %t18)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t21, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/views:Viewer", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l24
  br label %bb5
bb5:
  %t36 = load i32, ptr %l24, !tbaa !23
  store i32 %t36, ptr %l3, !tbaa !23
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/views:Viewer", ptr %t37, i32 0, i32 10
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e__Hbdff57143197d3e3ce33a3087c05f7a0(ptr %v0, ptr %t39, i32 %t40)
  %t44 = extractvalue { i32, i64 } %t43, 1
  %t45 = extractvalue { i32, i64 } %t43, 0
  store i32 %t45, ptr %l30
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb7, label %ok.47, !prof !99
ok.47:
  store i64 %t44, ptr %l29
  br label %bb6
bb6:
  %t48 = load i64, ptr %l29, !tbaa !24
  store i64 %t48, ptr %l25, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l25, !tbaa !24
  store i64 %t49, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = icmp slt i64 %t50, 0
  br i1 %t52, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/views:Viewer", ptr %t54, i32 0, i32 11
  store ptr %t56, ptr %l34, !tbaa !29
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l35
  br label %bb12
bb11:
  br label %bb25
bb12:
  %t58 = load ptr, ptr %l34, !tbaa !29
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Ha157aa9bcf12f5157b10d592e947e165(ptr %v0, ptr %s3, ptr %t58, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59)
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/views:Viewer", ptr %t60, i32 0, i32 11
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H161a24899859b830aba89891233cbfd1(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l38
  br label %bb14
bb14:
  %t65 = load i64, ptr %l38, !tbaa !24
  %t66 = sub i64 %t65, 1
  store i64 %t66, ptr %l4, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/views:Viewer", ptr %t68, i32 0, i32 10
  %t71 = load i32, ptr %l3, !tbaa !23
  %t72 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e__Hd7428d759783ef3a1a99ea96b3969ebe(ptr %v0, ptr %t70, i32 %t71, i64 %t72)
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/views:Viewer", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s4, ptr %t79, i32 %t80)
  store { i64, ptr } %t83, ptr %l47
  br label %bb16
bb16:
  %t84 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = mul i64 %t85, 4
  %t88 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  br label %bb20
bb20:
  %t104 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t104, ptr %l55, !tbaa !27
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i32, ptr %t108, i64 %t105
  %t110 = load i32, ptr %t109, !tbaa !33
  store i32 %t110, ptr %l8, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/views:Viewer", ptr %t112, i32 0, i32 11
  %t115 = load i64, ptr %l4, !tbaa !24
  %t118 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H8f04a3ce395cf5423055a0e50fbad86f(ptr %v0, ptr %v0, ptr %t114, i64 %t115)
  store ptr %t118, ptr %l61
  br label %bb21
bb21:
  %t119 = load i32, ptr %l8, !tbaa !23
  %t120 = load ptr, ptr %l61, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t120, i32 %t119)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t122 = load i64, ptr %l6, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l6, !tbaa !24
  br label %bb17
bb24:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/views:Viewer", ptr %t126, i32 0, i32 11
  %t129 = load i64, ptr %l4, !tbaa !24
  %t132 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H97e3fe71a2054fda18da5260a3d71aea(ptr %v0, ptr %v0, ptr %t128, i64 %t129)
  store ptr %t132, ptr %l68
  br label %bb26
bb26:
  %t133 = load ptr, ptr %l68, !tbaa !29
  store ptr %t133, ptr %l9, !tbaa !29
  %t134 = load i64, ptr %l2, !tbaa !24
  store i64 %t134, ptr %l69, !tbaa !24
  %t135 = load ptr, ptr %l9, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l71
  br label %bb27
bb27:
  %t138 = load i64, ptr %l69, !tbaa !24
  %t139 = load i64, ptr %l71, !tbaa !24
  %t140 = icmp slt i64 %t138, %t139
  br i1 %t140, label %bb28, label %bb29
bb28:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l74, !tbaa !29
  %t143 = load ptr, ptr %l9, !tbaa !29
  %t144 = load i64, ptr %l2, !tbaa !24
  %t147 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t143, i64 %t144)
  store i32 %t147, ptr %l77
  br label %bb30
bb29:
  %t148 = load i64, ptr %l2, !tbaa !24
  %t150 = call i64 @__olang_fmt_i64(ptr null, i64 %t148)
  %t151 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t150)
  %t152 = call i64 @__olang_fmt_i64(ptr %t151, i64 %t148)
  %t153 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t151, 1
  store { i64, ptr } %t154, ptr %l73, !tbaa !27
  br label %bb32
bb30:
  %t156 = load ptr, ptr %l74, !tbaa !29
  %t157 = load i32, ptr %l77, !tbaa !23
  %t158 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s0, ptr %t156, i32 %t157)
  store { i64, ptr } %t158, ptr %l78
  br label %bb31
bb31:
  %t159 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t162 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t160, i64 %t161)
  %t163 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  store { i64, ptr } %t164, ptr %l73, !tbaa !27
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t166 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t166, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrow(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:place" %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4, %"compiler/source:Span" %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:place"
  %l2 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/views:holding"
  %l18 = alloca %"compiler/views:view"
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca %"compiler/views:tasked"
  %l22 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l38 = alloca ptr
  %l48 = alloca ptr
  %l53 = alloca ptr
  %l62 = alloca i64
  %l66 = alloca i64
  %l69 = alloca i64
  %l90 = alloca %"compiler/views:holding"
  %l92 = alloca i1
  %l96 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i64
  %l108 = alloca %"compiler/views:holding"
  %l114 = alloca i1
  %l119 = alloca i64
  %l121 = alloca i64
  %l126 = alloca %"compiler/views:tasked"
  %l130 = alloca i1
  %l132 = alloca i1
  %l135 = alloca i1
  %l138 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l145 = alloca { i64, [3 x i64] }
  %l146 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l151 = alloca %"compiler/diagmsg:Msg"
  %l152 = alloca i64
  %l156 = alloca ptr
  %l157 = alloca i64
  %l160 = alloca { i64, [3 x i64] }
  %l162 = alloca %"compiler/diagmsg:Msg"
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/views:place" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 24
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/views:Viewer", ptr %t6, i32 0, i32 23
  %t9 = load i1, ptr %t8, !tbaa !21
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 0
  %t14 = load { i64, [2 x i64] }, ptr %t13
  store { i64, [2 x i64] } %t14, ptr %l7
  %t16 = load { i64, [2 x i64] }, ptr %l7
  %t18 = extractvalue { i64, [2 x i64] } %t16, 0
  %t19 = icmp eq i64 %t18, 2
  br i1 %t19, label %bb6, label %bb7
bb5:
  br label %bb23
bb6:
  %t21 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t22 = getelementptr { i64 }, ptr %t21, i32 0, i32 0
  %t23 = load i64, ptr %t22
  store i64 %t23, ptr %l8, !tbaa !24
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l33, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/views:Viewer", ptr %t26, i32 0, i32 2
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/views:Viewer", ptr %t29, i32 0, i32 22
  %t32 = load i64, ptr %t31, !tbaa !24
  %t35 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t28, i64 %t32)
  store ptr %t35, ptr %l38
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l38, !tbaa !29
  %t38 = getelementptr %"compiler/views:summary", ptr %t36, i32 0, i32 0
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load %"compiler/views:place", ptr %l1
  %t41 = load %"compiler/source:Span", ptr %l2
  %t42 = load ptr, ptr %l33, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactPut(ptr %v0, ptr %v0, ptr %t42, ptr %t38, i64 %t39, i64 -1, i32 0, %"compiler/views:place" %t40, %"compiler/source:Span" %t41)
  br label %bb10
bb10:
  br label %bb22
bb11:
  %t47 = load { i64, [2 x i64] }, ptr %l7
  %t49 = extractvalue { i64, [2 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 3
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t53 = getelementptr { i64, i32 }, ptr %t52, i32 0, i32 0
  %t54 = load i64, ptr %t53
  store i64 %t54, ptr %l9, !tbaa !24
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t57 = getelementptr { i64, i32 }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l10, !tbaa !23
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l48, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/views:Viewer", ptr %t61, i32 0, i32 2
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/views:Viewer", ptr %t64, i32 0, i32 22
  %t67 = load i64, ptr %t66, !tbaa !24
  %t70 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t63, i64 %t67)
  store ptr %t70, ptr %l53
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l53, !tbaa !29
  %t73 = getelementptr %"compiler/views:summary", ptr %t71, i32 0, i32 0
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i32, ptr %l10, !tbaa !23
  %t76 = load %"compiler/views:place", ptr %l1
  %t77 = load %"compiler/source:Span", ptr %l2
  %t78 = load ptr, ptr %l48, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactPut(ptr %v0, ptr %v0, ptr %t78, ptr %t73, i64 -1, i64 %t74, i32 %t75, %"compiler/views:place" %t76, %"compiler/source:Span" %t77)
  br label %bb16
bb16:
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_617a65436beb56f7_865c97eda452f2a3)
  unreachable
bb22:
  br label %bb23
bb23:
  store i64 0, ptr %l11, !tbaa !24
  %t84 = load ptr, ptr %l6, !tbaa !29
  %t86 = getelementptr %"compiler/views:state", ptr %t84, i32 0, i32 1
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t86)
  store i64 %t88, ptr %l62
  br label %bb24
bb24:
  %t89 = load i64, ptr %l62, !tbaa !24
  store i64 %t89, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t90 = load i64, ptr %l12, !tbaa !24
  %t91 = load i64, ptr %l11, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  br i1 %t94, label %bb25, label %bb26
bb25:
  %t96 = load i64, ptr %l13, !tbaa !24
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb30
bb27:
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = load i64, ptr %l11, !tbaa !24
  %t104 = sub i64 %t100, %t101
  %t105 = load i64, ptr %l13, !tbaa !24
  %t108 = add i64 %t104, %t105
  %t110 = sub i64 %t108, 1
  %t111 = load i64, ptr %l13, !tbaa !24
  %t114 = sdiv i64 %t110, %t111
  store i64 %t114, ptr %l69, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb29
bb29:
  %t116 = load i64, ptr %l69, !tbaa !24
  store i64 %t116, ptr %l66, !tbaa !24
  br label %bb30
bb30:
  %t117 = load i64, ptr %l66, !tbaa !24
  store i64 %t117, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  %t118 = load i64, ptr %l15, !tbaa !24
  %t119 = load i64, ptr %l14, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb33:
  br label %bb34
bb34:
  %t126 = load i64, ptr %l11, !tbaa !24
  %t127 = load i64, ptr %l15, !tbaa !24
  %t128 = load i64, ptr %l13, !tbaa !24
  %t131 = mul i64 %t127, %t128
  %t134 = add i64 %t126, %t131
  store i64 %t134, ptr %l16, !tbaa !24
  %t136 = load ptr, ptr %l6, !tbaa !29
  %t138 = getelementptr %"compiler/views:state", ptr %t136, i32 0, i32 1
  %t139 = load i64, ptr %l16, !tbaa !24
  %t142 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t138, i64 %t139)
  store %"compiler/views:holding" %t142, ptr %l90
  br label %bb35
bb35:
  %t143 = load %"compiler/views:holding", ptr %l90
  store %"compiler/views:holding" %t143, ptr %l17
  %t144 = getelementptr %"compiler/views:holding", ptr %l17, i32 0, i32 1
  %t145 = getelementptr %"compiler/views:view", ptr %t144, i32 0, i32 2
  %t146 = load i1, ptr %t145, !tbaa !21
  br i1 %t146, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb39
bb37:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/views:holding", ptr %l17, i32 0, i32 1
  %t150 = getelementptr %"compiler/views:view", ptr %t149, i32 0, i32 0
  %t151 = load %"compiler/views:place", ptr %t150
  %t152 = load %"compiler/views:place", ptr %l1
  %t156 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emeets(ptr %v0, ptr %t148, %"compiler/views:place" %t151, %"compiler/views:place" %t152)
  store i1 %t156, ptr %l96
  br label %bb38
bb38:
  %t157 = load i1, ptr %l96, !tbaa !21
  %t158 = xor i1 %t157, true
  store i1 %t158, ptr %l92, !tbaa !21
  br label %bb39
bb39:
  %t160 = load i1, ptr %l92, !tbaa !21
  br i1 %t160, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb41:
  br label %bb42
bb42:
  %t161 = getelementptr %"compiler/views:holding", ptr %l17, i32 0, i32 1
  %t162 = load %"compiler/views:view", ptr %t161
  store %"compiler/views:view" %t162, ptr %l18
  %t164 = getelementptr %"compiler/views:view", ptr %l18, i32 0, i32 2
  store i1 true, ptr %t164, !tbaa !21
  %t165 = load %"compiler/source:Span", ptr %l2
  %t167 = getelementptr %"compiler/views:view", ptr %l18, i32 0, i32 3
  store %"compiler/source:Span" %t165, ptr %t167
  %t170 = getelementptr %"compiler/views:view", ptr %l18, i32 0, i32 4
  store i64 %a3, ptr %t170, !tbaa !24
  %t173 = getelementptr %"compiler/views:view", ptr %l18, i32 0, i32 5
  store i64 %a4, ptr %t173, !tbaa !24
  %t176 = getelementptr %"compiler/views:view", ptr %l18, i32 0, i32 6
  store %"compiler/source:Span" %a5, ptr %t176
  %t177 = load ptr, ptr %l6, !tbaa !29
  %t179 = getelementptr %"compiler/views:state", ptr %t177, i32 0, i32 1
  store ptr %t179, ptr %l104, !tbaa !29
  %t180 = load i64, ptr %l16, !tbaa !24
  store i64 %t180, ptr %l105, !tbaa !24
  %t181 = getelementptr %"compiler/views:holding", ptr %l17, i32 0, i32 0
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = load %"compiler/views:view", ptr %l18
  %t186 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s7, i64 %t182, %"compiler/views:view" %t183)
  store %"compiler/views:holding" %t186, ptr %l108
  br label %bb43
bb43:
  %t187 = load ptr, ptr %l104, !tbaa !29
  %t188 = load i64, ptr %l105, !tbaa !24
  %t189 = load %"compiler/views:holding", ptr %l108
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t187, i64 %t188, %"compiler/views:holding" %t189)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb45:
  %t190 = load i64, ptr %l15, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l15, !tbaa !24
  br label %bb31
bb46:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/views:Viewer", ptr %t194, i32 0, i32 23
  %t197 = load i1, ptr %t196, !tbaa !21
  %t199 = xor i1 %t197, true
  br i1 %t199, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb49
bb48:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/views:Viewer", ptr %t201, i32 0, i32 25
  %t204 = load i1, ptr %t203, !tbaa !21
  store i1 %t204, ptr %l114, !tbaa !21
  br label %bb49
bb49:
  %t206 = load i1, ptr %l114, !tbaa !21
  br i1 %t206, label %bb50, label %bb51
bb50:
  br label %ret
bb51:
  br label %bb52
bb52:
  %t207 = load ptr, ptr %l6, !tbaa !29
  %t209 = getelementptr %"compiler/views:state", ptr %t207, i32 0, i32 4
  store ptr %t209, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb53
bb53:
  store %olang.scope zeroinitializer, ptr %s12
  %t211 = load i64, ptr %l20, !tbaa !24
  store i64 %t211, ptr %l119, !tbaa !24
  %t212 = load ptr, ptr %l19, !tbaa !29
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v1, ptr %t212)
  store i64 %t214, ptr %l121
  br label %bb54
bb54:
  %t215 = load i64, ptr %l119, !tbaa !24
  %t216 = load i64, ptr %l121, !tbaa !24
  %t217 = icmp slt i64 %t215, %t216
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s12)
  br label %bb76
bb56:
  br label %bb57
bb57:
  %t221 = load ptr, ptr %l19, !tbaa !29
  %t222 = load i64, ptr %l20, !tbaa !24
  %t225 = call %"compiler/views:tasked" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eAt_3ccompiler_2fviews_3atasked_3e(ptr %v1, ptr %t221, i64 %t222)
  store %"compiler/views:tasked" %t225, ptr %l126
  br label %bb58
bb58:
  %t226 = load %"compiler/views:tasked", ptr %l126
  store %"compiler/views:tasked" %t226, ptr %l21
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/views:tasked", ptr %l21, i32 0, i32 0
  %t229 = getelementptr %"compiler/views:view", ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/views:place", ptr %t229
  %t231 = load %"compiler/views:place", ptr %l1
  %t235 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emeets(ptr %v0, ptr %t227, %"compiler/views:place" %t230, %"compiler/views:place" %t231)
  store i1 %t235, ptr %l130
  br label %bb59
bb59:
  %t236 = load i1, ptr %l130, !tbaa !21
  %t237 = xor i1 %t236, true
  br i1 %t237, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb63
bb61:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load %"compiler/source:Span", ptr %l2
  %t243 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %t239, %"compiler/source:Span" %t240)
  store i1 %t243, ptr %l135
  br label %bb62
bb62:
  %t244 = load i1, ptr %l135, !tbaa !21
  store i1 %t244, ptr %l132, !tbaa !21
  br label %bb63
bb63:
  %t245 = load i1, ptr %l132, !tbaa !21
  br i1 %t245, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb75
bb65:
  br label %bb66
bb66:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/views:tasked", ptr %l21, i32 0, i32 0
  %t248 = getelementptr %"compiler/views:view", ptr %t247, i32 0, i32 0
  %t249 = load %"compiler/views:place", ptr %t248
  %t252 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %s12, ptr %t246, %"compiler/views:place" %t249)
  store { i64, ptr } %t252, ptr %l138
  br label %bb67
bb67:
  %t253 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t253, ptr %l22, !tbaa !27
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/views:Viewer", ptr %t254, i32 0, i32 0
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 0
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t262 = getelementptr %"compiler/load:Loader", ptr %t260, i32 0, i32 4
  %t263 = load ptr, ptr %t262, !tbaa !29
  store ptr %t263, ptr %l142, !tbaa !29
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l2
  %t268 = call { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %t264, %"compiler/source:Span" %t265)
  store { i64, [3 x i64] } %t268, ptr %l145
  br label %bb68
bb68:
  %t269 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t269, ptr %l146, !tbaa !27
  %t270 = getelementptr %"compiler/views:tasked", ptr %l21, i32 0, i32 0
  %t271 = getelementptr %"compiler/views:view", ptr %t270, i32 0, i32 7
  %t272 = load i64, ptr %t271, !tbaa !24
  %t273 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t276 = call { i64, ptr } @compiler_2fviews_2etaskCopy(ptr %s12, ptr %s12, i64 %t272, { i64, ptr } %t273)
  store { i64, ptr } %t276, ptr %l149
  br label %bb69
bb69:
  %t277 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 0
  %t279 = extractvalue { i64, ptr } %t277, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t286 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecGrowsUnderTask(ptr %s12, ptr %s12, ptr %v0, { i64, ptr } %t284, { i64, ptr } %t283)
  store %"compiler/diagmsg:Msg" %t286, ptr %l151
  br label %bb70
bb70:
  %t287 = load ptr, ptr %l142, !tbaa !29
  %t288 = load { i64, [3 x i64] }, ptr %l145
  %t289 = load %"compiler/diagmsg:Msg", ptr %l151
  %t290 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t287, { i64, [3 x i64] } %t288, %"compiler/diagmsg:Msg" %t289)
  store i64 %t290, ptr %l152
  br label %bb71
bb71:
  %t291 = load i64, ptr %l152, !tbaa !24
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/views:Viewer", ptr %t292, i32 0, i32 0
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t297 = getelementptr %"compiler/generic:Program", ptr %t295, i32 0, i32 0
  %t298 = load ptr, ptr %t297, !tbaa !29
  %t300 = getelementptr %"compiler/load:Loader", ptr %t298, i32 0, i32 4
  %t301 = load ptr, ptr %t300, !tbaa !29
  store ptr %t301, ptr %l156, !tbaa !29
  store i64 %t291, ptr %l157, !tbaa !24
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/views:tasked", ptr %l21, i32 0, i32 1
  %t305 = load %"compiler/source:Span", ptr %t304
  %t308 = call { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %t303, %"compiler/source:Span" %t305)
  store { i64, [3 x i64] } %t308, ptr %l160
  br label %bb72
bb72:
  %t309 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t311 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecTaskHolds(ptr %s12, ptr %v0, { i64, ptr } %t309)
  store %"compiler/diagmsg:Msg" %t311, ptr %l162
  br label %bb73
bb73:
  %t312 = load ptr, ptr %l156, !tbaa !29
  %t313 = load i64, ptr %l157, !tbaa !24
  %t314 = load { i64, [3 x i64] }, ptr %l160
  %t315 = load %"compiler/diagmsg:Msg", ptr %l162
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t312, i64 %t313, { i64, [3 x i64] } %t314, %"compiler/diagmsg:Msg" %t315)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb75:
  %t316 = load i64, ptr %l20, !tbaa !24
  %t318 = add i64 %t316, 1
  store i64 %t318, ptr %l20, !tbaa !24
  br label %bb53
bb76:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ehandOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/views:view"
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca %"compiler/views:view"
  %l30 = alloca ptr
  %l35 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t3, ptr %a2, ptr %a3, ptr %l4)
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/views:Viewer", ptr %t10, i32 0, i32 23
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l6, !tbaa !24
  store i64 %t16, ptr %l18, !tbaa !24
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t17)
  store i64 %t19, ptr %l20
  br label %bb7
bb7:
  %t20 = load i64, ptr %l18, !tbaa !24
  %t21 = load i64, ptr %l20, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %bb29
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t26, i64 %t27)
  store %"compiler/views:view" %t30, ptr %l25
  br label %bb11
bb11:
  %t31 = load %"compiler/views:view", ptr %l25
  store %"compiler/views:view" %t31, ptr %l7
  %t32 = getelementptr %"compiler/views:view", ptr %l7, i32 0, i32 0
  %t33 = getelementptr %"compiler/views:place", ptr %t32, i32 0, i32 0
  %t34 = load { i64, [2 x i64] }, ptr %t33
  store { i64, [2 x i64] } %t34, ptr %l8
  %t36 = load { i64, [2 x i64] }, ptr %l8
  %t38 = extractvalue { i64, [2 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 2
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t42 = getelementptr { i64 }, ptr %t41, i32 0, i32 0
  %t43 = load i64, ptr %t42
  store i64 %t43, ptr %l9, !tbaa !24
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l30, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/views:Viewer", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/views:Viewer", ptr %t49, i32 0, i32 22
  %t52 = load i64, ptr %t51, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t48, i64 %t52)
  store ptr %t55, ptr %l35
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l35, !tbaa !29
  %t58 = getelementptr %"compiler/views:summary", ptr %t56, i32 0, i32 1
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = getelementptr %"compiler/views:view", ptr %l7, i32 0, i32 0
  %t61 = load %"compiler/views:place", ptr %t60
  %t63 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactPut(ptr %v0, ptr %v0, ptr %t63, ptr %t58, i64 %t59, i64 -1, i32 0, %"compiler/views:place" %t61, %"compiler/source:Span" %a1)
  br label %bb16
bb16:
  br label %bb27
bb17:
  %t68 = load { i64, [2 x i64] }, ptr %l8
  %t70 = extractvalue { i64, [2 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 4
  br i1 %t71, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/views:view", ptr %l7
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2epasses(ptr %v0, ptr %t73, %"compiler/views:view" %t74)
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
  call void @__olang_check_failed(ptr @olang_loc_c0119a910aee1fe3_5ce99f5c7dc6e127)
  unreachable
bb27:
  br label %bb28
bb28:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb6
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eholdsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/views:holding"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/views:holding"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/views:state", ptr %a1, i32 0, i32 1
  store ptr %t3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t15, i64 %t16)
  store %"compiler/views:holding" %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load %"compiler/views:holding", ptr %l16
  store %"compiler/views:holding" %t20, ptr %l6
  %t21 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp eq i64 %t22, %a2
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t29 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t30 = load %"compiler/views:view", ptr %t29
  call void @compiler_2fviews_2eviewAdd(ptr %v2, ptr %a3, %"compiler/views:view" %t30)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb1
bb12:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eisParam(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 27
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %a1)
  store i64 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eisRecord(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l6 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %s0, ptr %a0, i32 %a1)
  store { i64, ptr } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = mul i64 %t7, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t9)
  call void @llvm.memcpy.p0.p0.i64(ptr %t10, ptr %t8, i64 %t9, i1 false)
  %t11 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t14, ptr %l6
  br label %bb2
bb2:
  %t15 = load i1, ptr %l6, !tbaa !21
  %t16 = xor i1 %t15, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeyedBefore(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i1
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp slt i64 %t5, %a2
  store i1 %t9, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store { i64, ptr } %a3, ptr %l11, !tbaa !27
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %t16, i64 %t13
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !37
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t18, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t20, ptr %l14
  br label %bb6
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb6:
  %t21 = load i1, ptr %l14, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load i1, ptr %l10, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i64 } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l13 = alloca i64
  %l15 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t6 = insertvalue { i32, i64 } zeroinitializer, i64 -1, 1
  store { i32, i64 } %t6, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 10
  store ptr %t15, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l13, !tbaa !24
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load i64, ptr %l13, !tbaa !24
  %t22 = load i64, ptr %l15, !tbaa !24
  %t23 = icmp slt i64 %t21, %t22
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb7, label %bb8
bb7:
  br label %bb16
bb8:
  br label %bb9
bb9:
  %t27 = load i64, ptr %l3, !tbaa !24
  store i64 %t27, ptr %l4, !tbaa !24
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t29, i64 %t30)
  store ptr %t33, ptr %l21
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t37 = getelementptr %"compiler/load:Module", ptr %t34, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t38, { i64, ptr } %t39)
  store i1 %t42, ptr %l25
  br label %bb11
bb11:
  %t43 = load i1, ptr %l25, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t44 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  %t46 = insertvalue { i32, i64 } zeroinitializer, i64 %t44, 1
  store { i32, i64 } %t46, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb5
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t52 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca i8
  %l7 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i8
  %l12 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i8
  %l22 = alloca i32
  %l26 = alloca i64
  %l31 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t3, i64 %t4)
  store i8 %t7, ptr %l6
  br label %bb2
bb2:
  %t8 = load i8, ptr %l6, !tbaa !22
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t8)
  store i1 %t9, ptr %l7
  br label %bb3
bb3:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb8
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t11, i64 %t12)
  store i8 %t15, ptr %l11
  br label %bb6
bb6:
  %t16 = load i8, ptr %l11, !tbaa !22
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t16)
  store i1 %t17, ptr %l12
  br label %bb7
bb7:
  %t18 = load i1, ptr %l12, !tbaa !21
  store i1 %t18, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb12
bb10:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t20, i64 %t21)
  store i8 %t24, ptr %l16
  br label %bb11
bb11:
  %t25 = load i8, ptr %l16, !tbaa !22
  %t26 = icmp eq i8 %t25, 95
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t28 = load i1, ptr %l13, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l2, !tbaa !24
  br label %bb16
bb16:
  br label %bb1
bb17:
  %t35 = load i64, ptr %l1, !tbaa !24
  %t37 = trunc i64 %t35 to i32
  store i32 %t37, ptr %l22, !tbaa !23
  %t38 = load i64, ptr %l2, !tbaa !24
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb18, label %bb19
bb18:
  %t44 = load i64, ptr %l2, !tbaa !24
  store i64 %t44, ptr %l26, !tbaa !24
  br label %bb20
bb19:
  %t46 = load i64, ptr %l1, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l26, !tbaa !24
  br label %bb20
bb20:
  %t50 = load i64, ptr %l26, !tbaa !24
  %t51 = trunc i64 %t50 to i32
  %t52 = load i32, ptr %l22, !tbaa !23
  %t54 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t52, i32 %t51)
  store %"compiler/source:Span" %t54, ptr %l31
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t5 = getelementptr %"compiler/views:state", ptr %a1, i32 0, i32 3
  %t9 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t5, i64 %a2)
  store i1 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i1, ptr %l8, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2epasses(ptr %v0, ptr %a0, %"compiler/views:view" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:view"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l12 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/views:view" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 0
  %t2 = getelementptr %"compiler/views:place", ptr %t1, i32 0, i32 0
  %t3 = load { i64, [2 x i64] }, ptr %t2
  store { i64, [2 x i64] } %t3, ptr %l2
  %t5 = load { i64, [2 x i64] }, ptr %l2
  %t7 = extractvalue { i64, [2 x i64] } %t5, 0
  %t8 = icmp eq i64 %t7, 4
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { i64 }, ptr %t10, i32 0, i32 0
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb11
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/views:Viewer", ptr %t17, i32 0, i32 22
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t16, i64 %t20)
  store ptr %t23, ptr %l12
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t26 = getelementptr %"compiler/views:summary", ptr %t24, i32 0, i32 3
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t26, i64 %t27)
  store i1 %t30, ptr %l16
  br label %bb5
bb5:
  %t31 = load i1, ptr %l16, !tbaa !21
  %t32 = xor i1 %t31, true
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/views:Viewer", ptr %t34, i32 0, i32 2
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/views:Viewer", ptr %t37, i32 0, i32 22
  %t40 = load i64, ptr %t39, !tbaa !24
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t36, i64 %t40)
  store ptr %t43, ptr %l22
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t46 = getelementptr %"compiler/views:summary", ptr %t44, i32 0, i32 3
  %t47 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t46, i64 %t47, i1 true)
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/views:Viewer", ptr %t50, i32 0, i32 26
  store i1 true, ptr %t52, !tbaa !21
  br label %bb10
bb10:
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_b373ce5e6fb0acb1_b981b0fdcb20f7cd)
  unreachable
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/views:naming"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/views:place"
  %l20 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i1
  %l33 = alloca i1
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca %"compiler/views:naming"
  %l56 = alloca i64
  %l57 = alloca ptr
  %l60 = alloca { i64, [2 x i64] }
  %l66 = alloca %"compiler/views:place"
  %l67 = alloca ptr
  %l68 = alloca i1
  %l75 = alloca ptr
  %l79 = alloca %"compiler/views:place"
  %l80 = alloca ptr
  %l81 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca i1
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca ptr
  %l118 = alloca i32
  %l120 = alloca { i64, ptr }
  %l123 = alloca i64
  %l125 = alloca i64
  %l130 = alloca %"compiler/views:place"
  %l134 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l142 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca { i64, [2 x i64] }
  %l145 = alloca i64
  %l149 = alloca { i64, ptr }
  %l151 = alloca %"compiler/views:place"
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %t84 = alloca { i64, [2 x i64] }, align 8
  %t94 = alloca { i64, [2 x i64] }, align 8
  %t129 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  store ptr %t5, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t6 = load ptr, ptr %l23, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l23, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l24, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l24, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb31
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i32, ptr %l4, !tbaa !23
  %t24 = sext i32 %t22 to i64
  %t28 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enamed(ptr %v0, ptr %v2, ptr %t20, ptr %t21, i64 %t24)
  store i1 %t28, ptr %l33
  br label %bb9
bb9:
  %t29 = load i1, ptr %l33, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/views:state", ptr %t30, i32 0, i32 2
  store ptr %t32, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb11:
  br label %bb24
bb12:
  %t34 = load i64, ptr %l6, !tbaa !24
  store i64 %t34, ptr %l36, !tbaa !24
  %t35 = load ptr, ptr %l5, !tbaa !29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v2, ptr %t35)
  store i64 %t37, ptr %l38
  br label %bb13
bb13:
  %t38 = load i64, ptr %l36, !tbaa !24
  %t39 = load i64, ptr %l38, !tbaa !24
  %t40 = icmp slt i64 %t38, %t39
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb14, label %bb15
bb14:
  br label %bb23
bb15:
  br label %bb16
bb16:
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = call %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %v2, ptr %t44, i64 %t45)
  store %"compiler/views:naming" %t48, ptr %l43
  br label %bb17
bb17:
  %t49 = load %"compiler/views:naming", ptr %l43
  store %"compiler/views:naming" %t49, ptr %l7
  %t50 = getelementptr %"compiler/views:naming", ptr %l7, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i32, ptr %l4, !tbaa !23
  %t54 = sext i32 %t52 to i64
  %t57 = icmp eq i64 %t51, %t54
  br i1 %t57, label %bb18, label %bb19
bb18:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/views:naming", ptr %l7, i32 0, i32 1
  %t61 = load %"compiler/views:place", ptr %t60
  call void @compiler_2fviews_2eplaceAdd(ptr %v3, ptr %t59, %"compiler/views:place" %t61)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t64 = load i64, ptr %l6, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l6, !tbaa !24
  br label %bb12
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb24:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/views:Viewer", ptr %t68, i32 0, i32 27
  %t71 = load i32, ptr %l4, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t70, i64 %t73)
  store i64 %t76, ptr %l56
  br label %bb25
bb25:
  %t77 = load i64, ptr %l56, !tbaa !24
  store i64 %t77, ptr %l8, !tbaa !24
  %t78 = load ptr, ptr %l3, !tbaa !29
  store ptr %t78, ptr %l57, !tbaa !29
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = icmp sge i64 %t79, 0
  br i1 %t81, label %bb26, label %bb27
bb26:
  %t83 = load i64, ptr %l8, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [2 x i64] }, ptr %t84, i32 0, i32 0
  store i64 2, ptr %t85
  %t87 = insertvalue { i64 } undef, i64 %t83, 0
  %t88 = getelementptr { i64, [2 x i64] }, ptr %t84, i32 0, i32 1
  store { i64 } %t87, ptr %t88
  %t89 = load { i64, [2 x i64] }, ptr %t84
  store { i64, [2 x i64] } %t89, ptr %l60
  br label %bb28
bb27:
  %t91 = load i32, ptr %l4, !tbaa !23
  %t93 = sext i32 %t91 to i64
  store { i64, [2 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 0
  store i64 1, ptr %t95
  %t97 = insertvalue { i64 } undef, i64 %t93, 0
  %t98 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 1
  store { i64 } %t97, ptr %t98
  %t99 = load { i64, [2 x i64] }, ptr %t94
  store { i64, [2 x i64] } %t99, ptr %l60
  br label %bb28
bb28:
  %t101 = load { i64, [2 x i64] }, ptr %l60
  %t102 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s2, { i64, [2 x i64] } %t101, i64 0, i64 0, i1 false)
  store %"compiler/views:place" %t102, ptr %l66
  br label %bb29
bb29:
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = load %"compiler/views:place", ptr %l66
  call void @compiler_2fviews_2eplaceAdd(ptr %v3, ptr %t103, %"compiler/views:place" %t104)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb85
bb31:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t106 = load ptr, ptr %l67, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb32, label %bb33
bb32:
  %t109 = load ptr, ptr %l67, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 8}
  %t112 = icmp eq i64 %t110, 1
  store i1 %t112, ptr %l68, !tbaa !21
  br label %bb33
bb33:
  %t113 = load i1, ptr %l68, !tbaa !21
  br i1 %t113, label %bb34, label %bb35
bb34:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t116, i32 0, i32 2
  %t118 = load i64, ptr %t117
  store i64 %t118, ptr %l9, !tbaa !24
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [4 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t122, i32 0, i32 3
  %t124 = load i32, ptr %t123
  store i32 %t124, ptr %l10, !tbaa !23
  br label %bb36
bb35:
  br label %bb39
bb36:
  store %olang.scope zeroinitializer, ptr %s8
  %t126 = load ptr, ptr %l3, !tbaa !29
  store ptr %t126, ptr %l75, !tbaa !29
  %t127 = load i64, ptr %l9, !tbaa !24
  %t128 = load i32, ptr %l10, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [2 x i64] }, ptr %t129, i32 0, i32 0
  store i64 3, ptr %t130
  %t132 = insertvalue { i64, i32 } undef, i64 %t127, 0
  %t134 = insertvalue { i64, i32 } %t132, i32 %t128, 1
  %t135 = getelementptr { i64, [2 x i64] }, ptr %t129, i32 0, i32 1
  store { i64, i32 } %t134, ptr %t135
  %t136 = load { i64, [2 x i64] }, ptr %t129
  %t138 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s8, { i64, [2 x i64] } %t136, i64 0, i64 0, i1 false)
  store %"compiler/views:place" %t138, ptr %l79
  br label %bb37
bb37:
  %t139 = load ptr, ptr %l75, !tbaa !29
  %t140 = load %"compiler/views:place", ptr %l79
  call void @compiler_2fviews_2eplaceAdd(ptr %v3, ptr %t139, %"compiler/views:place" %t140)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s8)
  br label %bb85
bb39:
  %t141 = load ptr, ptr %l1, !tbaa !29
  store ptr %t141, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t142 = load ptr, ptr %l80, !tbaa !29
  %t143 = icmp ne ptr %t142, null
  br i1 %t143, label %bb40, label %bb41
bb40:
  %t145 = load ptr, ptr %l80, !tbaa !29
  %t146 = load i64, ptr %t145, !range !{i64 0, i64 8}
  %t148 = icmp eq i64 %t146, 2
  store i1 %t148, ptr %l81, !tbaa !21
  br label %bb41
bb41:
  %t149 = load i1, ptr %l81, !tbaa !21
  br i1 %t149, label %bb42, label %bb43
bb42:
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t152, i32 0, i32 2
  %t154 = load ptr, ptr %t153
  store ptr %t154, ptr %l11, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l11, !tbaa !29
  %t159 = load ptr, ptr %l2, !tbaa !29
  %t160 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t156, ptr %t157, ptr %t159, ptr %t160)
  br label %bb45
bb45:
  br label %bb85
bb46:
  %t165 = load ptr, ptr %l1, !tbaa !29
  store ptr %t165, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t166 = load ptr, ptr %l91, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb47, label %bb48
bb47:
  %t169 = load ptr, ptr %l91, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 8}
  %t172 = icmp eq i64 %t170, 6
  store i1 %t172, ptr %l92, !tbaa !21
  br label %bb48
bb48:
  %t173 = load i1, ptr %l92, !tbaa !21
  br i1 %t173, label %bb49, label %bb50
bb49:
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t176, i32 0, i32 2
  %t178 = load ptr, ptr %t177
  store ptr %t178, ptr %l12, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load ptr, ptr %l12, !tbaa !29
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t184 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t180, ptr %t181, ptr %t183, ptr %t184)
  br label %bb52
bb52:
  br label %bb85
bb53:
  %t189 = load ptr, ptr %l1, !tbaa !29
  store ptr %t189, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t190 = load ptr, ptr %l102, !tbaa !29
  %t191 = icmp ne ptr %t190, null
  br i1 %t191, label %bb54, label %bb55
bb54:
  %t193 = load ptr, ptr %l102, !tbaa !29
  %t194 = load i64, ptr %t193, !range !{i64 0, i64 8}
  %t196 = icmp eq i64 %t194, 3
  store i1 %t196, ptr %l103, !tbaa !21
  br label %bb55
bb55:
  %t197 = load i1, ptr %l103, !tbaa !21
  br i1 %t197, label %bb56, label %bb57
bb56:
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t200, i32 0, i32 2
  %t202 = load ptr, ptr %t201
  store ptr %t202, ptr %l13, !tbaa !29
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr { i64, [4 x i64] }, ptr %t204, i32 0, i32 1
  %t207 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t206, i32 0, i32 3
  %t208 = load i64, ptr %t207
  store i64 %t208, ptr %l14, !tbaa !24
  br label %bb58
bb57:
  br label %bb80
bb58:
  store %olang.scope zeroinitializer, ptr %s11
  %t210 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t210, ptr %l110
  br label %bb59
bb59:
  %t211 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t211, ptr %l15
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load ptr, ptr %l13, !tbaa !29
  %t215 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s11, ptr %t212, ptr %t213, ptr %t215, ptr %l15)
  br label %bb60
bb60:
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l116, !tbaa !29
  %t221 = load ptr, ptr %l13, !tbaa !29
  %t223 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t221)
  store i32 %t223, ptr %l118
  br label %bb61
bb61:
  %t224 = load i64, ptr %l14, !tbaa !24
  %t225 = load ptr, ptr %l116, !tbaa !29
  %t226 = load i32, ptr %l118, !tbaa !23
  %t228 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efieldName(ptr %v0, ptr %s11, ptr %t225, i32 %t226, i64 %t224)
  store { i64, ptr } %t228, ptr %l120
  br label %bb62
bb62:
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t231 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 1
  %t233 = extractvalue { i64, ptr } %t231, 0
  %t234 = add i64 %t230, %t233
  %t235 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t234)
  call void @olang_textcopy(ptr %t235, ptr %t229, i64 %t230)
  %t236 = getelementptr i8, ptr %t235, i64 %t230
  call void @olang_textcopy(ptr %t236, ptr %t232, i64 %t233)
  %t237 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t235, 1
  store { i64, ptr } %t238, ptr %l16, !tbaa !27
  store ptr %l15, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s14
  %t241 = load i64, ptr %l18, !tbaa !24
  store i64 %t241, ptr %l123, !tbaa !24
  %t242 = load ptr, ptr %l17, !tbaa !29
  %t244 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s11, ptr %t242)
  store i64 %t244, ptr %l125
  br label %bb64
bb64:
  %t245 = load i64, ptr %l123, !tbaa !24
  %t246 = load i64, ptr %l125, !tbaa !24
  %t247 = icmp slt i64 %t245, %t246
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s14)
  br label %bb79
bb66:
  br label %bb67
bb67:
  %t251 = load ptr, ptr %l17, !tbaa !29
  %t252 = load i64, ptr %l18, !tbaa !24
  %t255 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s11, ptr %t251, i64 %t252)
  store %"compiler/views:place" %t255, ptr %l130
  br label %bb68
bb68:
  %t256 = load %"compiler/views:place", ptr %l130
  store %"compiler/views:place" %t256, ptr %l19
  %t257 = getelementptr %"compiler/views:place", ptr %l19, i32 0, i32 3
  %t258 = load i1, ptr %t257, !tbaa !21
  br i1 %t258, label %bb69, label %bb70
bb69:
  %t260 = load ptr, ptr %l3, !tbaa !29
  %t261 = load %"compiler/views:place", ptr %l19
  call void @compiler_2fviews_2eplaceAdd(ptr %v3, ptr %t260, %"compiler/views:place" %t261)
  br label %bb71
bb70:
  br label %bb72
bb71:
  call void @__olang_scope_close(ptr %s14)
  br label %bb78
bb72:
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l134, !tbaa !29
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/views:Viewer", ptr %t265, i32 0, i32 3
  %t268 = getelementptr %"compiler/views:place", ptr %l19, i32 0, i32 1
  %t269 = load i64, ptr %t268, !tbaa !24
  %t272 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s14, ptr %t267, i64 %t269)
  store { i64, ptr } %t272, ptr %l138
  br label %bb73
bb73:
  %t273 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t274, 1
  %t276 = extractvalue { i64, ptr } %t274, 0
  %t278 = extractvalue { i64, ptr } %t273, 1
  %t279 = extractvalue { i64, ptr } %t273, 0
  %t280 = add i64 %t276, %t279
  %t281 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t280)
  call void @olang_textcopy(ptr %t281, ptr %t275, i64 %t276)
  %t282 = getelementptr i8, ptr %t281, i64 %t276
  call void @olang_textcopy(ptr %t282, ptr %t278, i64 %t279)
  %t283 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t281, 1
  %t286 = extractvalue { i64, ptr } %t284, 0
  %t287 = extractvalue { i64, ptr } %t284, 1
  %t288 = mul i64 %t286, 1
  %t289 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t288)
  call void @llvm.memcpy.p0.p0.i64(ptr %t289, ptr %t287, i64 %t288, i1 false)
  %t290 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr %t289, 1
  %t292 = load ptr, ptr %l134, !tbaa !29
  %t294 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t292, { i64, ptr } %t291)
  store i64 %t294, ptr %l142
  br label %bb74
bb74:
  %t295 = load i64, ptr %l142, !tbaa !24
  store i64 %t295, ptr %l20, !tbaa !24
  %t296 = load ptr, ptr %l3, !tbaa !29
  store ptr %t296, ptr %l143, !tbaa !29
  %t297 = getelementptr %"compiler/views:place", ptr %l19, i32 0, i32 0
  %t298 = load { i64, [2 x i64] }, ptr %t297
  store { i64, [2 x i64] } %t298, ptr %l144
  %t299 = load i64, ptr %l20, !tbaa !24
  store i64 %t299, ptr %l145, !tbaa !24
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/views:Viewer", ptr %t300, i32 0, i32 3
  %t303 = load i64, ptr %l20, !tbaa !24
  %t306 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s14, ptr %t302, i64 %t303)
  store { i64, ptr } %t306, ptr %l149
  br label %bb75
bb75:
  %t307 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t307, 0
  %t309 = load { i64, [2 x i64] }, ptr %l144
  %t310 = load i64, ptr %l145, !tbaa !24
  %t312 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s14, { i64, [2 x i64] } %t309, i64 %t310, i64 %t308, i1 false)
  store %"compiler/views:place" %t312, ptr %l151
  br label %bb76
bb76:
  %t313 = load ptr, ptr %l143, !tbaa !29
  %t314 = load %"compiler/views:place", ptr %l151
  call void @compiler_2fviews_2eplaceAdd(ptr %v3, ptr %t313, %"compiler/views:place" %t314)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s14)
  br label %bb78
bb78:
  %t315 = load i64, ptr %l18, !tbaa !24
  %t317 = add i64 %t315, 1
  store i64 %t317, ptr %l18, !tbaa !24
  br label %bb63
bb79:
  call void @__olang_scope_close(ptr %s11)
  br label %bb85
bb80:
  br i1 true, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_dcfb2f8bfac0bc7f_4146aca391677efb)
  unreachable
bb85:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i1
  %l75 = alloca i1
  %l77 = alloca i64
  %l79 = alloca i64
  %l84 = alloca %"compiler/views:view"
  %l89 = alloca ptr
  %l90 = alloca i1
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l111 = alloca i64
  %l113 = alloca i64
  %l118 = alloca %"compiler/views:view"
  %l123 = alloca ptr
  %l124 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l152 = alloca i64
  %l157 = alloca ptr
  %l159 = alloca ptr
  %l162 = alloca i64
  %l164 = alloca ptr
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/views:state", ptr %t5, i32 0, i32 0
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l25, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l25, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t12 = load ptr, ptr %l28, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l28, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l29, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l29, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t22, i32 0, i32 0
  %t24 = load %"compiler/source:Span", ptr %t23
  store %"compiler/source:Span" %t24, ptr %l5
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [4 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t28, i32 0, i32 2
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l6, !tbaa !23
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l6, !tbaa !23
  %t35 = sext i32 %t33 to i64
  %t36 = load %"compiler/source:Span", ptr %l5
  %t37 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2euse(ptr %v0, ptr %v2, ptr %t32, i64 %t35, %"compiler/source:Span" %t36, ptr %t37)
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t44 = load i32, ptr %l6, !tbaa !23
  %t46 = sext i32 %t44 to i64
  %t47 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eholdsOf(ptr %v0, ptr %v2, ptr %v3, ptr %t42, ptr %t43, i64 %t46, ptr %t47)
  br label %bb13
bb13:
  br label %bb99
bb14:
  %t52 = load ptr, ptr %l1, !tbaa !29
  store ptr %t52, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t53 = load ptr, ptr %l46, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l46, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 8}
  %t59 = icmp eq i64 %t57, 2
  store i1 %t59, ptr %l47, !tbaa !21
  br label %bb16
bb16:
  %t60 = load i1, ptr %l47, !tbaa !21
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t63, i32 0, i32 2
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l7, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l7, !tbaa !29
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t67, ptr %t68, ptr %t70, ptr %t71)
  br label %bb20
bb20:
  br label %bb99
bb21:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t77 = load ptr, ptr %l57, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t80 = load ptr, ptr %l57, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 3
  store i1 %t83, ptr %l58, !tbaa !21
  br label %bb23
bb23:
  %t84 = load i1, ptr %l58, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t87, i32 0, i32 1
  %t89 = load i32, ptr %t88
  store i32 %t89, ptr %l8, !tbaa !23
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t93, i32 0, i32 2
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l9, !tbaa !29
  br label %bb26
bb25:
  br label %bb45
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t97 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l65
  br label %bb27
bb27:
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l10
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l9, !tbaa !29
  %t102 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s4, ptr %t99, ptr %t100, i1 false, ptr %t102, ptr %l10)
  br label %bb28
bb28:
  %t107 = load i1, ptr %l2, !tbaa !21
  br i1 %t107, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb32
bb30:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr %l8, !tbaa !23
  %t113 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t109, i32 %t110)
  store i1 %t113, ptr %l75
  br label %bb31
bb31:
  %t114 = load i1, ptr %l75, !tbaa !21
  store i1 %t114, ptr %l72, !tbaa !21
  br label %bb32
bb32:
  %t115 = load i1, ptr %l72, !tbaa !21
  br i1 %t115, label %bb33, label %bb34
bb33:
  store ptr %l10, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb35
bb34:
  br label %bb44
bb35:
  %t117 = load i64, ptr %l12, !tbaa !24
  store i64 %t117, ptr %l77, !tbaa !24
  %t118 = load ptr, ptr %l11, !tbaa !29
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s4, ptr %t118)
  store i64 %t120, ptr %l79
  br label %bb36
bb36:
  %t121 = load i64, ptr %l77, !tbaa !24
  %t122 = load i64, ptr %l79, !tbaa !24
  %t123 = icmp slt i64 %t121, %t122
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb37, label %bb38
bb37:
  br label %bb43
bb38:
  br label %bb39
bb39:
  %t127 = load ptr, ptr %l11, !tbaa !29
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s4, ptr %t127, i64 %t128)
  store %"compiler/views:view" %t131, ptr %l84
  br label %bb40
bb40:
  %t132 = load %"compiler/views:view", ptr %l84
  %t133 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t133, %"compiler/views:view" %t132)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l12, !tbaa !24
  br label %bb35
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s4)
  br label %bb99
bb45:
  %t141 = load ptr, ptr %l1, !tbaa !29
  store ptr %t141, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t142 = load ptr, ptr %l89, !tbaa !29
  %t143 = icmp ne ptr %t142, null
  br i1 %t143, label %bb46, label %bb47
bb46:
  %t145 = load ptr, ptr %l89, !tbaa !29
  %t146 = load i64, ptr %t145, !range !{i64 0, i64 8}
  %t148 = icmp eq i64 %t146, 4
  store i1 %t148, ptr %l90, !tbaa !21
  br label %bb47
bb47:
  %t149 = load i1, ptr %l90, !tbaa !21
  br i1 %t149, label %bb48, label %bb49
bb48:
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t152, i32 0, i32 2
  %t154 = load ptr, ptr %t153
  store ptr %t154, ptr %l14, !tbaa !29
  br label %bb50
bb49:
  br label %bb67
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t156 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l95
  br label %bb51
bb51:
  %t157 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t157, ptr %l15
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l14, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Elem", ptr %t159, i32 0, i32 0
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s9, ptr %t158, ptr %t162, i1 false, ptr %t164, ptr %l15)
  br label %bb52
bb52:
  %t169 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t169, ptr %l102
  br label %bb53
bb53:
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l16
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l14, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Elem", ptr %t172, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s9, ptr %t171, ptr %t175, ptr %t177, ptr %l16)
  br label %bb54
bb54:
  %t182 = load i1, ptr %l2, !tbaa !21
  br i1 %t182, label %bb55, label %bb56
bb55:
  store ptr %l15, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb57
bb56:
  br label %bb66
bb57:
  %t185 = load i64, ptr %l18, !tbaa !24
  store i64 %t185, ptr %l111, !tbaa !24
  %t186 = load ptr, ptr %l17, !tbaa !29
  %t188 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s9, ptr %t186)
  store i64 %t188, ptr %l113
  br label %bb58
bb58:
  %t189 = load i64, ptr %l111, !tbaa !24
  %t190 = load i64, ptr %l113, !tbaa !24
  %t191 = icmp slt i64 %t189, %t190
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb59, label %bb60
bb59:
  br label %bb65
bb60:
  br label %bb61
bb61:
  %t195 = load ptr, ptr %l17, !tbaa !29
  %t196 = load i64, ptr %l18, !tbaa !24
  %t199 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s9, ptr %t195, i64 %t196)
  store %"compiler/views:view" %t199, ptr %l118
  br label %bb62
bb62:
  %t200 = load %"compiler/views:view", ptr %l118
  %t201 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t201, %"compiler/views:view" %t200)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t205 = load i64, ptr %l18, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l18, !tbaa !24
  br label %bb57
bb65:
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s9)
  br label %bb99
bb67:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t210 = load ptr, ptr %l123, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb68, label %bb69
bb68:
  %t213 = load ptr, ptr %l123, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 8}
  %t216 = icmp eq i64 %t214, 5
  store i1 %t216, ptr %l124, !tbaa !21
  br label %bb69
bb69:
  %t217 = load i1, ptr %l124, !tbaa !21
  br i1 %t217, label %bb70, label %bb71
bb70:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t220, i32 0, i32 2
  %t222 = load ptr, ptr %t221
  store ptr %t222, ptr %l20, !tbaa !29
  br label %bb72
bb71:
  br label %bb74
bb72:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load ptr, ptr %l20, !tbaa !29
  %t227 = getelementptr %"compiler/typed:Payload", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = load ptr, ptr %l3, !tbaa !29
  %t231 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t224, ptr %t228, i1 false, ptr %t230, ptr %t231)
  br label %bb73
bb73:
  br label %bb99
bb74:
  %t236 = load ptr, ptr %l1, !tbaa !29
  store ptr %t236, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t237 = load ptr, ptr %l135, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb75, label %bb76
bb75:
  %t240 = load ptr, ptr %l135, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 8}
  %t243 = icmp eq i64 %t241, 6
  store i1 %t243, ptr %l136, !tbaa !21
  br label %bb76
bb76:
  %t244 = load i1, ptr %l136, !tbaa !21
  br i1 %t244, label %bb77, label %bb78
bb77:
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t247, i32 0, i32 2
  %t249 = load ptr, ptr %t248
  store ptr %t249, ptr %l21, !tbaa !29
  br label %bb79
bb78:
  br label %bb81
bb79:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load ptr, ptr %l21, !tbaa !29
  %t254 = load ptr, ptr %l3, !tbaa !29
  %t255 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t251, ptr %t252, ptr %t254, ptr %t255)
  br label %bb80
bb80:
  br label %bb99
bb81:
  %t260 = load ptr, ptr %l1, !tbaa !29
  store ptr %t260, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t261 = load ptr, ptr %l146, !tbaa !29
  %t262 = icmp ne ptr %t261, null
  br i1 %t262, label %bb82, label %bb83
bb82:
  %t264 = load ptr, ptr %l146, !tbaa !29
  %t265 = load i64, ptr %t264, !range !{i64 0, i64 8}
  %t267 = icmp eq i64 %t265, 7
  store i1 %t267, ptr %l147, !tbaa !21
  br label %bb83
bb83:
  %t268 = load i1, ptr %l147, !tbaa !21
  br i1 %t268, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb94
bb86:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/views:Viewer", ptr %t269, i32 0, i32 29
  %t273 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t271)
  store i64 %t273, ptr %l152
  br label %bb87
bb87:
  %t274 = load i64, ptr %l152, !tbaa !24
  %t275 = icmp sgt i64 %t274, 0
  br i1 %t275, label %bb88, label %bb89
bb88:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/views:Viewer", ptr %t277, i32 0, i32 24
  %t280 = load i1, ptr %t279, !tbaa !21
  store i1 %t280, ptr %l22, !tbaa !21
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/views:Viewer", ptr %t282, i32 0, i32 24
  store i1 true, ptr %t284, !tbaa !21
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l157, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/views:Viewer", ptr %t286, i32 0, i32 29
  store ptr %t288, ptr %l159, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/views:Viewer", ptr %t289, i32 0, i32 29
  %t293 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t291)
  store i64 %t293, ptr %l162
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t294 = load i64, ptr %l162, !tbaa !24
  %t295 = sub i64 %t294, 1
  %t296 = load ptr, ptr %l159, !tbaa !29
  %t298 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t296, i64 %t295)
  store ptr %t298, ptr %l164
  br label %bb91
bb91:
  %t299 = load ptr, ptr %l164, !tbaa !29
  %t300 = load i1, ptr %l2, !tbaa !21
  %t301 = load ptr, ptr %l3, !tbaa !29
  %t302 = load ptr, ptr %l4, !tbaa !29
  %t303 = load ptr, ptr %l157, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v0, ptr %v2, ptr %v3, ptr %t303, ptr %t299, i1 %t300, ptr %t301, ptr %t302)
  br label %bb92
bb92:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load i1, ptr %l22, !tbaa !21
  %t312 = getelementptr %"compiler/views:Viewer", ptr %t308, i32 0, i32 24
  store i1 %t309, ptr %t312, !tbaa !21
  br label %bb93
bb93:
  br label %bb99
bb94:
  br i1 true, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_7b1b67136b76c79_188c2ea4ec84d8a5)
  unreachable
bb99:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca i1
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l31 = alloca %"compiler/source:Span"
  %l33 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
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
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l2
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Elem", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t31 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eafter(ptr %v0, ptr %v1, ptr %t22, %"compiler/source:Span" %t23, ptr %t27, i8 91)
  store %"compiler/source:Span" %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t32, ptr %l6
  br label %bb20
bb7:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t34 = load ptr, ptr %l20, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l20, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 3
  store i1 %t40, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t41 = load i1, ptr %l21, !tbaa !21
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t44, i32 0, i32 0
  %t46 = load %"compiler/source:Span", ptr %t45
  store %"compiler/source:Span" %t46, ptr %l4
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l4
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t60 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eafter(ptr %v0, ptr %v1, ptr %t54, %"compiler/source:Span" %t55, ptr %t56, i8 46)
  store %"compiler/source:Span" %t60, ptr %l31
  br label %bb13
bb13:
  %t61 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t61, ptr %l6
  br label %bb20
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t62)
  store %"compiler/source:Span" %t64, ptr %l33
  br label %bb18
bb18:
  %t65 = load %"compiler/source:Span", ptr %l33
  store %"compiler/source:Span" %t65, ptr %l6
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_26b1312863f2c2c7_c8d66606dd24933b)
  unreachable
bb20:
  %t66 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t66, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erecordPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i32, ptr %l7, !tbaa !23
  %t7 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eisRecord(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t7, ptr %l8
  br label %bb2
bb2:
  %t8 = load i1, ptr %l8, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l10, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 2
  store i1 %t18, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t19 = load i1, ptr %l11, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t26, ptr %t27, ptr %t29, ptr %t30)
  br label %bb11
bb11:
  br label %bb18
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t35, ptr %t36, ptr %t38, ptr %t39)
  br label %bb16
bb16:
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_24f4045ab8cbf215_2ef83d27164e37c1)
  unreachable
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootPlace(ptr %v0, ptr %v1, ptr %v1, ptr %t1, ptr %a1)
  store ptr %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l6, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l2, !tbaa !29
  store ptr %t12, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t13 = load ptr, ptr %l11, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l11, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 8}
  %t19 = icmp eq i64 %t17, 0
  store i1 %t19, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l12, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l3, !tbaa !23
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l3, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t33 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eisParam(ptr %v0, ptr %t27, i64 %t30)
  store i1 %t33, ptr %l20
  br label %bb10
bb10:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb13
bb12:
  %t35 = load i32, ptr %l3, !tbaa !23
  %t37 = sext i32 %t35 to i64
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb13
bb13:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l10, !tbaa !24
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i64 -1, ptr %l10, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_40eaf25cbb0521a7_3d2a576ac0c8b0f3)
  unreachable
bb19:
  %t40 = load i64, ptr %l10, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l74 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  store i64 64, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t4 = load i64, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t8 = icmp sgt i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = sub i64 %t14, %t15
  %t19 = load i64, ptr %l5, !tbaa !24
  %t22 = add i64 %t18, %t19
  %t24 = sub i64 %t22, 1
  %t25 = load i64, ptr %l5, !tbaa !24
  %t28 = sdiv i64 %t24, %t25
  store i64 %t28, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t30 = load i64, ptr %l21, !tbaa !24
  store i64 %t30, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  br label %bb55
bb9:
  br label %bb10
bb10:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = mul i64 %t41, %t42
  %t48 = add i64 %t40, %t45
  store i64 %t48, ptr %l8, !tbaa !24
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  br i1 %t52, label %bb11, label %bb12
bb11:
  store ptr null, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t55 = load ptr, ptr %l2, !tbaa !29
  store ptr %t55, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t56 = load ptr, ptr %l42, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load ptr, ptr %l42, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 3
  store i1 %t62, ptr %l43, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l43, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l9, !tbaa !29
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t70 = load ptr, ptr %l9, !tbaa !29
  store ptr %t70, ptr %l2, !tbaa !29
  br label %bb53
bb19:
  %t73 = load ptr, ptr %l2, !tbaa !29
  store ptr %t73, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t74 = load ptr, ptr %l50, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l50, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 8}
  %t80 = icmp eq i64 %t78, 4
  store i1 %t80, ptr %l51, !tbaa !21
  br label %bb21
bb21:
  %t81 = load i1, ptr %l51, !tbaa !21
  br i1 %t81, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t84, i32 0, i32 2
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l10, !tbaa !29
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t88 = load ptr, ptr %l10, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Elem", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  store ptr %t91, ptr %l2, !tbaa !29
  br label %bb53
bb25:
  %t94 = load ptr, ptr %l2, !tbaa !29
  store ptr %t94, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t95 = load ptr, ptr %l59, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t98 = load ptr, ptr %l59, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 8}
  %t101 = icmp eq i64 %t99, 5
  store i1 %t101, ptr %l60, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l60, !tbaa !21
  br i1 %t102, label %bb28, label %bb29
bb28:
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l11, !tbaa !29
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t109 = load ptr, ptr %l11, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Payload", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  store ptr %t112, ptr %l2, !tbaa !29
  br label %bb53
bb31:
  %t115 = load ptr, ptr %l2, !tbaa !29
  store ptr %t115, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t116 = load ptr, ptr %l68, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb32, label %bb33
bb32:
  %t119 = load ptr, ptr %l68, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 8}
  %t122 = icmp eq i64 %t120, 2
  store i1 %t122, ptr %l69, !tbaa !21
  br label %bb33
bb33:
  %t123 = load i1, ptr %l69, !tbaa !21
  br i1 %t123, label %bb34, label %bb35
bb34:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t126, i32 0, i32 2
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l12, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t130 = load ptr, ptr %l12, !tbaa !29
  store ptr %t130, ptr %l74, !tbaa !29
  %t131 = load ptr, ptr %l74, !tbaa !29
  %t132 = call ptr @__olang_scope_of(ptr %t131, ptr null)
  %t133 = ptrtoint ptr %t132 to i64
  %t135 = inttoptr i64 %t133 to ptr
  %t136 = load ptr, ptr %l74, !tbaa !29
  %t137 = call ptr @compiler_2fviews_2eargPlace(ptr %t135, ptr %v2, ptr %t136)
  store ptr %t137, ptr %l76
  br label %bb37
bb37:
  %t138 = load ptr, ptr %l76, !tbaa !29
  store ptr %t138, ptr %l2, !tbaa !29
  br label %bb53
bb38:
  %t139 = load ptr, ptr %l2, !tbaa !29
  store ptr %t139, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t140 = load ptr, ptr %l77, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb39, label %bb40
bb39:
  %t143 = load ptr, ptr %l77, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 8}
  %t146 = icmp eq i64 %t144, 0
  store i1 %t146, ptr %l78, !tbaa !21
  br label %bb40
bb40:
  %t147 = load i1, ptr %l78, !tbaa !21
  br i1 %t147, label %bb41, label %bb42
bb41:
  br label %bb47
bb42:
  %t148 = load ptr, ptr %l2, !tbaa !29
  store ptr %t148, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t149 = load ptr, ptr %l81, !tbaa !29
  %t150 = icmp ne ptr %t149, null
  br i1 %t150, label %bb43, label %bb44
bb43:
  %t152 = load ptr, ptr %l81, !tbaa !29
  %t153 = load i64, ptr %t152, !range !{i64 0, i64 8}
  %t155 = icmp eq i64 %t153, 1
  store i1 %t155, ptr %l82, !tbaa !21
  br label %bb44
bb44:
  %t156 = load i1, ptr %l82, !tbaa !21
  br i1 %t156, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t157 = load ptr, ptr %l2, !tbaa !29
  store ptr %t157, ptr %rv
  br label %ret
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store ptr null, ptr %rv
  br label %ret
bb52:
  call void @__olang_check_failed(ptr @olang_loc_945ffbf6072962e3_f3ad5bbe10c5f487)
  unreachable
bb53:
  br label %bb54
bb54:
  %t160 = load i64, ptr %l7, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l7, !tbaa !24
  br label %bb7
bb55:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 21
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_5699d6f0b9487a4c_f8171e4e8a154888)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:Viewer", ptr %t8, i32 0, i32 21
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 3
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = shl i64 %t15, 32
  %t18 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = or i64 %t17, %t21
  store i64 %t24, ptr %l2, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/views:Viewer", ptr %t26, i32 0, i32 30
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t28, i64 %t29)
  store i1 %t32, ptr %l17
  br label %bb4
bb4:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/views:Viewer", ptr %t35, i32 0, i32 30
  %t38 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t37, i64 %t38, i1 true)
  br label %bb8
bb8:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca i8
  %l8 = alloca i1
  %l11 = alloca i8
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t3, i64 %t4)
  store i8 %t7, ptr %l6
  br label %bb2
bb2:
  %t8 = load i8, ptr %l6, !tbaa !22
  %t9 = icmp eq i8 %t8, 32
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb6
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t11, i64 %t12)
  store i8 %t15, ptr %l11
  br label %bb5
bb5:
  %t16 = load i8, ptr %l11, !tbaa !22
  %t17 = icmp eq i8 %t16, 9
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l8, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = add i64 %t22, 1
  store i64 %t24, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t26 = load i64, ptr %l2, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2espawn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i1
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l36 = alloca i1
  %l49 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i1
  %l75 = alloca i64
  %l77 = alloca i64
  %l82 = alloca %"compiler/views:view"
  %l84 = alloca ptr
  %l87 = alloca %"compiler/views:tasked"
  %l98 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l22
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Spawn", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t3, ptr %t7, ptr %t9, ptr %l4)
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 24
  %t17 = load i1, ptr %t16, !tbaa !21
  store i1 %t17, ptr %l5, !tbaa !21
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/views:Viewer", ptr %t19, i32 0, i32 24
  store i1 true, ptr %t21, !tbaa !21
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l32
  br label %bb3
bb3:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l6
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Spawn", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l7, !tbaa !29
  %t29 = load ptr, ptr %l7, !tbaa !29
  store ptr %t29, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t30 = load ptr, ptr %l35, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb4, label %bb5
bb4:
  %t33 = load ptr, ptr %l35, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 6
  store i1 %t36, ptr %l36, !tbaa !21
  br label %bb5
bb5:
  %t37 = load i1, ptr %l36, !tbaa !21
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t38 = load ptr, ptr %l7, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l8, !tbaa !29
  br label %bb8
bb7:
  br label %bb28
bb8:
  %t44 = load ptr, ptr %l8, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Call", ptr %t44, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  %t53 = load i64, ptr %l10, !tbaa !24
  %t54 = load i64, ptr %l11, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t61 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t61, ptr %l49, !tbaa !27
  %t62 = load i64, ptr %l10, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t69, ptr %t67, ptr %t72, ptr %l6)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb9
bb15:
  %t81 = load ptr, ptr %l8, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Call", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l13, !tbaa !29
  %t86 = load ptr, ptr %l13, !tbaa !29
  store ptr %t86, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t87 = load ptr, ptr %l61, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = load ptr, ptr %l61, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 5}
  %t93 = icmp eq i64 %t91, 2
  store i1 %t93, ptr %l62, !tbaa !21
  br label %bb17
bb17:
  %t94 = load i1, ptr %l62, !tbaa !21
  br i1 %t94, label %bb18, label %bb19
bb18:
  %t95 = load ptr, ptr %l13, !tbaa !29
  %t97 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { ptr }, ptr %t97, i32 0, i32 0
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l14, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l14, !tbaa !29
  %t104 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t101, ptr %t102, ptr %t104, ptr %l6)
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
  call void @__olang_check_failed(ptr @olang_loc_ef97709dce49d3b_530bdd1db1d3a0b7)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_cf8b3001c30b10ba_435a3683731d1196)
  unreachable
bb33:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i1, ptr %l5, !tbaa !21
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t109, i32 0, i32 24
  store i1 %t110, ptr %t113, !tbaa !21
  store ptr %l6, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s9
  %t115 = load i64, ptr %l16, !tbaa !24
  store i64 %t115, ptr %l75, !tbaa !24
  %t116 = load ptr, ptr %l15, !tbaa !29
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t116)
  store i64 %t118, ptr %l77
  br label %bb35
bb35:
  %t119 = load i64, ptr %l75, !tbaa !24
  %t120 = load i64, ptr %l77, !tbaa !24
  %t121 = icmp slt i64 %t119, %t120
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s9)
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t125 = load ptr, ptr %l15, !tbaa !29
  %t126 = load i64, ptr %l16, !tbaa !24
  %t129 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t125, i64 %t126)
  store %"compiler/views:view" %t129, ptr %l82
  br label %bb39
bb39:
  %t130 = load %"compiler/views:view", ptr %l82
  %t131 = load ptr, ptr %l3, !tbaa !29
  %t133 = getelementptr %"compiler/views:state", ptr %t131, i32 0, i32 4
  store ptr %t133, ptr %l84, !tbaa !29
  %t138 = call %"compiler/views:tasked" @compiler_2fviews_3atasked_2ector(ptr %s9, %"compiler/views:view" %t130, %"compiler/source:Span" %a1)
  store %"compiler/views:tasked" %t138, ptr %l87
  br label %bb40
bb40:
  %t139 = load ptr, ptr %l84, !tbaa !29
  %t140 = load %"compiler/views:tasked", ptr %l87
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ePush_3ccompiler_2fviews_3atasked_3e(ptr %v2, ptr %t139, %"compiler/views:tasked" %t140)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s9)
  br label %bb42
bb42:
  %t141 = load i64, ptr %l16, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l16, !tbaa !24
  br label %bb34
bb43:
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Spawn", ptr %t145, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  store i64 %t152, ptr %l20, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s12
  %t154 = load i64, ptr %l19, !tbaa !24
  %t155 = load i64, ptr %l20, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s12)
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t162 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t162, ptr %l98, !tbaa !27
  %t163 = load i64, ptr %l19, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr ptr, ptr %t166, i64 %t163
  %t168 = load ptr, ptr %t167, !tbaa !39
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eassign(ptr %v0, ptr %v1, ptr %s12, ptr %s0, ptr %v2, ptr %t170, ptr %t168, ptr null, ptr %l4, ptr %t172)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s12)
  br label %bb49
bb49:
  %t177 = load i64, ptr %l19, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l19, !tbaa !24
  br label %bb44
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/views:holding"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/views:place"
  %l16 = alloca %"compiler/views:view"
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l56 = alloca %"compiler/views:holding"
  %l58 = alloca i64
  %l60 = alloca i64
  %l65 = alloca %"compiler/views:place"
  %l67 = alloca i1
  %l68 = alloca i1
  %l69 = alloca { i64, [2 x i64] }
  %l71 = alloca { i64, [2 x i64] }
  %l73 = alloca i1
  %l74 = alloca i1
  %l78 = alloca i1
  %l84 = alloca %"compiler/views:place"
  %l86 = alloca ptr
  %l87 = alloca i64
  %l90 = alloca %"compiler/views:holding"
  %l98 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca i32
  %l107 = alloca ptr
  %l108 = alloca i1
  %l114 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t128 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootLocal(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l20
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v3, ptr %s0, ptr %t9, ptr %t10, ptr %t12, ptr %l5)
  br label %bb3
bb3:
  store i64 0, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr %"compiler/views:state", ptr %t17, i32 0, i32 1
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t19)
  store i64 %t21, ptr %l28
  br label %bb4
bb4:
  %t22 = load i64, ptr %l28, !tbaa !24
  store i64 %t22, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t23 = load i64, ptr %l7, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l8, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb10
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l8, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l35, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l35, !tbaa !24
  store i64 %t49, ptr %l32, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l32, !tbaa !24
  store i64 %t50, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l10, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  br label %bb40
bb13:
  br label %bb14
bb14:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l11, !tbaa !24
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr %"compiler/views:state", ptr %t69, i32 0, i32 1
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t71, i64 %t72)
  store %"compiler/views:holding" %t75, ptr %l56
  br label %bb15
bb15:
  %t76 = load %"compiler/views:holding", ptr %l56
  store %"compiler/views:holding" %t76, ptr %l12
  store ptr %l5, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb16
bb16:
  %t78 = load i64, ptr %l14, !tbaa !24
  store i64 %t78, ptr %l58, !tbaa !24
  %t79 = load ptr, ptr %l13, !tbaa !29
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t79)
  store i64 %t81, ptr %l60
  br label %bb17
bb17:
  %t82 = load i64, ptr %l58, !tbaa !24
  %t83 = load i64, ptr %l60, !tbaa !24
  %t84 = icmp slt i64 %t82, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb18, label %bb19
bb18:
  br label %bb38
bb19:
  br label %bb20
bb20:
  %t88 = load ptr, ptr %l13, !tbaa !29
  %t89 = load i64, ptr %l14, !tbaa !24
  %t92 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t88, i64 %t89)
  store %"compiler/views:place" %t92, ptr %l65
  br label %bb21
bb21:
  %t93 = load %"compiler/views:place", ptr %l65
  store %"compiler/views:place" %t93, ptr %l15
  %t94 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t95 = getelementptr %"compiler/views:view", ptr %t94, i32 0, i32 0
  %t96 = getelementptr %"compiler/views:place", ptr %t95, i32 0, i32 0
  %t97 = load { i64, [2 x i64] }, ptr %t96
  %t99 = call i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %t97)
  store i1 %t99, ptr %l67
  br label %bb22
bb22:
  %t100 = load i1, ptr %l67, !tbaa !21
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t101 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t102 = getelementptr %"compiler/views:view", ptr %t101, i32 0, i32 0
  %t103 = getelementptr %"compiler/views:place", ptr %t102, i32 0, i32 0
  %t104 = load { i64, [2 x i64] }, ptr %t103
  store { i64, [2 x i64] } %t104, ptr %l69
  %t105 = getelementptr %"compiler/views:place", ptr %l15, i32 0, i32 0
  %t106 = load { i64, [2 x i64] }, ptr %t105
  store { i64, [2 x i64] } %t106, ptr %l71
  %t109 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %l69, ptr %l71)
  store i1 %t109, ptr %l73
  br label %bb25
bb24:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb26
bb25:
  %t110 = load i1, ptr %l73, !tbaa !21
  store i1 %t110, ptr %l68, !tbaa !21
  br label %bb26
bb26:
  %t111 = load i1, ptr %l68, !tbaa !21
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/views:place", ptr %l15, i32 0, i32 1
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t116 = getelementptr %"compiler/views:view", ptr %t115, i32 0, i32 0
  %t117 = getelementptr %"compiler/views:place", ptr %t116, i32 0, i32 1
  %t118 = load i64, ptr %t117, !tbaa !24
  %t122 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %t112, i64 %t114, i64 %t118)
  store i1 %t122, ptr %l78
  br label %bb29
bb28:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb30
bb29:
  %t123 = load i1, ptr %l78, !tbaa !21
  store i1 %t123, ptr %l74, !tbaa !21
  br label %bb30
bb30:
  %t124 = load i1, ptr %l74, !tbaa !21
  br i1 %t124, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t125 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t126 = load %"compiler/views:view", ptr %t125
  store %"compiler/views:view" %t126, ptr %l16
  store { i64, [2 x i64] } zeroinitializer, ptr %t128
  %t129 = getelementptr { i64, [2 x i64] }, ptr %t128, i32 0, i32 0
  store i64 0, ptr %t129
  %t130 = load { i64, [2 x i64] }, ptr %t128
  %t131 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  %t132 = getelementptr %"compiler/views:place", ptr %t131, i32 0, i32 1
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  %t135 = getelementptr %"compiler/views:place", ptr %t134, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t137 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  %t138 = getelementptr %"compiler/views:place", ptr %t137, i32 0, i32 3
  %t139 = load i1, ptr %t138, !tbaa !21
  %t144 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s5, { i64, [2 x i64] } %t130, i64 %t133, i64 %t136, i1 %t139)
  store %"compiler/views:place" %t144, ptr %l84
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t145 = load %"compiler/views:place", ptr %l84
  %t146 = getelementptr %"compiler/views:view", ptr %l16, i32 0, i32 0
  store %"compiler/views:place" %t145, ptr %t146
  %t147 = load ptr, ptr %l3, !tbaa !29
  %t149 = getelementptr %"compiler/views:state", ptr %t147, i32 0, i32 1
  store ptr %t149, ptr %l86, !tbaa !29
  %t150 = load i64, ptr %l11, !tbaa !24
  store i64 %t150, ptr %l87, !tbaa !24
  %t151 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 0
  %t152 = load i64, ptr %t151, !tbaa !24
  %t153 = load %"compiler/views:view", ptr %l16
  %t156 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s5, i64 %t152, %"compiler/views:view" %t153)
  store %"compiler/views:holding" %t156, ptr %l90
  br label %bb34
bb34:
  %t157 = load ptr, ptr %l86, !tbaa !29
  %t158 = load i64, ptr %l87, !tbaa !24
  %t159 = load %"compiler/views:holding", ptr %l90
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t157, i64 %t158, %"compiler/views:holding" %t159)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb36:
  br label %bb37
bb37:
  %t160 = load i64, ptr %l14, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l14, !tbaa !24
  br label %bb16
bb38:
  br label %bb39
bb39:
  %t164 = load i64, ptr %l10, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l10, !tbaa !24
  br label %bb11
bb40:
  %t168 = load ptr, ptr %l2, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb41, label %bb42
bb41:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l98, !tbaa !29
  %t175 = load ptr, ptr %l1, !tbaa !29
  store ptr %t175, ptr %l100, !tbaa !29
  %t177 = load ptr, ptr %l1, !tbaa !29
  %t179 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t177)
  store i32 %t179, ptr %l102
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t180 = load ptr, ptr %l2, !tbaa !29
  %t181 = load ptr, ptr %l3, !tbaa !29
  %t182 = load ptr, ptr %l98, !tbaa !29
  %t183 = load ptr, ptr %l100, !tbaa !29
  %t184 = load i32, ptr %l102, !tbaa !23
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t182, ptr %t183, i32 %t184, ptr %t180, ptr %t181)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t187 = load i64, ptr %l4, !tbaa !24
  %t189 = icmp slt i64 %t187, 0
  br i1 %t189, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb47:
  br label %bb48
bb48:
  %t191 = load ptr, ptr %l1, !tbaa !29
  store ptr %t191, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t192 = load ptr, ptr %l107, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb49, label %bb50
bb49:
  %t195 = load ptr, ptr %l107, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 8}
  %t198 = icmp eq i64 %t196, 3
  store i1 %t198, ptr %l108, !tbaa !21
  br label %bb50
bb50:
  %t199 = load i1, ptr %l108, !tbaa !21
  br i1 %t199, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb59
bb53:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l3, !tbaa !29
  %t202 = load i64, ptr %l4, !tbaa !24
  %t206 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enamed(ptr %v0, ptr %v3, ptr %t200, ptr %t201, i64 %t202)
  store i1 %t206, ptr %l114
  br label %bb54
bb54:
  %t207 = load i1, ptr %l114, !tbaa !21
  br i1 %t207, label %bb55, label %bb56
bb55:
  %t208 = load ptr, ptr %l3, !tbaa !29
  %t209 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eunname(ptr %v3, ptr %t208, i64 %t209)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_551fdf32d31d54b_8fb5917c27ba1e87)
  unreachable
bb64:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 4
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
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
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/views:Viewer", ptr %t20, i32 0, i32 3
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %t22, { i64, ptr } %t23)
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/views:Viewer", ptr %t26, i32 0, i32 4
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l17, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/views:Viewer", ptr %t30, i32 0, i32 3
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l20
  br label %bb9
bb9:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = sub i64 %t35, 1
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %t37, { i64, ptr } %t38, i64 %t36)
  br label %bb10
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/views:Viewer", ptr %t40, i32 0, i32 3
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l24
  br label %bb11
bb11:
  %t45 = load i64, ptr %l24, !tbaa !24
  %t46 = sub i64 %t45, 1
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i1
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/views:Viewer", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t19 = trunc i64 18 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/views:Viewer", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l16, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/views:Viewer", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l21
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb7
bb5:
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = load i32, ptr %l21, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t40, ptr %l22
  br label %bb6
bb6:
  %t41 = load i32, ptr %l22, !range !{i32 0, i32 6}
  %t43 = trunc i64 0 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t46 = load i1, ptr %l13, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etake(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %lp9 = alloca ptr
  %l12 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i32
  %l62 = alloca %"compiler/views:summary"
  %l66 = alloca %"compiler/views:summary"
  %l67 = alloca i32
  %l69 = alloca i1
  %l77 = alloca ptr
  %s3 = alloca %olang.scope
  %t125 = alloca %"compiler/views:summary", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/views:Kept", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H09ad5b70a0c5cfd6161167faed1dc325(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/views:Viewer", ptr %t9, i32 0, i32 1
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l16
  br label %bb5
bb5:
  %t14 = load i64, ptr %l16, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb11
bb8:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l23, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l20, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l20, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/views:Viewer", ptr %t61, i32 0, i32 34
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l42, !tbaa !27
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %t68, i64 %t65
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !37
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t70, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t72, ptr %l45
  br label %bb16
bb16:
  %t73 = load i1, ptr %l45, !tbaa !21
  br i1 %t73, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb18:
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/views:Kept", ptr %t74, i32 0, i32 1
  store ptr %t76, ptr %l48, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/views:Viewer", ptr %t77, i32 0, i32 1
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  store ptr %t83, ptr %l52
  br label %bb20
bb20:
  %t84 = load ptr, ptr %l52, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Body", ptr %t84, i32 0, i32 3
  %t87 = load i64, ptr %t86, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/views:Viewer", ptr %t88, i32 0, i32 34
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l56, !tbaa !27
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %t95, i64 %t92
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !37
  %t99 = call i64 @__olang_fmt_i64(ptr null, i64 %t87)
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t102 = add i64 %t99, %t101
  %t104 = extractvalue { i64, ptr } %t97, 1
  %t105 = extractvalue { i64, ptr } %t97, 0
  %t106 = add i64 %t102, %t105
  %t107 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t106)
  %t108 = call i64 @__olang_fmt_i64(ptr %t107, i64 %t87)
  %t109 = getelementptr i8, ptr %t107, i64 %t99
  call void @olang_textcopy(ptr %t109, ptr %t100, i64 %t101)
  %t110 = getelementptr i8, ptr %t109, i64 %t101
  call void @olang_textcopy(ptr %t110, ptr %t104, i64 %t105)
  %t111 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t107, 1
  %t113 = load ptr, ptr %l48, !tbaa !29
  %t115 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H33c414027a4af7673dd1306c9e88dc00(ptr %v1, ptr %v1, ptr %t113, { i64, ptr } %t112)
  %t116 = extractvalue { i32, { i64, ptr } } %t115, 1
  %t117 = extractvalue { i32, { i64, ptr } } %t115, 0
  store i32 %t117, ptr %l61
  %t118 = icmp ne i32 %t117, 0
  br i1 %t118, label %bb22, label %ok.119, !prof !99
ok.119:
  store { i64, ptr } %t116, ptr %l60
  br label %bb21
bb21:
  %t120 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t120, ptr %l46, !tbaa !27
  br label %bb24
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb24:
  %t121 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l7, !tbaa !24
  %t129 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ereadSummary(ptr %t125, ptr %v0, ptr %v1, ptr %v0, ptr %t122, i64 %t123, { i64, ptr } %t121)
  store i32 %t129, ptr %l67
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb26, label %ok.131, !prof !99
ok.131:
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t125, i64 136, i1 false)
  br label %bb25
bb25:
  call void @llvm.memmove.p0.p0.i64(ptr %l62, ptr %l66, i64 136, i1 false)
  br label %bb28
bb26:
  %t132 = load i32, ptr %l67, !tbaa !23
  %t133 = ashr i32 %t132, 16
  %t135 = icmp eq i32 %t133, 1
  store i1 %t135, ptr %l69, !tbaa !21
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb28:
  %t136 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 136, i64 8)
  store ptr %t136, ptr %lp9
  %t137 = load ptr, ptr %lp9
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %l62, i64 136, i1 false)
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/views:Viewer", ptr %t138, i32 0, i32 2
  %t141 = load i64, ptr %l7, !tbaa !24
  %t142 = load ptr, ptr %lp9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H06514334ff6679689d662404c821f2dc(ptr %v0, ptr %v0, ptr %t140, i64 %t141, ptr %t142)
  br label %bb29
bb29:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/views:Viewer", ptr %t146, i32 0, i32 33
  %t149 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t148, i64 %t149, i1 true)
  br label %bb30
bb30:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l77, !tbaa !29
  %t153 = load ptr, ptr %l77, !tbaa !29
  %t154 = getelementptr %"compiler/views:Kept", ptr %t153, i32 0, i32 4
  %t155 = load i64, ptr %t154, !tbaa !24
  %t157 = add i64 %t155, 1
  %t159 = load ptr, ptr %l77, !tbaa !29
  %t160 = getelementptr %"compiler/views:Kept", ptr %t159, i32 0, i32 4
  store i64 %t157, ptr %t160, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  %t161 = load i64, ptr %l6, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l6, !tbaa !24
  br label %bb12
bb32:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %t10, i32 %a1)
  store { i64, ptr } %t14, ptr %l7
  br label %bb1
bb1:
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca ptr
  %l46 = alloca i1
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l2
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t28 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %t22, %"compiler/source:Span" %t23, ptr %t24)
  store %"compiler/source:Span" %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t29, ptr %l7
  br label %bb38
bb7:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t31 = load ptr, ptr %l20, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l20, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 18}
  %t37 = icmp eq i64 %t35, 2
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l4, !tbaa !29
  br label %bb16
bb11:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 3
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l27, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t64 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceTok(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  store %"compiler/source:Span" %t64, ptr %l34
  br label %bb17
bb17:
  %t65 = load %"compiler/source:Span", ptr %l34
  store %"compiler/source:Span" %t65, ptr %l7
  br label %bb38
bb18:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t67 = load ptr, ptr %l35, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb19, label %bb20
bb19:
  %t70 = load ptr, ptr %l35, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 5
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb20
bb20:
  %t74 = load i1, ptr %l36, !tbaa !21
  br i1 %t74, label %bb21, label %bb22
bb21:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Promote", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t88 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %t81, ptr %t85)
  store %"compiler/source:Span" %t88, ptr %l44
  br label %bb24
bb24:
  %t89 = load %"compiler/source:Span", ptr %l44
  store %"compiler/source:Span" %t89, ptr %l7
  br label %bb38
bb25:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t91 = load ptr, ptr %l45, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb26, label %bb27
bb26:
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 18}
  %t97 = icmp eq i64 %t95, 17
  store i1 %t97, ptr %l46, !tbaa !21
  br label %bb27
bb27:
  %t98 = load i1, ptr %l46, !tbaa !21
  br i1 %t98, label %bb28, label %bb29
bb28:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l6, !tbaa !29
  %t109 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %t105, ptr %t106)
  store %"compiler/source:Span" %t109, ptr %l53
  br label %bb31
bb31:
  %t110 = load %"compiler/source:Span", ptr %l53
  store %"compiler/source:Span" %t110, ptr %l7
  br label %bb38
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t111)
  store %"compiler/source:Span" %t113, ptr %l55
  br label %bb36
bb36:
  %t114 = load %"compiler/source:Span", ptr %l55
  store %"compiler/source:Span" %t114, ptr %l7
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a630935aa2e7253f_7098fd3403d75c2b)
  unreachable
bb38:
  %t115 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t115, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2euse(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/views:holding"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca %"compiler/diagmsg:Msg"
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l17 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/views:holding"
  %l36 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l60 = alloca i1
  %l83 = alloca i1
  %l89 = alloca i1
  %l92 = alloca { i64, ptr }
  %l101 = alloca %"compiler/typed:Local"
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca { i64, ptr }
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l118 = alloca ptr
  %l121 = alloca { i64, [3 x i64] }
  %l123 = alloca i64
  %l127 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l132 = alloca i64
  %l135 = alloca { i64, [3 x i64] }
  %l136 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l142 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca i1
  %l149 = alloca i1
  %l154 = alloca ptr
  %l155 = alloca i64
  %l161 = alloca { i64, [3 x i64] }
  %l163 = alloca %"compiler/diagmsg:Msg"
  %s3 = alloca %olang.scope
  %t340 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 23
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:Viewer", ptr %t8, i32 0, i32 24
  %t11 = load i1, ptr %t10, !tbaa !21
  store i1 %t11, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l17, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 25
  %t17 = load i1, ptr %t16, !tbaa !21
  store i1 %t17, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l20, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = getelementptr %"compiler/views:state", ptr %a3, i32 0, i32 1
  store ptr %t22, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t24 = load i64, ptr %l5, !tbaa !24
  store i64 %t24, ptr %l25, !tbaa !24
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t25)
  store i64 %t27, ptr %l27
  br label %bb11
bb11:
  %t28 = load i64, ptr %l25, !tbaa !24
  %t29 = load i64, ptr %l27, !tbaa !24
  %t30 = icmp slt i64 %t28, %t29
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb74
bb13:
  br label %bb14
bb14:
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t34, i64 %t35)
  store %"compiler/views:holding" %t38, ptr %l32
  br label %bb15
bb15:
  %t39 = load %"compiler/views:holding", ptr %l32
  store %"compiler/views:holding" %t39, ptr %l6
  %t40 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = icmp ne i64 %t41, %t42
  br i1 %t45, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb18
bb17:
  %t47 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t48 = getelementptr %"compiler/views:view", ptr %t47, i32 0, i32 2
  %t49 = load i1, ptr %t48, !tbaa !21
  %t51 = xor i1 %t49, true
  store i1 %t51, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l36, !tbaa !21
  br i1 %t53, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb22
bb20:
  %t54 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t55 = getelementptr %"compiler/views:view", ptr %t54, i32 0, i32 0
  %t56 = getelementptr %"compiler/views:place", ptr %t55, i32 0, i32 0
  %t57 = load { i64, [2 x i64] }, ptr %t56
  %t59 = call i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %t57)
  store i1 %t59, ptr %l41
  br label %bb21
bb21:
  %t60 = load i1, ptr %l41, !tbaa !21
  %t61 = xor i1 %t60, true
  store i1 %t61, ptr %l39, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l39, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb73
bb24:
  br label %bb25
bb25:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/views:Viewer", ptr %t64, i32 0, i32 21
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb26, label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f889b3d9696b6a08_112f010babbc7bb4)
  unreachable
bb27:
  br label %bb28
bb28:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/views:Viewer", ptr %t71, i32 0, i32 21
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 3
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = shl i64 %t78, 40
  %t81 = load i64, ptr %l1, !tbaa !24
  %t83 = shl i64 %t81, 24
  %t86 = or i64 %t80, %t83
  %t87 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t88 = getelementptr %"compiler/views:view", ptr %t87, i32 0, i32 3
  %t89 = getelementptr %"compiler/source:Span", ptr %t88, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t92 = sext i32 %t90 to i64
  %t95 = or i64 %t86, %t92
  store i64 %t95, ptr %l7, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/views:Viewer", ptr %t97, i32 0, i32 31
  %t100 = load i64, ptr %l7, !tbaa !24
  %t103 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t99, i64 %t100)
  store i1 %t103, ptr %l60
  br label %bb29
bb29:
  %t104 = load i1, ptr %l60, !tbaa !21
  br i1 %t104, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/views:Viewer", ptr %t105, i32 0, i32 31
  %t108 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t107, i64 %t108, i1 true)
  br label %bb33
bb33:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t111, i32 0, i32 21
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  br i1 %t116, label %bb34, label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_fbef590508ae9827_444bd78203178143)
  unreachable
bb35:
  br label %bb36
bb36:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/views:Viewer", ptr %t118, i32 0, i32 21
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Body", ptr %t121, i32 0, i32 3
  %t125 = load i64, ptr %t124, !tbaa !24
  %t127 = shl i64 %t125, 48
  %t128 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t129 = getelementptr %"compiler/views:view", ptr %t128, i32 0, i32 1
  %t130 = load i64, ptr %t129, !tbaa !24
  %t132 = and i64 %t130, 16777215
  %t134 = shl i64 %t132, 24
  %t137 = or i64 %t127, %t134
  %t138 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t139 = getelementptr %"compiler/views:view", ptr %t138, i32 0, i32 3
  %t140 = getelementptr %"compiler/source:Span", ptr %t139, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  %t145 = and i64 %t143, 16777215
  %t148 = or i64 %t137, %t145
  store i64 %t148, ptr %l8, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/views:Viewer", ptr %t150, i32 0, i32 32
  %t153 = load i64, ptr %l8, !tbaa !24
  %t156 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t152, i64 %t153)
  store i1 %t156, ptr %l83
  br label %bb37
bb37:
  %t157 = load i1, ptr %l83, !tbaa !21
  br i1 %t157, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb39:
  br label %bb40
bb40:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/views:Viewer", ptr %t158, i32 0, i32 32
  %t161 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t160, i64 %t161, i1 true)
  br label %bb41
bb41:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load %"compiler/source:Span", ptr %l2
  %t168 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %t164, %"compiler/source:Span" %t165)
  store i1 %t168, ptr %l89
  br label %bb42
bb42:
  %t169 = load i1, ptr %l89, !tbaa !21
  br i1 %t169, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb44:
  br label %bb45
bb45:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t172 = getelementptr %"compiler/views:view", ptr %t171, i32 0, i32 0
  %t173 = load %"compiler/views:place", ptr %t172
  %t176 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %s3, ptr %t170, %"compiler/views:place" %t173)
  store { i64, ptr } %t176, ptr %l92
  br label %bb46
bb46:
  %t177 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t177, ptr %l9, !tbaa !27
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/views:Viewer", ptr %t178, i32 0, i32 21
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = icmp eq ptr %t181, null
  br i1 %t183, label %bb47, label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_d673b6bd3b875b76_a50d9e4884ce91c2)
  unreachable
bb48:
  br label %bb49
bb49:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/views:Viewer", ptr %t185, i32 0, i32 21
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Body", ptr %t188, i32 0, i32 7
  %t192 = load i64, ptr %l1, !tbaa !24
  %t195 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t191, i64 %t192)
  store %"compiler/typed:Local" %t195, ptr %l101
  br label %bb50
bb50:
  %t196 = getelementptr %"compiler/typed:Local", ptr %l101, i32 0, i32 0
  %t197 = load i32, ptr %t196, !tbaa !23
  store i32 %t197, ptr %l10, !tbaa !23
  %t199 = load i32, ptr %l10, !tbaa !23
  %t201 = icmp eq i32 %t199, 0
  br i1 %t201, label %bb51, label %bb52
bb51:
  %t203 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t207 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecHiddenViewStale(ptr %s3, ptr %s3, ptr %v0, { i64, ptr } %t203, { i64, ptr } %t204)
  store %"compiler/diagmsg:Msg" %t207, ptr %l108
  br label %bb53
bb52:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i32, ptr %l10, !tbaa !23
  %t212 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v0, ptr %t208, i32 %t209)
  store { i64, ptr } %t212, ptr %l111
  br label %bb54
bb53:
  %t213 = load %"compiler/diagmsg:Msg", ptr %l108
  store %"compiler/diagmsg:Msg" %t213, ptr %l105
  br label %bb56
bb54:
  %t214 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t216 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t219 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewStale(ptr %v0, ptr %s3, ptr %s3, ptr %v0, { i64, ptr } %t216, { i64, ptr } %t214, { i64, ptr } %t215)
  store %"compiler/diagmsg:Msg" %t219, ptr %l114
  br label %bb55
bb55:
  %t220 = load %"compiler/diagmsg:Msg", ptr %l114
  store %"compiler/diagmsg:Msg" %t220, ptr %l105
  br label %bb56
bb56:
  %t221 = load %"compiler/diagmsg:Msg", ptr %l105
  store %"compiler/diagmsg:Msg" %t221, ptr %l11
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/views:Viewer", ptr %t222, i32 0, i32 0
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/load:Loader", ptr %t228, i32 0, i32 4
  %t231 = load ptr, ptr %t230, !tbaa !29
  store ptr %t231, ptr %l118, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l2
  %t236 = call { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %t232, %"compiler/source:Span" %t233)
  store { i64, [3 x i64] } %t236, ptr %l121
  br label %bb57
bb57:
  %t237 = load %"compiler/diagmsg:Msg", ptr %l11
  %t238 = load ptr, ptr %l118, !tbaa !29
  %t239 = load { i64, [3 x i64] }, ptr %l121
  %t241 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t238, { i64, [3 x i64] } %t239, %"compiler/diagmsg:Msg" %t237)
  store i64 %t241, ptr %l123
  br label %bb58
bb58:
  %t242 = load i64, ptr %l123, !tbaa !24
  store i64 %t242, ptr %l12, !tbaa !24
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/views:Viewer", ptr %t243, i32 0, i32 3
  %t246 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t247 = getelementptr %"compiler/views:view", ptr %t246, i32 0, i32 4
  %t248 = load i64, ptr %t247, !tbaa !24
  %t251 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t245, i64 %t248)
  store { i64, ptr } %t251, ptr %l127
  br label %bb59
bb59:
  %t252 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t252, ptr %l13, !tbaa !27
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/views:Viewer", ptr %t253, i32 0, i32 0
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t258 = getelementptr %"compiler/generic:Program", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/load:Loader", ptr %t259, i32 0, i32 4
  %t262 = load ptr, ptr %t261, !tbaa !29
  store ptr %t262, ptr %l131, !tbaa !29
  %t263 = load i64, ptr %l12, !tbaa !24
  store i64 %t263, ptr %l132, !tbaa !24
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t266 = getelementptr %"compiler/views:view", ptr %t265, i32 0, i32 3
  %t267 = load %"compiler/source:Span", ptr %t266
  %t270 = call { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %t264, %"compiler/source:Span" %t267)
  store { i64, [3 x i64] } %t270, ptr %l135
  br label %bb60
bb60:
  %t271 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t271, ptr %l136, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t272, ptr %l137, !tbaa !27
  %t273 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t274 = getelementptr %"compiler/views:view", ptr %t273, i32 0, i32 7
  %t275 = load i64, ptr %t274, !tbaa !24
  %t276 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t279 = call { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %s3, ptr %s3, i64 %t275, { i64, ptr } %t276)
  store { i64, ptr } %t279, ptr %l140
  br label %bb61
bb61:
  %t280 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 0
  %t282 = extractvalue { i64, ptr } %t280, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t287 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t288 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t290 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsHere(ptr %s3, ptr %v0, ptr %s3, ptr %v0, { i64, ptr } %t287, { i64, ptr } %t288, { i64, ptr } %t286)
  store %"compiler/diagmsg:Msg" %t290, ptr %l142
  br label %bb62
bb62:
  %t291 = load ptr, ptr %l131, !tbaa !29
  %t292 = load i64, ptr %l132, !tbaa !24
  %t293 = load { i64, [3 x i64] }, ptr %l135
  %t294 = load %"compiler/diagmsg:Msg", ptr %l142
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t291, i64 %t292, { i64, [3 x i64] } %t293, %"compiler/diagmsg:Msg" %t294)
  br label %bb63
bb63:
  %t295 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t296 = getelementptr %"compiler/views:view", ptr %t295, i32 0, i32 5
  %t297 = load i64, ptr %t296, !tbaa !24
  %t299 = icmp sge i64 %t297, 0
  br i1 %t299, label %bb64, label %bb65
bb64:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/views:Viewer", ptr %t301, i32 0, i32 6
  %t304 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t305 = getelementptr %"compiler/views:view", ptr %t304, i32 0, i32 5
  %t306 = load i64, ptr %t305, !tbaa !24
  %t309 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t303, i64 %t306)
  store i1 %t309, ptr %l149
  br label %bb66
bb65:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb67
bb66:
  %t310 = load i1, ptr %l149, !tbaa !21
  %t311 = xor i1 %t310, true
  store i1 %t311, ptr %l145, !tbaa !21
  br label %bb67
bb67:
  %t313 = load i1, ptr %l145, !tbaa !21
  br i1 %t313, label %bb68, label %bb69
bb68:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr %"compiler/views:Viewer", ptr %t314, i32 0, i32 0
  %t317 = load ptr, ptr %t316, !tbaa !29
  %t319 = getelementptr %"compiler/generic:Program", ptr %t317, i32 0, i32 0
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = getelementptr %"compiler/load:Loader", ptr %t320, i32 0, i32 4
  %t323 = load ptr, ptr %t322, !tbaa !29
  store ptr %t323, ptr %l154, !tbaa !29
  %t324 = load i64, ptr %l12, !tbaa !24
  store i64 %t324, ptr %l155, !tbaa !24
  %t325 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t326 = getelementptr %"compiler/views:view", ptr %t325, i32 0, i32 5
  %t327 = load i64, ptr %t326, !tbaa !24
  %t328 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t329 = getelementptr %"compiler/views:view", ptr %t328, i32 0, i32 6
  %t330 = getelementptr %"compiler/source:Span", ptr %t329, i32 0, i32 0
  %t331 = load i32, ptr %t330, !tbaa !23
  %t333 = sext i32 %t331 to i64
  %t334 = getelementptr %"compiler/views:holding", ptr %l6, i32 0, i32 1
  %t335 = getelementptr %"compiler/views:view", ptr %t334, i32 0, i32 6
  %t336 = getelementptr %"compiler/source:Span", ptr %t335, i32 0, i32 1
  %t337 = load i32, ptr %t336, !tbaa !23
  %t339 = sext i32 %t337 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t340
  %t341 = getelementptr { i64, [3 x i64] }, ptr %t340, i32 0, i32 0
  store i64 3, ptr %t341
  %t343 = insertvalue { i64, i64, i64 } undef, i64 %t327, 0
  %t345 = insertvalue { i64, i64, i64 } %t343, i64 %t333, 1
  %t347 = insertvalue { i64, i64, i64 } %t345, i64 %t339, 2
  %t348 = getelementptr { i64, [3 x i64] }, ptr %t340, i32 0, i32 1
  store { i64, i64, i64 } %t347, ptr %t348
  %t349 = load { i64, [3 x i64] }, ptr %t340
  store { i64, [3 x i64] } %t349, ptr %l161
  %t350 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t352 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %v0, { i64, ptr } %t350)
  store %"compiler/diagmsg:Msg" %t352, ptr %l163
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t353 = load ptr, ptr %l154, !tbaa !29
  %t354 = load i64, ptr %l155, !tbaa !24
  %t355 = load { i64, [3 x i64] }, ptr %l161
  %t356 = load %"compiler/diagmsg:Msg", ptr %l163
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t353, i64 %t354, { i64, [3 x i64] } %t355, %"compiler/diagmsg:Msg" %t356)
  br label %bb71
bb71:
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb73:
  %t357 = load i64, ptr %l5, !tbaa !24
  %t359 = add i64 %t357, 1
  store i64 %t359, ptr %l5, !tbaa !24
  br label %bb10
bb74:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eviewsHeld(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l48 = alloca ptr
  %l54 = alloca i1
  %l58 = alloca ptr
  %l64 = alloca i1
  %l68 = alloca ptr
  %l77 = alloca i64
  %l82 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i64
  %l110 = alloca i64
  %l113 = alloca i1
  %l114 = alloca i64
  %l117 = alloca i64
  %l119 = alloca i1
  %l123 = alloca ptr
  %l129 = alloca i1
  %l136 = alloca i1
  %l137 = alloca i64
  %l140 = alloca i64
  %l142 = alloca i1
  %l146 = alloca ptr
  %l152 = alloca i1
  %l156 = alloca ptr
  %l164 = alloca ptr
  %l168 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l184 = alloca i1
  %l185 = alloca i1
  %l190 = alloca i32
  %s8 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l20
  br label %bb1
bb1:
  %t6 = load i64, ptr %l20, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l27, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l27, !tbaa !24
  store i64 %t33, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l24, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb85
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/views:Viewer", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l48
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l48, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 3
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/views:Viewer", ptr %t64, i32 0, i32 7
  %t67 = load i64, ptr %t66, !tbaa !24
  %t70 = icmp eq i64 %t63, %t67
  br i1 %t70, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb16
bb14:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/views:Viewer", ptr %t72, i32 0, i32 1
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l58
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l58, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 3
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/views:Viewer", ptr %t83, i32 0, i32 8
  %t86 = load i64, ptr %t85, !tbaa !24
  %t89 = icmp eq i64 %t82, %t86
  store i1 %t89, ptr %l54, !tbaa !21
  br label %bb16
bb16:
  %t91 = load i1, ptr %l54, !tbaa !21
  br i1 %t91, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb20
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/views:Viewer", ptr %t92, i32 0, i32 1
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l68
  br label %bb19
bb19:
  %t99 = load ptr, ptr %l68, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 3
  %t102 = load i64, ptr %t101, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/views:Viewer", ptr %t103, i32 0, i32 9
  %t106 = load i64, ptr %t105, !tbaa !24
  %t109 = icmp eq i64 %t102, %t106
  store i1 %t109, ptr %l64, !tbaa !21
  br label %bb20
bb20:
  %t111 = load i1, ptr %l64, !tbaa !21
  br i1 %t111, label %bb21, label %bb22
bb21:
  br label %bb84
bb22:
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/views:Viewer", ptr %t112, i32 0, i32 12
  %t115 = load i64, ptr %l6, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l77
  br label %bb24
bb24:
  %t119 = load i64, ptr %l77, !tbaa !24
  store i64 %t119, ptr %l7, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/views:Viewer", ptr %t120, i32 0, i32 12
  %t123 = load i64, ptr %l6, !tbaa !24
  %t125 = add i64 %t123, 1
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t122, i64 %t125)
  store i64 %t128, ptr %l82
  br label %bb25
bb25:
  %t129 = load i64, ptr %l82, !tbaa !24
  store i64 %t129, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load i64, ptr %l7, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb26, label %bb27
bb26:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb31
bb28:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t141 = load i64, ptr %l7, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l9, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l89, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb30
bb30:
  %t156 = load i64, ptr %l89, !tbaa !24
  store i64 %t156, ptr %l86, !tbaa !24
  br label %bb31
bb31:
  %t157 = load i64, ptr %l86, !tbaa !24
  store i64 %t157, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb33, label %bb34
bb33:
  br label %bb83
bb34:
  br label %bb35
bb35:
  %t166 = load i64, ptr %l7, !tbaa !24
  %t167 = load i64, ptr %l11, !tbaa !24
  %t168 = load i64, ptr %l9, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/views:Viewer", ptr %t176, i32 0, i32 13
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t178, i64 %t174)
  store i64 %t182, ptr %l110
  br label %bb36
bb36:
  %t183 = load i64, ptr %l110, !tbaa !24
  store i64 %t183, ptr %l13, !tbaa !24
  %t184 = load i64, ptr %l13, !tbaa !24
  %t186 = icmp sge i64 %t184, 0
  br i1 %t186, label %bb37, label %bb38
bb37:
  %t188 = load i64, ptr %l13, !tbaa !24
  store i64 %t188, ptr %l114, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/views:Viewer", ptr %t189, i32 0, i32 1
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t191)
  store i64 %t193, ptr %l117
  br label %bb39
bb38:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb40
bb39:
  %t194 = load i64, ptr %l114, !tbaa !24
  %t195 = load i64, ptr %l117, !tbaa !24
  %t196 = icmp slt i64 %t194, %t195
  store i1 %t196, ptr %l113, !tbaa !21
  br label %bb40
bb40:
  %t198 = load i1, ptr %l113, !tbaa !21
  br i1 %t198, label %bb41, label %bb42
bb41:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/views:Viewer", ptr %t199, i32 0, i32 1
  %t202 = load i64, ptr %l13, !tbaa !24
  %t205 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t201, i64 %t202)
  store ptr %t205, ptr %l123
  br label %bb43
bb42:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb44
bb43:
  %t206 = load ptr, ptr %l123, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Body", ptr %t206, i32 0, i32 3
  %t209 = load i64, ptr %t208, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/views:Viewer", ptr %t210, i32 0, i32 9
  %t213 = load i64, ptr %t212, !tbaa !24
  %t216 = icmp eq i64 %t209, %t213
  store i1 %t216, ptr %l119, !tbaa !21
  br label %bb44
bb44:
  %t218 = load i1, ptr %l119, !tbaa !21
  br i1 %t218, label %bb45, label %bb46
bb45:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/views:Viewer", ptr %t219, i32 0, i32 9
  %t222 = load i64, ptr %t221, !tbaa !24
  %t224 = icmp sge i64 %t222, 0
  store i1 %t224, ptr %l129, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb47
bb47:
  %t226 = load i1, ptr %l129, !tbaa !21
  br i1 %t226, label %bb48, label %bb49
bb48:
  store i1 true, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t228 = load i64, ptr %l13, !tbaa !24
  %t230 = icmp slt i64 %t228, 0
  br i1 %t230, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb54
bb52:
  %t232 = load i64, ptr %l13, !tbaa !24
  store i64 %t232, ptr %l137, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/views:Viewer", ptr %t233, i32 0, i32 1
  %t237 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t235)
  store i64 %t237, ptr %l140
  br label %bb53
bb53:
  %t238 = load i64, ptr %l137, !tbaa !24
  %t239 = load i64, ptr %l140, !tbaa !24
  %t240 = icmp sge i64 %t238, %t239
  store i1 %t240, ptr %l136, !tbaa !21
  br label %bb54
bb54:
  %t242 = load i1, ptr %l136, !tbaa !21
  br i1 %t242, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb62
bb56:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/views:Viewer", ptr %t243, i32 0, i32 1
  %t246 = load i64, ptr %l13, !tbaa !24
  %t249 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t245, i64 %t246)
  store ptr %t249, ptr %l146
  br label %bb57
bb57:
  %t250 = load ptr, ptr %l146, !tbaa !29
  %t252 = getelementptr %"compiler/typed:Body", ptr %t250, i32 0, i32 3
  %t253 = load i64, ptr %t252, !tbaa !24
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/views:Viewer", ptr %t254, i32 0, i32 7
  %t257 = load i64, ptr %t256, !tbaa !24
  %t260 = icmp ne i64 %t253, %t257
  br i1 %t260, label %bb58, label %bb59
bb58:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/views:Viewer", ptr %t262, i32 0, i32 1
  %t265 = load i64, ptr %l13, !tbaa !24
  %t268 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t264, i64 %t265)
  store ptr %t268, ptr %l156
  br label %bb60
bb59:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb61
bb60:
  %t269 = load ptr, ptr %l156, !tbaa !29
  %t271 = getelementptr %"compiler/typed:Body", ptr %t269, i32 0, i32 3
  %t272 = load i64, ptr %t271, !tbaa !24
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/views:Viewer", ptr %t273, i32 0, i32 8
  %t276 = load i64, ptr %t275, !tbaa !24
  %t279 = icmp ne i64 %t272, %t276
  store i1 %t279, ptr %l152, !tbaa !21
  br label %bb61
bb61:
  %t281 = load i1, ptr %l152, !tbaa !21
  store i1 %t281, ptr %l142, !tbaa !21
  br label %bb62
bb62:
  %t282 = load i1, ptr %l142, !tbaa !21
  br i1 %t282, label %bb63, label %bb64
bb63:
  br label %bb82
bb64:
  br label %bb65
bb65:
  store %olang.scope zeroinitializer, ptr %s8
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/views:Viewer", ptr %t283, i32 0, i32 0
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t288 = getelementptr %"compiler/generic:Program", ptr %t286, i32 0, i32 2
  store ptr %t288, ptr %l164, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/views:Viewer", ptr %t289, i32 0, i32 1
  %t292 = load i64, ptr %l13, !tbaa !24
  %t295 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t291, i64 %t292)
  store ptr %t295, ptr %l168
  br label %bb66
bb66:
  %t296 = load ptr, ptr %l168, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Body", ptr %t296, i32 0, i32 2
  %t299 = load i32, ptr %t298, !tbaa !23
  %t300 = load ptr, ptr %l164, !tbaa !29
  %t302 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s8, ptr %t300, i32 %t299)
  store { i64, ptr } %t302, ptr %l171
  br label %bb67
bb67:
  %t303 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 0
  %t305 = extractvalue { i64, ptr } %t303, 1
  %t306 = mul i64 %t304, 4
  %t307 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  store { i64, ptr } %t309, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t311 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t311, 0
  store i64 %t313, ptr %l16, !tbaa !24
  br label %bb68
bb68:
  %t315 = load i64, ptr %l15, !tbaa !24
  %t316 = load i64, ptr %l16, !tbaa !24
  %t319 = icmp slt i64 %t315, %t316
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb69, label %bb70
bb69:
  br label %bb81
bb70:
  br label %bb71
bb71:
  %t323 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t323, ptr %l179, !tbaa !27
  %t324 = load i64, ptr %l15, !tbaa !24
  %t326 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr i32, ptr %t327, i64 %t324
  %t329 = load i32, ptr %t328, !tbaa !33
  store i32 %t329, ptr %l17, !tbaa !23
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load i32, ptr %l17, !tbaa !23
  %t335 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %t331, i32 %t332)
  store i1 %t335, ptr %l184
  br label %bb72
bb72:
  %t336 = load i1, ptr %l184, !tbaa !21
  br i1 %t336, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l185, !tbaa !21
  br label %bb76
bb74:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/views:Viewer", ptr %t337, i32 0, i32 0
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t342 = getelementptr %"compiler/generic:Program", ptr %t340, i32 0, i32 2
  %t343 = load i32, ptr %l17, !tbaa !23
  %t346 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t342, i32 %t343)
  store i32 %t346, ptr %l190
  br label %bb75
bb75:
  %t347 = load i32, ptr %l190, !range !{i32 0, i32 33}
  %t349 = trunc i64 20 to i32
  %t350 = icmp eq i32 %t347, %t349
  store i1 %t350, ptr %l185, !tbaa !21
  br label %bb76
bb76:
  %t352 = load i1, ptr %l185, !tbaa !21
  br i1 %t352, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s8)
  store i1 true, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t354 = load i64, ptr %l15, !tbaa !24
  %t356 = add i64 %t354, 1
  store i64 %t356, ptr %l15, !tbaa !24
  br label %bb68
bb81:
  call void @__olang_scope_close(ptr %s8)
  br label %bb82
bb82:
  %t358 = load i64, ptr %l11, !tbaa !24
  %t360 = add i64 %t358, 1
  store i64 %t360, ptr %l11, !tbaa !24
  br label %bb32
bb83:
  br label %bb84
bb84:
  %t362 = load i64, ptr %l5, !tbaa !24
  %t364 = add i64 %t362, 1
  store i64 %t364, ptr %l5, !tbaa !24
  br label %bb8
bb85:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2evisit(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l20 = alloca ptr
  %l32 = alloca i64
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i1
  %l69 = alloca i64
  %l72 = alloca i64
  %l77 = alloca i64
  %l84 = alloca i64
  %l88 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca i64
  %l96 = alloca i64
  %l100 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i64
  %l109 = alloca i64
  %l112 = alloca ptr
  %l113 = alloca i64
  %l117 = alloca i64
  %l123 = alloca i64
  %l127 = alloca i64
  %l130 = alloca ptr
  %l133 = alloca i64
  %l134 = alloca i64
  %l137 = alloca i64
  %l138 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/views:Viewer", ptr %t5, i32 0, i32 18
  %t8 = load i64, ptr %t7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4, i64 %t8)
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/views:Viewer", ptr %t12, i32 0, i32 15
  %t15 = load i64, ptr %l1, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/views:Viewer", ptr %t16, i32 0, i32 18
  %t19 = load i64, ptr %t18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t14, i64 %t15, i64 %t19)
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l20, !tbaa !29
  %t24 = load ptr, ptr %l20, !tbaa !29
  %t25 = getelementptr %"compiler/views:Viewer", ptr %t24, i32 0, i32 18
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = add i64 %t26, 1
  %t30 = load ptr, ptr %l20, !tbaa !29
  %t31 = getelementptr %"compiler/views:Viewer", ptr %t30, i32 0, i32 18
  store i64 %t28, ptr %t31, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/views:Viewer", ptr %t32, i32 0, i32 17
  %t35 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t34, i64 %t35)
  br label %bb3
bb3:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/views:Viewer", ptr %t38, i32 0, i32 16
  %t41 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t40, i64 %t41, i1 true)
  br label %bb4
bb4:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/views:Viewer", ptr %t44, i32 0, i32 12
  %t47 = load i64, ptr %l1, !tbaa !24
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
  store i64 %t50, ptr %l32
  br label %bb5
bb5:
  %t51 = load i64, ptr %l32, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/views:Viewer", ptr %t52, i32 0, i32 12
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = add i64 %t55, 1
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t54, i64 %t57)
  store i64 %t60, ptr %l37
  br label %bb6
bb6:
  %t61 = load i64, ptr %l37, !tbaa !24
  store i64 %t61, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t62 = load i64, ptr %l3, !tbaa !24
  %t63 = load i64, ptr %l2, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb7, label %bb8
bb7:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb12
bb9:
  %t72 = load i64, ptr %l3, !tbaa !24
  %t73 = load i64, ptr %l2, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l4, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l4, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l44, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb11
bb11:
  %t88 = load i64, ptr %l44, !tbaa !24
  store i64 %t88, ptr %l41, !tbaa !24
  br label %bb12
bb12:
  %t89 = load i64, ptr %l41, !tbaa !24
  store i64 %t89, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb14, label %bb15
bb14:
  br label %bb49
bb15:
  br label %bb16
bb16:
  %t98 = load i64, ptr %l2, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t100 = load i64, ptr %l4, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/views:Viewer", ptr %t108, i32 0, i32 13
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t110, i64 %t106)
  store i64 %t114, ptr %l65
  br label %bb17
bb17:
  %t115 = load i64, ptr %l65, !tbaa !24
  store i64 %t115, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  br i1 %t118, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb21
bb19:
  %t120 = load i64, ptr %l8, !tbaa !24
  store i64 %t120, ptr %l69, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/views:Viewer", ptr %t121, i32 0, i32 14
  %t125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t123)
  store i64 %t125, ptr %l72
  br label %bb20
bb20:
  %t126 = load i64, ptr %l69, !tbaa !24
  %t127 = load i64, ptr %l72, !tbaa !24
  %t128 = icmp sge i64 %t126, %t127
  store i1 %t128, ptr %l68, !tbaa !21
  br label %bb21
bb21:
  %t130 = load i1, ptr %l68, !tbaa !21
  br i1 %t130, label %bb22, label %bb23
bb22:
  br label %bb48
bb23:
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/views:Viewer", ptr %t131, i32 0, i32 14
  %t134 = load i64, ptr %l8, !tbaa !24
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t133, i64 %t134)
  store i64 %t137, ptr %l77
  br label %bb25
bb25:
  %t138 = load i64, ptr %l77, !tbaa !24
  %t139 = icmp slt i64 %t138, 0
  br i1 %t139, label %bb26, label %bb27
bb26:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2evisit(ptr %v0, ptr %t141, i64 %t142)
  br label %bb28
bb27:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/views:Viewer", ptr %t145, i32 0, i32 16
  %t148 = load i64, ptr %l8, !tbaa !24
  %t151 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t147, i64 %t148)
  store i1 %t151, ptr %l100
  br label %bb36
bb28:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/views:Viewer", ptr %t152, i32 0, i32 15
  %t155 = load i64, ptr %l8, !tbaa !24
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t154, i64 %t155)
  store i64 %t158, ptr %l84
  br label %bb29
bb29:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/views:Viewer", ptr %t159, i32 0, i32 15
  %t162 = load i64, ptr %l1, !tbaa !24
  %t165 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t161, i64 %t162)
  store i64 %t165, ptr %l88
  br label %bb30
bb30:
  %t166 = load i64, ptr %l84, !tbaa !24
  %t167 = load i64, ptr %l88, !tbaa !24
  %t168 = icmp slt i64 %t166, %t167
  br i1 %t168, label %bb31, label %bb32
bb31:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/views:Viewer", ptr %t170, i32 0, i32 15
  store ptr %t172, ptr %l91, !tbaa !29
  %t173 = load i64, ptr %l1, !tbaa !24
  store i64 %t173, ptr %l92, !tbaa !24
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/views:Viewer", ptr %t174, i32 0, i32 15
  %t177 = load i64, ptr %l8, !tbaa !24
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t176, i64 %t177)
  store i64 %t180, ptr %l96
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t181 = load ptr, ptr %l91, !tbaa !29
  %t182 = load i64, ptr %l92, !tbaa !24
  %t183 = load i64, ptr %l96, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t181, i64 %t182, i64 %t183)
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb47
bb36:
  %t184 = load i1, ptr %l100, !tbaa !21
  br i1 %t184, label %bb37, label %bb38
bb37:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/views:Viewer", ptr %t185, i32 0, i32 14
  %t188 = load i64, ptr %l8, !tbaa !24
  %t191 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t187, i64 %t188)
  store i64 %t191, ptr %l105
  br label %bb39
bb38:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb41
bb39:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/views:Viewer", ptr %t192, i32 0, i32 15
  %t195 = load i64, ptr %l1, !tbaa !24
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t194, i64 %t195)
  store i64 %t198, ptr %l109
  br label %bb40
bb40:
  %t199 = load i64, ptr %l105, !tbaa !24
  %t200 = load i64, ptr %l109, !tbaa !24
  %t201 = icmp slt i64 %t199, %t200
  store i1 %t201, ptr %l101, !tbaa !21
  br label %bb41
bb41:
  %t203 = load i1, ptr %l101, !tbaa !21
  br i1 %t203, label %bb42, label %bb43
bb42:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/views:Viewer", ptr %t204, i32 0, i32 15
  store ptr %t206, ptr %l112, !tbaa !29
  %t207 = load i64, ptr %l1, !tbaa !24
  store i64 %t207, ptr %l113, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/views:Viewer", ptr %t208, i32 0, i32 14
  %t211 = load i64, ptr %l8, !tbaa !24
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t210, i64 %t211)
  store i64 %t214, ptr %l117
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t215 = load ptr, ptr %l112, !tbaa !29
  %t216 = load i64, ptr %l113, !tbaa !24
  %t217 = load i64, ptr %l117, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t215, i64 %t216, i64 %t217)
  br label %bb45
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t218 = load i64, ptr %l6, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l6, !tbaa !24
  br label %bb13
bb49:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/views:Viewer", ptr %t222, i32 0, i32 15
  %t225 = load i64, ptr %l1, !tbaa !24
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t224, i64 %t225)
  store i64 %t228, ptr %l123
  br label %bb50
bb50:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/views:Viewer", ptr %t229, i32 0, i32 14
  %t232 = load i64, ptr %l1, !tbaa !24
  %t235 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t231, i64 %t232)
  store i64 %t235, ptr %l127
  br label %bb51
bb51:
  %t236 = load i64, ptr %l123, !tbaa !24
  %t237 = load i64, ptr %l127, !tbaa !24
  %t238 = icmp eq i64 %t236, %t237
  br i1 %t238, label %bb52, label %bb53
bb52:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/views:Viewer", ptr %t240, i32 0, i32 19
  store ptr %t242, ptr %l130, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/views:Viewer", ptr %t243, i32 0, i32 20
  %t247 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t245)
  store i64 %t247, ptr %l133
  br label %bb54
bb53:
  br label %bb68
bb54:
  %t248 = load ptr, ptr %l130, !tbaa !29
  %t249 = load i64, ptr %l133, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t248, i64 %t249)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/views:Viewer", ptr %t250, i32 0, i32 17
  %t254 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t252)
  %t255 = extractvalue { i32, i64 } %t254, 1
  %t256 = extractvalue { i32, i64 } %t254, 0
  store i32 %t256, ptr %l138
  %t257 = icmp ne i32 %t256, 0
  br i1 %t257, label %bb58, label %ok.258, !prof !99
ok.258:
  store i64 %t255, ptr %l137
  br label %bb57
bb57:
  %t259 = load i64, ptr %l137, !tbaa !24
  store i64 %t259, ptr %l134, !tbaa !24
  br label %bb60
bb58:
  br label %bb59
bb59:
  br label %bb67
bb60:
  %t260 = load i64, ptr %l134, !tbaa !24
  store i64 %t260, ptr %l9, !tbaa !24
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/views:Viewer", ptr %t261, i32 0, i32 16
  %t264 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t263, i64 %t264, i1 false)
  br label %bb61
bb61:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/views:Viewer", ptr %t267, i32 0, i32 20
  %t270 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t269, i64 %t270)
  br label %bb62
bb62:
  %t273 = load i64, ptr %l9, !tbaa !24
  %t274 = load i64, ptr %l1, !tbaa !24
  %t277 = icmp eq i64 %t273, %t274
  br i1 %t277, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  br label %bb56
bb67:
  br label %bb68
bb68:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalk(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/typed:Local"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/views:state"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca %"compiler/views:holding"
  %l31 = alloca ptr
  %l35 = alloca i1
  %l39 = alloca i1
  %l43 = alloca ptr
  %l52 = alloca ptr
  %l58 = alloca i1
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca %"compiler/typed:Local"
  %l86 = alloca i64
  %l90 = alloca i64
  %l93 = alloca i64
  %l112 = alloca ptr
  %l116 = alloca i32
  %l121 = alloca %"compiler/views:state"
  %l126 = alloca i64
  %l130 = alloca i64
  %l133 = alloca i64
  %l154 = alloca i32
  %l156 = alloca ptr
  %l160 = alloca %"compiler/typed:Local"
  %l162 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i64
  %l167 = alloca %"compiler/views:place"
  %l171 = alloca %"compiler/typed:Local"
  %l174 = alloca %"compiler/views:view"
  %l175 = alloca %"compiler/views:holding"
  %l183 = alloca i1
  %l191 = alloca i64
  %l193 = alloca i64
  %l198 = alloca i32
  %l200 = alloca i64
  %l202 = alloca i64
  %l207 = alloca %"compiler/views:holding"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %t191 = alloca %"compiler/views:state", align 8
  %t275 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l31
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l31, !tbaa !29
  %t10 = getelementptr %"compiler/views:summary", ptr %t8, i32 0, i32 4
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/views:Viewer", ptr %t15, i32 0, i32 33
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t17, i64 %t18)
  store i1 %t21, ptr %l39
  br label %bb4
bb4:
  %t22 = load i1, ptr %l39, !tbaa !21
  store i1 %t22, ptr %l35, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l35, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/views:Viewer", ptr %t24, i32 0, i32 1
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store ptr %t30, ptr %l43
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l43, !tbaa !29
  store ptr %t31, ptr %l3, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/views:Viewer", ptr %t32, i32 0, i32 21
  store ptr %t33, ptr %t37, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = getelementptr %"compiler/views:Viewer", ptr %t38, i32 0, i32 22
  store i64 %t39, ptr %t42, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i1, ptr %l2, !tbaa !21
  %t47 = getelementptr %"compiler/views:Viewer", ptr %t43, i32 0, i32 23
  store i1 %t44, ptr %t47, !tbaa !21
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/views:Viewer", ptr %t48, i32 0, i32 24
  store i1 false, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l52, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 3
  %t55 = load i64, ptr %t54, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/views:Viewer", ptr %t56, i32 0, i32 7
  %t59 = load i64, ptr %t58, !tbaa !24
  %t62 = icmp eq i64 %t55, %t59
  br i1 %t62, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb12
bb11:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Body", ptr %t64, i32 0, i32 3
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/views:Viewer", ptr %t68, i32 0, i32 9
  %t71 = load i64, ptr %t70, !tbaa !24
  %t74 = icmp eq i64 %t67, %t71
  store i1 %t74, ptr %l58, !tbaa !21
  br label %bb12
bb12:
  %t76 = load i1, ptr %l58, !tbaa !21
  %t77 = load ptr, ptr %l52, !tbaa !29
  %t78 = getelementptr %"compiler/views:Viewer", ptr %t77, i32 0, i32 25
  store i1 %t76, ptr %t78, !tbaa !21
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/views:Viewer", ptr %t79, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__Hfc8ba67df4afabc6715fbd3122f62db9(ptr %v0, ptr %t81)
  br label %bb13
bb13:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/views:Viewer", ptr %t83, i32 0, i32 29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %t85)
  br label %bb14
bb14:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/views:Viewer", ptr %t87, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t89)
  br label %bb15
bb15:
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 7
  store ptr %t93, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t95 = load i64, ptr %l5, !tbaa !24
  store i64 %t95, ptr %l72, !tbaa !24
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l74
  br label %bb17
bb17:
  %t99 = load i64, ptr %l72, !tbaa !24
  %t100 = load i64, ptr %l74, !tbaa !24
  %t101 = icmp slt i64 %t99, %t100
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  br label %bb20
bb20:
  %t105 = load ptr, ptr %l4, !tbaa !29
  %t106 = load i64, ptr %l5, !tbaa !24
  %t109 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t105, i64 %t106)
  store %"compiler/typed:Local" %t109, ptr %l79
  br label %bb21
bb21:
  %t110 = load %"compiler/typed:Local", ptr %l79
  store %"compiler/typed:Local" %t110, ptr %l6
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t111, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t113, i64 -1)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l5, !tbaa !24
  br label %bb16
bb24:
  store i64 0, ptr %l7, !tbaa !24
  %t119 = load ptr, ptr %l3, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Body", ptr %t119, i32 0, i32 5
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t121)
  store i64 %t123, ptr %l86
  br label %bb25
bb25:
  %t124 = load i64, ptr %l86, !tbaa !24
  store i64 %t124, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l7, !tbaa !24
  %t129 = icmp sgt i64 %t125, %t126
  br i1 %t129, label %bb26, label %bb27
bb26:
  %t131 = load i64, ptr %l9, !tbaa !24
  %t133 = icmp sgt i64 %t131, 0
  br i1 %t133, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb31
bb28:
  %t135 = load i64, ptr %l8, !tbaa !24
  %t136 = load i64, ptr %l7, !tbaa !24
  %t139 = sub i64 %t135, %t136
  %t140 = load i64, ptr %l9, !tbaa !24
  %t143 = add i64 %t139, %t140
  %t145 = sub i64 %t143, 1
  %t146 = load i64, ptr %l9, !tbaa !24
  %t149 = sdiv i64 %t145, %t146
  store i64 %t149, ptr %l93, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb30
bb30:
  %t151 = load i64, ptr %l93, !tbaa !24
  store i64 %t151, ptr %l90, !tbaa !24
  br label %bb31
bb31:
  %t152 = load i64, ptr %l90, !tbaa !24
  store i64 %t152, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t153 = load i64, ptr %l11, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t157 = icmp slt i64 %t153, %t154
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t161 = load i64, ptr %l7, !tbaa !24
  %t162 = load i64, ptr %l11, !tbaa !24
  %t163 = load i64, ptr %l9, !tbaa !24
  %t166 = mul i64 %t162, %t163
  %t169 = add i64 %t161, %t166
  store i64 %t169, ptr %l12, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/views:Viewer", ptr %t171, i32 0, i32 27
  store ptr %t173, ptr %l112, !tbaa !29
  %t174 = load ptr, ptr %l3, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Body", ptr %t174, i32 0, i32 5
  %t177 = load i64, ptr %l12, !tbaa !24
  %t180 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t176, i64 %t177)
  store i32 %t180, ptr %l116
  br label %bb36
bb36:
  %t181 = load i32, ptr %l116, !tbaa !23
  %t182 = sext i32 %t181 to i64
  %t183 = load i64, ptr %l12, !tbaa !24
  %t184 = load ptr, ptr %l112, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t184, i64 %t182, i64 %t183)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l11, !tbaa !24
  br label %bb32
bb39:
  call void @compiler_2fviews_3astate_2ector(ptr %t191, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l121, ptr %t191, i64 136, i1 false)
  br label %bb40
bb40:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l121, i64 136, i1 false)
  %t192 = load i1, ptr %l2, !tbaa !21
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb41, label %bb42
bb41:
  store i64 0, ptr %l14, !tbaa !24
  %t196 = load ptr, ptr %l3, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Body", ptr %t196, i32 0, i32 5
  %t200 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t198)
  store i64 %t200, ptr %l126
  br label %bb43
bb42:
  br label %bb67
bb43:
  %t201 = load i64, ptr %l126, !tbaa !24
  store i64 %t201, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t202 = load i64, ptr %l15, !tbaa !24
  %t203 = load i64, ptr %l14, !tbaa !24
  %t206 = icmp sgt i64 %t202, %t203
  br i1 %t206, label %bb44, label %bb45
bb44:
  %t208 = load i64, ptr %l16, !tbaa !24
  %t210 = icmp sgt i64 %t208, 0
  br i1 %t210, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb49
bb46:
  %t212 = load i64, ptr %l15, !tbaa !24
  %t213 = load i64, ptr %l14, !tbaa !24
  %t216 = sub i64 %t212, %t213
  %t217 = load i64, ptr %l16, !tbaa !24
  %t220 = add i64 %t216, %t217
  %t222 = sub i64 %t220, 1
  %t223 = load i64, ptr %l16, !tbaa !24
  %t226 = sdiv i64 %t222, %t223
  store i64 %t226, ptr %l133, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb48
bb48:
  %t228 = load i64, ptr %l133, !tbaa !24
  store i64 %t228, ptr %l130, !tbaa !24
  br label %bb49
bb49:
  %t229 = load i64, ptr %l130, !tbaa !24
  store i64 %t229, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb50
bb50:
  %t230 = load i64, ptr %l18, !tbaa !24
  %t231 = load i64, ptr %l17, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb51, label %bb52
bb51:
  br label %bb66
bb52:
  br label %bb53
bb53:
  %t238 = load i64, ptr %l14, !tbaa !24
  %t239 = load i64, ptr %l18, !tbaa !24
  %t240 = load i64, ptr %l16, !tbaa !24
  %t243 = mul i64 %t239, %t240
  %t246 = add i64 %t238, %t243
  store i64 %t246, ptr %l19, !tbaa !24
  %t248 = load ptr, ptr %l3, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Body", ptr %t248, i32 0, i32 5
  %t251 = load i64, ptr %l19, !tbaa !24
  %t254 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t250, i64 %t251)
  store i32 %t254, ptr %l154
  br label %bb54
bb54:
  %t255 = load i32, ptr %l154, !tbaa !23
  %t256 = sext i32 %t255 to i64
  store i64 %t256, ptr %l20, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l156, !tbaa !29
  %t259 = load ptr, ptr %l3, !tbaa !29
  %t261 = getelementptr %"compiler/typed:Body", ptr %t259, i32 0, i32 7
  %t262 = load i64, ptr %l20, !tbaa !24
  %t265 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t261, i64 %t262)
  store %"compiler/typed:Local" %t265, ptr %l160
  br label %bb55
bb55:
  %t266 = getelementptr %"compiler/typed:Local", ptr %l160, i32 0, i32 2
  %t267 = load i32, ptr %t266, !tbaa !23
  %t268 = load ptr, ptr %l156, !tbaa !29
  %t270 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t268, i32 %t267)
  store i1 %t270, ptr %l162
  br label %bb56
bb56:
  %t271 = load i1, ptr %l162, !tbaa !21
  br i1 %t271, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s11
  %t272 = getelementptr %"compiler/views:state", ptr %l13, i32 0, i32 1
  store ptr %t272, ptr %l163, !tbaa !29
  %t273 = load i64, ptr %l20, !tbaa !24
  store i64 %t273, ptr %l164, !tbaa !24
  %t274 = load i64, ptr %l19, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t275
  %t276 = getelementptr { i64, [2 x i64] }, ptr %t275, i32 0, i32 0
  store i64 4, ptr %t276
  %t278 = insertvalue { i64 } undef, i64 %t274, 0
  %t279 = getelementptr { i64, [2 x i64] }, ptr %t275, i32 0, i32 1
  store { i64 } %t278, ptr %t279
  %t280 = load { i64, [2 x i64] }, ptr %t275
  %t282 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s11, { i64, [2 x i64] } %t280, i64 0, i64 0, i1 false)
  store %"compiler/views:place" %t282, ptr %l167
  br label %bb59
bb58:
  br label %bb64
bb59:
  %t283 = load ptr, ptr %l3, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Body", ptr %t283, i32 0, i32 7
  %t286 = load i64, ptr %l20, !tbaa !24
  %t289 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t285, i64 %t286)
  store %"compiler/typed:Local" %t289, ptr %l171
  br label %bb60
bb60:
  %t290 = getelementptr %"compiler/typed:Local", ptr %l171, i32 0, i32 1
  %t291 = getelementptr %"compiler/source:Span", ptr %t290, i32 0, i32 0
  %t292 = load i32, ptr %t291, !tbaa !23
  %t294 = sext i32 %t292 to i64
  %t295 = load %"compiler/views:place", ptr %l167
  %t297 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s11, %"compiler/views:place" %t295, i64 %t294)
  store %"compiler/views:view" %t297, ptr %l174
  br label %bb61
bb61:
  %t298 = load i64, ptr %l164, !tbaa !24
  %t299 = load %"compiler/views:view", ptr %l174
  %t300 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s11, i64 %t298, %"compiler/views:view" %t299)
  store %"compiler/views:holding" %t300, ptr %l175
  br label %bb62
bb62:
  %t301 = load ptr, ptr %l163, !tbaa !29
  %t302 = load %"compiler/views:holding", ptr %l175
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t301, %"compiler/views:holding" %t302)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t303 = load i64, ptr %l18, !tbaa !24
  %t305 = add i64 %t303, 1
  store i64 %t305, ptr %l18, !tbaa !24
  br label %bb50
bb66:
  br label %bb67
bb67:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load ptr, ptr %l3, !tbaa !29
  %t310 = getelementptr %"compiler/typed:Body", ptr %t308, i32 0, i32 11
  %t311 = load ptr, ptr %t310, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v0, ptr %s0, ptr %t307, ptr %t311, ptr %l13)
  br label %bb68
bb68:
  %t315 = load i1, ptr %l2, !tbaa !21
  br i1 %t315, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb71
bb70:
  %t317 = getelementptr %"compiler/views:state", ptr %l13, i32 0, i32 0
  %t318 = load i1, ptr %t317, !tbaa !21
  store i1 %t318, ptr %l183, !tbaa !21
  br label %bb71
bb71:
  %t320 = load i1, ptr %l183, !tbaa !21
  br i1 %t320, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb73:
  br label %bb74
bb74:
  %t321 = load ptr, ptr %l3, !tbaa !29
  %t323 = getelementptr %"compiler/typed:Body", ptr %t321, i32 0, i32 1
  %t324 = load { i64, [2 x i64] }, ptr %t323
  %t328 = extractvalue { i64, [2 x i64] } %t324, 0
  %t329 = icmp eq i64 %t328, 1
  br i1 %t329, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb98
bb77:
  %t331 = load ptr, ptr %l3, !tbaa !29
  %t333 = getelementptr %"compiler/typed:Body", ptr %t331, i32 0, i32 10
  store ptr %t333, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb78
bb78:
  %t335 = load i64, ptr %l23, !tbaa !24
  store i64 %t335, ptr %l191, !tbaa !24
  %t336 = load ptr, ptr %l22, !tbaa !29
  %t338 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t336)
  store i64 %t338, ptr %l193
  br label %bb79
bb79:
  %t339 = load i64, ptr %l191, !tbaa !24
  %t340 = load i64, ptr %l193, !tbaa !24
  %t341 = icmp slt i64 %t339, %t340
  %t343 = xor i1 %t341, true
  br i1 %t343, label %bb80, label %bb81
bb80:
  br label %bb97
bb81:
  br label %bb82
bb82:
  %t345 = load ptr, ptr %l22, !tbaa !29
  %t346 = load i64, ptr %l23, !tbaa !24
  %t349 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t345, i64 %t346)
  store i32 %t349, ptr %l198
  br label %bb83
bb83:
  %t350 = load i32, ptr %l198, !tbaa !23
  store i32 %t350, ptr %l24, !tbaa !23
  %t351 = getelementptr %"compiler/views:state", ptr %l13, i32 0, i32 1
  store ptr %t351, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb84
bb84:
  %t353 = load i64, ptr %l26, !tbaa !24
  store i64 %t353, ptr %l200, !tbaa !24
  %t354 = load ptr, ptr %l25, !tbaa !29
  %t356 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t354)
  store i64 %t356, ptr %l202
  br label %bb85
bb85:
  %t357 = load i64, ptr %l200, !tbaa !24
  %t358 = load i64, ptr %l202, !tbaa !24
  %t359 = icmp slt i64 %t357, %t358
  %t361 = xor i1 %t359, true
  br i1 %t361, label %bb86, label %bb87
bb86:
  br label %bb95
bb87:
  br label %bb88
bb88:
  %t363 = load ptr, ptr %l25, !tbaa !29
  %t364 = load i64, ptr %l26, !tbaa !24
  %t367 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t363, i64 %t364)
  store %"compiler/views:holding" %t367, ptr %l207
  br label %bb89
bb89:
  %t368 = load %"compiler/views:holding", ptr %l207
  store %"compiler/views:holding" %t368, ptr %l27
  %t369 = getelementptr %"compiler/views:holding", ptr %l27, i32 0, i32 0
  %t370 = load i64, ptr %t369, !tbaa !24
  %t371 = load i32, ptr %l24, !tbaa !23
  %t373 = sext i32 %t371 to i64
  %t376 = icmp eq i64 %t370, %t373
  br i1 %t376, label %bb90, label %bb91
bb90:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/views:holding", ptr %l27, i32 0, i32 1
  %t380 = load %"compiler/views:view", ptr %t379
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2epasses(ptr %v0, ptr %t378, %"compiler/views:view" %t380)
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t383 = load i64, ptr %l26, !tbaa !24
  %t385 = add i64 %t383, 1
  store i64 %t385, ptr %l26, !tbaa !24
  br label %bb84
bb95:
  br label %bb96
bb96:
  %t387 = load i64, ptr %l23, !tbaa !24
  %t389 = add i64 %t387, 1
  store i64 %t389, ptr %l23, !tbaa !24
  br label %bb78
bb97:
  br label %bb103
bb98:
  br i1 true, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_58304325d16d56e1_1ac2a884e74450d5)
  unreachable
bb103:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalkable(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/typed:Local"
  %l10 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca %"compiler/typed:Local"
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l10, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 11
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 1
  %t20 = load { i64, [2 x i64] }, ptr %t19
  %t24 = extractvalue { i64, [2 x i64] } %t20, 0
  %t25 = icmp eq i64 %t24, 7
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_f882b6801a6cfe65_db0a8f546b27139)
  unreachable
bb13:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 7
  store ptr %t30, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb14
bb14:
  %t32 = load i64, ptr %l5, !tbaa !24
  store i64 %t32, ptr %l22, !tbaa !24
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l24
  br label %bb15
bb15:
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t42, i64 %t43)
  store %"compiler/typed:Local" %t46, ptr %l29
  br label %bb19
bb19:
  %t47 = load %"compiler/typed:Local", ptr %l29
  store %"compiler/typed:Local" %t47, ptr %l6
  %t48 = getelementptr %"compiler/typed:Local", ptr %l6, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t53 = icmp eq i32 %t49, %t50
  br i1 %t53, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb14
bb24:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:place" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:place"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l23 = alloca %"compiler/typed:Local"
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l37 = alloca ptr
  %l46 = alloca i32
  %l48 = alloca %"compiler/typed:Local"
  %l50 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca i1
  %l74 = alloca i64
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/views:place" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l2
  %t4 = load { i64, [2 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i64 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb9
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l14, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 21
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  br i1 %t19, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4283dbd3668d18ac_9869995bfb9a4270)
  unreachable
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/views:Viewer", ptr %t21, i32 0, i32 21
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 7
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t27, i64 %t28)
  store %"compiler/typed:Local" %t31, ptr %l23
  br label %bb7
bb7:
  %t32 = getelementptr %"compiler/typed:Local", ptr %l23, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  %t34 = load ptr, ptr %l14, !tbaa !29
  %t36 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s1, ptr %t34, i32 %t33)
  store { i64, ptr } %t36, ptr %l25
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t38, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb32
bb9:
  %t44 = load { i64, [2 x i64] }, ptr %l2
  %t46 = extractvalue { i64, [2 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 2
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t50 = getelementptr { i64 }, ptr %t49, i32 0, i32 0
  %t51 = load i64, ptr %t50
  store i64 %t51, ptr %l4, !tbaa !24
  br label %bb12
bb11:
  br label %bb22
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l30, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/views:Viewer", ptr %t54, i32 0, i32 21
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_7a5a13ecbea84e9b_d0d616c1e5cf6f4f)
  unreachable
bb14:
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/views:Viewer", ptr %t61, i32 0, i32 21
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t64, i32 0, i32 7
  store ptr %t67, ptr %l37, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/views:Viewer", ptr %t68, i32 0, i32 21
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_7a5a13ecbea84e9b_d0d616c1e5cf6f4f)
  unreachable
bb17:
  br label %bb18
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/views:Viewer", ptr %t75, i32 0, i32 21
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t78, i32 0, i32 5
  %t82 = load i64, ptr %l4, !tbaa !24
  %t85 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t81, i64 %t82)
  store i32 %t85, ptr %l46
  br label %bb19
bb19:
  %t86 = load i32, ptr %l46, !tbaa !23
  %t87 = sext i32 %t86 to i64
  %t88 = load ptr, ptr %l37, !tbaa !29
  %t90 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t88, i64 %t87)
  store %"compiler/typed:Local" %t90, ptr %l48
  br label %bb20
bb20:
  %t91 = getelementptr %"compiler/typed:Local", ptr %l48, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t93 = load ptr, ptr %l30, !tbaa !29
  %t95 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s3, ptr %t93, i32 %t92)
  store { i64, ptr } %t95, ptr %l50
  br label %bb21
bb21:
  %t96 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t97, i64 %t98)
  %t100 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  store { i64, ptr } %t101, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb22:
  %t103 = load { i64, [2 x i64] }, ptr %l2
  %t105 = extractvalue { i64, [2 x i64] } %t103, 0
  %t106 = icmp eq i64 %t105, 3
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t109 = getelementptr { i64, i32 }, ptr %t108, i32 0, i32 1
  %t110 = load i32, ptr %t109
  store i32 %t110, ptr %l5, !tbaa !23
  br label %bb25
bb24:
  br label %bb27
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l5, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s5, ptr %t112, i32 %t113)
  store { i64, ptr } %t116, ptr %l57
  br label %bb26
bb26:
  %t117 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t119)
  call void @olang_textcopy(ptr %t120, ptr %t118, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l59, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t124, ptr %l10, !tbaa !27
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_e23614535e762839_a3c52bd11c6a8cad)
  unreachable
bb32:
  %t126 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l61, !tbaa !24
  %t128 = load i64, ptr %l61, !tbaa !24
  %t129 = mul i64 %t128, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t129)
  %t131 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l62, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l61, !tbaa !24
  %t138 = mul i64 %t137, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %t136, i64 %t138, i1 false)
  %t139 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t139, ptr %l6, !tbaa !27
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/views:Viewer", ptr %t140, i32 0, i32 3
  %t143 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t144 = load i64, ptr %t143, !tbaa !24
  %t147 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t142, i64 %t144)
  store { i64, ptr } %t147, ptr %l66
  br label %bb33
bb33:
  %t148 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t148, ptr %l7, !tbaa !27
  %t149 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 2
  %t150 = load i64, ptr %t149, !tbaa !24
  %t152 = icmp sge i64 %t150, 0
  br i1 %t152, label %bb34, label %bb35
bb34:
  %t154 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 2
  %t155 = load i64, ptr %t154, !tbaa !24
  %t156 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t161 = icmp sle i64 %t155, %t158
  store i1 %t161, ptr %l69, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb36
bb36:
  %t163 = load i1, ptr %l69, !tbaa !21
  br i1 %t163, label %bb37, label %bb38
bb37:
  %t164 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 2
  %t165 = load i64, ptr %t164, !tbaa !24
  store i64 %t165, ptr %l74, !tbaa !24
  br label %bb39
bb38:
  %t167 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  store i64 %t169, ptr %l74, !tbaa !24
  br label %bb39
bb39:
  %t171 = load i64, ptr %l74, !tbaa !24
  %t172 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t172, ptr %l78, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t173, ptr %l79, !tbaa !27
  store i64 %t171, ptr %l80, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  store i64 %t176, ptr %l81, !tbaa !24
  %t177 = icmp sge i64 0, 0
  br i1 %t177, label %bb40, label %bb41
bb40:
  %t179 = load i64, ptr %l80, !tbaa !24
  %t180 = icmp sle i64 0, %t179
  br i1 %t180, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_db6ebdbbbfbf616f_7fdbf604d525f173)
  unreachable
bb42:
  %t182 = load i64, ptr %l80, !tbaa !24
  %t183 = load i64, ptr %l81, !tbaa !24
  %t184 = icmp sle i64 %t182, %t183
  br i1 %t184, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_db6ebdbbbfbf616f_7fdbf604d525f173)
  unreachable
bb44:
  %t186 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = load i64, ptr %l80, !tbaa !24
  %t189 = getelementptr i8, ptr %t187, i64 0
  %t190 = sub i64 %t188, 0
  %t191 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t189, 1
  %t193 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 1
  %t195 = extractvalue { i64, ptr } %t193, 0
  %t197 = extractvalue { i64, ptr } %t192, 1
  %t198 = extractvalue { i64, ptr } %t192, 0
  %t199 = add i64 %t195, %t198
  %t200 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t199)
  call void @olang_textcopy(ptr %t200, ptr %t194, i64 %t195)
  %t201 = getelementptr i8, ptr %t200, i64 %t195
  call void @olang_textcopy(ptr %t201, ptr %t197, i64 %t198)
  %t202 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t200, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t203, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_db6ebdbbbfbf616f_7fdbf604d525f173)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca ptr
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/views:state", ptr %t2, i32 0, i32 0
  %t5 = load i1, ptr %t4, !tbaa !21
  %t8 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 0
  store i1 %t5, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l5, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/views:state", ptr %t10, i32 0, i32 1
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l7
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %l7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"compiler/views:state", ptr %t17, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t18
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/views:state", ptr %t20, i32 0, i32 2
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l12
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l14
  br label %bb2
bb2:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t28 = getelementptr %"compiler/views:state", ptr %t27, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %t28
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l15, !tbaa !29
  %t30 = ptrtoint ptr %v0 to i64
  store i64 %t30, ptr %l16, !tbaa !24
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t31, label %bb3, label %bb4
bb3:
  %t33 = call ptr @__olang_region_make(ptr %v0)
  %t34 = ptrtoint ptr %t33 to i64
  store i64 %t34, ptr %l16, !tbaa !24
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/views:state", ptr %t35, i32 0, i32 3
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l19
  %t39 = load i64, ptr %l16
  %t40 = inttoptr i64 %t39 to ptr
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t40, ptr %l19)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l21
  br label %bb5
bb5:
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t43, label %bb6, label %bb7
bb6:
  %t45 = load i64, ptr %l16
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = call ptr @__olang_region_home(ptr %t50)
  %t52 = icmp ne ptr %t51, null
  %t53 = select i1 %t52, ptr %t51, ptr null
  %t54 = icmp eq ptr %t53, %t46
  call void @__olang_region_settle(ptr %t46, i1 %t54)
  br label %bb7
bb7:
  %t55 = load ptr, ptr %l15, !tbaa !29
  %t56 = getelementptr %"compiler/views:state", ptr %t55, i32 0, i32 3
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l23
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t59 = load ptr, ptr %l15, !tbaa !29
  %t60 = getelementptr %"compiler/views:state", ptr %t59, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %t60
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t61, label %bb8, label %bb9
bb8:
  %t63 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = call ptr @__olang_region_home(ptr %t66)
  %t68 = icmp ne ptr %t67, null
  %t69 = select i1 %t68, ptr %t67, ptr null
  call void @__olang_region_drop(ptr %t69)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l23
  br label %bb9
bb9:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l25, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/views:state", ptr %t71, i32 0, i32 4
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l27
  %t76 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %l27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l29
  br label %bb10
bb10:
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t78 = load ptr, ptr %l25, !tbaa !29
  %t79 = getelementptr %"compiler/views:state", ptr %t78, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %t79
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3astate_2eunname(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/views:naming"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/views:naming"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 2
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l11
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e(ptr %s0, ptr %l11)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l2
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:state", ptr %t8, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eClear_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t10)
  br label %bb2
bb2:
  store ptr %l2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  store i64 %t13, ptr %l17, !tbaa !24
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %s0, ptr %t14)
  store i64 %t16, ptr %l19
  br label %bb4
bb4:
  %t17 = load i64, ptr %l17, !tbaa !24
  %t18 = load i64, ptr %l19, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb14
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = call %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %s0, ptr %t23, i64 %t24)
  store %"compiler/views:naming" %t27, ptr %l24
  br label %bb8
bb8:
  %t28 = load %"compiler/views:naming", ptr %l24
  store %"compiler/views:naming" %t28, ptr %l5
  %t29 = getelementptr %"compiler/views:naming", ptr %l5, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = icmp ne i64 %t30, %t31
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/views:state", ptr %t36, i32 0, i32 2
  %t39 = load %"compiler/views:naming", ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ePush_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t38, %"compiler/views:naming" %t39)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb3
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/views:state", ptr %t46, i32 0, i32 3
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l34
  %t51 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l34)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l36
  br label %bb15
bb15:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l6
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/views:state", ptr %t53, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t55)
  br label %bb16
bb16:
  store ptr %l6, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb17
bb17:
  %t58 = load i64, ptr %l8, !tbaa !24
  store i64 %t58, ptr %l40, !tbaa !24
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t59)
  store i64 %t61, ptr %l42
  br label %bb18
bb18:
  %t62 = load i64, ptr %l40, !tbaa !24
  %t63 = load i64, ptr %l42, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb19, label %bb20
bb19:
  br label %bb28
bb20:
  br label %bb21
bb21:
  %t68 = load ptr, ptr %l7, !tbaa !29
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l47
  br label %bb22
bb22:
  %t73 = load i64, ptr %l47, !tbaa !24
  store i64 %t73, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l1, !tbaa !24
  %t78 = icmp ne i64 %t74, %t75
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/views:state", ptr %t80, i32 0, i32 3
  %t83 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t82, i64 %t83)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l8, !tbaa !24
  br label %bb17
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = icmp eq i64 %a0, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t9 = extractvalue { i64, ptr } %t5, 1
  %t10 = extractvalue { i64, ptr } %t5, 0
  %t11 = add i64 %t7, %t10
  %t12 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t6, i64 %t7)
  %t16 = getelementptr i8, ptr %t15, i64 %t7
  call void @olang_textcopy(ptr %t16, ptr %t9, i64 %t10)
  %t17 = getelementptr i8, ptr %t16, i64 %t10
  call void @olang_textcopy(ptr %t17, ptr %t12, i64 %t13)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t15, 1
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t25, i64 %t26)
  %t33 = getelementptr i8, ptr %t32, i64 %t26
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fviews_2eexprEnd(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i1
  %l33 = alloca i64
  %l35 = alloca %"compiler/source:Span"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
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
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/source:Span", ptr %t34
  store %"compiler/source:Span" %t35, ptr %l1
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = call i64 @compiler_2fviews_2eplaceEnd(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l22
  br label %bb10
bb10:
  %t46 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t47 = load i32, ptr %t46, !tbaa !23
  %t49 = sext i32 %t47 to i64
  %t50 = load i64, ptr %l22, !tbaa !24
  %t52 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t50, i64 %t49)
  store i64 %t52, ptr %l25
  br label %bb11
bb11:
  %t53 = load i64, ptr %l25, !tbaa !24
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb25
bb12:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l26, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 17
  store i1 %t61, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t62 = load i1, ptr %l27, !tbaa !21
  br i1 %t62, label %bb15, label %bb16
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l3, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = call i64 @compiler_2fviews_2eexprEnd(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l33
  br label %bb18
bb18:
  %t72 = load i64, ptr %l33, !tbaa !24
  store i64 %t72, ptr %l4, !tbaa !24
  br label %bb25
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t73)
  store %"compiler/source:Span" %t75, ptr %l35
  br label %bb23
bb23:
  %t76 = getelementptr %"compiler/source:Span", ptr %l35, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  store i64 %t79, ptr %l4, !tbaa !24
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_26ef299dad5cdbef_4a7142c0b9c90bab)
  unreachable
bb25:
  %t81 = load i64, ptr %l4, !tbaa !24
  store i64 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fviews_2eholdAdd(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:view" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/views:view"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/views:holding"
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l40 = alloca %"compiler/views:holding"
  %l44 = alloca i1
  %l48 = alloca i1
  %l49 = alloca %"compiler/views:place"
  %l51 = alloca %"compiler/views:place"
  %l53 = alloca i1
  %l56 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i64
  %l64 = alloca %"compiler/views:holding"
  %l68 = alloca ptr
  %l71 = alloca %"compiler/views:holding"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/views:view" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb32
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/views:state", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t55, i64 %t56)
  store %"compiler/views:holding" %t59, ptr %l40
  br label %bb12
bb12:
  %t60 = load %"compiler/views:holding", ptr %l40
  store %"compiler/views:holding" %t60, ptr %l9
  %t61 = getelementptr %"compiler/views:holding", ptr %l9, i32 0, i32 0
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load i64, ptr %l1, !tbaa !24
  %t66 = icmp ne i64 %t62, %t63
  br i1 %t66, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb15
bb14:
  %t68 = getelementptr %"compiler/views:holding", ptr %l9, i32 0, i32 1
  %t69 = getelementptr %"compiler/views:view", ptr %t68, i32 0, i32 1
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = getelementptr %"compiler/views:view", ptr %l2, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t75 = icmp ne i64 %t70, %t72
  store i1 %t75, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t77 = load i1, ptr %l44, !tbaa !21
  br i1 %t77, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb19
bb17:
  %t78 = getelementptr %"compiler/views:holding", ptr %l9, i32 0, i32 1
  %t79 = getelementptr %"compiler/views:view", ptr %t78, i32 0, i32 0
  %t80 = load %"compiler/views:place", ptr %t79
  store %"compiler/views:place" %t80, ptr %l49
  %t81 = getelementptr %"compiler/views:view", ptr %l2, i32 0, i32 0
  %t82 = load %"compiler/views:place", ptr %t81
  store %"compiler/views:place" %t82, ptr %l51
  %t85 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %l49, ptr %l51)
  store i1 %t85, ptr %l53
  br label %bb18
bb18:
  %t86 = load i1, ptr %l53, !tbaa !21
  %t87 = xor i1 %t86, true
  store i1 %t87, ptr %l48, !tbaa !21
  br label %bb19
bb19:
  %t89 = load i1, ptr %l48, !tbaa !21
  br i1 %t89, label %bb20, label %bb21
bb20:
  br label %bb31
bb21:
  br label %bb22
bb22:
  %t90 = getelementptr %"compiler/views:view", ptr %l2, i32 0, i32 2
  %t91 = load i1, ptr %t90, !tbaa !21
  br i1 %t91, label %bb23, label %bb24
bb23:
  %t93 = getelementptr %"compiler/views:holding", ptr %l9, i32 0, i32 1
  %t94 = getelementptr %"compiler/views:view", ptr %t93, i32 0, i32 2
  %t95 = load i1, ptr %t94, !tbaa !21
  %t97 = xor i1 %t95, true
  store i1 %t97, ptr %l56, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb25
bb25:
  %t99 = load i1, ptr %l56, !tbaa !21
  br i1 %t99, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/views:state", ptr %t100, i32 0, i32 1
  store ptr %t102, ptr %l60, !tbaa !29
  %t103 = load i64, ptr %l8, !tbaa !24
  store i64 %t103, ptr %l61, !tbaa !24
  %t104 = load i64, ptr %l1, !tbaa !24
  %t105 = load %"compiler/views:view", ptr %l2
  %t108 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s4, i64 %t104, %"compiler/views:view" %t105)
  store %"compiler/views:holding" %t108, ptr %l64
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t109 = load ptr, ptr %l60, !tbaa !29
  %t110 = load i64, ptr %l61, !tbaa !24
  %t111 = load %"compiler/views:holding", ptr %l64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t109, i64 %t110, %"compiler/views:holding" %t111)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  %t112 = load i64, ptr %l7, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l7, !tbaa !24
  br label %bb8
bb32:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/views:state", ptr %t116, i32 0, i32 1
  store ptr %t118, ptr %l68, !tbaa !29
  %t119 = load i64, ptr %l1, !tbaa !24
  %t120 = load %"compiler/views:view", ptr %l2
  %t123 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s0, i64 %t119, %"compiler/views:view" %t120)
  store %"compiler/views:holding" %t123, ptr %l71
  br label %bb33
bb33:
  %t124 = load ptr, ptr %l68, !tbaa !29
  %t125 = load %"compiler/views:holding", ptr %l71
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t124, %"compiler/views:holding" %t125)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2emerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/views:holding"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/views:holding"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca %"compiler/views:naming"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca %"compiler/views:tasked"
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca %"compiler/views:tasked"
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/views:holding"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i64
  %l59 = alloca i64
  %l64 = alloca i64
  %l71 = alloca i64
  %l73 = alloca i64
  %l78 = alloca i64
  %l81 = alloca i64
  %l83 = alloca i64
  %l88 = alloca %"compiler/views:holding"
  %l95 = alloca i1
  %l99 = alloca i1
  %l106 = alloca i64
  %l108 = alloca i64
  %l113 = alloca i64
  %l118 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i64
  %l124 = alloca %"compiler/views:place"
  %l129 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca i64
  %l135 = alloca %"compiler/views:place"
  %l138 = alloca i64
  %l140 = alloca i64
  %l145 = alloca %"compiler/views:naming"
  %l158 = alloca i1
  %l167 = alloca i64
  %l169 = alloca i64
  %l174 = alloca %"compiler/views:tasked"
  %l177 = alloca i64
  %l179 = alloca i64
  %l184 = alloca %"compiler/views:tasked"
  %l188 = alloca i1
  %l189 = alloca %"compiler/source:Span"
  %l191 = alloca %"compiler/source:Span"
  %l193 = alloca i1
  %l194 = alloca i1
  %l195 = alloca %"compiler/views:place"
  %l197 = alloca %"compiler/views:place"
  %l199 = alloca i1
  %s0 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %t178 = alloca { i64, [2 x i64] }, align 8
  %t204 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/views:state", ptr %t6, i32 0, i32 0
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/views:state", ptr %t15, i32 0, i32 1
  store ptr %t17, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb8
bb8:
  %t19 = load i64, ptr %l3, !tbaa !24
  store i64 %t19, ptr %l41, !tbaa !24
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t20)
  store i64 %t22, ptr %l43
  br label %bb9
bb9:
  %t23 = load i64, ptr %l41, !tbaa !24
  %t24 = load i64, ptr %l43, !tbaa !24
  %t25 = icmp slt i64 %t23, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t29, i64 %t30)
  store %"compiler/views:holding" %t33, ptr %l48
  br label %bb13
bb13:
  %t34 = load %"compiler/views:holding", ptr %l48
  store %"compiler/views:holding" %t34, ptr %l4
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/views:holding", ptr %l4, i32 0, i32 0
  %t37 = load i64, ptr %t36, !tbaa !24
  %t38 = getelementptr %"compiler/views:holding", ptr %l4, i32 0, i32 1
  %t39 = load %"compiler/views:view", ptr %t38
  call void @compiler_2fviews_2eholdAdd(ptr %v0, ptr %t35, i64 %t37, %"compiler/views:view" %t39)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb8
bb16:
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l54
  br label %bb17
bb17:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l5
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/views:state", ptr %t49, i32 0, i32 3
  store ptr %t51, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  %t53 = load i64, ptr %l7, !tbaa !24
  store i64 %t53, ptr %l57, !tbaa !24
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t54)
  store i64 %t56, ptr %l59
  br label %bb19
bb19:
  %t57 = load i64, ptr %l57, !tbaa !24
  %t58 = load i64, ptr %l59, !tbaa !24
  %t59 = icmp slt i64 %t57, %t58
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t63 = load ptr, ptr %l6, !tbaa !29
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t63, i64 %t64)
  store i64 %t67, ptr %l64
  br label %bb23
bb23:
  %t68 = load i64, ptr %l64, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t68)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb18
bb26:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/views:state", ptr %t76, i32 0, i32 3
  store ptr %t78, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  %t80 = load i64, ptr %l10, !tbaa !24
  store i64 %t80, ptr %l71, !tbaa !24
  %t81 = load ptr, ptr %l9, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l73
  br label %bb28
bb28:
  %t84 = load i64, ptr %l71, !tbaa !24
  %t85 = load i64, ptr %l73, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb29, label %bb30
bb29:
  br label %bb53
bb30:
  br label %bb31
bb31:
  %t90 = load ptr, ptr %l9, !tbaa !29
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l78
  br label %bb32
bb32:
  %t95 = load i64, ptr %l78, !tbaa !24
  store i64 %t95, ptr %l11, !tbaa !24
  store i1 false, ptr %l12, !tbaa !21
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/views:state", ptr %t96, i32 0, i32 1
  store ptr %t98, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb33
bb33:
  %t100 = load i64, ptr %l14, !tbaa !24
  store i64 %t100, ptr %l81, !tbaa !24
  %t101 = load ptr, ptr %l13, !tbaa !29
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t101)
  store i64 %t103, ptr %l83
  br label %bb34
bb34:
  %t104 = load i64, ptr %l81, !tbaa !24
  %t105 = load i64, ptr %l83, !tbaa !24
  %t106 = icmp slt i64 %t104, %t105
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb35, label %bb36
bb35:
  br label %bb43
bb36:
  br label %bb37
bb37:
  %t110 = load ptr, ptr %l13, !tbaa !29
  %t111 = load i64, ptr %l14, !tbaa !24
  %t114 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v1, ptr %t110, i64 %t111)
  store %"compiler/views:holding" %t114, ptr %l88
  br label %bb38
bb38:
  %t115 = load %"compiler/views:holding", ptr %l88
  store %"compiler/views:holding" %t115, ptr %l15
  %t116 = getelementptr %"compiler/views:holding", ptr %l15, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = load i64, ptr %l11, !tbaa !24
  %t121 = icmp eq i64 %t117, %t118
  br i1 %t121, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t123 = load i64, ptr %l14, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l14, !tbaa !24
  br label %bb33
bb43:
  %t127 = load i1, ptr %l12, !tbaa !21
  br i1 %t127, label %bb44, label %bb45
bb44:
  %t129 = load i64, ptr %l11, !tbaa !24
  %t134 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l5, i64 %t129)
  store i1 %t134, ptr %l99
  br label %bb46
bb45:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb47
bb46:
  %t135 = load i1, ptr %l99, !tbaa !21
  %t136 = xor i1 %t135, true
  store i1 %t136, ptr %l95, !tbaa !21
  br label %bb47
bb47:
  %t138 = load i1, ptr %l95, !tbaa !21
  br i1 %t138, label %bb48, label %bb49
bb48:
  %t139 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t139)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t142 = load i64, ptr %l10, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l10, !tbaa !24
  br label %bb27
bb53:
  store ptr %l5, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb54
bb54:
  %t147 = load i64, ptr %l18, !tbaa !24
  store i64 %t147, ptr %l106, !tbaa !24
  %t148 = load ptr, ptr %l17, !tbaa !29
  %t150 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t148)
  store i64 %t150, ptr %l108
  br label %bb55
bb55:
  %t151 = load i64, ptr %l106, !tbaa !24
  %t152 = load i64, ptr %l108, !tbaa !24
  %t153 = icmp slt i64 %t151, %t152
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb56, label %bb57
bb56:
  br label %bb90
bb57:
  br label %bb58
bb58:
  %t157 = load ptr, ptr %l17, !tbaa !29
  %t158 = load i64, ptr %l18, !tbaa !24
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t157, i64 %t158)
  store i64 %t161, ptr %l113
  br label %bb59
bb59:
  %t162 = load i64, ptr %l113, !tbaa !24
  store i64 %t162, ptr %l19, !tbaa !24
  %t163 = load i64, ptr %l19, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/views:state", ptr %t165, i32 0, i32 3
  %t171 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t167, i64 %t163)
  store i1 %t171, ptr %l118
  br label %bb60
bb60:
  %t172 = load i1, ptr %l118, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s19
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l120, !tbaa !29
  %t176 = load i64, ptr %l19, !tbaa !24
  store i64 %t176, ptr %l121, !tbaa !24
  %t177 = load i64, ptr %l19, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [2 x i64] }, ptr %t178, i32 0, i32 0
  store i64 1, ptr %t179
  %t181 = insertvalue { i64 } undef, i64 %t177, 0
  %t182 = getelementptr { i64, [2 x i64] }, ptr %t178, i32 0, i32 1
  store { i64 } %t181, ptr %t182
  %t183 = load { i64, [2 x i64] }, ptr %t178
  %t185 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s19, { i64, [2 x i64] } %t183, i64 0, i64 0, i1 false)
  store %"compiler/views:place" %t185, ptr %l124
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t186 = load ptr, ptr %l120, !tbaa !29
  %t187 = load i64, ptr %l121, !tbaa !24
  %t188 = load %"compiler/views:place", ptr %l124
  call void @compiler_2fviews_2enameAdd(ptr %v0, ptr %t186, i64 %t187, %"compiler/views:place" %t188)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s19)
  br label %bb65
bb65:
  %t189 = load i64, ptr %l19, !tbaa !24
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr %"compiler/views:state", ptr %t191, i32 0, i32 3
  %t197 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t193, i64 %t189)
  store i1 %t197, ptr %l129
  br label %bb66
bb66:
  %t198 = load i1, ptr %l129, !tbaa !21
  %t199 = xor i1 %t198, true
  br i1 %t199, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s20
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l131, !tbaa !29
  %t202 = load i64, ptr %l19, !tbaa !24
  store i64 %t202, ptr %l132, !tbaa !24
  %t203 = load i64, ptr %l19, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t204
  %t205 = getelementptr { i64, [2 x i64] }, ptr %t204, i32 0, i32 0
  store i64 1, ptr %t205
  %t207 = insertvalue { i64 } undef, i64 %t203, 0
  %t208 = getelementptr { i64, [2 x i64] }, ptr %t204, i32 0, i32 1
  store { i64 } %t207, ptr %t208
  %t209 = load { i64, [2 x i64] }, ptr %t204
  %t211 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s20, { i64, [2 x i64] } %t209, i64 0, i64 0, i1 false)
  store %"compiler/views:place" %t211, ptr %l135
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t212 = load ptr, ptr %l131, !tbaa !29
  %t213 = load i64, ptr %l132, !tbaa !24
  %t214 = load %"compiler/views:place", ptr %l135
  call void @compiler_2fviews_2enameAdd(ptr %v0, ptr %t212, i64 %t213, %"compiler/views:place" %t214)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s20)
  br label %bb71
bb71:
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr %"compiler/views:state", ptr %t215, i32 0, i32 2
  store ptr %t217, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb72
bb72:
  %t219 = load i64, ptr %l23, !tbaa !24
  store i64 %t219, ptr %l138, !tbaa !24
  %t220 = load ptr, ptr %l22, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v1, ptr %t220)
  store i64 %t222, ptr %l140
  br label %bb73
bb73:
  %t223 = load i64, ptr %l138, !tbaa !24
  %t224 = load i64, ptr %l140, !tbaa !24
  %t225 = icmp slt i64 %t223, %t224
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb74, label %bb75
bb74:
  br label %bb83
bb75:
  br label %bb76
bb76:
  %t229 = load ptr, ptr %l22, !tbaa !29
  %t230 = load i64, ptr %l23, !tbaa !24
  %t233 = call %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %v1, ptr %t229, i64 %t230)
  store %"compiler/views:naming" %t233, ptr %l145
  br label %bb77
bb77:
  %t234 = load %"compiler/views:naming", ptr %l145
  store %"compiler/views:naming" %t234, ptr %l24
  %t235 = getelementptr %"compiler/views:naming", ptr %l24, i32 0, i32 0
  %t236 = load i64, ptr %t235, !tbaa !24
  %t237 = load i64, ptr %l19, !tbaa !24
  %t240 = icmp eq i64 %t236, %t237
  br i1 %t240, label %bb78, label %bb79
bb78:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i64, ptr %l19, !tbaa !24
  %t244 = getelementptr %"compiler/views:naming", ptr %l24, i32 0, i32 1
  %t245 = load %"compiler/views:place", ptr %t244
  call void @compiler_2fviews_2enameAdd(ptr %v0, ptr %t242, i64 %t243, %"compiler/views:place" %t245)
  br label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t249 = load i64, ptr %l23, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l23, !tbaa !24
  br label %bb72
bb83:
  %t253 = load i64, ptr %l19, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/views:state", ptr %t255, i32 0, i32 3
  %t261 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t257, i64 %t253)
  store i1 %t261, ptr %l158
  br label %bb84
bb84:
  %t262 = load i1, ptr %l158, !tbaa !21
  %t263 = xor i1 %t262, true
  br i1 %t263, label %bb85, label %bb86
bb85:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/views:state", ptr %t265, i32 0, i32 3
  %t268 = load i64, ptr %l19, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t267, i64 %t268)
  br label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t271 = load i64, ptr %l18, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l18, !tbaa !24
  br label %bb54
bb90:
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr %"compiler/views:state", ptr %t275, i32 0, i32 4
  store ptr %t277, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb91
bb91:
  %t279 = load i64, ptr %l27, !tbaa !24
  store i64 %t279, ptr %l167, !tbaa !24
  %t280 = load ptr, ptr %l26, !tbaa !29
  %t282 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v1, ptr %t280)
  store i64 %t282, ptr %l169
  br label %bb92
bb92:
  %t283 = load i64, ptr %l167, !tbaa !24
  %t284 = load i64, ptr %l169, !tbaa !24
  %t285 = icmp slt i64 %t283, %t284
  %t287 = xor i1 %t285, true
  br i1 %t287, label %bb93, label %bb94
bb93:
  br label %bb121
bb94:
  br label %bb95
bb95:
  %t289 = load ptr, ptr %l26, !tbaa !29
  %t290 = load i64, ptr %l27, !tbaa !24
  %t293 = call %"compiler/views:tasked" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eAt_3ccompiler_2fviews_3atasked_3e(ptr %v1, ptr %t289, i64 %t290)
  store %"compiler/views:tasked" %t293, ptr %l174
  br label %bb96
bb96:
  %t294 = load %"compiler/views:tasked", ptr %l174
  store %"compiler/views:tasked" %t294, ptr %l28
  store i1 false, ptr %l29, !tbaa !21
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/views:state", ptr %t295, i32 0, i32 4
  store ptr %t297, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb97
bb97:
  %t299 = load i64, ptr %l31, !tbaa !24
  store i64 %t299, ptr %l177, !tbaa !24
  %t300 = load ptr, ptr %l30, !tbaa !29
  %t302 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %t300)
  store i64 %t302, ptr %l179
  br label %bb98
bb98:
  %t303 = load i64, ptr %l177, !tbaa !24
  %t304 = load i64, ptr %l179, !tbaa !24
  %t305 = icmp slt i64 %t303, %t304
  %t307 = xor i1 %t305, true
  br i1 %t307, label %bb99, label %bb100
bb99:
  br label %bb115
bb100:
  br label %bb101
bb101:
  %t309 = load ptr, ptr %l30, !tbaa !29
  %t310 = load i64, ptr %l31, !tbaa !24
  %t313 = call %"compiler/views:tasked" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eAt_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %t309, i64 %t310)
  store %"compiler/views:tasked" %t313, ptr %l184
  br label %bb102
bb102:
  %t314 = load %"compiler/views:tasked", ptr %l184
  store %"compiler/views:tasked" %t314, ptr %l32
  %t315 = getelementptr %"compiler/views:tasked", ptr %l32, i32 0, i32 0
  %t316 = getelementptr %"compiler/views:view", ptr %t315, i32 0, i32 1
  %t317 = load i64, ptr %t316, !tbaa !24
  %t318 = getelementptr %"compiler/views:tasked", ptr %l28, i32 0, i32 0
  %t319 = getelementptr %"compiler/views:view", ptr %t318, i32 0, i32 1
  %t320 = load i64, ptr %t319, !tbaa !24
  %t323 = icmp eq i64 %t317, %t320
  br i1 %t323, label %bb103, label %bb104
bb103:
  %t325 = getelementptr %"compiler/views:tasked", ptr %l32, i32 0, i32 1
  %t326 = load %"compiler/source:Span", ptr %t325
  store %"compiler/source:Span" %t326, ptr %l189
  %t327 = getelementptr %"compiler/views:tasked", ptr %l28, i32 0, i32 1
  %t328 = load %"compiler/source:Span", ptr %t327
  store %"compiler/source:Span" %t328, ptr %l191
  %t331 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l189, ptr %l191)
  store i1 %t331, ptr %l193
  br label %bb105
bb104:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb106
bb105:
  %t332 = load i1, ptr %l193, !tbaa !21
  store i1 %t332, ptr %l188, !tbaa !21
  br label %bb106
bb106:
  %t333 = load i1, ptr %l188, !tbaa !21
  br i1 %t333, label %bb107, label %bb108
bb107:
  %t334 = getelementptr %"compiler/views:tasked", ptr %l32, i32 0, i32 0
  %t335 = getelementptr %"compiler/views:view", ptr %t334, i32 0, i32 0
  %t336 = load %"compiler/views:place", ptr %t335
  store %"compiler/views:place" %t336, ptr %l195
  %t337 = getelementptr %"compiler/views:tasked", ptr %l28, i32 0, i32 0
  %t338 = getelementptr %"compiler/views:view", ptr %t337, i32 0, i32 0
  %t339 = load %"compiler/views:place", ptr %t338
  store %"compiler/views:place" %t339, ptr %l197
  %t342 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %l195, ptr %l197)
  store i1 %t342, ptr %l199
  br label %bb109
bb108:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb110
bb109:
  %t343 = load i1, ptr %l199, !tbaa !21
  store i1 %t343, ptr %l194, !tbaa !21
  br label %bb110
bb110:
  %t344 = load i1, ptr %l194, !tbaa !21
  br i1 %t344, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb113
bb112:
  br label %bb113
bb113:
  br label %bb114
bb114:
  %t345 = load i64, ptr %l31, !tbaa !24
  %t347 = add i64 %t345, 1
  store i64 %t347, ptr %l31, !tbaa !24
  br label %bb97
bb115:
  %t349 = load i1, ptr %l29, !tbaa !21
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb116, label %bb117
bb116:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = getelementptr %"compiler/views:state", ptr %t353, i32 0, i32 4
  %t356 = load %"compiler/views:tasked", ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ePush_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %t355, %"compiler/views:tasked" %t356)
  br label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb119
bb119:
  br label %bb120
bb120:
  %t359 = load i64, ptr %l27, !tbaa !24
  %t361 = add i64 %t359, 1
  store i64 %t361, ptr %l27, !tbaa !24
  br label %bb91
bb121:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2enameAdd(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:place" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/views:place"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/views:naming"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/views:naming"
  %l19 = alloca i1
  %l20 = alloca %"compiler/views:place"
  %l22 = alloca %"compiler/views:place"
  %l24 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca %"compiler/views:naming"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/views:place" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 2
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/views:naming" %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load %"compiler/views:naming", ptr %l15
  store %"compiler/views:naming" %t20, ptr %l5
  %t21 = getelementptr %"compiler/views:naming", ptr %l5, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = icmp eq i64 %t22, %t23
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = getelementptr %"compiler/views:naming", ptr %l5, i32 0, i32 1
  %t29 = load %"compiler/views:place", ptr %t28
  store %"compiler/views:place" %t29, ptr %l20
  %t30 = load %"compiler/views:place", ptr %l2
  store %"compiler/views:place" %t30, ptr %l22
  %t33 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %l20, ptr %l22)
  store i1 %t33, ptr %l24
  br label %bb9
bb8:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb9:
  %t34 = load i1, ptr %l24, !tbaa !21
  store i1 %t34, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l4, !tbaa !24
  br label %bb1
bb15:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/views:state", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l28, !tbaa !29
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load %"compiler/views:place", ptr %l2
  %t47 = call %"compiler/views:naming" @compiler_2fviews_3anaming_2ector(ptr %s0, i64 %t43, %"compiler/views:place" %t44)
  store %"compiler/views:naming" %t47, ptr %l31
  br label %bb16
bb16:
  %t48 = load ptr, ptr %l28, !tbaa !29
  %t49 = load %"compiler/views:naming", ptr %l31
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ePush_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t48, %"compiler/views:naming" %t49)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2eplaceAdd(ptr %v0, ptr %a0, %"compiler/views:place" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:place"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca %"compiler/views:place"
  %l14 = alloca %"compiler/views:place"
  %l16 = alloca %"compiler/views:place"
  %l18 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/views:place" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %t13, i64 %t14)
  store %"compiler/views:place" %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load %"compiler/views:place", ptr %l13
  store %"compiler/views:place" %t18, ptr %l14
  %t20 = load %"compiler/views:place", ptr %l1
  store %"compiler/views:place" %t20, ptr %l16
  %t23 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %l14, ptr %l16)
  store i1 %t23, ptr %l18
  br label %bb7
bb7:
  %t24 = load i1, ptr %l18, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = add i64 %t25, 1
  store i64 %t27, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load %"compiler/views:place", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %t29, %"compiler/views:place" %t30)
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fviews_2eplaceEnd(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i1
  %l19 = alloca i64
  %l21 = alloca %"compiler/source:Span"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i64 @compiler_2fviews_2eexprEnd(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l11
  br label %bb6
bb6:
  %t19 = load i64, ptr %l11, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  br label %bb20
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 6
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @compiler_2fviews_2eexprEnd(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l19
  br label %bb13
bb13:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l3, !tbaa !24
  br label %bb20
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %t39)
  store %"compiler/source:Span" %t41, ptr %l21
  br label %bb18
bb18:
  %t42 = getelementptr %"compiler/source:Span", ptr %l21, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t45 = sext i32 %t43 to i64
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_f3a6d7e7b6ee655_a5694061fe6eb811)
  unreachable
bb20:
  %t47 = load i64, ptr %l3, !tbaa !24
  store i64 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb7
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l0
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 2
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t11 = load { i64, [2 x i64] }, ptr %l0
  %t13 = extractvalue { i64, [2 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 3
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_cc40afa1f47574c5_1b87777640286ce9)
  unreachable
bb13:
  %t16 = load i1, ptr %l1, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fviews_2etaskCopy(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = icmp eq i64 %a0, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t9 = extractvalue { i64, ptr } %t5, 1
  %t10 = extractvalue { i64, ptr } %t5, 0
  %t11 = add i64 %t7, %t10
  %t12 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t14 = add i64 %t11, %t13
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t6, i64 %t7)
  %t16 = getelementptr i8, ptr %t15, i64 %t7
  call void @olang_textcopy(ptr %t16, ptr %t9, i64 %t10)
  %t17 = getelementptr i8, ptr %t16, i64 %t10
  call void @olang_textcopy(ptr %t17, ptr %t12, i64 %t13)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t15, 1
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t25, i64 %t26)
  %t33 = getelementptr i8, ptr %t32, i64 %t26
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fviews_2eviewAdd(ptr %v0, ptr %a0, %"compiler/views:view" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:view"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/views:view"
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l37 = alloca %"compiler/views:view"
  %l41 = alloca i1
  %l42 = alloca %"compiler/views:place"
  %l44 = alloca %"compiler/views:place"
  %l46 = alloca i1
  %l49 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/views:view" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i64, ptr %l10, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb28
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t51, i64 %t52)
  store %"compiler/views:view" %t55, ptr %l37
  br label %bb12
bb12:
  %t56 = load %"compiler/views:view", ptr %l37
  store %"compiler/views:view" %t56, ptr %l8
  %t57 = getelementptr %"compiler/views:view", ptr %l8, i32 0, i32 1
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 1
  %t60 = load i64, ptr %t59, !tbaa !24
  %t63 = icmp ne i64 %t58, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb16
bb14:
  %t65 = getelementptr %"compiler/views:view", ptr %l8, i32 0, i32 0
  %t66 = load %"compiler/views:place", ptr %t65
  store %"compiler/views:place" %t66, ptr %l42
  %t67 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 0
  %t68 = load %"compiler/views:place", ptr %t67
  store %"compiler/views:place" %t68, ptr %l44
  %t71 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %l42, ptr %l44)
  store i1 %t71, ptr %l46
  br label %bb15
bb15:
  %t72 = load i1, ptr %l46, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t75 = load i1, ptr %l41, !tbaa !21
  br i1 %t75, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  br label %bb19
bb19:
  %t76 = getelementptr %"compiler/views:view", ptr %l1, i32 0, i32 2
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t79 = getelementptr %"compiler/views:view", ptr %l8, i32 0, i32 2
  %t80 = load i1, ptr %t79, !tbaa !21
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l49, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb22
bb22:
  %t84 = load i1, ptr %l49, !tbaa !21
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load %"compiler/views:view", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eSetAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t85, i64 %t86, %"compiler/views:view" %t87)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %ret
bb27:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb8
bb28:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load %"compiler/views:view", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ePush_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %t95, %"compiler/views:view" %t96)
  br label %bb29
bb29:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fviews_2eweight(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/views:holding"
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %l30 = alloca %"compiler/views:holding"
  %l31 = alloca i64
  %l33 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/views:state", ptr %t7, i32 0, i32 4
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb4
bb4:
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = add i64 1, %t12
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:state", ptr %t14, i32 0, i32 2
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l14
  br label %bb5
bb5:
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = mul i64 2, %t19
  %t21 = load i64, ptr %l11, !tbaa !24
  %t23 = add i64 %t21, %t20
  store i64 %t23, ptr %l16, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/views:state", ptr %t24, i32 0, i32 3
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = load i64, ptr %l16, !tbaa !24
  %t30 = load i64, ptr %l19, !tbaa !24
  %t31 = add i64 %t29, %t30
  store i64 %t31, ptr %l1, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/views:state", ptr %t33, i32 0, i32 1
  store ptr %t35, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l25
  br label %bb8
bb8:
  %t41 = load i64, ptr %l23, !tbaa !24
  %t42 = load i64, ptr %l25, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t47, i64 %t48)
  store %"compiler/views:holding" %t51, ptr %l30
  br label %bb12
bb12:
  %t52 = load %"compiler/views:holding", ptr %l30
  store %"compiler/views:holding" %t52, ptr %l4
  %t53 = load i64, ptr %l1, !tbaa !24
  store i64 %t53, ptr %l31, !tbaa !24
  %t54 = getelementptr %"compiler/views:holding", ptr %l4, i32 0, i32 1
  %t55 = getelementptr %"compiler/views:view", ptr %t54, i32 0, i32 2
  %t56 = load i1, ptr %t55, !tbaa !21
  br i1 %t56, label %bb13, label %bb14
bb13:
  store i64 5, ptr %l33, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l33, !tbaa !24
  %t59 = add i64 3, %t58
  %t60 = load i64, ptr %l31, !tbaa !24
  %t62 = add i64 %t60, %t59
  store i64 %t62, ptr %l1, !tbaa !24
  br label %bb16
bb16:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb7
bb17:
  %t68 = load i64, ptr %l1, !tbaa !24
  store i64 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %v0, i64 %a0, %"compiler/views:view" %a1) #0 {
entry:
  %rv = alloca %"compiler/views:holding"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/views:holding" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/views:holding" %t6, %"compiler/views:view" %a1, 1
  store %"compiler/views:holding" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:holding", ptr %rv
  ret %"compiler/views:holding" %rr
}

define dso_local %"compiler/views:loopFrame" @compiler_2fviews_3aloopFrame_2ector(ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/views:loopFrame"
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l1, !tbaa !23
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l6
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = insertvalue %"compiler/views:loopFrame" undef, i32 %t7, 0
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t10 = insertvalue %"compiler/views:loopFrame" %t8, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, 1
  %t12 = insertvalue %"compiler/views:loopFrame" %t10, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, 2
  store %"compiler/views:loopFrame" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:loopFrame", ptr %rv
  ret %"compiler/views:loopFrame" %rr
}

define dso_local %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %v0, { i64, [2 x i64] } %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/views:place"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/views:place" undef, { i64, [2 x i64] } %a0, 0
  %t12 = insertvalue %"compiler/views:place" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/views:place" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/views:place" %t14, i1 %a3, 3
  store %"compiler/views:place" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:place", ptr %rv
  ret %"compiler/views:place" %rr
}

define dso_local void @compiler_2fviews_3astate_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i1
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"compiler/views:state"
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l0, !tbaa !21
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l6
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t6, label %bb3, label %bb4
bb3:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t10 = load i64, ptr %l7
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l9
  br label %bb5
bb5:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t15 = load i64, ptr %l7
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb7
bb7:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l3
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l11
  br label %bb8
bb8:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t28 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 0
  %t29 = load i1, ptr %l0, !tbaa !21
  store i1 %t29, ptr %t28, !tbaa !21
  %t30 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 1
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %t30
  %t32 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 2
  %t33 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %t32
  %t34 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 3
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t34
  %t36 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %t36
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l12, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %v0, %"compiler/views:place" %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"compiler/views:place"
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/views:view"
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/views:place" %a0, ptr %l2
  store i64 %a1, ptr %l3, !tbaa !24
  store i1 false, ptr %l4, !tbaa !21
  %t5 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 0, i32 0)
  store %"compiler/source:Span" %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t6, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  store i64 -1, ptr %l7, !tbaa !24
  %t7 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 0, i32 0)
  store %"compiler/source:Span" %t7, ptr %l13
  br label %bb2
bb2:
  %t8 = load %"compiler/source:Span", ptr %l13
  %t9 = load %"compiler/views:place", ptr %l2
  %t10 = insertvalue %"compiler/views:view" undef, %"compiler/views:place" %t9, 0
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = insertvalue %"compiler/views:view" %t10, i64 %t11, 1
  %t13 = load i1, ptr %l4, !tbaa !21
  %t14 = insertvalue %"compiler/views:view" %t12, i1 %t13, 2
  %t15 = load %"compiler/source:Span", ptr %l5
  %t16 = insertvalue %"compiler/views:view" %t14, %"compiler/source:Span" %t15, 3
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = insertvalue %"compiler/views:view" %t16, i64 %t17, 4
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = insertvalue %"compiler/views:view" %t18, i64 %t19, 5
  %t22 = insertvalue %"compiler/views:view" %t20, %"compiler/source:Span" %t8, 6
  %t24 = insertvalue %"compiler/views:view" %t22, i64 0, 7
  store %"compiler/views:view" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:view", ptr %rv
  ret %"compiler/views:view" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d2 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/vec" }>, align 8
@.d3 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d4 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/columns" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cmut_20compiler_2fviews_3asummary_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fviews_3aViewer_2e34 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d6 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"known" }>, align 8
@.d7 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
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
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"p" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"grows" }>, align 8
@.d11 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"views" }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"keeps" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"'Push'" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ctor " }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"dtor " }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"lambda " }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"global " }>, align 8
@.d25 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"contract " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d32 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ColumnVec" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d36 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"(unwritable)" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d38 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"M19g summary of " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" was '" }>, align 8
@.d41 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"', is '" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/views:state"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 136, i1 false)
  %t2 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 3
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 4
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1 = weak hidden constant i1 false
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %a0, ptr %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 5}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 5}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 3, label %bb6 i64 4, label %bb7 ]
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i64 }, ptr %t15, i32 0, i32 0
  %t17 = load i64, ptr %t16
  %t20 = icmp eq i64 %t13, %t17
  br i1 %t20, label %bb8, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb9, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i64, i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i64, i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  %t44 = icmp eq i64 %t37, %t41
  br i1 %t44, label %bb10, label %bb1
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64 }, ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb12, label %bb1
bb8:
  br label %bb3
bb9:
  br label %bb3
bb10:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i32 }, ptr %t59, i32 0, i32 1
  %t61 = load i32, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i32 }, ptr %t63, i32 0, i32 1
  %t65 = load i32, ptr %t64
  %t68 = icmp eq i32 %t61, %t65
  br i1 %t68, label %bb11, label %bb1
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  %t70 = load i1, ptr %l2, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 112
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 112
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 56
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 56
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

@olang_2esole_2ecompiler_2fviews_3astate_2e3 = weak hidden constant i1 false
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

declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 112
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 112
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

@.d60 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"copy the value first ('" }>, align 8
@.d61 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c".Get(k)')" }>, align 8
@.d62 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"copy the elements first ('" }>, align 8
@.d63 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c".ToArray()')" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aplace(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l5 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/views:place", ptr %t1, i32 0, i32 0
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/views:place", ptr %t3, i32 0, i32 0
  %t7 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %t2, ptr %t4)
  store i1 %t7, ptr %l5
  br label %bb2
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb7
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb3, label %bb1
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:place", ptr %t9, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/views:place", ptr %t12, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = icmp eq i64 %t11, %t14
  br i1 %t17, label %bb4, label %bb1
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/views:place", ptr %t19, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/views:place", ptr %t22, i32 0, i32 2
  %t24 = load i64, ptr %t23, !tbaa !24
  %t27 = icmp eq i64 %t21, %t24
  br i1 %t27, label %bb5, label %bb1
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/views:place", ptr %t29, i32 0, i32 3
  %t31 = load i1, ptr %t30, !tbaa !21
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/views:place", ptr %t32, i32 0, i32 3
  %t34 = load i1, ptr %t33, !tbaa !21
  %t37 = icmp eq i1 %t31, %t34
  br i1 %t37, label %bb6, label %bb1
bb6:
  br label %bb7
bb7:
  %t39 = load i1, ptr %l2, !tbaa !21
  store i1 %t39, ptr %rv
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

@.d64 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a copy of the value: '" }>, align 8
@.d65 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".Get(k)'" }>, align 8
@.d66 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"a copy: '" }>, align 8
@.d67 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c".ToArray()'" }>, align 8
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
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3cbb6fb3b51c25bd_1e9ab5921d6290d1 = external constant [0 x i8]
declare void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecallsStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecallsArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_87083398c1f96e8c_18c50ee403fa2840 = external constant [0 x i8]
@olang_loc_b5f5b909b97f4b87_db04b2c3237782bb = external constant [0 x i8]
@olang_loc_f21fc7c42b27f081_20ede69b6f10d945 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_Hffe51834a288d097bc653a6423d7b5a2(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaries(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H46d34990adaac4ca3e42bec6b3496b28(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @compiler_2fviews_3aKept_2ector(ptr %out, ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_82903f089977a4a2_6ca1fe8e95ddb76e = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fviews_3asummary_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H23bbaa5fdc623cf1e33b32cb6290302c(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eBodyKeys(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecomponents(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallsItself(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0)
declare %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_55308b3b5a1f5c1_cb52dc999ec87de5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0)
declare %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_bb5d94b92cb03aee_965554ec574ba44a = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0)
declare %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:holding" %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2eforget(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
@olang_loc_7ef79401c16fe1d4_255ec247f03840e8 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f2a9606e62f672e3_f02fc5d7c09a9e07 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0)
declare %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_f4d9265444485b3d_7f3b362071bb80f9 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplainType(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_adfa23ace0171c5f_e5223cf4b947af3 = external constant [0 x i8]
@olang_loc_3e3606e9c916d325_999483638397109 = external constant [0 x i8]
declare ptr @compiler_2fviews_2eunAway(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1bacef8f79fa259f_b65daa57821eac43 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_b34deef82c4dbb1e_7a61043bb66e64c2 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_66a9fc2455c15d42_1dde5b0b0f74f18e = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_dfc376be0a55e0c3_9b1743fdc36697af = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H33c414027a4af7673dd1306c9e88dc00(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efileWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, ptr %a5)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ematchOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3)
@olang_loc_57534b0b4c840b9f_734207cf536b370b = external constant [0 x i8]
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_a471d4cd6a39e3a7_bf796cf0b70bcd93 = external constant [0 x i8]
@olang_loc_bf0f9cdbc99a00cc_873cbf0138bd5dc8 = external constant [0 x i8]
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_59f7caf9a8021923_a477b9c5c640d35f = external constant [0 x i8]
declare %"compiler/views:fact" @compiler_2fviews_3afact_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5, i64 %a6, %"compiler/source:Span" %a7)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0, %"compiler/views:fact" %a1)
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e__Hbdff57143197d3e3ce33a3087c05f7a0(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Ha157aa9bcf12f5157b10d592e947e165(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H161a24899859b830aba89891233cbfd1(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e__Hd7428d759783ef3a1a99ea96b3969ebe(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H8f04a3ce395cf5423055a0e50fbad86f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H97e3fe71a2054fda18da5260a3d71aea(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_617a65436beb56f7_865c97eda452f2a3 = external constant [0 x i8]
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emeets(ptr %v0, ptr %a0, %"compiler/views:place" %a1, %"compiler/views:place" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0)
declare %"compiler/views:tasked" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eAt_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecGrowsUnderTask(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecTaskHolds(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
@olang_loc_c0119a910aee1fe3_5ce99f5c7dc6e127 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_b373ce5e6fb0acb1_b981b0fdcb20f7cd = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0)
declare %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_dcfb2f8bfac0bc7f_4146aca391677efb = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7b1b67136b76c79_188c2ea4ec84d8a5 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eafter(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i8 %a3)
@olang_loc_26b1312863f2c2c7_c8d66606dd24933b = external constant [0 x i8]
@olang_loc_24f4045ab8cbf215_2ef83d27164e37c1 = external constant [0 x i8]
@olang_loc_40eaf25cbb0521a7_3d2a576ac0c8b0f3 = external constant [0 x i8]
declare ptr @compiler_2fviews_2eargPlace(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_945ffbf6072962e3_f3ad5bbe10c5f487 = external constant [0 x i8]
@olang_loc_5699d6f0b9487a4c_f8171e4e8a154888 = external constant [0 x i8]
@olang_loc_ef97709dce49d3b_530bdd1db1d3a0b7 = external constant [0 x i8]
@olang_loc_cf8b3001c30b10ba_435a3683731d1196 = external constant [0 x i8]
declare %"compiler/views:tasked" @compiler_2fviews_3atasked_2ector(ptr %v0, %"compiler/views:view" %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ePush_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, %"compiler/views:tasked" %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4)
@olang_loc_551fdf32d31d54b_8fb5917c27ba1e87 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H09ad5b70a0c5cfd6161167faed1dc325(ptr %v0, ptr %a0)
declare i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ereadSummary(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H06514334ff6679689d662404c821f2dc(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_a630935aa2e7253f_7098fd3403d75c2b = external constant [0 x i8]
@olang_loc_f889b3d9696b6a08_112f010babbc7bb4 = external constant [0 x i8]
@olang_loc_fbef590508ae9827_444bd78203178143 = external constant [0 x i8]
@olang_loc_d673b6bd3b875b76_a50d9e4884ce91c2 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecHiddenViewStale(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewStale(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__Hfc8ba67df4afabc6715fbd3122f62db9(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, %"compiler/views:holding" %a1)
@olang_loc_58304325d16d56e1_1ac2a884e74450d5 = external constant [0 x i8]
@olang_loc_f882b6801a6cfe65_db0a8f546b27139 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_4283dbd3668d18ac_9869995bfb9a4270 = external constant [0 x i8]
@olang_loc_7a5a13ecbea84e9b_d0d616c1e5cf6f4f = external constant [0 x i8]
@olang_loc_e23614535e762839_a3c52bd11c6a8cad = external constant [0 x i8]
@olang_loc_db6ebdbbbfbf616f_7fdbf604d525f173 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eClear_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ePush_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0, %"compiler/views:naming" %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_26ef299dad5cdbef_4a7142c0b9c90bab = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/views:naming" @compiler_2fviews_3anaming_2ector(ptr %v0, i64 %a0, %"compiler/views:place" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, %"compiler/views:place" %a1)
@olang_loc_f3a6d7e7b6ee655_a5694061fe6eb811 = external constant [0 x i8]
@olang_loc_cc40afa1f47574c5_1b87777640286ce9 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eSetAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:view" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ePush_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, %"compiler/views:view" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ector(ptr %v0, i64 %a0)

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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
