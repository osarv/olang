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
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/views:Viewer" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/views:place" = type { { i64, [2 x i64] }, i64, i64, i1 }
%"compiler/views:state" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:holding" = type { i64, %"compiler/views:view" }
%"compiler/views:view" = type { %"compiler/views:place", i64, i1, %"compiler/source:Span", i64, i64, %"compiler/source:Span", i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/views:fact" = type { i64, i64, i32, i64, i64, i1, i64, %"compiler/source:Span", i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/views:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/views:tasked" = type { %"compiler/views:view", %"compiler/source:Span" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:naming" = type { i64, %"compiler/views:place" }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/views:Cand" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
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
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t76, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
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
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
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
  %t162 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_3, 0
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
  %t153 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t151, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) })
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
  %l13 = alloca %"compiler/views:view"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/views:place"
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l56 = alloca %"compiler/views:holding"
  %l59 = alloca i1
  %l68 = alloca %"compiler/views:place"
  %l70 = alloca ptr
  %l71 = alloca i64
  %l74 = alloca %"compiler/views:holding"
  %l82 = alloca i1
  %l83 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca i1
  %l87 = alloca i1
  %l90 = alloca ptr
  %l99 = alloca %"compiler/typed:Local"
  %l101 = alloca i1
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca i64
  %l111 = alloca i64
  %l116 = alloca %"compiler/views:place"
  %l119 = alloca i1
  %l126 = alloca i64
  %l128 = alloca i1
  %l132 = alloca i64
  %l134 = alloca i64
  %l139 = alloca %"compiler/views:place"
  %l148 = alloca ptr
  %l157 = alloca %"compiler/typed:Local"
  %l159 = alloca i1
  %l162 = alloca i64
  %l164 = alloca i64
  %l169 = alloca %"compiler/views:view"
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t86 = alloca { i64, [2 x i64] }, align 8
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
  store i64 %t7, ptr %l28
  br label %bb3
bb2:
  br label %bb76
bb3:
  %t8 = load i64, ptr %l28, !tbaa !24
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
  store i64 0, ptr %l32, !tbaa !24
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
  store i64 %t33, ptr %l35, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l35, !tbaa !24
  store i64 %t35, ptr %l32, !tbaa !24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l32, !tbaa !24
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
  store %"compiler/views:holding" %t61, ptr %l56
  br label %bb14
bb14:
  %t62 = load %"compiler/views:holding", ptr %l56
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
  store i1 %t80, ptr %l59, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb17
bb17:
  %t82 = load i1, ptr %l59, !tbaa !21
  br i1 %t82, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t83 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 1
  %t84 = load %"compiler/views:view", ptr %t83
  store %"compiler/views:view" %t84, ptr %l13
  store { i64, [2 x i64] } zeroinitializer, ptr %t86
  %t87 = getelementptr { i64, [2 x i64] }, ptr %t86, i32 0, i32 0
  store i64 0, ptr %t87
  %t88 = load { i64, [2 x i64] }, ptr %t86
  %t89 = getelementptr %"compiler/views:view", ptr %l13, i32 0, i32 0
  %t90 = getelementptr %"compiler/views:place", ptr %t89, i32 0, i32 1
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = getelementptr %"compiler/views:view", ptr %l13, i32 0, i32 0
  %t93 = getelementptr %"compiler/views:place", ptr %t92, i32 0, i32 2
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = getelementptr %"compiler/views:view", ptr %l13, i32 0, i32 0
  %t96 = getelementptr %"compiler/views:place", ptr %t95, i32 0, i32 3
  %t97 = load i1, ptr %t96, !tbaa !21
  %t102 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s4, { i64, [2 x i64] } %t88, i64 %t91, i64 %t94, i1 %t97)
  store %"compiler/views:place" %t102, ptr %l68
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t103 = load %"compiler/views:place", ptr %l68
  %t104 = getelementptr %"compiler/views:view", ptr %l13, i32 0, i32 0
  store %"compiler/views:place" %t103, ptr %t104
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t107 = getelementptr %"compiler/views:state", ptr %t105, i32 0, i32 1
  store ptr %t107, ptr %l70, !tbaa !29
  %t108 = load i64, ptr %l11, !tbaa !24
  store i64 %t108, ptr %l71, !tbaa !24
  %t109 = getelementptr %"compiler/views:holding", ptr %l12, i32 0, i32 0
  %t110 = load i64, ptr %t109, !tbaa !24
  %t111 = load %"compiler/views:view", ptr %l13
  %t114 = call %"compiler/views:holding" @compiler_2fviews_3aholding_2ector(ptr %s4, i64 %t110, %"compiler/views:view" %t111)
  store %"compiler/views:holding" %t114, ptr %l74
  br label %bb21
bb21:
  %t115 = load ptr, ptr %l70, !tbaa !29
  %t116 = load i64, ptr %l71, !tbaa !24
  %t117 = load %"compiler/views:holding", ptr %l74
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v3, ptr %t115, i64 %t116, %"compiler/views:holding" %t117)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t118 = load i64, ptr %l10, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l10, !tbaa !24
  br label %bb10
bb25:
  %t122 = load ptr, ptr %l5, !tbaa !29
  %t123 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eforget(ptr %v3, ptr %t122, i64 %t123)
  br label %bb26
bb26:
  %t126 = load ptr, ptr %l2, !tbaa !29
  %t128 = icmp eq ptr %t126, null
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb27, label %bb28
bb27:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l83, !tbaa !29
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t135 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t133)
  store i32 %t135, ptr %l85
  br label %bb29
bb28:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb31
bb29:
  %t136 = load ptr, ptr %l83, !tbaa !29
  %t137 = load i32, ptr %l85, !tbaa !23
  %t138 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %t136, i32 %t137)
  store i1 %t138, ptr %l86
  br label %bb30
bb30:
  %t139 = load i1, ptr %l86, !tbaa !21
  store i1 %t139, ptr %l82, !tbaa !21
  br label %bb31
bb31:
  %t140 = load i1, ptr %l82, !tbaa !21
  br i1 %t140, label %bb32, label %bb33
bb32:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/views:Viewer", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  store ptr %t146, ptr %l90, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/views:Viewer", ptr %t147, i32 0, i32 21
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = icmp eq ptr %t150, null
  br i1 %t152, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb39
bb34:
  call void @__olang_check_failed(ptr @olang_loc_7ef79401c16fe1d4_255ec247f03840e8)
  unreachable
bb35:
  br label %bb36
bb36:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/views:Viewer", ptr %t154, i32 0, i32 21
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Body", ptr %t157, i32 0, i32 7
  %t161 = load i64, ptr %l1, !tbaa !24
  %t164 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t160, i64 %t161)
  store %"compiler/typed:Local" %t164, ptr %l99
  br label %bb37
bb37:
  %t165 = getelementptr %"compiler/typed:Local", ptr %l99, i32 0, i32 2
  %t166 = load i32, ptr %t165, !tbaa !23
  %t167 = load ptr, ptr %l90, !tbaa !29
  %t169 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t167, i32 %t166)
  store i1 %t169, ptr %l101
  br label %bb38
bb38:
  %t170 = load i1, ptr %l101, !tbaa !21
  store i1 %t170, ptr %l87, !tbaa !21
  br label %bb39
bb39:
  %t171 = load i1, ptr %l87, !tbaa !21
  br i1 %t171, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t172 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s6, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %l102
  br label %bb42
bb41:
  br label %bb75
bb42:
  %t173 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t173, ptr %l14
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l2, !tbaa !29
  %t177 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v3, ptr %s6, ptr %t174, ptr %t175, ptr %t177, ptr %l14)
  br label %bb43
bb43:
  store i1 false, ptr %l15, !tbaa !21
  store ptr %l14, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb44
bb44:
  %t183 = load i64, ptr %l17, !tbaa !24
  store i64 %t183, ptr %l109, !tbaa !24
  %t184 = load ptr, ptr %l16, !tbaa !29
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t184)
  store i64 %t186, ptr %l111
  br label %bb45
bb45:
  %t187 = load i64, ptr %l109, !tbaa !24
  %t188 = load i64, ptr %l111, !tbaa !24
  %t189 = icmp slt i64 %t187, %t188
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb46, label %bb47
bb46:
  br label %bb57
bb47:
  br label %bb48
bb48:
  %t193 = load ptr, ptr %l16, !tbaa !29
  %t194 = load i64, ptr %l17, !tbaa !24
  %t197 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t193, i64 %t194)
  store %"compiler/views:place" %t197, ptr %l116
  br label %bb49
bb49:
  %t198 = load %"compiler/views:place", ptr %l116
  store %"compiler/views:place" %t198, ptr %l18
  %t199 = getelementptr %"compiler/views:place", ptr %l18, i32 0, i32 0
  %t200 = load { i64, [2 x i64] }, ptr %t199
  %t202 = extractvalue { i64, [2 x i64] } %t200, 0
  %t203 = icmp eq i64 %t202, 1
  br i1 %t203, label %bb50, label %bb51
bb50:
  %t205 = getelementptr %"compiler/views:place", ptr %l18, i32 0, i32 0
  %t206 = getelementptr { i64, [2 x i64] }, ptr %t205, i32 0, i32 1
  %t207 = getelementptr { i64 }, ptr %t206, i32 0, i32 0
  %t208 = load i64, ptr %t207
  %t209 = load i64, ptr %l1, !tbaa !24
  %t212 = icmp eq i64 %t208, %t209
  store i1 %t212, ptr %l119, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb52
bb52:
  %t214 = load i1, ptr %l119, !tbaa !21
  br i1 %t214, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb55
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t215 = load i64, ptr %l17, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l17, !tbaa !24
  br label %bb44
bb57:
  %t220 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %l14)
  store i64 %t220, ptr %l126
  br label %bb58
bb58:
  %t221 = load i64, ptr %l126, !tbaa !24
  %t222 = icmp sgt i64 %t221, 0
  br i1 %t222, label %bb59, label %bb60
bb59:
  %t224 = load i1, ptr %l15, !tbaa !21
  %t226 = xor i1 %t224, true
  store i1 %t226, ptr %l128, !tbaa !21
  br label %bb61
bb60:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb61
bb61:
  %t228 = load i1, ptr %l128, !tbaa !21
  br i1 %t228, label %bb62, label %bb63
bb62:
  store ptr %l14, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb64
bb63:
  br label %bb74
bb64:
  %t230 = load i64, ptr %l20, !tbaa !24
  store i64 %t230, ptr %l132, !tbaa !24
  %t231 = load ptr, ptr %l19, !tbaa !29
  %t233 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t231)
  store i64 %t233, ptr %l134
  br label %bb65
bb65:
  %t234 = load i64, ptr %l132, !tbaa !24
  %t235 = load i64, ptr %l134, !tbaa !24
  %t236 = icmp slt i64 %t234, %t235
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb66, label %bb67
bb66:
  br label %bb72
bb67:
  br label %bb68
bb68:
  %t240 = load ptr, ptr %l19, !tbaa !29
  %t241 = load i64, ptr %l20, !tbaa !24
  %t244 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s6, ptr %t240, i64 %t241)
  store %"compiler/views:place" %t244, ptr %l139
  br label %bb69
bb69:
  %t245 = load %"compiler/views:place", ptr %l139
  %t246 = load ptr, ptr %l5, !tbaa !29
  %t247 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fviews_2enameAdd(ptr %v3, ptr %t246, i64 %t247, %"compiler/views:place" %t245)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t252 = load i64, ptr %l20, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l20, !tbaa !24
  br label %bb64
bb72:
  %t256 = load ptr, ptr %l5, !tbaa !29
  %t258 = getelementptr %"compiler/views:state", ptr %t256, i32 0, i32 3
  %t259 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v3, ptr %t258, i64 %t259)
  br label %bb73
bb73:
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s6)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l148, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/views:Viewer", ptr %t263, i32 0, i32 21
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = icmp eq ptr %t266, null
  br i1 %t268, label %bb77, label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_f2a9606e62f672e3_f02fc5d7c09a9e07)
  unreachable
bb78:
  br label %bb79
bb79:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/views:Viewer", ptr %t270, i32 0, i32 21
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t276 = getelementptr %"compiler/typed:Body", ptr %t273, i32 0, i32 7
  %t277 = load i64, ptr %l1, !tbaa !24
  %t280 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t276, i64 %t277)
  store %"compiler/typed:Local" %t280, ptr %l157
  br label %bb80
bb80:
  %t281 = getelementptr %"compiler/typed:Local", ptr %l157, i32 0, i32 2
  %t282 = load i32, ptr %t281, !tbaa !23
  %t283 = load ptr, ptr %l148, !tbaa !29
  %t285 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t283, i32 %t282)
  store i1 %t285, ptr %l159
  br label %bb81
bb81:
  %t286 = load i1, ptr %l159, !tbaa !21
  %t287 = xor i1 %t286, true
  br i1 %t287, label %bb82, label %bb83
bb82:
  br label %ret
bb83:
  br label %bb84
bb84:
  store ptr %a3, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb85
bb85:
  %t291 = load i64, ptr %l23, !tbaa !24
  store i64 %t291, ptr %l162, !tbaa !24
  %t292 = load ptr, ptr %l22, !tbaa !29
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t292)
  store i64 %t294, ptr %l164
  br label %bb86
bb86:
  %t295 = load i64, ptr %l162, !tbaa !24
  %t296 = load i64, ptr %l164, !tbaa !24
  %t297 = icmp slt i64 %t295, %t296
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb87, label %bb88
bb87:
  br label %bb93
bb88:
  br label %bb89
bb89:
  %t301 = load ptr, ptr %l22, !tbaa !29
  %t302 = load i64, ptr %l23, !tbaa !24
  %t305 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v2, ptr %t301, i64 %t302)
  store %"compiler/views:view" %t305, ptr %l169
  br label %bb90
bb90:
  %t306 = load %"compiler/views:view", ptr %l169
  %t307 = load ptr, ptr %l5, !tbaa !29
  %t308 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fviews_2eholdAdd(ptr %v3, ptr %t307, i64 %t308, %"compiler/views:view" %t306)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t313 = load i64, ptr %l23, !tbaa !24
  %t315 = add i64 %t313, 1
  store i64 %t315, ptr %l23, !tbaa !24
  br label %bb85
bb93:
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
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
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
  %t63 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l37, !tbaa !27
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
  %t102 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l52, !tbaa !27
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
  %t132 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l63, !tbaa !27
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
  %t168 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l77, !tbaa !27
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
  %t196 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
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
  %t234 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t235 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t237 = extractvalue { i64, ptr } %t232, 1
  %t238 = extractvalue { i64, ptr } %t232, 0
  %t239 = add i64 %t235, %t238
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l100, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l102, !tbaa !27
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
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t85, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
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
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca %"compiler/views:place"
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca %"compiler/views:view"
  %l54 = alloca i64
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca i64
  %l74 = alloca %"compiler/views:fact"
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca ptr
  %l77 = alloca i64
  %l79 = alloca %"compiler/views:view"
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l87 = alloca ptr
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca ptr
  %l92 = alloca i64
  %l93 = alloca %"compiler/views:place"
  %l94 = alloca ptr
  %l95 = alloca i64
  %l96 = alloca %"compiler/views:fact"
  %l97 = alloca ptr
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca ptr
  %l102 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca i1
  %l123 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l128 = alloca i64
  %l131 = alloca i64
  %l149 = alloca ptr
  %l150 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l151 = alloca ptr
  %l153 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l157 = alloca ptr
  %l160 = alloca ptr
  %l166 = alloca %"compiler/source:Span"
  %l167 = alloca ptr
  %l170 = alloca { i64, ptr }
  %l172 = alloca i64
  %l175 = alloca i1
  %l179 = alloca ptr
  %l182 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l183 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l184 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l189 = alloca ptr
  %l192 = alloca i64
  %l194 = alloca i64
  %l199 = alloca %"compiler/views:fact"
  %l202 = alloca ptr
  %l209 = alloca %"compiler/views:place"
  %l217 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l220 = alloca { i64, ptr }
  %l227 = alloca i64
  %l229 = alloca i64
  %l234 = alloca %"compiler/views:place"
  %l235 = alloca ptr
  %l241 = alloca %"compiler/views:place"
  %l253 = alloca ptr
  %l256 = alloca ptr
  %l259 = alloca i32
  %l260 = alloca i32
  %l261 = alloca { i64, ptr }
  %l266 = alloca i64
  %l269 = alloca i64
  %l288 = alloca { i64, ptr }
  %l291 = alloca ptr
  %l293 = alloca i32
  %l294 = alloca i1
  %l300 = alloca i1
  %l304 = alloca { i64, ptr }
  %l307 = alloca i1
  %l308 = alloca i1
  %l312 = alloca { i64, ptr }
  %l315 = alloca i64
  %l319 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l326 = alloca i64
  %l328 = alloca i64
  %l333 = alloca %"compiler/views:place"
  %l334 = alloca ptr
  %l335 = alloca { i64, [2 x i64] }
  %l336 = alloca i64
  %l340 = alloca { i64, ptr }
  %l342 = alloca %"compiler/views:place"
  %l344 = alloca ptr
  %l345 = alloca %"compiler/source:Span"
  %l352 = alloca i1
  %l356 = alloca i1
  %l364 = alloca i64
  %l367 = alloca i64
  %l387 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l389 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l391 = alloca i64
  %l393 = alloca i64
  %l398 = alloca %"compiler/views:view"
  %l402 = alloca i64
  %l407 = alloca { i64, ptr }
  %l410 = alloca %"compiler/source:Span"
  %l413 = alloca i1
  %l415 = alloca ptr
  %l416 = alloca %"compiler/source:Span"
  %l417 = alloca %"compiler/views:place"
  %l418 = alloca i64
  %l419 = alloca i64
  %l421 = alloca i64
  %l424 = alloca i64
  %l427 = alloca %"compiler/source:Span"
  %l433 = alloca i64
  %l437 = alloca i64
  %l440 = alloca i64
  %l458 = alloca ptr
  %l461 = alloca %"compiler/views:place"
  %l462 = alloca %"compiler/source:Span"
  %l463 = alloca i64
  %l466 = alloca i64
  %l469 = alloca %"compiler/source:Span"
  %l474 = alloca i64
  %l476 = alloca i64
  %l481 = alloca %"compiler/views:view"
  %l486 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l491 = alloca i64
  %l494 = alloca i64
  %l519 = alloca ptr
  %l522 = alloca i64
  %l524 = alloca i64
  %l529 = alloca %"compiler/views:fact"
  %l532 = alloca i1
  %l538 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l541 = alloca { i64, ptr }
  %l548 = alloca i64
  %l550 = alloca i64
  %l555 = alloca %"compiler/views:place"
  %l561 = alloca %"compiler/views:place"
  %l564 = alloca %"compiler/views:view"
  %l568 = alloca ptr
  %l574 = alloca i64
  %l578 = alloca ptr
  %l584 = alloca i64
  %l593 = alloca i1
  %l598 = alloca i64
  %l601 = alloca i64
  %l621 = alloca i1
  %l623 = alloca i1
  %l626 = alloca i1
  %l629 = alloca i1
  %l630 = alloca i64
  %l634 = alloca ptr
  %l637 = alloca i64
  %l639 = alloca i1
  %l643 = alloca ptr
  %l647 = alloca i1
  %l651 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l653 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l655 = alloca i64
  %l657 = alloca i64
  %l662 = alloca %"compiler/views:view"
  %l668 = alloca i1
  %l669 = alloca ptr
  %l671 = alloca { i64, ptr }
  %l674 = alloca i32
  %l675 = alloca i1
  %l676 = alloca i1
  %l679 = alloca i1
  %l680 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l683 = alloca { i64, ptr }
  %l690 = alloca i64
  %l692 = alloca i64
  %l697 = alloca %"compiler/views:place"
  %l698 = alloca ptr
  %l699 = alloca { i64, [2 x i64] }
  %l700 = alloca i64
  %l704 = alloca { i64, ptr }
  %l706 = alloca %"compiler/views:place"
  %l709 = alloca %"compiler/views:view"
  %l715 = alloca i1
  %l722 = alloca ptr
  %l725 = alloca i64
  %l727 = alloca i64
  %l732 = alloca %"compiler/views:fact"
  %l735 = alloca i1
  %l739 = alloca i1
  %l742 = alloca i1
  %l746 = alloca i1
  %l749 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l751 = alloca i64
  %l754 = alloca { i64, ptr }
  %l757 = alloca ptr
  %l759 = alloca ptr
  %l761 = alloca i32
  %l764 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s57 = alloca %olang.scope
  %s60 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s67 = alloca %olang.scope
  %t223 = alloca { i64, [2 x i64] }, align 8
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
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l98
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  store i64 -1, ptr %l7, !tbaa !24
  store i1 false, ptr %l8, !tbaa !21
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Call", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  %t8 = load ptr, ptr %l9, !tbaa !29
  store ptr %t8, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t9 = load ptr, ptr %l101, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l101, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 5}
  %t15 = icmp eq i64 %t13, 0
  store i1 %t15, ptr %l102, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l102, !tbaa !21
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
  br label %bb19
bb7:
  %t27 = load ptr, ptr %l9, !tbaa !29
  store ptr %t27, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t28 = load ptr, ptr %l109, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l109, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 5}
  %t34 = icmp eq i64 %t32, 2
  store i1 %t34, ptr %l110, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l110, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { ptr }, ptr %t38, i32 0, i32 0
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l11, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  store i1 true, ptr %l8, !tbaa !21
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l11, !tbaa !29
  %t45 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t42, ptr %t43, ptr %t45, ptr %l6)
  br label %bb13
bb13:
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_f56dc5f524947092_cf97541144f04b56)
  unreachable
bb19:
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Call", ptr %t50, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l12, !tbaa !24
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l123
  br label %bb20
bb20:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l123
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t59 = load i64, ptr %l12, !tbaa !24
  store i64 %t59, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t61 = load i64, ptr %l15, !tbaa !24
  %t62 = load i64, ptr %l14, !tbaa !24
  %t65 = icmp sgt i64 %t61, %t62
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = load i64, ptr %l16, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l128, !tbaa !24
  br label %bb26
bb23:
  %t71 = load i64, ptr %l15, !tbaa !24
  %t72 = load i64, ptr %l14, !tbaa !24
  %t75 = sub i64 %t71, %t72
  %t76 = load i64, ptr %l16, !tbaa !24
  %t79 = add i64 %t75, %t76
  %t81 = sub i64 %t79, 1
  %t82 = load i64, ptr %l16, !tbaa !24
  %t85 = sdiv i64 %t81, %t82
  store i64 %t85, ptr %l131, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l131, !tbaa !24
  br label %bb25
bb25:
  %t87 = load i64, ptr %l131, !tbaa !24
  store i64 %t87, ptr %l128, !tbaa !24
  br label %bb26
bb26:
  %t88 = load i64, ptr %l128, !tbaa !24
  store i64 %t88, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t89 = load i64, ptr %l18, !tbaa !24
  %t90 = load i64, ptr %l17, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb29:
  br label %bb30
bb30:
  %t97 = load i64, ptr %l14, !tbaa !24
  %t98 = load i64, ptr %l18, !tbaa !24
  %t99 = load i64, ptr %l16, !tbaa !24
  %t102 = mul i64 %t98, %t99
  %t105 = add i64 %t97, %t102
  store i64 %t105, ptr %l19, !tbaa !24
  store ptr %l13, ptr %l149, !tbaa !29
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l150
  br label %bb31
bb31:
  %t108 = load ptr, ptr %l149, !tbaa !29
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l150
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hcddb8d7004bc9cdff185b89d31641a08(ptr %s0, ptr %s5, ptr %t108, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109)
  br label %bb32
bb32:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l151, !tbaa !29
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Call", ptr %t111, i32 0, i32 1
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  store { i64, ptr } %t114, ptr %l153, !tbaa !27
  %t115 = load i64, ptr %l19, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr ptr, ptr %t118, i64 %t115
  %t120 = load ptr, ptr %t119, !tbaa !39
  store ptr %t120, ptr %l156, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  store ptr %t122, ptr %l157, !tbaa !29
  %t123 = load i64, ptr %l19, !tbaa !24
  %t126 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H5cdbeb94ae0c6e2e33fc44df03720816(ptr %s0, ptr %s0, ptr %l13, i64 %t123)
  store ptr %t126, ptr %l160
  br label %bb33
bb33:
  %t127 = load ptr, ptr %l151, !tbaa !29
  %t128 = load ptr, ptr %l156, !tbaa !29
  %t129 = load ptr, ptr %l157, !tbaa !29
  %t130 = load ptr, ptr %l160, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t127, ptr %t128, ptr %t129, ptr %t130)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s5)
  br label %bb35
bb35:
  %t131 = load i64, ptr %l18, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l18, !tbaa !24
  br label %bb27
bb36:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t141 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %t135, %"compiler/source:Span" %a1, ptr %t137)
  store %"compiler/source:Span" %t141, ptr %l166
  br label %bb37
bb37:
  %t142 = load %"compiler/source:Span", ptr %l166
  store %"compiler/source:Span" %t142, ptr %l20
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l167, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l7, !tbaa !24
  %t148 = call { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2equoted(ptr %v0, ptr %v0, ptr %t144, i64 %t145)
  store { i64, ptr } %t148, ptr %l170
  br label %bb38
bb38:
  %t149 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  %t151 = extractvalue { i64, ptr } %t149, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  %t156 = load ptr, ptr %l167, !tbaa !29
  %t158 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v0, ptr %t156, { i64, ptr } %t155)
  store i64 %t158, ptr %l172
  br label %bb39
bb39:
  %t159 = load i64, ptr %l172, !tbaa !24
  store i64 %t159, ptr %l21, !tbaa !24
  %t160 = load i64, ptr %l7, !tbaa !24
  %t162 = icmp sge i64 %t160, 0
  br i1 %t162, label %bb40, label %bb41
bb40:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/views:Viewer", ptr %t164, i32 0, i32 2
  %t167 = load i64, ptr %l7, !tbaa !24
  %t170 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t166, i64 %t167)
  store ptr %t170, ptr %l179
  br label %bb42
bb41:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb43
bb42:
  %t171 = load ptr, ptr %l179, !tbaa !29
  %t173 = getelementptr %"compiler/views:summary", ptr %t171, i32 0, i32 4
  %t174 = load i1, ptr %t173, !tbaa !21
  store i1 %t174, ptr %l175, !tbaa !21
  br label %bb43
bb43:
  %t176 = load i1, ptr %l175, !tbaa !21
  store i1 %t176, ptr %l22, !tbaa !21
  %t177 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t177, ptr %l182
  br label %bb44
bb44:
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l182
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l23
  %t179 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %l183
  br label %bb45
bb45:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l183
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l24
  %t181 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l184
  br label %bb46
bb46:
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l184
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l25
  %t183 = load i1, ptr %l22, !tbaa !21
  br i1 %t183, label %bb47, label %bb48
bb47:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/views:Viewer", ptr %t185, i32 0, i32 2
  %t188 = load i64, ptr %l7, !tbaa !24
  %t191 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t187, i64 %t188)
  store ptr %t191, ptr %l189
  br label %bb49
bb48:
  %t192 = load i1, ptr %l8, !tbaa !21
  br i1 %t192, label %bb82, label %bb83
bb49:
  %t194 = load ptr, ptr %l189, !tbaa !29
  %t196 = getelementptr %"compiler/views:summary", ptr %t194, i32 0, i32 0
  store ptr %t196, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t198 = load i64, ptr %l27, !tbaa !24
  store i64 %t198, ptr %l192, !tbaa !24
  %t199 = load ptr, ptr %l26, !tbaa !29
  %t201 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t199)
  store i64 %t201, ptr %l194
  br label %bb51
bb51:
  %t202 = load i64, ptr %l192, !tbaa !24
  %t203 = load i64, ptr %l194, !tbaa !24
  %t204 = icmp slt i64 %t202, %t203
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s9)
  br label %bb81
bb53:
  br label %bb54
bb54:
  %t208 = load ptr, ptr %l26, !tbaa !29
  %t209 = load i64, ptr %l27, !tbaa !24
  %t212 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t208, i64 %t209)
  store %"compiler/views:fact" %t212, ptr %l199
  br label %bb55
bb55:
  %t213 = load %"compiler/views:fact", ptr %l199
  store %"compiler/views:fact" %t213, ptr %l28
  %t214 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 0
  %t215 = load i64, ptr %t214, !tbaa !24
  %t217 = icmp slt i64 %t215, 0
  br i1 %t217, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %l23, ptr %l202, !tbaa !29
  %t219 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 1
  %t220 = load i64, ptr %t219, !tbaa !24
  %t221 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 2
  %t222 = load i32, ptr %t221, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [2 x i64] }, ptr %t223, i32 0, i32 0
  store i64 3, ptr %t224
  %t226 = insertvalue { i64, i32 } undef, i64 %t220, 0
  %t228 = insertvalue { i64, i32 } %t226, i32 %t222, 1
  %t229 = getelementptr { i64, [2 x i64] }, ptr %t223, i32 0, i32 1
  store { i64, i32 } %t228, ptr %t229
  %t230 = load { i64, [2 x i64] }, ptr %t223
  %t231 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 3
  %t232 = load i64, ptr %t231, !tbaa !24
  %t233 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 4
  %t234 = load i64, ptr %t233, !tbaa !24
  %t235 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 5
  %t236 = load i1, ptr %t235, !tbaa !21
  %t241 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s10, { i64, [2 x i64] } %t230, i64 %t232, i64 %t234, i1 %t236)
  store %"compiler/views:place" %t241, ptr %l209
  br label %bb58
bb57:
  br label %bb62
bb58:
  %t242 = load ptr, ptr %l202, !tbaa !29
  %t243 = load %"compiler/views:place", ptr %l209
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t242, %"compiler/views:place" %t243)
  br label %bb59
bb59:
  %t244 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 6
  %t245 = load i64, ptr %t244, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l24, i64 %t245)
  br label %bb60
bb60:
  %t248 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 7
  %t249 = load %"compiler/source:Span", ptr %t248
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, %"compiler/source:Span" %t249)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  br label %bb80
bb62:
  %t252 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 0
  %t253 = load i64, ptr %t252, !tbaa !24
  %t254 = load i64, ptr %l12, !tbaa !24
  %t257 = icmp sge i64 %t253, %t254
  br i1 %t257, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s9)
  br label %bb80
bb64:
  br label %bb65
bb65:
  %t259 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t259, ptr %l217
  br label %bb66
bb66:
  %t260 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l217
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t260, ptr %l29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l3, !tbaa !29
  %t264 = getelementptr %"compiler/typed:Call", ptr %t262, i32 0, i32 1
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  store { i64, ptr } %t265, ptr %l220, !tbaa !27
  %t266 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 0
  %t267 = load i64, ptr %t266, !tbaa !24
  %t269 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr ptr, ptr %t270, i64 %t267
  %t272 = load ptr, ptr %t271, !tbaa !39
  %t274 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s9, ptr %t261, ptr %t272, ptr %t274, ptr %l29)
  br label %bb67
bb67:
  store ptr %l29, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb68
bb68:
  %t280 = load i64, ptr %l31, !tbaa !24
  store i64 %t280, ptr %l227, !tbaa !24
  %t281 = load ptr, ptr %l30, !tbaa !29
  %t283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s9, ptr %t281)
  store i64 %t283, ptr %l229
  br label %bb69
bb69:
  %t284 = load i64, ptr %l227, !tbaa !24
  %t285 = load i64, ptr %l229, !tbaa !24
  %t286 = icmp slt i64 %t284, %t285
  %t288 = xor i1 %t286, true
  br i1 %t288, label %bb70, label %bb71
bb70:
  br label %bb79
bb71:
  br label %bb72
bb72:
  %t290 = load ptr, ptr %l30, !tbaa !29
  %t291 = load i64, ptr %l31, !tbaa !24
  %t294 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s9, ptr %t290, i64 %t291)
  store %"compiler/views:place" %t294, ptr %l234
  br label %bb73
bb73:
  %t295 = load %"compiler/views:place", ptr %l234
  store ptr %l23, ptr %l235, !tbaa !29
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 3
  %t299 = load i64, ptr %t298, !tbaa !24
  %t300 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 4
  %t301 = load i64, ptr %t300, !tbaa !24
  %t302 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 5
  %t303 = load i1, ptr %t302, !tbaa !21
  %t309 = call %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %t296, %"compiler/views:place" %t295, i64 %t299, i64 %t301, i1 %t303)
  store %"compiler/views:place" %t309, ptr %l241
  br label %bb74
bb74:
  %t310 = load ptr, ptr %l235, !tbaa !29
  %t311 = load %"compiler/views:place", ptr %l241
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t310, %"compiler/views:place" %t311)
  br label %bb75
bb75:
  %t312 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 6
  %t313 = load i64, ptr %t312, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l24, i64 %t313)
  br label %bb76
bb76:
  %t316 = getelementptr %"compiler/views:fact", ptr %l28, i32 0, i32 7
  %t317 = load %"compiler/source:Span", ptr %t316
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, %"compiler/source:Span" %t317)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t320 = load i64, ptr %l31, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l31, !tbaa !24
  br label %bb68
bb79:
  call void @__olang_scope_close(ptr %s9)
  br label %bb80
bb80:
  %t324 = load i64, ptr %l27, !tbaa !24
  %t326 = add i64 %t324, 1
  store i64 %t326, ptr %l27, !tbaa !24
  br label %bb50
bb81:
  br label %bb132
bb82:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/views:Viewer", ptr %t328, i32 0, i32 0
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t333 = getelementptr %"compiler/generic:Program", ptr %t331, i32 0, i32 2
  store ptr %t333, ptr %l253, !tbaa !29
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr %"compiler/views:Viewer", ptr %t334, i32 0, i32 0
  %t337 = load ptr, ptr %t336, !tbaa !29
  %t339 = getelementptr %"compiler/generic:Program", ptr %t337, i32 0, i32 2
  store ptr %t339, ptr %l256, !tbaa !29
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load ptr, ptr %l3, !tbaa !29
  %t344 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecalleeType(ptr %v0, ptr %v1, ptr %t340, ptr %t341)
  store i32 %t344, ptr %l259
  br label %bb84
bb83:
  br label %bb131
bb84:
  %t345 = load ptr, ptr %l256, !tbaa !29
  %t346 = load i32, ptr %l259, !tbaa !23
  %t347 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t345, i32 %t346)
  store i32 %t347, ptr %l260
  br label %bb85
bb85:
  %t348 = load ptr, ptr %l253, !tbaa !29
  %t349 = load i32, ptr %l260, !tbaa !23
  %t350 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t348, i32 %t349)
  store { i64, ptr } %t350, ptr %l261
  br label %bb86
bb86:
  %t351 = load { i64, ptr }, ptr %l261, !tbaa !27
  store { i64, ptr } %t351, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t352 = load i64, ptr %l12, !tbaa !24
  store i64 %t352, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t354 = load i64, ptr %l35, !tbaa !24
  %t355 = load i64, ptr %l34, !tbaa !24
  %t358 = icmp sgt i64 %t354, %t355
  br i1 %t358, label %bb87, label %bb88
bb87:
  %t360 = load i64, ptr %l36, !tbaa !24
  %t362 = icmp sgt i64 %t360, 0
  br i1 %t362, label %bb89, label %bb90
bb88:
  store i64 0, ptr %l266, !tbaa !24
  br label %bb92
bb89:
  %t364 = load i64, ptr %l35, !tbaa !24
  %t365 = load i64, ptr %l34, !tbaa !24
  %t368 = sub i64 %t364, %t365
  %t369 = load i64, ptr %l36, !tbaa !24
  %t372 = add i64 %t368, %t369
  %t374 = sub i64 %t372, 1
  %t375 = load i64, ptr %l36, !tbaa !24
  %t378 = sdiv i64 %t374, %t375
  store i64 %t378, ptr %l269, !tbaa !24
  br label %bb91
bb90:
  store i64 0, ptr %l269, !tbaa !24
  br label %bb91
bb91:
  %t380 = load i64, ptr %l269, !tbaa !24
  store i64 %t380, ptr %l266, !tbaa !24
  br label %bb92
bb92:
  %t381 = load i64, ptr %l266, !tbaa !24
  store i64 %t381, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb93
bb93:
  store %olang.scope zeroinitializer, ptr %s19
  %t382 = load i64, ptr %l38, !tbaa !24
  %t383 = load i64, ptr %l37, !tbaa !24
  %t386 = icmp slt i64 %t382, %t383
  %t388 = xor i1 %t386, true
  br i1 %t388, label %bb94, label %bb95
bb94:
  call void @__olang_scope_close(ptr %s19)
  br label %bb130
bb95:
  br label %bb96
bb96:
  %t390 = load i64, ptr %l34, !tbaa !24
  %t391 = load i64, ptr %l38, !tbaa !24
  %t392 = load i64, ptr %l36, !tbaa !24
  %t395 = mul i64 %t391, %t392
  %t398 = add i64 %t390, %t395
  store i64 %t398, ptr %l39, !tbaa !24
  %t400 = load ptr, ptr %l3, !tbaa !29
  %t402 = getelementptr %"compiler/typed:Call", ptr %t400, i32 0, i32 1
  %t403 = load { i64, ptr }, ptr %t402, !tbaa !27
  store { i64, ptr } %t403, ptr %l288, !tbaa !27
  %t404 = load i64, ptr %l39, !tbaa !24
  %t406 = getelementptr { i64, ptr }, ptr %l288, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !27
  %t408 = getelementptr ptr, ptr %t407, i64 %t404
  %t409 = load ptr, ptr %t408, !tbaa !39
  store ptr %t409, ptr %l40, !tbaa !29
  %t411 = load ptr, ptr %l0, !tbaa !29
  store ptr %t411, ptr %l291, !tbaa !29
  %t412 = load ptr, ptr %l40, !tbaa !29
  %t414 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t412)
  store i32 %t414, ptr %l293
  br label %bb97
bb97:
  %t415 = load ptr, ptr %l291, !tbaa !29
  %t416 = load i32, ptr %l293, !tbaa !23
  %t417 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %t415, i32 %t416)
  store i1 %t417, ptr %l294
  br label %bb98
bb98:
  %t418 = load i1, ptr %l294, !tbaa !21
  %t419 = xor i1 %t418, true
  br i1 %t419, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s19)
  br label %bb129
bb100:
  br label %bb101
bb101:
  %t421 = load i64, ptr %l39, !tbaa !24
  %t422 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t427 = icmp slt i64 %t421, %t424
  br i1 %t427, label %bb102, label %bb103
bb102:
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/views:Viewer", ptr %t429, i32 0, i32 0
  %t432 = load ptr, ptr %t431, !tbaa !29
  %t434 = getelementptr %"compiler/generic:Program", ptr %t432, i32 0, i32 2
  %t435 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t435, ptr %l304, !tbaa !27
  %t436 = load i64, ptr %l39, !tbaa !24
  %t438 = getelementptr { i64, ptr }, ptr %l304, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !27
  %t440 = getelementptr i32, ptr %t439, i64 %t436
  %t441 = load i32, ptr %t440, !tbaa !33
  %t444 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t434, i32 %t441)
  store i1 %t444, ptr %l307
  br label %bb104
bb103:
  store i1 false, ptr %l300, !tbaa !21
  br label %bb105
bb104:
  %t445 = load i1, ptr %l307, !tbaa !21
  store i1 %t445, ptr %l300, !tbaa !21
  br label %bb105
bb105:
  %t446 = load i1, ptr %l300, !tbaa !21
  br i1 %t446, label %bb106, label %bb107
bb106:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/views:Viewer", ptr %t447, i32 0, i32 0
  %t450 = load ptr, ptr %t449, !tbaa !29
  %t452 = getelementptr %"compiler/generic:Program", ptr %t450, i32 0, i32 2
  %t453 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t453, ptr %l312, !tbaa !27
  %t454 = load i64, ptr %l39, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l312, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr i32, ptr %t457, i64 %t454
  %t459 = load i32, ptr %t458, !tbaa !33
  %t462 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t452, i32 %t459)
  store i64 %t462, ptr %l315
  br label %bb108
bb107:
  store i1 false, ptr %l308, !tbaa !21
  br label %bb109
bb108:
  %t463 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t464 = load i64, ptr %l315, !tbaa !24
  %t466 = and i64 %t464, %t463
  %t468 = icmp eq i64 %t466, 0
  store i1 %t468, ptr %l308, !tbaa !21
  br label %bb109
bb109:
  %t470 = load i1, ptr %l308, !tbaa !21
  br i1 %t470, label %bb110, label %bb111
bb110:
  call void @__olang_scope_close(ptr %s19)
  br label %bb129
bb111:
  br label %bb112
bb112:
  %t471 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t471, ptr %l319
  br label %bb113
bb113:
  %t472 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l319
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t472, ptr %l41
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load ptr, ptr %l40, !tbaa !29
  %t476 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s19, ptr %t473, ptr %t474, ptr %t476, ptr %l41)
  br label %bb114
bb114:
  store ptr %l41, ptr %l42, !tbaa !29
  store i64 0, ptr %l43, !tbaa !24
  br label %bb115
bb115:
  store %olang.scope zeroinitializer, ptr %s23
  %t482 = load i64, ptr %l43, !tbaa !24
  store i64 %t482, ptr %l326, !tbaa !24
  %t483 = load ptr, ptr %l42, !tbaa !29
  %t485 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s19, ptr %t483)
  store i64 %t485, ptr %l328
  br label %bb116
bb116:
  %t486 = load i64, ptr %l326, !tbaa !24
  %t487 = load i64, ptr %l328, !tbaa !24
  %t488 = icmp slt i64 %t486, %t487
  %t490 = xor i1 %t488, true
  br i1 %t490, label %bb117, label %bb118
bb117:
  call void @__olang_scope_close(ptr %s23)
  br label %bb128
bb118:
  br label %bb119
bb119:
  %t492 = load ptr, ptr %l42, !tbaa !29
  %t493 = load i64, ptr %l43, !tbaa !24
  %t496 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s19, ptr %t492, i64 %t493)
  store %"compiler/views:place" %t496, ptr %l333
  br label %bb120
bb120:
  %t497 = load %"compiler/views:place", ptr %l333
  store %"compiler/views:place" %t497, ptr %l44
  store ptr %l23, ptr %l334, !tbaa !29
  %t498 = getelementptr %"compiler/views:place", ptr %l44, i32 0, i32 0
  %t499 = load { i64, [2 x i64] }, ptr %t498
  store { i64, [2 x i64] } %t499, ptr %l335
  %t500 = getelementptr %"compiler/views:place", ptr %l44, i32 0, i32 1
  %t501 = load i64, ptr %t500, !tbaa !24
  store i64 %t501, ptr %l336, !tbaa !24
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t504 = getelementptr %"compiler/views:Viewer", ptr %t502, i32 0, i32 3
  %t505 = getelementptr %"compiler/views:place", ptr %l44, i32 0, i32 1
  %t506 = load i64, ptr %t505, !tbaa !24
  %t509 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s23, ptr %t504, i64 %t506)
  store { i64, ptr } %t509, ptr %l340
  br label %bb121
bb121:
  %t510 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t511 = extractvalue { i64, ptr } %t510, 0
  %t512 = load { i64, [2 x i64] }, ptr %l335
  %t513 = load i64, ptr %l336, !tbaa !24
  %t515 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s23, { i64, [2 x i64] } %t512, i64 %t513, i64 %t511, i1 true)
  store %"compiler/views:place" %t515, ptr %l342
  br label %bb122
bb122:
  %t516 = load ptr, ptr %l334, !tbaa !29
  %t517 = load %"compiler/views:place", ptr %l342
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %t516, %"compiler/views:place" %t517)
  br label %bb123
bb123:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l24, i64 -1)
  br label %bb124
bb124:
  store ptr %l25, ptr %l344, !tbaa !29
  %t519 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s23, i32 0, i32 0)
  store %"compiler/source:Span" %t519, ptr %l345
  br label %bb125
bb125:
  %t520 = load ptr, ptr %l344, !tbaa !29
  %t521 = load %"compiler/source:Span", ptr %l345
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %t520, %"compiler/source:Span" %t521)
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s23)
  br label %bb127
bb127:
  %t522 = load i64, ptr %l43, !tbaa !24
  %t524 = add i64 %t522, 1
  store i64 %t524, ptr %l43, !tbaa !24
  br label %bb115
bb128:
  call void @__olang_scope_close(ptr %s19)
  br label %bb129
bb129:
  %t526 = load i64, ptr %l38, !tbaa !24
  %t528 = add i64 %t526, 1
  store i64 %t528, ptr %l38, !tbaa !24
  br label %bb93
bb130:
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t532 = getelementptr %"compiler/views:Viewer", ptr %t530, i32 0, i32 23
  %t533 = load i1, ptr %t532, !tbaa !21
  br i1 %t533, label %bb133, label %bb134
bb133:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/views:Viewer", ptr %t535, i32 0, i32 24
  %t538 = load i1, ptr %t537, !tbaa !21
  %t540 = xor i1 %t538, true
  store i1 %t540, ptr %l352, !tbaa !21
  br label %bb135
bb134:
  store i1 false, ptr %l352, !tbaa !21
  br label %bb135
bb135:
  %t542 = load i1, ptr %l352, !tbaa !21
  br i1 %t542, label %bb136, label %bb137
bb136:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/views:Viewer", ptr %t543, i32 0, i32 25
  %t546 = load i1, ptr %t545, !tbaa !21
  %t548 = xor i1 %t546, true
  store i1 %t548, ptr %l356, !tbaa !21
  br label %bb138
bb137:
  store i1 false, ptr %l356, !tbaa !21
  br label %bb138
bb138:
  %t550 = load i1, ptr %l356, !tbaa !21
  br i1 %t550, label %bb139, label %bb140
bb139:
  store i64 0, ptr %l45, !tbaa !24
  %t551 = load i64, ptr %l12, !tbaa !24
  store i64 %t551, ptr %l46, !tbaa !24
  store i64 1, ptr %l47, !tbaa !24
  %t553 = load i64, ptr %l46, !tbaa !24
  %t554 = load i64, ptr %l45, !tbaa !24
  %t557 = icmp sgt i64 %t553, %t554
  br i1 %t557, label %bb141, label %bb142
bb140:
  br label %bb178
bb141:
  %t559 = load i64, ptr %l47, !tbaa !24
  %t561 = icmp sgt i64 %t559, 0
  br i1 %t561, label %bb143, label %bb144
bb142:
  store i64 0, ptr %l364, !tbaa !24
  br label %bb146
bb143:
  %t563 = load i64, ptr %l46, !tbaa !24
  %t564 = load i64, ptr %l45, !tbaa !24
  %t567 = sub i64 %t563, %t564
  %t568 = load i64, ptr %l47, !tbaa !24
  %t571 = add i64 %t567, %t568
  %t573 = sub i64 %t571, 1
  %t574 = load i64, ptr %l47, !tbaa !24
  %t577 = sdiv i64 %t573, %t574
  store i64 %t577, ptr %l367, !tbaa !24
  br label %bb145
bb144:
  store i64 0, ptr %l367, !tbaa !24
  br label %bb145
bb145:
  %t579 = load i64, ptr %l367, !tbaa !24
  store i64 %t579, ptr %l364, !tbaa !24
  br label %bb146
bb146:
  %t580 = load i64, ptr %l364, !tbaa !24
  store i64 %t580, ptr %l48, !tbaa !24
  store i64 0, ptr %l49, !tbaa !24
  br label %bb147
bb147:
  %t581 = load i64, ptr %l49, !tbaa !24
  %t582 = load i64, ptr %l48, !tbaa !24
  %t585 = icmp slt i64 %t581, %t582
  %t587 = xor i1 %t585, true
  br i1 %t587, label %bb148, label %bb149
bb148:
  br label %bb177
bb149:
  br label %bb150
bb150:
  %t589 = load i64, ptr %l45, !tbaa !24
  %t590 = load i64, ptr %l49, !tbaa !24
  %t591 = load i64, ptr %l47, !tbaa !24
  %t594 = mul i64 %t590, %t591
  %t597 = add i64 %t589, %t594
  store i64 %t597, ptr %l50, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s29
  %t599 = load i64, ptr %l50, !tbaa !24
  %t602 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s29, ptr %l13, i64 %t599)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t602, ptr %l387
  br label %bb151
bb151:
  %t604 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e(ptr %s29, ptr %l387)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t604, ptr %l389
  br label %bb152
bb152:
  %t605 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l389
  %t606 = call ptr @__olang_scope_alloc_a(ptr %s29, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t605, ptr %t606
  store ptr %t606, ptr %l51, !tbaa !29
  store i64 0, ptr %l52, !tbaa !24
  br label %bb153
bb153:
  %t608 = load i64, ptr %l52, !tbaa !24
  store i64 %t608, ptr %l391, !tbaa !24
  %t609 = load ptr, ptr %l51, !tbaa !29
  %t611 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s29, ptr %t609)
  store i64 %t611, ptr %l393
  br label %bb154
bb154:
  %t612 = load i64, ptr %l391, !tbaa !24
  %t613 = load i64, ptr %l393, !tbaa !24
  %t614 = icmp slt i64 %t612, %t613
  %t616 = xor i1 %t614, true
  br i1 %t616, label %bb155, label %bb156
bb155:
  br label %bb175
bb156:
  br label %bb157
bb157:
  %t618 = load ptr, ptr %l51, !tbaa !29
  %t619 = load i64, ptr %l52, !tbaa !24
  %t622 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s29, ptr %t618, i64 %t619)
  store %"compiler/views:view" %t622, ptr %l398
  br label %bb158
bb158:
  %t623 = load %"compiler/views:view", ptr %l398
  store %"compiler/views:view" %t623, ptr %l53
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t625 = getelementptr %"compiler/views:view", ptr %l53, i32 0, i32 0
  %t626 = load %"compiler/views:place", ptr %t625
  %t630 = call i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrownAt(ptr %v0, ptr %s0, ptr %t624, %"compiler/views:place" %t626, ptr %l23)
  store i64 %t630, ptr %l402
  br label %bb159
bb159:
  %t631 = load i64, ptr %l402, !tbaa !24
  store i64 %t631, ptr %l54, !tbaa !24
  %t632 = load i64, ptr %l54, !tbaa !24
  %t634 = icmp slt i64 %t632, 0
  br i1 %t634, label %bb160, label %bb161
bb160:
  br label %bb174
bb161:
  br label %bb162
bb162:
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t637 = load ptr, ptr %l3, !tbaa !29
  %t639 = getelementptr %"compiler/typed:Call", ptr %t637, i32 0, i32 1
  %t640 = load { i64, ptr }, ptr %t639, !tbaa !27
  store { i64, ptr } %t640, ptr %l407, !tbaa !27
  %t641 = load i64, ptr %l50, !tbaa !24
  %t643 = getelementptr { i64, ptr }, ptr %l407, i32 0, i32 1
  %t644 = load ptr, ptr %t643, !tbaa !27
  %t645 = getelementptr ptr, ptr %t644, i64 %t641
  %t646 = load ptr, ptr %t645, !tbaa !39
  %t649 = call %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %t636, ptr %t646)
  store %"compiler/source:Span" %t649, ptr %l410
  br label %bb163
bb163:
  %t650 = load %"compiler/source:Span", ptr %l410
  store %"compiler/source:Span" %t650, ptr %l55
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t652 = load %"compiler/source:Span", ptr %l55
  %t655 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %t651, %"compiler/source:Span" %t652)
  store i1 %t655, ptr %l413
  br label %bb164
bb164:
  %t656 = load i1, ptr %l413, !tbaa !21
  %t657 = xor i1 %t656, true
  br i1 %t657, label %bb165, label %bb166
bb165:
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l415, !tbaa !29
  %t660 = load %"compiler/source:Span", ptr %l55
  store %"compiler/source:Span" %t660, ptr %l416
  %t661 = getelementptr %"compiler/views:view", ptr %l53, i32 0, i32 0
  %t662 = load %"compiler/views:place", ptr %t661
  store %"compiler/views:place" %t662, ptr %l417
  %t663 = getelementptr %"compiler/views:view", ptr %l53, i32 0, i32 7
  %t664 = load i64, ptr %t663, !tbaa !24
  store i64 %t664, ptr %l418, !tbaa !24
  %t665 = load i64, ptr %l21, !tbaa !24
  store i64 %t665, ptr %l419, !tbaa !24
  %t666 = load i1, ptr %l22, !tbaa !21
  br i1 %t666, label %bb167, label %bb168
bb166:
  br label %bb173
bb167:
  %t668 = load i64, ptr %l54, !tbaa !24
  %t671 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l24, i64 %t668)
  store i64 %t671, ptr %l424
  br label %bb169
bb168:
  store i64 -1, ptr %l421, !tbaa !24
  br label %bb170
bb169:
  %t672 = load i64, ptr %l424, !tbaa !24
  store i64 %t672, ptr %l421, !tbaa !24
  br label %bb170
bb170:
  %t673 = load i64, ptr %l54, !tbaa !24
  %t676 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, i64 %t673)
  store %"compiler/source:Span" %t676, ptr %l427
  br label %bb171
bb171:
  %t677 = load ptr, ptr %l415, !tbaa !29
  %t678 = load %"compiler/source:Span", ptr %l416
  %t679 = load %"compiler/views:place", ptr %l417
  %t680 = load i64, ptr %l418, !tbaa !24
  %t681 = load i64, ptr %l419, !tbaa !24
  %t682 = load i64, ptr %l421, !tbaa !24
  %t683 = load %"compiler/source:Span", ptr %l427
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egivenGrowing(ptr %v0, ptr %t677, %"compiler/source:Span" %t678, %"compiler/views:place" %t679, i64 %t680, i64 %t681, i64 %t682, %"compiler/source:Span" %t683)
  br label %bb172
bb172:
  br label %bb173
bb173:
  br label %bb175
bb174:
  %t684 = load i64, ptr %l52, !tbaa !24
  %t686 = add i64 %t684, 1
  store i64 %t686, ptr %l52, !tbaa !24
  br label %bb153
bb175:
  call void @__olang_scope_close(ptr %s29)
  br label %bb176
bb176:
  %t688 = load i64, ptr %l49, !tbaa !24
  %t690 = add i64 %t688, 1
  store i64 %t690, ptr %l49, !tbaa !24
  br label %bb147
bb177:
  br label %bb178
bb178:
  store i64 0, ptr %l56, !tbaa !24
  %t693 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %l23)
  store i64 %t693, ptr %l433
  br label %bb179
bb179:
  %t694 = load i64, ptr %l433, !tbaa !24
  store i64 %t694, ptr %l57, !tbaa !24
  store i64 1, ptr %l58, !tbaa !24
  %t695 = load i64, ptr %l57, !tbaa !24
  %t696 = load i64, ptr %l56, !tbaa !24
  %t699 = icmp sgt i64 %t695, %t696
  br i1 %t699, label %bb180, label %bb181
bb180:
  %t701 = load i64, ptr %l58, !tbaa !24
  %t703 = icmp sgt i64 %t701, 0
  br i1 %t703, label %bb182, label %bb183
bb181:
  store i64 0, ptr %l437, !tbaa !24
  br label %bb185
bb182:
  %t705 = load i64, ptr %l57, !tbaa !24
  %t706 = load i64, ptr %l56, !tbaa !24
  %t709 = sub i64 %t705, %t706
  %t710 = load i64, ptr %l58, !tbaa !24
  %t713 = add i64 %t709, %t710
  %t715 = sub i64 %t713, 1
  %t716 = load i64, ptr %l58, !tbaa !24
  %t719 = sdiv i64 %t715, %t716
  store i64 %t719, ptr %l440, !tbaa !24
  br label %bb184
bb183:
  store i64 0, ptr %l440, !tbaa !24
  br label %bb184
bb184:
  %t721 = load i64, ptr %l440, !tbaa !24
  store i64 %t721, ptr %l437, !tbaa !24
  br label %bb185
bb185:
  %t722 = load i64, ptr %l437, !tbaa !24
  store i64 %t722, ptr %l59, !tbaa !24
  store i64 0, ptr %l60, !tbaa !24
  br label %bb186
bb186:
  %t723 = load i64, ptr %l60, !tbaa !24
  %t724 = load i64, ptr %l59, !tbaa !24
  %t727 = icmp slt i64 %t723, %t724
  %t729 = xor i1 %t727, true
  br i1 %t729, label %bb187, label %bb188
bb187:
  br label %bb195
bb188:
  br label %bb189
bb189:
  %t731 = load i64, ptr %l56, !tbaa !24
  %t732 = load i64, ptr %l60, !tbaa !24
  %t733 = load i64, ptr %l58, !tbaa !24
  %t736 = mul i64 %t732, %t733
  %t739 = add i64 %t731, %t736
  store i64 %t739, ptr %l61, !tbaa !24
  %t741 = load ptr, ptr %l0, !tbaa !29
  store ptr %t741, ptr %l458, !tbaa !29
  %t742 = load i64, ptr %l61, !tbaa !24
  %t745 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s0, ptr %l23, i64 %t742)
  store %"compiler/views:place" %t745, ptr %l461
  br label %bb190
bb190:
  %t746 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t746, ptr %l462
  %t747 = load i64, ptr %l21, !tbaa !24
  store i64 %t747, ptr %l463, !tbaa !24
  %t748 = load i64, ptr %l61, !tbaa !24
  %t751 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l24, i64 %t748)
  store i64 %t751, ptr %l466
  br label %bb191
bb191:
  %t752 = load i64, ptr %l61, !tbaa !24
  %t755 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l25, i64 %t752)
  store %"compiler/source:Span" %t755, ptr %l469
  br label %bb192
bb192:
  %t756 = load ptr, ptr %l4, !tbaa !29
  %t757 = load ptr, ptr %l458, !tbaa !29
  %t758 = load %"compiler/views:place", ptr %l461
  %t759 = load %"compiler/source:Span", ptr %l462
  %t760 = load i64, ptr %l463, !tbaa !24
  %t761 = load i64, ptr %l466, !tbaa !24
  %t762 = load %"compiler/source:Span", ptr %l469
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egrow(ptr %v0, ptr %v2, ptr %t757, %"compiler/views:place" %t758, %"compiler/source:Span" %t759, i64 %t760, i64 %t761, %"compiler/source:Span" %t762, ptr %t756)
  br label %bb193
bb193:
  br label %bb194
bb194:
  %t764 = load i64, ptr %l60, !tbaa !24
  %t766 = add i64 %t764, 1
  store i64 %t766, ptr %l60, !tbaa !24
  br label %bb186
bb195:
  store ptr %l6, ptr %l62, !tbaa !29
  store i64 0, ptr %l63, !tbaa !24
  br label %bb196
bb196:
  %t769 = load i64, ptr %l63, !tbaa !24
  store i64 %t769, ptr %l474, !tbaa !24
  %t770 = load ptr, ptr %l62, !tbaa !29
  %t772 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t770)
  store i64 %t772, ptr %l476
  br label %bb197
bb197:
  %t773 = load i64, ptr %l474, !tbaa !24
  %t774 = load i64, ptr %l476, !tbaa !24
  %t775 = icmp slt i64 %t773, %t774
  %t777 = xor i1 %t775, true
  br i1 %t777, label %bb198, label %bb199
bb198:
  br label %bb204
bb199:
  br label %bb200
bb200:
  %t779 = load ptr, ptr %l62, !tbaa !29
  %t780 = load i64, ptr %l63, !tbaa !24
  %t783 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t779, i64 %t780)
  store %"compiler/views:view" %t783, ptr %l481
  br label %bb201
bb201:
  %t784 = load %"compiler/views:view", ptr %l481
  %t785 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t785, %"compiler/views:view" %t784)
  br label %bb202
bb202:
  br label %bb203
bb203:
  %t789 = load i64, ptr %l63, !tbaa !24
  %t791 = add i64 %t789, 1
  store i64 %t791, ptr %l63, !tbaa !24
  br label %bb196
bb204:
  %t793 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t793, ptr %l486
  br label %bb205
bb205:
  %t794 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l486
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t794, ptr %l65
  store i64 0, ptr %l66, !tbaa !24
  %t795 = load i64, ptr %l12, !tbaa !24
  store i64 %t795, ptr %l67, !tbaa !24
  store i64 1, ptr %l68, !tbaa !24
  %t797 = load i64, ptr %l67, !tbaa !24
  %t798 = load i64, ptr %l66, !tbaa !24
  %t801 = icmp sgt i64 %t797, %t798
  br i1 %t801, label %bb206, label %bb207
bb206:
  %t803 = load i64, ptr %l68, !tbaa !24
  %t805 = icmp sgt i64 %t803, 0
  br i1 %t805, label %bb208, label %bb209
bb207:
  store i64 0, ptr %l491, !tbaa !24
  br label %bb211
bb208:
  %t807 = load i64, ptr %l67, !tbaa !24
  %t808 = load i64, ptr %l66, !tbaa !24
  %t811 = sub i64 %t807, %t808
  %t812 = load i64, ptr %l68, !tbaa !24
  %t815 = add i64 %t811, %t812
  %t817 = sub i64 %t815, 1
  %t818 = load i64, ptr %l68, !tbaa !24
  %t821 = sdiv i64 %t817, %t818
  store i64 %t821, ptr %l494, !tbaa !24
  br label %bb210
bb209:
  store i64 0, ptr %l494, !tbaa !24
  br label %bb210
bb210:
  %t823 = load i64, ptr %l494, !tbaa !24
  store i64 %t823, ptr %l491, !tbaa !24
  br label %bb211
bb211:
  %t824 = load i64, ptr %l491, !tbaa !24
  store i64 %t824, ptr %l69, !tbaa !24
  store i64 0, ptr %l70, !tbaa !24
  br label %bb212
bb212:
  %t825 = load i64, ptr %l70, !tbaa !24
  %t826 = load i64, ptr %l69, !tbaa !24
  %t829 = icmp slt i64 %t825, %t826
  %t831 = xor i1 %t829, true
  br i1 %t831, label %bb213, label %bb214
bb213:
  br label %bb218
bb214:
  br label %bb215
bb215:
  %t833 = load i64, ptr %l66, !tbaa !24
  %t834 = load i64, ptr %l70, !tbaa !24
  %t835 = load i64, ptr %l68, !tbaa !24
  %t838 = mul i64 %t834, %t835
  %t841 = add i64 %t833, %t838
  store i64 %t841, ptr %l71, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %l65, i1 false)
  br label %bb216
bb216:
  br label %bb217
bb217:
  %t844 = load i64, ptr %l70, !tbaa !24
  %t846 = add i64 %t844, 1
  store i64 %t846, ptr %l70, !tbaa !24
  br label %bb212
bb218:
  %t848 = load i1, ptr %l22, !tbaa !21
  br i1 %t848, label %bb219, label %bb220
bb219:
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t852 = getelementptr %"compiler/views:Viewer", ptr %t850, i32 0, i32 2
  %t853 = load i64, ptr %l7, !tbaa !24
  %t856 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t852, i64 %t853)
  store ptr %t856, ptr %l519
  br label %bb221
bb220:
  br label %bb258
bb221:
  %t857 = load ptr, ptr %l519, !tbaa !29
  %t859 = getelementptr %"compiler/views:summary", ptr %t857, i32 0, i32 1
  store ptr %t859, ptr %l72, !tbaa !29
  store i64 0, ptr %l73, !tbaa !24
  br label %bb222
bb222:
  store %olang.scope zeroinitializer, ptr %s46
  %t861 = load i64, ptr %l73, !tbaa !24
  store i64 %t861, ptr %l522, !tbaa !24
  %t862 = load ptr, ptr %l72, !tbaa !29
  %t864 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t862)
  store i64 %t864, ptr %l524
  br label %bb223
bb223:
  %t865 = load i64, ptr %l522, !tbaa !24
  %t866 = load i64, ptr %l524, !tbaa !24
  %t867 = icmp slt i64 %t865, %t866
  %t869 = xor i1 %t867, true
  br i1 %t869, label %bb224, label %bb225
bb224:
  call void @__olang_scope_close(ptr %s46)
  br label %bb257
bb225:
  br label %bb226
bb226:
  %t871 = load ptr, ptr %l72, !tbaa !29
  %t872 = load i64, ptr %l73, !tbaa !24
  %t875 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t871, i64 %t872)
  store %"compiler/views:fact" %t875, ptr %l529
  br label %bb227
bb227:
  %t876 = load %"compiler/views:fact", ptr %l529
  store %"compiler/views:fact" %t876, ptr %l74
  %t877 = getelementptr %"compiler/views:fact", ptr %l74, i32 0, i32 0
  %t878 = load i64, ptr %t877, !tbaa !24
  %t880 = icmp slt i64 %t878, 0
  br i1 %t880, label %bb228, label %bb229
bb228:
  store i1 true, ptr %l532, !tbaa !21
  br label %bb230
bb229:
  %t882 = getelementptr %"compiler/views:fact", ptr %l74, i32 0, i32 0
  %t883 = load i64, ptr %t882, !tbaa !24
  %t884 = load i64, ptr %l12, !tbaa !24
  %t887 = icmp sge i64 %t883, %t884
  store i1 %t887, ptr %l532, !tbaa !21
  br label %bb230
bb230:
  %t889 = load i1, ptr %l532, !tbaa !21
  br i1 %t889, label %bb231, label %bb232
bb231:
  call void @__olang_scope_close(ptr %s46)
  br label %bb256
bb232:
  br label %bb233
bb233:
  %t890 = getelementptr %"compiler/views:fact", ptr %l74, i32 0, i32 0
  %t891 = load i64, ptr %t890, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %s0, ptr %l65, i64 %t891, i1 true)
  br label %bb234
bb234:
  %t894 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s46, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t894, ptr %l538
  br label %bb235
bb235:
  %t895 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l538
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t895, ptr %l75
  %t896 = load ptr, ptr %l0, !tbaa !29
  %t897 = load ptr, ptr %l3, !tbaa !29
  %t899 = getelementptr %"compiler/typed:Call", ptr %t897, i32 0, i32 1
  %t900 = load { i64, ptr }, ptr %t899, !tbaa !27
  store { i64, ptr } %t900, ptr %l541, !tbaa !27
  %t901 = getelementptr %"compiler/views:fact", ptr %l74, i32 0, i32 0
  %t902 = load i64, ptr %t901, !tbaa !24
  %t904 = getelementptr { i64, ptr }, ptr %l541, i32 0, i32 1
  %t905 = load ptr, ptr %t904, !tbaa !27
  %t906 = getelementptr ptr, ptr %t905, i64 %t902
  %t907 = load ptr, ptr %t906, !tbaa !39
  %t909 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s46, ptr %t896, ptr %t907, ptr %t909, ptr %l75)
  br label %bb236
bb236:
  store ptr %l75, ptr %l76, !tbaa !29
  store i64 0, ptr %l77, !tbaa !24
  br label %bb237
bb237:
  store %olang.scope zeroinitializer, ptr %s49
  %t915 = load i64, ptr %l77, !tbaa !24
  store i64 %t915, ptr %l548, !tbaa !24
  %t916 = load ptr, ptr %l76, !tbaa !29
  %t918 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s46, ptr %t916)
  store i64 %t918, ptr %l550
  br label %bb238
bb238:
  %t919 = load i64, ptr %l548, !tbaa !24
  %t920 = load i64, ptr %l550, !tbaa !24
  %t921 = icmp slt i64 %t919, %t920
  %t923 = xor i1 %t921, true
  br i1 %t923, label %bb239, label %bb240
bb239:
  call void @__olang_scope_close(ptr %s49)
  br label %bb255
bb240:
  br label %bb241
bb241:
  %t925 = load ptr, ptr %l76, !tbaa !29
  %t926 = load i64, ptr %l77, !tbaa !24
  %t929 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s46, ptr %t925, i64 %t926)
  store %"compiler/views:place" %t929, ptr %l555
  br label %bb242
bb242:
  %t930 = load %"compiler/views:place", ptr %l555
  %t931 = load ptr, ptr %l0, !tbaa !29
  %t933 = getelementptr %"compiler/views:fact", ptr %l74, i32 0, i32 3
  %t934 = load i64, ptr %t933, !tbaa !24
  %t935 = getelementptr %"compiler/views:fact", ptr %l74, i32 0, i32 4
  %t936 = load i64, ptr %t935, !tbaa !24
  %t937 = getelementptr %"compiler/views:fact", ptr %l74, i32 0, i32 5
  %t938 = load i1, ptr %t937, !tbaa !21
  %t944 = call %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %t931, %"compiler/views:place" %t930, i64 %t934, i64 %t936, i1 %t938)
  store %"compiler/views:place" %t944, ptr %l561
  br label %bb243
bb243:
  %t945 = getelementptr %"compiler/source:Span", ptr %l20, i32 0, i32 0
  %t946 = load i32, ptr %t945, !tbaa !23
  %t948 = sext i32 %t946 to i64
  %t949 = load %"compiler/views:place", ptr %l561
  %t951 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s49, %"compiler/views:place" %t949, i64 %t948)
  store %"compiler/views:view" %t951, ptr %l564
  br label %bb244
bb244:
  %t952 = load %"compiler/views:view", ptr %l564
  store %"compiler/views:view" %t952, ptr %l79
  %t953 = load ptr, ptr %l0, !tbaa !29
  %t955 = getelementptr %"compiler/views:Viewer", ptr %t953, i32 0, i32 1
  %t956 = load i64, ptr %l7, !tbaa !24
  %t959 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t955, i64 %t956)
  store ptr %t959, ptr %l568
  br label %bb245
bb245:
  %t960 = load ptr, ptr %l568, !tbaa !29
  %t962 = getelementptr %"compiler/typed:Body", ptr %t960, i32 0, i32 3
  %t963 = load i64, ptr %t962, !tbaa !24
  %t964 = load ptr, ptr %l0, !tbaa !29
  %t966 = getelementptr %"compiler/views:Viewer", ptr %t964, i32 0, i32 7
  %t967 = load i64, ptr %t966, !tbaa !24
  %t970 = icmp eq i64 %t963, %t967
  br i1 %t970, label %bb246, label %bb247
bb246:
  store i64 1, ptr %l574, !tbaa !24
  br label %bb252
bb247:
  %t972 = load ptr, ptr %l0, !tbaa !29
  %t974 = getelementptr %"compiler/views:Viewer", ptr %t972, i32 0, i32 1
  %t975 = load i64, ptr %l7, !tbaa !24
  %t978 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t974, i64 %t975)
  store ptr %t978, ptr %l578
  br label %bb248
bb248:
  %t979 = load ptr, ptr %l578, !tbaa !29
  %t981 = getelementptr %"compiler/typed:Body", ptr %t979, i32 0, i32 3
  %t982 = load i64, ptr %t981, !tbaa !24
  %t983 = load ptr, ptr %l0, !tbaa !29
  %t985 = getelementptr %"compiler/views:Viewer", ptr %t983, i32 0, i32 8
  %t986 = load i64, ptr %t985, !tbaa !24
  %t989 = icmp eq i64 %t982, %t986
  br i1 %t989, label %bb249, label %bb250
bb249:
  store i64 2, ptr %l584, !tbaa !24
  br label %bb251
bb250:
  store i64 0, ptr %l584, !tbaa !24
  br label %bb251
bb251:
  %t991 = load i64, ptr %l584, !tbaa !24
  store i64 %t991, ptr %l574, !tbaa !24
  br label %bb252
bb252:
  %t992 = load i64, ptr %l574, !tbaa !24
  %t993 = getelementptr %"compiler/views:view", ptr %l79, i32 0, i32 7
  store i64 %t992, ptr %t993, !tbaa !24
  %t994 = load ptr, ptr %l5, !tbaa !29
  %t995 = load %"compiler/views:view", ptr %l79
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t994, %"compiler/views:view" %t995)
  br label %bb253
bb253:
  call void @__olang_scope_close(ptr %s49)
  br label %bb254
bb254:
  %t998 = load i64, ptr %l77, !tbaa !24
  %t1000 = add i64 %t998, 1
  store i64 %t1000, ptr %l77, !tbaa !24
  br label %bb237
bb255:
  call void @__olang_scope_close(ptr %s46)
  br label %bb256
bb256:
  %t1002 = load i64, ptr %l73, !tbaa !24
  %t1004 = add i64 %t1002, 1
  store i64 %t1004, ptr %l73, !tbaa !24
  br label %bb222
bb257:
  br label %bb258
bb258:
  %t1006 = load ptr, ptr %l0, !tbaa !29
  %t1007 = load i32, ptr %l2, !tbaa !23
  %t1010 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t1006, i32 %t1007)
  store i1 %t1010, ptr %l593
  br label %bb259
bb259:
  %t1011 = load i1, ptr %l593, !tbaa !21
  br i1 %t1011, label %bb260, label %bb261
bb260:
  store i64 0, ptr %l80, !tbaa !24
  %t1012 = load i64, ptr %l12, !tbaa !24
  store i64 %t1012, ptr %l81, !tbaa !24
  store i64 1, ptr %l82, !tbaa !24
  %t1014 = load i64, ptr %l81, !tbaa !24
  %t1015 = load i64, ptr %l80, !tbaa !24
  %t1018 = icmp sgt i64 %t1014, %t1015
  br i1 %t1018, label %bb262, label %bb263
bb261:
  br label %bb334
bb262:
  %t1020 = load i64, ptr %l82, !tbaa !24
  %t1022 = icmp sgt i64 %t1020, 0
  br i1 %t1022, label %bb264, label %bb265
bb263:
  store i64 0, ptr %l598, !tbaa !24
  br label %bb267
bb264:
  %t1024 = load i64, ptr %l81, !tbaa !24
  %t1025 = load i64, ptr %l80, !tbaa !24
  %t1028 = sub i64 %t1024, %t1025
  %t1029 = load i64, ptr %l82, !tbaa !24
  %t1032 = add i64 %t1028, %t1029
  %t1034 = sub i64 %t1032, 1
  %t1035 = load i64, ptr %l82, !tbaa !24
  %t1038 = sdiv i64 %t1034, %t1035
  store i64 %t1038, ptr %l601, !tbaa !24
  br label %bb266
bb265:
  store i64 0, ptr %l601, !tbaa !24
  br label %bb266
bb266:
  %t1040 = load i64, ptr %l601, !tbaa !24
  store i64 %t1040, ptr %l598, !tbaa !24
  br label %bb267
bb267:
  %t1041 = load i64, ptr %l598, !tbaa !24
  store i64 %t1041, ptr %l83, !tbaa !24
  store i64 0, ptr %l84, !tbaa !24
  br label %bb268
bb268:
  %t1042 = load i64, ptr %l84, !tbaa !24
  %t1043 = load i64, ptr %l83, !tbaa !24
  %t1046 = icmp slt i64 %t1042, %t1043
  %t1048 = xor i1 %t1046, true
  br i1 %t1048, label %bb269, label %bb270
bb269:
  br label %bb333
bb270:
  br label %bb271
bb271:
  %t1050 = load i64, ptr %l80, !tbaa !24
  %t1051 = load i64, ptr %l84, !tbaa !24
  %t1052 = load i64, ptr %l82, !tbaa !24
  %t1055 = mul i64 %t1051, %t1052
  %t1058 = add i64 %t1050, %t1055
  store i64 %t1058, ptr %l85, !tbaa !24
  %t1060 = load i64, ptr %l85, !tbaa !24
  %t1063 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %l65, i64 %t1060)
  store i1 %t1063, ptr %l621
  br label %bb272
bb272:
  %t1064 = load i1, ptr %l621, !tbaa !21
  br i1 %t1064, label %bb273, label %bb274
bb273:
  br label %bb332
bb274:
  br label %bb275
bb275:
  %t1065 = load i1, ptr %l8, !tbaa !21
  br i1 %t1065, label %bb276, label %bb277
bb276:
  store i1 true, ptr %l623, !tbaa !21
  br label %bb291
bb277:
  %t1067 = load i64, ptr %l7, !tbaa !24
  %t1069 = icmp sge i64 %t1067, 0
  br i1 %t1069, label %bb278, label %bb279
bb278:
  %t1071 = load i1, ptr %l22, !tbaa !21
  %t1073 = xor i1 %t1071, true
  br i1 %t1073, label %bb280, label %bb281
bb279:
  store i1 false, ptr %l626, !tbaa !21
  br label %bb290
bb280:
  store i1 true, ptr %l629, !tbaa !21
  br label %bb289
bb281:
  %t1075 = load i64, ptr %l85, !tbaa !24
  store i64 %t1075, ptr %l630, !tbaa !24
  %t1076 = load ptr, ptr %l0, !tbaa !29
  %t1078 = getelementptr %"compiler/views:Viewer", ptr %t1076, i32 0, i32 2
  %t1079 = load i64, ptr %l7, !tbaa !24
  %t1082 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t1078, i64 %t1079)
  store ptr %t1082, ptr %l634
  br label %bb282
bb282:
  %t1083 = load ptr, ptr %l634, !tbaa !29
  %t1085 = getelementptr %"compiler/views:summary", ptr %t1083, i32 0, i32 3
  %t1087 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t1085)
  store i64 %t1087, ptr %l637
  br label %bb283
bb283:
  %t1088 = load i64, ptr %l630, !tbaa !24
  %t1089 = load i64, ptr %l637, !tbaa !24
  %t1090 = icmp slt i64 %t1088, %t1089
  br i1 %t1090, label %bb284, label %bb285
bb284:
  %t1092 = load ptr, ptr %l0, !tbaa !29
  %t1094 = getelementptr %"compiler/views:Viewer", ptr %t1092, i32 0, i32 2
  %t1095 = load i64, ptr %l7, !tbaa !24
  %t1098 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t1094, i64 %t1095)
  store ptr %t1098, ptr %l643
  br label %bb286
bb285:
  store i1 false, ptr %l639, !tbaa !21
  br label %bb288
bb286:
  %t1099 = load ptr, ptr %l643, !tbaa !29
  %t1101 = getelementptr %"compiler/views:summary", ptr %t1099, i32 0, i32 3
  %t1102 = load i64, ptr %l85, !tbaa !24
  %t1105 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1101, i64 %t1102)
  store i1 %t1105, ptr %l647
  br label %bb287
bb287:
  %t1106 = load i1, ptr %l647, !tbaa !21
  store i1 %t1106, ptr %l639, !tbaa !21
  br label %bb288
bb288:
  %t1107 = load i1, ptr %l639, !tbaa !21
  store i1 %t1107, ptr %l629, !tbaa !21
  br label %bb289
bb289:
  %t1108 = load i1, ptr %l629, !tbaa !21
  store i1 %t1108, ptr %l626, !tbaa !21
  br label %bb290
bb290:
  %t1109 = load i1, ptr %l626, !tbaa !21
  store i1 %t1109, ptr %l623, !tbaa !21
  br label %bb291
bb291:
  %t1110 = load i1, ptr %l623, !tbaa !21
  br i1 %t1110, label %bb292, label %bb293
bb292:
  store %olang.scope zeroinitializer, ptr %s57
  %t1113 = load i64, ptr %l85, !tbaa !24
  %t1116 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s57, ptr %l13, i64 %t1113)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1116, ptr %l651
  br label %bb294
bb293:
  br label %bb305
bb294:
  %t1118 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e(ptr %s57, ptr %l651)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1118, ptr %l653
  br label %bb295
bb295:
  %t1119 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l653
  %t1120 = call ptr @__olang_scope_alloc_a(ptr %s57, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1119, ptr %t1120
  store ptr %t1120, ptr %l87, !tbaa !29
  store i64 0, ptr %l88, !tbaa !24
  br label %bb296
bb296:
  %t1122 = load i64, ptr %l88, !tbaa !24
  store i64 %t1122, ptr %l655, !tbaa !24
  %t1123 = load ptr, ptr %l87, !tbaa !29
  %t1125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s57, ptr %t1123)
  store i64 %t1125, ptr %l657
  br label %bb297
bb297:
  %t1126 = load i64, ptr %l655, !tbaa !24
  %t1127 = load i64, ptr %l657, !tbaa !24
  %t1128 = icmp slt i64 %t1126, %t1127
  %t1130 = xor i1 %t1128, true
  br i1 %t1130, label %bb298, label %bb299
bb298:
  br label %bb304
bb299:
  br label %bb300
bb300:
  %t1132 = load ptr, ptr %l87, !tbaa !29
  %t1133 = load i64, ptr %l88, !tbaa !24
  %t1136 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s57, ptr %t1132, i64 %t1133)
  store %"compiler/views:view" %t1136, ptr %l662
  br label %bb301
bb301:
  %t1137 = load %"compiler/views:view", ptr %l662
  %t1138 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t1138, %"compiler/views:view" %t1137)
  br label %bb302
bb302:
  br label %bb303
bb303:
  %t1142 = load i64, ptr %l88, !tbaa !24
  %t1144 = add i64 %t1142, 1
  store i64 %t1144, ptr %l88, !tbaa !24
  br label %bb296
bb304:
  call void @__olang_scope_close(ptr %s57)
  br label %bb305
bb305:
  %t1146 = load i1, ptr %l8, !tbaa !21
  br i1 %t1146, label %bb306, label %bb307
bb306:
  %t1148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1148, ptr %l669, !tbaa !29
  %t1149 = load ptr, ptr %l3, !tbaa !29
  %t1151 = getelementptr %"compiler/typed:Call", ptr %t1149, i32 0, i32 1
  %t1152 = load { i64, ptr }, ptr %t1151, !tbaa !27
  store { i64, ptr } %t1152, ptr %l671, !tbaa !27
  %t1153 = load i64, ptr %l85, !tbaa !24
  %t1155 = getelementptr { i64, ptr }, ptr %l671, i32 0, i32 1
  %t1156 = load ptr, ptr %t1155, !tbaa !27
  %t1157 = getelementptr ptr, ptr %t1156, i64 %t1153
  %t1158 = load ptr, ptr %t1157, !tbaa !39
  %t1160 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1158)
  store i32 %t1160, ptr %l674
  br label %bb308
bb307:
  store i1 false, ptr %l668, !tbaa !21
  br label %bb310
bb308:
  %t1161 = load ptr, ptr %l669, !tbaa !29
  %t1162 = load i32, ptr %l674, !tbaa !23
  %t1163 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estructish(ptr %v0, ptr %t1161, i32 %t1162)
  store i1 %t1163, ptr %l675
  br label %bb309
bb309:
  %t1164 = load i1, ptr %l675, !tbaa !21
  store i1 %t1164, ptr %l668, !tbaa !21
  br label %bb310
bb310:
  %t1165 = load i1, ptr %l668, !tbaa !21
  br i1 %t1165, label %bb311, label %bb312
bb311:
  %t1166 = load ptr, ptr %l0, !tbaa !29
  %t1167 = load i32, ptr %l2, !tbaa !23
  %t1170 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %t1166, i32 %t1167)
  store i1 %t1170, ptr %l679
  br label %bb313
bb312:
  store i1 false, ptr %l676, !tbaa !21
  br label %bb314
bb313:
  %t1171 = load i1, ptr %l679, !tbaa !21
  store i1 %t1171, ptr %l676, !tbaa !21
  br label %bb314
bb314:
  %t1172 = load i1, ptr %l676, !tbaa !21
  br i1 %t1172, label %bb315, label %bb316
bb315:
  store %olang.scope zeroinitializer, ptr %s60
  %t1173 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s60, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1173, ptr %l680
  br label %bb317
bb316:
  br label %bb331
bb317:
  %t1174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l680
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1174, ptr %l90
  %t1175 = load ptr, ptr %l0, !tbaa !29
  %t1176 = load ptr, ptr %l3, !tbaa !29
  %t1178 = getelementptr %"compiler/typed:Call", ptr %t1176, i32 0, i32 1
  %t1179 = load { i64, ptr }, ptr %t1178, !tbaa !27
  store { i64, ptr } %t1179, ptr %l683, !tbaa !27
  %t1180 = load i64, ptr %l85, !tbaa !24
  %t1182 = getelementptr { i64, ptr }, ptr %l683, i32 0, i32 1
  %t1183 = load ptr, ptr %t1182, !tbaa !27
  %t1184 = getelementptr ptr, ptr %t1183, i64 %t1180
  %t1185 = load ptr, ptr %t1184, !tbaa !39
  %t1187 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %s60, ptr %t1175, ptr %t1185, ptr %t1187, ptr %l90)
  br label %bb318
bb318:
  store ptr %l90, ptr %l91, !tbaa !29
  store i64 0, ptr %l92, !tbaa !24
  br label %bb319
bb319:
  store %olang.scope zeroinitializer, ptr %s62
  %t1193 = load i64, ptr %l92, !tbaa !24
  store i64 %t1193, ptr %l690, !tbaa !24
  %t1194 = load ptr, ptr %l91, !tbaa !29
  %t1196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s60, ptr %t1194)
  store i64 %t1196, ptr %l692
  br label %bb320
bb320:
  %t1197 = load i64, ptr %l690, !tbaa !24
  %t1198 = load i64, ptr %l692, !tbaa !24
  %t1199 = icmp slt i64 %t1197, %t1198
  %t1201 = xor i1 %t1199, true
  br i1 %t1201, label %bb321, label %bb322
bb321:
  call void @__olang_scope_close(ptr %s62)
  br label %bb330
bb322:
  br label %bb323
bb323:
  %t1203 = load ptr, ptr %l91, !tbaa !29
  %t1204 = load i64, ptr %l92, !tbaa !24
  %t1207 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s60, ptr %t1203, i64 %t1204)
  store %"compiler/views:place" %t1207, ptr %l697
  br label %bb324
bb324:
  %t1208 = load %"compiler/views:place", ptr %l697
  store %"compiler/views:place" %t1208, ptr %l93
  %t1209 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1209, ptr %l698, !tbaa !29
  %t1210 = getelementptr %"compiler/views:place", ptr %l93, i32 0, i32 0
  %t1211 = load { i64, [2 x i64] }, ptr %t1210
  store { i64, [2 x i64] } %t1211, ptr %l699
  %t1212 = getelementptr %"compiler/views:place", ptr %l93, i32 0, i32 1
  %t1213 = load i64, ptr %t1212, !tbaa !24
  store i64 %t1213, ptr %l700, !tbaa !24
  %t1214 = load ptr, ptr %l0, !tbaa !29
  %t1216 = getelementptr %"compiler/views:Viewer", ptr %t1214, i32 0, i32 3
  %t1217 = getelementptr %"compiler/views:place", ptr %l93, i32 0, i32 1
  %t1218 = load i64, ptr %t1217, !tbaa !24
  %t1221 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s62, ptr %t1216, i64 %t1218)
  store { i64, ptr } %t1221, ptr %l704
  br label %bb325
bb325:
  %t1222 = load { i64, ptr }, ptr %l704, !tbaa !27
  %t1223 = extractvalue { i64, ptr } %t1222, 0
  %t1224 = load { i64, [2 x i64] }, ptr %l699
  %t1225 = load i64, ptr %l700, !tbaa !24
  %t1227 = call %"compiler/views:place" @compiler_2fviews_3aplace_2ector(ptr %s62, { i64, [2 x i64] } %t1224, i64 %t1225, i64 %t1223, i1 true)
  store %"compiler/views:place" %t1227, ptr %l706
  br label %bb326
bb326:
  %t1228 = getelementptr %"compiler/source:Span", ptr %l20, i32 0, i32 0
  %t1229 = load i32, ptr %t1228, !tbaa !23
  %t1231 = sext i32 %t1229 to i64
  %t1232 = load %"compiler/views:place", ptr %l706
  %t1234 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s62, %"compiler/views:place" %t1232, i64 %t1231)
  store %"compiler/views:view" %t1234, ptr %l709
  br label %bb327
bb327:
  %t1235 = load ptr, ptr %l698, !tbaa !29
  %t1236 = load %"compiler/views:view", ptr %l709
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %t1235, %"compiler/views:view" %t1236)
  br label %bb328
bb328:
  call void @__olang_scope_close(ptr %s62)
  br label %bb329
bb329:
  %t1237 = load i64, ptr %l92, !tbaa !24
  %t1239 = add i64 %t1237, 1
  store i64 %t1239, ptr %l92, !tbaa !24
  br label %bb319
bb330:
  call void @__olang_scope_close(ptr %s60)
  br label %bb331
bb331:
  br label %bb332
bb332:
  %t1241 = load i64, ptr %l84, !tbaa !24
  %t1243 = add i64 %t1241, 1
  store i64 %t1243, ptr %l84, !tbaa !24
  br label %bb268
bb333:
  br label %bb334
bb334:
  %t1245 = load i1, ptr %l22, !tbaa !21
  br i1 %t1245, label %bb335, label %bb336
bb335:
  %t1247 = load ptr, ptr %l0, !tbaa !29
  %t1249 = getelementptr %"compiler/views:Viewer", ptr %t1247, i32 0, i32 24
  %t1250 = load i1, ptr %t1249, !tbaa !21
  %t1252 = xor i1 %t1250, true
  store i1 %t1252, ptr %l715, !tbaa !21
  br label %bb337
bb336:
  store i1 false, ptr %l715, !tbaa !21
  br label %bb337
bb337:
  %t1254 = load i1, ptr %l715, !tbaa !21
  br i1 %t1254, label %bb338, label %bb339
bb338:
  %t1255 = load ptr, ptr %l0, !tbaa !29
  %t1257 = getelementptr %"compiler/views:Viewer", ptr %t1255, i32 0, i32 2
  %t1258 = load i64, ptr %l7, !tbaa !24
  %t1261 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v0, ptr %t1257, i64 %t1258)
  store ptr %t1261, ptr %l722
  br label %bb340
bb339:
  br label %bb370
bb340:
  %t1262 = load ptr, ptr %l722, !tbaa !29
  %t1264 = getelementptr %"compiler/views:summary", ptr %t1262, i32 0, i32 2
  store ptr %t1264, ptr %l94, !tbaa !29
  store i64 0, ptr %l95, !tbaa !24
  br label %bb341
bb341:
  store %olang.scope zeroinitializer, ptr %s67
  %t1266 = load i64, ptr %l95, !tbaa !24
  store i64 %t1266, ptr %l725, !tbaa !24
  %t1267 = load ptr, ptr %l94, !tbaa !29
  %t1269 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t1267)
  store i64 %t1269, ptr %l727
  br label %bb342
bb342:
  %t1270 = load i64, ptr %l725, !tbaa !24
  %t1271 = load i64, ptr %l727, !tbaa !24
  %t1272 = icmp slt i64 %t1270, %t1271
  %t1274 = xor i1 %t1272, true
  br i1 %t1274, label %bb343, label %bb344
bb343:
  call void @__olang_scope_close(ptr %s67)
  br label %bb369
bb344:
  br label %bb345
bb345:
  %t1276 = load ptr, ptr %l94, !tbaa !29
  %t1277 = load i64, ptr %l95, !tbaa !24
  %t1280 = call %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %t1276, i64 %t1277)
  store %"compiler/views:fact" %t1280, ptr %l732
  br label %bb346
bb346:
  %t1281 = load %"compiler/views:fact", ptr %l732
  store %"compiler/views:fact" %t1281, ptr %l96
  %t1282 = getelementptr %"compiler/views:fact", ptr %l96, i32 0, i32 0
  %t1283 = load i64, ptr %t1282, !tbaa !24
  %t1285 = icmp slt i64 %t1283, 0
  br i1 %t1285, label %bb347, label %bb348
bb347:
  store i1 true, ptr %l735, !tbaa !21
  br label %bb349
bb348:
  %t1287 = getelementptr %"compiler/views:fact", ptr %l96, i32 0, i32 0
  %t1288 = load i64, ptr %t1287, !tbaa !24
  %t1289 = load i64, ptr %l12, !tbaa !24
  %t1292 = icmp sge i64 %t1288, %t1289
  store i1 %t1292, ptr %l735, !tbaa !21
  br label %bb349
bb349:
  %t1294 = load i1, ptr %l735, !tbaa !21
  br i1 %t1294, label %bb350, label %bb351
bb350:
  store i1 true, ptr %l739, !tbaa !21
  br label %bb352
bb351:
  %t1295 = getelementptr %"compiler/views:fact", ptr %l96, i32 0, i32 8
  %t1296 = load i64, ptr %t1295, !tbaa !24
  %t1298 = icmp slt i64 %t1296, 0
  store i1 %t1298, ptr %l739, !tbaa !21
  br label %bb352
bb352:
  %t1300 = load i1, ptr %l739, !tbaa !21
  br i1 %t1300, label %bb353, label %bb354
bb353:
  store i1 true, ptr %l742, !tbaa !21
  br label %bb355
bb354:
  %t1301 = getelementptr %"compiler/views:fact", ptr %l96, i32 0, i32 8
  %t1302 = load i64, ptr %t1301, !tbaa !24
  %t1303 = load i64, ptr %l12, !tbaa !24
  %t1306 = icmp sge i64 %t1302, %t1303
  store i1 %t1306, ptr %l742, !tbaa !21
  br label %bb355
bb355:
  %t1308 = load i1, ptr %l742, !tbaa !21
  br i1 %t1308, label %bb356, label %bb357
bb356:
  store i1 true, ptr %l746, !tbaa !21
  br label %bb360
bb357:
  %t1309 = getelementptr %"compiler/views:fact", ptr %l96, i32 0, i32 0
  %t1310 = load i64, ptr %t1309, !tbaa !24
  %t1313 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s0, ptr %l13, i64 %t1310)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1313, ptr %l749
  br label %bb358
bb358:
  %t1315 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %l749)
  store i64 %t1315, ptr %l751
  br label %bb359
bb359:
  %t1316 = load i64, ptr %l751, !tbaa !24
  %t1317 = icmp eq i64 %t1316, 0
  store i1 %t1317, ptr %l746, !tbaa !21
  br label %bb360
bb360:
  %t1319 = load i1, ptr %l746, !tbaa !21
  br i1 %t1319, label %bb361, label %bb362
bb361:
  call void @__olang_scope_close(ptr %s67)
  br label %bb368
bb362:
  br label %bb363
bb363:
  %t1320 = load ptr, ptr %l3, !tbaa !29
  %t1322 = getelementptr %"compiler/typed:Call", ptr %t1320, i32 0, i32 1
  %t1323 = load { i64, ptr }, ptr %t1322, !tbaa !27
  store { i64, ptr } %t1323, ptr %l754, !tbaa !27
  %t1324 = getelementptr %"compiler/views:fact", ptr %l96, i32 0, i32 8
  %t1325 = load i64, ptr %t1324, !tbaa !24
  %t1327 = getelementptr { i64, ptr }, ptr %l754, i32 0, i32 1
  %t1328 = load ptr, ptr %t1327, !tbaa !27
  %t1329 = getelementptr ptr, ptr %t1328, i64 %t1325
  %t1330 = load ptr, ptr %t1329, !tbaa !39
  store ptr %t1330, ptr %l97, !tbaa !29
  %t1332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1332, ptr %l757, !tbaa !29
  %t1333 = load ptr, ptr %l97, !tbaa !29
  %t1335 = call ptr @compiler_2fviews_2eargPlace(ptr %v1, ptr %v1, ptr %t1333)
  store ptr %t1335, ptr %l759
  br label %bb364
bb364:
  %t1336 = load ptr, ptr %l97, !tbaa !29
  %t1338 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1336)
  store i32 %t1338, ptr %l761
  br label %bb365
bb365:
  %t1339 = getelementptr %"compiler/views:fact", ptr %l96, i32 0, i32 0
  %t1340 = load i64, ptr %t1339, !tbaa !24
  %t1343 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %s0, ptr %s0, ptr %l13, i64 %t1340)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1343, ptr %l764
  br label %bb366
bb366:
  %t1344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l764
  %t1345 = call ptr @__olang_scope_alloc_a(ptr %s67, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1344, ptr %t1345
  %t1346 = load ptr, ptr %l4, !tbaa !29
  %t1347 = load ptr, ptr %l757, !tbaa !29
  %t1348 = load ptr, ptr %l759, !tbaa !29
  %t1349 = load i32, ptr %l761, !tbaa !23
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %s0, ptr %v2, ptr %t1347, ptr %t1348, i32 %t1349, ptr %t1345, ptr %t1346)
  br label %bb367
bb367:
  call void @__olang_scope_close(ptr %s67)
  br label %bb368
bb368:
  %t1352 = load i64, ptr %l95, !tbaa !24
  %t1354 = add i64 %t1352, 1
  store i64 %t1354, ptr %l95, !tbaa !24
  br label %bb341
bb369:
  br label %bb370
bb370:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %l69 = alloca ptr
  %l72 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i64
  %l101 = alloca i64
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
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/views:Viewer", ptr %t86, i32 0, i32 13
  call void @compiler_2fviews_2ecalls(ptr %v0, ptr %v0, ptr %t85, ptr %t88)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/views:Viewer", ptr %t91, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t93, i64 -1)
  br label %bb19
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/views:Viewer", ptr %t95, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t97, i64 0)
  br label %bb20
bb20:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/views:Viewer", ptr %t99, i32 0, i32 16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t101, i1 false)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t103 = load i64, ptr %l6, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l6, !tbaa !24
  br label %bb8
bb23:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/views:Viewer", ptr %t107, i32 0, i32 12
  store ptr %t109, ptr %l69, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/views:Viewer", ptr %t110, i32 0, i32 13
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l72
  br label %bb24
bb24:
  %t115 = load ptr, ptr %l69, !tbaa !29
  %t116 = load i64, ptr %l72, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t115, i64 %t116)
  br label %bb25
bb25:
  store i64 0, ptr %l9, !tbaa !24
  %t117 = load i64, ptr %l1, !tbaa !24
  store i64 %t117, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t120 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp sgt i64 %t119, %t120
  br i1 %t123, label %bb26, label %bb27
bb26:
  %t125 = load i64, ptr %l11, !tbaa !24
  %t127 = icmp sgt i64 %t125, 0
  br i1 %t127, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb31
bb28:
  %t129 = load i64, ptr %l10, !tbaa !24
  %t130 = load i64, ptr %l9, !tbaa !24
  %t133 = sub i64 %t129, %t130
  %t134 = load i64, ptr %l11, !tbaa !24
  %t137 = add i64 %t133, %t134
  %t139 = sub i64 %t137, 1
  %t140 = load i64, ptr %l11, !tbaa !24
  %t143 = sdiv i64 %t139, %t140
  store i64 %t143, ptr %l80, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb30
bb30:
  %t145 = load i64, ptr %l80, !tbaa !24
  store i64 %t145, ptr %l77, !tbaa !24
  br label %bb31
bb31:
  %t146 = load i64, ptr %l77, !tbaa !24
  store i64 %t146, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb32
bb32:
  %t147 = load i64, ptr %l13, !tbaa !24
  %t148 = load i64, ptr %l12, !tbaa !24
  %t151 = icmp slt i64 %t147, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb33, label %bb34
bb33:
  br label %bb42
bb34:
  br label %bb35
bb35:
  %t155 = load i64, ptr %l9, !tbaa !24
  %t156 = load i64, ptr %l13, !tbaa !24
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = mul i64 %t156, %t157
  %t163 = add i64 %t155, %t160
  store i64 %t163, ptr %l14, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/views:Viewer", ptr %t165, i32 0, i32 14
  %t168 = load i64, ptr %l14, !tbaa !24
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t167, i64 %t168)
  store i64 %t171, ptr %l101
  br label %bb36
bb36:
  %t172 = load i64, ptr %l101, !tbaa !24
  %t173 = icmp slt i64 %t172, 0
  br i1 %t173, label %bb37, label %bb38
bb37:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2evisit(ptr %v0, ptr %t175, i64 %t176)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t179 = load i64, ptr %l13, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l13, !tbaa !24
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
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca i64
  %l71 = alloca i1
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca ptr
  %l77 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l100 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca i32
  %l107 = alloca i1
  %l109 = alloca i64
  %l111 = alloca i64
  %l116 = alloca %"compiler/views:place"
  %l117 = alloca ptr
  %l121 = alloca %"compiler/views:view"
  %l124 = alloca ptr
  %l125 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i1
  %l177 = alloca { i64, ptr }
  %l192 = alloca ptr
  %l193 = alloca i1
  %l208 = alloca ptr
  %l209 = alloca i1
  %l221 = alloca i64
  %l224 = alloca i64
  %l242 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l244 = alloca { i64, ptr }
  %l251 = alloca i1
  %l252 = alloca i1
  %l256 = alloca i64
  %l258 = alloca i64
  %l263 = alloca %"compiler/views:view"
  %l270 = alloca ptr
  %l271 = alloca i1
  %l296 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l302 = alloca i32
  %l304 = alloca i1
  %l306 = alloca i64
  %l308 = alloca i64
  %l313 = alloca %"compiler/views:place"
  %l314 = alloca ptr
  %l318 = alloca %"compiler/views:view"
  %l321 = alloca ptr
  %l322 = alloca i1
  %l334 = alloca %"compiler/views:state"
  %l336 = alloca %"compiler/views:state"
  %l338 = alloca %"compiler/views:state"
  %l340 = alloca %"compiler/views:state"
  %l356 = alloca ptr
  %l357 = alloca i1
  %l370 = alloca { i64, ptr }
  %l384 = alloca ptr
  %l385 = alloca i1
  %l394 = alloca ptr
  %l395 = alloca i1
  %l410 = alloca ptr
  %l411 = alloca i1
  %l416 = alloca ptr
  %l417 = alloca i1
  %l429 = alloca { i64, ptr }
  %l440 = alloca ptr
  %l441 = alloca i1
  %l451 = alloca ptr
  %l452 = alloca i1
  %l465 = alloca { i64, ptr }
  %l468 = alloca ptr
  %l469 = alloca i1
  %l481 = alloca ptr
  %l482 = alloca i1
  %l492 = alloca ptr
  %l494 = alloca i32
  %l495 = alloca i1
  %l497 = alloca i64
  %l499 = alloca i64
  %l504 = alloca %"compiler/views:view"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %t553 = alloca %"compiler/views:state", align 8
  %t555 = alloca %"compiler/views:state", align 8
  %t558 = alloca %"compiler/views:state", align 8
  %t560 = alloca %"compiler/views:state", align 8
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
  store i1 true, ptr %l71, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/views:state", ptr %t5, i32 0, i32 0
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l71, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l71, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l74
  br label %bb7
bb7:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l4
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l75
  br label %bb8
bb8:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l5
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t16 = load ptr, ptr %l76, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l76, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 2
  store i1 %t22, ptr %l77, !tbaa !21
  br label %bb10
bb10:
  %t23 = load i1, ptr %l77, !tbaa !21
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
  br label %bb251
bb15:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t39 = load ptr, ptr %l87, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t42 = load ptr, ptr %l87, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l88, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l88, !tbaa !21
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
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l100
  br label %bb22
bb22:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l9
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l8, !tbaa !29
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t76 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferElem(ptr %v0, ptr %v1, ptr %v2, ptr %s3, ptr %t69, ptr %t70, ptr %t71, ptr %l9)
  store i32 %t76, ptr %l105
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb24, label %ok.78, !prof !99
ok.78:
  br label %bb23
bb23:
  br label %bb26
bb24:
  %t79 = load i32, ptr %l105, !tbaa !23
  %t80 = ashr i32 %t79, 16
  %t82 = icmp eq i32 %t80, 1
  store i1 %t82, ptr %l107, !tbaa !21
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
  store i64 %t84, ptr %l109, !tbaa !24
  %t85 = load ptr, ptr %l10, !tbaa !29
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s3, ptr %t85)
  store i64 %t87, ptr %l111
  br label %bb28
bb28:
  %t88 = load i64, ptr %l109, !tbaa !24
  %t89 = load i64, ptr %l111, !tbaa !24
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
  store %"compiler/views:place" %t98, ptr %l116
  br label %bb32
bb32:
  %t99 = load %"compiler/views:place", ptr %l116
  store ptr %l4, ptr %l117, !tbaa !29
  %t101 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t104 = sext i32 %t102 to i64
  %t107 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s6, %"compiler/views:place" %t99, i64 %t104)
  store %"compiler/views:view" %t107, ptr %l121
  br label %bb33
bb33:
  %t108 = load ptr, ptr %l117, !tbaa !29
  %t109 = load %"compiler/views:view", ptr %l121
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
  br label %bb251
bb37:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t115 = load ptr, ptr %l124, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb38, label %bb39
bb38:
  %t118 = load ptr, ptr %l124, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 18}
  %t121 = icmp eq i64 %t119, 4
  store i1 %t121, ptr %l125, !tbaa !21
  br label %bb39
bb39:
  %t122 = load i1, ptr %l125, !tbaa !21
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
  br label %bb251
bb44:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t138 = load ptr, ptr %l135, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb45, label %bb46
bb45:
  %t141 = load ptr, ptr %l135, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 18}
  %t144 = icmp eq i64 %t142, 5
  store i1 %t144, ptr %l136, !tbaa !21
  br label %bb46
bb46:
  %t145 = load i1, ptr %l136, !tbaa !21
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
  br label %bb251
bb51:
  %t163 = load ptr, ptr %l1, !tbaa !29
  store ptr %t163, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t164 = load ptr, ptr %l147, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb52, label %bb53
bb52:
  %t167 = load ptr, ptr %l147, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 18}
  %t170 = icmp eq i64 %t168, 6
  store i1 %t170, ptr %l148, !tbaa !21
  br label %bb53
bb53:
  %t171 = load i1, ptr %l148, !tbaa !21
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
  br label %bb251
bb58:
  %t201 = load ptr, ptr %l1, !tbaa !29
  store ptr %t201, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t202 = load ptr, ptr %l163, !tbaa !29
  %t203 = icmp ne ptr %t202, null
  br i1 %t203, label %bb59, label %bb60
bb59:
  %t205 = load ptr, ptr %l163, !tbaa !29
  %t206 = load i64, ptr %t205, !range !{i64 0, i64 18}
  %t208 = icmp eq i64 %t206, 7
  store i1 %t208, ptr %l164, !tbaa !21
  br label %bb60
bb60:
  %t209 = load i1, ptr %l164, !tbaa !21
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
  store { i64, ptr } %t233, ptr %l177, !tbaa !27
  %t234 = load i64, ptr %l20, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
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
  br label %bb251
bb72:
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %l192, !tbaa !29
  store i1 false, ptr %l193, !tbaa !21
  %t264 = load ptr, ptr %l192, !tbaa !29
  %t265 = icmp ne ptr %t264, null
  br i1 %t265, label %bb73, label %bb74
bb73:
  %t267 = load ptr, ptr %l192, !tbaa !29
  %t268 = load i64, ptr %t267, !range !{i64 0, i64 18}
  %t270 = icmp eq i64 %t268, 8
  store i1 %t270, ptr %l193, !tbaa !21
  br label %bb74
bb74:
  %t271 = load i1, ptr %l193, !tbaa !21
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
  br label %bb251
bb80:
  %t298 = load ptr, ptr %l1, !tbaa !29
  store ptr %t298, ptr %l208, !tbaa !29
  store i1 false, ptr %l209, !tbaa !21
  %t299 = load ptr, ptr %l208, !tbaa !29
  %t300 = icmp ne ptr %t299, null
  br i1 %t300, label %bb81, label %bb82
bb81:
  %t302 = load ptr, ptr %l208, !tbaa !29
  %t303 = load i64, ptr %t302, !range !{i64 0, i64 18}
  %t305 = icmp eq i64 %t303, 9
  store i1 %t305, ptr %l209, !tbaa !21
  br label %bb82
bb82:
  %t306 = load i1, ptr %l209, !tbaa !21
  br i1 %t306, label %bb83, label %bb84
bb83:
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr { i64, [5 x i64] }, ptr %t307, i32 0, i32 1
  %t310 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t309, i32 0, i32 2
  %t311 = load i32, ptr %t310, !range !{i32 0, i32 52}
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
  store i64 0, ptr %l221, !tbaa !24
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
  store i64 %t347, ptr %l224, !tbaa !24
  br label %bb90
bb89:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb90
bb90:
  %t349 = load i64, ptr %l224, !tbaa !24
  store i64 %t349, ptr %l221, !tbaa !24
  br label %bb91
bb91:
  %t350 = load i64, ptr %l221, !tbaa !24
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
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t369, ptr %l242
  br label %bb96
bb96:
  %t370 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l242
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t370, ptr %l32
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t372, ptr %l244, !tbaa !27
  %t373 = load i64, ptr %l31, !tbaa !24
  %t375 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !27
  %t377 = getelementptr ptr, ptr %t376, i64 %t373
  %t378 = load ptr, ptr %t377, !tbaa !39
  %t380 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s18, ptr %t371, ptr %t378, ptr %t380, ptr %l32)
  br label %bb97
bb97:
  %t385 = load i32, ptr %l24, !range !{i32 0, i32 52}
  %t387 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t385)
  store i1 %t387, ptr %l251
  br label %bb98
bb98:
  %t388 = load i1, ptr %l251, !tbaa !21
  br i1 %t388, label %bb99, label %bb100
bb99:
  %t389 = load i64, ptr %l31, !tbaa !24
  %t391 = icmp eq i64 %t389, 0
  store i1 %t391, ptr %l252, !tbaa !21
  br label %bb101
bb100:
  store i1 false, ptr %l252, !tbaa !21
  br label %bb101
bb101:
  %t393 = load i1, ptr %l252, !tbaa !21
  br i1 %t393, label %bb102, label %bb103
bb102:
  store ptr %l32, ptr %l33, !tbaa !29
  store i64 0, ptr %l34, !tbaa !24
  br label %bb104
bb103:
  br label %bb113
bb104:
  %t395 = load i64, ptr %l34, !tbaa !24
  store i64 %t395, ptr %l256, !tbaa !24
  %t396 = load ptr, ptr %l33, !tbaa !29
  %t398 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s18, ptr %t396)
  store i64 %t398, ptr %l258
  br label %bb105
bb105:
  %t399 = load i64, ptr %l256, !tbaa !24
  %t400 = load i64, ptr %l258, !tbaa !24
  %t401 = icmp slt i64 %t399, %t400
  %t403 = xor i1 %t401, true
  br i1 %t403, label %bb106, label %bb107
bb106:
  br label %bb112
bb107:
  br label %bb108
bb108:
  %t405 = load ptr, ptr %l33, !tbaa !29
  %t406 = load i64, ptr %l34, !tbaa !24
  %t409 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s18, ptr %t405, i64 %t406)
  store %"compiler/views:view" %t409, ptr %l263
  br label %bb109
bb109:
  %t410 = load %"compiler/views:view", ptr %l263
  call void @compiler_2fviews_2eviewAdd(ptr %s0, ptr %l4, %"compiler/views:view" %t410)
  br label %bb110
bb110:
  br label %bb111
bb111:
  %t414 = load i64, ptr %l34, !tbaa !24
  %t416 = add i64 %t414, 1
  store i64 %t416, ptr %l34, !tbaa !24
  br label %bb104
bb112:
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s18)
  br label %bb114
bb114:
  %t418 = load i64, ptr %l30, !tbaa !24
  %t420 = add i64 %t418, 1
  store i64 %t420, ptr %l30, !tbaa !24
  br label %bb92
bb115:
  br label %bb251
bb116:
  %t422 = load ptr, ptr %l1, !tbaa !29
  store ptr %t422, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t423 = load ptr, ptr %l270, !tbaa !29
  %t424 = icmp ne ptr %t423, null
  br i1 %t424, label %bb117, label %bb118
bb117:
  %t426 = load ptr, ptr %l270, !tbaa !29
  %t427 = load i64, ptr %t426, !range !{i64 0, i64 18}
  %t429 = icmp eq i64 %t427, 10
  store i1 %t429, ptr %l271, !tbaa !21
  br label %bb118
bb118:
  %t430 = load i1, ptr %l271, !tbaa !21
  br i1 %t430, label %bb119, label %bb120
bb119:
  %t431 = load ptr, ptr %l1, !tbaa !29
  %t433 = getelementptr { i64, [5 x i64] }, ptr %t431, i32 0, i32 1
  %t434 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t433, i32 0, i32 0
  %t435 = load %"compiler/source:Span", ptr %t434
  store %"compiler/source:Span" %t435, ptr %l36
  %t437 = load ptr, ptr %l1, !tbaa !29
  %t439 = getelementptr { i64, [5 x i64] }, ptr %t437, i32 0, i32 1
  %t440 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t439, i32 0, i32 2
  %t441 = load ptr, ptr %t440
  store ptr %t441, ptr %l37, !tbaa !29
  br label %bb121
bb120:
  br label %bb140
bb121:
  store %olang.scope zeroinitializer, ptr %s24
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load ptr, ptr %l37, !tbaa !29
  %t446 = getelementptr %"compiler/typed:Slice", ptr %t444, i32 0, i32 0
  %t447 = load ptr, ptr %t446, !tbaa !29
  %t449 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t443, ptr %t447, i1 false, ptr %t449, ptr %l4)
  br label %bb122
bb122:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load ptr, ptr %l37, !tbaa !29
  %t457 = getelementptr %"compiler/typed:Slice", ptr %t455, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t460 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t454, ptr %t458, ptr %t460, ptr %l5)
  br label %bb123
bb123:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t466 = load ptr, ptr %l37, !tbaa !29
  %t468 = getelementptr %"compiler/typed:Slice", ptr %t466, i32 0, i32 2
  %t469 = load ptr, ptr %t468, !tbaa !29
  %t471 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t465, ptr %t469, ptr %t471, ptr %l5)
  br label %bb124
bb124:
  %t476 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %s24, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t476, ptr %l296
  br label %bb125
bb125:
  %t477 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l296
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t477, ptr %l38
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load ptr, ptr %l37, !tbaa !29
  %t481 = getelementptr %"compiler/typed:Slice", ptr %t479, i32 0, i32 0
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t483 = load ptr, ptr %l2, !tbaa !29
  %t488 = call i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferOf(ptr %v0, ptr %v1, ptr %v2, ptr %s24, ptr %t478, ptr %t482, ptr %t483, ptr %l38)
  store i32 %t488, ptr %l302
  %t489 = icmp ne i32 %t488, 0
  br i1 %t489, label %bb127, label %ok.490, !prof !99
ok.490:
  br label %bb126
bb126:
  br label %bb129
bb127:
  %t491 = load i32, ptr %l302, !tbaa !23
  %t492 = ashr i32 %t491, 16
  %t494 = icmp eq i32 %t492, 1
  store i1 %t494, ptr %l304, !tbaa !21
  br label %bb128
bb128:
  br label %bb129
bb129:
  store ptr %l38, ptr %l39, !tbaa !29
  store i64 0, ptr %l40, !tbaa !24
  br label %bb130
bb130:
  store %olang.scope zeroinitializer, ptr %s27
  %t496 = load i64, ptr %l40, !tbaa !24
  store i64 %t496, ptr %l306, !tbaa !24
  %t497 = load ptr, ptr %l39, !tbaa !29
  %t499 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %s24, ptr %t497)
  store i64 %t499, ptr %l308
  br label %bb131
bb131:
  %t500 = load i64, ptr %l306, !tbaa !24
  %t501 = load i64, ptr %l308, !tbaa !24
  %t502 = icmp slt i64 %t500, %t501
  %t504 = xor i1 %t502, true
  br i1 %t504, label %bb132, label %bb133
bb132:
  call void @__olang_scope_close(ptr %s27)
  br label %bb139
bb133:
  br label %bb134
bb134:
  %t506 = load ptr, ptr %l39, !tbaa !29
  %t507 = load i64, ptr %l40, !tbaa !24
  %t510 = call %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %s24, ptr %t506, i64 %t507)
  store %"compiler/views:place" %t510, ptr %l313
  br label %bb135
bb135:
  %t511 = load %"compiler/views:place", ptr %l313
  store ptr %l4, ptr %l314, !tbaa !29
  %t513 = getelementptr %"compiler/source:Span", ptr %l36, i32 0, i32 0
  %t514 = load i32, ptr %t513, !tbaa !23
  %t516 = sext i32 %t514 to i64
  %t519 = call %"compiler/views:view" @compiler_2fviews_3aview_2ector(ptr %s27, %"compiler/views:place" %t511, i64 %t516)
  store %"compiler/views:view" %t519, ptr %l318
  br label %bb136
bb136:
  %t520 = load ptr, ptr %l314, !tbaa !29
  %t521 = load %"compiler/views:view", ptr %l318
  call void @compiler_2fviews_2eviewAdd(ptr %s0, ptr %t520, %"compiler/views:view" %t521)
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s27)
  br label %bb138
bb138:
  %t522 = load i64, ptr %l40, !tbaa !24
  %t524 = add i64 %t522, 1
  store i64 %t524, ptr %l40, !tbaa !24
  br label %bb130
bb139:
  call void @__olang_scope_close(ptr %s24)
  br label %bb251
bb140:
  %t526 = load ptr, ptr %l1, !tbaa !29
  store ptr %t526, ptr %l321, !tbaa !29
  store i1 false, ptr %l322, !tbaa !21
  %t527 = load ptr, ptr %l321, !tbaa !29
  %t528 = icmp ne ptr %t527, null
  br i1 %t528, label %bb141, label %bb142
bb141:
  %t530 = load ptr, ptr %l321, !tbaa !29
  %t531 = load i64, ptr %t530, !range !{i64 0, i64 18}
  %t533 = icmp eq i64 %t531, 11
  store i1 %t533, ptr %l322, !tbaa !21
  br label %bb142
bb142:
  %t534 = load i1, ptr %l322, !tbaa !21
  br i1 %t534, label %bb143, label %bb144
bb143:
  %t535 = load ptr, ptr %l1, !tbaa !29
  %t537 = getelementptr { i64, [5 x i64] }, ptr %t535, i32 0, i32 1
  %t538 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t537, i32 0, i32 2
  %t539 = load ptr, ptr %t538
  store ptr %t539, ptr %l42, !tbaa !29
  br label %bb145
bb144:
  br label %bb155
bb145:
  store %olang.scope zeroinitializer, ptr %s29
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load ptr, ptr %l42, !tbaa !29
  %t544 = getelementptr %"compiler/typed:Cond", ptr %t542, i32 0, i32 0
  %t545 = load ptr, ptr %t544, !tbaa !29
  %t547 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t541, ptr %t545, ptr %t547, ptr %l5)
  br label %bb146
bb146:
  %t552 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t553, ptr %v2, ptr %s29, ptr %t552)
  call void @llvm.memmove.p0.p0.i64(ptr %l334, ptr %t553, i64 136, i1 false)
  br label %bb147
bb147:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t555, ptr %s29, ptr %l334)
  call void @llvm.memmove.p0.p0.i64(ptr %l336, ptr %t555, i64 136, i1 false)
  br label %bb148
bb148:
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %l336, i64 136, i1 false)
  %t557 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %t558, ptr %v2, ptr %s29, ptr %t557)
  call void @llvm.memmove.p0.p0.i64(ptr %l338, ptr %t558, i64 136, i1 false)
  br label %bb149
bb149:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3astate(ptr %t560, ptr %s29, ptr %l338)
  call void @llvm.memmove.p0.p0.i64(ptr %l340, ptr %t560, i64 136, i1 false)
  br label %bb150
bb150:
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %l340, i64 136, i1 false)
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t563 = load ptr, ptr %l42, !tbaa !29
  %t565 = getelementptr %"compiler/typed:Cond", ptr %t563, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %s29, ptr %s0, ptr %t562, ptr %t566, ptr %l43, ptr %l4)
  br label %bb151
bb151:
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t572 = load ptr, ptr %l42, !tbaa !29
  %t574 = getelementptr %"compiler/typed:Cond", ptr %t572, i32 0, i32 2
  %t575 = load ptr, ptr %t574, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %s29, ptr %s0, ptr %t571, ptr %t575, ptr %l44, ptr %l4)
  br label %bb152
bb152:
  call void @compiler_2fviews_2emerge(ptr %s29, ptr %s29, ptr %l43, ptr %l44)
  br label %bb153
bb153:
  %t583 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3astate_2eset(ptr %v2, ptr %s29, ptr %t583, ptr %l43)
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s29)
  br label %bb251
bb155:
  %t586 = load ptr, ptr %l1, !tbaa !29
  store ptr %t586, ptr %l356, !tbaa !29
  store i1 false, ptr %l357, !tbaa !21
  %t587 = load ptr, ptr %l356, !tbaa !29
  %t588 = icmp ne ptr %t587, null
  br i1 %t588, label %bb156, label %bb157
bb156:
  %t590 = load ptr, ptr %l356, !tbaa !29
  %t591 = load i64, ptr %t590, !range !{i64 0, i64 18}
  %t593 = icmp eq i64 %t591, 12
  store i1 %t593, ptr %l357, !tbaa !21
  br label %bb157
bb157:
  %t594 = load i1, ptr %l357, !tbaa !21
  br i1 %t594, label %bb158, label %bb159
bb158:
  %t595 = load ptr, ptr %l1, !tbaa !29
  %t597 = getelementptr { i64, [5 x i64] }, ptr %t595, i32 0, i32 1
  %t598 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t597, i32 0, i32 2
  %t599 = load ptr, ptr %t598
  store ptr %t599, ptr %l45, !tbaa !29
  br label %bb160
bb159:
  br label %bb169
bb160:
  %t601 = load ptr, ptr %l45, !tbaa !29
  %t603 = getelementptr %"compiler/typed:Seq", ptr %t601, i32 0, i32 0
  %t604 = load { i64, ptr }, ptr %t603, !tbaa !27
  store { i64, ptr } %t604, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t606 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t608 = extractvalue { i64, ptr } %t606, 0
  store i64 %t608, ptr %l48, !tbaa !24
  br label %bb161
bb161:
  %t610 = load i64, ptr %l47, !tbaa !24
  %t611 = load i64, ptr %l48, !tbaa !24
  %t614 = icmp slt i64 %t610, %t611
  %t616 = xor i1 %t614, true
  br i1 %t616, label %bb162, label %bb163
bb162:
  br label %bb167
bb163:
  br label %bb164
bb164:
  %t618 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t618, ptr %l370, !tbaa !27
  %t619 = load i64, ptr %l47, !tbaa !24
  %t621 = getelementptr { i64, ptr }, ptr %l370, i32 0, i32 1
  %t622 = load ptr, ptr %t621, !tbaa !27
  %t623 = getelementptr ptr, ptr %t622, i64 %t619
  %t624 = load ptr, ptr %t623, !tbaa !39
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t629 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %t626, ptr %t624, ptr %t629)
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t633 = load i64, ptr %l47, !tbaa !24
  %t635 = add i64 %t633, 1
  store i64 %t635, ptr %l47, !tbaa !24
  br label %bb161
bb167:
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t638 = load ptr, ptr %l45, !tbaa !29
  %t640 = getelementptr %"compiler/typed:Seq", ptr %t638, i32 0, i32 1
  %t641 = load ptr, ptr %t640, !tbaa !29
  %t642 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t637, ptr %t641, ptr %t642, ptr %l4)
  br label %bb168
bb168:
  br label %bb251
bb169:
  %t647 = load ptr, ptr %l1, !tbaa !29
  store ptr %t647, ptr %l384, !tbaa !29
  store i1 false, ptr %l385, !tbaa !21
  %t648 = load ptr, ptr %l384, !tbaa !29
  %t649 = icmp ne ptr %t648, null
  br i1 %t649, label %bb170, label %bb171
bb170:
  %t651 = load ptr, ptr %l384, !tbaa !29
  %t652 = load i64, ptr %t651, !range !{i64 0, i64 18}
  %t654 = icmp eq i64 %t652, 13
  store i1 %t654, ptr %l385, !tbaa !21
  br label %bb171
bb171:
  %t655 = load i1, ptr %l385, !tbaa !21
  br i1 %t655, label %bb172, label %bb173
bb172:
  %t656 = load ptr, ptr %l1, !tbaa !29
  %t658 = getelementptr { i64, [5 x i64] }, ptr %t656, i32 0, i32 1
  %t659 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t658, i32 0, i32 2
  %t660 = load ptr, ptr %t659
  store ptr %t660, ptr %l50, !tbaa !29
  br label %bb174
bb173:
  br label %bb176
bb174:
  %t662 = load ptr, ptr %l0, !tbaa !29
  %t663 = load ptr, ptr %l50, !tbaa !29
  %t664 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ematchOf(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t662, ptr %t663, ptr %t664, ptr %l4)
  br label %bb175
bb175:
  br label %bb251
bb176:
  %t669 = load ptr, ptr %l1, !tbaa !29
  store ptr %t669, ptr %l394, !tbaa !29
  store i1 false, ptr %l395, !tbaa !21
  %t670 = load ptr, ptr %l394, !tbaa !29
  %t671 = icmp ne ptr %t670, null
  br i1 %t671, label %bb177, label %bb178
bb177:
  %t673 = load ptr, ptr %l394, !tbaa !29
  %t674 = load i64, ptr %t673, !range !{i64 0, i64 18}
  %t676 = icmp eq i64 %t674, 14
  store i1 %t676, ptr %l395, !tbaa !21
  br label %bb178
bb178:
  %t677 = load i1, ptr %l395, !tbaa !21
  br i1 %t677, label %bb179, label %bb180
bb179:
  %t678 = load ptr, ptr %l1, !tbaa !29
  %t680 = getelementptr { i64, [5 x i64] }, ptr %t678, i32 0, i32 1
  %t681 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t680, i32 0, i32 2
  %t682 = load ptr, ptr %t681
  store ptr %t682, ptr %l51, !tbaa !29
  br label %bb181
bb180:
  br label %bb184
bb181:
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load ptr, ptr %l51, !tbaa !29
  %t687 = getelementptr %"compiler/typed:Try", ptr %t685, i32 0, i32 0
  %t688 = load ptr, ptr %t687, !tbaa !29
  %t689 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t684, ptr %t688, ptr %t689, ptr %l4)
  br label %bb182
bb182:
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t695 = load ptr, ptr %l51, !tbaa !29
  %t697 = getelementptr %"compiler/typed:Try", ptr %t695, i32 0, i32 1
  %t698 = load { i64, ptr }, ptr %t697, !tbaa !27
  %t699 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t694, { i64, ptr } %t698, ptr %t699, ptr %l4)
  br label %bb183
bb183:
  br label %bb251
bb184:
  %t704 = load ptr, ptr %l1, !tbaa !29
  store ptr %t704, ptr %l410, !tbaa !29
  store i1 false, ptr %l411, !tbaa !21
  %t705 = load ptr, ptr %l410, !tbaa !29
  %t706 = icmp ne ptr %t705, null
  br i1 %t706, label %bb185, label %bb186
bb185:
  %t708 = load ptr, ptr %l410, !tbaa !29
  %t709 = load i64, ptr %t708, !range !{i64 0, i64 18}
  %t711 = icmp eq i64 %t709, 15
  store i1 %t711, ptr %l411, !tbaa !21
  br label %bb186
bb186:
  %t712 = load i1, ptr %l411, !tbaa !21
  br i1 %t712, label %bb187, label %bb188
bb187:
  %t713 = load ptr, ptr %l1, !tbaa !29
  %t715 = getelementptr { i64, [5 x i64] }, ptr %t713, i32 0, i32 1
  %t716 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t715, i32 0, i32 2
  %t717 = load ptr, ptr %t716
  store ptr %t717, ptr %l52, !tbaa !29
  br label %bb189
bb188:
  br label %bb215
bb189:
  %t719 = load ptr, ptr %l52, !tbaa !29
  store ptr %t719, ptr %l416, !tbaa !29
  store i1 false, ptr %l417, !tbaa !21
  %t720 = load ptr, ptr %l416, !tbaa !29
  %t721 = icmp ne ptr %t720, null
  br i1 %t721, label %bb190, label %bb191
bb190:
  %t723 = load ptr, ptr %l416, !tbaa !29
  %t724 = load i64, ptr %t723, !range !{i64 0, i64 3}
  %t726 = icmp eq i64 %t724, 1
  store i1 %t726, ptr %l417, !tbaa !21
  br label %bb191
bb191:
  %t727 = load i1, ptr %l417, !tbaa !21
  br i1 %t727, label %bb192, label %bb193
bb192:
  %t728 = load ptr, ptr %l52, !tbaa !29
  %t730 = getelementptr { i64, [4 x i64] }, ptr %t728, i32 0, i32 1
  %t731 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t730, i32 0, i32 1
  %t732 = load { i64, ptr }, ptr %t731
  store { i64, ptr } %t732, ptr %l53, !tbaa !27
  br label %bb194
bb193:
  br label %bb202
bb194:
  %t734 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t734, ptr %l54, !tbaa !27
  store i64 0, ptr %l55, !tbaa !24
  %t736 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t738 = extractvalue { i64, ptr } %t736, 0
  store i64 %t738, ptr %l56, !tbaa !24
  br label %bb195
bb195:
  %t740 = load i64, ptr %l55, !tbaa !24
  %t741 = load i64, ptr %l56, !tbaa !24
  %t744 = icmp slt i64 %t740, %t741
  %t746 = xor i1 %t744, true
  br i1 %t746, label %bb196, label %bb197
bb196:
  br label %bb201
bb197:
  br label %bb198
bb198:
  %t748 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t748, ptr %l429, !tbaa !27
  %t749 = load i64, ptr %l55, !tbaa !24
  %t751 = getelementptr { i64, ptr }, ptr %l429, i32 0, i32 1
  %t752 = load ptr, ptr %t751, !tbaa !27
  %t753 = getelementptr ptr, ptr %t752, i64 %t749
  %t754 = load ptr, ptr %t753, !tbaa !39
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t759 = getelementptr %"compiler/typed:Capture", ptr %t754, i32 0, i32 1
  %t760 = load ptr, ptr %t759, !tbaa !29
  %t762 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t756, ptr %t760, ptr %t762, ptr %l4)
  br label %bb199
bb199:
  br label %bb200
bb200:
  %t767 = load i64, ptr %l55, !tbaa !24
  %t769 = add i64 %t767, 1
  store i64 %t769, ptr %l55, !tbaa !24
  br label %bb195
bb201:
  br label %bb214
bb202:
  %t771 = load ptr, ptr %l52, !tbaa !29
  store ptr %t771, ptr %l440, !tbaa !29
  store i1 false, ptr %l441, !tbaa !21
  %t772 = load ptr, ptr %l440, !tbaa !29
  %t773 = icmp ne ptr %t772, null
  br i1 %t773, label %bb203, label %bb204
bb203:
  %t775 = load ptr, ptr %l440, !tbaa !29
  %t776 = load i64, ptr %t775, !range !{i64 0, i64 3}
  %t778 = icmp eq i64 %t776, 2
  store i1 %t778, ptr %l441, !tbaa !21
  br label %bb204
bb204:
  %t779 = load i1, ptr %l441, !tbaa !21
  br i1 %t779, label %bb205, label %bb206
bb205:
  %t780 = load ptr, ptr %l52, !tbaa !29
  %t782 = getelementptr { i64, [4 x i64] }, ptr %t780, i32 0, i32 1
  %t783 = getelementptr { i32, ptr, i32 }, ptr %t782, i32 0, i32 1
  %t784 = load ptr, ptr %t783
  store ptr %t784, ptr %l58, !tbaa !29
  br label %bb207
bb206:
  br label %bb209
bb207:
  %t786 = load ptr, ptr %l0, !tbaa !29
  %t787 = load ptr, ptr %l58, !tbaa !29
  %t789 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t786, ptr %t787, ptr %t789, ptr %l4)
  br label %bb208
bb208:
  br label %bb214
bb209:
  br i1 true, label %bb210, label %bb211
bb210:
  br label %bb212
bb211:
  br label %bb213
bb212:
  br label %bb214
bb213:
  call void @__olang_check_failed(ptr @olang_loc_57534b0b4c840b9f_734207cf536b370b)
  unreachable
bb214:
  br label %bb251
bb215:
  %t794 = load ptr, ptr %l1, !tbaa !29
  store ptr %t794, ptr %l451, !tbaa !29
  store i1 false, ptr %l452, !tbaa !21
  %t795 = load ptr, ptr %l451, !tbaa !29
  %t796 = icmp ne ptr %t795, null
  br i1 %t796, label %bb216, label %bb217
bb216:
  %t798 = load ptr, ptr %l451, !tbaa !29
  %t799 = load i64, ptr %t798, !range !{i64 0, i64 18}
  %t801 = icmp eq i64 %t799, 16
  store i1 %t801, ptr %l452, !tbaa !21
  br label %bb217
bb217:
  %t802 = load i1, ptr %l452, !tbaa !21
  br i1 %t802, label %bb218, label %bb219
bb218:
  %t803 = load ptr, ptr %l1, !tbaa !29
  %t805 = getelementptr { i64, [5 x i64] }, ptr %t803, i32 0, i32 1
  %t806 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t805, i32 0, i32 2
  %t807 = load ptr, ptr %t806
  store ptr %t807, ptr %l59, !tbaa !29
  br label %bb220
bb219:
  br label %bb239
bb220:
  %t809 = load ptr, ptr %l59, !tbaa !29
  %t811 = getelementptr %"compiler/typed:Text", ptr %t809, i32 0, i32 0
  %t812 = load { i64, ptr }, ptr %t811, !tbaa !27
  store { i64, ptr } %t812, ptr %l60, !tbaa !27
  store i64 0, ptr %l61, !tbaa !24
  %t814 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t816 = extractvalue { i64, ptr } %t814, 0
  store i64 %t816, ptr %l62, !tbaa !24
  br label %bb221
bb221:
  %t818 = load i64, ptr %l61, !tbaa !24
  %t819 = load i64, ptr %l62, !tbaa !24
  %t822 = icmp slt i64 %t818, %t819
  %t824 = xor i1 %t822, true
  br i1 %t824, label %bb222, label %bb223
bb222:
  br label %bb238
bb223:
  br label %bb224
bb224:
  %t826 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t826, ptr %l465, !tbaa !27
  %t827 = load i64, ptr %l61, !tbaa !24
  %t829 = getelementptr { i64, ptr }, ptr %l465, i32 0, i32 1
  %t830 = load ptr, ptr %t829, !tbaa !27
  %t831 = getelementptr ptr, ptr %t830, i64 %t827
  %t832 = load ptr, ptr %t831, !tbaa !39
  store ptr %t832, ptr %l63, !tbaa !29
  %t834 = load ptr, ptr %l63, !tbaa !29
  store ptr %t834, ptr %l468, !tbaa !29
  store i1 false, ptr %l469, !tbaa !21
  %t835 = load ptr, ptr %l468, !tbaa !29
  %t836 = icmp ne ptr %t835, null
  br i1 %t836, label %bb225, label %bb226
bb225:
  %t838 = load ptr, ptr %l468, !tbaa !29
  %t839 = load i64, ptr %t838, !range !{i64 0, i64 2}
  %t841 = icmp eq i64 %t839, 1
  store i1 %t841, ptr %l469, !tbaa !21
  br label %bb226
bb226:
  %t842 = load i1, ptr %l469, !tbaa !21
  br i1 %t842, label %bb227, label %bb228
bb227:
  %t843 = load ptr, ptr %l63, !tbaa !29
  %t845 = getelementptr { i64, [2 x i64] }, ptr %t843, i32 0, i32 1
  %t846 = getelementptr { ptr }, ptr %t845, i32 0, i32 0
  %t847 = load ptr, ptr %t846
  store ptr %t847, ptr %l64, !tbaa !29
  br label %bb229
bb228:
  br label %bb231
bb229:
  %t849 = load ptr, ptr %l0, !tbaa !29
  %t850 = load ptr, ptr %l64, !tbaa !29
  %t852 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t849, ptr %t850, ptr %t852, ptr %l5)
  br label %bb230
bb230:
  br label %bb236
bb231:
  br i1 true, label %bb232, label %bb233
bb232:
  br label %bb234
bb233:
  br label %bb235
bb234:
  br label %bb236
bb235:
  call void @__olang_check_failed(ptr @olang_loc_eef44a73fed7a11e_ba98d4574b3cccca)
  unreachable
bb236:
  br label %bb237
bb237:
  %t857 = load i64, ptr %l61, !tbaa !24
  %t859 = add i64 %t857, 1
  store i64 %t859, ptr %l61, !tbaa !24
  br label %bb221
bb238:
  br label %bb251
bb239:
  %t861 = load ptr, ptr %l1, !tbaa !29
  store ptr %t861, ptr %l481, !tbaa !29
  store i1 false, ptr %l482, !tbaa !21
  %t862 = load ptr, ptr %l481, !tbaa !29
  %t863 = icmp ne ptr %t862, null
  br i1 %t863, label %bb240, label %bb241
bb240:
  %t865 = load ptr, ptr %l481, !tbaa !29
  %t866 = load i64, ptr %t865, !range !{i64 0, i64 18}
  %t868 = icmp eq i64 %t866, 17
  store i1 %t868, ptr %l482, !tbaa !21
  br label %bb241
bb241:
  %t869 = load i1, ptr %l482, !tbaa !21
  br i1 %t869, label %bb242, label %bb243
bb242:
  %t870 = load ptr, ptr %l1, !tbaa !29
  %t872 = getelementptr { i64, [5 x i64] }, ptr %t870, i32 0, i32 1
  %t873 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t872, i32 0, i32 2
  %t874 = load ptr, ptr %t873
  store ptr %t874, ptr %l65, !tbaa !29
  br label %bb244
bb243:
  br label %bb246
bb244:
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t877 = load ptr, ptr %l65, !tbaa !29
  %t879 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t876, ptr %t877, ptr %t879, ptr %l4)
  br label %bb245
bb245:
  br label %bb251
bb246:
  br i1 true, label %bb247, label %bb248
bb247:
  br label %bb249
bb248:
  br label %bb250
bb249:
  br label %bb251
bb250:
  call void @__olang_check_failed(ptr @olang_loc_bd4e25d0ba8f3355_5d1878e7bdcf6d61)
  unreachable
bb251:
  %t884 = load ptr, ptr %l0, !tbaa !29
  store ptr %t884, ptr %l492, !tbaa !29
  %t885 = load ptr, ptr %l1, !tbaa !29
  %t887 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t885)
  store i32 %t887, ptr %l494
  br label %bb252
bb252:
  %t888 = load ptr, ptr %l492, !tbaa !29
  %t889 = load i32, ptr %l494, !tbaa !23
  %t890 = call i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %t888, i32 %t889)
  store i1 %t890, ptr %l495
  br label %bb253
bb253:
  %t891 = load i1, ptr %l495, !tbaa !21
  br i1 %t891, label %bb254, label %bb255
bb254:
  store ptr %l4, ptr %l66, !tbaa !29
  store i64 0, ptr %l67, !tbaa !24
  br label %bb256
bb255:
  br label %bb265
bb256:
  %t893 = load i64, ptr %l67, !tbaa !24
  store i64 %t893, ptr %l497, !tbaa !24
  %t894 = load ptr, ptr %l66, !tbaa !29
  %t896 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t894)
  store i64 %t896, ptr %l499
  br label %bb257
bb257:
  %t897 = load i64, ptr %l497, !tbaa !24
  %t898 = load i64, ptr %l499, !tbaa !24
  %t899 = icmp slt i64 %t897, %t898
  %t901 = xor i1 %t899, true
  br i1 %t901, label %bb258, label %bb259
bb258:
  br label %bb264
bb259:
  br label %bb260
bb260:
  %t903 = load ptr, ptr %l66, !tbaa !29
  %t904 = load i64, ptr %l67, !tbaa !24
  %t907 = call %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %s0, ptr %t903, i64 %t904)
  store %"compiler/views:view" %t907, ptr %l504
  br label %bb261
bb261:
  %t908 = load %"compiler/views:view", ptr %l504
  call void @compiler_2fviews_2eviewAdd(ptr %v3, ptr %a3, %"compiler/views:view" %t908)
  br label %bb262
bb262:
  br label %bb263
bb263:
  %t913 = load i64, ptr %l67, !tbaa !24
  %t915 = add i64 %t913, 1
  store i64 %t915, ptr %l67, !tbaa !24
  br label %bb256
bb264:
  br label %bb265
bb265:
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l25, !tbaa !27
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
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l53, !tbaa !27
  br label %bb20
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l53, !tbaa !27
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
  %t281 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t279, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) })
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l86, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l91, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l96, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l101, !tbaa !27
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
  %t321 = call { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v2, ptr %v2, { i64, ptr } %t319, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
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
  %t276 = call { i64, ptr } @compiler_2fviews_2etaskCopy(ptr %s12, ptr %v0, i64 %t272, { i64, ptr } %t273)
  store { i64, ptr } %t276, ptr %l149
  br label %bb69
bb69:
  %t277 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t277, 0
  %t279 = extractvalue { i64, ptr } %t277, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t286 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecGrowsUnderTask(ptr %s12, ptr %v0, ptr %v0, { i64, ptr } %t284, { i64, ptr } %t283)
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
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
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
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr null
  %t53 = icmp eq ptr %t52, %t46
  call void @__olang_region_settle(ptr %t46, i1 %t53)
  br label %bb7
bb7:
  %t54 = load ptr, ptr %l15, !tbaa !29
  %t55 = getelementptr %"compiler/views:state", ptr %t54, i32 0, i32 3
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l23
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t58 = load ptr, ptr %l15, !tbaa !29
  %t59 = getelementptr %"compiler/views:state", ptr %t58, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %t59
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3astate_2e3
  br i1 %t60, label %bb8, label %bb9
bb8:
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = icmp ne ptr %t65, null
  %t67 = select i1 %t66, ptr %t65, ptr null
  call void @__olang_region_drop(ptr %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l23
  br label %bb9
bb9:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l25, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/views:state", ptr %t69, i32 0, i32 4
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l27
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %l27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l29
  br label %bb10
bb10:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t76 = load ptr, ptr %l25, !tbaa !29
  %t77 = getelementptr %"compiler/views:state", ptr %t76, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t77
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
  %t6 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t9 = extractvalue { i64, ptr } %t5, 1
  %t10 = extractvalue { i64, ptr } %t5, 0
  %t11 = add i64 %t7, %t10
  %t12 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
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
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2fviews_2estate_2edead(ptr %out, ptr %v0) #0 {
entry:
  %lp0 = alloca ptr
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 136, i64 8)
  store ptr %t2, ptr %lp0
  %t3 = load ptr, ptr %lp0
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l1, i64 136, i1 false)
  %t4 = load ptr, ptr %lp0
  %t5 = getelementptr %"compiler/views:state", ptr %t4, i32 0, i32 0
  store i1 true, ptr %t5, !tbaa !21
  %t6 = load ptr, ptr %lp0
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %t6, i64 136, i1 false)
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
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l2
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l10, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e2
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l10
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l12
  br label %bb8
bb8:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e2
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load i64, ptr %l10
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l3
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l14, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e3
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l14, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l14
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l16
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aCand_2e3
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l14
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb15
bb15:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t63 = load i64, ptr %l1, !tbaa !24
  %t64 = insertvalue %"compiler/views:Cand" undef, i64 %t63, 0
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t66 = insertvalue %"compiler/views:Cand" %t64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, 1
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t68 = insertvalue %"compiler/views:Cand" %t66, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, 2
  %t70 = insertvalue %"compiler/views:Cand" %t68, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, 3
  store %"compiler/views:Cand" %t70, ptr %rv
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
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l12, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l12
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H598d4018a729aa7c2aa1315e906ea840(ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t28, ptr %l14
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l12
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 2
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr %t38
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr %t44
  %t51 = icmp eq ptr %t50, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t51)
  br label %bb10
bb10:
  %t52 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t52, ptr %l1
  store i1 false, ptr %l2, !tbaa !21
  store i1 false, ptr %l3, !tbaa !21
  store i64 0, ptr %l4, !tbaa !24
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l16, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e5
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = call ptr @__olang_region_make(ptr %v0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l16, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l16
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t59)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t60, ptr %l18
  br label %bb13
bb13:
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e5
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load i64, ptr %l16
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr null
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr %t70
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr %t76
  %t83 = icmp eq ptr %t82, %t64
  call void @__olang_region_settle(ptr %t64, i1 %t83)
  br label %bb15
bb15:
  %t84 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t84, ptr %l5
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l20, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e6
  br i1 %t86, label %bb16, label %bb17
bb16:
  %t88 = call ptr @__olang_region_make(ptr %v0)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l20, !tbaa !24
  br label %bb17
bb17:
  %t90 = load i64, ptr %l20
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t91, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l22
  br label %bb18
bb18:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e6
  br i1 %t93, label %bb19, label %bb20
bb19:
  %t95 = load i64, ptr %l20
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr null
  %t103 = icmp eq ptr %t102, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t103)
  br label %bb20
bb20:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l6
  %t105 = ptrtoint ptr %v0 to i64
  store i64 %t105, ptr %l24, !tbaa !24
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e7
  br i1 %t106, label %bb21, label %bb22
bb21:
  %t108 = call ptr @__olang_region_make(ptr %v0)
  %t109 = ptrtoint ptr %t108 to i64
  store i64 %t109, ptr %l24, !tbaa !24
  br label %bb22
bb22:
  %t110 = load i64, ptr %l24
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hd6e1819e1818d88f4447e4f021a92af5(ptr %t111)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t112, ptr %l26
  br label %bb23
bb23:
  %t113 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aKept_2e7
  br i1 %t113, label %bb24, label %bb25
bb24:
  %t115 = load i64, ptr %l24
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 2
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr null
  %t123 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 1
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr %t122
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = call ptr @__olang_region_or(ptr %t131, ptr null)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr %t128
  %t135 = icmp eq ptr %t134, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t135)
  br label %bb25
bb25:
  %t136 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26
  %t137 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 0
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %t137
  %t139 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 1
  %t140 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t140, ptr %t139
  %t141 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 2
  %t142 = load i1, ptr %l2, !tbaa !21
  store i1 %t142, ptr %t141, !tbaa !21
  %t143 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 3
  %t144 = load i1, ptr %l3, !tbaa !21
  store i1 %t144, ptr %t143, !tbaa !21
  %t145 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 4
  %t146 = load i64, ptr %l4, !tbaa !24
  store i64 %t146, ptr %t145, !tbaa !24
  %t147 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 5
  %t148 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t148, ptr %t147
  %t149 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 6
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %t149
  %t151 = getelementptr %"compiler/views:Kept", ptr %l28, i32 0, i32 7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t136, ptr %t151
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
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l4
  %t25 = ptrtoint ptr %v2 to i64
  store i64 %t25, ptr %l44, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e3
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %v2)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l44, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l44
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l46
  br label %bb8
bb8:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e3
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l44
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l5
  %t45 = ptrtoint ptr %v2 to i64
  store i64 %t45, ptr %l48, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e4
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v2)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l48, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l48
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t51)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t52, ptr %l50
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e4
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l48
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 2
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 1
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr %t62
  %t69 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = icmp ne ptr %t72, null
  %t74 = select i1 %t73, ptr %t72, ptr %t68
  %t75 = icmp eq ptr %t74, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t75)
  br label %bb15
bb15:
  %t76 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t76, ptr %l6
  %t77 = ptrtoint ptr %v2 to i64
  store i64 %t77, ptr %l52, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e5
  br i1 %t78, label %bb16, label %bb17
bb16:
  %t80 = call ptr @__olang_region_make(ptr %v2)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l52, !tbaa !24
  br label %bb17
bb17:
  %t82 = load i64, ptr %l52
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %t83)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t84, ptr %l54
  br label %bb18
bb18:
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e5
  br i1 %t85, label %bb19, label %bb20
bb19:
  %t87 = load i64, ptr %l52
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 2
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr null
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr %t94
  %t101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = icmp ne ptr %t104, null
  %t106 = select i1 %t105, ptr %t104, ptr %t100
  %t107 = icmp eq ptr %t106, %t88
  call void @__olang_region_settle(ptr %t88, i1 %t107)
  br label %bb20
bb20:
  %t108 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t108, ptr %l7
  %t109 = ptrtoint ptr %v2 to i64
  store i64 %t109, ptr %l56, !tbaa !24
  %t110 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e6
  br i1 %t110, label %bb21, label %bb22
bb21:
  %t112 = call ptr @__olang_region_make(ptr %v2)
  %t113 = ptrtoint ptr %t112 to i64
  store i64 %t113, ptr %l56, !tbaa !24
  br label %bb22
bb22:
  %t114 = load i64, ptr %l56
  %t115 = inttoptr i64 %t114 to ptr
  %t116 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t115)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t116, ptr %l58
  br label %bb23
bb23:
  %t117 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e6
  br i1 %t117, label %bb24, label %bb25
bb24:
  %t119 = load i64, ptr %l56
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = call ptr @__olang_region_or(ptr %t123, ptr null)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr null
  %t127 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr %t126
  %t133 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr %t132
  %t139 = icmp eq ptr %t138, %t120
  call void @__olang_region_settle(ptr %t120, i1 %t139)
  br label %bb25
bb25:
  %t140 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t140, ptr %l8
  store i64 -1, ptr %l9, !tbaa !24
  store i64 -1, ptr %l10, !tbaa !24
  store i64 -1, ptr %l11, !tbaa !24
  %t141 = ptrtoint ptr %v2 to i64
  store i64 %t141, ptr %l60, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e10
  br i1 %t142, label %bb26, label %bb27
bb26:
  %t144 = call ptr @__olang_region_make(ptr %v2)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l60, !tbaa !24
  br label %bb27
bb27:
  %t146 = load i64, ptr %l60
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aDeclId_2c_20I64_3e(ptr %t147)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t148, ptr %l62
  br label %bb28
bb28:
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e10
  br i1 %t149, label %bb29, label %bb30
bb29:
  %t151 = load i64, ptr %l60
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 2
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr null
  %t159 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 1
  %t160 = load { i64, ptr }, ptr %t159
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = call ptr @__olang_region_or(ptr %t161, ptr null)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr %t158
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62, i32 0, i32 0
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr %t164
  %t171 = icmp eq ptr %t170, %t152
  call void @__olang_region_settle(ptr %t152, i1 %t171)
  br label %bb30
bb30:
  %t172 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t172, ptr %l12
  %t173 = ptrtoint ptr %v2 to i64
  store i64 %t173, ptr %l64, !tbaa !24
  %t174 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e11
  br i1 %t174, label %bb31, label %bb32
bb31:
  %t176 = call ptr @__olang_region_make(ptr %v2)
  %t177 = ptrtoint ptr %t176 to i64
  store i64 %t177, ptr %l64, !tbaa !24
  br label %bb32
bb32:
  %t178 = load i64, ptr %l64
  %t179 = inttoptr i64 %t178 to ptr
  %t180 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_3e_2ector(ptr %t179, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l66
  br label %bb33
bb33:
  %t181 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e11
  br i1 %t181, label %bb34, label %bb35
bb34:
  %t183 = load i64, ptr %l64
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t186 = load { i64, ptr }, ptr %t185
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = call ptr @__olang_region_or(ptr %t187, ptr null)
  %t189 = icmp ne ptr %t188, null
  %t190 = select i1 %t189, ptr %t188, ptr null
  %t191 = icmp eq ptr %t190, %t184
  call void @__olang_region_settle(ptr %t184, i1 %t191)
  br label %bb35
bb35:
  %t192 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %l13
  %t193 = ptrtoint ptr %v2 to i64
  store i64 %t193, ptr %l68, !tbaa !24
  %t194 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e12
  br i1 %t194, label %bb36, label %bb37
bb36:
  %t196 = call ptr @__olang_region_make(ptr %v2)
  %t197 = ptrtoint ptr %t196 to i64
  store i64 %t197, ptr %l68, !tbaa !24
  br label %bb37
bb37:
  %t198 = load i64, ptr %l68
  %t199 = inttoptr i64 %t198 to ptr
  %t200 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t199, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l70
  br label %bb38
bb38:
  %t201 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e12
  br i1 %t201, label %bb39, label %bb40
bb39:
  %t203 = load i64, ptr %l68
  %t204 = inttoptr i64 %t203 to ptr
  %t205 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = call ptr @__olang_region_or(ptr %t207, ptr null)
  %t209 = icmp ne ptr %t208, null
  %t210 = select i1 %t209, ptr %t208, ptr null
  %t211 = icmp eq ptr %t210, %t204
  call void @__olang_region_settle(ptr %t204, i1 %t211)
  br label %bb40
bb40:
  %t212 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %l14
  %t213 = ptrtoint ptr %v2 to i64
  store i64 %t213, ptr %l72, !tbaa !24
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e13
  br i1 %t214, label %bb41, label %bb42
bb41:
  %t216 = call ptr @__olang_region_make(ptr %v2)
  %t217 = ptrtoint ptr %t216 to i64
  store i64 %t217, ptr %l72, !tbaa !24
  br label %bb42
bb42:
  %t218 = load i64, ptr %l72
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t219, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %l74
  br label %bb43
bb43:
  %t221 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e13
  br i1 %t221, label %bb44, label %bb45
bb44:
  %t223 = load i64, ptr %l72
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74, i32 0, i32 0
  %t226 = load { i64, ptr }, ptr %t225
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = call ptr @__olang_region_or(ptr %t227, ptr null)
  %t229 = icmp ne ptr %t228, null
  %t230 = select i1 %t229, ptr %t228, ptr null
  %t231 = icmp eq ptr %t230, %t224
  call void @__olang_region_settle(ptr %t224, i1 %t231)
  br label %bb45
bb45:
  %t232 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %l15
  %t233 = ptrtoint ptr %v2 to i64
  store i64 %t233, ptr %l76, !tbaa !24
  %t234 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e14
  br i1 %t234, label %bb46, label %bb47
bb46:
  %t236 = call ptr @__olang_region_make(ptr %v2)
  %t237 = ptrtoint ptr %t236 to i64
  store i64 %t237, ptr %l76, !tbaa !24
  br label %bb47
bb47:
  %t238 = load i64, ptr %l76
  %t239 = inttoptr i64 %t238 to ptr
  %t240 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t239, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %l78
  br label %bb48
bb48:
  %t241 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e14
  br i1 %t241, label %bb49, label %bb50
bb49:
  %t243 = load i64, ptr %l76
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = call ptr @__olang_region_or(ptr %t247, ptr null)
  %t249 = icmp ne ptr %t248, null
  %t250 = select i1 %t249, ptr %t248, ptr null
  %t251 = icmp eq ptr %t250, %t244
  call void @__olang_region_settle(ptr %t244, i1 %t251)
  br label %bb50
bb50:
  %t252 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %l16
  %t253 = ptrtoint ptr %v2 to i64
  store i64 %t253, ptr %l80, !tbaa !24
  %t254 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e15
  br i1 %t254, label %bb51, label %bb52
bb51:
  %t256 = call ptr @__olang_region_make(ptr %v2)
  %t257 = ptrtoint ptr %t256 to i64
  store i64 %t257, ptr %l80, !tbaa !24
  br label %bb52
bb52:
  %t258 = load i64, ptr %l80
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t259, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t260, ptr %l82
  br label %bb53
bb53:
  %t261 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e15
  br i1 %t261, label %bb54, label %bb55
bb54:
  %t263 = load i64, ptr %l80
  %t264 = inttoptr i64 %t263 to ptr
  %t265 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  %t268 = call ptr @__olang_region_or(ptr %t267, ptr null)
  %t269 = icmp ne ptr %t268, null
  %t270 = select i1 %t269, ptr %t268, ptr null
  %t271 = icmp eq ptr %t270, %t264
  call void @__olang_region_settle(ptr %t264, i1 %t271)
  br label %bb55
bb55:
  %t272 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t272, ptr %l17
  %t273 = ptrtoint ptr %v2 to i64
  store i64 %t273, ptr %l84, !tbaa !24
  %t274 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e16
  br i1 %t274, label %bb56, label %bb57
bb56:
  %t276 = call ptr @__olang_region_make(ptr %v2)
  %t277 = ptrtoint ptr %t276 to i64
  store i64 %t277, ptr %l84, !tbaa !24
  br label %bb57
bb57:
  %t278 = load i64, ptr %l84
  %t279 = inttoptr i64 %t278 to ptr
  %t280 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t279, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %l86
  br label %bb58
bb58:
  %t281 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e16
  br i1 %t281, label %bb59, label %bb60
bb59:
  %t283 = load i64, ptr %l84
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t286 = load { i64, ptr }, ptr %t285
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = call ptr @__olang_region_or(ptr %t287, ptr null)
  %t289 = icmp ne ptr %t288, null
  %t290 = select i1 %t289, ptr %t288, ptr null
  %t291 = icmp eq ptr %t290, %t284
  call void @__olang_region_settle(ptr %t284, i1 %t291)
  br label %bb60
bb60:
  %t292 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %l18
  %t293 = ptrtoint ptr %v2 to i64
  store i64 %t293, ptr %l88, !tbaa !24
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e17
  br i1 %t294, label %bb61, label %bb62
bb61:
  %t296 = call ptr @__olang_region_make(ptr %v2)
  %t297 = ptrtoint ptr %t296 to i64
  store i64 %t297, ptr %l88, !tbaa !24
  br label %bb62
bb62:
  %t298 = load i64, ptr %l88
  %t299 = inttoptr i64 %t298 to ptr
  %t300 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t299, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %l90
  br label %bb63
bb63:
  %t301 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e17
  br i1 %t301, label %bb64, label %bb65
bb64:
  %t303 = load i64, ptr %l88
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t306 = load { i64, ptr }, ptr %t305
  %t307 = extractvalue { i64, ptr } %t306, 1
  %t308 = call ptr @__olang_region_or(ptr %t307, ptr null)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr null
  %t311 = icmp eq ptr %t310, %t304
  call void @__olang_region_settle(ptr %t304, i1 %t311)
  br label %bb65
bb65:
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %l19
  store i64 0, ptr %l20, !tbaa !24
  %t313 = ptrtoint ptr %v2 to i64
  store i64 %t313, ptr %l92, !tbaa !24
  %t314 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e19
  br i1 %t314, label %bb66, label %bb67
bb66:
  %t316 = call ptr @__olang_region_make(ptr %v2)
  %t317 = ptrtoint ptr %t316 to i64
  store i64 %t317, ptr %l92, !tbaa !24
  br label %bb67
bb67:
  %t318 = load i64, ptr %l92
  %t319 = inttoptr i64 %t318 to ptr
  %t320 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t319, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %l94
  br label %bb68
bb68:
  %t321 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e19
  br i1 %t321, label %bb69, label %bb70
bb69:
  %t323 = load i64, ptr %l92
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94, i32 0, i32 0
  %t326 = load { i64, ptr }, ptr %t325
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = call ptr @__olang_region_or(ptr %t327, ptr null)
  %t329 = icmp ne ptr %t328, null
  %t330 = select i1 %t329, ptr %t328, ptr null
  %t331 = icmp eq ptr %t330, %t324
  call void @__olang_region_settle(ptr %t324, i1 %t331)
  br label %bb70
bb70:
  %t332 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t332, ptr %l21
  %t333 = ptrtoint ptr %v2 to i64
  store i64 %t333, ptr %l96, !tbaa !24
  %t334 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e20
  br i1 %t334, label %bb71, label %bb72
bb71:
  %t336 = call ptr @__olang_region_make(ptr %v2)
  %t337 = ptrtoint ptr %t336 to i64
  store i64 %t337, ptr %l96, !tbaa !24
  br label %bb72
bb72:
  %t338 = load i64, ptr %l96
  %t339 = inttoptr i64 %t338 to ptr
  %t340 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t339, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t340, ptr %l98
  br label %bb73
bb73:
  %t341 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e20
  br i1 %t341, label %bb74, label %bb75
bb74:
  %t343 = load i64, ptr %l96
  %t344 = inttoptr i64 %t343 to ptr
  %t345 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = call ptr @__olang_region_or(ptr %t347, ptr null)
  %t349 = icmp ne ptr %t348, null
  %t350 = select i1 %t349, ptr %t348, ptr null
  %t351 = icmp eq ptr %t350, %t344
  call void @__olang_region_settle(ptr %t344, i1 %t351)
  br label %bb75
bb75:
  %t352 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %l22
  store ptr null, ptr %l23, !tbaa !29
  store i64 -1, ptr %l24, !tbaa !24
  store i1 false, ptr %l25, !tbaa !21
  store i1 false, ptr %l26, !tbaa !21
  store i1 false, ptr %l27, !tbaa !21
  store i1 false, ptr %l28, !tbaa !21
  %t353 = ptrtoint ptr %v2 to i64
  store i64 %t353, ptr %l100, !tbaa !24
  %t354 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e27
  br i1 %t354, label %bb76, label %bb77
bb76:
  %t356 = call ptr @__olang_region_make(ptr %v2)
  %t357 = ptrtoint ptr %t356 to i64
  store i64 %t357, ptr %l100, !tbaa !24
  br label %bb77
bb77:
  %t358 = load i64, ptr %l100
  %t359 = inttoptr i64 %t358 to ptr
  %t360 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t359, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t360, ptr %l102
  br label %bb78
bb78:
  %t361 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e27
  br i1 %t361, label %bb79, label %bb80
bb79:
  %t363 = load i64, ptr %l100
  %t364 = inttoptr i64 %t363 to ptr
  %t365 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102, i32 0, i32 0
  %t366 = load { i64, ptr }, ptr %t365
  %t367 = extractvalue { i64, ptr } %t366, 1
  %t368 = call ptr @__olang_region_or(ptr %t367, ptr null)
  %t369 = icmp ne ptr %t368, null
  %t370 = select i1 %t369, ptr %t368, ptr null
  %t371 = icmp eq ptr %t370, %t364
  call void @__olang_region_settle(ptr %t364, i1 %t371)
  br label %bb80
bb80:
  %t372 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t372, ptr %l29
  %t373 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t373, ptr %l104
  br label %bb81
bb81:
  %t374 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %l30
  %t375 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %l105
  br label %bb82
bb82:
  %t376 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t376, ptr %l31
  %t377 = ptrtoint ptr %v2 to i64
  store i64 %t377, ptr %l106, !tbaa !24
  %t378 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e30
  br i1 %t378, label %bb83, label %bb84
bb83:
  %t380 = call ptr @__olang_region_make(ptr %v2)
  %t381 = ptrtoint ptr %t380 to i64
  store i64 %t381, ptr %l106, !tbaa !24
  br label %bb84
bb84:
  %t382 = load i64, ptr %l106
  %t383 = inttoptr i64 %t382 to ptr
  %t384 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t383)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t384, ptr %l108
  br label %bb85
bb85:
  %t385 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e30
  br i1 %t385, label %bb86, label %bb87
bb86:
  %t387 = load i64, ptr %l106
  %t388 = inttoptr i64 %t387 to ptr
  %t389 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108, i32 0, i32 2
  %t390 = load { i64, ptr }, ptr %t389
  %t391 = extractvalue { i64, ptr } %t390, 1
  %t392 = call ptr @__olang_region_or(ptr %t391, ptr null)
  %t393 = icmp ne ptr %t392, null
  %t394 = select i1 %t393, ptr %t392, ptr null
  %t395 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108, i32 0, i32 1
  %t396 = load { i64, ptr }, ptr %t395
  %t397 = extractvalue { i64, ptr } %t396, 1
  %t398 = call ptr @__olang_region_or(ptr %t397, ptr null)
  %t399 = icmp ne ptr %t398, null
  %t400 = select i1 %t399, ptr %t398, ptr %t394
  %t401 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108, i32 0, i32 0
  %t402 = load { i64, ptr }, ptr %t401
  %t403 = extractvalue { i64, ptr } %t402, 1
  %t404 = call ptr @__olang_region_or(ptr %t403, ptr null)
  %t405 = icmp ne ptr %t404, null
  %t406 = select i1 %t405, ptr %t404, ptr %t400
  %t407 = icmp eq ptr %t406, %t388
  call void @__olang_region_settle(ptr %t388, i1 %t407)
  br label %bb87
bb87:
  %t408 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l108
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t408, ptr %l32
  %t409 = ptrtoint ptr %v2 to i64
  store i64 %t409, ptr %l110, !tbaa !24
  %t410 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e31
  br i1 %t410, label %bb88, label %bb89
bb88:
  %t412 = call ptr @__olang_region_make(ptr %v2)
  %t413 = ptrtoint ptr %t412 to i64
  store i64 %t413, ptr %l110, !tbaa !24
  br label %bb89
bb89:
  %t414 = load i64, ptr %l110
  %t415 = inttoptr i64 %t414 to ptr
  %t416 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t415)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t416, ptr %l112
  br label %bb90
bb90:
  %t417 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e31
  br i1 %t417, label %bb91, label %bb92
bb91:
  %t419 = load i64, ptr %l110
  %t420 = inttoptr i64 %t419 to ptr
  %t421 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 2
  %t422 = load { i64, ptr }, ptr %t421
  %t423 = extractvalue { i64, ptr } %t422, 1
  %t424 = call ptr @__olang_region_or(ptr %t423, ptr null)
  %t425 = icmp ne ptr %t424, null
  %t426 = select i1 %t425, ptr %t424, ptr null
  %t427 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 1
  %t428 = load { i64, ptr }, ptr %t427
  %t429 = extractvalue { i64, ptr } %t428, 1
  %t430 = call ptr @__olang_region_or(ptr %t429, ptr null)
  %t431 = icmp ne ptr %t430, null
  %t432 = select i1 %t431, ptr %t430, ptr %t426
  %t433 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112, i32 0, i32 0
  %t434 = load { i64, ptr }, ptr %t433
  %t435 = extractvalue { i64, ptr } %t434, 1
  %t436 = call ptr @__olang_region_or(ptr %t435, ptr null)
  %t437 = icmp ne ptr %t436, null
  %t438 = select i1 %t437, ptr %t436, ptr %t432
  %t439 = icmp eq ptr %t438, %t420
  call void @__olang_region_settle(ptr %t420, i1 %t439)
  br label %bb92
bb92:
  %t440 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l112
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t440, ptr %l33
  %t441 = ptrtoint ptr %v2 to i64
  store i64 %t441, ptr %l114, !tbaa !24
  %t442 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e32
  br i1 %t442, label %bb93, label %bb94
bb93:
  %t444 = call ptr @__olang_region_make(ptr %v2)
  %t445 = ptrtoint ptr %t444 to i64
  store i64 %t445, ptr %l114, !tbaa !24
  br label %bb94
bb94:
  %t446 = load i64, ptr %l114
  %t447 = inttoptr i64 %t446 to ptr
  %t448 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t447)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t448, ptr %l116
  br label %bb95
bb95:
  %t449 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e32
  br i1 %t449, label %bb96, label %bb97
bb96:
  %t451 = load i64, ptr %l114
  %t452 = inttoptr i64 %t451 to ptr
  %t453 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116, i32 0, i32 2
  %t454 = load { i64, ptr }, ptr %t453
  %t455 = extractvalue { i64, ptr } %t454, 1
  %t456 = call ptr @__olang_region_or(ptr %t455, ptr null)
  %t457 = icmp ne ptr %t456, null
  %t458 = select i1 %t457, ptr %t456, ptr null
  %t459 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116, i32 0, i32 1
  %t460 = load { i64, ptr }, ptr %t459
  %t461 = extractvalue { i64, ptr } %t460, 1
  %t462 = call ptr @__olang_region_or(ptr %t461, ptr null)
  %t463 = icmp ne ptr %t462, null
  %t464 = select i1 %t463, ptr %t462, ptr %t458
  %t465 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116, i32 0, i32 0
  %t466 = load { i64, ptr }, ptr %t465
  %t467 = extractvalue { i64, ptr } %t466, 1
  %t468 = call ptr @__olang_region_or(ptr %t467, ptr null)
  %t469 = icmp ne ptr %t468, null
  %t470 = select i1 %t469, ptr %t468, ptr %t464
  %t471 = icmp eq ptr %t470, %t452
  call void @__olang_region_settle(ptr %t452, i1 %t471)
  br label %bb97
bb97:
  %t472 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t472, ptr %l34
  %t473 = ptrtoint ptr %v2 to i64
  store i64 %t473, ptr %l118, !tbaa !24
  %t474 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e33
  br i1 %t474, label %bb98, label %bb99
bb98:
  %t476 = call ptr @__olang_region_make(ptr %v2)
  %t477 = ptrtoint ptr %t476 to i64
  store i64 %t477, ptr %l118, !tbaa !24
  br label %bb99
bb99:
  %t478 = load i64, ptr %l118
  %t479 = inttoptr i64 %t478 to ptr
  %t480 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t479)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t480, ptr %l120
  br label %bb100
bb100:
  %t481 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e33
  br i1 %t481, label %bb101, label %bb102
bb101:
  %t483 = load i64, ptr %l118
  %t484 = inttoptr i64 %t483 to ptr
  %t485 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 2
  %t486 = load { i64, ptr }, ptr %t485
  %t487 = extractvalue { i64, ptr } %t486, 1
  %t488 = call ptr @__olang_region_or(ptr %t487, ptr null)
  %t489 = icmp ne ptr %t488, null
  %t490 = select i1 %t489, ptr %t488, ptr null
  %t491 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 1
  %t492 = load { i64, ptr }, ptr %t491
  %t493 = extractvalue { i64, ptr } %t492, 1
  %t494 = call ptr @__olang_region_or(ptr %t493, ptr null)
  %t495 = icmp ne ptr %t494, null
  %t496 = select i1 %t495, ptr %t494, ptr %t490
  %t497 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 0
  %t498 = load { i64, ptr }, ptr %t497
  %t499 = extractvalue { i64, ptr } %t498, 1
  %t500 = call ptr @__olang_region_or(ptr %t499, ptr null)
  %t501 = icmp ne ptr %t500, null
  %t502 = select i1 %t501, ptr %t500, ptr %t496
  %t503 = icmp eq ptr %t502, %t484
  call void @__olang_region_settle(ptr %t484, i1 %t503)
  br label %bb102
bb102:
  %t504 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t504, ptr %l35
  %t505 = ptrtoint ptr %v2 to i64
  store i64 %t505, ptr %l122, !tbaa !24
  %t506 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3aViewer_2e34
  br i1 %t506, label %bb103, label %bb104
bb103:
  %t508 = call ptr @__olang_region_make(ptr %v2)
  %t509 = ptrtoint ptr %t508 to i64
  store i64 %t509, ptr %l122, !tbaa !24
  br label %bb104
bb104:
  %t510 = icmp sge i64 0, 0
  br i1 %t510, label %bb105, label %bb106
bb105:
  %t512 = icmp sle i64 0, 576460752303423487
  br i1 %t512, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_4980cc85129191e9_6dc8fef61f0a6fb5)
  unreachable
bb107:
  %t514 = mul i64 0, 16
  %t515 = load i64, ptr %l122
  %t516 = inttoptr i64 %t515 to ptr
  %t517 = insertvalue { i64, ptr } undef, i64 0, 0
  %t518 = insertvalue { i64, ptr } %t517, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t520 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 0
  %t521 = load ptr, ptr %l2, !tbaa !29
  store ptr %t521, ptr %t520, !tbaa !29
  %t522 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 1
  %t523 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t523, ptr %t522
  %t524 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 2
  %t525 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t525, ptr %t524
  %t526 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 3
  %t527 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t527, ptr %t526
  %t528 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 4
  %t529 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t529, ptr %t528
  %t530 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 5
  %t531 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t531, ptr %t530
  %t532 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 6
  %t533 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t533, ptr %t532
  %t534 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 7
  %t535 = load i64, ptr %l9, !tbaa !24
  store i64 %t535, ptr %t534, !tbaa !24
  %t536 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 8
  %t537 = load i64, ptr %l10, !tbaa !24
  store i64 %t537, ptr %t536, !tbaa !24
  %t538 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 9
  %t539 = load i64, ptr %l11, !tbaa !24
  store i64 %t539, ptr %t538, !tbaa !24
  %t540 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 10
  %t541 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t541, ptr %t540
  %t542 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 11
  %t543 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t543, ptr %t542
  %t544 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 12
  %t545 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t545, ptr %t544
  %t546 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 13
  %t547 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t547, ptr %t546
  %t548 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 14
  %t549 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t549, ptr %t548
  %t550 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 15
  %t551 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t551, ptr %t550
  %t552 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 16
  %t553 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %t552
  %t554 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 17
  %t555 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t555, ptr %t554
  %t556 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 18
  %t557 = load i64, ptr %l20, !tbaa !24
  store i64 %t557, ptr %t556, !tbaa !24
  %t558 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 19
  %t559 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t559, ptr %t558
  %t560 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 20
  %t561 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t561, ptr %t560
  %t562 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 21
  %t563 = load ptr, ptr %l23, !tbaa !29
  store ptr %t563, ptr %t562, !tbaa !29
  %t564 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 22
  %t565 = load i64, ptr %l24, !tbaa !24
  store i64 %t565, ptr %t564, !tbaa !24
  %t566 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 23
  %t567 = load i1, ptr %l25, !tbaa !21
  store i1 %t567, ptr %t566, !tbaa !21
  %t568 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 24
  %t569 = load i1, ptr %l26, !tbaa !21
  store i1 %t569, ptr %t568, !tbaa !21
  %t570 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 25
  %t571 = load i1, ptr %l27, !tbaa !21
  store i1 %t571, ptr %t570, !tbaa !21
  %t572 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 26
  %t573 = load i1, ptr %l28, !tbaa !21
  store i1 %t573, ptr %t572, !tbaa !21
  %t574 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 27
  %t575 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t575, ptr %t574
  %t576 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 28
  %t577 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t577, ptr %t576
  %t578 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 29
  %t579 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t579, ptr %t578
  %t580 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 30
  %t581 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t581, ptr %t580
  %t582 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 31
  %t583 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t583, ptr %t582
  %t584 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 32
  %t585 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t585, ptr %t584
  %t586 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 33
  %t587 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t587, ptr %t586
  %t588 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 34
  store { i64, ptr } %t518, ptr %t588, !tbaa !27
  %t590 = getelementptr %"compiler/views:Viewer", ptr %l127, i32 0, i32 35
  store i1 false, ptr %t590, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l127, i64 1144, i1 false)
  br label %ret
bb108:
  call void @__olang_check_failed(ptr @olang_loc_4980cc85129191e9_6dc8fef61f0a6fb5)
  unreachable
ret:
  ret void
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
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l9, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l9
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l11
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l9
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l1
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l13, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e2
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l13
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ector(ptr %t47, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l15
  br label %bb13
bb13:
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e2
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr %l13
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = icmp eq ptr %t58, %t52
  call void @__olang_region_settle(ptr %t52, i1 %t59)
  br label %bb15
bb15:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l2
  %t61 = ptrtoint ptr %v0 to i64
  store i64 %t61, ptr %l17, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e3
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = call ptr @__olang_region_make(ptr %v0)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l17, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l17
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t67, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l19
  br label %bb18
bb18:
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fviews_3asummary_2e3
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l17
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr null
  %t79 = icmp eq ptr %t78, %t72
  call void @__olang_region_settle(ptr %t72, i1 %t79)
  br label %bb20
bb20:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t81 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 0
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %t81
  %t83 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 1
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %t83
  %t85 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 2
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %t85
  %t87 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t87
  %t89 = getelementptr %"compiler/views:summary", ptr %l21, i32 0, i32 4
  store i1 false, ptr %t89, !tbaa !21
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
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
define internal i1 @olang_lambda_3(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"'Push'" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"ctor " }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"dtor " }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"lambda " }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"global " }>, align 8
@.d15 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"contract " }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_2011_3e_2e_2d1 = weak hidden constant i1 false
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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

@.d31 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"copy the value first ('" }>, align 8
@.d32 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c".Get(k)')" }>, align 8
@.d33 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"copy the elements first ('" }>, align 8
@.d34 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c".ToArray()')" }>, align 8
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

@olang_2esole_2ecompiler_2fviews_3aCand_2e1 = weak hidden constant i1 false
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

declare void @compiler_2fviews_2ecallsExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecalls(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f21fc7c42b27f081_20ede69b6f10d945 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_Hffe51834a288d097bc653a6423d7b5a2(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H46d34990adaac4ca3e42bec6b3496b28(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eRunKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eSummaryText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2enamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_55308b3b5a1f5c1_cb52dc999ec87de5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eLen_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0)
declare %"compiler/views:place" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2eAt_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eLen_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0)
declare %"compiler/views:holding" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eSetAt_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:holding" %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
@olang_loc_7ef79401c16fe1d4_255ec247f03840e8 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eexprPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_f2a9606e62f672e3_f02fc5d7c09a9e07 = external constant [0 x i8]
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecarries(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eLen_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0)
declare %"compiler/views:view" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_2eAt_3ccompiler_2fviews_3aview_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2eholdAdd(ptr %v0, ptr %a0, i64 %a1, %"compiler/views:view" %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeyedBefore(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_adfa23ace0171c5f_e5223cf4b947af3 = external constant [0 x i8]
@olang_loc_3e3606e9c916d325_999483638397109 = external constant [0 x i8]
@olang_loc_1bacef8f79fa259f_b65daa57821eac43 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebufferField(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2erecordPlaces(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecolumnOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_b34deef82c4dbb1e_7a61043bb66e64c2 = external constant [0 x i8]
@olang_loc_f56dc5f524947092_cf97541144f04b56 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aview_3e_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hcddb8d7004bc9cdff185b89d31641a08(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H5cdbeb94ae0c6e2e33fc44df03720816(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ecallTok(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2equoted(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_H7470b4df369a56161d16f5548d1940b6(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eLen_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0)
declare %"compiler/views:fact" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2eAt_3ccompiler_2fviews_3afact_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aplace_3e_2ePush_3ccompiler_2fviews_3aplace_3e(ptr %v0, ptr %a0, %"compiler/views:place" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/views:place" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ebelow(ptr %v0, ptr %a0, %"compiler/views:place" %a1, i64 %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H7aeac163056dab12c3a06ffd3ff9511b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2etokOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eseen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2egivenGrowing(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/views:place" %a2, i64 %a3, i64 %a4, i64 %a5, %"compiler/source:Span" %a6)
declare void @compiler_2fviews_2eviewAdd(ptr %v0, ptr %a0, %"compiler/views:view" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2earrayish(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fviews_2eargPlace(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ekeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_38f43db71f48b164_beb7f8d1a31792c8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2evisit(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eplaceRefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, ptr %a3, ptr %a4)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2ecopy(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fviews_2emerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ematchOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3)
@olang_loc_57534b0b4c840b9f_734207cf536b370b = external constant [0 x i8]
@olang_loc_eef44a73fed7a11e_ba98d4574b3cccca = external constant [0 x i8]
@olang_loc_bd4e25d0ba8f3355_5d1878e7bdcf6d61 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emoduleWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efileWord(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
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
declare void @compiler_2fviews_2ecompiler_2fviews_3aViewer_2efactPut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, i32 %a4, %"compiler/views:place" %a5, %"compiler/source:Span" %a6)
@olang_loc_617a65436beb56f7_865c97eda452f2a3 = external constant [0 x i8]
declare i1 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2emeets(ptr %v0, ptr %a0, %"compiler/views:place" %a1, %"compiler/views:place" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eLen_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0)
declare %"compiler/views:tasked" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2eAt_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2ewhere(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:place" %a1)
declare { i64, [3 x i64] } @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fviews_2etaskCopy(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVecGrowsUnderTask(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteVecTaskHolds(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i8 @compiler_2fviews_2ecompiler_2fviews_3aViewer_2echarAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eLen_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0)
declare %"compiler/views:naming" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2eAt_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fviews_2eplaceAdd(ptr %v0, ptr %a0, %"compiler/views:place" %a1)
@olang_loc_dcfb2f8bfac0bc7f_4146aca391677efb = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fviews_2ecompiler_2fviews_3aViewer_2eafter(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i8 %a3)
@olang_loc_26b1312863f2c2c7_c8d66606dd24933b = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ef97709dce49d3b_530bdd1db1d3a0b7 = external constant [0 x i8]
@olang_loc_cf8b3001c30b10ba_435a3683731d1196 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3atasked_3e_2ePush_3ccompiler_2fviews_3atasked_3e(ptr %v0, ptr %a0, %"compiler/views:tasked" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2eClear_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aholding_3e_2ePush_3ccompiler_2fviews_3aholding_3e(ptr %v0, ptr %a0, %"compiler/views:holding" %a1)
declare void @compiler_2fviews_2ecompiler_2fviews_3astate_2eunname(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/views:naming" @compiler_2fviews_3anaming_2ector(ptr %v0, i64 %a0, %"compiler/views:place" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3anaming_3e_2ePush_3ccompiler_2fviews_3anaming_3e(ptr %v0, ptr %a0, %"compiler/views:naming" %a1)
declare void @compiler_2fviews_3astate_2ector(ptr %out, ptr %v0)
@olang_loc_c6dbc1b994c66c62_e0c1acfc7721040e = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3asummary_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fviews_3aloopFrame_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_4980cc85129191e9_6dc8fef61f0a6fb5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3afact_3e_2ector(ptr %v0, i64 %a0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
