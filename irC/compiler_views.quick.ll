source_filename = "compiler_views.quick.ll"
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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
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
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:fact" = type { i64, i64, i32, i64, i64, i1, i64, %"compiler/source:Span", i64 }
%"compiler/views:Viewer" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/views:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/views:place" = type { { i64, [2 x i64] }, i64, i64, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:view" = type { %"compiler/views:place", i64, i1, %"compiler/source:Span", i64, i64, %"compiler/source:Span", i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/views:state" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/views:loopFrame" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/views:holding" = type { i64, %"compiler/views:view" }
%"compiler/views:naming" = type { i64, %"compiler/views:place" }
%"compiler/views:tasked" = type { %"compiler/views:view", %"compiler/source:Span" }
@G_2ecompiler_2fviews_2eElemSeg = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fviews_2eElemSeg.k1 }>, align 8
@G_2ecompiler_2fviews_2eElemSeg.k1 = internal global <{ [5 x i8] }> <{ [5 x i8] c"\5B\2E\2E\2E\5D" }>, align 8
define dso_local ptr @compiler_2fviews_2eargPlace(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fviews_2eunAway(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t6 = load ptr, ptr %l6, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb10
bb5:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t35 = load ptr, ptr %l2, !tbaa !29
  store ptr %t35, ptr %l5, !tbaa !29
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_a5e6daec8976db0_405389cf00db76ac)
  unreachable
bb16:
  %t38 = load ptr, ptr %l5, !tbaa !29
  store ptr %t38, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  br label %bb10
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
  call void @compiler_2fviews_2ecallsStmt(ptr %v0, ptr %v1, ptr %t28, ptr %a1)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

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
  %l60 = alloca ptr
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb233
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
  br label %bb221
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
  br label %bb220
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
  store ptr %t757, ptr %l60, !tbaa !29
  br label %bb211
bb210:
  br label %bb213
bb211:
  %t759 = load ptr, ptr %l60, !tbaa !29
  %t761 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t759, ptr %t761)
  br label %bb212
bb212:
  br label %bb218
bb213:
  br i1 true, label %bb214, label %bb215
bb214:
  br label %bb216
bb215:
  br label %bb217
bb216:
  br label %bb218
bb217:
  call void @__olang_check_failed(ptr @olang_loc_b5f5b909b97f4b87_db04b2c3237782bb)
  unreachable
bb218:
  br label %bb219
bb219:
  %t764 = load i64, ptr %l57, !tbaa !24
  %t766 = add i64 %t764, 1
  store i64 %t766, ptr %l57, !tbaa !24
  br label %bb203
bb220:
  br label %bb233
bb221:
  %t768 = load ptr, ptr %l0, !tbaa !29
  store ptr %t768, ptr %l403, !tbaa !29
  store i1 false, ptr %l404, !tbaa !21
  %t769 = load ptr, ptr %l403, !tbaa !29
  %t770 = icmp ne ptr %t769, null
  br i1 %t770, label %bb222, label %bb223
bb222:
  %t772 = load ptr, ptr %l403, !tbaa !29
  %t773 = load i64, ptr %t772, !range !{i64 0, i64 18}
  %t775 = icmp eq i64 %t773, 17
  store i1 %t775, ptr %l404, !tbaa !21
  br label %bb223
bb223:
  %t776 = load i1, ptr %l404, !tbaa !21
  br i1 %t776, label %bb224, label %bb225
bb224:
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t779 = getelementptr { i64, [5 x i64] }, ptr %t777, i32 0, i32 1
  %t780 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t779, i32 0, i32 2
  %t781 = load ptr, ptr %t780
  store ptr %t781, ptr %l61, !tbaa !29
  br label %bb226
bb225:
  br label %bb228
bb226:
  %t783 = load ptr, ptr %l61, !tbaa !29
  %t785 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t783, ptr %t785)
  br label %bb227
bb227:
  br label %bb233
bb228:
  br i1 true, label %bb229, label %bb230
bb229:
  br label %bb231
bb230:
  br label %bb232
bb231:
  br label %bb233
bb232:
  call void @__olang_check_failed(ptr @olang_loc_8469b5ec09caec26_9b966bbb099df63a)
  unreachable
bb233:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecallsStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l154 = alloca { i64, ptr }
  %l162 = alloca ptr
  %l163 = alloca i1
  %l176 = alloca { i64, ptr }
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
  store ptr %t5, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t6 = load ptr, ptr %l24, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l24, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 17}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l25, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l25, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb24
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t21 = load ptr, ptr %l30, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l30, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 17}
  %t27 = icmp eq i64 %t25, 2
  store i1 %t27, ptr %l31, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l31, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [3 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb24
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t36 = load ptr, ptr %l36, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l36, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 17}
  %t42 = icmp eq i64 %t40, 6
  store i1 %t42, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l37, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [3 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb24
bb15:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t51 = load ptr, ptr %l42, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t54 = load ptr, ptr %l42, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 17}
  %t57 = icmp eq i64 %t55, 15
  store i1 %t57, ptr %l43, !tbaa !21
  br label %bb17
bb17:
  %t58 = load i1, ptr %l43, !tbaa !21
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr { i64, [3 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", ptr }, ptr %t61, i32 0, i32 1
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l2, !tbaa !29
  br label %bb24
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t66 = load ptr, ptr %l48, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l48, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 17}
  %t72 = icmp eq i64 %t70, 16
  store i1 %t72, ptr %l49, !tbaa !21
  br label %bb21
bb21:
  %t73 = load i1, ptr %l49, !tbaa !21
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr { i64, [3 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr }, ptr %t76, i32 0, i32 1
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l2, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t81 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t80, ptr %t81)
  br label %bb25
bb25:
  br label %bb110
bb26:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t85 = load ptr, ptr %l56, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t88 = load ptr, ptr %l56, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 17}
  %t91 = icmp eq i64 %t89, 1
  store i1 %t91, ptr %l57, !tbaa !21
  br label %bb28
bb28:
  %t92 = load i1, ptr %l57, !tbaa !21
  br i1 %t92, label %bb29, label %bb30
bb29:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr { i64, [3 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t95, i32 0, i32 1
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l3, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr { i64, [3 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l4, !tbaa !29
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t105 = load ptr, ptr %l3, !tbaa !29
  %t107 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %t105, ptr %t107)
  br label %bb32
bb32:
  %t110 = load ptr, ptr %l4, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t110, ptr %t112)
  br label %bb33
bb33:
  br label %bb110
bb34:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t116 = load ptr, ptr %l70, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb35, label %bb36
bb35:
  %t119 = load ptr, ptr %l70, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 17}
  %t122 = icmp eq i64 %t120, 3
  store i1 %t122, ptr %l71, !tbaa !21
  br label %bb36
bb36:
  %t123 = load i1, ptr %l71, !tbaa !21
  br i1 %t123, label %bb37, label %bb38
bb37:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr { i64, [3 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", ptr }, ptr %t126, i32 0, i32 1
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l5, !tbaa !29
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t130 = load ptr, ptr %l5, !tbaa !29
  %t132 = getelementptr %"compiler/typed:If", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t133, ptr %t135)
  br label %bb40
bb40:
  %t138 = load ptr, ptr %l5, !tbaa !29
  %t140 = getelementptr %"compiler/typed:If", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t141, ptr %t143)
  br label %bb41
bb41:
  %t146 = load ptr, ptr %l5, !tbaa !29
  %t148 = getelementptr %"compiler/typed:If", ptr %t146, i32 0, i32 2
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t149, ptr %t150)
  br label %bb42
bb42:
  br label %bb110
bb43:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t154 = load ptr, ptr %l87, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb44, label %bb45
bb44:
  %t157 = load ptr, ptr %l87, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 17}
  %t160 = icmp eq i64 %t158, 4
  store i1 %t160, ptr %l88, !tbaa !21
  br label %bb45
bb45:
  %t161 = load i1, ptr %l88, !tbaa !21
  br i1 %t161, label %bb46, label %bb47
bb46:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr { i64, [3 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t164, i32 0, i32 1
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l6, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t170, i32 0, i32 2
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l7, !tbaa !29
  br label %bb48
bb47:
  br label %bb51
bb48:
  %t174 = load ptr, ptr %l6, !tbaa !29
  %t176 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t174, ptr %t176)
  br label %bb49
bb49:
  %t179 = load ptr, ptr %l7, !tbaa !29
  %t180 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t179, ptr %t180)
  br label %bb50
bb50:
  br label %bb110
bb51:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t184 = load ptr, ptr %l100, !tbaa !29
  %t185 = icmp ne ptr %t184, null
  br i1 %t185, label %bb52, label %bb53
bb52:
  %t187 = load ptr, ptr %l100, !tbaa !29
  %t188 = load i64, ptr %t187, !range !{i64 0, i64 17}
  %t190 = icmp eq i64 %t188, 10
  store i1 %t190, ptr %l101, !tbaa !21
  br label %bb53
bb53:
  %t191 = load i1, ptr %l101, !tbaa !21
  br i1 %t191, label %bb54, label %bb55
bb54:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t194, i32 0, i32 1
  %t196 = load ptr, ptr %t195
  store ptr %t196, ptr %l8, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr { i64, [3 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t200, i32 0, i32 2
  %t202 = load ptr, ptr %t201
  store ptr %t202, ptr %l9, !tbaa !29
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t204 = load ptr, ptr %l8, !tbaa !29
  %t206 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t204, ptr %t206)
  br label %bb57
bb57:
  %t209 = load ptr, ptr %l9, !tbaa !29
  %t210 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t209, ptr %t210)
  br label %bb58
bb58:
  br label %bb110
bb59:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t214 = load ptr, ptr %l113, !tbaa !29
  %t215 = icmp ne ptr %t214, null
  br i1 %t215, label %bb60, label %bb61
bb60:
  %t217 = load ptr, ptr %l113, !tbaa !29
  %t218 = load i64, ptr %t217, !range !{i64 0, i64 17}
  %t220 = icmp eq i64 %t218, 9
  store i1 %t220, ptr %l114, !tbaa !21
  br label %bb61
bb61:
  %t221 = load i1, ptr %l114, !tbaa !21
  br i1 %t221, label %bb62, label %bb63
bb62:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr { i64, [3 x i64] }, ptr %t222, i32 0, i32 1
  %t225 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t224, i32 0, i32 2
  %t226 = load ptr, ptr %t225
  store ptr %t226, ptr %l10, !tbaa !29
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t228 = load ptr, ptr %l10, !tbaa !29
  %t229 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t228, ptr %t229)
  br label %bb65
bb65:
  br label %bb110
bb66:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t233 = load ptr, ptr %l121, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb67, label %bb68
bb67:
  %t236 = load ptr, ptr %l121, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 17}
  %t239 = icmp eq i64 %t237, 11
  store i1 %t239, ptr %l122, !tbaa !21
  br label %bb68
bb68:
  %t240 = load i1, ptr %l122, !tbaa !21
  br i1 %t240, label %bb69, label %bb70
bb69:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr }, ptr %t243, i32 0, i32 1
  %t245 = load ptr, ptr %t244
  store ptr %t245, ptr %l11, !tbaa !29
  br label %bb75
bb70:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t248 = load ptr, ptr %l127, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb71, label %bb72
bb71:
  %t251 = load ptr, ptr %l127, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 17}
  %t254 = icmp eq i64 %t252, 12
  store i1 %t254, ptr %l128, !tbaa !21
  br label %bb72
bb72:
  %t255 = load i1, ptr %l128, !tbaa !21
  br i1 %t255, label %bb73, label %bb74
bb73:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", ptr }, ptr %t258, i32 0, i32 1
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l11, !tbaa !29
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t262 = load ptr, ptr %l11, !tbaa !29
  %t264 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t262, ptr %t264)
  br label %bb76
bb76:
  br label %bb110
bb77:
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t268 = load ptr, ptr %l136, !tbaa !29
  %t269 = icmp ne ptr %t268, null
  br i1 %t269, label %bb78, label %bb79
bb78:
  %t271 = load ptr, ptr %l136, !tbaa !29
  %t272 = load i64, ptr %t271, !range !{i64 0, i64 17}
  %t274 = icmp eq i64 %t272, 13
  store i1 %t274, ptr %l137, !tbaa !21
  br label %bb79
bb79:
  %t275 = load i1, ptr %l137, !tbaa !21
  br i1 %t275, label %bb80, label %bb81
bb80:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr { i64, [3 x i64] }, ptr %t276, i32 0, i32 1
  %t279 = getelementptr { %"compiler/source:Span", ptr }, ptr %t278, i32 0, i32 1
  %t280 = load ptr, ptr %t279
  store ptr %t280, ptr %l12, !tbaa !29
  br label %bb82
bb81:
  br label %bb91
bb82:
  %t282 = load ptr, ptr %l12, !tbaa !29
  %t284 = getelementptr %"compiler/typed:Join", ptr %t282, i32 0, i32 0
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t285, ptr %t287)
  br label %bb83
bb83:
  %t290 = load ptr, ptr %l12, !tbaa !29
  %t292 = getelementptr %"compiler/typed:Join", ptr %t290, i32 0, i32 2
  %t293 = load { i64, ptr }, ptr %t292, !tbaa !27
  store { i64, ptr } %t293, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t295 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t295, 0
  store i64 %t297, ptr %l15, !tbaa !24
  br label %bb84
bb84:
  %t299 = load i64, ptr %l14, !tbaa !24
  %t300 = load i64, ptr %l15, !tbaa !24
  %t303 = icmp slt i64 %t299, %t300
  %t305 = xor i1 %t303, true
  br i1 %t305, label %bb85, label %bb86
bb85:
  br label %bb90
bb86:
  br label %bb87
bb87:
  %t307 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t307, ptr %l154, !tbaa !27
  %t308 = load i64, ptr %l14, !tbaa !24
  %t310 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr ptr, ptr %t311, i64 %t308
  %t313 = load ptr, ptr %t312, !tbaa !39
  %t317 = getelementptr %"compiler/typed:Clause", ptr %t313, i32 0, i32 3
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t319 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t318, ptr %t319)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t322 = load i64, ptr %l14, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l14, !tbaa !24
  br label %bb84
bb90:
  br label %bb110
bb91:
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t327 = load ptr, ptr %l162, !tbaa !29
  %t328 = icmp ne ptr %t327, null
  br i1 %t328, label %bb92, label %bb93
bb92:
  %t330 = load ptr, ptr %l162, !tbaa !29
  %t331 = load i64, ptr %t330, !range !{i64 0, i64 17}
  %t333 = icmp eq i64 %t331, 14
  store i1 %t333, ptr %l163, !tbaa !21
  br label %bb93
bb93:
  %t334 = load i1, ptr %l163, !tbaa !21
  br i1 %t334, label %bb94, label %bb95
bb94:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  %t338 = getelementptr { %"compiler/source:Span", ptr }, ptr %t337, i32 0, i32 1
  %t339 = load ptr, ptr %t338
  store ptr %t339, ptr %l17, !tbaa !29
  br label %bb96
bb95:
  br label %bb105
bb96:
  %t341 = load ptr, ptr %l17, !tbaa !29
  %t343 = getelementptr %"compiler/typed:Spawn", ptr %t341, i32 0, i32 0
  %t344 = load { i64, ptr }, ptr %t343, !tbaa !27
  store { i64, ptr } %t344, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t346 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t346, 0
  store i64 %t348, ptr %l20, !tbaa !24
  br label %bb97
bb97:
  %t350 = load i64, ptr %l19, !tbaa !24
  %t351 = load i64, ptr %l20, !tbaa !24
  %t354 = icmp slt i64 %t350, %t351
  %t356 = xor i1 %t354, true
  br i1 %t356, label %bb98, label %bb99
bb98:
  br label %bb103
bb99:
  br label %bb100
bb100:
  %t358 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t358, ptr %l176, !tbaa !27
  %t359 = load i64, ptr %l19, !tbaa !24
  %t361 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = getelementptr ptr, ptr %t362, i64 %t359
  %t364 = load ptr, ptr %t363, !tbaa !39
  %t367 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %t364, ptr %t367)
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t370 = load i64, ptr %l19, !tbaa !24
  %t372 = add i64 %t370, 1
  store i64 %t372, ptr %l19, !tbaa !24
  br label %bb97
bb103:
  %t374 = load ptr, ptr %l17, !tbaa !29
  %t376 = getelementptr %"compiler/typed:Spawn", ptr %t374, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !29
  %t379 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t377, ptr %t379)
  br label %bb104
bb104:
  br label %bb110
bb105:
  br i1 true, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_293c6ab0a5c406c2_e9cd55f098635cb6)
  unreachable
bb110:
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t21, ptr %l28, !tbaa !27
  br label %bb7
bb6:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l31, !tbaa !27
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) })
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
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
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
  %t136 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %s0, ptr %s0, ptr %t132, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, %"compiler/views:fact" %t133)
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
  %t197 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %s0, ptr %s0, ptr %t193, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) }, %"compiler/views:fact" %t194)
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
  %t258 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %s0, ptr %s0, ptr %t254, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d6, i32 0, i32 1) }, %"compiler/views:fact" %t255)
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
  br label %bb67
bb67:
  %t286 = load i64, ptr %l16, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l16, !tbaa !24
  br label %bb55
bb68:
  %t291 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v1, ptr %v1, ptr %l3, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) })
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

define dso_local %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eafter(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i8 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i8
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i1
  %l20 = alloca i64
  %l23 = alloca i8
  %l29 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i8 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i64 @compiler_2fviews_2eplaceEnd(ptr %v1, ptr %a2)
  store i64 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i64, ptr %l7, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t12 = icmp sle i64 %t5, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t21 = icmp sge i64 %t14, %t18
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t24 = load %"compiler/source:Span", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t24, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %t26, i64 %t27)
  store i64 %t30, ptr %l20
  br label %bb8
bb8:
  %t31 = load i64, ptr %l20, !tbaa !24
  store i64 %t31, ptr %l5, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t32, i64 %t33)
  store i8 %t36, ptr %l23
  br label %bb9
bb9:
  %t37 = load i8, ptr %l3, !tbaa !22
  %t38 = load i8, ptr %l23, !tbaa !22
  %t40 = icmp ne i8 %t38, %t37
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t42 = load %"compiler/source:Span", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t42, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t44 = load i8, ptr %l3, !tbaa !22
  %t46 = icmp eq i8 %t44, 46
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l29, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l5, !tbaa !24
  %t52 = add i64 %t50, 1
  %t55 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %t49, i64 %t52)
  store i64 %t55, ptr %l33
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = load i64, ptr %l33, !tbaa !24
  %t58 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %t56, i64 %t57)
  store %"compiler/source:Span" %t58, ptr %l34
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load %"compiler/source:Span", ptr %l34
  store %"compiler/source:Span" %t59, ptr %rv
  br label %ret
bb17:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = trunc i64 %t60 to i32
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = add i64 %t63, 1
  %t67 = trunc i64 %t65 to i32
  %t70 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t62, i32 %t67)
  store %"compiler/source:Span" %t70, ptr %l40
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t71 = load %"compiler/source:Span", ptr %l40
  store %"compiler/source:Span" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/views:fact"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca %"compiler/views:place"
  %l15 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i1
  %l29 = alloca i1
  %l33 = alloca ptr
  %l40 = alloca ptr
  %l43 = alloca i64
  %l45 = alloca i64
  %l50 = alloca %"compiler/views:fact"
  %l53 = alloca i1
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca { i64, ptr }
  %l69 = alloca i64
  %l71 = alloca i64
  %l76 = alloca %"compiler/views:place"
  %l82 = alloca %"compiler/views:place"
  %l86 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l94 = alloca i64
  %l95 = alloca ptr
  %l96 = alloca { i64, [2 x i64] }
  %l97 = alloca i64
  %l101 = alloca { i64, ptr }
  %l103 = alloca %"compiler/views:place"
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t7 = load ptr, ptr %l19, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l20, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l20, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i32, ptr %l5, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l18, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l18, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d33365757296ff0a_65568c4e441bc04e)
  unreachable
bb11:
  %t25 = load i64, ptr %l18, !tbaa !24
  store i64 %t25, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  br i1 %t28, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb15
bb13:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/views:Viewer", ptr %t30, i32 0, i32 2
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t32, i64 %t33)
  store ptr %t36, ptr %l33
  br label %bb14
bb14:
  %t37 = load ptr, ptr %l33, !tbaa !29
  %t39 = getelementptr %"compiler/views:summary", ptr %t37, i32 0, i32 4
  %t40 = load i1, ptr %t39, !tbaa !21
  %t42 = xor i1 %t40, true
  store i1 %t42, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t44 = load i1, ptr %l29, !tbaa !21
  br i1 %t44, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/views:Viewer", ptr %t45, i32 0, i32 2
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t47, i64 %t48)
  store ptr %t51, ptr %l40
  br label %bb19
bb19:
  %t52 = load ptr, ptr %l40, !tbaa !29
  %t54 = getelementptr %"compiler/views:summary", ptr %t52, i32 0, i32 1
  store ptr %t54, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t56 = load i64, ptr %l8, !tbaa !24
  store i64 %t56, ptr %l43, !tbaa !24
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l45
  br label %bb21
bb21:
  %t60 = load i64, ptr %l43, !tbaa !24
  %t61 = load i64, ptr %l45, !tbaa !24
  %t62 = icmp slt i64 %t60, %t61
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb23:
  br label %bb24
bb24:
  %t66 = load ptr, ptr %l7, !tbaa !29
  %t67 = load i64, ptr %l8, !tbaa !24
  %t70 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t66, i64 %t67)
  store %"compiler/views:fact" %t70, ptr %l50
  br label %bb25
bb25:
  %t71 = load %"compiler/views:fact", ptr %l50
  store %"compiler/views:fact" %t71, ptr %l9
  %t72 = getelementptr %"compiler/views:fact", ptr %l9, i32 0, i32 0
  %t73 = load i64, ptr %t72, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  br i1 %t75, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb28
bb27:
  %t77 = getelementptr %"compiler/views:fact", ptr %l9, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Call", ptr %t79, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t87 = icmp sge i64 %t78, %t84
  store i1 %t87, ptr %l53, !tbaa !21
  br label %bb28
bb28:
  %t89 = load i1, ptr %l53, !tbaa !21
  br i1 %t89, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb30:
  br label %bb31
bb31:
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l59
  br label %bb32
bb32:
  %t91 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91, ptr %l10
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Call", ptr %t93, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l62, !tbaa !27
  %t97 = getelementptr %"compiler/views:fact", ptr %l9, i32 0, i32 0
  %t98 = load i64, ptr %t97, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr ptr, ptr %t101, i64 %t98
  %t103 = load ptr, ptr %t102, !tbaa !39
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s5, ptr %t92, ptr %t103, ptr %a2, ptr %l10)
  br label %bb33
bb33:
  store ptr %l10, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t111 = load i64, ptr %l12, !tbaa !24
  store i64 %t111, ptr %l69, !tbaa !24
  %t112 = load ptr, ptr %l11, !tbaa !29
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s5, ptr %t112)
  store i64 %t114, ptr %l71
  br label %bb35
bb35:
  %t115 = load i64, ptr %l69, !tbaa !24
  %t116 = load i64, ptr %l71, !tbaa !24
  %t117 = icmp slt i64 %t115, %t116
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s8)
  br label %bb51
bb37:
  br label %bb38
bb38:
  %t121 = load ptr, ptr %l11, !tbaa !29
  %t122 = load i64, ptr %l12, !tbaa !24
  %t125 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s5, ptr %t121, i64 %t122)
  store %"compiler/views:place" %t125, ptr %l76
  br label %bb39
bb39:
  %t126 = load %"compiler/views:place", ptr %l76
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/views:fact", ptr %l9, i32 0, i32 3
  %t130 = load i64, ptr %t129, !tbaa !24
  %t131 = getelementptr %"compiler/views:fact", ptr %l9, i32 0, i32 4
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = getelementptr %"compiler/views:fact", ptr %l9, i32 0, i32 5
  %t134 = load i1, ptr %t133, !tbaa !21
  %t140 = call %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %t127, %"compiler/views:place" %t126, i64 %t130, i64 %t132, i1 %t134)
  store %"compiler/views:place" %t140, ptr %l82
  br label %bb40
bb40:
  %t141 = load %"compiler/views:place", ptr %l82
  store %"compiler/views:place" %t141, ptr %l14
  %t142 = getelementptr %"compiler/views:place", ptr %l14, i32 0, i32 3
  %t143 = load i1, ptr %t142, !tbaa !21
  br i1 %t143, label %bb41, label %bb42
bb41:
  %t145 = load ptr, ptr %l3, !tbaa !29
  %t146 = load %"compiler/views:place", ptr %l14
  call void @compiler_2fviews_2eplaceAdd(ptr %v3, ptr %t145, %"compiler/views:place" %t146)
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb44:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l86, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/views:Viewer", ptr %t150, i32 0, i32 3
  %t153 = getelementptr %"compiler/views:place", ptr %l14, i32 0, i32 1
  %t154 = load i64, ptr %t153, !tbaa !24
  %t157 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s8, ptr %t152, i64 %t154)
  store { i64, ptr } %t157, ptr %l90
  br label %bb45
bb45:
  %t158 = load { i64, ptr }, ptr @G_2ecompiler_2fviews_2eElemSeg, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t163 = extractvalue { i64, ptr } %t158, 1
  %t164 = extractvalue { i64, ptr } %t158, 0
  %t165 = add i64 %t161, %t164
  %t166 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t165)
  call void @olang_textcopy(ptr %t166, ptr %t160, i64 %t161)
  %t167 = getelementptr i8, ptr %t166, i64 %t161
  call void @olang_textcopy(ptr %t167, ptr %t163, i64 %t164)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = extractvalue { i64, ptr } %t169, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t177 = load ptr, ptr %l86, !tbaa !29
  %t179 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t177, { i64, ptr } %t176)
  store i64 %t179, ptr %l94
  br label %bb46
bb46:
  %t180 = load i64, ptr %l94, !tbaa !24
  store i64 %t180, ptr %l15, !tbaa !24
  %t181 = load ptr, ptr %l3, !tbaa !29
  store ptr %t181, ptr %l95, !tbaa !29
  %t182 = getelementptr %"compiler/views:place", ptr %l14, i32 0, i32 0
  %t183 = load { i64, [2 x i64] }, ptr %t182
  store { i64, [2 x i64] } %t183, ptr %l96
  %t184 = load i64, ptr %l15, !tbaa !24
  store i64 %t184, ptr %l97, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/views:Viewer", ptr %t185, i32 0, i32 3
  %t188 = load i64, ptr %l15, !tbaa !24
  %t191 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s8, ptr %t187, i64 %t188)
  store { i64, ptr } %t191, ptr %l101
  br label %bb47
bb47:
  %t192 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  %t194 = load { i64, [2 x i64] }, ptr %l96
  %t195 = load i64, ptr %l97, !tbaa !24
  %t197 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s8, { i64, [2 x i64] } %t194, i64 %t195, i64 %t193, i1 false)
  store %"compiler/views:place" %t197, ptr %l103
  br label %bb48
bb48:
  %t198 = load ptr, ptr %l95, !tbaa !29
  %t199 = load %"compiler/views:place", ptr %l103
  call void @compiler_2fviews_2eplaceAdd(ptr %v3, ptr %t198, %"compiler/views:place" %t199)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb50:
  %t200 = load i64, ptr %l12, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %l12, !tbaa !24
  br label %bb34
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  %t204 = load i64, ptr %l8, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l8, !tbaa !24
  br label %bb20
bb53:
  br label %ret
ret:
  ret void
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
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t69, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
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
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l74, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l93, !tbaa !27
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
  %t229 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t232 = extractvalue { i64, ptr } %t216, 1
  %t233 = extractvalue { i64, ptr } %t216, 0
  %t234 = add i64 %t230, %t233
  %t235 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t237 = add i64 %t234, %t236
  %t239 = extractvalue { i64, ptr } %t226, 1
  %t240 = extractvalue { i64, ptr } %t226, 0
  %t241 = add i64 %t237, %t240
  %t242 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t246 = extractvalue { i64, ptr } %t227, 1
  %t247 = extractvalue { i64, ptr } %t227, 0
  %t248 = add i64 %t244, %t247
  %t249 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t251 = add i64 %t248, %t250
  %t253 = extractvalue { i64, ptr } %t228, 1
  %t254 = extractvalue { i64, ptr } %t228, 0
  %t255 = add i64 %t251, %t254
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egivenGrowing(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/views:place" %a2, i64 %a3, i64 %a4, i64 %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l11 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l18 = alloca { i64, [3 x i64] }
  %l19 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca i64
  %l33 = alloca i1
  %l37 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i64
  %l48 = alloca { i64, [3 x i64] }
  %l52 = alloca { i64, ptr }
  %l53 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %t86 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a4, ptr %l4
  store i64 %a5, ptr %l5
  store %"compiler/source:Span" %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %s0, ptr %t1, %"compiler/views:place" %a2)
  store { i64, ptr } %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t6, ptr %l7, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/views:Viewer", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 4
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t21 = call { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %t17, %"compiler/source:Span" %a1)
  store { i64, [3 x i64] } %t21, ptr %l18
  br label %bb2
bb2:
  %t22 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t22, ptr %l19, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/views:Viewer", ptr %t23, i32 0, i32 3
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store { i64, ptr } %t29, ptr %l23
  br label %bb3
bb3:
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t30, ptr %l24, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t35 = call { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %s0, ptr %v0, i64 %a3, { i64, ptr } %t32)
  store { i64, ptr } %t35, ptr %l27
  br label %bb4
bb4:
  %t36 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  %t38 = extractvalue { i64, ptr } %t36, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t43 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t47 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewGivenGrowing(ptr %s0, ptr %v0, ptr %s0, ptr %v0, ptr %v0, { i64, ptr } %t43, { i64, ptr } %t44, { i64, ptr } %t45, { i64, ptr } %t42)
  store %"compiler/diagmsg:Msg" %t47, ptr %l29
  br label %bb5
bb5:
  %t48 = load ptr, ptr %l15, !tbaa !29
  %t49 = load { i64, [3 x i64] }, ptr %l18
  %t50 = load %"compiler/diagmsg:Msg", ptr %l29
  %t51 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t48, { i64, [3 x i64] } %t49, %"compiler/diagmsg:Msg" %t50)
  store i64 %t51, ptr %l30
  br label %bb6
bb6:
  %t52 = load i64, ptr %l30, !tbaa !24
  store i64 %t52, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp slt i64 %t53, 0
  br i1 %t55, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb10
bb8:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/views:Viewer", ptr %t57, i32 0, i32 6
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t59, i64 %t60)
  store i1 %t63, ptr %l37
  br label %bb9
bb9:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %l33, !tbaa !21
  br label %bb10
bb10:
  %t65 = load i1, ptr %l33, !tbaa !21
  br i1 %t65, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/views:Viewer", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/load:Loader", ptr %t72, i32 0, i32 4
  %t75 = load ptr, ptr %t74, !tbaa !29
  store ptr %t75, ptr %l41, !tbaa !29
  %t76 = load i64, ptr %l8, !tbaa !24
  store i64 %t76, ptr %l42, !tbaa !24
  %t77 = load i64, ptr %l5, !tbaa !24
  %t78 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t79 = load i32, ptr %t78, !tbaa !23
  %t81 = sext i32 %t79 to i64
  %t82 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t85 = sext i32 %t83 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t86
  %t87 = getelementptr { i64, [3 x i64] }, ptr %t86, i32 0, i32 0
  store i64 3, ptr %t87
  %t89 = insertvalue { i64, i64, i64 } undef, i64 %t77, 0
  %t91 = insertvalue { i64, i64, i64 } %t89, i64 %t81, 1
  %t93 = insertvalue { i64, i64, i64 } %t91, i64 %t85, 2
  %t94 = getelementptr { i64, [3 x i64] }, ptr %t86, i32 0, i32 1
  store { i64, i64, i64 } %t93, ptr %t94
  %t95 = load { i64, [3 x i64] }, ptr %t86
  store { i64, [3 x i64] } %t95, ptr %l48
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/views:Viewer", ptr %t96, i32 0, i32 3
  %t99 = load i64, ptr %l4, !tbaa !24
  %t102 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t98, i64 %t99)
  store { i64, ptr } %t102, ptr %l52
  br label %bb14
bb14:
  %t103 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t104 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %v0, { i64, ptr } %t103)
  store %"compiler/diagmsg:Msg" %t104, ptr %l53
  br label %bb15
bb15:
  %t105 = load ptr, ptr %l41, !tbaa !29
  %t106 = load i64, ptr %l42, !tbaa !24
  %t107 = load { i64, [3 x i64] }, ptr %l48
  %t108 = load %"compiler/diagmsg:Msg", ptr %l53
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t105, i64 %t106, { i64, [3 x i64] } %t107, %"compiler/diagmsg:Msg" %t108)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/views:place"
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/views:view"
  %l20 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca %"compiler/views:fact"
  %l27 = alloca %"compiler/views:fact"
  %l30 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i64
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/views:view"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca ptr
  %l69 = alloca i64
  %l71 = alloca i64
  %l76 = alloca %"compiler/views:place"
  %l78 = alloca i64
  %l86 = alloca i64
  %l88 = alloca i64
  %l93 = alloca %"compiler/views:view"
  %l95 = alloca i64
  %l102 = alloca i1
  %l110 = alloca ptr
  %l113 = alloca i64
  %l115 = alloca i64
  %l120 = alloca %"compiler/views:fact"
  %l124 = alloca i1
  %l131 = alloca i64
  %l138 = alloca i64
  %l143 = alloca %"compiler/source:Span"
  %l144 = alloca %"compiler/views:fact"
  %l150 = alloca ptr
  %s0 = alloca %olang.scope
  %s14 = alloca %olang.scope
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
  store i1 true, ptr %l30, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t5, i32 %a2)
  store i1 %t9, ptr %l33
  br label %bb3
bb3:
  %t10 = load i1, ptr %l33, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l30, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l30, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootLocal(ptr %v0, ptr %v1, ptr %t14, ptr %t15)
  store i64 %t18, ptr %l37
  br label %bb8
bb8:
  %t19 = load i64, ptr %l37, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t24 = load ptr, ptr %l3, !tbaa !29
  store ptr %t24, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb10:
  br label %bb20
bb11:
  %t26 = load i64, ptr %l7, !tbaa !24
  store i64 %t26, ptr %l41, !tbaa !24
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t27)
  store i64 %t29, ptr %l43
  br label %bb12
bb12:
  %t30 = load i64, ptr %l41, !tbaa !24
  %t31 = load i64, ptr %l43, !tbaa !24
  %t32 = icmp slt i64 %t30, %t31
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t36, i64 %t37)
  store %"compiler/views:view" %t40, ptr %l48
  br label %bb16
bb16:
  %t41 = load %"compiler/views:view", ptr %l48
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t43 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fviews_2eholdAdd(ptr %v3, ptr %t42, i64 %t43, %"compiler/views:view" %t41)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l7, !tbaa !24
  br label %bb11
bb19:
  br label %bb20
bb20:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/views:Viewer", ptr %t52, i32 0, i32 23
  %t55 = load i1, ptr %t54, !tbaa !21
  br i1 %t55, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l56
  br label %bb24
bb24:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l9
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t63 = call ptr @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootPlace(ptr %v0, ptr %v1, ptr %v1, ptr %t59, ptr %t60)
  store ptr %t63, ptr %l59
  br label %bb25
bb25:
  %t64 = load ptr, ptr %l59, !tbaa !29
  store ptr %t64, ptr %l10, !tbaa !29
  %t65 = load ptr, ptr %l10, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb26, label %bb27
bb26:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l10, !tbaa !29
  %t74 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v3, ptr %s0, ptr %t71, ptr %t72, ptr %t74, ptr %l9)
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  store ptr %l9, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb30
bb30:
  %t80 = load i64, ptr %l12, !tbaa !24
  store i64 %t80, ptr %l69, !tbaa !24
  %t81 = load ptr, ptr %l11, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t81)
  store i64 %t83, ptr %l71
  br label %bb31
bb31:
  %t84 = load i64, ptr %l69, !tbaa !24
  %t85 = load i64, ptr %l71, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb32, label %bb33
bb32:
  br label %bb97
bb33:
  br label %bb34
bb34:
  %t90 = load ptr, ptr %l11, !tbaa !29
  %t91 = load i64, ptr %l12, !tbaa !24
  %t94 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t90, i64 %t91)
  store %"compiler/views:place" %t94, ptr %l76
  br label %bb35
bb35:
  %t95 = load %"compiler/views:place", ptr %l76
  store %"compiler/views:place" %t95, ptr %l13
  %t96 = getelementptr %"compiler/views:place", ptr %l13, i32 0, i32 0
  %t97 = load { i64, [2 x i64] }, ptr %t96
  store { i64, [2 x i64] } %t97, ptr %l14
  %t99 = load { i64, [2 x i64] }, ptr %l14
  %t101 = extractvalue { i64, [2 x i64] } %t99, 0
  %t102 = icmp eq i64 %t101, 2
  br i1 %t102, label %bb36, label %bb37
bb36:
  %t104 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t105 = getelementptr { i64 }, ptr %t104, i32 0, i32 0
  %t106 = load i64, ptr %t105
  store i64 %t106, ptr %l15, !tbaa !24
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t108 = load i64, ptr %l15, !tbaa !24
  store i64 %t108, ptr %l78, !tbaa !24
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store i64 -1, ptr %l78, !tbaa !24
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_a9709b8d7599af1c_938b49c1f1943728)
  unreachable
bb44:
  %t110 = load i64, ptr %l78, !tbaa !24
  store i64 %t110, ptr %l16, !tbaa !24
  %t111 = load i64, ptr %l16, !tbaa !24
  %t113 = icmp slt i64 %t111, 0
  br i1 %t113, label %bb45, label %bb46
bb45:
  br label %bb96
bb46:
  br label %bb47
bb47:
  %t115 = load ptr, ptr %l3, !tbaa !29
  store ptr %t115, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb48
bb48:
  store %olang.scope zeroinitializer, ptr %s14
  %t117 = load i64, ptr %l18, !tbaa !24
  store i64 %t117, ptr %l86, !tbaa !24
  %t118 = load ptr, ptr %l17, !tbaa !29
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t118)
  store i64 %t120, ptr %l88
  br label %bb49
bb49:
  %t121 = load i64, ptr %l86, !tbaa !24
  %t122 = load i64, ptr %l88, !tbaa !24
  %t123 = icmp slt i64 %t121, %t122
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s14)
  br label %bb95
bb51:
  br label %bb52
bb52:
  %t127 = load ptr, ptr %l17, !tbaa !29
  %t128 = load i64, ptr %l18, !tbaa !24
  %t131 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t127, i64 %t128)
  store %"compiler/views:view" %t131, ptr %l93
  br label %bb53
bb53:
  %t132 = load %"compiler/views:view", ptr %l93
  store %"compiler/views:view" %t132, ptr %l19
  %t133 = getelementptr %"compiler/views:view", ptr %l19, i32 0, i32 0
  %t134 = getelementptr %"compiler/views:place", ptr %t133, i32 0, i32 0
  %t135 = load { i64, [2 x i64] }, ptr %t134
  store { i64, [2 x i64] } %t135, ptr %l20
  %t137 = load { i64, [2 x i64] }, ptr %l20
  %t139 = extractvalue { i64, [2 x i64] } %t137, 0
  %t140 = icmp eq i64 %t139, 4
  br i1 %t140, label %bb54, label %bb55
bb54:
  %t142 = getelementptr { i64, [2 x i64] }, ptr %l20, i32 0, i32 1
  %t143 = getelementptr { i64 }, ptr %t142, i32 0, i32 0
  %t144 = load i64, ptr %t143
  store i64 %t144, ptr %l21, !tbaa !24
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t146 = load i64, ptr %l21, !tbaa !24
  store i64 %t146, ptr %l95, !tbaa !24
  br label %bb62
bb57:
  br i1 true, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  store i64 -1, ptr %l95, !tbaa !24
  br label %bb62
bb61:
  call void @__olang_check_failed(ptr @olang_loc_5a02dfa0eab0974d_8c564576f095f5f9)
  unreachable
bb62:
  %t148 = load i64, ptr %l95, !tbaa !24
  store i64 %t148, ptr %l22, !tbaa !24
  %t149 = load i64, ptr %l22, !tbaa !24
  %t151 = icmp slt i64 %t149, 0
  br i1 %t151, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb65
bb64:
  %t153 = load i64, ptr %l22, !tbaa !24
  %t154 = load i64, ptr %l16, !tbaa !24
  %t157 = icmp eq i64 %t153, %t154
  store i1 %t157, ptr %l102, !tbaa !21
  br label %bb65
bb65:
  %t159 = load i1, ptr %l102, !tbaa !21
  br i1 %t159, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb67:
  br label %bb68
bb68:
  store i1 false, ptr %l23, !tbaa !21
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/views:Viewer", ptr %t160, i32 0, i32 2
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/views:Viewer", ptr %t163, i32 0, i32 22
  %t166 = load i64, ptr %t165, !tbaa !24
  %t169 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t162, i64 %t166)
  store ptr %t169, ptr %l110
  br label %bb69
bb69:
  %t170 = load ptr, ptr %l110, !tbaa !29
  %t172 = getelementptr %"compiler/views:summary", ptr %t170, i32 0, i32 2
  store ptr %t172, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb70
bb70:
  %t174 = load i64, ptr %l25, !tbaa !24
  store i64 %t174, ptr %l113, !tbaa !24
  %t175 = load ptr, ptr %l24, !tbaa !29
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t175)
  store i64 %t177, ptr %l115
  br label %bb71
bb71:
  %t178 = load i64, ptr %l113, !tbaa !24
  %t179 = load i64, ptr %l115, !tbaa !24
  %t180 = icmp slt i64 %t178, %t179
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb72, label %bb73
bb72:
  br label %bb83
bb73:
  br label %bb74
bb74:
  %t184 = load ptr, ptr %l24, !tbaa !29
  %t185 = load i64, ptr %l25, !tbaa !24
  %t188 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t184, i64 %t185)
  store %"compiler/views:fact" %t188, ptr %l120
  br label %bb75
bb75:
  %t189 = load %"compiler/views:fact", ptr %l120
  store %"compiler/views:fact" %t189, ptr %l26
  %t190 = getelementptr %"compiler/views:fact", ptr %l26, i32 0, i32 0
  %t191 = load i64, ptr %t190, !tbaa !24
  %t192 = load i64, ptr %l22, !tbaa !24
  %t195 = icmp eq i64 %t191, %t192
  br i1 %t195, label %bb76, label %bb77
bb76:
  %t197 = getelementptr %"compiler/views:fact", ptr %l26, i32 0, i32 8
  %t198 = load i64, ptr %t197, !tbaa !24
  %t199 = load i64, ptr %l16, !tbaa !24
  %t202 = icmp eq i64 %t198, %t199
  store i1 %t202, ptr %l124, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb78
bb78:
  %t204 = load i1, ptr %l124, !tbaa !21
  br i1 %t204, label %bb79, label %bb80
bb79:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb81
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t205 = load i64, ptr %l25, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l25, !tbaa !24
  br label %bb70
bb83:
  %t209 = load i1, ptr %l23, !tbaa !21
  br i1 %t209, label %bb84, label %bb85
bb84:
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb85:
  br label %bb86
bb86:
  %t211 = load i64, ptr %l22, !tbaa !24
  store i64 %t211, ptr %l131, !tbaa !24
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/views:Viewer", ptr %t212, i32 0, i32 21
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = icmp eq ptr %t215, null
  br i1 %t217, label %bb87, label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_d83b4460c5b9ac6f_e5ae66818951545b)
  unreachable
bb88:
  br label %bb89
bb89:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/views:Viewer", ptr %t219, i32 0, i32 21
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Body", ptr %t222, i32 0, i32 3
  %t226 = load i64, ptr %t225, !tbaa !24
  store i64 %t226, ptr %l138, !tbaa !24
  %t227 = getelementptr %"compiler/views:view", ptr %l19, i32 0, i32 1
  %t228 = load i64, ptr %t227, !tbaa !24
  %t230 = trunc i64 %t228 to i32
  %t231 = getelementptr %"compiler/views:view", ptr %l19, i32 0, i32 1
  %t232 = load i64, ptr %t231, !tbaa !24
  %t234 = trunc i64 %t232 to i32
  %t237 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s14, i32 %t230, i32 %t234)
  store %"compiler/source:Span" %t237, ptr %l143
  br label %bb90
bb90:
  %t238 = load i64, ptr %l131, !tbaa !24
  %t239 = load i64, ptr %l138, !tbaa !24
  %t240 = load %"compiler/source:Span", ptr %l143
  %t241 = call %"compiler/views:fact" @compiler_2fviews_3afact_2ector(ptr %s14, i64 %t238, i64 -1, i32 0, i64 0, i64 0, i1 false, i64 %t239, %"compiler/source:Span" %t240)
  store %"compiler/views:fact" %t241, ptr %l144
  br label %bb91
bb91:
  %t242 = load %"compiler/views:fact", ptr %l144
  store %"compiler/views:fact" %t242, ptr %l27
  %t243 = load i64, ptr %l16, !tbaa !24
  %t245 = getelementptr %"compiler/views:fact", ptr %l27, i32 0, i32 8
  store i64 %t243, ptr %t245, !tbaa !24
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/views:Viewer", ptr %t246, i32 0, i32 2
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/views:Viewer", ptr %t249, i32 0, i32 22
  %t252 = load i64, ptr %t251, !tbaa !24
  %t255 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t248, i64 %t252)
  store ptr %t255, ptr %l150
  br label %bb92
bb92:
  %t256 = load ptr, ptr %l150, !tbaa !29
  %t258 = getelementptr %"compiler/views:summary", ptr %t256, i32 0, i32 2
  %t259 = load %"compiler/views:fact", ptr %l27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t258, %"compiler/views:fact" %t259)
  br label %bb93
bb93:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/views:Viewer", ptr %t262, i32 0, i32 26
  store i1 true, ptr %t264, !tbaa !21
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb94:
  %t265 = load i64, ptr %l18, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l18, !tbaa !24
  br label %bb48
bb95:
  br label %bb96
bb96:
  %t269 = load i64, ptr %l12, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l12, !tbaa !24
  br label %bb30
bb97:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) })
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

define dso_local { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca i64
  %l21 = alloca ptr
  %rv = alloca { i32, { i64, ptr } }
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t5, ptr %l5, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l7, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t20, 1
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load i64, ptr %l1, !tbaa !24
  store i64 %t22, ptr %l8, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/views:Viewer", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 10
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l13
  br label %bb4
bb4:
  %t34 = load i64, ptr %l8, !tbaa !24
  %t35 = load i64, ptr %l13, !tbaa !24
  %t36 = icmp sge i64 %t34, %t35
  br i1 %t36, label %bb5, label %bb6
bb5:
  %t39 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t39, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/views:Viewer", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/load:Loader", ptr %t46, i32 0, i32 10
  %t49 = load i64, ptr %l1, !tbaa !24
  %t52 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store ptr %t52, ptr %l21
  br label %bb8
bb8:
  %t53 = load ptr, ptr %l21, !tbaa !29
  %t55 = getelementptr %"compiler/load:Module", ptr %t53, i32 0, i32 2
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 1
  %t59 = extractvalue { i64, ptr } %t56, 0
  %t60 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t59)
  call void @olang_textcopy(ptr %t60, ptr %t58, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t64 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t62, 1
  store { i32, { i64, ptr } } %t64, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t4 = load ptr, ptr %l10, !tbaa !29
  %t5 = icmp ne ptr %t4, null
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l10, !tbaa !29
  %t8 = load i64, ptr %t7, !range !{i64 0, i64 8}
  %t10 = icmp eq i64 %t8, 3
  store i1 %t10, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l11, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t12, i32 0, i32 1
  %t15 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t14, i32 0, i32 2
  %t16 = load ptr, ptr %t15
  store ptr %t16, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t18, ptr %t19, i1 false, ptr %t21, ptr %l3)
  br label %bb7
bb7:
  br label %bb42
bb8:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l21, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 4
  store i1 %t33, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l22, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t37, i32 0, i32 2
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l5, !tbaa !29
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Elem", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t41, ptr %t45, i1 false, ptr %t47, ptr %l3)
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Elem", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t52, ptr %t56, ptr %t58, ptr %l3)
  br label %bb15
bb15:
  br label %bb42
bb16:
  %t63 = load ptr, ptr %l1, !tbaa !29
  store ptr %t63, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t64 = load ptr, ptr %l39, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb17, label %bb18
bb17:
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 8}
  %t70 = icmp eq i64 %t68, 5
  store i1 %t70, ptr %l40, !tbaa !21
  br label %bb18
bb18:
  %t71 = load i1, ptr %l40, !tbaa !21
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 2
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l6, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Payload", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t78, ptr %t82, i1 false, ptr %t84, ptr %l3)
  br label %bb22
bb22:
  br label %bb42
bb23:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t90 = load ptr, ptr %l51, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load ptr, ptr %l51, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 2
  store i1 %t96, ptr %l52, !tbaa !21
  br label %bb25
bb25:
  %t97 = load i1, ptr %l52, !tbaa !21
  br i1 %t97, label %bb26, label %bb27
bb26:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t100, i32 0, i32 2
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l7, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l7, !tbaa !29
  %t107 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t104, ptr %t105, ptr %t107, ptr %l3)
  br label %bb29
bb29:
  br label %bb42
bb30:
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t113 = load ptr, ptr %l62, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb31, label %bb32
bb31:
  %t116 = load ptr, ptr %l62, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 8}
  %t119 = icmp eq i64 %t117, 6
  store i1 %t119, ptr %l63, !tbaa !21
  br label %bb32
bb32:
  %t120 = load i1, ptr %l63, !tbaa !21
  br i1 %t120, label %bb33, label %bb34
bb33:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t123, i32 0, i32 2
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l8, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l8, !tbaa !29
  %t130 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t127, ptr %t128, ptr %t130, ptr %l3)
  br label %bb36
bb36:
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_2a4a8b72a379b770_7cdc66c7220ef344)
  unreachable
bb42:
  call void @__olang_scope_close(ptr %s0)
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

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca i1
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 3
  %t7 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store { i64, ptr } %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/views:Viewer", ptr %t9, i32 0, i32 3
  %t15 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t11, i64 %a2)
  store { i64, ptr } %t15, ptr %l12
  br label %bb2
bb2:
  %t16 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v0, { i64, ptr } %t17, { i64, ptr } %t18)
  store i1 %t21, ptr %l15
  br label %bb3
bb3:
  %t22 = load i1, ptr %l15, !tbaa !21
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp eq i64 %t25, %t28
  br i1 %t31, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb12
bb6:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb8
bb7:
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t33, ptr %l23, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t38 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 %t36
  %t41 = load i8, ptr %t40, !tbaa !32
  %t43 = icmp eq i8 %t41, 46
  store i1 %t43, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t46, ptr %l29, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i8, ptr %t52, i64 %t49
  %t54 = load i8, ptr %t53, !tbaa !32
  %t56 = icmp eq i8 %t54, 91
  store i1 %t56, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t58 = load i1, ptr %l28, !tbaa !21
  store i1 %t58, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t59 = load i1, ptr %l16, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, %"compiler/views:fact" } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ereadFact(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/views:fact"
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i32
  %l20 = alloca i64
  %l21 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i32
  %l28 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca i32
  %l34 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca i32
  %l39 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i32
  %l65 = alloca i64
  %l66 = alloca i32
  %l69 = alloca { i64, ptr }
  %l70 = alloca i1
  %l71 = alloca i64
  %l75 = alloca ptr
  %l76 = alloca i64
  %l77 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca i32
  %l83 = alloca ptr
  %l86 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca i32
  %l91 = alloca i64
  %l92 = alloca i32
  %l94 = alloca i64
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca i32
  %l99 = alloca i64
  %l100 = alloca i32
  %l102 = alloca i64
  %l104 = alloca { i64, ptr }
  %l105 = alloca i64
  %l106 = alloca i32
  %l107 = alloca i64
  %l108 = alloca i32
  %l110 = alloca i64
  %l111 = alloca i64
  %l112 = alloca i32
  %l113 = alloca i64
  %l114 = alloca i64
  %l116 = alloca { i64, ptr }
  %l117 = alloca i1
  %l118 = alloca i64
  %l123 = alloca %"compiler/source:Span"
  %l124 = alloca %"compiler/views:fact"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/views:fact" }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t1, i64 1)
  store { i64, ptr } %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t5 = extractvalue { i32, i64 } %t4, 1
  %t6 = extractvalue { i32, i64 } %t4, 0
  store i32 %t6, ptr %l16
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb3, label %ok.8, !prof !99
ok.8:
  store i64 %t5, ptr %l15
  br label %bb2
bb2:
  %t9 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t9, i64 %t10)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l18
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb6, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l17
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t17 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:fact" } %t17, ptr %rv
  br label %ret
bb5:
  %t18 = load i64, ptr %l17, !tbaa !24
  store i64 %t18, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  br label %bb4
bb7:
  %t19 = load i64, ptr %l12, !tbaa !24
  store i64 %t19, ptr %l2, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l21, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t21, i64 2)
  store { i64, ptr } %t23, ptr %l23
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l21, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t26 = call { i32, i64 } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleOf(ptr %v0, ptr %v1, ptr %t24, { i64, ptr } %t25)
  %t27 = extractvalue { i32, i64 } %t26, 1
  %t28 = extractvalue { i32, i64 } %t26, 0
  store i32 %t28, ptr %l25
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb10, label %ok.30, !prof !99
ok.30:
  store i64 %t27, ptr %l24
  br label %bb9
bb9:
  %t31 = load i64, ptr %l24, !tbaa !24
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb11
bb10:
  %t32 = load i32, ptr %l25, !tbaa !23
  %t33 = lshr i32 %t32, 16
  %t34 = and i32 %t32, 65535
  %t35 = icmp eq i32 %t33, 1
  %t36 = select i1 %t35, i32 1, i32 0
  %t37 = icmp eq i32 %t32, 0
  %t38 = shl i32 %t36, 16
  %t39 = or i32 %t38, %t34
  %t40 = select i1 %t37, i32 0, i32 %t39
  call void @__olang_scope_close(ptr %s0)
  %t42 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 %t40, 0
  store { i32, %"compiler/views:fact" } %t42, ptr %rv
  br label %ret
bb11:
  %t43 = load i64, ptr %l20, !tbaa !24
  store i64 %t43, ptr %l3, !tbaa !24
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t44, i64 3)
  store { i64, ptr } %t46, ptr %l28
  br label %bb12
bb12:
  %t47 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t47, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t48, ptr %l29
  br label %bb13
bb13:
  %t49 = load i1, ptr %l29, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  store i32 0, ptr %l30, !tbaa !23
  br label %bb18
bb15:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/views:Viewer", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l34, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t60, i64 3)
  store { i64, ptr } %t62, ptr %l36
  br label %bb16
bb16:
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t65 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t63, { i64, ptr } %t64)
  store i32 %t65, ptr %l37
  br label %bb17
bb17:
  %t66 = load i32, ptr %l37, !tbaa !23
  store i32 %t66, ptr %l30, !tbaa !23
  br label %bb18
bb18:
  %t67 = load i32, ptr %l30, !tbaa !23
  store i32 %t67, ptr %l4, !tbaa !23
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t68, i64 4)
  store { i64, ptr } %t70, ptr %l39
  br label %bb19
bb19:
  %t71 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t71, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t72, ptr %l40
  br label %bb20
bb20:
  %t73 = load i1, ptr %l40, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t77 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:fact" } %t77, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l43, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t82 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t79, i64 4)
  store { i64, ptr } %t82, ptr %l46
  br label %bb24
bb24:
  %t83 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t83, ptr %l47, !tbaa !27
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t87 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t84, i64 4)
  store { i64, ptr } %t87, ptr %l50
  br label %bb25
bb25:
  %t88 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t88, 0
  store i64 %t91, ptr %l53, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l54, !tbaa !24
  %t94 = icmp sge i64 1, 0
  br i1 %t94, label %bb26, label %bb27
bb26:
  %t96 = load i64, ptr %l53, !tbaa !24
  %t97 = icmp sle i64 1, %t96
  br i1 %t97, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_5517ec302ba00347_a7bc83f18394e19b)
  unreachable
bb28:
  %t99 = load i64, ptr %l53, !tbaa !24
  %t100 = load i64, ptr %l54, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_5517ec302ba00347_a7bc83f18394e19b)
  unreachable
bb30:
  %t103 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l53, !tbaa !24
  %t106 = getelementptr i8, ptr %t104, i64 1
  %t107 = sub i64 %t105, 1
  %t108 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  %t110 = load ptr, ptr %l43, !tbaa !29
  %t112 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v1, ptr %t110, { i64, ptr } %t109)
  store i64 %t112, ptr %l59
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_5517ec302ba00347_a7bc83f18394e19b)
  unreachable
bb32:
  %t113 = load i64, ptr %l59, !tbaa !24
  store i64 %t113, ptr %l5, !tbaa !24
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t114, i64 5)
  store { i64, ptr } %t116, ptr %l62
  br label %bb33
bb33:
  %t117 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t118 = extractvalue { i32, i64 } %t117, 1
  %t119 = extractvalue { i32, i64 } %t117, 0
  store i32 %t119, ptr %l64
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb35, label %ok.121, !prof !99
ok.121:
  store i64 %t118, ptr %l63
  br label %bb34
bb34:
  %t122 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t123 = load i64, ptr %l63, !tbaa !24
  %t124 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t122, i64 %t123)
  %t125 = extractvalue { i32, i64 } %t124, 1
  %t126 = extractvalue { i32, i64 } %t124, 0
  store i32 %t126, ptr %l66
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb38, label %ok.128, !prof !99
ok.128:
  store i64 %t125, ptr %l65
  br label %bb37
bb35:
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t130 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:fact" } %t130, ptr %rv
  br label %ret
bb37:
  %t131 = load i64, ptr %l65, !tbaa !24
  store i64 %t131, ptr %l60, !tbaa !24
  br label %bb39
bb38:
  br label %bb36
bb39:
  %t132 = load i64, ptr %l60, !tbaa !24
  store i64 %t132, ptr %l6, !tbaa !24
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t133, i64 7)
  store { i64, ptr } %t135, ptr %l69
  br label %bb40
bb40:
  %t136 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t137 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t136, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t137, ptr %l70
  br label %bb41
bb41:
  %t138 = load i1, ptr %l70, !tbaa !21
  br i1 %t138, label %bb42, label %bb43
bb42:
  store i64 -1, ptr %l71, !tbaa !24
  br label %bb49
bb43:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/views:Viewer", ptr %t139, i32 0, i32 0
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/load:Loader", ptr %t145, i32 0, i32 10
  store ptr %t147, ptr %l75, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l77, !tbaa !29
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t149, i64 7)
  store { i64, ptr } %t151, ptr %l79
  br label %bb44
bb44:
  %t152 = load ptr, ptr %l77, !tbaa !29
  %t153 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t154 = call { i32, i64 } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleOf(ptr %v0, ptr %v1, ptr %t152, { i64, ptr } %t153)
  %t155 = extractvalue { i32, i64 } %t154, 1
  %t156 = extractvalue { i32, i64 } %t154, 0
  store i32 %t156, ptr %l81
  %t157 = icmp ne i32 %t156, 0
  br i1 %t157, label %bb46, label %ok.158, !prof !99
ok.158:
  store i64 %t155, ptr %l80
  br label %bb45
bb45:
  %t159 = load i64, ptr %l80, !tbaa !24
  store i64 %t159, ptr %l76, !tbaa !24
  br label %bb47
bb46:
  %t160 = load i32, ptr %l81, !tbaa !23
  %t161 = lshr i32 %t160, 16
  %t162 = and i32 %t160, 65535
  %t163 = icmp eq i32 %t161, 1
  %t164 = select i1 %t163, i32 1, i32 0
  %t165 = icmp eq i32 %t160, 0
  %t166 = shl i32 %t164, 16
  %t167 = or i32 %t166, %t162
  %t168 = select i1 %t165, i32 0, i32 %t167
  call void @__olang_scope_close(ptr %s0)
  %t170 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 %t168, 0
  store { i32, %"compiler/views:fact" } %t170, ptr %rv
  br label %ret
bb47:
  %t171 = load ptr, ptr %l75, !tbaa !29
  %t172 = load i64, ptr %l76, !tbaa !24
  %t173 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t171, i64 %t172)
  store ptr %t173, ptr %l83
  br label %bb48
bb48:
  %t174 = load ptr, ptr %l83, !tbaa !29
  %t176 = getelementptr %"compiler/load:Module", ptr %t174, i32 0, i32 4
  %t177 = load i64, ptr %t176, !tbaa !24
  store i64 %t177, ptr %l71, !tbaa !24
  br label %bb49
bb49:
  %t179 = load i64, ptr %l71, !tbaa !24
  store i64 %t179, ptr %l7, !tbaa !24
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t180, i64 8)
  store { i64, ptr } %t182, ptr %l88
  br label %bb50
bb50:
  %t183 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t184 = extractvalue { i32, i64 } %t183, 1
  %t185 = extractvalue { i32, i64 } %t183, 0
  store i32 %t185, ptr %l90
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb52, label %ok.187, !prof !99
ok.187:
  store i64 %t184, ptr %l89
  br label %bb51
bb51:
  %t188 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t189 = load i64, ptr %l89, !tbaa !24
  %t190 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t188, i64 %t189)
  %t191 = extractvalue { i32, i64 } %t190, 1
  %t192 = extractvalue { i32, i64 } %t190, 0
  store i32 %t192, ptr %l92
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb55, label %ok.194, !prof !99
ok.194:
  store i64 %t191, ptr %l91
  br label %bb54
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t196 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:fact" } %t196, ptr %rv
  br label %ret
bb54:
  %t197 = load i64, ptr %l91, !tbaa !24
  store i64 %t197, ptr %l86, !tbaa !24
  br label %bb56
bb55:
  br label %bb53
bb56:
  %t198 = load i64, ptr %l86, !tbaa !24
  store i64 %t198, ptr %l8, !tbaa !24
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t201 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t199, i64 9)
  store { i64, ptr } %t201, ptr %l96
  br label %bb57
bb57:
  %t202 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t203 = extractvalue { i32, i64 } %t202, 1
  %t204 = extractvalue { i32, i64 } %t202, 0
  store i32 %t204, ptr %l98
  %t205 = icmp ne i32 %t204, 0
  br i1 %t205, label %bb59, label %ok.206, !prof !99
ok.206:
  store i64 %t203, ptr %l97
  br label %bb58
bb58:
  %t207 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t208 = load i64, ptr %l97, !tbaa !24
  %t209 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t207, i64 %t208)
  %t210 = extractvalue { i32, i64 } %t209, 1
  %t211 = extractvalue { i32, i64 } %t209, 0
  store i32 %t211, ptr %l100
  %t212 = icmp ne i32 %t211, 0
  br i1 %t212, label %bb62, label %ok.213, !prof !99
ok.213:
  store i64 %t210, ptr %l99
  br label %bb61
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t215 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:fact" } %t215, ptr %rv
  br label %ret
bb61:
  %t216 = load i64, ptr %l99, !tbaa !24
  store i64 %t216, ptr %l94, !tbaa !24
  br label %bb63
bb62:
  br label %bb60
bb63:
  %t217 = load i64, ptr %l94, !tbaa !24
  store i64 %t217, ptr %l9, !tbaa !24
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t218, i64 10)
  store { i64, ptr } %t220, ptr %l104
  br label %bb64
bb64:
  %t221 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t222 = extractvalue { i32, i64 } %t221, 1
  %t223 = extractvalue { i32, i64 } %t221, 0
  store i32 %t223, ptr %l106
  %t224 = icmp ne i32 %t223, 0
  br i1 %t224, label %bb66, label %ok.225, !prof !99
ok.225:
  store i64 %t222, ptr %l105
  br label %bb65
bb65:
  %t226 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t227 = load i64, ptr %l105, !tbaa !24
  %t228 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v1, { i64, ptr } %t226, i64 %t227)
  %t229 = extractvalue { i32, i64 } %t228, 1
  %t230 = extractvalue { i32, i64 } %t228, 0
  store i32 %t230, ptr %l108
  %t231 = icmp ne i32 %t230, 0
  br i1 %t231, label %bb69, label %ok.232, !prof !99
ok.232:
  store i64 %t229, ptr %l107
  br label %bb68
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t234 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:fact" } %t234, ptr %rv
  br label %ret
bb68:
  %t235 = load i64, ptr %l107, !tbaa !24
  store i64 %t235, ptr %l102, !tbaa !24
  br label %bb70
bb69:
  br label %bb67
bb70:
  %t236 = load i64, ptr %l102, !tbaa !24
  store i64 %t236, ptr %l10, !tbaa !24
  %t237 = load i64, ptr %l2, !tbaa !24
  store i64 %t237, ptr %l110, !tbaa !24
  %t238 = load i64, ptr %l3, !tbaa !24
  store i64 %t238, ptr %l111, !tbaa !24
  %t239 = load i32, ptr %l4, !tbaa !23
  store i32 %t239, ptr %l112, !tbaa !23
  %t240 = load i64, ptr %l5, !tbaa !24
  store i64 %t240, ptr %l113, !tbaa !24
  %t241 = load i64, ptr %l6, !tbaa !24
  store i64 %t241, ptr %l114, !tbaa !24
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t242, i64 6)
  store { i64, ptr } %t244, ptr %l116
  br label %bb71
bb71:
  %t245 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t245, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t246, ptr %l117
  br label %bb72
bb72:
  %t247 = load i64, ptr %l7, !tbaa !24
  store i64 %t247, ptr %l118, !tbaa !24
  %t248 = load i64, ptr %l8, !tbaa !24
  %t250 = trunc i64 %t248 to i32
  %t251 = load i64, ptr %l9, !tbaa !24
  %t253 = trunc i64 %t251 to i32
  %t256 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t250, i32 %t253)
  store %"compiler/source:Span" %t256, ptr %l123
  br label %bb73
bb73:
  %t257 = load i64, ptr %l110, !tbaa !24
  %t258 = load i64, ptr %l111, !tbaa !24
  %t259 = load i32, ptr %l112, !tbaa !23
  %t260 = load i64, ptr %l113, !tbaa !24
  %t261 = load i64, ptr %l114, !tbaa !24
  %t262 = load i1, ptr %l117, !tbaa !21
  %t263 = load i64, ptr %l118, !tbaa !24
  %t264 = load %"compiler/source:Span", ptr %l123
  %t265 = call %"compiler/views:fact" @compiler_2fviews_3afact_2ector(ptr %s0, i64 %t257, i64 %t258, i32 %t259, i64 %t260, i64 %t261, i1 %t262, i64 %t263, %"compiler/source:Span" %t264)
  store %"compiler/views:fact" %t265, ptr %l124
  br label %bb74
bb74:
  %t266 = load %"compiler/views:fact", ptr %l124
  store %"compiler/views:fact" %t266, ptr %l11
  %t267 = load i64, ptr %l10, !tbaa !24
  %t269 = getelementptr %"compiler/views:fact", ptr %l11, i32 0, i32 8
  store i64 %t267, ptr %t269, !tbaa !24
  %t270 = load %"compiler/views:fact", ptr %l11
  call void @__olang_scope_close(ptr %s0)
  %t272 = insertvalue { i32, %"compiler/views:fact" } zeroinitializer, %"compiler/views:fact" %t270, 1
  store { i32, %"compiler/views:fact" } %t272, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/views:fact" }, ptr %rv
  ret { i32, %"compiler/views:fact" } %rr
}

define dso_local i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ereadSummary(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca %"compiler/views:fact"
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l26 = alloca i64
  %l28 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca i1
  %l34 = alloca %"compiler/views:summary"
  %l36 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i1
  %l47 = alloca ptr
  %l50 = alloca i64
  %l52 = alloca i64
  %l57 = alloca i32
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca i64
  %l71 = alloca i64
  %l76 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l87 = alloca i1
  %l88 = alloca i64
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca i32
  %l92 = alloca i64
  %l93 = alloca i32
  %l97 = alloca i1
  %l98 = alloca i64
  %l100 = alloca i64
  %l108 = alloca i64
  %l112 = alloca i64
  %l115 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l137 = alloca ptr
  %l139 = alloca i64
  %l142 = alloca %"compiler/views:fact"
  %l145 = alloca %"compiler/views:fact"
  %l146 = alloca i32
  %l149 = alloca { i64, ptr }
  %l151 = alloca i1
  %l155 = alloca i1
  %l159 = alloca i1
  %l165 = alloca %"compiler/views:summary"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca i32
  %t23 = alloca %"compiler/views:summary", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %a2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l23
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t5 = call ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v1, ptr %v1, { i64, ptr } %t4)
  store ptr %t5, ptr %l24
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l24, !tbaa !29
  store ptr %t6, ptr %l3, !tbaa !29
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t7)
  store i64 %t9, ptr %l26
  br label %bb3
bb3:
  %t10 = load i64, ptr %l26, !tbaa !24
  %t11 = icmp slt i64 %t10, 2
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb8
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t13, i64 1)
  store { i64, ptr } %t15, ptr %l30
  br label %bb6
bb6:
  %t16 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t17, ptr %l31
  br label %bb7
bb7:
  %t18 = load i1, ptr %l31, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l28, !tbaa !21
  br label %bb8
bb8:
  %t21 = load i1, ptr %l28, !tbaa !21
  br i1 %t21, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  call void @compiler_2fviews_3asummary_2ector(ptr %t23, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t23, i64 136, i1 false)
  br label %bb12
bb12:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 136, i64 8)
  store ptr %t24, ptr %lp4
  %t25 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %l34, i64 136, i1 false)
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t26, i64 0)
  store { i64, ptr } %t28, ptr %l36
  br label %bb13
bb13:
  %t29 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t30 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t30, ptr %l37
  br label %bb14
bb14:
  %t31 = load i1, ptr %l37, !tbaa !21
  %t32 = load ptr, ptr %lp4
  %t33 = getelementptr %"compiler/views:summary", ptr %t32, i32 0, i32 4
  store i1 %t31, ptr %t33, !tbaa !21
  %t34 = load ptr, ptr %lp4
  %t35 = getelementptr %"compiler/views:summary", ptr %t34, i32 0, i32 4
  %t36 = load i1, ptr %t35, !tbaa !21
  store i1 %t36, ptr %l38, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalkable(ptr %v0, ptr %t37, i64 %t38)
  store i1 %t41, ptr %l41
  br label %bb15
bb15:
  %t42 = load i1, ptr %l38, !tbaa !21
  %t43 = load i1, ptr %l41, !tbaa !21
  %t44 = icmp ne i1 %t42, %t43
  br i1 %t44, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/views:Viewer", ptr %t47, i32 0, i32 1
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l47
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l47, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 5
  store ptr %t56, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb20
bb20:
  %t58 = load i64, ptr %l6, !tbaa !24
  store i64 %t58, ptr %l50, !tbaa !24
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l52
  br label %bb21
bb21:
  %t62 = load i64, ptr %l50, !tbaa !24
  %t63 = load i64, ptr %l52, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t69 = load i64, ptr %l6, !tbaa !24
  %t72 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t68, i64 %t69)
  store i32 %t72, ptr %l57
  br label %bb25
bb25:
  %t73 = load i32, ptr %l57, !tbaa !23
  store i32 %t73, ptr %l7, !tbaa !23
  %t74 = load ptr, ptr %lp4
  %t75 = getelementptr %"compiler/views:summary", ptr %t74, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t75, i1 false)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb20
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t84 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t81, i64 1)
  store { i64, ptr } %t84, ptr %l63
  br label %bb29
bb29:
  %t85 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t85, ptr %l64, !tbaa !27
  %t86 = load ptr, ptr %l3, !tbaa !29
  %t89 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t86, i64 1)
  store { i64, ptr } %t89, ptr %l67
  br label %bb30
bb30:
  %t90 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t90, 0
  store i64 %t93, ptr %l70, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l71, !tbaa !24
  %t96 = icmp sge i64 1, 0
  br i1 %t96, label %bb31, label %bb32
bb31:
  %t98 = load i64, ptr %l70, !tbaa !24
  %t99 = icmp sle i64 1, %t98
  br i1 %t99, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_ea123554da78e931_2795c92c247c1c25)
  unreachable
bb33:
  %t101 = load i64, ptr %l70, !tbaa !24
  %t102 = load i64, ptr %l71, !tbaa !24
  %t103 = icmp sle i64 %t101, %t102
  br i1 %t103, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_ea123554da78e931_2795c92c247c1c25)
  unreachable
bb35:
  %t105 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = load i64, ptr %l70, !tbaa !24
  %t108 = getelementptr i8, ptr %t106, i64 1
  %t109 = sub i64 %t107, 1
  %t110 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t108, 1
  %t113 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s6, ptr %s6, { i64, ptr } %t111, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store { i64, ptr } %t113, ptr %l76
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_ea123554da78e931_2795c92c247c1c25)
  unreachable
bb37:
  %t114 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t114, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l10, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s7
  %t119 = load i64, ptr %l9, !tbaa !24
  %t120 = load i64, ptr %l10, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s7)
  br label %bb61
bb40:
  br label %bb41
bb41:
  %t127 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t127, ptr %l83, !tbaa !27
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %t131, i64 %t128
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !37
  store { i64, ptr } %t133, ptr %l11, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t137 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s7, { i64, ptr } %t135, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t137, ptr %l87
  br label %bb42
bb42:
  %t138 = load i1, ptr %l87, !tbaa !21
  br i1 %t138, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb44:
  br label %bb45
bb45:
  %t139 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t139, ptr %l89, !tbaa !27
  %t140 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s7, i64 10)
  %t141 = extractvalue { i32, i64 } %t140, 1
  %t142 = extractvalue { i32, i64 } %t140, 0
  store i32 %t142, ptr %l91
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb47, label %ok.144, !prof !99
ok.144:
  store i64 %t141, ptr %l90
  br label %bb46
bb46:
  %t145 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t146 = load i64, ptr %l90, !tbaa !24
  %t147 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s6, { i64, ptr } %t145, i64 %t146)
  %t148 = extractvalue { i32, i64 } %t147, 1
  %t149 = extractvalue { i32, i64 } %t147, 0
  store i32 %t149, ptr %l93
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb50, label %ok.151, !prof !99
ok.151:
  store i64 %t148, ptr %l92
  br label %bb49
bb47:
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb49:
  %t153 = load i64, ptr %l92, !tbaa !24
  store i64 %t153, ptr %l88, !tbaa !24
  br label %bb51
bb50:
  br label %bb48
bb51:
  %t154 = load i64, ptr %l88, !tbaa !24
  store i64 %t154, ptr %l12, !tbaa !24
  %t155 = load i64, ptr %l12, !tbaa !24
  %t157 = icmp slt i64 %t155, 0
  br i1 %t157, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb55
bb53:
  %t159 = load i64, ptr %l12, !tbaa !24
  store i64 %t159, ptr %l98, !tbaa !24
  %t160 = load ptr, ptr %lp4
  %t161 = getelementptr %"compiler/views:summary", ptr %t160, i32 0, i32 3
  %t163 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v2, ptr %t161)
  store i64 %t163, ptr %l100
  br label %bb54
bb54:
  %t164 = load i64, ptr %l98, !tbaa !24
  %t165 = load i64, ptr %l100, !tbaa !24
  %t166 = icmp sge i64 %t164, %t165
  store i1 %t166, ptr %l97, !tbaa !21
  br label %bb55
bb55:
  %t168 = load i1, ptr %l97, !tbaa !21
  br i1 %t168, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t170 = load ptr, ptr %lp4
  %t171 = getelementptr %"compiler/views:summary", ptr %t170, i32 0, i32 3
  %t172 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v2, ptr %t171, i64 %t172, i1 true)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb60:
  %t175 = load i64, ptr %l9, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l9, !tbaa !24
  br label %bb38
bb61:
  call void @__olang_scope_close(ptr %s6)
  store i64 2, ptr %l13, !tbaa !24
  %t179 = load ptr, ptr %l3, !tbaa !29
  %t181 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t179)
  store i64 %t181, ptr %l108
  br label %bb62
bb62:
  %t182 = load i64, ptr %l108, !tbaa !24
  store i64 %t182, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t183 = load i64, ptr %l14, !tbaa !24
  %t184 = load i64, ptr %l13, !tbaa !24
  %t187 = icmp sgt i64 %t183, %t184
  br i1 %t187, label %bb63, label %bb64
bb63:
  %t189 = load i64, ptr %l15, !tbaa !24
  %t191 = icmp sgt i64 %t189, 0
  br i1 %t191, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb68
bb65:
  %t193 = load i64, ptr %l14, !tbaa !24
  %t194 = load i64, ptr %l13, !tbaa !24
  %t197 = sub i64 %t193, %t194
  %t198 = load i64, ptr %l15, !tbaa !24
  %t201 = add i64 %t197, %t198
  %t203 = sub i64 %t201, 1
  %t204 = load i64, ptr %l15, !tbaa !24
  %t207 = sdiv i64 %t203, %t204
  store i64 %t207, ptr %l115, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb67
bb67:
  %t209 = load i64, ptr %l115, !tbaa !24
  store i64 %t209, ptr %l112, !tbaa !24
  br label %bb68
bb68:
  %t210 = load i64, ptr %l112, !tbaa !24
  store i64 %t210, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb69
bb69:
  store %olang.scope zeroinitializer, ptr %s13
  %t211 = load i64, ptr %l17, !tbaa !24
  %t212 = load i64, ptr %l16, !tbaa !24
  %t215 = icmp slt i64 %t211, %t212
  %t217 = xor i1 %t215, true
  br i1 %t217, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s13)
  br label %bb108
bb71:
  br label %bb72
bb72:
  %t219 = load i64, ptr %l13, !tbaa !24
  %t220 = load i64, ptr %l17, !tbaa !24
  %t221 = load i64, ptr %l15, !tbaa !24
  %t224 = mul i64 %t220, %t221
  %t227 = add i64 %t219, %t224
  %t229 = load ptr, ptr %l3, !tbaa !29
  %t233 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t229, i64 %t227)
  store { i64, ptr } %t233, ptr %l135
  br label %bb73
bb73:
  %t234 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t235 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t234, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store { i64, ptr } %t235, ptr %l136
  br label %bb74
bb74:
  %t236 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t237 = call ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v1, ptr %v1, { i64, ptr } %t236)
  store ptr %t237, ptr %l137
  br label %bb75
bb75:
  %t238 = load ptr, ptr %l137, !tbaa !29
  store ptr %t238, ptr %l19, !tbaa !29
  %t239 = load ptr, ptr %l19, !tbaa !29
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t239)
  store i64 %t241, ptr %l139
  br label %bb76
bb76:
  %t242 = load i64, ptr %l139, !tbaa !24
  %t243 = icmp ne i64 %t242, 11
  br i1 %t243, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l19, !tbaa !29
  %t250 = call { i32, %"compiler/views:fact" } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ereadFact(ptr %v0, ptr %v1, ptr %t246, ptr %t247)
  %t251 = extractvalue { i32, %"compiler/views:fact" } %t250, 1
  %t252 = extractvalue { i32, %"compiler/views:fact" } %t250, 0
  store i32 %t252, ptr %l146
  %t253 = icmp ne i32 %t252, 0
  br i1 %t253, label %bb81, label %ok.254, !prof !99
ok.254:
  store %"compiler/views:fact" %t251, ptr %l145
  br label %bb80
bb80:
  %t255 = load %"compiler/views:fact", ptr %l145
  store %"compiler/views:fact" %t255, ptr %l142
  br label %bb82
bb81:
  %t256 = load i32, ptr %l146, !tbaa !23
  %t257 = lshr i32 %t256, 16
  %t258 = and i32 %t256, 65535
  %t259 = icmp eq i32 %t257, 1
  %t260 = select i1 %t259, i32 1, i32 0
  %t261 = icmp eq i32 %t256, 0
  %t262 = shl i32 %t260, 16
  %t263 = or i32 %t262, %t258
  %t264 = select i1 %t261, i32 0, i32 %t263
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t264, ptr %rv
  br label %ret
bb82:
  %t266 = load %"compiler/views:fact", ptr %l142
  store %"compiler/views:fact" %t266, ptr %l20
  %t267 = load ptr, ptr %l19, !tbaa !29
  %t269 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %s13, ptr %t267, i64 0)
  store { i64, ptr } %t269, ptr %l149
  br label %bb83
bb83:
  %t270 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t270, ptr %l21, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t273 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s13, ptr %s13, { i64, ptr } %t271, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t273, ptr %l151
  br label %bb84
bb84:
  %t274 = load i1, ptr %l151, !tbaa !21
  br i1 %t274, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t275 = load ptr, ptr %lp4
  %t276 = getelementptr %"compiler/views:summary", ptr %t275, i32 0, i32 0
  %t277 = load %"compiler/views:fact", ptr %l20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v2, ptr %t276, %"compiler/views:fact" %t277)
  br label %bb88
bb88:
  br label %bb106
bb89:
  %t280 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t282 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s13, ptr %s13, { i64, ptr } %t280, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t282, ptr %l155
  br label %bb90
bb90:
  %t283 = load i1, ptr %l155, !tbaa !21
  br i1 %t283, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb95
bb93:
  %t284 = load ptr, ptr %lp4
  %t285 = getelementptr %"compiler/views:summary", ptr %t284, i32 0, i32 1
  %t286 = load %"compiler/views:fact", ptr %l20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v2, ptr %t285, %"compiler/views:fact" %t286)
  br label %bb94
bb94:
  br label %bb106
bb95:
  %t289 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t291 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s13, ptr %s13, { i64, ptr } %t289, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t291, ptr %l159
  br label %bb96
bb96:
  %t292 = load i1, ptr %l159, !tbaa !21
  br i1 %t292, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t293 = load ptr, ptr %lp4
  %t294 = getelementptr %"compiler/views:summary", ptr %t293, i32 0, i32 2
  %t295 = load %"compiler/views:fact", ptr %l20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v2, ptr %t294, %"compiler/views:fact" %t295)
  br label %bb100
bb100:
  br label %bb106
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb105:
  call void @__olang_check_failed(ptr @olang_loc_8aef76ae2a822f83_6536a40cc5df6d07)
  unreachable
bb106:
  call void @__olang_scope_close(ptr %s13)
  br label %bb107
bb107:
  %t299 = load i64, ptr %l17, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l17, !tbaa !24
  br label %bb69
bb108:
  %t303 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %l165, ptr %t303, i64 136, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l165, i64 136, i1 false)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca ptr
  %l79 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
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
  store i64 0, ptr %l20, !tbaa !24
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
  store i64 %t28, ptr %l23, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb5
bb5:
  %t30 = load i64, ptr %l23, !tbaa !24
  store i64 %t30, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l20, !tbaa !24
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
  br label %bb70
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
  store ptr %t55, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t56 = load ptr, ptr %l44, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load ptr, ptr %l44, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 3
  store i1 %t62, ptr %l45, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l45, !tbaa !21
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
  br label %bb68
bb19:
  %t73 = load ptr, ptr %l2, !tbaa !29
  store ptr %t73, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t74 = load ptr, ptr %l52, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l52, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 8}
  %t80 = icmp eq i64 %t78, 4
  store i1 %t80, ptr %l53, !tbaa !21
  br label %bb21
bb21:
  %t81 = load i1, ptr %l53, !tbaa !21
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
  br label %bb68
bb25:
  %t94 = load ptr, ptr %l2, !tbaa !29
  store ptr %t94, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t95 = load ptr, ptr %l61, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t98 = load ptr, ptr %l61, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 8}
  %t101 = icmp eq i64 %t99, 5
  store i1 %t101, ptr %l62, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l62, !tbaa !21
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
  br label %bb68
bb31:
  %t115 = load ptr, ptr %l2, !tbaa !29
  store ptr %t115, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t116 = load ptr, ptr %l70, !tbaa !29
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %bb32, label %bb33
bb32:
  %t119 = load ptr, ptr %l70, !tbaa !29
  %t120 = load i64, ptr %t119, !range !{i64 0, i64 8}
  %t122 = icmp eq i64 %t120, 2
  store i1 %t122, ptr %l71, !tbaa !21
  br label %bb33
bb33:
  %t123 = load i1, ptr %l71, !tbaa !21
  br i1 %t123, label %bb34, label %bb35
bb34:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t126, i32 0, i32 2
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l12, !tbaa !29
  br label %bb36
bb35:
  br label %bb53
bb36:
  %t130 = load ptr, ptr %l12, !tbaa !29
  %t132 = call ptr @compiler_2fviews_2eunAway(ptr %v1, ptr %v1, ptr %t130)
  store ptr %t132, ptr %l77
  br label %bb37
bb37:
  %t133 = load ptr, ptr %l77, !tbaa !29
  store ptr %t133, ptr %l13, !tbaa !29
  %t134 = load ptr, ptr %l13, !tbaa !29
  store ptr %t134, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t135 = load ptr, ptr %l78, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb38, label %bb39
bb38:
  %t138 = load ptr, ptr %l78, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 18}
  %t141 = icmp eq i64 %t139, 2
  store i1 %t141, ptr %l79, !tbaa !21
  br label %bb39
bb39:
  %t142 = load i1, ptr %l79, !tbaa !21
  br i1 %t142, label %bb40, label %bb41
bb40:
  %t143 = load ptr, ptr %l13, !tbaa !29
  %t145 = getelementptr { i64, [5 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t145, i32 0, i32 2
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l14, !tbaa !29
  br label %bb46
bb41:
  %t149 = load ptr, ptr %l13, !tbaa !29
  store ptr %t149, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t150 = load ptr, ptr %l84, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb42, label %bb43
bb42:
  %t153 = load ptr, ptr %l84, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 18}
  %t156 = icmp eq i64 %t154, 3
  store i1 %t156, ptr %l85, !tbaa !21
  br label %bb43
bb43:
  %t157 = load i1, ptr %l85, !tbaa !21
  br i1 %t157, label %bb44, label %bb45
bb44:
  %t158 = load ptr, ptr %l13, !tbaa !29
  %t160 = getelementptr { i64, [5 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t160, i32 0, i32 2
  %t162 = load ptr, ptr %t161
  store ptr %t162, ptr %l14, !tbaa !29
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t164 = load ptr, ptr %l14, !tbaa !29
  store ptr %t164, ptr %l2, !tbaa !29
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  store ptr null, ptr %rv
  br label %ret
bb51:
  call void @__olang_check_failed(ptr @olang_loc_945ffbf6072962e3_f3ad5bbe10c5f487)
  unreachable
bb52:
  br label %bb68
bb53:
  %t168 = load ptr, ptr %l2, !tbaa !29
  store ptr %t168, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t169 = load ptr, ptr %l93, !tbaa !29
  %t170 = icmp ne ptr %t169, null
  br i1 %t170, label %bb54, label %bb55
bb54:
  %t172 = load ptr, ptr %l93, !tbaa !29
  %t173 = load i64, ptr %t172, !range !{i64 0, i64 8}
  %t175 = icmp eq i64 %t173, 0
  store i1 %t175, ptr %l94, !tbaa !21
  br label %bb55
bb55:
  %t176 = load i1, ptr %l94, !tbaa !21
  br i1 %t176, label %bb56, label %bb57
bb56:
  br label %bb62
bb57:
  %t177 = load ptr, ptr %l2, !tbaa !29
  store ptr %t177, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t178 = load ptr, ptr %l97, !tbaa !29
  %t179 = icmp ne ptr %t178, null
  br i1 %t179, label %bb58, label %bb59
bb58:
  %t181 = load ptr, ptr %l97, !tbaa !29
  %t182 = load i64, ptr %t181, !range !{i64 0, i64 8}
  %t184 = icmp eq i64 %t182, 1
  store i1 %t184, ptr %l98, !tbaa !21
  br label %bb59
bb59:
  %t185 = load i1, ptr %l98, !tbaa !21
  br i1 %t185, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  %t186 = load ptr, ptr %l2, !tbaa !29
  store ptr %t186, ptr %rv
  br label %ret
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  store ptr null, ptr %rv
  br label %ret
bb67:
  call void @__olang_check_failed(ptr @olang_loc_f83bd81acd9884e2_c22158a061119526)
  unreachable
bb68:
  br label %bb69
bb69:
  %t189 = load i64, ptr %l7, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l7, !tbaa !24
  br label %bb7
bb70:
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"compiler/views:state"
  %l13 = alloca %"compiler/views:state"
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca %"compiler/views:state"
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l35 = alloca i1
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca ptr
  %l61 = alloca i1
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca i32
  %l89 = alloca ptr
  %l90 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l113 = alloca %"compiler/views:state"
  %l115 = alloca %"compiler/views:state"
  %l117 = alloca %"compiler/views:state"
  %l119 = alloca %"compiler/views:state"
  %l133 = alloca ptr
  %l134 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca i1
  %l155 = alloca i64
  %l159 = alloca i1
  %l163 = alloca ptr
  %l178 = alloca ptr
  %l180 = alloca ptr
  %l182 = alloca %"compiler/views:state"
  %l184 = alloca %"compiler/views:state"
  %l188 = alloca ptr
  %l190 = alloca ptr
  %l192 = alloca %"compiler/views:state"
  %l194 = alloca %"compiler/views:state"
  %l196 = alloca ptr
  %l197 = alloca i1
  %l209 = alloca ptr
  %l210 = alloca i1
  %l221 = alloca ptr
  %l222 = alloca i1
  %l225 = alloca ptr
  %l226 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i1
  %l245 = alloca ptr
  %l246 = alloca i1
  %l262 = alloca %"compiler/views:state"
  %l264 = alloca %"compiler/views:state"
  %l270 = alloca ptr
  %l271 = alloca i1
  %l280 = alloca ptr
  %l281 = alloca i1
  %l284 = alloca ptr
  %l285 = alloca i1
  %l292 = alloca i64
  %l301 = alloca i1
  %l304 = alloca i64
  %l315 = alloca ptr
  %l316 = alloca i1
  %l327 = alloca ptr
  %l328 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %t164 = alloca %"compiler/views:state", align 8
  %t166 = alloca %"compiler/views:state", align 8
  %t169 = alloca %"compiler/views:state", align 8
  %t171 = alloca %"compiler/views:state", align 8
  %t307 = alloca %"compiler/views:state", align 8
  %t309 = alloca %"compiler/views:state", align 8
  %t312 = alloca %"compiler/views:state", align 8
  %t317 = alloca %"compiler/views:state", align 8
  %t319 = alloca %"compiler/views:state", align 8
  %t322 = alloca %"compiler/views:state", align 8
  %t476 = alloca %"compiler/views:state", align 8
  %t478 = alloca %"compiler/views:state", align 8
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
  store i1 true, ptr %l35, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/views:state", ptr %t5, i32 0, i32 0
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l35, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l35, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l38
  br label %bb7
bb7:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l3
  %t13 = load ptr, ptr %l1, !tbaa !29
  store ptr %t13, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t14 = load ptr, ptr %l39, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb8, label %bb9
bb8:
  %t17 = load ptr, ptr %l39, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 17}
  %t20 = icmp eq i64 %t18, 0
  store i1 %t20, ptr %l40, !tbaa !21
  br label %bb9
bb9:
  %t21 = load i1, ptr %l40, !tbaa !21
  br i1 %t21, label %bb10, label %bb11
bb10:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [3 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb16
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l47
  br label %bb13
bb13:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l6
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s2, ptr %t36, ptr %t37, ptr %t39, ptr %l6)
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l4, !tbaa !23
  %t47 = sext i32 %t45 to i64
  %t48 = load ptr, ptr %l5, !tbaa !29
  %t50 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebind(ptr %v0, ptr %v1, ptr %s2, ptr %v2, ptr %t44, i64 %t47, ptr %t48, ptr %l6, i1 true, ptr %t50)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb182
bb16:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t57 = load ptr, ptr %l60, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l60, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 17}
  %t63 = icmp eq i64 %t61, 1
  store i1 %t63, ptr %l61, !tbaa !21
  br label %bb18
bb18:
  %t64 = load i1, ptr %l61, !tbaa !21
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [3 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t67, i32 0, i32 1
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l7, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l8, !tbaa !29
  br label %bb21
bb20:
  br label %bb30
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l68
  br label %bb22
bb22:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l9
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/views:Viewer", ptr %t79, i32 0, i32 29
  %t82 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  br label %bb23
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l8, !tbaa !29
  %t88 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s3, ptr %t85, ptr %t86, ptr %t88, ptr %l9)
  br label %bb24
bb24:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/views:Viewer", ptr %t93, i32 0, i32 29
  %t97 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s3, ptr %t95)
  %t98 = extractvalue { i32, ptr } %t97, 1
  %t99 = extractvalue { i32, ptr } %t97, 0
  store i32 %t99, ptr %l81
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb26, label %ok.101, !prof !99
ok.101:
  store ptr %t98, ptr %l80
  br label %bb25
bb25:
  %t102 = load ptr, ptr %l80, !tbaa !29
  store ptr %t102, ptr %l77, !tbaa !29
  br label %bb28
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l7, !tbaa !29
  %t106 = load ptr, ptr %l8, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eassign(ptr %v0, ptr %v1, ptr %v1, ptr %s3, ptr %v2, ptr %t103, ptr %t104, ptr %t106, ptr %l9, ptr %t108)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb182
bb30:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t115 = load ptr, ptr %l89, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb31, label %bb32
bb31:
  %t118 = load ptr, ptr %l89, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 17}
  %t121 = icmp eq i64 %t119, 2
  store i1 %t121, ptr %l90, !tbaa !21
  br label %bb32
bb32:
  %t122 = load i1, ptr %l90, !tbaa !21
  br i1 %t122, label %bb33, label %bb34
bb33:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [3 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", ptr }, ptr %t125, i32 0, i32 1
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l10, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l10, !tbaa !29
  %t132 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t129, ptr %t130, ptr %t132, ptr %l3)
  br label %bb36
bb36:
  br label %bb182
bb37:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t138 = load ptr, ptr %l100, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb38, label %bb39
bb38:
  %t141 = load ptr, ptr %l100, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 17}
  %t144 = icmp eq i64 %t142, 3
  store i1 %t144, ptr %l101, !tbaa !21
  br label %bb39
bb39:
  %t145 = load i1, ptr %l101, !tbaa !21
  br i1 %t145, label %bb40, label %bb41
bb40:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [3 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", ptr }, ptr %t148, i32 0, i32 1
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l11, !tbaa !29
  br label %bb42
bb41:
  br label %bb52
bb42:
  store %olang.scope zeroinitializer, ptr %s6
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l11, !tbaa !29
  %t155 = getelementptr %"compiler/typed:If", ptr %t153, i32 0, i32 0
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t152, ptr %t156, ptr %t158, ptr %l3)
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t164, ptr %v2, ptr %s6, ptr %t163)
  call void @llvm.memmove.p0.p0.i64(ptr %l113, ptr %t164, i64 136, i1 false)
  br label %bb44
bb44:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t166, ptr %s6, ptr %l113)
  call void @llvm.memmove.p0.p0.i64(ptr %l115, ptr %t166, i64 136, i1 false)
  br label %bb45
bb45:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l115, i64 136, i1 false)
  %t168 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t169, ptr %v2, ptr %s6, ptr %t168)
  call void @llvm.memmove.p0.p0.i64(ptr %l117, ptr %t169, i64 136, i1 false)
  br label %bb46
bb46:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t171, ptr %s6, ptr %l117)
  call void @llvm.memmove.p0.p0.i64(ptr %l119, ptr %t171, i64 136, i1 false)
  br label %bb47
bb47:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l119, i64 136, i1 false)
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l11, !tbaa !29
  %t176 = getelementptr %"compiler/typed:If", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %s6, ptr %t173, ptr %t177, ptr %l12)
  br label %bb48
bb48:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l11, !tbaa !29
  %t185 = getelementptr %"compiler/typed:If", ptr %t183, i32 0, i32 2
  %t186 = load ptr, ptr %t185, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %s6, ptr %t182, ptr %t186, ptr %l13)
  br label %bb49
bb49:
  call void @compiler_2fviews_2emerge(ptr %s6, ptr %s6, ptr %l12, ptr %l13)
  br label %bb50
bb50:
  %t192 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v2, ptr %s6, ptr %t192, ptr %l12)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s6)
  br label %bb182
bb52:
  %t195 = load ptr, ptr %l1, !tbaa !29
  store ptr %t195, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t196 = load ptr, ptr %l133, !tbaa !29
  %t197 = icmp ne ptr %t196, null
  br i1 %t197, label %bb53, label %bb54
bb53:
  %t199 = load ptr, ptr %l133, !tbaa !29
  %t200 = load i64, ptr %t199, !range !{i64 0, i64 17}
  %t202 = icmp eq i64 %t200, 4
  store i1 %t202, ptr %l134, !tbaa !21
  br label %bb54
bb54:
  %t203 = load i1, ptr %l134, !tbaa !21
  br i1 %t203, label %bb55, label %bb56
bb55:
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr { i64, [3 x i64] }, ptr %t204, i32 0, i32 1
  %t207 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t206, i32 0, i32 1
  %t208 = load ptr, ptr %t207
  store ptr %t208, ptr %l14, !tbaa !29
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t212 = getelementptr { i64, [3 x i64] }, ptr %t210, i32 0, i32 1
  %t213 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t212, i32 0, i32 2
  %t214 = load ptr, ptr %t213
  store ptr %t214, ptr %l15, !tbaa !29
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load ptr, ptr %l14, !tbaa !29
  %t218 = load ptr, ptr %l15, !tbaa !29
  %t219 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t216, ptr %t217, ptr %t218, ptr %t219)
  br label %bb58
bb58:
  br label %bb182
bb59:
  %t224 = load ptr, ptr %l1, !tbaa !29
  store ptr %t224, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t225 = load ptr, ptr %l145, !tbaa !29
  %t226 = icmp ne ptr %t225, null
  br i1 %t226, label %bb60, label %bb61
bb60:
  %t228 = load ptr, ptr %l145, !tbaa !29
  %t229 = load i64, ptr %t228, !range !{i64 0, i64 17}
  %t231 = icmp eq i64 %t229, 5
  store i1 %t231, ptr %l146, !tbaa !21
  br label %bb61
bb61:
  %t232 = load i1, ptr %l146, !tbaa !21
  br i1 %t232, label %bb62, label %bb63
bb62:
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr { i64, [3 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t235, i32 0, i32 1
  %t237 = load i32, ptr %t236, !range !{i32 0, i32 2}
  store i32 %t237, ptr %l16
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr { i64, [3 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t241, i32 0, i32 2
  %t243 = load i32, ptr %t242
  store i32 %t243, ptr %l17, !tbaa !23
  br label %bb64
bb63:
  br label %bb90
bb64:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/views:Viewer", ptr %t245, i32 0, i32 28
  %t249 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H1e03e4f3e9fd2c184a7d157dcdc4524e(ptr %v0, ptr %t247)
  store i64 %t249, ptr %l155
  br label %bb65
bb65:
  %t250 = load i64, ptr %l155, !tbaa !24
  %t251 = sub i64 %t250, 1
  store i64 %t251, ptr %l18, !tbaa !24
  br label %bb66
bb66:
  %t253 = load i64, ptr %l18, !tbaa !24
  %t255 = icmp sge i64 %t253, 0
  br i1 %t255, label %bb67, label %bb68
bb67:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/views:Viewer", ptr %t257, i32 0, i32 28
  %t260 = load i64, ptr %l18, !tbaa !24
  %t263 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v0, ptr %t259, i64 %t260)
  store ptr %t263, ptr %l163
  br label %bb69
bb68:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb70
bb69:
  %t264 = load ptr, ptr %l163, !tbaa !29
  %t266 = getelementptr %"compiler/views:loopFrame", ptr %t264, i32 0, i32 0
  %t267 = load i32, ptr %t266, !tbaa !23
  %t268 = load i32, ptr %l17, !tbaa !23
  %t271 = icmp ne i32 %t267, %t268
  store i1 %t271, ptr %l159, !tbaa !21
  br label %bb70
bb70:
  %t273 = load i1, ptr %l159, !tbaa !21
  %t274 = xor i1 %t273, true
  br i1 %t274, label %bb71, label %bb72
bb71:
  br label %bb75
bb72:
  br label %bb73
bb73:
  %t276 = load i64, ptr %l18, !tbaa !24
  %t278 = sub i64 %t276, 1
  store i64 %t278, ptr %l18, !tbaa !24
  br label %bb74
bb74:
  br label %bb66
bb75:
  %t280 = load i64, ptr %l18, !tbaa !24
  %t282 = icmp sge i64 %t280, 0
  br i1 %t282, label %bb76, label %bb77
bb76:
  %t284 = load i32, ptr %l16, !range !{i32 0, i32 2}
  %t286 = trunc i64 0 to i32
  %t287 = icmp eq i32 %t284, %t286
  br i1 %t287, label %bb78, label %bb79
bb77:
  br label %bb89
bb78:
  store %olang.scope zeroinitializer, ptr %s11
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/views:Viewer", ptr %t289, i32 0, i32 28
  %t292 = load i64, ptr %l18, !tbaa !24
  %t295 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v0, ptr %t291, i64 %t292)
  store ptr %t295, ptr %l178
  br label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s12
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/views:Viewer", ptr %t296, i32 0, i32 28
  %t299 = load i64, ptr %l18, !tbaa !24
  %t302 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v0, ptr %t298, i64 %t299)
  store ptr %t302, ptr %l188
  br label %bb84
bb80:
  %t303 = load ptr, ptr %l178, !tbaa !29
  %t305 = getelementptr %"compiler/views:loopFrame", ptr %t303, i32 0, i32 1
  store ptr %t305, ptr %l180, !tbaa !29
  %t306 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t307, ptr %v2, ptr %s11, ptr %t306)
  call void @llvm.memmove.p0.p0.i64(ptr %l182, ptr %t307, i64 136, i1 false)
  br label %bb81
bb81:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t309, ptr %s11, ptr %l182)
  call void @llvm.memmove.p0.p0.i64(ptr %l184, ptr %t309, i64 136, i1 false)
  br label %bb82
bb82:
  %t311 = load ptr, ptr %l180, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t312, ptr %l184, i64 136, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ePush_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %s11, ptr %t311, ptr %t312)
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s11)
  br label %bb88
bb84:
  %t313 = load ptr, ptr %l188, !tbaa !29
  %t315 = getelementptr %"compiler/views:loopFrame", ptr %t313, i32 0, i32 2
  store ptr %t315, ptr %l190, !tbaa !29
  %t316 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t317, ptr %v2, ptr %s12, ptr %t316)
  call void @llvm.memmove.p0.p0.i64(ptr %l192, ptr %t317, i64 136, i1 false)
  br label %bb85
bb85:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t319, ptr %s12, ptr %l192)
  call void @llvm.memmove.p0.p0.i64(ptr %l194, ptr %t319, i64 136, i1 false)
  br label %bb86
bb86:
  %t321 = load ptr, ptr %l190, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t322, ptr %l194, i64 136, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ePush_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %s12, ptr %t321, ptr %t322)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s12)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t323 = load ptr, ptr %l2, !tbaa !29
  %t325 = getelementptr %"compiler/views:state", ptr %t323, i32 0, i32 0
  store i1 true, ptr %t325, !tbaa !21
  br label %bb182
bb90:
  %t326 = load ptr, ptr %l1, !tbaa !29
  store ptr %t326, ptr %l196, !tbaa !29
  store i1 false, ptr %l197, !tbaa !21
  %t327 = load ptr, ptr %l196, !tbaa !29
  %t328 = icmp ne ptr %t327, null
  br i1 %t328, label %bb91, label %bb92
bb91:
  %t330 = load ptr, ptr %l196, !tbaa !29
  %t331 = load i64, ptr %t330, !range !{i64 0, i64 17}
  %t333 = icmp eq i64 %t331, 6
  store i1 %t333, ptr %l197, !tbaa !21
  br label %bb92
bb92:
  %t334 = load i1, ptr %l197, !tbaa !21
  br i1 %t334, label %bb93, label %bb94
bb93:
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t337 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  %t338 = getelementptr { %"compiler/source:Span", ptr }, ptr %t337, i32 0, i32 0
  %t339 = load %"compiler/source:Span", ptr %t338
  store %"compiler/source:Span" %t339, ptr %l19
  %t341 = load ptr, ptr %l1, !tbaa !29
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t341, i32 0, i32 1
  %t344 = getelementptr { %"compiler/source:Span", ptr }, ptr %t343, i32 0, i32 1
  %t345 = load ptr, ptr %t344
  store ptr %t345, ptr %l20, !tbaa !29
  br label %bb95
bb94:
  br label %bb97
bb95:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load %"compiler/source:Span", ptr %l19
  %t349 = load ptr, ptr %l20, !tbaa !29
  %t350 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ehandOut(ptr %v0, ptr %v1, ptr %v2, ptr %t347, %"compiler/source:Span" %t348, ptr %t349, ptr %t350)
  br label %bb96
bb96:
  %t355 = load ptr, ptr %l2, !tbaa !29
  %t357 = getelementptr %"compiler/views:state", ptr %t355, i32 0, i32 0
  store i1 true, ptr %t357, !tbaa !21
  br label %bb182
bb97:
  %t358 = load ptr, ptr %l1, !tbaa !29
  store ptr %t358, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t359 = load ptr, ptr %l209, !tbaa !29
  %t360 = icmp ne ptr %t359, null
  br i1 %t360, label %bb98, label %bb99
bb98:
  %t362 = load ptr, ptr %l209, !tbaa !29
  %t363 = load i64, ptr %t362, !range !{i64 0, i64 17}
  %t365 = icmp eq i64 %t363, 16
  store i1 %t365, ptr %l210, !tbaa !21
  br label %bb99
bb99:
  %t366 = load i1, ptr %l210, !tbaa !21
  br i1 %t366, label %bb100, label %bb101
bb100:
  %t367 = load ptr, ptr %l1, !tbaa !29
  %t369 = getelementptr { i64, [3 x i64] }, ptr %t367, i32 0, i32 1
  %t370 = getelementptr { %"compiler/source:Span", ptr }, ptr %t369, i32 0, i32 0
  %t371 = load %"compiler/source:Span", ptr %t370
  store %"compiler/source:Span" %t371, ptr %l21
  %t373 = load ptr, ptr %l1, !tbaa !29
  %t375 = getelementptr { i64, [3 x i64] }, ptr %t373, i32 0, i32 1
  %t376 = getelementptr { %"compiler/source:Span", ptr }, ptr %t375, i32 0, i32 1
  %t377 = load ptr, ptr %t376
  store ptr %t377, ptr %l22, !tbaa !29
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load %"compiler/source:Span", ptr %l21
  %t381 = load ptr, ptr %l22, !tbaa !29
  %t382 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ehandOut(ptr %v0, ptr %v1, ptr %v2, ptr %t379, %"compiler/source:Span" %t380, ptr %t381, ptr %t382)
  br label %bb103
bb103:
  br label %bb182
bb104:
  %t387 = load ptr, ptr %l1, !tbaa !29
  store ptr %t387, ptr %l221, !tbaa !29
  store i1 false, ptr %l222, !tbaa !21
  %t388 = load ptr, ptr %l221, !tbaa !29
  %t389 = icmp ne ptr %t388, null
  br i1 %t389, label %bb105, label %bb106
bb105:
  %t391 = load ptr, ptr %l221, !tbaa !29
  %t392 = load i64, ptr %t391, !range !{i64 0, i64 17}
  %t394 = icmp eq i64 %t392, 7
  store i1 %t394, ptr %l222, !tbaa !21
  br label %bb106
bb106:
  %t395 = load i1, ptr %l222, !tbaa !21
  br i1 %t395, label %bb107, label %bb108
bb107:
  br label %bb113
bb108:
  %t396 = load ptr, ptr %l1, !tbaa !29
  store ptr %t396, ptr %l225, !tbaa !29
  store i1 false, ptr %l226, !tbaa !21
  %t397 = load ptr, ptr %l225, !tbaa !29
  %t398 = icmp ne ptr %t397, null
  br i1 %t398, label %bb109, label %bb110
bb109:
  %t400 = load ptr, ptr %l225, !tbaa !29
  %t401 = load i64, ptr %t400, !range !{i64 0, i64 17}
  %t403 = icmp eq i64 %t401, 8
  store i1 %t403, ptr %l226, !tbaa !21
  br label %bb110
bb110:
  %t404 = load i1, ptr %l226, !tbaa !21
  br i1 %t404, label %bb111, label %bb112
bb111:
  br label %bb113
bb112:
  br label %bb114
bb113:
  %t405 = load ptr, ptr %l2, !tbaa !29
  %t407 = getelementptr %"compiler/views:state", ptr %t405, i32 0, i32 0
  store i1 true, ptr %t407, !tbaa !21
  br label %bb182
bb114:
  %t408 = load ptr, ptr %l1, !tbaa !29
  store ptr %t408, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t409 = load ptr, ptr %l230, !tbaa !29
  %t410 = icmp ne ptr %t409, null
  br i1 %t410, label %bb115, label %bb116
bb115:
  %t412 = load ptr, ptr %l230, !tbaa !29
  %t413 = load i64, ptr %t412, !range !{i64 0, i64 17}
  %t415 = icmp eq i64 %t413, 9
  store i1 %t415, ptr %l231, !tbaa !21
  br label %bb116
bb116:
  %t416 = load i1, ptr %l231, !tbaa !21
  br i1 %t416, label %bb117, label %bb118
bb117:
  %t417 = load ptr, ptr %l1, !tbaa !29
  %t419 = getelementptr { i64, [3 x i64] }, ptr %t417, i32 0, i32 1
  %t420 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t419, i32 0, i32 2
  %t421 = load ptr, ptr %t420
  store ptr %t421, ptr %l23, !tbaa !29
  br label %bb119
bb118:
  br label %bb124
bb119:
  %t423 = load ptr, ptr %l23, !tbaa !29
  %t425 = icmp eq ptr %t423, null
  %t427 = xor i1 %t425, true
  br i1 %t427, label %bb120, label %bb121
bb120:
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load ptr, ptr %l23, !tbaa !29
  %t432 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t429, ptr %t430, ptr %t432, ptr %l3)
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb123
bb123:
  %t437 = load ptr, ptr %l2, !tbaa !29
  %t439 = getelementptr %"compiler/views:state", ptr %t437, i32 0, i32 0
  store i1 true, ptr %t439, !tbaa !21
  br label %bb182
bb124:
  %t440 = load ptr, ptr %l1, !tbaa !29
  store ptr %t440, ptr %l245, !tbaa !29
  store i1 false, ptr %l246, !tbaa !21
  %t441 = load ptr, ptr %l245, !tbaa !29
  %t442 = icmp ne ptr %t441, null
  br i1 %t442, label %bb125, label %bb126
bb125:
  %t444 = load ptr, ptr %l245, !tbaa !29
  %t445 = load i64, ptr %t444, !range !{i64 0, i64 17}
  %t447 = icmp eq i64 %t445, 10
  store i1 %t447, ptr %l246, !tbaa !21
  br label %bb126
bb126:
  %t448 = load i1, ptr %l246, !tbaa !21
  br i1 %t448, label %bb127, label %bb128
bb127:
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = getelementptr { i64, [3 x i64] }, ptr %t449, i32 0, i32 1
  %t452 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t451, i32 0, i32 1
  %t453 = load ptr, ptr %t452
  store ptr %t453, ptr %l24, !tbaa !29
  %t455 = load ptr, ptr %l1, !tbaa !29
  %t457 = getelementptr { i64, [3 x i64] }, ptr %t455, i32 0, i32 1
  %t458 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t457, i32 0, i32 2
  %t459 = load ptr, ptr %t458
  store ptr %t459, ptr %l25, !tbaa !29
  br label %bb129
bb128:
  br label %bb137
bb129:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load ptr, ptr %l24, !tbaa !29
  %t464 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t461, ptr %t462, ptr %t464, ptr %l3)
  br label %bb130
bb130:
  %t469 = load ptr, ptr %l25, !tbaa !29
  %t471 = icmp eq ptr %t469, null
  %t473 = xor i1 %t471, true
  br i1 %t473, label %bb131, label %bb132
bb131:
  store %olang.scope zeroinitializer, ptr %s19
  %t475 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t476, ptr %v2, ptr %s19, ptr %t475)
  call void @llvm.memmove.p0.p0.i64(ptr %l262, ptr %t476, i64 136, i1 false)
  br label %bb133
bb132:
  br label %bb136
bb133:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t478, ptr %s19, ptr %l262)
  call void @llvm.memmove.p0.p0.i64(ptr %l264, ptr %t478, i64 136, i1 false)
  br label %bb134
bb134:
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %l264, i64 136, i1 false)
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %s19, ptr %s0, ptr %t480, ptr %t481, ptr %l26, ptr %l3)
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s19)
  br label %bb136
bb136:
  br label %bb182
bb137:
  %t487 = load ptr, ptr %l1, !tbaa !29
  store ptr %t487, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t488 = load ptr, ptr %l270, !tbaa !29
  %t489 = icmp ne ptr %t488, null
  br i1 %t489, label %bb138, label %bb139
bb138:
  %t491 = load ptr, ptr %l270, !tbaa !29
  %t492 = load i64, ptr %t491, !range !{i64 0, i64 17}
  %t494 = icmp eq i64 %t492, 11
  store i1 %t494, ptr %l271, !tbaa !21
  br label %bb139
bb139:
  %t495 = load i1, ptr %l271, !tbaa !21
  br i1 %t495, label %bb140, label %bb141
bb140:
  %t496 = load ptr, ptr %l1, !tbaa !29
  %t498 = getelementptr { i64, [3 x i64] }, ptr %t496, i32 0, i32 1
  %t499 = getelementptr { %"compiler/source:Span", ptr }, ptr %t498, i32 0, i32 1
  %t500 = load ptr, ptr %t499
  store ptr %t500, ptr %l27, !tbaa !29
  br label %bb142
bb141:
  br label %bb144
bb142:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load ptr, ptr %l27, !tbaa !29
  %t505 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t502, ptr %t503, ptr %t505)
  br label %bb143
bb143:
  br label %bb182
bb144:
  %t509 = load ptr, ptr %l1, !tbaa !29
  store ptr %t509, ptr %l280, !tbaa !29
  store i1 false, ptr %l281, !tbaa !21
  %t510 = load ptr, ptr %l280, !tbaa !29
  %t511 = icmp ne ptr %t510, null
  br i1 %t511, label %bb145, label %bb146
bb145:
  %t513 = load ptr, ptr %l280, !tbaa !29
  %t514 = load i64, ptr %t513, !range !{i64 0, i64 17}
  %t516 = icmp eq i64 %t514, 12
  store i1 %t516, ptr %l281, !tbaa !21
  br label %bb146
bb146:
  %t517 = load i1, ptr %l281, !tbaa !21
  br i1 %t517, label %bb147, label %bb148
bb147:
  br label %bb149
bb148:
  br label %bb150
bb149:
  br label %bb182
bb150:
  %t518 = load ptr, ptr %l1, !tbaa !29
  store ptr %t518, ptr %l284, !tbaa !29
  store i1 false, ptr %l285, !tbaa !21
  %t519 = load ptr, ptr %l284, !tbaa !29
  %t520 = icmp ne ptr %t519, null
  br i1 %t520, label %bb151, label %bb152
bb151:
  %t522 = load ptr, ptr %l284, !tbaa !29
  %t523 = load i64, ptr %t522, !range !{i64 0, i64 17}
  %t525 = icmp eq i64 %t523, 13
  store i1 %t525, ptr %l285, !tbaa !21
  br label %bb152
bb152:
  %t526 = load i1, ptr %l285, !tbaa !21
  br i1 %t526, label %bb153, label %bb154
bb153:
  %t527 = load ptr, ptr %l1, !tbaa !29
  %t529 = getelementptr { i64, [3 x i64] }, ptr %t527, i32 0, i32 1
  %t530 = getelementptr { %"compiler/source:Span", ptr }, ptr %t529, i32 0, i32 1
  %t531 = load ptr, ptr %t530
  store ptr %t531, ptr %l28, !tbaa !29
  br label %bb155
bb154:
  br label %bb167
bb155:
  %t533 = load ptr, ptr %l2, !tbaa !29
  %t535 = getelementptr %"compiler/views:state", ptr %t533, i32 0, i32 4
  %t537 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v2, ptr %t535)
  store i64 %t537, ptr %l292
  br label %bb156
bb156:
  %t538 = load i64, ptr %l292, !tbaa !24
  store i64 %t538, ptr %l29, !tbaa !24
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t540 = load ptr, ptr %l28, !tbaa !29
  %t542 = getelementptr %"compiler/typed:Join", ptr %t540, i32 0, i32 0
  %t543 = load ptr, ptr %t542, !tbaa !29
  %t545 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t539, ptr %t543, ptr %t545)
  br label %bb157
bb157:
  %t549 = load ptr, ptr %l2, !tbaa !29
  %t551 = getelementptr %"compiler/views:state", ptr %t549, i32 0, i32 0
  %t552 = load i1, ptr %t551, !tbaa !21
  %t554 = xor i1 %t552, true
  br i1 %t554, label %bb158, label %bb159
bb158:
  %t556 = load ptr, ptr %l2, !tbaa !29
  %t558 = getelementptr %"compiler/views:state", ptr %t556, i32 0, i32 4
  %t560 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v2, ptr %t558)
  store i64 %t560, ptr %l304
  br label %bb160
bb159:
  store i1 false, ptr %l301, !tbaa !21
  br label %bb161
bb160:
  %t561 = load i64, ptr %l29, !tbaa !24
  %t562 = load i64, ptr %l304, !tbaa !24
  %t564 = icmp sgt i64 %t562, %t561
  store i1 %t564, ptr %l301, !tbaa !21
  br label %bb161
bb161:
  %t566 = load i1, ptr %l301, !tbaa !21
  br i1 %t566, label %bb162, label %bb163
bb162:
  %t567 = load ptr, ptr %l2, !tbaa !29
  %t569 = getelementptr %"compiler/views:state", ptr %t567, i32 0, i32 4
  %t570 = load i64, ptr %l29, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eTruncate_3ccompiler_2fviews_3atasked_3e(ptr %v2, ptr %t569, i64 %t570)
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb165
bb165:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = load ptr, ptr %l28, !tbaa !29
  %t576 = getelementptr %"compiler/typed:Join", ptr %t574, i32 0, i32 2
  %t577 = load { i64, ptr }, ptr %t576, !tbaa !27
  %t578 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t573, { i64, ptr } %t577, ptr %t578, ptr %l3)
  br label %bb166
bb166:
  br label %bb182
bb167:
  %t583 = load ptr, ptr %l1, !tbaa !29
  store ptr %t583, ptr %l315, !tbaa !29
  store i1 false, ptr %l316, !tbaa !21
  %t584 = load ptr, ptr %l315, !tbaa !29
  %t585 = icmp ne ptr %t584, null
  br i1 %t585, label %bb168, label %bb169
bb168:
  %t587 = load ptr, ptr %l315, !tbaa !29
  %t588 = load i64, ptr %t587, !range !{i64 0, i64 17}
  %t590 = icmp eq i64 %t588, 14
  store i1 %t590, ptr %l316, !tbaa !21
  br label %bb169
bb169:
  %t591 = load i1, ptr %l316, !tbaa !21
  br i1 %t591, label %bb170, label %bb171
bb170:
  %t592 = load ptr, ptr %l1, !tbaa !29
  %t594 = getelementptr { i64, [3 x i64] }, ptr %t592, i32 0, i32 1
  %t595 = getelementptr { %"compiler/source:Span", ptr }, ptr %t594, i32 0, i32 0
  %t596 = load %"compiler/source:Span", ptr %t595
  store %"compiler/source:Span" %t596, ptr %l30
  %t598 = load ptr, ptr %l1, !tbaa !29
  %t600 = getelementptr { i64, [3 x i64] }, ptr %t598, i32 0, i32 1
  %t601 = getelementptr { %"compiler/source:Span", ptr }, ptr %t600, i32 0, i32 1
  %t602 = load ptr, ptr %t601
  store ptr %t602, ptr %l31, !tbaa !29
  br label %bb172
bb171:
  br label %bb174
bb172:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load %"compiler/source:Span", ptr %l30
  %t606 = load ptr, ptr %l31, !tbaa !29
  %t607 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2espawn(ptr %v0, ptr %v1, ptr %v2, ptr %t604, %"compiler/source:Span" %t605, ptr %t606, ptr %t607)
  br label %bb173
bb173:
  br label %bb182
bb174:
  %t612 = load ptr, ptr %l1, !tbaa !29
  store ptr %t612, ptr %l327, !tbaa !29
  store i1 false, ptr %l328, !tbaa !21
  %t613 = load ptr, ptr %l327, !tbaa !29
  %t614 = icmp ne ptr %t613, null
  br i1 %t614, label %bb175, label %bb176
bb175:
  %t616 = load ptr, ptr %l327, !tbaa !29
  %t617 = load i64, ptr %t616, !range !{i64 0, i64 17}
  %t619 = icmp eq i64 %t617, 15
  store i1 %t619, ptr %l328, !tbaa !21
  br label %bb176
bb176:
  %t620 = load i1, ptr %l328, !tbaa !21
  br i1 %t620, label %bb177, label %bb178
bb177:
  %t621 = load ptr, ptr %l1, !tbaa !29
  %t623 = getelementptr { i64, [3 x i64] }, ptr %t621, i32 0, i32 1
  %t624 = getelementptr { %"compiler/source:Span", ptr }, ptr %t623, i32 0, i32 1
  %t625 = load ptr, ptr %t624
  store ptr %t625, ptr %l32, !tbaa !29
  br label %bb179
bb178:
  br label %bb181
bb179:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t628 = load ptr, ptr %l32, !tbaa !29
  %t630 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t627, ptr %t628, ptr %t630, ptr %l3)
  br label %bb180
bb180:
  br label %bb182
bb181:
  call void @__olang_check_failed(ptr @olang_loc_1e57e3539652abf4_8f970453f904e310)
  unreachable
bb182:
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l59, !tbaa !27
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

define dso_local %"compiler/views:fact" @compiler_2fviews_3afact_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5, i64 %a6, %"compiler/source:Span" %a7) #0 {
entry:
  %rv = alloca %"compiler/views:fact"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/views:fact" undef, i64 %a0, 0
  %t20 = insertvalue %"compiler/views:fact" %t18, i64 %a1, 1
  %t22 = insertvalue %"compiler/views:fact" %t20, i32 %a2, 2
  %t24 = insertvalue %"compiler/views:fact" %t22, i64 %a3, 3
  %t26 = insertvalue %"compiler/views:fact" %t24, i64 %a4, 4
  %t28 = insertvalue %"compiler/views:fact" %t26, i1 %a5, 5
  %t30 = insertvalue %"compiler/views:fact" %t28, i64 %a6, 6
  %t32 = insertvalue %"compiler/views:fact" %t30, %"compiler/source:Span" %a7, 7
  %t34 = insertvalue %"compiler/views:fact" %t32, i64 -1, 8
  store %"compiler/views:fact" %t34, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:fact", ptr %rv
  ret %"compiler/views:fact" %rr
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
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb7
bb7:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l3
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l11
  br label %bb8
bb8:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t27 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 0
  %t28 = load i1, ptr %l0, !tbaa !21
  store i1 %t28, ptr %t27, !tbaa !21
  %t29 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 1
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t29
  %t31 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 2
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t31
  %t33 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 3
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %t33
  %t35 = getelementptr %"compiler/views:state", ptr %l12, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %t35
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l12, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

declare void @__olang_check_failed(ptr) cold noreturn
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d0 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"known" }>, align 8
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"unknown" }>, align 8
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
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"p" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
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
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"grows" }>, align 8
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"views" }>, align 8
@.d6 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"keeps" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d10 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"(unwritable)" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d12 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"M19g summary of " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" was '" }>, align 8
@.d15 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"', is '" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"p" }>, align 8
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
@.d26 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"known" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d30 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"grows" }>, align 8
@.d31 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"views" }>, align 8
@.d32 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"keeps" }>, align 8
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

@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
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

@olang_2esole_2ecompiler_2fviews_3astate_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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

declare ptr @compiler_2fviews_2eunAway(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_a5e6daec8976db0_405389cf00db76ac = external constant [0 x i8]
declare void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3cbb6fb3b51c25bd_1e9ab5921d6290d1 = external constant [0 x i8]
declare void @compiler_2fviews_2ecallsArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_87083398c1f96e8c_18c50ee403fa2840 = external constant [0 x i8]
@olang_loc_b5f5b909b97f4b87_db04b2c3237782bb = external constant [0 x i8]
@olang_loc_8469b5ec09caec26_9b966bbb099df63a = external constant [0 x i8]
@olang_loc_293c6ab0a5c406c2_e9cd55f098635cb6 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0)
declare %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, %"compiler/views:fact" %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %v0, { i64, [2 x i64] } %a0, i64 %a1, i64 %a2, i1 %a3)
@olang_loc_d33365757296ff0a_65568c4e441bc04e = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0)
declare %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2eplaceAdd(ptr %v0, ptr %a0, %"compiler/views:place" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H33c414027a4af7673dd1306c9e88dc00(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efileWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_bf0f9cdbc99a00cc_873cbf0138bd5dc8 = external constant [0 x i8]
@olang_loc_59f7caf9a8021923_a477b9c5c640d35f = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0, %"compiler/views:fact" %a1)
declare { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewGivenGrowing(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0)
declare %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_a9709b8d7599af1c_938b49c1f1943728 = external constant [0 x i8]
@olang_loc_5a02dfa0eab0974d_8c564576f095f5f9 = external constant [0 x i8]
@olang_loc_d83b4460c5b9ac6f_e5ae66818951545b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_2a4a8b72a379b770_7cdc66c7220ef344 = external constant [0 x i8]
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2euse(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eholdsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
declare void @compiler_2fviews_2eviewAdd(ptr %v0, ptr %a0, %"compiler/views:view" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7b1b67136b76c79_188c2ea4ec84d8a5 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_5517ec302ba00347_a7bc83f18394e19b = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @compiler_2fviews_3asummary_2ector(ptr %out, ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
@olang_loc_ea123554da78e931_2795c92c247c1c25 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_8aef76ae2a822f83_6536a40cc5df6d07 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
@olang_loc_24f4045ab8cbf215_2ef83d27164e37c1 = external constant [0 x i8]
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eisParam(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_40eaf25cbb0521a7_3d2a576ac0c8b0f3 = external constant [0 x i8]
@olang_loc_945ffbf6072962e3_f3ad5bbe10c5f487 = external constant [0 x i8]
@olang_loc_f83bd81acd9884e2_c22158a061119526 = external constant [0 x i8]
@olang_loc_5699d6f0b9487a4c_f8171e4e8a154888 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebind(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H1e03e4f3e9fd2c184a7d157dcdc4524e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ePush_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ehandOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eTruncate_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2espawn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
@olang_loc_1e57e3539652abf4_8f970453f904e310 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_f882b6801a6cfe65_db0a8f546b27139 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_4283dbd3668d18ac_9869995bfb9a4270 = external constant [0 x i8]
@olang_loc_7a5a13ecbea84e9b_d0d616c1e5cf6f4f = external constant [0 x i8]
@olang_loc_e23614535e762839_a3c52bd11c6a8cad = external constant [0 x i8]
@olang_loc_db6ebdbbbfbf616f_7fdbf604d525f173 = external constant [0 x i8]
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_26ef299dad5cdbef_4a7142c0b9c90bab = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0)
declare %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %v0, i64 %a0, %"compiler/views:view" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:holding" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, %"compiler/views:holding" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fviews_2enameAdd(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:place" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0)
declare %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/views:tasked" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eAt_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ePush_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, %"compiler/views:tasked" %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
@olang_loc_f3a6d7e7b6ee655_a5694061fe6eb811 = external constant [0 x i8]
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
