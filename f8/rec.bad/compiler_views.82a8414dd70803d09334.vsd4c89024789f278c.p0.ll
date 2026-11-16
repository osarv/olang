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
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/views:Cand" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/views:Viewer" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/views:fact" = type { i64, i64, i32, i64, i64, i1, i64, %"compiler/source:Span", i64 }
%"compiler/views:place" = type { { i64, [2 x i64] }, i64, i64, i1 }
%"compiler/views:view" = type { %"compiler/views:place", i64, i1, %"compiler/source:Span", i64, i64, %"compiler/source:Span", i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/views:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/views:state" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/views:loopFrame" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
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

define dso_local void @compiler_2fviews_2ecallsArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l20 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
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
  %t7 = getelementptr %"compiler/typed:Arm", ptr %t5, i32 0, i32 1
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
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l20, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Alt", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t33, ptr %t35)
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Alt", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t55, ptr %l35, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  %t65 = getelementptr %"compiler/typed:Bind", ptr %t61, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t66, ptr %t68)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb4
bb17:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Arm", ptr %t79, i32 0, i32 2
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t82, ptr %t83)
  br label %bb18
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Arm", ptr %t86, i32 0, i32 3
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %t89, ptr %t90)
  br label %bb19
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Arm", ptr %t93, i32 0, i32 4
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  br label %bb20
bb20:
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aKept_2eTakeHolding(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/views:Cand"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l20 = alloca %"compiler/views:Cand"
  %l22 = alloca %"compiler/views:Cand"
  %l26 = alloca i1
  %l27 = alloca i1
  %l28 = alloca { ptr, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l63 = alloca { i64, ptr }
  %l65 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Kept", ptr %t1, i32 0, i32 0
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eLen_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l14
  br label %bb2
bb2:
  %t9 = load i64, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb46
bb4:
  br label %bb5
bb5:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call %"compiler/views:Cand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eAt_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/views:Cand" %t21, ptr %l20
  br label %bb6
bb6:
  %t23 = call %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v0, ptr %l20)
  store %"compiler/views:Cand" %t23, ptr %l22
  br label %bb7
bb7:
  %t24 = load %"compiler/views:Cand", ptr %l22
  store %"compiler/views:Cand" %t24, ptr %l5
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/views:Kept", ptr %t25, i32 0, i32 5
  %t28 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 0
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t27, i64 %t29)
  store i1 %t32, ptr %l26
  br label %bb8
bb8:
  %t33 = load i1, ptr %l26, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb10:
  store { ptr, ptr } %pg1, ptr %l28
  %t35 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 1
  %t37 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v0, ptr %t35)
  store { i64, ptr } %t37, ptr %l30
  br label %bb11
bb11:
  %t38 = load { ptr, ptr }, ptr %l28
  %t39 = extractvalue { ptr, ptr } %t38, 0
  %t40 = extractvalue { ptr, ptr } %t38, 1
  %t41 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t42 = call i1 %t39(ptr %t40, ptr %v0, { i64, ptr } %t41)
  store i1 %t42, ptr %l31
  br label %bb12
bb12:
  %t43 = load i1, ptr %l31, !tbaa !21
  %t44 = xor i1 %t43, true
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb14, label %bb15
bb14:
  br label %bb45
bb15:
  br label %bb16
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/views:Kept", ptr %t47, i32 0, i32 5
  %t50 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t49, i64 %t51, i64 %t52)
  br label %bb17
bb17:
  %t56 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 2
  store ptr %t56, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t58 = load i64, ptr %l7, !tbaa !24
  store i64 %t58, ptr %l38, !tbaa !24
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l40
  br label %bb19
bb19:
  %t62 = load i64, ptr %l38, !tbaa !24
  %t63 = load i64, ptr %l40, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb44
bb21:
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l6, !tbaa !29
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store { i64, ptr } %t72, ptr %l45
  br label %bb23
bb23:
  %t73 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t73, ptr %l8, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t76 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s5, { i64, ptr } %t74, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t77 = extractvalue { i32, i64 } %t76, 1
  %t78 = extractvalue { i32, i64 } %t76, 0
  store i32 %t78, ptr %l49
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb25, label %ok.80, !prof !99
ok.80:
  store i64 %t77, ptr %l48
  br label %bb24
bb24:
  %t81 = load i64, ptr %l48, !tbaa !24
  store i64 %t81, ptr %l46, !tbaa !24
  br label %bb27
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb27:
  %t82 = load i64, ptr %l46, !tbaa !24
  store i64 %t82, ptr %l9, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/views:Kept", ptr %t83, i32 0, i32 1
  store ptr %t85, ptr %l51, !tbaa !29
  %t86 = getelementptr %"compiler/views:Cand", ptr %l5, i32 0, i32 0
  %t87 = load i64, ptr %t86, !tbaa !24
  store i64 %t87, ptr %l52, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t88, ptr %l53, !tbaa !27
  %t89 = load i64, ptr %l9, !tbaa !24
  store i64 %t89, ptr %l54, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  store i64 %t91, ptr %l55, !tbaa !24
  %t92 = icmp sge i64 0, 0
  br i1 %t92, label %bb28, label %bb29
bb28:
  %t94 = load i64, ptr %l54, !tbaa !24
  %t95 = icmp sle i64 0, %t94
  br i1 %t95, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb30:
  %t97 = load i64, ptr %l54, !tbaa !24
  %t98 = load i64, ptr %l55, !tbaa !24
  %t99 = icmp sle i64 %t97, %t98
  br i1 %t99, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb32:
  %t101 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l54, !tbaa !24
  %t104 = getelementptr i8, ptr %t102, i64 0
  %t105 = sub i64 %t103, 0
  %t106 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t104, 1
  %t108 = load i64, ptr %l52, !tbaa !24
  %t109 = call i64 @__olang_fmt_i64(ptr null, i64 %t108)
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t114 = extractvalue { i64, ptr } %t107, 1
  %t115 = extractvalue { i64, ptr } %t107, 0
  %t116 = add i64 %t112, %t115
  %t117 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t116)
  %t118 = call i64 @__olang_fmt_i64(ptr %t117, i64 %t108)
  %t119 = getelementptr i8, ptr %t117, i64 %t109
  call void @olang_textcopy(ptr %t119, ptr %t110, i64 %t111)
  %t120 = getelementptr i8, ptr %t119, i64 %t111
  call void @olang_textcopy(ptr %t120, ptr %t114, i64 %t115)
  %t121 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t117, 1
  store { i64, ptr } %t122, ptr %l60, !tbaa !27
  %t123 = ptrtoint ptr %v0 to i64
  store i64 %t123, ptr %l61, !tbaa !24
  %t124 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2_H62bf8b359c1a6c7c950c3ca9da6c6a3a
  br i1 %t124, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb34:
  %t126 = call ptr @__olang_region_make(ptr %v0)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l61, !tbaa !24
  br label %bb35
bb35:
  %t128 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t128, ptr %l63, !tbaa !27
  %t129 = load i64, ptr %l9, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l65, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t132, 0
  store i64 %t135, ptr %l68, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l69, !tbaa !24
  %t138 = load i64, ptr %l65, !tbaa !24
  %t139 = icmp sge i64 %t138, 0
  br i1 %t139, label %bb36, label %bb37
bb36:
  %t141 = load i64, ptr %l65, !tbaa !24
  %t142 = load i64, ptr %l68, !tbaa !24
  %t143 = icmp sle i64 %t141, %t142
  br i1 %t143, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb38:
  %t145 = load i64, ptr %l68, !tbaa !24
  %t146 = load i64, ptr %l69, !tbaa !24
  %t147 = icmp sle i64 %t145, %t146
  br i1 %t147, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb40:
  %t149 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = load i64, ptr %l65, !tbaa !24
  %t152 = load i64, ptr %l68, !tbaa !24
  %t153 = getelementptr i8, ptr %t150, i64 %t151
  %t154 = sub i64 %t152, %t151
  %t155 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t153, 1
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = extractvalue { i64, ptr } %t156, 0
  %t160 = load i64, ptr %l61
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = call ptr @__olang_scope_alloc(ptr %t161, i64 %t159)
  call void @olang_textcopy(ptr %t162, ptr %t158, i64 %t159)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t166 = load i64, ptr %l61
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = extractvalue { i64, ptr } %t164, 0
  %t169 = extractvalue { i64, ptr } %t164, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  %t174 = load ptr, ptr %l51, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l60, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_Hdbddd02cd2a4e500be7fb1cacf89c9ab(ptr %v0, ptr %v0, ptr %t174, { i64, ptr } %t175, { i64, ptr } %t173)
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_5e5efcf403984e55_303b2c2551632479)
  unreachable
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb43:
  %t177 = load i64, ptr %l7, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l7, !tbaa !24
  br label %bb18
bb44:
  br label %bb45
bb45:
  %t181 = load i64, ptr %l3, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l3, !tbaa !24
  br label %bb1
bb46:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eBodyKeys(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l66 = alloca i64
  %l69 = alloca i64
  %l87 = alloca { i64, ptr }
  %l90 = alloca i1
  %l94 = alloca ptr
  %l97 = alloca { i64, ptr }
  %l101 = alloca i64
  %l104 = alloca i64
  %l105 = alloca i32
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l20
  br label %bb1
bb1:
  %t6 = load i64, ptr %l20, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l21, !tbaa !24
  %t8 = load i64, ptr %l21, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l21, !tbaa !24
  %t12 = icmp sle i64 %t11, 576460752303423487
  br i1 %t12, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_70046d00f197c345_2c505527320b9459)
  unreachable
bb4:
  %t14 = load i64, ptr %l21, !tbaa !24
  %t15 = mul i64 %t14, 16
  %t16 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, %t14
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr { i64, ptr }, ptr %t16, i64 %t21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  store { i64, ptr } %t26, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l1, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_70046d00f197c345_2c505527320b9459)
  unreachable
bb6:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb11
bb8:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb10
bb10:
  %t56 = load i64, ptr %l32, !tbaa !24
  store i64 %t56, ptr %l29, !tbaa !24
  br label %bb11
bb11:
  %t57 = load i64, ptr %l29, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t66 = load i64, ptr %l3, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l8, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t76, ptr %l50, !tbaa !27
  %t77 = load i64, ptr %l8, !tbaa !24
  store i64 %t77, ptr %l51, !tbaa !24
  %t78 = ptrtoint ptr %v1 to i64
  store i64 %t78, ptr %l52, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t81 = call ptr @__olang_region_make(ptr %v1)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l52, !tbaa !24
  br label %bb17
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l8, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = load i64, ptr %l52
  %t87 = inttoptr i64 %t86 to ptr
  %t91 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebodyKey(ptr %v0, ptr %v1, ptr %t87, ptr %t83, i64 %t84, { i64, ptr } %t85)
  store { i64, ptr } %t91, ptr %l57
  br label %bb18
bb18:
  %t92 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t93 = load i64, ptr %l52
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = extractvalue { i64, ptr } %t92, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t102 = load i64, ptr %l51, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr { i64, ptr }, ptr %t104, i64 %t102
  store { i64, ptr } %t100, ptr %t105, !tbaa !37
  br label %bb19
bb19:
  %t106 = load i64, ptr %l7, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l7, !tbaa !24
  br label %bb12
bb20:
  %t110 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t110, ptr %l61
  br label %bb21
bb21:
  %t111 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t111, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l1, !tbaa !24
  store i64 %t112, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t114 = load i64, ptr %l11, !tbaa !24
  %t115 = load i64, ptr %l10, !tbaa !24
  %t118 = icmp sgt i64 %t114, %t115
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t120 = load i64, ptr %l12, !tbaa !24
  %t122 = icmp sgt i64 %t120, 0
  br i1 %t122, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb27
bb24:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = sub i64 %t124, %t125
  %t129 = load i64, ptr %l12, !tbaa !24
  %t132 = add i64 %t128, %t129
  %t134 = sub i64 %t132, 1
  %t135 = load i64, ptr %l12, !tbaa !24
  %t138 = sdiv i64 %t134, %t135
  store i64 %t138, ptr %l69, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb26
bb26:
  %t140 = load i64, ptr %l69, !tbaa !24
  store i64 %t140, ptr %l66, !tbaa !24
  br label %bb27
bb27:
  %t141 = load i64, ptr %l66, !tbaa !24
  store i64 %t141, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb30:
  br label %bb31
bb31:
  %t150 = load i64, ptr %l10, !tbaa !24
  %t151 = load i64, ptr %l14, !tbaa !24
  %t152 = load i64, ptr %l12, !tbaa !24
  %t155 = mul i64 %t151, %t152
  %t158 = add i64 %t150, %t155
  store i64 %t158, ptr %l15, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t160, ptr %l87, !tbaa !27
  %t161 = load i64, ptr %l15, !tbaa !24
  %t163 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr { i64, ptr }, ptr %t164, i64 %t161
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !37
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s5, { i64, ptr } %t166, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t168, ptr %l90
  br label %bb32
bb32:
  %t169 = load i1, ptr %l90, !tbaa !21
  br i1 %t169, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb34:
  br label %bb35
bb35:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/views:Viewer", ptr %t170, i32 0, i32 1
  %t173 = load i64, ptr %l15, !tbaa !24
  %t176 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t172, i64 %t173)
  store ptr %t176, ptr %l94
  br label %bb36
bb36:
  %t177 = load ptr, ptr %l94, !tbaa !29
  %t179 = getelementptr %"compiler/typed:Body", ptr %t177, i32 0, i32 3
  %t180 = load i64, ptr %t179, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t181, ptr %l97, !tbaa !27
  %t182 = load i64, ptr %l15, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %t185, i64 %t182
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !37
  %t189 = call i64 @__olang_fmt_i64(ptr null, i64 %t180)
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t194 = extractvalue { i64, ptr } %t187, 1
  %t195 = extractvalue { i64, ptr } %t187, 0
  %t196 = add i64 %t192, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t196)
  %t198 = call i64 @__olang_fmt_i64(ptr %t197, i64 %t180)
  %t199 = getelementptr i8, ptr %t197, i64 %t189
  call void @olang_textcopy(ptr %t199, ptr %t190, i64 %t191)
  %t200 = getelementptr i8, ptr %t199, i64 %t191
  call void @olang_textcopy(ptr %t200, ptr %t194, i64 %t195)
  %t201 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t197, 1
  store { i64, ptr } %t202, ptr %l16, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t207 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %s0, ptr %l9, { i64, ptr } %t204)
  %t208 = extractvalue { i32, i64 } %t207, 1
  %t209 = extractvalue { i32, i64 } %t207, 0
  store i32 %t209, ptr %l105
  %t210 = icmp ne i32 %t209, 0
  br i1 %t210, label %bb38, label %ok.211, !prof !99
ok.211:
  store i64 %t208, ptr %l104
  br label %bb37
bb37:
  %t212 = load i64, ptr %l104, !tbaa !24
  store i64 %t212, ptr %l101, !tbaa !24
  br label %bb41
bb38:
  br label %bb39
bb39:
  %t213 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t214 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %s0, ptr %l9, { i64, ptr } %t213, i64 %t214)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb41:
  %t218 = load i64, ptr %l101, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t219, ptr %l109, !tbaa !27
  %t222 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %t223, i64 %t218
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %t224, !tbaa !37
  %t225 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t225, ptr %l111, !tbaa !27
  %t226 = load i64, ptr %l15, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %t229, i64 %t226
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %t230, !tbaa !37
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb42:
  %t231 = load i64, ptr %l14, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l14, !tbaa !24
  br label %bb28
bb43:
  %t235 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t235, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaries(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca i1
  %l51 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i32
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i64
  %l67 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/views:Viewer", ptr %t5, i32 0, i32 35
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %lp2
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/views:Viewer", ptr %t15, i32 0, i32 1
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l17
  br label %bb5
bb5:
  %t20 = load i64, ptr %l17, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb11
bb8:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l24, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l24, !tbaa !24
  store i64 %t47, ptr %l21, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l21, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l8, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/views:Viewer", ptr %t67, i32 0, i32 34
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l43, !tbaa !27
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %t74, i64 %t71
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !37
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t76, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t78, ptr %l46
  br label %bb16
bb16:
  %t79 = load i1, ptr %l46, !tbaa !21
  br i1 %t79, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb20
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/views:Viewer", ptr %t80, i32 0, i32 1
  %t83 = load i64, ptr %l8, !tbaa !24
  %t86 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t82, i64 %t83)
  store ptr %t86, ptr %l51
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l51, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Body", ptr %t87, i32 0, i32 3
  %t90 = load i64, ptr %t89, !tbaa !24
  %t94 = icmp ne i64 %t90, %a1
  store i1 %t94, ptr %l47, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l47, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb22:
  br label %bb23
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = call { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaryText(ptr %v0, ptr %s3, ptr %t97, i64 %t98)
  %t102 = extractvalue { i32, { i64, ptr } } %t101, 1
  %t103 = extractvalue { i32, { i64, ptr } } %t101, 0
  store i32 %t103, ptr %l60
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb25, label %ok.105, !prof !99
ok.105:
  store { i64, ptr } %t102, ptr %l59
  br label %bb24
bb24:
  %t106 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t106, ptr %l56, !tbaa !27
  br label %bb27
bb25:
  %t107 = load i32, ptr %l60, !tbaa !23
  %t108 = ashr i32 %t107, 16
  %t110 = icmp eq i32 %t108, 1
  store i1 %t110, ptr %l62, !tbaa !21
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb27:
  %t111 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t111, ptr %l9, !tbaa !27
  %t112 = load ptr, ptr %lp2
  store ptr %t112, ptr %l63, !tbaa !29
  %t113 = ptrtoint ptr %v1 to i64
  store i64 %t113, ptr %l64, !tbaa !24
  %t114 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t114, label %bb28, label %bb29
bb28:
  %t116 = call ptr @__olang_region_make(ptr %v1)
  %t117 = ptrtoint ptr %t116 to i64
  store i64 %t117, ptr %l64, !tbaa !24
  br label %bb29
bb29:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/views:Viewer", ptr %t118, i32 0, i32 34
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l67, !tbaa !27
  %t122 = load i64, ptr %l8, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %t125, i64 %t122
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !37
  %t128 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t127, 1
  %t131 = extractvalue { i64, ptr } %t127, 0
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t136 = extractvalue { i64, ptr } %t128, 1
  %t137 = extractvalue { i64, ptr } %t128, 0
  %t138 = add i64 %t134, %t137
  %t139 = load i64, ptr %l64
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = call ptr @__olang_scope_alloc(ptr %t140, i64 %t138)
  call void @olang_textcopy(ptr %t141, ptr %t130, i64 %t131)
  %t142 = getelementptr i8, ptr %t141, i64 %t131
  call void @olang_textcopy(ptr %t142, ptr %t132, i64 %t133)
  %t143 = getelementptr i8, ptr %t142, i64 %t133
  call void @olang_textcopy(ptr %t143, ptr %t136, i64 %t137)
  %t144 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t141, 1
  %t147 = load i64, ptr %l64
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = extractvalue { i64, ptr } %t145, 0
  %t150 = extractvalue { i64, ptr } %t145, 1
  %t151 = mul i64 %t149, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %t148, i64 %t151)
  call void @llvm.memcpy.p0.p0.i64(ptr %t152, ptr %t150, i64 %t151, i1 false)
  %t153 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  %t155 = load ptr, ptr %l63, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t155, { i64, ptr } %t154)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  %t157 = load i64, ptr %l7, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l7, !tbaa !24
  br label %bb12
bb32:
  %t161 = load ptr, ptr %lp2
  %t162 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_9, 0
  %t163 = insertvalue { ptr, ptr } %t162, ptr null, 1
  %t166 = extractvalue { ptr, ptr } %t163, 0
  %t167 = extractvalue { ptr, ptr } %t163, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v1, ptr %s0, ptr %t161, ptr %t166, ptr %t167)
  br label %bb33
bb33:
  %t168 = load ptr, ptr %lp2
  %t169 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t168
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t169, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Arm", ptr %t3, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l7, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t20, ptr %l23, !tbaa !27
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 %t21
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l8, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l8, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Alt", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t28, ptr %t32, ptr %t34, ptr %l4)
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l8, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Alt", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s4
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l11, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s4)
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t56 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t56, ptr %l40, !tbaa !27
  %t57 = load i64, ptr %l10, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr ptr, ptr %t60, i64 %t57
  %t62 = load ptr, ptr %t61, !tbaa !39
  store ptr %t62, ptr %l12, !tbaa !29
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l43
  br label %bb11
bb11:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l13
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l12, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Bind", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s4, ptr %t66, ptr %t70, ptr %t72, ptr %l13)
  br label %bb12
bb12:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l12, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Bind", ptr %t78, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t84 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebind(ptr %v0, ptr %s4, ptr %s4, ptr %v2, ptr %t77, i64 %t83, ptr null, ptr %l13, i1 false, ptr %t84)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s4)
  br label %bb14
bb14:
  %t89 = load i64, ptr %l10, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l10, !tbaa !24
  br label %bb7
bb15:
  br label %bb16
bb16:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l6, !tbaa !24
  br label %bb2
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Arm", ptr %t98, i32 0, i32 2
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t97, ptr %t101, ptr %t102, ptr %l4)
  br label %bb18
bb18:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Arm", ptr %t108, i32 0, i32 3
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %t107, ptr %t111, ptr %t112)
  br label %bb19
bb19:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Arm", ptr %t117, i32 0, i32 4
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t121 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t116, ptr %t120, ptr %t121, ptr %a3)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l8 = alloca i32
  %l13 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l25 = alloca i32
  %l26 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l43 = alloca i1
  %l44 = alloca i1
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca i1
  %l64 = alloca i1
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/views:Viewer", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l13
  br label %bb2
bb2:
  %t17 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t19 = trunc i64 18 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t24, ptr %l18, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l19, !tbaa !24
  %t27 = load i64, ptr %l19, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l20, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t38, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t39 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/views:Viewer", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l25
  br label %bb6
bb6:
  %t50 = load i32, ptr %l25, !tbaa !23
  store i32 %t50, ptr %l3, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/views:Viewer", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l31
  br label %bb7
bb7:
  %t62 = load ptr, ptr %l26, !tbaa !29
  %t63 = load i32, ptr %l31, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v0, ptr %t62, i32 %t63)
  store { i64, ptr } %t64, ptr %l32
  br label %bb8
bb8:
  %t65 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t65, ptr %l4, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/views:Viewer", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = getelementptr %"compiler/types:Table", ptr %t71, i32 0, i32 14
  store ptr %t72, ptr %l35, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/views:Viewer", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l3, !tbaa !23
  %t82 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t78, i32 %t79)
  store i64 %t82, ptr %l40
  br label %bb9
bb9:
  %t83 = load ptr, ptr %l35, !tbaa !29
  %t84 = load i64, ptr %l40, !tbaa !24
  %t85 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t83, i64 %t84)
  store { i64, ptr } %t85, ptr %l41
  br label %bb10
bb10:
  %t86 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t86, ptr %l5, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t89, ptr %l43
  br label %bb11
bb11:
  %t90 = load i1, ptr %l43, !tbaa !21
  br i1 %t90, label %bb12, label %bb13
bb12:
  %t91 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t91, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t93, ptr %l46
  br label %bb14
bb13:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb15
bb14:
  %t94 = load i1, ptr %l46, !tbaa !21
  store i1 %t94, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t95 = load i1, ptr %l44, !tbaa !21
  br i1 %t95, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t96, ptr %l48, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  store i64 %t98, ptr %l49, !tbaa !24
  %t99 = load i64, ptr %l49, !tbaa !24
  %t100 = mul i64 %t99, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t100)
  %t102 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  store { i64, ptr } %t103, ptr %l50, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l49, !tbaa !24
  %t109 = mul i64 %t108, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %t107, i64 %t109, i1 false)
  %t110 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t110, ptr %l48, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t111 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t112 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t112, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t114, ptr %l52
  br label %bb19
bb19:
  %t115 = load i1, ptr %l52, !tbaa !21
  br i1 %t115, label %bb20, label %bb21
bb20:
  %t116 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t116, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t118, ptr %l55
  br label %bb22
bb21:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb23
bb22:
  %t119 = load i1, ptr %l55, !tbaa !21
  store i1 %t119, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t120 = load i1, ptr %l53, !tbaa !21
  br i1 %t120, label %bb24, label %bb25
bb24:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t121, ptr %l57, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l58, !tbaa !24
  %t124 = load i64, ptr %l58, !tbaa !24
  %t125 = mul i64 %t124, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l59, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l58, !tbaa !24
  %t134 = mul i64 %t133, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t130, ptr %t132, i64 %t134, i1 false)
  %t135 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t135, ptr %l57, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t136 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t136, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t137 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t137, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t139, ptr %l61
  br label %bb27
bb27:
  %t140 = load i1, ptr %l61, !tbaa !21
  br i1 %t140, label %bb28, label %bb29
bb28:
  %t141 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t143 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t141, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t143, ptr %l64
  br label %bb30
bb29:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb31
bb30:
  %t144 = load i1, ptr %l64, !tbaa !21
  store i1 %t144, ptr %l62, !tbaa !21
  br label %bb31
bb31:
  %t145 = load i1, ptr %l62, !tbaa !21
  br i1 %t145, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l65, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t146, ptr %l66, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l67, !tbaa !24
  %t149 = load i64, ptr %l67, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l68, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l67, !tbaa !24
  %t159 = mul i64 %t158, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %t157, i64 %t159, i1 false)
  %t160 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t160, ptr %l66, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t161 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t161, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l69, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t162, ptr %l70, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l71, !tbaa !24
  %t165 = load i64, ptr %l71, !tbaa !24
  %t166 = mul i64 %t165, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t166)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  store { i64, ptr } %t169, ptr %l72, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l71, !tbaa !24
  %t175 = mul i64 %t174, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t171, ptr %t173, i64 %t175, i1 false)
  %t176 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t176, ptr %l70, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t177 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i64
  %l22 = alloca i1
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca %"compiler/views:fact"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca i32
  %l34 = alloca { i64, ptr }
  %l35 = alloca i1
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca %"compiler/views:place"
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca %"compiler/views:view"
  %l56 = alloca i64
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca i64
  %l76 = alloca %"compiler/views:fact"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca ptr
  %l79 = alloca i64
  %l81 = alloca %"compiler/views:view"
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i64
  %l87 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca i64
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca ptr
  %l94 = alloca i64
  %l95 = alloca %"compiler/views:place"
  %l96 = alloca ptr
  %l97 = alloca i64
  %l98 = alloca %"compiler/views:fact"
  %l99 = alloca ptr
  %l100 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca ptr
  %l104 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l123 = alloca i64
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l132 = alloca i64
  %l135 = alloca i64
  %l153 = alloca ptr
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l155 = alloca ptr
  %l157 = alloca { i64, ptr }
  %l160 = alloca ptr
  %l161 = alloca ptr
  %l164 = alloca ptr
  %l170 = alloca %"compiler/source:Span"
  %l171 = alloca ptr
  %l174 = alloca { i64, ptr }
  %l176 = alloca i64
  %l179 = alloca i1
  %l183 = alloca ptr
  %l186 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l187 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l188 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca ptr
  %l196 = alloca i64
  %l198 = alloca i64
  %l203 = alloca %"compiler/views:fact"
  %l206 = alloca ptr
  %l213 = alloca %"compiler/views:place"
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l224 = alloca { i64, ptr }
  %l231 = alloca i64
  %l233 = alloca i64
  %l238 = alloca %"compiler/views:place"
  %l239 = alloca ptr
  %l245 = alloca %"compiler/views:place"
  %l257 = alloca i32
  %l260 = alloca ptr
  %l265 = alloca i32
  %l266 = alloca { i64, ptr }
  %l269 = alloca ptr
  %l274 = alloca i32
  %l275 = alloca i1
  %l280 = alloca i64
  %l283 = alloca i64
  %l302 = alloca { i64, ptr }
  %l305 = alloca ptr
  %l307 = alloca i32
  %l308 = alloca i1
  %l314 = alloca i1
  %l318 = alloca { i64, ptr }
  %l321 = alloca i1
  %l322 = alloca i1
  %l326 = alloca { i64, ptr }
  %l329 = alloca i64
  %l334 = alloca i1
  %l339 = alloca i1
  %l343 = alloca { i64, ptr }
  %l346 = alloca i1
  %l348 = alloca i1
  %l352 = alloca { i64, ptr }
  %l355 = alloca i1
  %l357 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l364 = alloca i64
  %l366 = alloca i64
  %l371 = alloca %"compiler/views:place"
  %l372 = alloca ptr
  %l373 = alloca { i64, [2 x i64] }
  %l374 = alloca i64
  %l378 = alloca { i64, ptr }
  %l380 = alloca %"compiler/views:place"
  %l382 = alloca ptr
  %l383 = alloca %"compiler/source:Span"
  %l390 = alloca i1
  %l394 = alloca i1
  %l402 = alloca i64
  %l405 = alloca i64
  %l425 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l427 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l429 = alloca i64
  %l431 = alloca i64
  %l436 = alloca %"compiler/views:view"
  %l440 = alloca i64
  %l445 = alloca { i64, ptr }
  %l448 = alloca %"compiler/source:Span"
  %l451 = alloca i1
  %l453 = alloca ptr
  %l454 = alloca %"compiler/source:Span"
  %l455 = alloca %"compiler/views:place"
  %l456 = alloca i64
  %l457 = alloca i64
  %l459 = alloca i64
  %l462 = alloca i64
  %l465 = alloca %"compiler/source:Span"
  %l471 = alloca i64
  %l475 = alloca i64
  %l478 = alloca i64
  %l496 = alloca ptr
  %l499 = alloca %"compiler/views:place"
  %l500 = alloca %"compiler/source:Span"
  %l501 = alloca i64
  %l504 = alloca i64
  %l507 = alloca %"compiler/source:Span"
  %l512 = alloca i64
  %l514 = alloca i64
  %l519 = alloca %"compiler/views:view"
  %l524 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l529 = alloca i64
  %l532 = alloca i64
  %l557 = alloca ptr
  %l560 = alloca i64
  %l562 = alloca i64
  %l567 = alloca %"compiler/views:fact"
  %l570 = alloca i1
  %l576 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l579 = alloca { i64, ptr }
  %l586 = alloca i64
  %l588 = alloca i64
  %l593 = alloca %"compiler/views:place"
  %l599 = alloca %"compiler/views:place"
  %l602 = alloca %"compiler/views:view"
  %l606 = alloca ptr
  %l612 = alloca i64
  %l616 = alloca ptr
  %l622 = alloca i64
  %l631 = alloca i1
  %l636 = alloca i64
  %l639 = alloca i64
  %l659 = alloca i1
  %l661 = alloca i1
  %l664 = alloca i1
  %l667 = alloca i1
  %l668 = alloca i64
  %l672 = alloca ptr
  %l675 = alloca i64
  %l677 = alloca i1
  %l681 = alloca ptr
  %l685 = alloca i1
  %l689 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l691 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l693 = alloca i64
  %l695 = alloca i64
  %l700 = alloca %"compiler/views:view"
  %l706 = alloca i1
  %l707 = alloca ptr
  %l709 = alloca { i64, ptr }
  %l712 = alloca i32
  %l713 = alloca i1
  %l714 = alloca i1
  %l717 = alloca i1
  %l718 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l721 = alloca { i64, ptr }
  %l728 = alloca i64
  %l730 = alloca i64
  %l735 = alloca %"compiler/views:place"
  %l736 = alloca ptr
  %l737 = alloca { i64, [2 x i64] }
  %l738 = alloca i64
  %l742 = alloca { i64, ptr }
  %l744 = alloca %"compiler/views:place"
  %l747 = alloca %"compiler/views:view"
  %l753 = alloca i1
  %l760 = alloca ptr
  %l763 = alloca i64
  %l765 = alloca i64
  %l770 = alloca %"compiler/views:fact"
  %l773 = alloca i1
  %l777 = alloca i1
  %l780 = alloca i1
  %l784 = alloca i1
  %l787 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l789 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l791 = alloca i64
  %l794 = alloca { i64, ptr }
  %l797 = alloca ptr
  %l799 = alloca ptr
  %l801 = alloca i32
  %l804 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l806 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s47 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %s61 = alloca %olang.scope
  %s63 = alloca %olang.scope
  %s68 = alloca %olang.scope
  %t227 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l100
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  store i64 -1, ptr %l7, !tbaa !24
  store i1 false, ptr %l8, !tbaa !21
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Call", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  %t8 = load ptr, ptr %l9, !tbaa !29
  store ptr %t8, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t9 = load ptr, ptr %l103, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l103, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 5}
  %t15 = icmp eq i64 %t13, 0
  store i1 %t15, ptr %l104, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l104, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t19 = getelementptr { i64, [3 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { i32 }, ptr %t19, i32 0, i32 0
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l10, !tbaa !23
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t23 = load i32, ptr %l10, !tbaa !23
  %t25 = sext i32 %t23 to i64
  store i64 %t25, ptr %l7, !tbaa !24
  br label %bb20
bb7:
  %t27 = load ptr, ptr %l9, !tbaa !29
  store ptr %t27, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t28 = load ptr, ptr %l111, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l111, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 5}
  %t34 = icmp eq i64 %t32, 2
  store i1 %t34, ptr %l112, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l112, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { ptr }, ptr %t38, i32 0, i32 0
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l11, !tbaa !29
  br label %bb12
bb11:
  br label %bb15
bb12:
  store i1 true, ptr %l8, !tbaa !21
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l11, !tbaa !29
  %t45 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t42, ptr %t43, ptr %t45, ptr %l6)
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l11, !tbaa !29
  %t52 = call i64 @compiler_2fviews_2ewrittenFn(ptr %v1, ptr %t50)
  store i64 %t52, ptr %l123
  br label %bb14
bb14:
  %t53 = load i64, ptr %l123, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_f56dc5f524947092_cf97541144f04b56)
  unreachable
bb20:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Call", ptr %t54, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l12, !tbaa !24
  %t61 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, ptr %l127
  br label %bb21
bb21:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t63 = load i64, ptr %l12, !tbaa !24
  store i64 %t63, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t65 = load i64, ptr %l15, !tbaa !24
  %t66 = load i64, ptr %l14, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load i64, ptr %l16, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb27
bb24:
  %t75 = load i64, ptr %l15, !tbaa !24
  %t76 = load i64, ptr %l14, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l16, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l16, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l135, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb26
bb26:
  %t91 = load i64, ptr %l135, !tbaa !24
  store i64 %t91, ptr %l132, !tbaa !24
  br label %bb27
bb27:
  %t92 = load i64, ptr %l132, !tbaa !24
  store i64 %t92, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t93 = load i64, ptr %l18, !tbaa !24
  %t94 = load i64, ptr %l17, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb30:
  br label %bb31
bb31:
  %t101 = load i64, ptr %l14, !tbaa !24
  %t102 = load i64, ptr %l18, !tbaa !24
  %t103 = load i64, ptr %l16, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l19, !tbaa !24
  store ptr %l13, ptr %l153, !tbaa !29
  %t111 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t111, ptr %l154
  br label %bb32
bb32:
  %t112 = load ptr, ptr %l153, !tbaa !29
  %t113 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hcddb8d7004bc9cdff185b89d31641a08(ptr %s0, ptr %s5, ptr %t112, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113)
  br label %bb33
bb33:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l155, !tbaa !29
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Call", ptr %t115, i32 0, i32 1
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l157, !tbaa !27
  %t119 = load i64, ptr %l19, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  store ptr %t124, ptr %l160, !tbaa !29
  %t126 = load ptr, ptr %l4, !tbaa !29
  store ptr %t126, ptr %l161, !tbaa !29
  %t127 = load i64, ptr %l19, !tbaa !24
  %t130 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H5cdbeb94ae0c6e2e33fc44df03720816(ptr %s0, ptr %s0, ptr %l13, i64 %t127)
  store ptr %t130, ptr %l164
  br label %bb34
bb34:
  %t131 = load ptr, ptr %l155, !tbaa !29
  %t132 = load ptr, ptr %l160, !tbaa !29
  %t133 = load ptr, ptr %l161, !tbaa !29
  %t134 = load ptr, ptr %l164, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t131, ptr %t132, ptr %t133, ptr %t134)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb36:
  %t135 = load i64, ptr %l18, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l18, !tbaa !24
  br label %bb28
bb37:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l3, !tbaa !29
  %t145 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %t139, %"compiler/source:Span" %a1, ptr %t141)
  store %"compiler/source:Span" %t145, ptr %l170
  br label %bb38
bb38:
  %t146 = load %"compiler/source:Span", ptr %l170
  store %"compiler/source:Span" %t146, ptr %l20
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l171, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i64, ptr %l7, !tbaa !24
  %t152 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2equoted(ptr %v0, ptr %v0, ptr %t148, i64 %t149)
  store { i64, ptr } %t152, ptr %l174
  br label %bb39
bb39:
  %t153 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  %t155 = extractvalue { i64, ptr } %t153, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = load ptr, ptr %l171, !tbaa !29
  %t162 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t160, { i64, ptr } %t159)
  store i64 %t162, ptr %l176
  br label %bb40
bb40:
  %t163 = load i64, ptr %l176, !tbaa !24
  store i64 %t163, ptr %l21, !tbaa !24
  %t164 = load i64, ptr %l7, !tbaa !24
  %t166 = icmp sge i64 %t164, 0
  br i1 %t166, label %bb41, label %bb42
bb41:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/views:Viewer", ptr %t168, i32 0, i32 2
  %t171 = load i64, ptr %l7, !tbaa !24
  %t174 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t170, i64 %t171)
  store ptr %t174, ptr %l183
  br label %bb43
bb42:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb44
bb43:
  %t175 = load ptr, ptr %l183, !tbaa !29
  %t177 = getelementptr %"compiler/views:summary", ptr %t175, i32 0, i32 4
  %t178 = load i1, ptr %t177, !tbaa !21
  store i1 %t178, ptr %l179, !tbaa !21
  br label %bb44
bb44:
  %t180 = load i1, ptr %l179, !tbaa !21
  store i1 %t180, ptr %l22, !tbaa !21
  %t181 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l186
  br label %bb45
bb45:
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l186
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l23
  %t183 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %l187
  br label %bb46
bb46:
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l187
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l24
  %t185 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %l188
  br label %bb47
bb47:
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l25
  %t187 = load i1, ptr %l22, !tbaa !21
  br i1 %t187, label %bb48, label %bb49
bb48:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/views:Viewer", ptr %t189, i32 0, i32 2
  %t192 = load i64, ptr %l7, !tbaa !24
  %t195 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t191, i64 %t192)
  store ptr %t195, ptr %l193
  br label %bb50
bb49:
  %t196 = load i1, ptr %l8, !tbaa !21
  br i1 %t196, label %bb83, label %bb84
bb50:
  %t198 = load ptr, ptr %l193, !tbaa !29
  %t200 = getelementptr %"compiler/views:summary", ptr %t198, i32 0, i32 0
  store ptr %t200, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb51
bb51:
  store %olang.scope zeroinitializer, ptr %s9
  %t202 = load i64, ptr %l27, !tbaa !24
  store i64 %t202, ptr %l196, !tbaa !24
  %t203 = load ptr, ptr %l26, !tbaa !29
  %t205 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t203)
  store i64 %t205, ptr %l198
  br label %bb52
bb52:
  %t206 = load i64, ptr %l196, !tbaa !24
  %t207 = load i64, ptr %l198, !tbaa !24
  %t208 = icmp slt i64 %t206, %t207
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s9)
  br label %bb82
bb54:
  br label %bb55
bb55:
  %t212 = load ptr, ptr %l26, !tbaa !29
  %t213 = load i64, ptr %l27, !tbaa !24
  %t216 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t212, i64 %t213)
  store %"compiler/views:fact" %t216, ptr %l203
  br label %bb56
bb56:
  %t217 = load %"compiler/views:fact", ptr %l203
  store %"compiler/views:fact" %t217, ptr %l28
  %t218 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 0
  %t219 = load i64, ptr %t218, !tbaa !24
  %t221 = icmp slt i64 %t219, 0
  br i1 %t221, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %l23, ptr %l206, !tbaa !29
  %t223 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 1
  %t224 = load i64, ptr %t223, !tbaa !24
  %t225 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 2
  %t226 = load i32, ptr %t225, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t227
  %t228 = getelementptr { i64, [2 x i64] }, ptr %t227, i32 0, i32 0
  store i64 3, ptr %t228
  %t230 = insertvalue { i64, i32 } undef, i64 %t224, 0
  %t232 = insertvalue { i64, i32 } %t230, i32 %t226, 1
  %t233 = getelementptr { i64, [2 x i64] }, ptr %t227, i32 0, i32 1
  store { i64, i32 } %t232, ptr %t233
  %t234 = load { i64, [2 x i64] }, ptr %t227
  %t235 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 3
  %t236 = load i64, ptr %t235, !tbaa !24
  %t237 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 4
  %t238 = load i64, ptr %t237, !tbaa !24
  %t239 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 5
  %t240 = load i1, ptr %t239, !tbaa !21
  %t245 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s10, { i64, [2 x i64] } %t234, i64 %t236, i64 %t238, i1 %t240)
  store %"compiler/views:place" %t245, ptr %l213
  br label %bb59
bb58:
  br label %bb63
bb59:
  %t246 = load ptr, ptr %l206, !tbaa !29
  %t247 = load %"compiler/views:place", ptr %l213
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t246, %"compiler/views:place" %t247)
  br label %bb60
bb60:
  %t248 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 6
  %t249 = load i64, ptr %t248, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l24, i64 %t249)
  br label %bb61
bb61:
  %t252 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 7
  %t253 = load %"compiler/source:Span", ptr %t252
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, %"compiler/source:Span" %t253)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  br label %bb81
bb63:
  %t256 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 0
  %t257 = load i64, ptr %t256, !tbaa !24
  %t258 = load i64, ptr %l12, !tbaa !24
  %t261 = icmp sge i64 %t257, %t258
  br i1 %t261, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s9)
  br label %bb81
bb65:
  br label %bb66
bb66:
  %t263 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %l221
  br label %bb67
bb67:
  %t264 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %l29
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load ptr, ptr %l3, !tbaa !29
  %t268 = getelementptr %"compiler/typed:Call", ptr %t266, i32 0, i32 1
  %t269 = load { i64, ptr }, ptr %t268, !tbaa !27
  store { i64, ptr } %t269, ptr %l224, !tbaa !27
  %t270 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 0
  %t271 = load i64, ptr %t270, !tbaa !24
  %t273 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = getelementptr ptr, ptr %t274, i64 %t271
  %t276 = load ptr, ptr %t275, !tbaa !39
  %t278 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s9, ptr %t265, ptr %t276, ptr %t278, ptr %l29)
  br label %bb68
bb68:
  store ptr %l29, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb69
bb69:
  %t284 = load i64, ptr %l31, !tbaa !24
  store i64 %t284, ptr %l231, !tbaa !24
  %t285 = load ptr, ptr %l30, !tbaa !29
  %t287 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s9, ptr %t285)
  store i64 %t287, ptr %l233
  br label %bb70
bb70:
  %t288 = load i64, ptr %l231, !tbaa !24
  %t289 = load i64, ptr %l233, !tbaa !24
  %t290 = icmp slt i64 %t288, %t289
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb71, label %bb72
bb71:
  br label %bb80
bb72:
  br label %bb73
bb73:
  %t294 = load ptr, ptr %l30, !tbaa !29
  %t295 = load i64, ptr %l31, !tbaa !24
  %t298 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s9, ptr %t294, i64 %t295)
  store %"compiler/views:place" %t298, ptr %l238
  br label %bb74
bb74:
  %t299 = load %"compiler/views:place", ptr %l238
  store ptr %l23, ptr %l239, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 3
  %t303 = load i64, ptr %t302, !tbaa !24
  %t304 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 4
  %t305 = load i64, ptr %t304, !tbaa !24
  %t306 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 5
  %t307 = load i1, ptr %t306, !tbaa !21
  %t313 = call %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %t300, %"compiler/views:place" %t299, i64 %t303, i64 %t305, i1 %t307)
  store %"compiler/views:place" %t313, ptr %l245
  br label %bb75
bb75:
  %t314 = load ptr, ptr %l239, !tbaa !29
  %t315 = load %"compiler/views:place", ptr %l245
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t314, %"compiler/views:place" %t315)
  br label %bb76
bb76:
  %t316 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 6
  %t317 = load i64, ptr %t316, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l24, i64 %t317)
  br label %bb77
bb77:
  %t320 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 7
  %t321 = load %"compiler/source:Span", ptr %t320
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, %"compiler/source:Span" %t321)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t324 = load i64, ptr %l31, !tbaa !24
  %t326 = add i64 %t324, 1
  store i64 %t326, ptr %l31, !tbaa !24
  br label %bb69
bb80:
  call void @__olang_scope_close(ptr %s9)
  br label %bb81
bb81:
  %t328 = load i64, ptr %l27, !tbaa !24
  %t330 = add i64 %t328, 1
  store i64 %t330, ptr %l27, !tbaa !24
  br label %bb51
bb82:
  br label %bb149
bb83:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load ptr, ptr %l3, !tbaa !29
  %t336 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecalleeType(ptr %v0, ptr %v1, ptr %t332, ptr %t333)
  store i32 %t336, ptr %l257
  br label %bb85
bb84:
  br label %bb148
bb85:
  %t337 = load i32, ptr %l257, !tbaa !23
  store i32 %t337, ptr %l33, !tbaa !23
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/views:Viewer", ptr %t338, i32 0, i32 0
  %t341 = load ptr, ptr %t340, !tbaa !29
  %t343 = getelementptr %"compiler/generic:Program", ptr %t341, i32 0, i32 2
  store ptr %t343, ptr %l260, !tbaa !29
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/views:Viewer", ptr %t344, i32 0, i32 0
  %t347 = load ptr, ptr %t346, !tbaa !29
  %t349 = getelementptr %"compiler/generic:Program", ptr %t347, i32 0, i32 2
  %t350 = load i32, ptr %l33, !tbaa !23
  %t353 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t349, i32 %t350)
  store i32 %t353, ptr %l265
  br label %bb86
bb86:
  %t354 = load ptr, ptr %l260, !tbaa !29
  %t355 = load i32, ptr %l265, !tbaa !23
  %t356 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t354, i32 %t355)
  store { i64, ptr } %t356, ptr %l266
  br label %bb87
bb87:
  %t357 = load { i64, ptr }, ptr %l266, !tbaa !27
  store { i64, ptr } %t357, ptr %l34, !tbaa !27
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = getelementptr %"compiler/views:Viewer", ptr %t358, i32 0, i32 0
  %t361 = load ptr, ptr %t360, !tbaa !29
  %t363 = getelementptr %"compiler/generic:Program", ptr %t361, i32 0, i32 2
  store ptr %t363, ptr %l269, !tbaa !29
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/views:Viewer", ptr %t364, i32 0, i32 0
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t369 = getelementptr %"compiler/generic:Program", ptr %t367, i32 0, i32 2
  %t370 = load i32, ptr %l33, !tbaa !23
  %t373 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t369, i32 %t370)
  store i32 %t373, ptr %l274
  br label %bb88
bb88:
  %t374 = load ptr, ptr %l269, !tbaa !29
  %t375 = load i32, ptr %l274, !tbaa !23
  %t376 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesPure(ptr %v0, ptr %t374, i32 %t375)
  store i1 %t376, ptr %l275
  br label %bb89
bb89:
  %t377 = load i1, ptr %l275, !tbaa !21
  store i1 %t377, ptr %l35, !tbaa !21
  store i64 0, ptr %l36, !tbaa !24
  %t378 = load i64, ptr %l12, !tbaa !24
  store i64 %t378, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t380 = load i64, ptr %l37, !tbaa !24
  %t381 = load i64, ptr %l36, !tbaa !24
  %t384 = icmp sgt i64 %t380, %t381
  br i1 %t384, label %bb90, label %bb91
bb90:
  %t386 = load i64, ptr %l38, !tbaa !24
  %t388 = icmp sgt i64 %t386, 0
  br i1 %t388, label %bb92, label %bb93
bb91:
  store i64 0, ptr %l280, !tbaa !24
  br label %bb95
bb92:
  %t390 = load i64, ptr %l37, !tbaa !24
  %t391 = load i64, ptr %l36, !tbaa !24
  %t394 = sub i64 %t390, %t391
  %t395 = load i64, ptr %l38, !tbaa !24
  %t398 = add i64 %t394, %t395
  %t400 = sub i64 %t398, 1
  %t401 = load i64, ptr %l38, !tbaa !24
  %t404 = sdiv i64 %t400, %t401
  store i64 %t404, ptr %l283, !tbaa !24
  br label %bb94
bb93:
  store i64 0, ptr %l283, !tbaa !24
  br label %bb94
bb94:
  %t406 = load i64, ptr %l283, !tbaa !24
  store i64 %t406, ptr %l280, !tbaa !24
  br label %bb95
bb95:
  %t407 = load i64, ptr %l280, !tbaa !24
  store i64 %t407, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb96
bb96:
  store %olang.scope zeroinitializer, ptr %s19
  %t408 = load i64, ptr %l40, !tbaa !24
  %t409 = load i64, ptr %l39, !tbaa !24
  %t412 = icmp slt i64 %t408, %t409
  %t414 = xor i1 %t412, true
  br i1 %t414, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s19)
  br label %bb147
bb98:
  br label %bb99
bb99:
  %t416 = load i64, ptr %l36, !tbaa !24
  %t417 = load i64, ptr %l40, !tbaa !24
  %t418 = load i64, ptr %l38, !tbaa !24
  %t421 = mul i64 %t417, %t418
  %t424 = add i64 %t416, %t421
  store i64 %t424, ptr %l41, !tbaa !24
  %t426 = load ptr, ptr %l3, !tbaa !29
  %t428 = getelementptr %"compiler/typed:Call", ptr %t426, i32 0, i32 1
  %t429 = load { i64, ptr }, ptr %t428, !tbaa !27
  store { i64, ptr } %t429, ptr %l302, !tbaa !27
  %t430 = load i64, ptr %l41, !tbaa !24
  %t432 = getelementptr { i64, ptr }, ptr %l302, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !27
  %t434 = getelementptr ptr, ptr %t433, i64 %t430
  %t435 = load ptr, ptr %t434, !tbaa !39
  store ptr %t435, ptr %l42, !tbaa !29
  %t437 = load ptr, ptr %l0, !tbaa !29
  store ptr %t437, ptr %l305, !tbaa !29
  %t438 = load ptr, ptr %l42, !tbaa !29
  %t440 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t438)
  store i32 %t440, ptr %l307
  br label %bb100
bb100:
  %t441 = load ptr, ptr %l305, !tbaa !29
  %t442 = load i32, ptr %l307, !tbaa !23
  %t443 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %t441, i32 %t442)
  store i1 %t443, ptr %l308
  br label %bb101
bb101:
  %t444 = load i1, ptr %l308, !tbaa !21
  %t445 = xor i1 %t444, true
  br i1 %t445, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s19)
  br label %bb146
bb103:
  br label %bb104
bb104:
  %t447 = load i64, ptr %l41, !tbaa !24
  %t448 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t450 = extractvalue { i64, ptr } %t448, 0
  %t453 = icmp slt i64 %t447, %t450
  br i1 %t453, label %bb105, label %bb106
bb105:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/views:Viewer", ptr %t455, i32 0, i32 0
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t460 = getelementptr %"compiler/generic:Program", ptr %t458, i32 0, i32 2
  %t461 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t461, ptr %l318, !tbaa !27
  %t462 = load i64, ptr %l41, !tbaa !24
  %t464 = getelementptr { i64, ptr }, ptr %l318, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr i32, ptr %t465, i64 %t462
  %t467 = load i32, ptr %t466, !tbaa !33
  %t470 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t460, i32 %t467)
  store i1 %t470, ptr %l321
  br label %bb107
bb106:
  store i1 false, ptr %l314, !tbaa !21
  br label %bb108
bb107:
  %t471 = load i1, ptr %l321, !tbaa !21
  store i1 %t471, ptr %l314, !tbaa !21
  br label %bb108
bb108:
  %t472 = load i1, ptr %l314, !tbaa !21
  br i1 %t472, label %bb109, label %bb110
bb109:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/views:Viewer", ptr %t473, i32 0, i32 0
  %t476 = load ptr, ptr %t475, !tbaa !29
  %t478 = getelementptr %"compiler/generic:Program", ptr %t476, i32 0, i32 2
  %t479 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t479, ptr %l326, !tbaa !27
  %t480 = load i64, ptr %l41, !tbaa !24
  %t482 = getelementptr { i64, ptr }, ptr %l326, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !27
  %t484 = getelementptr i32, ptr %t483, i64 %t480
  %t485 = load i32, ptr %t484, !tbaa !33
  %t488 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t478, i32 %t485)
  store i64 %t488, ptr %l329
  br label %bb111
bb110:
  store i1 false, ptr %l322, !tbaa !21
  br label %bb112
bb111:
  %t489 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t490 = load i64, ptr %l329, !tbaa !24
  %t492 = and i64 %t490, %t489
  %t494 = icmp eq i64 %t492, 0
  store i1 %t494, ptr %l322, !tbaa !21
  br label %bb112
bb112:
  %t496 = load i1, ptr %l322, !tbaa !21
  br i1 %t496, label %bb113, label %bb114
bb113:
  call void @__olang_scope_close(ptr %s19)
  br label %bb146
bb114:
  br label %bb115
bb115:
  %t497 = load i1, ptr %l35, !tbaa !21
  br i1 %t497, label %bb116, label %bb117
bb116:
  %t499 = load i64, ptr %l41, !tbaa !24
  %t500 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t500, 0
  %t505 = icmp slt i64 %t499, %t502
  store i1 %t505, ptr %l334, !tbaa !21
  br label %bb118
bb117:
  store i1 false, ptr %l334, !tbaa !21
  br label %bb118
bb118:
  %t507 = load i1, ptr %l334, !tbaa !21
  br i1 %t507, label %bb119, label %bb120
bb119:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/views:Viewer", ptr %t508, i32 0, i32 0
  %t511 = load ptr, ptr %t510, !tbaa !29
  %t513 = getelementptr %"compiler/generic:Program", ptr %t511, i32 0, i32 2
  %t514 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t514, ptr %l343, !tbaa !27
  %t515 = load i64, ptr %l41, !tbaa !24
  %t517 = getelementptr { i64, ptr }, ptr %l343, i32 0, i32 1
  %t518 = load ptr, ptr %t517, !tbaa !27
  %t519 = getelementptr i32, ptr %t518, i64 %t515
  %t520 = load i32, ptr %t519, !tbaa !33
  %t523 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t513, i32 %t520)
  store i1 %t523, ptr %l346
  br label %bb121
bb120:
  store i1 false, ptr %l339, !tbaa !21
  br label %bb122
bb121:
  %t524 = load i1, ptr %l346, !tbaa !21
  %t525 = xor i1 %t524, true
  store i1 %t525, ptr %l339, !tbaa !21
  br label %bb122
bb122:
  %t527 = load i1, ptr %l339, !tbaa !21
  br i1 %t527, label %bb123, label %bb124
bb123:
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t530 = getelementptr %"compiler/views:Viewer", ptr %t528, i32 0, i32 0
  %t531 = load ptr, ptr %t530, !tbaa !29
  %t533 = getelementptr %"compiler/generic:Program", ptr %t531, i32 0, i32 2
  %t534 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t534, ptr %l352, !tbaa !27
  %t535 = load i64, ptr %l41, !tbaa !24
  %t537 = getelementptr { i64, ptr }, ptr %l352, i32 0, i32 1
  %t538 = load ptr, ptr %t537, !tbaa !27
  %t539 = getelementptr i32, ptr %t538, i64 %t535
  %t540 = load i32, ptr %t539, !tbaa !33
  %t543 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %t533, i32 %t540, i1 true)
  store i1 %t543, ptr %l355
  br label %bb125
bb124:
  store i1 false, ptr %l348, !tbaa !21
  br label %bb126
bb125:
  %t544 = load i1, ptr %l355, !tbaa !21
  %t545 = xor i1 %t544, true
  store i1 %t545, ptr %l348, !tbaa !21
  br label %bb126
bb126:
  %t547 = load i1, ptr %l348, !tbaa !21
  br i1 %t547, label %bb127, label %bb128
bb127:
  call void @__olang_scope_close(ptr %s19)
  br label %bb146
bb128:
  br label %bb129
bb129:
  %t548 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t548, ptr %l357
  br label %bb130
bb130:
  %t549 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l357
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t549, ptr %l43
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t551 = load ptr, ptr %l42, !tbaa !29
  %t553 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s19, ptr %t550, ptr %t551, ptr %t553, ptr %l43)
  br label %bb131
bb131:
  store ptr %l43, ptr %l44, !tbaa !29
  store i64 0, ptr %l45, !tbaa !24
  br label %bb132
bb132:
  store %olang.scope zeroinitializer, ptr %s24
  %t559 = load i64, ptr %l45, !tbaa !24
  store i64 %t559, ptr %l364, !tbaa !24
  %t560 = load ptr, ptr %l44, !tbaa !29
  %t562 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s19, ptr %t560)
  store i64 %t562, ptr %l366
  br label %bb133
bb133:
  %t563 = load i64, ptr %l364, !tbaa !24
  %t564 = load i64, ptr %l366, !tbaa !24
  %t565 = icmp slt i64 %t563, %t564
  %t567 = xor i1 %t565, true
  br i1 %t567, label %bb134, label %bb135
bb134:
  call void @__olang_scope_close(ptr %s24)
  br label %bb145
bb135:
  br label %bb136
bb136:
  %t569 = load ptr, ptr %l44, !tbaa !29
  %t570 = load i64, ptr %l45, !tbaa !24
  %t573 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s19, ptr %t569, i64 %t570)
  store %"compiler/views:place" %t573, ptr %l371
  br label %bb137
bb137:
  %t574 = load %"compiler/views:place", ptr %l371
  store %"compiler/views:place" %t574, ptr %l46
  store ptr %l23, ptr %l372, !tbaa !29
  %t575 = getelementptr %"compiler/views:place", ptr %l46, i32 0, i32 0
  %t576 = load { i64, [2 x i64] }, ptr %t575
  store { i64, [2 x i64] } %t576, ptr %l373
  %t577 = getelementptr %"compiler/views:place", ptr %l46, i32 0, i32 1
  %t578 = load i64, ptr %t577, !tbaa !24
  store i64 %t578, ptr %l374, !tbaa !24
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t581 = getelementptr %"compiler/views:Viewer", ptr %t579, i32 0, i32 3
  %t582 = getelementptr %"compiler/views:place", ptr %l46, i32 0, i32 1
  %t583 = load i64, ptr %t582, !tbaa !24
  %t586 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s24, ptr %t581, i64 %t583)
  store { i64, ptr } %t586, ptr %l378
  br label %bb138
bb138:
  %t587 = load { i64, ptr }, ptr %l378, !tbaa !27
  %t588 = extractvalue { i64, ptr } %t587, 0
  %t589 = load { i64, [2 x i64] }, ptr %l373
  %t590 = load i64, ptr %l374, !tbaa !24
  %t592 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s24, { i64, [2 x i64] } %t589, i64 %t590, i64 %t588, i1 true)
  store %"compiler/views:place" %t592, ptr %l380
  br label %bb139
bb139:
  %t593 = load ptr, ptr %l372, !tbaa !29
  %t594 = load %"compiler/views:place", ptr %l380
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t593, %"compiler/views:place" %t594)
  br label %bb140
bb140:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l24, i64 -1)
  br label %bb141
bb141:
  store ptr %l25, ptr %l382, !tbaa !29
  %t596 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s24, i32 0, i32 0)
  store %"compiler/source:Span" %t596, ptr %l383
  br label %bb142
bb142:
  %t597 = load ptr, ptr %l382, !tbaa !29
  %t598 = load %"compiler/source:Span", ptr %l383
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %t597, %"compiler/source:Span" %t598)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s24)
  br label %bb144
bb144:
  %t599 = load i64, ptr %l45, !tbaa !24
  %t601 = add i64 %t599, 1
  store i64 %t601, ptr %l45, !tbaa !24
  br label %bb132
bb145:
  call void @__olang_scope_close(ptr %s19)
  br label %bb146
bb146:
  %t603 = load i64, ptr %l40, !tbaa !24
  %t605 = add i64 %t603, 1
  store i64 %t605, ptr %l40, !tbaa !24
  br label %bb96
bb147:
  br label %bb148
bb148:
  br label %bb149
bb149:
  %t607 = load ptr, ptr %l0, !tbaa !29
  %t609 = getelementptr %"compiler/views:Viewer", ptr %t607, i32 0, i32 23
  %t610 = load i1, ptr %t609, !tbaa !21
  br i1 %t610, label %bb150, label %bb151
bb150:
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = getelementptr %"compiler/views:Viewer", ptr %t612, i32 0, i32 24
  %t615 = load i1, ptr %t614, !tbaa !21
  %t617 = xor i1 %t615, true
  store i1 %t617, ptr %l390, !tbaa !21
  br label %bb152
bb151:
  store i1 false, ptr %l390, !tbaa !21
  br label %bb152
bb152:
  %t619 = load i1, ptr %l390, !tbaa !21
  br i1 %t619, label %bb153, label %bb154
bb153:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/views:Viewer", ptr %t620, i32 0, i32 25
  %t623 = load i1, ptr %t622, !tbaa !21
  %t625 = xor i1 %t623, true
  store i1 %t625, ptr %l394, !tbaa !21
  br label %bb155
bb154:
  store i1 false, ptr %l394, !tbaa !21
  br label %bb155
bb155:
  %t627 = load i1, ptr %l394, !tbaa !21
  br i1 %t627, label %bb156, label %bb157
bb156:
  store i64 0, ptr %l47, !tbaa !24
  %t628 = load i64, ptr %l12, !tbaa !24
  store i64 %t628, ptr %l48, !tbaa !24
  store i64 1, ptr %l49, !tbaa !24
  %t630 = load i64, ptr %l48, !tbaa !24
  %t631 = load i64, ptr %l47, !tbaa !24
  %t634 = icmp sgt i64 %t630, %t631
  br i1 %t634, label %bb158, label %bb159
bb157:
  br label %bb195
bb158:
  %t636 = load i64, ptr %l49, !tbaa !24
  %t638 = icmp sgt i64 %t636, 0
  br i1 %t638, label %bb160, label %bb161
bb159:
  store i64 0, ptr %l402, !tbaa !24
  br label %bb163
bb160:
  %t640 = load i64, ptr %l48, !tbaa !24
  %t641 = load i64, ptr %l47, !tbaa !24
  %t644 = sub i64 %t640, %t641
  %t645 = load i64, ptr %l49, !tbaa !24
  %t648 = add i64 %t644, %t645
  %t650 = sub i64 %t648, 1
  %t651 = load i64, ptr %l49, !tbaa !24
  %t654 = sdiv i64 %t650, %t651
  store i64 %t654, ptr %l405, !tbaa !24
  br label %bb162
bb161:
  store i64 0, ptr %l405, !tbaa !24
  br label %bb162
bb162:
  %t656 = load i64, ptr %l405, !tbaa !24
  store i64 %t656, ptr %l402, !tbaa !24
  br label %bb163
bb163:
  %t657 = load i64, ptr %l402, !tbaa !24
  store i64 %t657, ptr %l50, !tbaa !24
  store i64 0, ptr %l51, !tbaa !24
  br label %bb164
bb164:
  %t658 = load i64, ptr %l51, !tbaa !24
  %t659 = load i64, ptr %l50, !tbaa !24
  %t662 = icmp slt i64 %t658, %t659
  %t664 = xor i1 %t662, true
  br i1 %t664, label %bb165, label %bb166
bb165:
  br label %bb194
bb166:
  br label %bb167
bb167:
  %t666 = load i64, ptr %l47, !tbaa !24
  %t667 = load i64, ptr %l51, !tbaa !24
  %t668 = load i64, ptr %l49, !tbaa !24
  %t671 = mul i64 %t667, %t668
  %t674 = add i64 %t666, %t671
  store i64 %t674, ptr %l52, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s30
  %t676 = load i64, ptr %l52, !tbaa !24
  %t679 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s30, ptr %l13, i64 %t676)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t679, ptr %l425
  br label %bb168
bb168:
  %t681 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e(ptr %s30, ptr %l425)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t681, ptr %l427
  br label %bb169
bb169:
  %t682 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l427
  %t683 = call ptr @__olang_scope_alloc_a(ptr %s30, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t682, ptr %t683
  store ptr %t683, ptr %l53, !tbaa !29
  store i64 0, ptr %l54, !tbaa !24
  br label %bb170
bb170:
  %t685 = load i64, ptr %l54, !tbaa !24
  store i64 %t685, ptr %l429, !tbaa !24
  %t686 = load ptr, ptr %l53, !tbaa !29
  %t688 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s30, ptr %t686)
  store i64 %t688, ptr %l431
  br label %bb171
bb171:
  %t689 = load i64, ptr %l429, !tbaa !24
  %t690 = load i64, ptr %l431, !tbaa !24
  %t691 = icmp slt i64 %t689, %t690
  %t693 = xor i1 %t691, true
  br i1 %t693, label %bb172, label %bb173
bb172:
  br label %bb192
bb173:
  br label %bb174
bb174:
  %t695 = load ptr, ptr %l53, !tbaa !29
  %t696 = load i64, ptr %l54, !tbaa !24
  %t699 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s30, ptr %t695, i64 %t696)
  store %"compiler/views:view" %t699, ptr %l436
  br label %bb175
bb175:
  %t700 = load %"compiler/views:view", ptr %l436
  store %"compiler/views:view" %t700, ptr %l55
  %t701 = load ptr, ptr %l0, !tbaa !29
  %t702 = getelementptr %"compiler/views:view", ptr %l55, i32 0, i32 0
  %t703 = load %"compiler/views:place", ptr %t702
  %t707 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrownAt(ptr %v0, ptr %s0, ptr %t701, %"compiler/views:place" %t703, ptr %l23)
  store i64 %t707, ptr %l440
  br label %bb176
bb176:
  %t708 = load i64, ptr %l440, !tbaa !24
  store i64 %t708, ptr %l56, !tbaa !24
  %t709 = load i64, ptr %l56, !tbaa !24
  %t711 = icmp slt i64 %t709, 0
  br i1 %t711, label %bb177, label %bb178
bb177:
  br label %bb191
bb178:
  br label %bb179
bb179:
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t714 = load ptr, ptr %l3, !tbaa !29
  %t716 = getelementptr %"compiler/typed:Call", ptr %t714, i32 0, i32 1
  %t717 = load { i64, ptr }, ptr %t716, !tbaa !27
  store { i64, ptr } %t717, ptr %l445, !tbaa !27
  %t718 = load i64, ptr %l52, !tbaa !24
  %t720 = getelementptr { i64, ptr }, ptr %l445, i32 0, i32 1
  %t721 = load ptr, ptr %t720, !tbaa !27
  %t722 = getelementptr ptr, ptr %t721, i64 %t718
  %t723 = load ptr, ptr %t722, !tbaa !39
  %t726 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %t713, ptr %t723)
  store %"compiler/source:Span" %t726, ptr %l448
  br label %bb180
bb180:
  %t727 = load %"compiler/source:Span", ptr %l448
  store %"compiler/source:Span" %t727, ptr %l57
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t729 = load %"compiler/source:Span", ptr %l57
  %t732 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %t728, %"compiler/source:Span" %t729)
  store i1 %t732, ptr %l451
  br label %bb181
bb181:
  %t733 = load i1, ptr %l451, !tbaa !21
  %t734 = xor i1 %t733, true
  br i1 %t734, label %bb182, label %bb183
bb182:
  %t736 = load ptr, ptr %l0, !tbaa !29
  store ptr %t736, ptr %l453, !tbaa !29
  %t737 = load %"compiler/source:Span", ptr %l57
  store %"compiler/source:Span" %t737, ptr %l454
  %t738 = getelementptr %"compiler/views:view", ptr %l55, i32 0, i32 0
  %t739 = load %"compiler/views:place", ptr %t738
  store %"compiler/views:place" %t739, ptr %l455
  %t740 = getelementptr %"compiler/views:view", ptr %l55, i32 0, i32 7
  %t741 = load i64, ptr %t740, !tbaa !24
  store i64 %t741, ptr %l456, !tbaa !24
  %t742 = load i64, ptr %l21, !tbaa !24
  store i64 %t742, ptr %l457, !tbaa !24
  %t743 = load i1, ptr %l22, !tbaa !21
  br i1 %t743, label %bb184, label %bb185
bb183:
  br label %bb190
bb184:
  %t745 = load i64, ptr %l56, !tbaa !24
  %t748 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l24, i64 %t745)
  store i64 %t748, ptr %l462
  br label %bb186
bb185:
  store i64 -1, ptr %l459, !tbaa !24
  br label %bb187
bb186:
  %t749 = load i64, ptr %l462, !tbaa !24
  store i64 %t749, ptr %l459, !tbaa !24
  br label %bb187
bb187:
  %t750 = load i64, ptr %l56, !tbaa !24
  %t753 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, i64 %t750)
  store %"compiler/source:Span" %t753, ptr %l465
  br label %bb188
bb188:
  %t754 = load ptr, ptr %l453, !tbaa !29
  %t755 = load %"compiler/source:Span", ptr %l454
  %t756 = load %"compiler/views:place", ptr %l455
  %t757 = load i64, ptr %l456, !tbaa !24
  %t758 = load i64, ptr %l457, !tbaa !24
  %t759 = load i64, ptr %l459, !tbaa !24
  %t760 = load %"compiler/source:Span", ptr %l465
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egivenGrowing(ptr %v0, ptr %t754, %"compiler/source:Span" %t755, %"compiler/views:place" %t756, i64 %t757, i64 %t758, i64 %t759, %"compiler/source:Span" %t760)
  br label %bb189
bb189:
  br label %bb190
bb190:
  br label %bb192
bb191:
  %t761 = load i64, ptr %l54, !tbaa !24
  %t763 = add i64 %t761, 1
  store i64 %t763, ptr %l54, !tbaa !24
  br label %bb170
bb192:
  call void @__olang_scope_close(ptr %s30)
  br label %bb193
bb193:
  %t765 = load i64, ptr %l51, !tbaa !24
  %t767 = add i64 %t765, 1
  store i64 %t767, ptr %l51, !tbaa !24
  br label %bb164
bb194:
  br label %bb195
bb195:
  store i64 0, ptr %l58, !tbaa !24
  %t770 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %l23)
  store i64 %t770, ptr %l471
  br label %bb196
bb196:
  %t771 = load i64, ptr %l471, !tbaa !24
  store i64 %t771, ptr %l59, !tbaa !24
  store i64 1, ptr %l60, !tbaa !24
  %t772 = load i64, ptr %l59, !tbaa !24
  %t773 = load i64, ptr %l58, !tbaa !24
  %t776 = icmp sgt i64 %t772, %t773
  br i1 %t776, label %bb197, label %bb198
bb197:
  %t778 = load i64, ptr %l60, !tbaa !24
  %t780 = icmp sgt i64 %t778, 0
  br i1 %t780, label %bb199, label %bb200
bb198:
  store i64 0, ptr %l475, !tbaa !24
  br label %bb202
bb199:
  %t782 = load i64, ptr %l59, !tbaa !24
  %t783 = load i64, ptr %l58, !tbaa !24
  %t786 = sub i64 %t782, %t783
  %t787 = load i64, ptr %l60, !tbaa !24
  %t790 = add i64 %t786, %t787
  %t792 = sub i64 %t790, 1
  %t793 = load i64, ptr %l60, !tbaa !24
  %t796 = sdiv i64 %t792, %t793
  store i64 %t796, ptr %l478, !tbaa !24
  br label %bb201
bb200:
  store i64 0, ptr %l478, !tbaa !24
  br label %bb201
bb201:
  %t798 = load i64, ptr %l478, !tbaa !24
  store i64 %t798, ptr %l475, !tbaa !24
  br label %bb202
bb202:
  %t799 = load i64, ptr %l475, !tbaa !24
  store i64 %t799, ptr %l61, !tbaa !24
  store i64 0, ptr %l62, !tbaa !24
  br label %bb203
bb203:
  %t800 = load i64, ptr %l62, !tbaa !24
  %t801 = load i64, ptr %l61, !tbaa !24
  %t804 = icmp slt i64 %t800, %t801
  %t806 = xor i1 %t804, true
  br i1 %t806, label %bb204, label %bb205
bb204:
  br label %bb212
bb205:
  br label %bb206
bb206:
  %t808 = load i64, ptr %l58, !tbaa !24
  %t809 = load i64, ptr %l62, !tbaa !24
  %t810 = load i64, ptr %l60, !tbaa !24
  %t813 = mul i64 %t809, %t810
  %t816 = add i64 %t808, %t813
  store i64 %t816, ptr %l63, !tbaa !24
  %t818 = load ptr, ptr %l0, !tbaa !29
  store ptr %t818, ptr %l496, !tbaa !29
  %t819 = load i64, ptr %l63, !tbaa !24
  %t822 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %l23, i64 %t819)
  store %"compiler/views:place" %t822, ptr %l499
  br label %bb207
bb207:
  %t823 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t823, ptr %l500
  %t824 = load i64, ptr %l21, !tbaa !24
  store i64 %t824, ptr %l501, !tbaa !24
  %t825 = load i64, ptr %l63, !tbaa !24
  %t828 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l24, i64 %t825)
  store i64 %t828, ptr %l504
  br label %bb208
bb208:
  %t829 = load i64, ptr %l63, !tbaa !24
  %t832 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, i64 %t829)
  store %"compiler/source:Span" %t832, ptr %l507
  br label %bb209
bb209:
  %t833 = load ptr, ptr %l4, !tbaa !29
  %t834 = load ptr, ptr %l496, !tbaa !29
  %t835 = load %"compiler/views:place", ptr %l499
  %t836 = load %"compiler/source:Span", ptr %l500
  %t837 = load i64, ptr %l501, !tbaa !24
  %t838 = load i64, ptr %l504, !tbaa !24
  %t839 = load %"compiler/source:Span", ptr %l507
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrow(ptr %v0, ptr %v2, ptr %t834, %"compiler/views:place" %t835, %"compiler/source:Span" %t836, i64 %t837, i64 %t838, %"compiler/source:Span" %t839, ptr %t833)
  br label %bb210
bb210:
  br label %bb211
bb211:
  %t841 = load i64, ptr %l62, !tbaa !24
  %t843 = add i64 %t841, 1
  store i64 %t843, ptr %l62, !tbaa !24
  br label %bb203
bb212:
  store ptr %l6, ptr %l64, !tbaa !29
  store i64 0, ptr %l65, !tbaa !24
  br label %bb213
bb213:
  %t846 = load i64, ptr %l65, !tbaa !24
  store i64 %t846, ptr %l512, !tbaa !24
  %t847 = load ptr, ptr %l64, !tbaa !29
  %t849 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t847)
  store i64 %t849, ptr %l514
  br label %bb214
bb214:
  %t850 = load i64, ptr %l512, !tbaa !24
  %t851 = load i64, ptr %l514, !tbaa !24
  %t852 = icmp slt i64 %t850, %t851
  %t854 = xor i1 %t852, true
  br i1 %t854, label %bb215, label %bb216
bb215:
  br label %bb221
bb216:
  br label %bb217
bb217:
  %t856 = load ptr, ptr %l64, !tbaa !29
  %t857 = load i64, ptr %l65, !tbaa !24
  %t860 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t856, i64 %t857)
  store %"compiler/views:view" %t860, ptr %l519
  br label %bb218
bb218:
  %t861 = load %"compiler/views:view", ptr %l519
  %t862 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t862, %"compiler/views:view" %t861)
  br label %bb219
bb219:
  br label %bb220
bb220:
  %t866 = load i64, ptr %l65, !tbaa !24
  %t868 = add i64 %t866, 1
  store i64 %t868, ptr %l65, !tbaa !24
  br label %bb213
bb221:
  %t870 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t870, ptr %l524
  br label %bb222
bb222:
  %t871 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l524
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t871, ptr %l67
  store i64 0, ptr %l68, !tbaa !24
  %t872 = load i64, ptr %l12, !tbaa !24
  store i64 %t872, ptr %l69, !tbaa !24
  store i64 1, ptr %l70, !tbaa !24
  %t874 = load i64, ptr %l69, !tbaa !24
  %t875 = load i64, ptr %l68, !tbaa !24
  %t878 = icmp sgt i64 %t874, %t875
  br i1 %t878, label %bb223, label %bb224
bb223:
  %t880 = load i64, ptr %l70, !tbaa !24
  %t882 = icmp sgt i64 %t880, 0
  br i1 %t882, label %bb225, label %bb226
bb224:
  store i64 0, ptr %l529, !tbaa !24
  br label %bb228
bb225:
  %t884 = load i64, ptr %l69, !tbaa !24
  %t885 = load i64, ptr %l68, !tbaa !24
  %t888 = sub i64 %t884, %t885
  %t889 = load i64, ptr %l70, !tbaa !24
  %t892 = add i64 %t888, %t889
  %t894 = sub i64 %t892, 1
  %t895 = load i64, ptr %l70, !tbaa !24
  %t898 = sdiv i64 %t894, %t895
  store i64 %t898, ptr %l532, !tbaa !24
  br label %bb227
bb226:
  store i64 0, ptr %l532, !tbaa !24
  br label %bb227
bb227:
  %t900 = load i64, ptr %l532, !tbaa !24
  store i64 %t900, ptr %l529, !tbaa !24
  br label %bb228
bb228:
  %t901 = load i64, ptr %l529, !tbaa !24
  store i64 %t901, ptr %l71, !tbaa !24
  store i64 0, ptr %l72, !tbaa !24
  br label %bb229
bb229:
  %t902 = load i64, ptr %l72, !tbaa !24
  %t903 = load i64, ptr %l71, !tbaa !24
  %t906 = icmp slt i64 %t902, %t903
  %t908 = xor i1 %t906, true
  br i1 %t908, label %bb230, label %bb231
bb230:
  br label %bb235
bb231:
  br label %bb232
bb232:
  %t910 = load i64, ptr %l68, !tbaa !24
  %t911 = load i64, ptr %l72, !tbaa !24
  %t912 = load i64, ptr %l70, !tbaa !24
  %t915 = mul i64 %t911, %t912
  %t918 = add i64 %t910, %t915
  store i64 %t918, ptr %l73, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %l67, i1 false)
  br label %bb233
bb233:
  br label %bb234
bb234:
  %t921 = load i64, ptr %l72, !tbaa !24
  %t923 = add i64 %t921, 1
  store i64 %t923, ptr %l72, !tbaa !24
  br label %bb229
bb235:
  %t925 = load i1, ptr %l22, !tbaa !21
  br i1 %t925, label %bb236, label %bb237
bb236:
  %t927 = load ptr, ptr %l0, !tbaa !29
  %t929 = getelementptr %"compiler/views:Viewer", ptr %t927, i32 0, i32 2
  %t930 = load i64, ptr %l7, !tbaa !24
  %t933 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t929, i64 %t930)
  store ptr %t933, ptr %l557
  br label %bb238
bb237:
  br label %bb275
bb238:
  %t934 = load ptr, ptr %l557, !tbaa !29
  %t936 = getelementptr %"compiler/views:summary", ptr %t934, i32 0, i32 1
  store ptr %t936, ptr %l74, !tbaa !29
  store i64 0, ptr %l75, !tbaa !24
  br label %bb239
bb239:
  store %olang.scope zeroinitializer, ptr %s47
  %t938 = load i64, ptr %l75, !tbaa !24
  store i64 %t938, ptr %l560, !tbaa !24
  %t939 = load ptr, ptr %l74, !tbaa !29
  %t941 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t939)
  store i64 %t941, ptr %l562
  br label %bb240
bb240:
  %t942 = load i64, ptr %l560, !tbaa !24
  %t943 = load i64, ptr %l562, !tbaa !24
  %t944 = icmp slt i64 %t942, %t943
  %t946 = xor i1 %t944, true
  br i1 %t946, label %bb241, label %bb242
bb241:
  call void @__olang_scope_close(ptr %s47)
  br label %bb274
bb242:
  br label %bb243
bb243:
  %t948 = load ptr, ptr %l74, !tbaa !29
  %t949 = load i64, ptr %l75, !tbaa !24
  %t952 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t948, i64 %t949)
  store %"compiler/views:fact" %t952, ptr %l567
  br label %bb244
bb244:
  %t953 = load %"compiler/views:fact", ptr %l567
  store %"compiler/views:fact" %t953, ptr %l76
  %t954 = getelementptr %"compiler/views:fact", ptr %l76, i32 0, i32 0
  %t955 = load i64, ptr %t954, !tbaa !24
  %t957 = icmp slt i64 %t955, 0
  br i1 %t957, label %bb245, label %bb246
bb245:
  store i1 true, ptr %l570, !tbaa !21
  br label %bb247
bb246:
  %t959 = getelementptr %"compiler/views:fact", ptr %l76, i32 0, i32 0
  %t960 = load i64, ptr %t959, !tbaa !24
  %t961 = load i64, ptr %l12, !tbaa !24
  %t964 = icmp sge i64 %t960, %t961
  store i1 %t964, ptr %l570, !tbaa !21
  br label %bb247
bb247:
  %t966 = load i1, ptr %l570, !tbaa !21
  br i1 %t966, label %bb248, label %bb249
bb248:
  call void @__olang_scope_close(ptr %s47)
  br label %bb273
bb249:
  br label %bb250
bb250:
  %t967 = getelementptr %"compiler/views:fact", ptr %l76, i32 0, i32 0
  %t968 = load i64, ptr %t967, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %s0, ptr %l67, i64 %t968, i1 true)
  br label %bb251
bb251:
  %t971 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s47, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t971, ptr %l576
  br label %bb252
bb252:
  %t972 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l576
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t972, ptr %l77
  %t973 = load ptr, ptr %l0, !tbaa !29
  %t974 = load ptr, ptr %l3, !tbaa !29
  %t976 = getelementptr %"compiler/typed:Call", ptr %t974, i32 0, i32 1
  %t977 = load { i64, ptr }, ptr %t976, !tbaa !27
  store { i64, ptr } %t977, ptr %l579, !tbaa !27
  %t978 = getelementptr %"compiler/views:fact", ptr %l76, i32 0, i32 0
  %t979 = load i64, ptr %t978, !tbaa !24
  %t981 = getelementptr { i64, ptr }, ptr %l579, i32 0, i32 1
  %t982 = load ptr, ptr %t981, !tbaa !27
  %t983 = getelementptr ptr, ptr %t982, i64 %t979
  %t984 = load ptr, ptr %t983, !tbaa !39
  %t986 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s47, ptr %t973, ptr %t984, ptr %t986, ptr %l77)
  br label %bb253
bb253:
  store ptr %l77, ptr %l78, !tbaa !29
  store i64 0, ptr %l79, !tbaa !24
  br label %bb254
bb254:
  store %olang.scope zeroinitializer, ptr %s50
  %t992 = load i64, ptr %l79, !tbaa !24
  store i64 %t992, ptr %l586, !tbaa !24
  %t993 = load ptr, ptr %l78, !tbaa !29
  %t995 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s47, ptr %t993)
  store i64 %t995, ptr %l588
  br label %bb255
bb255:
  %t996 = load i64, ptr %l586, !tbaa !24
  %t997 = load i64, ptr %l588, !tbaa !24
  %t998 = icmp slt i64 %t996, %t997
  %t1000 = xor i1 %t998, true
  br i1 %t1000, label %bb256, label %bb257
bb256:
  call void @__olang_scope_close(ptr %s50)
  br label %bb272
bb257:
  br label %bb258
bb258:
  %t1002 = load ptr, ptr %l78, !tbaa !29
  %t1003 = load i64, ptr %l79, !tbaa !24
  %t1006 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s47, ptr %t1002, i64 %t1003)
  store %"compiler/views:place" %t1006, ptr %l593
  br label %bb259
bb259:
  %t1007 = load %"compiler/views:place", ptr %l593
  %t1008 = load ptr, ptr %l0, !tbaa !29
  %t1010 = getelementptr %"compiler/views:fact", ptr %l76, i32 0, i32 3
  %t1011 = load i64, ptr %t1010, !tbaa !24
  %t1012 = getelementptr %"compiler/views:fact", ptr %l76, i32 0, i32 4
  %t1013 = load i64, ptr %t1012, !tbaa !24
  %t1014 = getelementptr %"compiler/views:fact", ptr %l76, i32 0, i32 5
  %t1015 = load i1, ptr %t1014, !tbaa !21
  %t1021 = call %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %t1008, %"compiler/views:place" %t1007, i64 %t1011, i64 %t1013, i1 %t1015)
  store %"compiler/views:place" %t1021, ptr %l599
  br label %bb260
bb260:
  %t1022 = getelementptr %"compiler/source:Span", ptr %l20, i32 0, i32 0
  %t1023 = load i32, ptr %t1022, !tbaa !23
  %t1025 = sext i32 %t1023 to i64
  %t1026 = load %"compiler/views:place", ptr %l599
  %t1028 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s50, %"compiler/views:place" %t1026, i64 %t1025)
  store %"compiler/views:view" %t1028, ptr %l602
  br label %bb261
bb261:
  %t1029 = load %"compiler/views:view", ptr %l602
  store %"compiler/views:view" %t1029, ptr %l81
  %t1030 = load ptr, ptr %l0, !tbaa !29
  %t1032 = getelementptr %"compiler/views:Viewer", ptr %t1030, i32 0, i32 1
  %t1033 = load i64, ptr %l7, !tbaa !24
  %t1036 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t1032, i64 %t1033)
  store ptr %t1036, ptr %l606
  br label %bb262
bb262:
  %t1037 = load ptr, ptr %l606, !tbaa !29
  %t1039 = getelementptr %"compiler/typed:Body", ptr %t1037, i32 0, i32 3
  %t1040 = load i64, ptr %t1039, !tbaa !24
  %t1041 = load ptr, ptr %l0, !tbaa !29
  %t1043 = getelementptr %"compiler/views:Viewer", ptr %t1041, i32 0, i32 7
  %t1044 = load i64, ptr %t1043, !tbaa !24
  %t1047 = icmp eq i64 %t1040, %t1044
  br i1 %t1047, label %bb263, label %bb264
bb263:
  store i64 1, ptr %l612, !tbaa !24
  br label %bb269
bb264:
  %t1049 = load ptr, ptr %l0, !tbaa !29
  %t1051 = getelementptr %"compiler/views:Viewer", ptr %t1049, i32 0, i32 1
  %t1052 = load i64, ptr %l7, !tbaa !24
  %t1055 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t1051, i64 %t1052)
  store ptr %t1055, ptr %l616
  br label %bb265
bb265:
  %t1056 = load ptr, ptr %l616, !tbaa !29
  %t1058 = getelementptr %"compiler/typed:Body", ptr %t1056, i32 0, i32 3
  %t1059 = load i64, ptr %t1058, !tbaa !24
  %t1060 = load ptr, ptr %l0, !tbaa !29
  %t1062 = getelementptr %"compiler/views:Viewer", ptr %t1060, i32 0, i32 8
  %t1063 = load i64, ptr %t1062, !tbaa !24
  %t1066 = icmp eq i64 %t1059, %t1063
  br i1 %t1066, label %bb266, label %bb267
bb266:
  store i64 2, ptr %l622, !tbaa !24
  br label %bb268
bb267:
  store i64 0, ptr %l622, !tbaa !24
  br label %bb268
bb268:
  %t1068 = load i64, ptr %l622, !tbaa !24
  store i64 %t1068, ptr %l612, !tbaa !24
  br label %bb269
bb269:
  %t1069 = load i64, ptr %l612, !tbaa !24
  %t1070 = getelementptr %"compiler/views:view", ptr %l81, i32 0, i32 7
  store i64 %t1069, ptr %t1070, !tbaa !24
  %t1071 = load ptr, ptr %l5, !tbaa !29
  %t1072 = load %"compiler/views:view", ptr %l81
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t1071, %"compiler/views:view" %t1072)
  br label %bb270
bb270:
  call void @__olang_scope_close(ptr %s50)
  br label %bb271
bb271:
  %t1075 = load i64, ptr %l79, !tbaa !24
  %t1077 = add i64 %t1075, 1
  store i64 %t1077, ptr %l79, !tbaa !24
  br label %bb254
bb272:
  call void @__olang_scope_close(ptr %s47)
  br label %bb273
bb273:
  %t1079 = load i64, ptr %l75, !tbaa !24
  %t1081 = add i64 %t1079, 1
  store i64 %t1081, ptr %l75, !tbaa !24
  br label %bb239
bb274:
  br label %bb275
bb275:
  %t1083 = load ptr, ptr %l0, !tbaa !29
  %t1084 = load i32, ptr %l2, !tbaa !23
  %t1087 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t1083, i32 %t1084)
  store i1 %t1087, ptr %l631
  br label %bb276
bb276:
  %t1088 = load i1, ptr %l631, !tbaa !21
  br i1 %t1088, label %bb277, label %bb278
bb277:
  store i64 0, ptr %l82, !tbaa !24
  %t1089 = load i64, ptr %l12, !tbaa !24
  store i64 %t1089, ptr %l83, !tbaa !24
  store i64 1, ptr %l84, !tbaa !24
  %t1091 = load i64, ptr %l83, !tbaa !24
  %t1092 = load i64, ptr %l82, !tbaa !24
  %t1095 = icmp sgt i64 %t1091, %t1092
  br i1 %t1095, label %bb279, label %bb280
bb278:
  br label %bb351
bb279:
  %t1097 = load i64, ptr %l84, !tbaa !24
  %t1099 = icmp sgt i64 %t1097, 0
  br i1 %t1099, label %bb281, label %bb282
bb280:
  store i64 0, ptr %l636, !tbaa !24
  br label %bb284
bb281:
  %t1101 = load i64, ptr %l83, !tbaa !24
  %t1102 = load i64, ptr %l82, !tbaa !24
  %t1105 = sub i64 %t1101, %t1102
  %t1106 = load i64, ptr %l84, !tbaa !24
  %t1109 = add i64 %t1105, %t1106
  %t1111 = sub i64 %t1109, 1
  %t1112 = load i64, ptr %l84, !tbaa !24
  %t1115 = sdiv i64 %t1111, %t1112
  store i64 %t1115, ptr %l639, !tbaa !24
  br label %bb283
bb282:
  store i64 0, ptr %l639, !tbaa !24
  br label %bb283
bb283:
  %t1117 = load i64, ptr %l639, !tbaa !24
  store i64 %t1117, ptr %l636, !tbaa !24
  br label %bb284
bb284:
  %t1118 = load i64, ptr %l636, !tbaa !24
  store i64 %t1118, ptr %l85, !tbaa !24
  store i64 0, ptr %l86, !tbaa !24
  br label %bb285
bb285:
  %t1119 = load i64, ptr %l86, !tbaa !24
  %t1120 = load i64, ptr %l85, !tbaa !24
  %t1123 = icmp slt i64 %t1119, %t1120
  %t1125 = xor i1 %t1123, true
  br i1 %t1125, label %bb286, label %bb287
bb286:
  br label %bb350
bb287:
  br label %bb288
bb288:
  %t1127 = load i64, ptr %l82, !tbaa !24
  %t1128 = load i64, ptr %l86, !tbaa !24
  %t1129 = load i64, ptr %l84, !tbaa !24
  %t1132 = mul i64 %t1128, %t1129
  %t1135 = add i64 %t1127, %t1132
  store i64 %t1135, ptr %l87, !tbaa !24
  %t1137 = load i64, ptr %l87, !tbaa !24
  %t1140 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %l67, i64 %t1137)
  store i1 %t1140, ptr %l659
  br label %bb289
bb289:
  %t1141 = load i1, ptr %l659, !tbaa !21
  br i1 %t1141, label %bb290, label %bb291
bb290:
  br label %bb349
bb291:
  br label %bb292
bb292:
  %t1142 = load i1, ptr %l8, !tbaa !21
  br i1 %t1142, label %bb293, label %bb294
bb293:
  store i1 true, ptr %l661, !tbaa !21
  br label %bb308
bb294:
  %t1144 = load i64, ptr %l7, !tbaa !24
  %t1146 = icmp sge i64 %t1144, 0
  br i1 %t1146, label %bb295, label %bb296
bb295:
  %t1148 = load i1, ptr %l22, !tbaa !21
  %t1150 = xor i1 %t1148, true
  br i1 %t1150, label %bb297, label %bb298
bb296:
  store i1 false, ptr %l664, !tbaa !21
  br label %bb307
bb297:
  store i1 true, ptr %l667, !tbaa !21
  br label %bb306
bb298:
  %t1152 = load i64, ptr %l87, !tbaa !24
  store i64 %t1152, ptr %l668, !tbaa !24
  %t1153 = load ptr, ptr %l0, !tbaa !29
  %t1155 = getelementptr %"compiler/views:Viewer", ptr %t1153, i32 0, i32 2
  %t1156 = load i64, ptr %l7, !tbaa !24
  %t1159 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t1155, i64 %t1156)
  store ptr %t1159, ptr %l672
  br label %bb299
bb299:
  %t1160 = load ptr, ptr %l672, !tbaa !29
  %t1162 = getelementptr %"compiler/views:summary", ptr %t1160, i32 0, i32 3
  %t1164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t1162)
  store i64 %t1164, ptr %l675
  br label %bb300
bb300:
  %t1165 = load i64, ptr %l668, !tbaa !24
  %t1166 = load i64, ptr %l675, !tbaa !24
  %t1167 = icmp slt i64 %t1165, %t1166
  br i1 %t1167, label %bb301, label %bb302
bb301:
  %t1169 = load ptr, ptr %l0, !tbaa !29
  %t1171 = getelementptr %"compiler/views:Viewer", ptr %t1169, i32 0, i32 2
  %t1172 = load i64, ptr %l7, !tbaa !24
  %t1175 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t1171, i64 %t1172)
  store ptr %t1175, ptr %l681
  br label %bb303
bb302:
  store i1 false, ptr %l677, !tbaa !21
  br label %bb305
bb303:
  %t1176 = load ptr, ptr %l681, !tbaa !29
  %t1178 = getelementptr %"compiler/views:summary", ptr %t1176, i32 0, i32 3
  %t1179 = load i64, ptr %l87, !tbaa !24
  %t1182 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1178, i64 %t1179)
  store i1 %t1182, ptr %l685
  br label %bb304
bb304:
  %t1183 = load i1, ptr %l685, !tbaa !21
  store i1 %t1183, ptr %l677, !tbaa !21
  br label %bb305
bb305:
  %t1184 = load i1, ptr %l677, !tbaa !21
  store i1 %t1184, ptr %l667, !tbaa !21
  br label %bb306
bb306:
  %t1185 = load i1, ptr %l667, !tbaa !21
  store i1 %t1185, ptr %l664, !tbaa !21
  br label %bb307
bb307:
  %t1186 = load i1, ptr %l664, !tbaa !21
  store i1 %t1186, ptr %l661, !tbaa !21
  br label %bb308
bb308:
  %t1187 = load i1, ptr %l661, !tbaa !21
  br i1 %t1187, label %bb309, label %bb310
bb309:
  store %olang.scope zeroinitializer, ptr %s58
  %t1190 = load i64, ptr %l87, !tbaa !24
  %t1193 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s58, ptr %l13, i64 %t1190)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1193, ptr %l689
  br label %bb311
bb310:
  br label %bb322
bb311:
  %t1195 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e(ptr %s58, ptr %l689)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1195, ptr %l691
  br label %bb312
bb312:
  %t1196 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l691
  %t1197 = call ptr @__olang_scope_alloc_a(ptr %s58, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1196, ptr %t1197
  store ptr %t1197, ptr %l89, !tbaa !29
  store i64 0, ptr %l90, !tbaa !24
  br label %bb313
bb313:
  %t1199 = load i64, ptr %l90, !tbaa !24
  store i64 %t1199, ptr %l693, !tbaa !24
  %t1200 = load ptr, ptr %l89, !tbaa !29
  %t1202 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s58, ptr %t1200)
  store i64 %t1202, ptr %l695
  br label %bb314
bb314:
  %t1203 = load i64, ptr %l693, !tbaa !24
  %t1204 = load i64, ptr %l695, !tbaa !24
  %t1205 = icmp slt i64 %t1203, %t1204
  %t1207 = xor i1 %t1205, true
  br i1 %t1207, label %bb315, label %bb316
bb315:
  br label %bb321
bb316:
  br label %bb317
bb317:
  %t1209 = load ptr, ptr %l89, !tbaa !29
  %t1210 = load i64, ptr %l90, !tbaa !24
  %t1213 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s58, ptr %t1209, i64 %t1210)
  store %"compiler/views:view" %t1213, ptr %l700
  br label %bb318
bb318:
  %t1214 = load %"compiler/views:view", ptr %l700
  %t1215 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t1215, %"compiler/views:view" %t1214)
  br label %bb319
bb319:
  br label %bb320
bb320:
  %t1219 = load i64, ptr %l90, !tbaa !24
  %t1221 = add i64 %t1219, 1
  store i64 %t1221, ptr %l90, !tbaa !24
  br label %bb313
bb321:
  call void @__olang_scope_close(ptr %s58)
  br label %bb322
bb322:
  %t1223 = load i1, ptr %l8, !tbaa !21
  br i1 %t1223, label %bb323, label %bb324
bb323:
  %t1225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1225, ptr %l707, !tbaa !29
  %t1226 = load ptr, ptr %l3, !tbaa !29
  %t1228 = getelementptr %"compiler/typed:Call", ptr %t1226, i32 0, i32 1
  %t1229 = load { i64, ptr }, ptr %t1228, !tbaa !27
  store { i64, ptr } %t1229, ptr %l709, !tbaa !27
  %t1230 = load i64, ptr %l87, !tbaa !24
  %t1232 = getelementptr { i64, ptr }, ptr %l709, i32 0, i32 1
  %t1233 = load ptr, ptr %t1232, !tbaa !27
  %t1234 = getelementptr ptr, ptr %t1233, i64 %t1230
  %t1235 = load ptr, ptr %t1234, !tbaa !39
  %t1237 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1235)
  store i32 %t1237, ptr %l712
  br label %bb325
bb324:
  store i1 false, ptr %l706, !tbaa !21
  br label %bb327
bb325:
  %t1238 = load ptr, ptr %l707, !tbaa !29
  %t1239 = load i32, ptr %l712, !tbaa !23
  %t1240 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %t1238, i32 %t1239)
  store i1 %t1240, ptr %l713
  br label %bb326
bb326:
  %t1241 = load i1, ptr %l713, !tbaa !21
  store i1 %t1241, ptr %l706, !tbaa !21
  br label %bb327
bb327:
  %t1242 = load i1, ptr %l706, !tbaa !21
  br i1 %t1242, label %bb328, label %bb329
bb328:
  %t1243 = load ptr, ptr %l0, !tbaa !29
  %t1244 = load i32, ptr %l2, !tbaa !23
  %t1247 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %t1243, i32 %t1244)
  store i1 %t1247, ptr %l717
  br label %bb330
bb329:
  store i1 false, ptr %l714, !tbaa !21
  br label %bb331
bb330:
  %t1248 = load i1, ptr %l717, !tbaa !21
  store i1 %t1248, ptr %l714, !tbaa !21
  br label %bb331
bb331:
  %t1249 = load i1, ptr %l714, !tbaa !21
  br i1 %t1249, label %bb332, label %bb333
bb332:
  store %olang.scope zeroinitializer, ptr %s61
  %t1250 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s61, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1250, ptr %l718
  br label %bb334
bb333:
  br label %bb348
bb334:
  %t1251 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l718
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1251, ptr %l92
  %t1252 = load ptr, ptr %l0, !tbaa !29
  %t1253 = load ptr, ptr %l3, !tbaa !29
  %t1255 = getelementptr %"compiler/typed:Call", ptr %t1253, i32 0, i32 1
  %t1256 = load { i64, ptr }, ptr %t1255, !tbaa !27
  store { i64, ptr } %t1256, ptr %l721, !tbaa !27
  %t1257 = load i64, ptr %l87, !tbaa !24
  %t1259 = getelementptr { i64, ptr }, ptr %l721, i32 0, i32 1
  %t1260 = load ptr, ptr %t1259, !tbaa !27
  %t1261 = getelementptr ptr, ptr %t1260, i64 %t1257
  %t1262 = load ptr, ptr %t1261, !tbaa !39
  %t1264 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s61, ptr %t1252, ptr %t1262, ptr %t1264, ptr %l92)
  br label %bb335
bb335:
  store ptr %l92, ptr %l93, !tbaa !29
  store i64 0, ptr %l94, !tbaa !24
  br label %bb336
bb336:
  store %olang.scope zeroinitializer, ptr %s63
  %t1270 = load i64, ptr %l94, !tbaa !24
  store i64 %t1270, ptr %l728, !tbaa !24
  %t1271 = load ptr, ptr %l93, !tbaa !29
  %t1273 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s61, ptr %t1271)
  store i64 %t1273, ptr %l730
  br label %bb337
bb337:
  %t1274 = load i64, ptr %l728, !tbaa !24
  %t1275 = load i64, ptr %l730, !tbaa !24
  %t1276 = icmp slt i64 %t1274, %t1275
  %t1278 = xor i1 %t1276, true
  br i1 %t1278, label %bb338, label %bb339
bb338:
  call void @__olang_scope_close(ptr %s63)
  br label %bb347
bb339:
  br label %bb340
bb340:
  %t1280 = load ptr, ptr %l93, !tbaa !29
  %t1281 = load i64, ptr %l94, !tbaa !24
  %t1284 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s61, ptr %t1280, i64 %t1281)
  store %"compiler/views:place" %t1284, ptr %l735
  br label %bb341
bb341:
  %t1285 = load %"compiler/views:place", ptr %l735
  store %"compiler/views:place" %t1285, ptr %l95
  %t1286 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1286, ptr %l736, !tbaa !29
  %t1287 = getelementptr %"compiler/views:place", ptr %l95, i32 0, i32 0
  %t1288 = load { i64, [2 x i64] }, ptr %t1287
  store { i64, [2 x i64] } %t1288, ptr %l737
  %t1289 = getelementptr %"compiler/views:place", ptr %l95, i32 0, i32 1
  %t1290 = load i64, ptr %t1289, !tbaa !24
  store i64 %t1290, ptr %l738, !tbaa !24
  %t1291 = load ptr, ptr %l0, !tbaa !29
  %t1293 = getelementptr %"compiler/views:Viewer", ptr %t1291, i32 0, i32 3
  %t1294 = getelementptr %"compiler/views:place", ptr %l95, i32 0, i32 1
  %t1295 = load i64, ptr %t1294, !tbaa !24
  %t1298 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s63, ptr %t1293, i64 %t1295)
  store { i64, ptr } %t1298, ptr %l742
  br label %bb342
bb342:
  %t1299 = load { i64, ptr }, ptr %l742, !tbaa !27
  %t1300 = extractvalue { i64, ptr } %t1299, 0
  %t1301 = load { i64, [2 x i64] }, ptr %l737
  %t1302 = load i64, ptr %l738, !tbaa !24
  %t1304 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s63, { i64, [2 x i64] } %t1301, i64 %t1302, i64 %t1300, i1 true)
  store %"compiler/views:place" %t1304, ptr %l744
  br label %bb343
bb343:
  %t1305 = getelementptr %"compiler/source:Span", ptr %l20, i32 0, i32 0
  %t1306 = load i32, ptr %t1305, !tbaa !23
  %t1308 = sext i32 %t1306 to i64
  %t1309 = load %"compiler/views:place", ptr %l744
  %t1311 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s63, %"compiler/views:place" %t1309, i64 %t1308)
  store %"compiler/views:view" %t1311, ptr %l747
  br label %bb344
bb344:
  %t1312 = load ptr, ptr %l736, !tbaa !29
  %t1313 = load %"compiler/views:view", ptr %l747
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t1312, %"compiler/views:view" %t1313)
  br label %bb345
bb345:
  call void @__olang_scope_close(ptr %s63)
  br label %bb346
bb346:
  %t1314 = load i64, ptr %l94, !tbaa !24
  %t1316 = add i64 %t1314, 1
  store i64 %t1316, ptr %l94, !tbaa !24
  br label %bb336
bb347:
  call void @__olang_scope_close(ptr %s61)
  br label %bb348
bb348:
  br label %bb349
bb349:
  %t1318 = load i64, ptr %l86, !tbaa !24
  %t1320 = add i64 %t1318, 1
  store i64 %t1320, ptr %l86, !tbaa !24
  br label %bb285
bb350:
  br label %bb351
bb351:
  %t1322 = load i1, ptr %l22, !tbaa !21
  br i1 %t1322, label %bb352, label %bb353
bb352:
  %t1324 = load ptr, ptr %l0, !tbaa !29
  %t1326 = getelementptr %"compiler/views:Viewer", ptr %t1324, i32 0, i32 24
  %t1327 = load i1, ptr %t1326, !tbaa !21
  %t1329 = xor i1 %t1327, true
  store i1 %t1329, ptr %l753, !tbaa !21
  br label %bb354
bb353:
  store i1 false, ptr %l753, !tbaa !21
  br label %bb354
bb354:
  %t1331 = load i1, ptr %l753, !tbaa !21
  br i1 %t1331, label %bb355, label %bb356
bb355:
  %t1332 = load ptr, ptr %l0, !tbaa !29
  %t1334 = getelementptr %"compiler/views:Viewer", ptr %t1332, i32 0, i32 2
  %t1335 = load i64, ptr %l7, !tbaa !24
  %t1338 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t1334, i64 %t1335)
  store ptr %t1338, ptr %l760
  br label %bb357
bb356:
  br label %bb389
bb357:
  %t1339 = load ptr, ptr %l760, !tbaa !29
  %t1341 = getelementptr %"compiler/views:summary", ptr %t1339, i32 0, i32 2
  store ptr %t1341, ptr %l96, !tbaa !29
  store i64 0, ptr %l97, !tbaa !24
  br label %bb358
bb358:
  store %olang.scope zeroinitializer, ptr %s68
  %t1343 = load i64, ptr %l97, !tbaa !24
  store i64 %t1343, ptr %l763, !tbaa !24
  %t1344 = load ptr, ptr %l96, !tbaa !29
  %t1346 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t1344)
  store i64 %t1346, ptr %l765
  br label %bb359
bb359:
  %t1347 = load i64, ptr %l763, !tbaa !24
  %t1348 = load i64, ptr %l765, !tbaa !24
  %t1349 = icmp slt i64 %t1347, %t1348
  %t1351 = xor i1 %t1349, true
  br i1 %t1351, label %bb360, label %bb361
bb360:
  call void @__olang_scope_close(ptr %s68)
  br label %bb388
bb361:
  br label %bb362
bb362:
  %t1353 = load ptr, ptr %l96, !tbaa !29
  %t1354 = load i64, ptr %l97, !tbaa !24
  %t1357 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t1353, i64 %t1354)
  store %"compiler/views:fact" %t1357, ptr %l770
  br label %bb363
bb363:
  %t1358 = load %"compiler/views:fact", ptr %l770
  store %"compiler/views:fact" %t1358, ptr %l98
  %t1359 = getelementptr %"compiler/views:fact", ptr %l98, i32 0, i32 0
  %t1360 = load i64, ptr %t1359, !tbaa !24
  %t1362 = icmp slt i64 %t1360, 0
  br i1 %t1362, label %bb364, label %bb365
bb364:
  store i1 true, ptr %l773, !tbaa !21
  br label %bb366
bb365:
  %t1364 = getelementptr %"compiler/views:fact", ptr %l98, i32 0, i32 0
  %t1365 = load i64, ptr %t1364, !tbaa !24
  %t1366 = load i64, ptr %l12, !tbaa !24
  %t1369 = icmp sge i64 %t1365, %t1366
  store i1 %t1369, ptr %l773, !tbaa !21
  br label %bb366
bb366:
  %t1371 = load i1, ptr %l773, !tbaa !21
  br i1 %t1371, label %bb367, label %bb368
bb367:
  store i1 true, ptr %l777, !tbaa !21
  br label %bb369
bb368:
  %t1372 = getelementptr %"compiler/views:fact", ptr %l98, i32 0, i32 8
  %t1373 = load i64, ptr %t1372, !tbaa !24
  %t1375 = icmp slt i64 %t1373, 0
  store i1 %t1375, ptr %l777, !tbaa !21
  br label %bb369
bb369:
  %t1377 = load i1, ptr %l777, !tbaa !21
  br i1 %t1377, label %bb370, label %bb371
bb370:
  store i1 true, ptr %l780, !tbaa !21
  br label %bb372
bb371:
  %t1378 = getelementptr %"compiler/views:fact", ptr %l98, i32 0, i32 8
  %t1379 = load i64, ptr %t1378, !tbaa !24
  %t1380 = load i64, ptr %l12, !tbaa !24
  %t1383 = icmp sge i64 %t1379, %t1380
  store i1 %t1383, ptr %l780, !tbaa !21
  br label %bb372
bb372:
  %t1385 = load i1, ptr %l780, !tbaa !21
  br i1 %t1385, label %bb373, label %bb374
bb373:
  store i1 true, ptr %l784, !tbaa !21
  br label %bb378
bb374:
  %t1386 = getelementptr %"compiler/views:fact", ptr %l98, i32 0, i32 0
  %t1387 = load i64, ptr %t1386, !tbaa !24
  %t1390 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s0, ptr %l13, i64 %t1387)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1390, ptr %l787
  br label %bb375
bb375:
  %t1392 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e(ptr %s68, ptr %l787)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1392, ptr %l789
  br label %bb376
bb376:
  %t1394 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %l789)
  store i64 %t1394, ptr %l791
  br label %bb377
bb377:
  %t1395 = load i64, ptr %l791, !tbaa !24
  %t1396 = icmp eq i64 %t1395, 0
  store i1 %t1396, ptr %l784, !tbaa !21
  br label %bb378
bb378:
  %t1398 = load i1, ptr %l784, !tbaa !21
  br i1 %t1398, label %bb379, label %bb380
bb379:
  call void @__olang_scope_close(ptr %s68)
  br label %bb387
bb380:
  br label %bb381
bb381:
  %t1399 = load ptr, ptr %l3, !tbaa !29
  %t1401 = getelementptr %"compiler/typed:Call", ptr %t1399, i32 0, i32 1
  %t1402 = load { i64, ptr }, ptr %t1401, !tbaa !27
  store { i64, ptr } %t1402, ptr %l794, !tbaa !27
  %t1403 = getelementptr %"compiler/views:fact", ptr %l98, i32 0, i32 8
  %t1404 = load i64, ptr %t1403, !tbaa !24
  %t1406 = getelementptr { i64, ptr }, ptr %l794, i32 0, i32 1
  %t1407 = load ptr, ptr %t1406, !tbaa !27
  %t1408 = getelementptr ptr, ptr %t1407, i64 %t1404
  %t1409 = load ptr, ptr %t1408, !tbaa !39
  store ptr %t1409, ptr %l99, !tbaa !29
  %t1411 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1411, ptr %l797, !tbaa !29
  %t1412 = load ptr, ptr %l99, !tbaa !29
  %t1414 = call ptr @compiler_2fviews_2eargPlace(ptr %v1, ptr %v1, ptr %t1412)
  store ptr %t1414, ptr %l799
  br label %bb382
bb382:
  %t1415 = load ptr, ptr %l99, !tbaa !29
  %t1417 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1415)
  store i32 %t1417, ptr %l801
  br label %bb383
bb383:
  %t1418 = getelementptr %"compiler/views:fact", ptr %l98, i32 0, i32 0
  %t1419 = load i64, ptr %t1418, !tbaa !24
  %t1422 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s0, ptr %l13, i64 %t1419)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1422, ptr %l804
  br label %bb384
bb384:
  %t1424 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e(ptr %s68, ptr %l804)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1424, ptr %l806
  br label %bb385
bb385:
  %t1425 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l806
  %t1426 = call ptr @__olang_scope_alloc_a(ptr %s68, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1425, ptr %t1426
  %t1427 = load ptr, ptr %l4, !tbaa !29
  %t1428 = load ptr, ptr %l797, !tbaa !29
  %t1429 = load ptr, ptr %l799, !tbaa !29
  %t1430 = load i32, ptr %l801, !tbaa !23
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %s0, ptr %v2, ptr %t1428, ptr %t1429, i32 %t1430, ptr %t1426, ptr %t1427)
  br label %bb386
bb386:
  call void @__olang_scope_close(ptr %s68)
  br label %bb387
bb387:
  %t1433 = load i64, ptr %l97, !tbaa !24
  %t1435 = add i64 %t1433, 1
  store i64 %t1435, ptr %l97, !tbaa !24
  br label %bb358
bb388:
  br label %bb389
bb389:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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

define dso_local %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca { i64, ptr }
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"compiler/source:Span"
  %l20 = alloca i1
  %l27 = alloca i64
  %l30 = alloca i8
  %l32 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sgt i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Call", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 0
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t19 = call i64 @compiler_2fviews_2eexprEnd(ptr %v1, ptr %t17)
  store i64 %t19, ptr %l12
  br label %bb3
bb2:
  br label %bb18
bb3:
  %t20 = load i64, ptr %l12, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Call", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l14, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 0
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t30 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t28)
  store %"compiler/source:Span" %t30, ptr %l16
  br label %bb4
bb4:
  %t31 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t37 = icmp eq i32 %t32, %t34
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = sext i32 %t41 to i64
  %t46 = icmp slt i64 %t39, %t43
  store i1 %t46, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t48 = load i1, ptr %l20, !tbaa !21
  br i1 %t48, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l3, !tbaa !24
  %t53 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %t49, i64 %t50)
  store i64 %t53, ptr %l27
  br label %bb10
bb9:
  br label %bb17
bb10:
  %t54 = load i64, ptr %l27, !tbaa !24
  store i64 %t54, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = call i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %t55, i64 %t56)
  store i8 %t59, ptr %l30
  br label %bb11
bb11:
  %t60 = load i8, ptr %l30, !tbaa !22
  %t61 = icmp eq i8 %t60, 46
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l4, !tbaa !24
  %t67 = add i64 %t65, 1
  %t70 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %t64, i64 %t67)
  store i64 %t70, ptr %l36
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t71 = load ptr, ptr %l32, !tbaa !29
  %t72 = load i64, ptr %l36, !tbaa !24
  %t73 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %t71, i64 %t72)
  store %"compiler/source:Span" %t73, ptr %l37
  br label %bb15
bb15:
  %t74 = load %"compiler/source:Span", ptr %l37
  store %"compiler/source:Span" %t74, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  %t82 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %t75, i64 %t79)
  store %"compiler/source:Span" %t82, ptr %l41
  br label %bb19
bb19:
  %t83 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t83, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l26 = alloca ptr
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t21)
  store i32 %t23, ptr %l15
  br label %bb6
bb6:
  %t24 = load i32, ptr %l15, !tbaa !23
  store i32 %t24, ptr %l7, !tbaa !23
  br label %bb19
bb7:
  %t25 = load ptr, ptr %l2, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 5}
  %t32 = icmp eq i64 %t30, 0
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { i32 }, ptr %t36, i32 0, i32 0
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l4, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t42 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 1
  %t43 = load i32, ptr %l4, !tbaa !23
  %t45 = sext i32 %t43 to i64
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t42, i64 %t45)
  store ptr %t48, ptr %l26
  br label %bb13
bb13:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %t51, !tbaa !23
  store i32 %t52, ptr %l7, !tbaa !23
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t54, ptr %l7, !tbaa !23
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_38f43db71f48b164_beb7f8d1a31792c8)
  unreachable
bb19:
  %t56 = load i32, ptr %l7, !tbaa !23
  store i32 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallsItself(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 12
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i64, ptr %l11, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/views:Viewer", ptr %t9, i32 0, i32 12
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = add i64 %t12, 1
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t14)
  store i64 %t17, ptr %l16
  br label %bb2
bb2:
  %t18 = load i64, ptr %l16, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l23, !tbaa !24
  store i64 %t45, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l20, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/views:Viewer", ptr %t65, i32 0, i32 13
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t63)
  store i64 %t71, ptr %l44
  br label %bb13
bb13:
  %t72 = load i64, ptr %l1, !tbaa !24
  %t73 = load i64, ptr %l44, !tbaa !24
  %t75 = icmp eq i64 %t73, %t72
  br i1 %t75, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l6, !tbaa !24
  br label %bb9
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l4 = alloca %"compiler/views:state"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/views:state"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l18 = alloca %"compiler/views:state"
  %l20 = alloca %"compiler/views:state"
  %l28 = alloca { i64, ptr }
  %l32 = alloca %"compiler/views:state"
  %l34 = alloca %"compiler/views:state"
  %l51 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t8 = alloca %"compiler/views:state", align 8
  %t10 = alloca %"compiler/views:state", align 8
  %t35 = alloca %"compiler/views:state", align 8
  %t37 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t8, ptr %v2, ptr %s0, ptr %t7)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t8, i64 136, i1 false)
  br label %bb4
bb4:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t10, ptr %s0, ptr %l18)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t10, i64 136, i1 false)
  br label %bb5
bb5:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l20, i64 136, i1 false)
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb8:
  br label %bb9
bb9:
  %t26 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t26, ptr %l28, !tbaa !27
  %t27 = load i64, ptr %l6, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  store ptr %t32, ptr %l8, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t35, ptr %v2, ptr %s3, ptr %t34)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t35, i64 136, i1 false)
  br label %bb10
bb10:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t37, ptr %s3, ptr %l32)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t37, i64 136, i1 false)
  br label %bb11
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l34, i64 136, i1 false)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l8, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Clause", ptr %t40, i32 0, i32 3
  %t43 = load ptr, ptr %t42, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %s3, ptr %t39, ptr %t43, ptr %l9)
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l8, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Clause", ptr %t47, i32 0, i32 4
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load ptr, ptr %l8, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Clause", ptr %t56, i32 0, i32 4
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l12, !tbaa !24
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t65 = load i64, ptr %l11, !tbaa !24
  %t66 = load i64, ptr %l12, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t73 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t73, ptr %l51, !tbaa !27
  %t74 = load i64, ptr %l11, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr ptr, ptr %t77, i64 %t74
  %t79 = load ptr, ptr %t78, !tbaa !39
  %t81 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %s3, ptr %v3, ptr %t81, ptr %t79, ptr %l9, ptr %a3)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t89 = load i64, ptr %l11, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l11, !tbaa !24
  br label %bb15
bb21:
  br label %bb22
bb22:
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s3, ptr %l4, ptr %l9)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l6, !tbaa !24
  br label %bb6
bb25:
  %t99 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v2, ptr %s0, ptr %t99, ptr %l4)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecomponents(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l44 = alloca ptr
  %l47 = alloca i64
  %l51 = alloca ptr
  %l70 = alloca ptr
  %l73 = alloca i64
  %l78 = alloca i64
  %l81 = alloca i64
  %l102 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load i64, ptr %l17, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
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
  store i64 0, ptr %l22, !tbaa !24
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
  store i64 %t33, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l25, !tbaa !24
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l22, !tbaa !24
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
  br label %bb23
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/views:Viewer", ptr %t55, i32 0, i32 12
  store ptr %t57, ptr %l44, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/views:Viewer", ptr %t58, i32 0, i32 13
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l47
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l44, !tbaa !29
  %t64 = load i64, ptr %l47, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t63, i64 %t64)
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/views:Viewer", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l51
  br label %bb14
bb14:
  %t72 = load ptr, ptr %l51, !tbaa !29
  store ptr %t72, ptr %l8, !tbaa !29
  %t73 = load ptr, ptr %l8, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Body", ptr %t73, i32 0, i32 11
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb15, label %bb16
bb15:
  %t82 = load ptr, ptr %l8, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Body", ptr %t82, i32 0, i32 11
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/views:Viewer", ptr %t87, i32 0, i32 13
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v0, ptr %t85, ptr %t89)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/views:Viewer", ptr %t92, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t94, i64 -1)
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/views:Viewer", ptr %t96, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t98, i64 0)
  br label %bb20
bb20:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/views:Viewer", ptr %t100, i32 0, i32 16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t102, i1 false)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t104 = load i64, ptr %l6, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l6, !tbaa !24
  br label %bb8
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/views:Viewer", ptr %t108, i32 0, i32 12
  store ptr %t110, ptr %l70, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/views:Viewer", ptr %t111, i32 0, i32 13
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t113)
  store i64 %t115, ptr %l73
  br label %bb24
bb24:
  %t116 = load ptr, ptr %l70, !tbaa !29
  %t117 = load i64, ptr %l73, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t116, i64 %t117)
  br label %bb25
bb25:
  store i64 0, ptr %l9, !tbaa !24
  %t118 = load i64, ptr %l1, !tbaa !24
  store i64 %t118, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t120 = load i64, ptr %l10, !tbaa !24
  %t121 = load i64, ptr %l9, !tbaa !24
  %t124 = icmp sgt i64 %t120, %t121
  br i1 %t124, label %bb26, label %bb27
bb26:
  %t126 = load i64, ptr %l11, !tbaa !24
  %t128 = icmp sgt i64 %t126, 0
  br i1 %t128, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb31
bb28:
  %t130 = load i64, ptr %l10, !tbaa !24
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = sub i64 %t130, %t131
  %t135 = load i64, ptr %l11, !tbaa !24
  %t138 = add i64 %t134, %t135
  %t140 = sub i64 %t138, 1
  %t141 = load i64, ptr %l11, !tbaa !24
  %t144 = sdiv i64 %t140, %t141
  store i64 %t144, ptr %l81, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb30
bb30:
  %t146 = load i64, ptr %l81, !tbaa !24
  store i64 %t146, ptr %l78, !tbaa !24
  br label %bb31
bb31:
  %t147 = load i64, ptr %l78, !tbaa !24
  store i64 %t147, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb32
bb32:
  %t148 = load i64, ptr %l13, !tbaa !24
  %t149 = load i64, ptr %l12, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb33, label %bb34
bb33:
  br label %bb42
bb34:
  br label %bb35
bb35:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t157 = load i64, ptr %l13, !tbaa !24
  %t158 = load i64, ptr %l11, !tbaa !24
  %t161 = mul i64 %t157, %t158
  %t164 = add i64 %t156, %t161
  store i64 %t164, ptr %l14, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/views:Viewer", ptr %t166, i32 0, i32 14
  %t169 = load i64, ptr %l14, !tbaa !24
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t168, i64 %t169)
  store i64 %t172, ptr %l102
  br label %bb36
bb36:
  %t173 = load i64, ptr %l102, !tbaa !24
  %t174 = icmp slt i64 %t173, 0
  br i1 %t174, label %bb37, label %bb38
bb37:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2evisit(ptr %v0, ptr %t176, i64 %t177)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l13, !tbaa !24
  br label %bb32
bb42:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ederef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i32
  %l12 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/views:Viewer", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l12
  br label %bb4
bb3:
  %t22 = load i32, ptr %l1, !tbaa !23
  store i32 %t22, ptr %l7, !tbaa !23
  br label %bb5
bb4:
  %t24 = load i32, ptr %l12, !tbaa !23
  store i32 %t24, ptr %l7, !tbaa !23
  br label %bb5
bb5:
  %t25 = load i32, ptr %l7, !tbaa !23
  store i32 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efileWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t5, ptr %l8, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l10, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t19, ptr %l8, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t20, 1
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = getelementptr %"compiler/views:Viewer", ptr %a0, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/load:Loader", ptr %t28, i32 0, i32 10
  store ptr %t30, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t32 = load i64, ptr %l3, !tbaa !24
  store i64 %t32, ptr %l15, !tbaa !24
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l17
  br label %bb5
bb5:
  %t36 = load i64, ptr %l15, !tbaa !24
  %t37 = load i64, ptr %l17, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store ptr %t46, ptr %l22
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l22, !tbaa !29
  store ptr %t47, ptr %l4, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = getelementptr %"compiler/load:Module", ptr %t48, i32 0, i32 4
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr %l1, !tbaa !24
  %t55 = icmp eq i64 %t51, %t52
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l29, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l30, !tbaa !24
  %t64 = load i64, ptr %l30, !tbaa !24
  %t65 = mul i64 %t64, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l31, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l30, !tbaa !24
  %t74 = mul i64 %t73, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  %t75 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t75, ptr %l29, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t77 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t76, 1
  store { i32, { i64, ptr } } %t77, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t78 = load i64, ptr %l3, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l3, !tbaa !24
  br label %bb4
bb14:
  %t83 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t83, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
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
  %t35 = call { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %s0, ptr %s0, i64 %a3, { i64, ptr } %t32)
  store { i64, ptr } %t35, ptr %l27
  br label %bb4
bb4:
  %t36 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  %t38 = extractvalue { i64, ptr } %t36, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t43 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t47 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewGivenGrowing(ptr %s0, ptr %v0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t43, { i64, ptr } %t44, { i64, ptr } %t45, { i64, ptr } %t42)
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

define dso_local i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrownAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:place" %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"compiler/views:place"
  %l39 = alloca %"compiler/views:place"
  %l40 = alloca i1
  %rv = alloca i64
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i64, ptr %l10, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
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
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  store ptr %a0, ptr %l35, !tbaa !29
  store %"compiler/views:place" %a1, ptr %l36
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v1, ptr %t53, i64 %t54)
  store %"compiler/views:place" %t57, ptr %l39
  br label %bb12
bb12:
  %t58 = load ptr, ptr %l35, !tbaa !29
  %t59 = load %"compiler/views:place", ptr %l36
  %t60 = load %"compiler/views:place", ptr %l39
  %t61 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emeets(ptr %v0, ptr %t58, %"compiler/views:place" %t59, %"compiler/views:place" %t60)
  store i1 %t61, ptr %l40
  br label %bb13
bb13:
  %t62 = load i1, ptr %l40, !tbaa !21
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t63 = load i64, ptr %l8, !tbaa !24
  store i64 %t63, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l7, !tbaa !24
  br label %bb8
bb18:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/views:state"
  %l6 = alloca %"compiler/views:state"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/views:state"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca %"compiler/views:state"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/views:state"
  %l20 = alloca i64
  %l22 = alloca ptr
  %l25 = alloca %"compiler/views:loopFrame"
  %l28 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca ptr
  %l35 = alloca %"compiler/views:state"
  %l37 = alloca %"compiler/views:state"
  %l38 = alloca %"compiler/views:state"
  %l42 = alloca i64
  %l45 = alloca i64
  %l68 = alloca %"compiler/views:state"
  %l70 = alloca %"compiler/views:state"
  %l77 = alloca i64
  %l79 = alloca i64
  %l84 = alloca %"compiler/views:state"
  %l86 = alloca %"compiler/views:state"
  %l96 = alloca i64
  %l98 = alloca i64
  %l103 = alloca %"compiler/views:state"
  %l105 = alloca %"compiler/views:state"
  %l111 = alloca i64
  %l115 = alloca i64
  %l120 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t29 = alloca %"compiler/views:state", align 8
  %t31 = alloca %"compiler/views:state", align 8
  %t33 = alloca %"compiler/views:state", align 8
  %t88 = alloca %"compiler/views:state", align 8
  %t90 = alloca %"compiler/views:state", align 8
  %t114 = alloca %"compiler/views:state", align 8
  %t117 = alloca %"compiler/views:state", align 8
  %t146 = alloca %"compiler/views:state", align 8
  %t149 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 28
  store ptr %t3, ptr %l22, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Block", ptr %t4, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = call %"compiler/views:loopFrame" @compiler_2fviews_3aloopFrame_2ector(ptr %v0, i32 %t7)
  store %"compiler/views:loopFrame" %t9, ptr %l25
  br label %bb1
bb1:
  %t10 = load %"compiler/views:loopFrame", ptr %l25
  %t11 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store %"compiler/views:loopFrame" %t10, ptr %t11
  %t12 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H473e76678ba49e15aac3621516ab9c7a(ptr %v0, ptr %v0, ptr %t12, ptr %t11)
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:Viewer", ptr %t14, i32 0, i32 28
  store ptr %t16, ptr %l28, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/views:Viewer", ptr %t17, i32 0, i32 28
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H1e03e4f3e9fd2c184a7d157dcdc4524e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l31
  br label %bb3
bb3:
  %t22 = load i64, ptr %l31, !tbaa !24
  %t23 = sub i64 %t22, 1
  %t24 = load ptr, ptr %l28, !tbaa !29
  %t26 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v0, ptr %t24, i64 %t23)
  store ptr %t26, ptr %l33
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l33, !tbaa !29
  store ptr %t27, ptr %l4, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t29, ptr %v3, ptr %s0, ptr %t28)
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t29, i64 136, i1 false)
  br label %bb5
bb5:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t31, ptr %s0, ptr %l35)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t31, i64 136, i1 false)
  br label %bb6
bb6:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l37, i64 136, i1 false)
  call void @compiler_2fviews_2estate_2edead(ptr %t33, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t33, i64 136, i1 false)
  br label %bb7
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l38, i64 136, i1 false)
  store i64 0, ptr %l7, !tbaa !24
  store i64 12, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l8, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l9, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb13
bb10:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l9, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l45, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l45, !tbaa !24
  store i64 %t60, ptr %l42, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l42, !tbaa !24
  store i64 %t61, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = load i64, ptr %l11, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l11, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l12, !tbaa !24
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t82 = getelementptr %"compiler/views:loopFrame", ptr %t80, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eClear_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t82)
  br label %bb18
bb18:
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = getelementptr %"compiler/views:loopFrame", ptr %t84, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eClear_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t86)
  br label %bb19
bb19:
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t88, ptr %s0, ptr %s2, ptr %l5)
  call void @llvm.memmove.p0.p0.i64(ptr %l68, ptr %t88, i64 136, i1 false)
  br label %bb20
bb20:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t90, ptr %s2, ptr %l68)
  call void @llvm.memmove.p0.p0.i64(ptr %l70, ptr %t90, i64 136, i1 false)
  br label %bb21
bb21:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l70, i64 136, i1 false)
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %s2, ptr %t92, ptr %t93, ptr %l13)
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t100 = getelementptr %"compiler/views:loopFrame", ptr %t98, i32 0, i32 2
  store ptr %t100, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t102 = load i64, ptr %l15, !tbaa !24
  store i64 %t102, ptr %l77, !tbaa !24
  %t103 = load ptr, ptr %l14, !tbaa !29
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eLen_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t103)
  store i64 %t105, ptr %l79
  br label %bb24
bb24:
  %t106 = load i64, ptr %l77, !tbaa !24
  %t107 = load i64, ptr %l79, !tbaa !24
  %t108 = icmp slt i64 %t106, %t107
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb26:
  br label %bb27
bb27:
  %t112 = load ptr, ptr %l14, !tbaa !29
  %t113 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eAt_3ccompiler_2fviews_3astate_3e(ptr %t114, ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  call void @llvm.memmove.p0.p0.i64(ptr %l84, ptr %t114, i64 136, i1 false)
  br label %bb28
bb28:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t117, ptr %s4, ptr %l84)
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %t117, i64 136, i1 false)
  br label %bb29
bb29:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l86, i64 136, i1 false)
  call void @compiler_2fviews_2emerge(ptr %s2, ptr %s4, ptr %l13, ptr %l16)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb31
bb31:
  %t121 = load i64, ptr %l15, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l15, !tbaa !24
  br label %bb23
bb32:
  %t125 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v2, ptr %s2, ptr %t125, ptr %a2, ptr %l13)
  br label %bb33
bb33:
  %t130 = load ptr, ptr %l4, !tbaa !29
  %t132 = getelementptr %"compiler/views:loopFrame", ptr %t130, i32 0, i32 1
  store ptr %t132, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t134 = load i64, ptr %l18, !tbaa !24
  store i64 %t134, ptr %l96, !tbaa !24
  %t135 = load ptr, ptr %l17, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eLen_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l98
  br label %bb35
bb35:
  %t138 = load i64, ptr %l96, !tbaa !24
  %t139 = load i64, ptr %l98, !tbaa !24
  %t140 = icmp slt i64 %t138, %t139
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t144 = load ptr, ptr %l17, !tbaa !29
  %t145 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eAt_3ccompiler_2fviews_3astate_3e(ptr %t146, ptr %v0, ptr %v0, ptr %t144, i64 %t145)
  call void @llvm.memmove.p0.p0.i64(ptr %l103, ptr %t146, i64 136, i1 false)
  br label %bb39
bb39:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t149, ptr %s7, ptr %l103)
  call void @llvm.memmove.p0.p0.i64(ptr %l105, ptr %t149, i64 136, i1 false)
  br label %bb40
bb40:
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %l105, i64 136, i1 false)
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s7, ptr %l6, ptr %l19)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb42
bb42:
  %t153 = load i64, ptr %l18, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l18, !tbaa !24
  br label %bb34
bb43:
  %t158 = call i64 @compiler_2fviews_2eweight(ptr %s0, ptr %l5)
  store i64 %t158, ptr %l111
  br label %bb44
bb44:
  %t159 = load i64, ptr %l111, !tbaa !24
  store i64 %t159, ptr %l20, !tbaa !24
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s2, ptr %l5, ptr %l13)
  br label %bb45
bb45:
  %t163 = call i64 @compiler_2fviews_2eweight(ptr %s0, ptr %l5)
  store i64 %t163, ptr %l115
  br label %bb46
bb46:
  %t164 = load i64, ptr %l20, !tbaa !24
  %t165 = load i64, ptr %l115, !tbaa !24
  %t167 = icmp eq i64 %t165, %t164
  br i1 %t167, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s2)
  br label %bb51
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s2)
  br label %bb50
bb50:
  %t169 = load i64, ptr %l11, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l11, !tbaa !24
  br label %bb14
bb51:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/views:Viewer", ptr %t173, i32 0, i32 28
  %t177 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H2424d6cf963333801588b77238bf827f(ptr %v0, ptr %v0, ptr %t175)
  %t178 = extractvalue { i32, ptr } %t177, 1
  %t179 = extractvalue { i32, ptr } %t177, 0
  store i32 %t179, ptr %l124
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb53, label %ok.181, !prof !99
ok.181:
  store ptr %t178, ptr %l123
  br label %bb52
bb52:
  %t182 = load ptr, ptr %l123, !tbaa !29
  store ptr %t182, ptr %l120, !tbaa !29
  br label %bb55
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t183 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v3, ptr %s0, ptr %t183, ptr %l6)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ematchOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"compiler/views:state"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"compiler/views:state"
  %l14 = alloca %"compiler/views:state"
  %l23 = alloca { i64, ptr }
  %l32 = alloca %"compiler/views:state"
  %l41 = alloca { i64, ptr }
  %l45 = alloca %"compiler/views:state"
  %l47 = alloca %"compiler/views:state"
  %l61 = alloca %"compiler/views:state"
  %l63 = alloca %"compiler/views:state"
  %l64 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t37 = alloca %"compiler/views:state", align 8
  %t64 = alloca %"compiler/views:state", align 8
  %t66 = alloca %"compiler/views:state", align 8
  %t91 = alloca %"compiler/views:state", align 8
  %t96 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t18, ptr %l23, !tbaa !27
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %t26, ptr %t24, ptr %t29)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb1
bb7:
  call void @compiler_2fviews_2estate_2edead(ptr %t37, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t37, i64 136, i1 false)
  br label %bb8
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l32, i64 136, i1 false)
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Match", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s5
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l11, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t55, ptr %l41, !tbaa !27
  %t56 = load i64, ptr %l10, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l12, !tbaa !29
  %t63 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t64, ptr %v2, ptr %s5, ptr %t63)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t64, i64 136, i1 false)
  br label %bb13
bb13:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t66, ptr %s5, ptr %l45)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t66, i64 136, i1 false)
  br label %bb14
bb14:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l47, i64 136, i1 false)
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l12, !tbaa !29
  %t70 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earm(ptr %v0, ptr %v1, ptr %s5, ptr %v3, ptr %t68, ptr %t69, ptr %l13, ptr %t70)
  br label %bb15
bb15:
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s5, ptr %l8, ptr %l13)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb17
bb17:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb9
bb18:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Match", ptr %t81, i32 0, i32 2
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s7
  %t90 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t91, ptr %v2, ptr %s7, ptr %t90)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t91, i64 136, i1 false)
  br label %bb21
bb20:
  %t93 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %v2, ptr %l8, ptr %t93)
  br label %bb28
bb21:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t96, ptr %s7, ptr %l61)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t96, i64 136, i1 false)
  br label %bb22
bb22:
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %l63, i64 136, i1 false)
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l64, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Match", ptr %t99, i32 0, i32 2
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_2d854533e388acf3_9bd384635a298ef)
  unreachable
bb24:
  br label %bb25
bb25:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Match", ptr %t106, i32 0, i32 2
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t111 = load ptr, ptr %l64, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earm(ptr %v0, ptr %v1, ptr %s7, ptr %v3, ptr %t111, ptr %t109, ptr %l14, ptr %t110)
  br label %bb26
bb26:
  call void @compiler_2fviews_2emerge(ptr %s0, ptr %s7, ptr %l8, ptr %l14)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v2, ptr %s0, ptr %t117, ptr %l8)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emeets(ptr %v0, ptr %a0, %"compiler/views:place" %a1, %"compiler/views:place" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:place"
  %l2 = alloca %"compiler/views:place"
  %l4 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, [2 x i64] }
  %l9 = alloca { i64, [2 x i64] }
  %l11 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/views:place" %a1, ptr %l1
  store %"compiler/views:place" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  %t4 = call i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %t2)
  store i1 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i1, ptr %l4, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb3:
  %t8 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 0
  %t9 = load { i64, [2 x i64] }, ptr %t8
  store { i64, [2 x i64] } %t9, ptr %l7
  %t10 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 0
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l9
  %t14 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fviews_3aRoot(ptr %l7, ptr %l9)
  store i1 %t14, ptr %l11
  br label %bb4
bb4:
  %t15 = load i1, ptr %l11, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l6, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = icmp eq i64 %t21, %t23
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t29 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 3
  %t30 = load i1, ptr %t29, !tbaa !21
  br i1 %t30, label %bb12, label %bb13
bb12:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 1
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t40 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %t32, i64 %t34, i64 %t36)
  store i1 %t40, ptr %l23
  br label %bb14
bb13:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb15
bb14:
  %t41 = load i1, ptr %l23, !tbaa !21
  store i1 %t41, ptr %l19, !tbaa !21
  br label %bb15
bb15:
  %t42 = load i1, ptr %l19, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t44 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 3
  %t45 = load i1, ptr %t44, !tbaa !21
  br i1 %t45, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/views:place", ptr %l1, i32 0, i32 1
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = getelementptr %"compiler/views:place", ptr %l2, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  %t55 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eprefix(ptr %v0, ptr %t47, i64 %t49, i64 %t51)
  store i1 %t55, ptr %l30
  br label %bb21
bb20:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb22
bb21:
  %t56 = load i1, ptr %l30, !tbaa !21
  store i1 %t56, ptr %l26, !tbaa !21
  br label %bb22
bb22:
  %t57 = load i1, ptr %l26, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l4, !tbaa !27
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

define dso_local i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplainType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l12 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Viewer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/views:Viewer", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/views:Viewer", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l17
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb4:
  %t32 = load ptr, ptr %l12, !tbaa !29
  %t33 = load i32, ptr %l17, !tbaa !23
  %t34 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t32, i32 %t33)
  store i64 %t34, ptr %l18
  br label %bb5
bb5:
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = icmp eq i64 %t35, 0
  store i1 %t36, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t38 = load i1, ptr %l9, !tbaa !21
  store i1 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2equoted(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l39 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t5, ptr %l8, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l10, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t19, ptr %l8, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/views:Viewer", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  store ptr %t27, ptr %l14
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 1
  %t31 = load { i64, [2 x i64] }, ptr %t30
  store { i64, [2 x i64] } %t31, ptr %l2
  %t33 = load { i64, [2 x i64] }, ptr %l2
  %t35 = extractvalue { i64, [2 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 0
  br i1 %t36, label %bb5, label %bb6
bb5:
  %t38 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t39 = getelementptr { i64 }, ptr %t38, i32 0, i32 0
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb7
bb6:
  br label %bb11
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l21, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/views:Viewer", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/views:Viewer", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l27
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l23, !tbaa !29
  %t56 = load i64, ptr %l27, !tbaa !24
  %t57 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  store ptr %t57, ptr %l28
  br label %bb9
bb9:
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t60 = getelementptr %"compiler/ast:Func", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load ptr, ptr %l21, !tbaa !29
  %t64 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s2, ptr %t62, i32 %t61)
  store { i64, ptr } %t64, ptr %l31
  br label %bb10
bb10:
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t67 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = add i64 %t66, %t69
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t65, i64 %t66)
  %t75 = getelementptr i8, ptr %t74, i64 %t66
  call void @olang_textcopy(ptr %t75, ptr %t68, i64 %t69)
  %t76 = getelementptr i8, ptr %t75, i64 %t69
  call void @olang_textcopy(ptr %t76, ptr %t71, i64 %t72)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t74, 1
  store { i64, ptr } %t78, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb11:
  %t80 = load { i64, [2 x i64] }, ptr %l2
  %t82 = extractvalue { i64, [2 x i64] } %t80, 0
  %t83 = icmp eq i64 %t82, 1
  br i1 %t83, label %bb12, label %bb13
bb12:
  %t85 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t86 = getelementptr { i32, i32 }, ptr %t85, i32 0, i32 0
  %t87 = load i32, ptr %t86
  store i32 %t87, ptr %l4, !tbaa !23
  br label %bb14
bb13:
  br label %bb18
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l36, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/views:Viewer", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  store ptr %t95, ptr %l39, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/views:Viewer", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l4, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l44
  br label %bb15
bb15:
  %t106 = load ptr, ptr %l39, !tbaa !29
  %t107 = load i32, ptr %l44, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t108, ptr %l45
  br label %bb16
bb16:
  %t109 = load ptr, ptr %l36, !tbaa !29
  %t110 = load i32, ptr %l45, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %s4, ptr %t109, i32 %t110)
  store { i64, ptr } %t111, ptr %l46
  br label %bb17
bb17:
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t114 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = add i64 %t113, %t116
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t112, i64 %t113)
  %t122 = getelementptr i8, ptr %t121, i64 %t113
  call void @olang_textcopy(ptr %t122, ptr %t115, i64 %t116)
  %t123 = getelementptr i8, ptr %t122, i64 %t116
  call void @olang_textcopy(ptr %t123, ptr %t118, i64 %t119)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t121, 1
  store { i64, ptr } %t125, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t127, ptr %l17, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_52eb4a404ee8e2f2_daf885f9c5247eae)
  unreachable
bb23:
  %t129 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l50, !tbaa !24
  %t131 = load i64, ptr %l50, !tbaa !24
  %t132 = mul i64 %t131, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l51, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l50, !tbaa !24
  %t141 = mul i64 %t140, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %t139, i64 %t141, i1 false)
  %t142 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t142, ptr %l17, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t47, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
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
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t71, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) })
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
  %t137 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t136, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
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
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t245, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) })
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
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s0, ptr %v1, { i64, ptr } %a2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) })
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
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) })
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
  %t30 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) })
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
  %t113 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s6, ptr %s6, { i64, ptr } %t111, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) })
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
  %t137 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s7, { i64, ptr } %t135, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) })
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
  %t235 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s13, ptr %v1, { i64, ptr } %t234, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
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
  %t273 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s13, ptr %s13, { i64, ptr } %t271, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d37, i32 0, i32 1) })
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
  %t282 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s13, ptr %s13, { i64, ptr } %t280, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d38, i32 0, i32 1) })
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
  %t291 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s13, ptr %s13, { i64, ptr } %t289, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d39, i32 0, i32 1) })
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

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/views:state"
  %l2 = alloca %"compiler/views:state"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"compiler/views:state"
  %t1 = alloca %"compiler/views:state", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fviews_3astate_2ector(ptr %t1, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %t1, i64 136, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %l2, i64 136, i1 false)
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/views:state", ptr %t2, i32 0, i32 0
  %t5 = load i1, ptr %t4, !tbaa !21
  %t7 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 0
  store i1 %t5, ptr %t7, !tbaa !21
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:state", ptr %t8, i32 0, i32 1
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t10
  %t13 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t13
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/views:state", ptr %t14, i32 0, i32 2
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16
  %t19 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %t19
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/views:state", ptr %t20, i32 0, i32 3
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22
  %t24 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 3
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l11
  %t27 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %t27
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t28, label %bb2, label %bb3
bb2:
  %t30 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = call ptr @__olang_region_or(ptr %t32, ptr null)
  %t34 = call ptr @__olang_region_home(ptr %t33)
  %t35 = icmp ne ptr %t34, null
  %t36 = select i1 %t35, ptr %t34, ptr null
  call void @__olang_region_drop(ptr %t36)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l11
  br label %bb3
bb3:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/views:state", ptr %t37, i32 0, i32 4
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t39
  %t42 = getelementptr %"compiler/views:state", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t42
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l1, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l15, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2ecompiler_2fviews_3astate_2eforget(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/views:holding"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"compiler/views:holding"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:state", ptr %t1, i32 0, i32 1
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l7
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %l7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l2
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/views:state", ptr %t8, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eClear_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t10)
  br label %bb2
bb2:
  store ptr %l2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  store i64 %t13, ptr %l13, !tbaa !24
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t14)
  store i64 %t16, ptr %l15
  br label %bb4
bb4:
  %t17 = load i64, ptr %l13, !tbaa !24
  %t18 = load i64, ptr %l15, !tbaa !24
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
  %t27 = call %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %s0, ptr %t23, i64 %t24)
  store %"compiler/views:holding" %t27, ptr %l20
  br label %bb8
bb8:
  %t28 = load %"compiler/views:holding", ptr %l20
  store %"compiler/views:holding" %t28, ptr %l5
  %t29 = getelementptr %"compiler/views:holding", ptr %l5, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = icmp ne i64 %t30, %t31
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/views:state", ptr %t36, i32 0, i32 1
  %t39 = load %"compiler/views:holding", ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %t38, %"compiler/views:holding" %t39)
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
  %t47 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eunname(ptr %v0, ptr %t46, i64 %t47)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_2estate_2edead(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/views:state"
  %l1 = alloca %"compiler/views:state"
  %l2 = alloca %"compiler/views:state"
  %t1 = alloca %"compiler/views:state", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fviews_3astate_2ector(ptr %t1, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %t1, i64 136, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %l1, i64 136, i1 false)
  %t2 = getelementptr %"compiler/views:state", ptr %l0, i32 0, i32 0
  store i1 true, ptr %t2, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l0, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l2, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fviews_2eunAway(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  store i64 16, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l16, !tbaa !24
  store i64 %t29, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l13, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb23
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l7, !tbaa !24
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t50 = load ptr, ptr %l34, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l34, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 18}
  %t56 = icmp eq i64 %t54, 17
  store i1 %t56, ptr %l35, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l35, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [5 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t60, i32 0, i32 2
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l8, !tbaa !29
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t64 = load ptr, ptr %l8, !tbaa !29
  store ptr %t64, ptr %l1, !tbaa !29
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_c6dbc1b994c66c62_e0c1acfc7721040e)
  unreachable
bb21:
  br label %bb22
bb22:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l6, !tbaa !24
  br label %bb7
bb23:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fviews_2ewrittenFn(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i1
  %l49 = alloca i1
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l56 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb23
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { i32 }, ptr %t27, i32 0, i32 0
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l2, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t33 = sext i32 %t31 to i64
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb22
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 3}
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l3, !tbaa !23
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t50 = load i32, ptr %l3, !tbaa !23
  %t52 = sext i32 %t50 to i64
  store i64 %t52, ptr %l14, !tbaa !24
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i64 -1, ptr %l14, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_197575046d4aa70e_5d31601693404fa2)
  unreachable
bb22:
  %t54 = load i64, ptr %l14, !tbaa !24
  store i64 %t54, ptr %l7, !tbaa !24
  br label %bb48
bb23:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb24, label %bb25
bb24:
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 18}
  %t62 = icmp eq i64 %t60, 17
  store i1 %t62, ptr %l32, !tbaa !21
  br label %bb25
bb25:
  %t63 = load i1, ptr %l32, !tbaa !21
  br i1 %t63, label %bb26, label %bb27
bb26:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l4, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = call i64 @compiler_2fviews_2ewrittenFn(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l38
  br label %bb29
bb29:
  %t73 = load i64, ptr %l38, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb48
bb30:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb31, label %bb32
bb31:
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 18}
  %t81 = icmp eq i64 %t79, 9
  store i1 %t81, ptr %l40, !tbaa !21
  br label %bb32
bb32:
  %t82 = load i1, ptr %l40, !tbaa !21
  br i1 %t82, label %bb33, label %bb34
bb33:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t85, i32 0, i32 2
  %t87 = load i32, ptr %t86, !range !{i32 0, i32 51}
  store i32 %t87, ptr %l5
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t91, i32 0, i32 4
  %t93 = load { i64, ptr }, ptr %t92
  store { i64, ptr } %t93, ptr %l6, !tbaa !27
  br label %bb35
bb34:
  br label %bb43
bb35:
  %t95 = load i32, ptr %l5, !range !{i32 0, i32 51}
  %t97 = trunc i64 20 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb36, label %bb37
bb36:
  %t100 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t104 = icmp eq i64 %t102, 1
  store i1 %t104, ptr %l49, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb38
bb38:
  %t106 = load i1, ptr %l49, !tbaa !21
  br i1 %t106, label %bb39, label %bb40
bb39:
  %t107 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t107, ptr %l54, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr ptr, ptr %t109, i64 0
  %t111 = load ptr, ptr %t110, !tbaa !39
  %t113 = call i64 @compiler_2fviews_2ewrittenFn(ptr %v0, ptr %t111)
  store i64 %t113, ptr %l56
  br label %bb41
bb40:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb42
bb41:
  %t114 = load i64, ptr %l56, !tbaa !24
  store i64 %t114, ptr %l53, !tbaa !24
  br label %bb42
bb42:
  %t115 = load i64, ptr %l53, !tbaa !24
  store i64 %t115, ptr %l7, !tbaa !24
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_4a9384f18580d74f_109b6d942d9c70a3)
  unreachable
bb48:
  %t116 = load i64, ptr %l7, !tbaa !24
  store i64 %t116, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/views:Cand" @compiler_2fviews_3aCand_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/views:Cand"
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l1, !tbaa !24
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l6
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l8
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l6
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = call ptr @__olang_region_home(ptr %t18)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t22)
  br label %bb5
bb5:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l2
  %t24 = ptrtoint ptr %v0 to i64
  store i64 %t24, ptr %l10, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e2
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = call ptr @__olang_region_make(ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l10
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t30, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l12
  br label %bb8
bb8:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e2
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l10
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = call ptr @__olang_region_home(ptr %t39)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l3
  %t45 = ptrtoint ptr %v0 to i64
  store i64 %t45, ptr %l14, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e3
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v0)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l14, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l14
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l16
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e3
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l14
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = call ptr @__olang_region_home(ptr %t60)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr null
  %t64 = icmp eq ptr %t63, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t64)
  br label %bb15
bb15:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t66 = load i64, ptr %l1, !tbaa !24
  %t67 = insertvalue %"compiler/views:Cand" undef, i64 %t66, 0
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t69 = insertvalue %"compiler/views:Cand" %t67, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, 1
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t71 = insertvalue %"compiler/views:Cand" %t69, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, 2
  %t73 = insertvalue %"compiler/views:Cand" %t71, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, 3
  store %"compiler/views:Cand" %t73, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:Cand", ptr %rv
  ret %"compiler/views:Cand" %rr
}

define dso_local void @compiler_2fviews_3aKept_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca %"compiler/views:Kept"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l8, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l8
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l10
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l8
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l12, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e1
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l12
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H598d4018a729aa7c2aa1315e906ea840(ptr %t28)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l14
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l12
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 2
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = call ptr @__olang_region_home(ptr %t37)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = call ptr @__olang_region_home(ptr %t44)
  %t46 = icmp ne ptr %t45, null
  %t47 = select i1 %t46, ptr %t45, ptr %t40
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 0
  %t49 = load { i64, ptr }, ptr %t48
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = call ptr @__olang_region_or(ptr %t50, ptr null)
  %t52 = call ptr @__olang_region_home(ptr %t51)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr %t47
  %t55 = icmp eq ptr %t54, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t55)
  br label %bb10
bb10:
  %t56 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t56, ptr %l1
  store i1 false, ptr %l2, !tbaa !21
  store i1 false, ptr %l3, !tbaa !21
  store i64 0, ptr %l4, !tbaa !24
  %t57 = ptrtoint ptr %v0 to i64
  store i64 %t57, ptr %l16, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e5
  br i1 %t58, label %bb11, label %bb12
bb11:
  %t60 = call ptr @__olang_region_make(ptr %v0)
  %t61 = ptrtoint ptr %t60 to i64
  store i64 %t61, ptr %l16, !tbaa !24
  br label %bb12
bb12:
  %t62 = load i64, ptr %l16
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t63)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t64, ptr %l18
  br label %bb13
bb13:
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e5
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load i64, ptr %l16
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 2
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = call ptr @__olang_region_home(ptr %t72)
  %t74 = icmp ne ptr %t73, null
  %t75 = select i1 %t74, ptr %t73, ptr null
  %t76 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 1
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = call ptr @__olang_region_home(ptr %t79)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr %t75
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = call ptr @__olang_region_home(ptr %t86)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr %t82
  %t90 = icmp eq ptr %t89, %t68
  call void @__olang_region_settle(ptr %t68, i1 %t90)
  br label %bb15
bb15:
  %t91 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t91, ptr %l5
  %t92 = ptrtoint ptr %v0 to i64
  store i64 %t92, ptr %l20, !tbaa !24
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e6
  br i1 %t93, label %bb16, label %bb17
bb16:
  %t95 = call ptr @__olang_region_make(ptr %v0)
  %t96 = ptrtoint ptr %t95 to i64
  store i64 %t96, ptr %l20, !tbaa !24
  br label %bb17
bb17:
  %t97 = load i64, ptr %l20
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t98, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l22
  br label %bb18
bb18:
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e6
  br i1 %t100, label %bb19, label %bb20
bb19:
  %t102 = load i64, ptr %l20
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t105 = load { i64, ptr }, ptr %t104
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = call ptr @__olang_region_or(ptr %t106, ptr null)
  %t108 = call ptr @__olang_region_home(ptr %t107)
  %t109 = icmp ne ptr %t108, null
  %t110 = select i1 %t109, ptr %t108, ptr null
  %t111 = icmp eq ptr %t110, %t103
  call void @__olang_region_settle(ptr %t103, i1 %t111)
  br label %bb20
bb20:
  %t112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l6
  %t113 = ptrtoint ptr %v0 to i64
  store i64 %t113, ptr %l24, !tbaa !24
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e7
  br i1 %t114, label %bb21, label %bb22
bb21:
  %t116 = call ptr @__olang_region_make(ptr %v0)
  %t117 = ptrtoint ptr %t116 to i64
  store i64 %t117, ptr %l24, !tbaa !24
  br label %bb22
bb22:
  %t118 = load i64, ptr %l24
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hd6e1819e1818d88f4447e4f021a92af5(ptr %t119)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %l26
  br label %bb23
bb23:
  %t121 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e7
  br i1 %t121, label %bb24, label %bb25
bb24:
  %t123 = load i64, ptr %l24
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 2
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = call ptr @__olang_region_home(ptr %t128)
  %t130 = icmp ne ptr %t129, null
  %t131 = select i1 %t130, ptr %t129, ptr null
  %t132 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 1
  %t133 = load { i64, ptr }, ptr %t132
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr null)
  %t136 = call ptr @__olang_region_home(ptr %t135)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr %t131
  %t139 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 0
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = call ptr @__olang_region_home(ptr %t142)
  %t144 = icmp ne ptr %t143, null
  %t145 = select i1 %t144, ptr %t143, ptr %t138
  %t146 = icmp eq ptr %t145, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t146)
  br label %bb25
bb25:
  %t147 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26
  %t148 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 0
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %t148
  %t150 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 1
  %t151 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t151, ptr %t150
  %t152 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 2
  %t153 = load i1, ptr %l2, !tbaa !21
  store i1 %t153, ptr %t152, !tbaa !21
  %t154 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 3
  %t155 = load i1, ptr %l3, !tbaa !21
  store i1 %t155, ptr %t154, !tbaa !21
  %t156 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 4
  %t157 = load i64, ptr %l4, !tbaa !24
  store i64 %t157, ptr %t156, !tbaa !24
  %t158 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 5
  %t159 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t159, ptr %t158
  %t160 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 6
  %t161 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t161, ptr %t160
  %t162 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t147, ptr %t162
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l28, i64 296, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fviews_3aViewer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l28 = alloca i1
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca i64
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i64
  %l50 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l52 = alloca i64
  %l54 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l56 = alloca i64
  %l58 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca i64
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca i64
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca i64
  %l108 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l110 = alloca i64
  %l112 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l114 = alloca i64
  %l116 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l118 = alloca i64
  %l120 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l122 = alloca i64
  %l127 = alloca %"compiler/views:Viewer"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l3
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l40, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l40, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l40
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l42
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l40
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l4
  %t26 = ptrtoint ptr %v2 to i64
  store i64 %t26, ptr %l44, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e3
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = call ptr @__olang_region_make(ptr %v2)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l44, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l44
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t32, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l46
  br label %bb8
bb8:
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e3
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l44
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = call ptr @__olang_region_or(ptr %t40, ptr null)
  %t42 = call ptr @__olang_region_home(ptr %t41)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t37
  call void @__olang_region_settle(ptr %t37, i1 %t45)
  br label %bb10
bb10:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l5
  %t47 = ptrtoint ptr %v2 to i64
  store i64 %t47, ptr %l48, !tbaa !24
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e4
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = call ptr @__olang_region_make(ptr %v2)
  %t51 = ptrtoint ptr %t50 to i64
  store i64 %t51, ptr %l48, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l48
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t53)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %l50
  br label %bb13
bb13:
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e4
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load i64, ptr %l48
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = call ptr @__olang_region_home(ptr %t62)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr null
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 1
  %t67 = load { i64, ptr }, ptr %t66
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = call ptr @__olang_region_or(ptr %t68, ptr null)
  %t70 = call ptr @__olang_region_home(ptr %t69)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t65
  %t73 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = call ptr @__olang_region_home(ptr %t76)
  %t78 = icmp ne ptr %t77, null
  %t79 = select i1 %t78, ptr %t77, ptr %t72
  %t80 = icmp eq ptr %t79, %t58
  call void @__olang_region_settle(ptr %t58, i1 %t80)
  br label %bb15
bb15:
  %t81 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t81, ptr %l6
  %t82 = ptrtoint ptr %v2 to i64
  store i64 %t82, ptr %l52, !tbaa !24
  %t83 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e5
  br i1 %t83, label %bb16, label %bb17
bb16:
  %t85 = call ptr @__olang_region_make(ptr %v2)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l52, !tbaa !24
  br label %bb17
bb17:
  %t87 = load i64, ptr %l52
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %t88)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t89, ptr %l54
  br label %bb18
bb18:
  %t90 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e5
  br i1 %t90, label %bb19, label %bb20
bb19:
  %t92 = load i64, ptr %l52
  %t93 = inttoptr i64 %t92 to ptr
  %t94 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 2
  %t95 = load { i64, ptr }, ptr %t94
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = call ptr @__olang_region_or(ptr %t96, ptr null)
  %t98 = call ptr @__olang_region_home(ptr %t97)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = call ptr @__olang_region_home(ptr %t104)
  %t106 = icmp ne ptr %t105, null
  %t107 = select i1 %t106, ptr %t105, ptr %t100
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 0
  %t109 = load { i64, ptr }, ptr %t108
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = call ptr @__olang_region_or(ptr %t110, ptr null)
  %t112 = call ptr @__olang_region_home(ptr %t111)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t107
  %t115 = icmp eq ptr %t114, %t93
  call void @__olang_region_settle(ptr %t93, i1 %t115)
  br label %bb20
bb20:
  %t116 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t116, ptr %l7
  %t117 = ptrtoint ptr %v2 to i64
  store i64 %t117, ptr %l56, !tbaa !24
  %t118 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e6
  br i1 %t118, label %bb21, label %bb22
bb21:
  %t120 = call ptr @__olang_region_make(ptr %v2)
  %t121 = ptrtoint ptr %t120 to i64
  store i64 %t121, ptr %l56, !tbaa !24
  br label %bb22
bb22:
  %t122 = load i64, ptr %l56
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t123)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t124, ptr %l58
  br label %bb23
bb23:
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e6
  br i1 %t125, label %bb24, label %bb25
bb24:
  %t127 = load i64, ptr %l56
  %t128 = inttoptr i64 %t127 to ptr
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = call ptr @__olang_region_or(ptr %t131, ptr null)
  %t133 = call ptr @__olang_region_home(ptr %t132)
  %t134 = icmp ne ptr %t133, null
  %t135 = select i1 %t134, ptr %t133, ptr null
  %t136 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 1
  %t137 = load { i64, ptr }, ptr %t136
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = call ptr @__olang_region_or(ptr %t138, ptr null)
  %t140 = call ptr @__olang_region_home(ptr %t139)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr %t135
  %t143 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 0
  %t144 = load { i64, ptr }, ptr %t143
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr null)
  %t147 = call ptr @__olang_region_home(ptr %t146)
  %t148 = icmp ne ptr %t147, null
  %t149 = select i1 %t148, ptr %t147, ptr %t142
  %t150 = icmp eq ptr %t149, %t128
  call void @__olang_region_settle(ptr %t128, i1 %t150)
  br label %bb25
bb25:
  %t151 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t151, ptr %l8
  store i64 -1, ptr %l9, !tbaa !24
  store i64 -1, ptr %l10, !tbaa !24
  store i64 -1, ptr %l11, !tbaa !24
  %t152 = ptrtoint ptr %v2 to i64
  store i64 %t152, ptr %l60, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e10
  br i1 %t153, label %bb26, label %bb27
bb26:
  %t155 = call ptr @__olang_region_make(ptr %v2)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l60, !tbaa !24
  br label %bb27
bb27:
  %t157 = load i64, ptr %l60
  %t158 = inttoptr i64 %t157 to ptr
  %t159 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e(ptr %t158)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t159, ptr %l62
  br label %bb28
bb28:
  %t160 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e10
  br i1 %t160, label %bb29, label %bb30
bb29:
  %t162 = load i64, ptr %l60
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 2
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_region_or(ptr %t166, ptr null)
  %t168 = call ptr @__olang_region_home(ptr %t167)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr null
  %t171 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = call ptr @__olang_region_home(ptr %t174)
  %t176 = icmp ne ptr %t175, null
  %t177 = select i1 %t176, ptr %t175, ptr %t170
  %t178 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr null)
  %t182 = call ptr @__olang_region_home(ptr %t181)
  %t183 = icmp ne ptr %t182, null
  %t184 = select i1 %t183, ptr %t182, ptr %t177
  %t185 = icmp eq ptr %t184, %t163
  call void @__olang_region_settle(ptr %t163, i1 %t185)
  br label %bb30
bb30:
  %t186 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t186, ptr %l12
  %t187 = ptrtoint ptr %v2 to i64
  store i64 %t187, ptr %l64, !tbaa !24
  %t188 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e11
  br i1 %t188, label %bb31, label %bb32
bb31:
  %t190 = call ptr @__olang_region_make(ptr %v2)
  %t191 = ptrtoint ptr %t190 to i64
  store i64 %t191, ptr %l64, !tbaa !24
  br label %bb32
bb32:
  %t192 = load i64, ptr %l64
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_3e_2ector(ptr %t193, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %l66
  br label %bb33
bb33:
  %t195 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e11
  br i1 %t195, label %bb34, label %bb35
bb34:
  %t197 = load i64, ptr %l64
  %t198 = inttoptr i64 %t197 to ptr
  %t199 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t200 = load { i64, ptr }, ptr %t199
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = call ptr @__olang_region_home(ptr %t202)
  %t204 = icmp ne ptr %t203, null
  %t205 = select i1 %t204, ptr %t203, ptr null
  %t206 = icmp eq ptr %t205, %t198
  call void @__olang_region_settle(ptr %t198, i1 %t206)
  br label %bb35
bb35:
  %t207 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t207, ptr %l13
  %t208 = ptrtoint ptr %v2 to i64
  store i64 %t208, ptr %l68, !tbaa !24
  %t209 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e12
  br i1 %t209, label %bb36, label %bb37
bb36:
  %t211 = call ptr @__olang_region_make(ptr %v2)
  %t212 = ptrtoint ptr %t211 to i64
  store i64 %t212, ptr %l68, !tbaa !24
  br label %bb37
bb37:
  %t213 = load i64, ptr %l68
  %t214 = inttoptr i64 %t213 to ptr
  %t215 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t214, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t215, ptr %l70
  br label %bb38
bb38:
  %t216 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e12
  br i1 %t216, label %bb39, label %bb40
bb39:
  %t218 = load i64, ptr %l68
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70, i32 0, i32 0
  %t221 = load { i64, ptr }, ptr %t220
  %t222 = extractvalue { i64, ptr } %t221, 1
  %t223 = call ptr @__olang_region_or(ptr %t222, ptr null)
  %t224 = call ptr @__olang_region_home(ptr %t223)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr null
  %t227 = icmp eq ptr %t226, %t219
  call void @__olang_region_settle(ptr %t219, i1 %t227)
  br label %bb40
bb40:
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l14
  %t229 = ptrtoint ptr %v2 to i64
  store i64 %t229, ptr %l72, !tbaa !24
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e13
  br i1 %t230, label %bb41, label %bb42
bb41:
  %t232 = call ptr @__olang_region_make(ptr %v2)
  %t233 = ptrtoint ptr %t232 to i64
  store i64 %t233, ptr %l72, !tbaa !24
  br label %bb42
bb42:
  %t234 = load i64, ptr %l72
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t235, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l74
  br label %bb43
bb43:
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e13
  br i1 %t237, label %bb44, label %bb45
bb44:
  %t239 = load i64, ptr %l72
  %t240 = inttoptr i64 %t239 to ptr
  %t241 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74, i32 0, i32 0
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = call ptr @__olang_region_or(ptr %t243, ptr null)
  %t245 = call ptr @__olang_region_home(ptr %t244)
  %t246 = icmp ne ptr %t245, null
  %t247 = select i1 %t246, ptr %t245, ptr null
  %t248 = icmp eq ptr %t247, %t240
  call void @__olang_region_settle(ptr %t240, i1 %t248)
  br label %bb45
bb45:
  %t249 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %l15
  %t250 = ptrtoint ptr %v2 to i64
  store i64 %t250, ptr %l76, !tbaa !24
  %t251 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e14
  br i1 %t251, label %bb46, label %bb47
bb46:
  %t253 = call ptr @__olang_region_make(ptr %v2)
  %t254 = ptrtoint ptr %t253 to i64
  store i64 %t254, ptr %l76, !tbaa !24
  br label %bb47
bb47:
  %t255 = load i64, ptr %l76
  %t256 = inttoptr i64 %t255 to ptr
  %t257 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t256, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t257, ptr %l78
  br label %bb48
bb48:
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e14
  br i1 %t258, label %bb49, label %bb50
bb49:
  %t260 = load i64, ptr %l76
  %t261 = inttoptr i64 %t260 to ptr
  %t262 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t263 = load { i64, ptr }, ptr %t262
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = call ptr @__olang_region_or(ptr %t264, ptr null)
  %t266 = call ptr @__olang_region_home(ptr %t265)
  %t267 = icmp ne ptr %t266, null
  %t268 = select i1 %t267, ptr %t266, ptr null
  %t269 = icmp eq ptr %t268, %t261
  call void @__olang_region_settle(ptr %t261, i1 %t269)
  br label %bb50
bb50:
  %t270 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %l16
  %t271 = ptrtoint ptr %v2 to i64
  store i64 %t271, ptr %l80, !tbaa !24
  %t272 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e15
  br i1 %t272, label %bb51, label %bb52
bb51:
  %t274 = call ptr @__olang_region_make(ptr %v2)
  %t275 = ptrtoint ptr %t274 to i64
  store i64 %t275, ptr %l80, !tbaa !24
  br label %bb52
bb52:
  %t276 = load i64, ptr %l80
  %t277 = inttoptr i64 %t276 to ptr
  %t278 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t277, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %l82
  br label %bb53
bb53:
  %t279 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e15
  br i1 %t279, label %bb54, label %bb55
bb54:
  %t281 = load i64, ptr %l80
  %t282 = inttoptr i64 %t281 to ptr
  %t283 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t284 = load { i64, ptr }, ptr %t283
  %t285 = extractvalue { i64, ptr } %t284, 1
  %t286 = call ptr @__olang_region_or(ptr %t285, ptr null)
  %t287 = call ptr @__olang_region_home(ptr %t286)
  %t288 = icmp ne ptr %t287, null
  %t289 = select i1 %t288, ptr %t287, ptr null
  %t290 = icmp eq ptr %t289, %t282
  call void @__olang_region_settle(ptr %t282, i1 %t290)
  br label %bb55
bb55:
  %t291 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %l17
  %t292 = ptrtoint ptr %v2 to i64
  store i64 %t292, ptr %l84, !tbaa !24
  %t293 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e16
  br i1 %t293, label %bb56, label %bb57
bb56:
  %t295 = call ptr @__olang_region_make(ptr %v2)
  %t296 = ptrtoint ptr %t295 to i64
  store i64 %t296, ptr %l84, !tbaa !24
  br label %bb57
bb57:
  %t297 = load i64, ptr %l84
  %t298 = inttoptr i64 %t297 to ptr
  %t299 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t298, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t299, ptr %l86
  br label %bb58
bb58:
  %t300 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e16
  br i1 %t300, label %bb59, label %bb60
bb59:
  %t302 = load i64, ptr %l84
  %t303 = inttoptr i64 %t302 to ptr
  %t304 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t305 = load { i64, ptr }, ptr %t304
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = call ptr @__olang_region_or(ptr %t306, ptr null)
  %t308 = call ptr @__olang_region_home(ptr %t307)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr null
  %t311 = icmp eq ptr %t310, %t303
  call void @__olang_region_settle(ptr %t303, i1 %t311)
  br label %bb60
bb60:
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %l18
  %t313 = ptrtoint ptr %v2 to i64
  store i64 %t313, ptr %l88, !tbaa !24
  %t314 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e17
  br i1 %t314, label %bb61, label %bb62
bb61:
  %t316 = call ptr @__olang_region_make(ptr %v2)
  %t317 = ptrtoint ptr %t316 to i64
  store i64 %t317, ptr %l88, !tbaa !24
  br label %bb62
bb62:
  %t318 = load i64, ptr %l88
  %t319 = inttoptr i64 %t318 to ptr
  %t320 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t319, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %l90
  br label %bb63
bb63:
  %t321 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e17
  br i1 %t321, label %bb64, label %bb65
bb64:
  %t323 = load i64, ptr %l88
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t326 = load { i64, ptr }, ptr %t325
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = call ptr @__olang_region_or(ptr %t327, ptr null)
  %t329 = call ptr @__olang_region_home(ptr %t328)
  %t330 = icmp ne ptr %t329, null
  %t331 = select i1 %t330, ptr %t329, ptr null
  %t332 = icmp eq ptr %t331, %t324
  call void @__olang_region_settle(ptr %t324, i1 %t332)
  br label %bb65
bb65:
  %t333 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t333, ptr %l19
  store i64 0, ptr %l20, !tbaa !24
  %t334 = ptrtoint ptr %v2 to i64
  store i64 %t334, ptr %l92, !tbaa !24
  %t335 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e19
  br i1 %t335, label %bb66, label %bb67
bb66:
  %t337 = call ptr @__olang_region_make(ptr %v2)
  %t338 = ptrtoint ptr %t337 to i64
  store i64 %t338, ptr %l92, !tbaa !24
  br label %bb67
bb67:
  %t339 = load i64, ptr %l92
  %t340 = inttoptr i64 %t339 to ptr
  %t341 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t340, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t341, ptr %l94
  br label %bb68
bb68:
  %t342 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e19
  br i1 %t342, label %bb69, label %bb70
bb69:
  %t344 = load i64, ptr %l92
  %t345 = inttoptr i64 %t344 to ptr
  %t346 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94, i32 0, i32 0
  %t347 = load { i64, ptr }, ptr %t346
  %t348 = extractvalue { i64, ptr } %t347, 1
  %t349 = call ptr @__olang_region_or(ptr %t348, ptr null)
  %t350 = call ptr @__olang_region_home(ptr %t349)
  %t351 = icmp ne ptr %t350, null
  %t352 = select i1 %t351, ptr %t350, ptr null
  %t353 = icmp eq ptr %t352, %t345
  call void @__olang_region_settle(ptr %t345, i1 %t353)
  br label %bb70
bb70:
  %t354 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t354, ptr %l21
  %t355 = ptrtoint ptr %v2 to i64
  store i64 %t355, ptr %l96, !tbaa !24
  %t356 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e20
  br i1 %t356, label %bb71, label %bb72
bb71:
  %t358 = call ptr @__olang_region_make(ptr %v2)
  %t359 = ptrtoint ptr %t358 to i64
  store i64 %t359, ptr %l96, !tbaa !24
  br label %bb72
bb72:
  %t360 = load i64, ptr %l96
  %t361 = inttoptr i64 %t360 to ptr
  %t362 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t361, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %l98
  br label %bb73
bb73:
  %t363 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e20
  br i1 %t363, label %bb74, label %bb75
bb74:
  %t365 = load i64, ptr %l96
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98, i32 0, i32 0
  %t368 = load { i64, ptr }, ptr %t367
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = call ptr @__olang_region_or(ptr %t369, ptr null)
  %t371 = call ptr @__olang_region_home(ptr %t370)
  %t372 = icmp ne ptr %t371, null
  %t373 = select i1 %t372, ptr %t371, ptr null
  %t374 = icmp eq ptr %t373, %t366
  call void @__olang_region_settle(ptr %t366, i1 %t374)
  br label %bb75
bb75:
  %t375 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %l22
  store ptr null, ptr %l23, !tbaa !29
  store i64 -1, ptr %l24, !tbaa !24
  store i1 false, ptr %l25, !tbaa !21
  store i1 false, ptr %l26, !tbaa !21
  store i1 false, ptr %l27, !tbaa !21
  store i1 false, ptr %l28, !tbaa !21
  %t376 = ptrtoint ptr %v2 to i64
  store i64 %t376, ptr %l100, !tbaa !24
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e27
  br i1 %t377, label %bb76, label %bb77
bb76:
  %t379 = call ptr @__olang_region_make(ptr %v2)
  %t380 = ptrtoint ptr %t379 to i64
  store i64 %t380, ptr %l100, !tbaa !24
  br label %bb77
bb77:
  %t381 = load i64, ptr %l100
  %t382 = inttoptr i64 %t381 to ptr
  %t383 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t382, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l102
  br label %bb78
bb78:
  %t384 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e27
  br i1 %t384, label %bb79, label %bb80
bb79:
  %t386 = load i64, ptr %l100
  %t387 = inttoptr i64 %t386 to ptr
  %t388 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102, i32 0, i32 0
  %t389 = load { i64, ptr }, ptr %t388
  %t390 = extractvalue { i64, ptr } %t389, 1
  %t391 = call ptr @__olang_region_or(ptr %t390, ptr null)
  %t392 = call ptr @__olang_region_home(ptr %t391)
  %t393 = icmp ne ptr %t392, null
  %t394 = select i1 %t393, ptr %t392, ptr null
  %t395 = icmp eq ptr %t394, %t387
  call void @__olang_region_settle(ptr %t387, i1 %t395)
  br label %bb80
bb80:
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l29
  %t397 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %l104
  br label %bb81
bb81:
  %t398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %l30
  %t399 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t399, ptr %l105
  br label %bb82
bb82:
  %t400 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t400, ptr %l31
  %t401 = ptrtoint ptr %v2 to i64
  store i64 %t401, ptr %l106, !tbaa !24
  %t402 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e30
  br i1 %t402, label %bb83, label %bb84
bb83:
  %t404 = call ptr @__olang_region_make(ptr %v2)
  %t405 = ptrtoint ptr %t404 to i64
  store i64 %t405, ptr %l106, !tbaa !24
  br label %bb84
bb84:
  %t406 = load i64, ptr %l106
  %t407 = inttoptr i64 %t406 to ptr
  %t408 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t407)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t408, ptr %l108
  br label %bb85
bb85:
  %t409 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e30
  br i1 %t409, label %bb86, label %bb87
bb86:
  %t411 = load i64, ptr %l106
  %t412 = inttoptr i64 %t411 to ptr
  %t413 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108, i32 0, i32 2
  %t414 = load { i64, ptr }, ptr %t413
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = call ptr @__olang_region_or(ptr %t415, ptr null)
  %t417 = call ptr @__olang_region_home(ptr %t416)
  %t418 = icmp ne ptr %t417, null
  %t419 = select i1 %t418, ptr %t417, ptr null
  %t420 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108, i32 0, i32 1
  %t421 = load { i64, ptr }, ptr %t420
  %t422 = extractvalue { i64, ptr } %t421, 1
  %t423 = call ptr @__olang_region_or(ptr %t422, ptr null)
  %t424 = call ptr @__olang_region_home(ptr %t423)
  %t425 = icmp ne ptr %t424, null
  %t426 = select i1 %t425, ptr %t424, ptr %t419
  %t427 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108, i32 0, i32 0
  %t428 = load { i64, ptr }, ptr %t427
  %t429 = extractvalue { i64, ptr } %t428, 1
  %t430 = call ptr @__olang_region_or(ptr %t429, ptr null)
  %t431 = call ptr @__olang_region_home(ptr %t430)
  %t432 = icmp ne ptr %t431, null
  %t433 = select i1 %t432, ptr %t431, ptr %t426
  %t434 = icmp eq ptr %t433, %t412
  call void @__olang_region_settle(ptr %t412, i1 %t434)
  br label %bb87
bb87:
  %t435 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t435, ptr %l32
  %t436 = ptrtoint ptr %v2 to i64
  store i64 %t436, ptr %l110, !tbaa !24
  %t437 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e31
  br i1 %t437, label %bb88, label %bb89
bb88:
  %t439 = call ptr @__olang_region_make(ptr %v2)
  %t440 = ptrtoint ptr %t439 to i64
  store i64 %t440, ptr %l110, !tbaa !24
  br label %bb89
bb89:
  %t441 = load i64, ptr %l110
  %t442 = inttoptr i64 %t441 to ptr
  %t443 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t442)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t443, ptr %l112
  br label %bb90
bb90:
  %t444 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e31
  br i1 %t444, label %bb91, label %bb92
bb91:
  %t446 = load i64, ptr %l110
  %t447 = inttoptr i64 %t446 to ptr
  %t448 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 2
  %t449 = load { i64, ptr }, ptr %t448
  %t450 = extractvalue { i64, ptr } %t449, 1
  %t451 = call ptr @__olang_region_or(ptr %t450, ptr null)
  %t452 = call ptr @__olang_region_home(ptr %t451)
  %t453 = icmp ne ptr %t452, null
  %t454 = select i1 %t453, ptr %t452, ptr null
  %t455 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 1
  %t456 = load { i64, ptr }, ptr %t455
  %t457 = extractvalue { i64, ptr } %t456, 1
  %t458 = call ptr @__olang_region_or(ptr %t457, ptr null)
  %t459 = call ptr @__olang_region_home(ptr %t458)
  %t460 = icmp ne ptr %t459, null
  %t461 = select i1 %t460, ptr %t459, ptr %t454
  %t462 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 0
  %t463 = load { i64, ptr }, ptr %t462
  %t464 = extractvalue { i64, ptr } %t463, 1
  %t465 = call ptr @__olang_region_or(ptr %t464, ptr null)
  %t466 = call ptr @__olang_region_home(ptr %t465)
  %t467 = icmp ne ptr %t466, null
  %t468 = select i1 %t467, ptr %t466, ptr %t461
  %t469 = icmp eq ptr %t468, %t447
  call void @__olang_region_settle(ptr %t447, i1 %t469)
  br label %bb92
bb92:
  %t470 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t470, ptr %l33
  %t471 = ptrtoint ptr %v2 to i64
  store i64 %t471, ptr %l114, !tbaa !24
  %t472 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e32
  br i1 %t472, label %bb93, label %bb94
bb93:
  %t474 = call ptr @__olang_region_make(ptr %v2)
  %t475 = ptrtoint ptr %t474 to i64
  store i64 %t475, ptr %l114, !tbaa !24
  br label %bb94
bb94:
  %t476 = load i64, ptr %l114
  %t477 = inttoptr i64 %t476 to ptr
  %t478 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t477)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t478, ptr %l116
  br label %bb95
bb95:
  %t479 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e32
  br i1 %t479, label %bb96, label %bb97
bb96:
  %t481 = load i64, ptr %l114
  %t482 = inttoptr i64 %t481 to ptr
  %t483 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116, i32 0, i32 2
  %t484 = load { i64, ptr }, ptr %t483
  %t485 = extractvalue { i64, ptr } %t484, 1
  %t486 = call ptr @__olang_region_or(ptr %t485, ptr null)
  %t487 = call ptr @__olang_region_home(ptr %t486)
  %t488 = icmp ne ptr %t487, null
  %t489 = select i1 %t488, ptr %t487, ptr null
  %t490 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116, i32 0, i32 1
  %t491 = load { i64, ptr }, ptr %t490
  %t492 = extractvalue { i64, ptr } %t491, 1
  %t493 = call ptr @__olang_region_or(ptr %t492, ptr null)
  %t494 = call ptr @__olang_region_home(ptr %t493)
  %t495 = icmp ne ptr %t494, null
  %t496 = select i1 %t495, ptr %t494, ptr %t489
  %t497 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116, i32 0, i32 0
  %t498 = load { i64, ptr }, ptr %t497
  %t499 = extractvalue { i64, ptr } %t498, 1
  %t500 = call ptr @__olang_region_or(ptr %t499, ptr null)
  %t501 = call ptr @__olang_region_home(ptr %t500)
  %t502 = icmp ne ptr %t501, null
  %t503 = select i1 %t502, ptr %t501, ptr %t496
  %t504 = icmp eq ptr %t503, %t482
  call void @__olang_region_settle(ptr %t482, i1 %t504)
  br label %bb97
bb97:
  %t505 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t505, ptr %l34
  %t506 = ptrtoint ptr %v2 to i64
  store i64 %t506, ptr %l118, !tbaa !24
  %t507 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e33
  br i1 %t507, label %bb98, label %bb99
bb98:
  %t509 = call ptr @__olang_region_make(ptr %v2)
  %t510 = ptrtoint ptr %t509 to i64
  store i64 %t510, ptr %l118, !tbaa !24
  br label %bb99
bb99:
  %t511 = load i64, ptr %l118
  %t512 = inttoptr i64 %t511 to ptr
  %t513 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t512)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t513, ptr %l120
  br label %bb100
bb100:
  %t514 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e33
  br i1 %t514, label %bb101, label %bb102
bb101:
  %t516 = load i64, ptr %l118
  %t517 = inttoptr i64 %t516 to ptr
  %t518 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 2
  %t519 = load { i64, ptr }, ptr %t518
  %t520 = extractvalue { i64, ptr } %t519, 1
  %t521 = call ptr @__olang_region_or(ptr %t520, ptr null)
  %t522 = call ptr @__olang_region_home(ptr %t521)
  %t523 = icmp ne ptr %t522, null
  %t524 = select i1 %t523, ptr %t522, ptr null
  %t525 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 1
  %t526 = load { i64, ptr }, ptr %t525
  %t527 = extractvalue { i64, ptr } %t526, 1
  %t528 = call ptr @__olang_region_or(ptr %t527, ptr null)
  %t529 = call ptr @__olang_region_home(ptr %t528)
  %t530 = icmp ne ptr %t529, null
  %t531 = select i1 %t530, ptr %t529, ptr %t524
  %t532 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 0
  %t533 = load { i64, ptr }, ptr %t532
  %t534 = extractvalue { i64, ptr } %t533, 1
  %t535 = call ptr @__olang_region_or(ptr %t534, ptr null)
  %t536 = call ptr @__olang_region_home(ptr %t535)
  %t537 = icmp ne ptr %t536, null
  %t538 = select i1 %t537, ptr %t536, ptr %t531
  %t539 = icmp eq ptr %t538, %t517
  call void @__olang_region_settle(ptr %t517, i1 %t539)
  br label %bb102
bb102:
  %t540 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t540, ptr %l35
  %t541 = ptrtoint ptr %v2 to i64
  store i64 %t541, ptr %l122, !tbaa !24
  %t542 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e34
  br i1 %t542, label %bb103, label %bb104
bb103:
  %t544 = call ptr @__olang_region_make(ptr %v2)
  %t545 = ptrtoint ptr %t544 to i64
  store i64 %t545, ptr %l122, !tbaa !24
  br label %bb104
bb104:
  %t546 = icmp sge i64 0, 0
  br i1 %t546, label %bb105, label %bb106
bb105:
  %t548 = icmp sle i64 0, 576460752303423487
  br i1 %t548, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_4980cc85129191e9_6dc8fef61f0a6fb5)
  unreachable
bb107:
  %t550 = mul i64 0, 16
  %t551 = load i64, ptr %l122
  %t552 = inttoptr i64 %t551 to ptr
  %t553 = insertvalue { i64, ptr } undef, i64 0, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t556 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 0
  %t557 = load ptr, ptr %l2, !tbaa !29
  store ptr %t557, ptr %t556, !tbaa !29
  %t558 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 1
  %t559 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t559, ptr %t558
  %t560 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 2
  %t561 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t561, ptr %t560
  %t562 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 3
  %t563 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t563, ptr %t562
  %t564 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 4
  %t565 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t565, ptr %t564
  %t566 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 5
  %t567 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t567, ptr %t566
  %t568 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 6
  %t569 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t569, ptr %t568
  %t570 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 7
  %t571 = load i64, ptr %l9, !tbaa !24
  store i64 %t571, ptr %t570, !tbaa !24
  %t572 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 8
  %t573 = load i64, ptr %l10, !tbaa !24
  store i64 %t573, ptr %t572, !tbaa !24
  %t574 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 9
  %t575 = load i64, ptr %l11, !tbaa !24
  store i64 %t575, ptr %t574, !tbaa !24
  %t576 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 10
  %t577 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t577, ptr %t576
  %t578 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 11
  %t579 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t579, ptr %t578
  %t580 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 12
  %t581 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t581, ptr %t580
  %t582 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 13
  %t583 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t583, ptr %t582
  %t584 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 14
  %t585 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t585, ptr %t584
  %t586 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 15
  %t587 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t587, ptr %t586
  %t588 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 16
  %t589 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t589, ptr %t588
  %t590 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 17
  %t591 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t591, ptr %t590
  %t592 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 18
  %t593 = load i64, ptr %l20, !tbaa !24
  store i64 %t593, ptr %t592, !tbaa !24
  %t594 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 19
  %t595 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t595, ptr %t594
  %t596 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 20
  %t597 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t597, ptr %t596
  %t598 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 21
  %t599 = load ptr, ptr %l23, !tbaa !29
  store ptr %t599, ptr %t598, !tbaa !29
  %t600 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 22
  %t601 = load i64, ptr %l24, !tbaa !24
  store i64 %t601, ptr %t600, !tbaa !24
  %t602 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 23
  %t603 = load i1, ptr %l25, !tbaa !21
  store i1 %t603, ptr %t602, !tbaa !21
  %t604 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 24
  %t605 = load i1, ptr %l26, !tbaa !21
  store i1 %t605, ptr %t604, !tbaa !21
  %t606 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 25
  %t607 = load i1, ptr %l27, !tbaa !21
  store i1 %t607, ptr %t606, !tbaa !21
  %t608 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 26
  %t609 = load i1, ptr %l28, !tbaa !21
  store i1 %t609, ptr %t608, !tbaa !21
  %t610 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 27
  %t611 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t611, ptr %t610
  %t612 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 28
  %t613 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t613, ptr %t612
  %t614 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 29
  %t615 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t615, ptr %t614
  %t616 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 30
  %t617 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t617, ptr %t616
  %t618 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 31
  %t619 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t619, ptr %t618
  %t620 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 32
  %t621 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t621, ptr %t620
  %t622 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 33
  %t623 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t623, ptr %t622
  %t624 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 34
  store { i64, ptr } %t554, ptr %t624, !tbaa !27
  %t626 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 35
  store i1 false, ptr %t626, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l127, i64 1144, i1 false)
  br label %ret
bb108:
  call void @__olang_check_failed(ptr @olang_loc_4980cc85129191e9_6dc8fef61f0a6fb5)
  unreachable
ret:
  ret void
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

define dso_local %"compiler/views:naming" @compiler_2fviews_3anaming_2ector(ptr %v0, i64 %a0, %"compiler/views:place" %a1) #0 {
entry:
  %rv = alloca %"compiler/views:naming"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/views:naming" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/views:naming" %t6, %"compiler/views:place" %a1, 1
  store %"compiler/views:naming" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:naming", ptr %rv
  ret %"compiler/views:naming" %rr
}

define dso_local void @compiler_2fviews_3asummary_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"compiler/views:summary"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l5, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l5
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l7
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l5
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l9, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e1
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l9
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l11
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l9
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = call ptr @__olang_region_home(ptr %t37)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l1
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l13, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e2
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l13
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l15
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e2
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l13
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = call ptr @__olang_region_home(ptr %t58)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr null
  %t62 = icmp eq ptr %t61, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t62)
  br label %bb15
bb15:
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l2
  %t64 = ptrtoint ptr %v0 to i64
  store i64 %t64, ptr %l17, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e3
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = call ptr @__olang_region_make(ptr %v0)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l17, !tbaa !24
  br label %bb17
bb17:
  %t69 = load i64, ptr %l17
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t70, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l19
  br label %bb18
bb18:
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e3
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load i64, ptr %l17
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = call ptr @__olang_region_home(ptr %t79)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = icmp eq ptr %t82, %t75
  call void @__olang_region_settle(ptr %t75, i1 %t83)
  br label %bb20
bb20:
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t85 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 0
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %t85
  %t87 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 1
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %t87
  %t89 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 2
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t89
  %t91 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %t91
  %t93 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 4
  store i1 false, ptr %t93, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l21, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/views:tasked" @compiler_2fviews_3atasked_2ector(ptr %v0, %"compiler/views:view" %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %rv = alloca %"compiler/views:tasked"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/views:tasked" undef, %"compiler/views:view" %a0, 0
  %t8 = insertvalue %"compiler/views:tasked" %t6, %"compiler/source:Span" %a1, 1
  store %"compiler/views:tasked" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:tasked", ptr %rv
  ret %"compiler/views:tasked" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
define linkonce_odr %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/views:Cand"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/views:Cand"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/views:Cand", ptr %a0
  store %"compiler/views:Cand" %t2, ptr %l1
  %t3 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/views:Cand", ptr %l1
  store %"compiler/views:Cand" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:Cand", ptr %rv
  ret %"compiler/views:Cand" %rr
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_2c_20std_2_H62bf8b359c1a6c7c950c3ca9da6c6a3a = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e_2ector(ptr %v0)
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

@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
define internal i1 @olang_lambda_9(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Vec" }>, align 8
@.d12 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/vec" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Map" }>, align 8
@.d15 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ents" }>, align 8
@.d17 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ColumnVec" }>, align 8
@.d18 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/columns" }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 104
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 104
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

@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
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

@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d23 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a call through a function value" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d26 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a lambda" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"p" }>, align 8
@.d33 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"known" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d37 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"grows" }>, align 8
@.d38 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"views" }>, align 8
@.d39 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"keeps" }>, align 8
@olang_2esole_2ecompiler_2fviews_3astate_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_drop(ptr) noinline
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

@olang_2esole_2ecompiler_2fviews_3aCand_2e1 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fviews_3aCand_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aCand_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aKept_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aKept_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H598d4018a729aa7c2aa1315e906ea840(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fviews_3aKept_2e5 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fviews_3aKept_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aKept_2e7 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hd6e1819e1818d88f4447e4f021a92af5(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fviews_3aViewer_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e4 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fviews_3aViewer_2e5 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fviews_3aViewer_2e6 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fviews_3aViewer_2e10 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fviews_3aViewer_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e30 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e31 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e32 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e33 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3aViewer_2e34 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2ecompiler_2fviews_3asummary_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3asummary_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3asummary_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fviews_3asummary_2e3 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 16
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 16
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

@olang_loc_a5e6daec8976db0_405389cf00db76ac = external constant [0 x i8]
declare void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecallsPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_293c6ab0a5c406c2_e9cd55f098635cb6 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eLen_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %a0)
declare %"compiler/views:Cand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eAt_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_5e5efcf403984e55_303b2c2551632479 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_Hdbddd02cd2a4e500be7fb1cacf89c9ab(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
@olang_loc_70046d00f197c345_2c505527320b9459 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebodyKey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H3f302293c6f4c07a80dfb5e30c1500bf(ptr %v0, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaryText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i64 @compiler_2fviews_2eplaceEnd(ptr %v0, ptr %a0)
declare i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eskipSpace(ptr %v0, ptr %a0, i64 %a1)
declare i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enameFrom(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebind(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4, ptr %a5)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f56dc5f524947092_cf97541144f04b56 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hcddb8d7004bc9cdff185b89d31641a08(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H5cdbeb94ae0c6e2e33fc44df03720816(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0)
declare %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %v0, { i64, [2 x i64] } %a0, i64 %a1, i64 %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, %"compiler/views:place" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0)
declare %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %a0, %"compiler/views:place" %a1, i64 %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesPure(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0)
declare %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrow(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:place" %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4, %"compiler/source:Span" %a5, ptr %a6)
declare void @compiler_2fviews_2eviewAdd(ptr %v0, ptr %a0, %"compiler/views:view" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %v0, %"compiler/views:place" %a0, i64 %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d33365757296ff0a_65568c4e441bc04e = external constant [0 x i8]
declare void @compiler_2fviews_2eplaceAdd(ptr %v0, ptr %a0, %"compiler/views:place" %a1)
declare i64 @compiler_2fviews_2eexprEnd(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_38f43db71f48b164_beb7f8d1a31792c8 = external constant [0 x i8]
declare void @compiler_2fviews_2emerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2evisit(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:place" %a1)
declare { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fviews_2ecopyHint(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecViewGivenGrowing(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecGrowsInside(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2eholdAdd(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:view" %a2)
declare ptr @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erootPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplacePlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_a9709b8d7599af1c_938b49c1f1943728 = external constant [0 x i8]
@olang_loc_5a02dfa0eab0974d_8c564576f095f5f9 = external constant [0 x i8]
@olang_loc_d83b4460c5b9ac6f_e5ae66818951545b = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ePush_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0, %"compiler/views:fact" %a1)
declare %"compiler/views:loopFrame" @compiler_2fviews_3aloopFrame_2ector(ptr %v0, i32 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H473e76678ba49e15aac3621516ab9c7a(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H1e03e4f3e9fd2c184a7d157dcdc4524e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H778376aca07487ba188a916552f34a0e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eClear_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eLen_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2eAt_3ccompiler_2fviews_3astate_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fviews_2eweight(ptr %v0, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26__H2424d6cf963333801588b77238bf827f(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2d854533e388acf3_9bd384635a298ef = external constant [0 x i8]
declare i1 @compiler_2fviews_2ereal({ i64, [2 x i64] } %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, ptr %a3, ptr %a4)
@olang_loc_2a4a8b72a379b770_7cdc66c7220ef344 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_52eb4a404ee8e2f2_daf885f9c5247eae = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i32, i64 } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_5517ec302ba00347_a7bc83f18394e19b = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eToVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewalkable(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ea123554da78e931_2795c92c247c1c25 = external constant [0 x i8]
@olang_loc_8aef76ae2a822f83_6536a40cc5df6d07 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3astate_3e_2ePush_3ccompiler_2fviews_3astate_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ehandOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eTruncate_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2espawn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
@olang_loc_1e57e3539652abf4_8f970453f904e310 = external constant [0 x i8]
declare void @compiler_2fviews_3astate_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eClear_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0)
declare %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, %"compiler/views:holding" %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2eunname(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c6dbc1b994c66c62_e0c1acfc7721040e = external constant [0 x i8]
@olang_loc_197575046d4aa70e_5d31601693404fa2 = external constant [0 x i8]
@olang_loc_4a9384f18580d74f_109b6d942d9c70a3 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_4980cc85129191e9_6dc8fef61f0a6fb5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_3e_2ector(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e_2ector(ptr %v0)

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
