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
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/eval:Machine" = type { ptr, i32, i64, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"compiler/eval:gkey" = type { i64, i32 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/eval:Snapshot" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64, i1, i1 }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/eval:reg" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:dkey" = type { i64, i32, i32, i32, i32, i64 }
define dso_local i64 @compiler_2feval_2ebitOp(i32 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %l2 = alloca i64
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i1
  %l26 = alloca i1
  %l33 = alloca i64
  %l36 = alloca i64
  %l56 = alloca i64
  %l62 = alloca i64
  %l67 = alloca i64
  %l83 = alloca i64
  %l88 = alloca i64
  %l91 = alloca i64
  %l101 = alloca i64
  %l104 = alloca i64
  %l126 = alloca i64
  %l134 = alloca i64
  %l163 = alloca i64
  %l169 = alloca i64
  %rv = alloca i64
  store i32 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t3 = trunc i64 33 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t8 = trunc i64 31 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l23, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l23, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t14 = trunc i64 32 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l26, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb9, label %bb10
bb8:
  br label %bb36
bb9:
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb14
bb11:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l36, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb13
bb13:
  %t46 = load i64, ptr %l36, !tbaa !24
  store i64 %t46, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t47 = load i64, ptr %l33, !tbaa !24
  store i64 %t47, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  %t48 = load i64, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb16, label %bb17
bb16:
  br label %bb32
bb17:
  br label %bb18
bb18:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l10, !tbaa !24
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t68 = trunc i64 31 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l1, !tbaa !65
  %t72 = load i64, ptr %l2, !tbaa !24
  %t74 = sub i64 %t72, 1
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = sub i64 %t74, %t75
  store i64 %t78, ptr %l62, !tbaa !65
  %t81 = load i64, ptr %l62, !tbaa !65
  %t82 = load i64, ptr %l62, !tbaa !65
  %t83 = lshr i64 %t71, %t82
  %t85 = and i64 %t83, 1
  store i64 %t85, ptr %l56, !tbaa !65
  br label %bb21
bb20:
  %t87 = load i64, ptr %l1, !tbaa !65
  %t88 = load i64, ptr %l10, !tbaa !24
  store i64 %t88, ptr %l67, !tbaa !65
  %t91 = load i64, ptr %l67, !tbaa !65
  %t92 = load i64, ptr %l67, !tbaa !65
  %t93 = lshr i64 %t87, %t92
  %t95 = and i64 %t93, 1
  store i64 %t95, ptr %l56, !tbaa !65
  br label %bb21
bb21:
  %t97 = load i64, ptr %l56, !tbaa !65
  store i64 %t97, ptr %l11, !tbaa !65
  %t98 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t100 = trunc i64 33 to i32
  %t101 = icmp eq i32 %t98, %t100
  br i1 %t101, label %bb22, label %bb23
bb22:
  %t103 = load i64, ptr %l11, !tbaa !65
  %t105 = icmp eq i64 %t103, 1
  br i1 %t105, label %bb24, label %bb25
bb23:
  %t107 = load i64, ptr %l11, !tbaa !65
  %t109 = icmp eq i64 %t107, 1
  br i1 %t109, label %bb27, label %bb28
bb24:
  %t111 = load i64, ptr %l4, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l4, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb30
bb27:
  %t115 = load i64, ptr %l10, !tbaa !24
  store i64 %t115, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l9, !tbaa !24
  br label %bb15
bb32:
  %t121 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t123 = trunc i64 33 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb33, label %bb34
bb33:
  %t126 = load i64, ptr %l4, !tbaa !24
  store i64 %t126, ptr %l83, !tbaa !24
  br label %bb35
bb34:
  %t128 = load i64, ptr %l2, !tbaa !24
  store i64 %t128, ptr %l83, !tbaa !24
  br label %bb35
bb35:
  %t130 = load i64, ptr %l83, !tbaa !24
  store i64 %t130, ptr %rv
  br label %ret
bb36:
  %t131 = load i64, ptr %l2, !tbaa !24
  %t133 = icmp eq i64 %t131, 64
  br i1 %t133, label %bb37, label %bb38
bb37:
  %t135 = sub i64 0, 1
  store i64 %t135, ptr %l88, !tbaa !65
  br label %bb39
bb38:
  %t137 = load i64, ptr %l2, !tbaa !24
  store i64 %t137, ptr %l91, !tbaa !65
  %t139 = load i64, ptr %l91, !tbaa !65
  %t140 = load i64, ptr %l91, !tbaa !65
  %t141 = shl i64 1, %t140
  %t143 = sub i64 %t141, 1
  store i64 %t143, ptr %l88, !tbaa !65
  br label %bb39
bb39:
  %t145 = load i64, ptr %l88, !tbaa !65
  store i64 %t145, ptr %l12, !tbaa !65
  %t146 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t148 = trunc i64 36 to i32
  %t149 = icmp eq i32 %t146, %t148
  br i1 %t149, label %bb40, label %bb41
bb40:
  store i64 0, ptr %l13, !tbaa !65
  store i64 0, ptr %l14, !tbaa !24
  %t151 = load i64, ptr %l2, !tbaa !24
  %t153 = sdiv i64 %t151, 8
  store i64 %t153, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t155 = load i64, ptr %l15, !tbaa !24
  %t156 = load i64, ptr %l14, !tbaa !24
  %t159 = icmp sgt i64 %t155, %t156
  br i1 %t159, label %bb42, label %bb43
bb41:
  br label %bb54
bb42:
  %t161 = load i64, ptr %l16, !tbaa !24
  %t163 = icmp sgt i64 %t161, 0
  br i1 %t163, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb47
bb44:
  %t165 = load i64, ptr %l15, !tbaa !24
  %t166 = load i64, ptr %l14, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l16, !tbaa !24
  %t173 = add i64 %t169, %t170
  %t175 = sub i64 %t173, 1
  %t176 = load i64, ptr %l16, !tbaa !24
  %t179 = sdiv i64 %t175, %t176
  store i64 %t179, ptr %l104, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb46
bb46:
  %t181 = load i64, ptr %l104, !tbaa !24
  store i64 %t181, ptr %l101, !tbaa !24
  br label %bb47
bb47:
  %t182 = load i64, ptr %l101, !tbaa !24
  store i64 %t182, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb48
bb48:
  %t183 = load i64, ptr %l18, !tbaa !24
  %t184 = load i64, ptr %l17, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  br label %bb51
bb51:
  %t191 = load i64, ptr %l14, !tbaa !24
  %t192 = load i64, ptr %l18, !tbaa !24
  %t193 = load i64, ptr %l16, !tbaa !24
  %t196 = mul i64 %t192, %t193
  %t199 = add i64 %t191, %t196
  store i64 %t199, ptr %l19, !tbaa !24
  %t201 = load i64, ptr %l13, !tbaa !65
  %t202 = load i64, ptr %l1, !tbaa !65
  %t203 = load i64, ptr %l19, !tbaa !24
  %t205 = mul i64 8, %t203
  store i64 %t205, ptr %l126, !tbaa !65
  %t208 = load i64, ptr %l126, !tbaa !65
  %t209 = load i64, ptr %l126, !tbaa !65
  %t210 = lshr i64 %t202, %t209
  %t212 = and i64 %t210, 255
  %t213 = load i64, ptr %l2, !tbaa !24
  %t215 = sub i64 %t213, 8
  %t216 = load i64, ptr %l19, !tbaa !24
  %t218 = mul i64 8, %t216
  %t221 = sub i64 %t215, %t218
  store i64 %t221, ptr %l134, !tbaa !65
  %t224 = load i64, ptr %l134, !tbaa !65
  %t225 = load i64, ptr %l134, !tbaa !65
  %t226 = shl i64 %t212, %t225
  %t229 = or i64 %t201, %t226
  store i64 %t229, ptr %l13, !tbaa !65
  br label %bb52
bb52:
  %t231 = load i64, ptr %l18, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l18, !tbaa !24
  br label %bb48
bb53:
  %t235 = load i64, ptr %l13, !tbaa !65
  store i64 %t235, ptr %rv
  br label %ret
bb54:
  %t239 = load i64, ptr %l2, !tbaa !24
  %t242 = srem i64 %a3, %t239
  %t243 = load i64, ptr %l2, !tbaa !24
  %t246 = add i64 %t242, %t243
  %t247 = load i64, ptr %l2, !tbaa !24
  %t250 = srem i64 %t246, %t247
  store i64 %t250, ptr %l20, !tbaa !65
  %t253 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t255 = trunc i64 35 to i32
  %t256 = icmp eq i32 %t253, %t255
  br i1 %t256, label %bb55, label %bb56
bb55:
  %t258 = load i64, ptr %l2, !tbaa !24
  %t260 = load i64, ptr %l20, !tbaa !65
  %t263 = sub i64 %t258, %t260
  %t264 = load i64, ptr %l2, !tbaa !24
  %t268 = urem i64 %t263, %t264
  store i64 %t268, ptr %l20, !tbaa !65
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t270 = load i64, ptr %l20, !tbaa !65
  %t272 = icmp eq i64 %t270, 0
  br i1 %t272, label %bb58, label %bb59
bb58:
  %t274 = load i64, ptr %l1, !tbaa !65
  store i64 %t274, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t277 = load i64, ptr %l1, !tbaa !65
  %t278 = load i64, ptr %l20, !tbaa !65
  store i64 %t278, ptr %l163, !tbaa !65
  %t280 = load i64, ptr %l163, !tbaa !65
  %t281 = load i64, ptr %l163, !tbaa !65
  %t282 = shl i64 %t277, %t281
  %t283 = load i64, ptr %l1, !tbaa !65
  %t284 = load i64, ptr %l2, !tbaa !24
  %t286 = load i64, ptr %l20, !tbaa !65
  %t289 = sub i64 %t284, %t286
  store i64 %t289, ptr %l169, !tbaa !65
  %t291 = load i64, ptr %l169, !tbaa !65
  %t292 = load i64, ptr %l169, !tbaa !65
  %t293 = lshr i64 %t283, %t292
  %t296 = or i64 %t282, %t293
  %t297 = load i64, ptr %l12, !tbaa !65
  %t300 = and i64 %t296, %t297
  store i64 %t300, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr %l6, !tbaa !24
  store i64 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineDestructor(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 37
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Haf69023555548e8239d9db5dde4c25f9(ptr %v0, ptr %t3, i32 %a1, { i64, [2 x i64] } %a2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i1 %a4, { i64, [2 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca %"compiler/eval:global"
  %l7 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i1
  %l11 = alloca %"compiler/eval:global"
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca %"compiler/eval:Ptr"
  %l28 = alloca ptr
  %l31 = alloca %"compiler/eval:gkey"
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = call %"compiler/eval:global" @compiler_2feval_3aglobal_2ector(ptr %s0)
  store %"compiler/eval:global" %t6, ptr %l11
  br label %bb2
bb2:
  %t7 = load %"compiler/eval:global", ptr %l11
  store %"compiler/eval:global" %t7, ptr %l6
  %t8 = load i32, ptr %l3, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t12 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 0
  store i64 %t10, ptr %t12, !tbaa !24
  %t15 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 1
  store i1 %a4, ptr %t15, !tbaa !21
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t20 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %t16, { i64, [2 x i64] } %a5)
  store i64 %t20, ptr %l17
  br label %bb3
bb3:
  %t21 = load i64, ptr %l17, !tbaa !24
  %t22 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 2
  store i64 %t21, ptr %t22, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l18, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t24, i32 %t25)
  store i64 %t28, ptr %l21
  br label %bb4
bb4:
  %t29 = load i64, ptr @G_2ecompiler_2feval_2eaGlobal, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 70
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t35 = load i64, ptr %l21, !tbaa !24
  %t38 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t34, i64 %t35, i64 %t29, i64 %t33)
  store %"compiler/eval:Ptr" %t38, ptr %l25
  br label %bb5
bb5:
  %t39 = load %"compiler/eval:Ptr", ptr %l25
  store %"compiler/eval:Ptr" %t39, ptr %l7
  %t40 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 3
  store i64 %t41, ptr %t43, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 43
  store ptr %t46, ptr %l28, !tbaa !29
  %t51 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %a1, i32 %a2)
  store %"compiler/eval:gkey" %t51, ptr %l31
  br label %bb6
bb6:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 42
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l34
  br label %bb7
bb7:
  %t57 = load ptr, ptr %l28, !tbaa !29
  %t58 = load %"compiler/eval:gkey", ptr %l31
  %t59 = load i64, ptr %l34, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eP_Hdbb1ec214f67f51e9ea8789b3bf075dc(ptr %v0, ptr %t57, %"compiler/eval:gkey" %t58, i64 %t59)
  br label %bb8
bb8:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 49
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l36, !tbaa !27
  %t64 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t69 = and i64 %t65, %t66
  store i64 %t69, ptr %l39, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 42
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l42
  br label %bb9
bb9:
  %t75 = load i64, ptr %l42, !tbaa !24
  %t76 = load i64, ptr %l39, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"compiler/eval:alloc", ptr %t78, i64 %t76
  %t80 = getelementptr %"compiler/eval:alloc", ptr %t79, i32 0, i32 8
  store i64 %t75, ptr %t80, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 42
  %t84 = load %"compiler/eval:global", ptr %l6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2ePush_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t83, %"compiler/eval:global" %t84)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eRestore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
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
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i64
  %l45 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l70 = alloca %"compiler/eval:Ptr"
  %l73 = alloca %"compiler/eval:Ptr"
  %l74 = alloca i32
  %l83 = alloca i64
  %l84 = alloca ptr
  %l88 = alloca i64
  %l93 = alloca i64
  %l96 = alloca %"compiler/eval:Ptr"
  %l98 = alloca { i64, ptr }
  %l101 = alloca i64
  %l106 = alloca i64
  %l114 = alloca i64
  %l118 = alloca i64
  %l121 = alloca i64
  %l142 = alloca i64
  %l146 = alloca i64
  %l150 = alloca { i64, ptr }
  %l161 = alloca i64
  %l164 = alloca i64
  %l183 = alloca { i64, ptr }
  %l186 = alloca i64
  %l193 = alloca i64
  %l202 = alloca i64
  %l204 = alloca { i64, ptr }
  %l207 = alloca i64
  %l210 = alloca i64
  %l220 = alloca i64
  %l224 = alloca i64
  %l227 = alloca i64
  %l245 = alloca i32
  %l246 = alloca ptr
  %l250 = alloca { i64, ptr }
  %l251 = alloca i32
  %l252 = alloca i32
  %l253 = alloca ptr
  %l255 = alloca i64
  %l256 = alloca i64
  %l258 = alloca i64
  %l262 = alloca i64
  %l263 = alloca i64
  %l267 = alloca i64
  %l268 = alloca %"compiler/eval:Ptr"
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Snapshot", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l39
  br label %bb1
bb1:
  %t6 = load i64, ptr %l39, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l39, !tbaa !24
  %t10 = icmp sle i64 %t9, 1152921504606846975
  br i1 %t10, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_61f429caa744f672_700daf8f54ef9296)
  unreachable
bb4:
  %t12 = load i64, ptr %l39, !tbaa !24
  %t13 = mul i64 %t12, 8
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %v4, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t17, ptr %lp4
  %t19 = load ptr, ptr %lp4
  store { i64, ptr } %t16, ptr %t19, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Snapshot", ptr %t20, i32 0, i32 1
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t22)
  store i64 %t24, ptr %l45
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_61f429caa744f672_700daf8f54ef9296)
  unreachable
bb6:
  %t25 = load i64, ptr %l45, !tbaa !24
  store i64 %t25, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb12
bb9:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l52, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb11
bb11:
  %t52 = load i64, ptr %l52, !tbaa !24
  store i64 %t52, ptr %l49, !tbaa !24
  br label %bb12
bb12:
  %t53 = load i64, ptr %l49, !tbaa !24
  store i64 %t53, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb14, label %bb15
bb14:
  br label %bb30
bb15:
  br label %bb16
bb16:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l10, !tbaa !24
  %t73 = load i64, ptr %l10, !tbaa !24
  %t76 = call { i32, %"compiler/eval:Ptr" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aPtr_3e_2eGe_Hf62dada0e9720a77250f7fe385f6e19e(ptr %v2, ptr %a2, i64 %t73)
  %t77 = extractvalue { i32, %"compiler/eval:Ptr" } %t76, 1
  %t78 = extractvalue { i32, %"compiler/eval:Ptr" } %t76, 0
  store i32 %t78, ptr %l74
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb18, label %ok.80, !prof !99
ok.80:
  store %"compiler/eval:Ptr" %t77, ptr %l73
  br label %bb17
bb17:
  %t81 = load %"compiler/eval:Ptr", ptr %l73
  store %"compiler/eval:Ptr" %t81, ptr %l70
  br label %bb20
bb18:
  br label %bb19
bb19:
  %t82 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t82, ptr %l70
  br label %bb20
bb20:
  %t84 = load %"compiler/eval:Ptr", ptr %l70
  store %"compiler/eval:Ptr" %t84, ptr %l11
  %t85 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t86 = load i64, ptr %t85, !tbaa !24
  %t88 = icmp ne i64 %t86, 0
  br i1 %t88, label %bb21, label %bb22
bb21:
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t92 = load i64, ptr %t91, !tbaa !24
  %t94 = load ptr, ptr %lp4
  %t96 = getelementptr { i64, ptr }, ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i64, ptr %t97, i64 %t90
  store i64 %t92, ptr %t98, !tbaa !34
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Snapshot", ptr %t99, i32 0, i32 1
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t101, i64 %t102)
  store i64 %t105, ptr %l83
  br label %bb24
bb24:
  %t106 = load i64, ptr %l83, !tbaa !24
  store i64 %t106, ptr %l12, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l84, !tbaa !29
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Snapshot", ptr %t108, i32 0, i32 0
  %t111 = load i64, ptr %l12, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t110, i64 %t111)
  store i64 %t114, ptr %l88
  br label %bb25
bb25:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/eval:Snapshot", ptr %t115, i32 0, i32 0
  %t118 = load i64, ptr %l12, !tbaa !24
  %t120 = add i64 %t118, 1
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t117, i64 %t120)
  store i64 %t123, ptr %l93
  br label %bb26
bb26:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t124, i32 0, i32 70
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load ptr, ptr %l84, !tbaa !29
  %t129 = load i64, ptr %l88, !tbaa !24
  %t130 = load i64, ptr %l93, !tbaa !24
  %t132 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t128, i64 %t129, i64 %t130, i64 %t127)
  store %"compiler/eval:Ptr" %t132, ptr %l96
  br label %bb27
bb27:
  %t133 = load %"compiler/eval:Ptr", ptr %l96
  store %"compiler/eval:Ptr" %t133, ptr %l13
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/eval:Machine", ptr %t134, i32 0, i32 49
  %t137 = load { i64, ptr }, ptr %t136, !tbaa !27
  store { i64, ptr } %t137, ptr %l98, !tbaa !27
  %t138 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t139 = load i64, ptr %t138, !tbaa !24
  %t140 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t143 = and i64 %t139, %t140
  store i64 %t143, ptr %l101, !tbaa !24
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr %"compiler/eval:Snapshot", ptr %t144, i32 0, i32 0
  %t147 = load i64, ptr %l12, !tbaa !24
  %t149 = add i64 %t147, 2
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t146, i64 %t149)
  store i64 %t152, ptr %l106
  br label %bb28
bb28:
  %t153 = load i64, ptr %l106, !tbaa !24
  %t154 = icmp ne i64 %t153, 0
  %t156 = load i64, ptr %l101, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr %"compiler/eval:alloc", ptr %t158, i64 %t156
  %t160 = getelementptr %"compiler/eval:alloc", ptr %t159, i32 0, i32 13
  store i1 %t154, ptr %t160, !tbaa !21
  %t161 = load i64, ptr %l10, !tbaa !24
  %t162 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t163 = load i64, ptr %t162, !tbaa !24
  %t165 = load ptr, ptr %lp4
  %t167 = getelementptr { i64, ptr }, ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i64, ptr %t168, i64 %t161
  store i64 %t163, ptr %t169, !tbaa !34
  br label %bb29
bb29:
  %t170 = load i64, ptr %l9, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l9, !tbaa !24
  br label %bb13
bb30:
  store i64 0, ptr %l14, !tbaa !24
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr %"compiler/eval:Snapshot", ptr %t174, i32 0, i32 1
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t176)
  store i64 %t178, ptr %l114
  br label %bb31
bb31:
  %t179 = load i64, ptr %l114, !tbaa !24
  store i64 %t179, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t180 = load i64, ptr %l15, !tbaa !24
  %t181 = load i64, ptr %l14, !tbaa !24
  %t184 = icmp sgt i64 %t180, %t181
  br i1 %t184, label %bb32, label %bb33
bb32:
  %t186 = load i64, ptr %l16, !tbaa !24
  %t188 = icmp sgt i64 %t186, 0
  br i1 %t188, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb37
bb34:
  %t190 = load i64, ptr %l15, !tbaa !24
  %t191 = load i64, ptr %l14, !tbaa !24
  %t194 = sub i64 %t190, %t191
  %t195 = load i64, ptr %l16, !tbaa !24
  %t198 = add i64 %t194, %t195
  %t200 = sub i64 %t198, 1
  %t201 = load i64, ptr %l16, !tbaa !24
  %t204 = sdiv i64 %t200, %t201
  store i64 %t204, ptr %l121, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb36
bb36:
  %t206 = load i64, ptr %l121, !tbaa !24
  store i64 %t206, ptr %l118, !tbaa !24
  br label %bb37
bb37:
  %t207 = load i64, ptr %l118, !tbaa !24
  store i64 %t207, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb38
bb38:
  %t208 = load i64, ptr %l18, !tbaa !24
  %t209 = load i64, ptr %l17, !tbaa !24
  %t212 = icmp slt i64 %t208, %t209
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb39, label %bb40
bb39:
  br label %bb62
bb40:
  br label %bb41
bb41:
  %t216 = load i64, ptr %l14, !tbaa !24
  %t217 = load i64, ptr %l18, !tbaa !24
  %t218 = load i64, ptr %l16, !tbaa !24
  %t221 = mul i64 %t217, %t218
  %t224 = add i64 %t216, %t221
  store i64 %t224, ptr %l19, !tbaa !24
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t228 = getelementptr %"compiler/eval:Snapshot", ptr %t226, i32 0, i32 1
  %t229 = load i64, ptr %l19, !tbaa !24
  %t232 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t228, i64 %t229)
  store i64 %t232, ptr %l142
  br label %bb42
bb42:
  %t233 = load i64, ptr %l142, !tbaa !24
  store i64 %t233, ptr %l20, !tbaa !24
  %t234 = load ptr, ptr %l1, !tbaa !29
  %t236 = getelementptr %"compiler/eval:Snapshot", ptr %t234, i32 0, i32 0
  %t237 = load i64, ptr %l20, !tbaa !24
  %t240 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t236, i64 %t237)
  store i64 %t240, ptr %l146
  br label %bb43
bb43:
  %t241 = load i64, ptr %l146, !tbaa !24
  %t242 = add i64 %t241, 7
  %t244 = sdiv i64 %t242, 8
  store i64 %t244, ptr %l21, !tbaa !24
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/eval:Machine", ptr %t246, i32 0, i32 49
  %t249 = load { i64, ptr }, ptr %t248, !tbaa !27
  store { i64, ptr } %t249, ptr %l150, !tbaa !27
  %t250 = load i64, ptr %l19, !tbaa !24
  %t251 = load ptr, ptr %lp4
  %t253 = getelementptr { i64, ptr }, ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr i64, ptr %t254, i64 %t250
  %t256 = load i64, ptr %t255, !tbaa !34
  %t257 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t260 = and i64 %t256, %t257
  %t262 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr %"compiler/eval:alloc", ptr %t263, i64 %t260
  %t265 = getelementptr %"compiler/eval:alloc", ptr %t264, i32 0, i32 0
  %t266 = load i64, ptr %t265, !tbaa !24
  %t268 = sdiv i64 %t266, 8
  store i64 %t268, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  %t270 = load i64, ptr %l21, !tbaa !24
  store i64 %t270, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t272 = load i64, ptr %l24, !tbaa !24
  %t273 = load i64, ptr %l23, !tbaa !24
  %t276 = icmp sgt i64 %t272, %t273
  br i1 %t276, label %bb44, label %bb45
bb44:
  %t278 = load i64, ptr %l25, !tbaa !24
  %t280 = icmp sgt i64 %t278, 0
  br i1 %t280, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb49
bb46:
  %t282 = load i64, ptr %l24, !tbaa !24
  %t283 = load i64, ptr %l23, !tbaa !24
  %t286 = sub i64 %t282, %t283
  %t287 = load i64, ptr %l25, !tbaa !24
  %t290 = add i64 %t286, %t287
  %t292 = sub i64 %t290, 1
  %t293 = load i64, ptr %l25, !tbaa !24
  %t296 = sdiv i64 %t292, %t293
  store i64 %t296, ptr %l164, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l164, !tbaa !24
  br label %bb48
bb48:
  %t298 = load i64, ptr %l164, !tbaa !24
  store i64 %t298, ptr %l161, !tbaa !24
  br label %bb49
bb49:
  %t299 = load i64, ptr %l161, !tbaa !24
  store i64 %t299, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb50
bb50:
  %t300 = load i64, ptr %l27, !tbaa !24
  %t301 = load i64, ptr %l26, !tbaa !24
  %t304 = icmp slt i64 %t300, %t301
  %t306 = xor i1 %t304, true
  br i1 %t306, label %bb51, label %bb52
bb51:
  br label %bb60
bb52:
  br label %bb53
bb53:
  %t308 = load i64, ptr %l23, !tbaa !24
  %t309 = load i64, ptr %l27, !tbaa !24
  %t310 = load i64, ptr %l25, !tbaa !24
  %t313 = mul i64 %t309, %t310
  %t316 = add i64 %t308, %t313
  store i64 %t316, ptr %l28, !tbaa !24
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/eval:Machine", ptr %t318, i32 0, i32 45
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  store { i64, ptr } %t321, ptr %l183, !tbaa !27
  %t322 = load i64, ptr %l22, !tbaa !24
  %t323 = load i64, ptr %l28, !tbaa !24
  %t326 = add i64 %t322, %t323
  store i64 %t326, ptr %l186, !tbaa !24
  %t327 = load ptr, ptr %l1, !tbaa !29
  %t329 = getelementptr %"compiler/eval:Snapshot", ptr %t327, i32 0, i32 0
  %t330 = load i64, ptr %l20, !tbaa !24
  %t332 = add i64 %t330, 3
  %t333 = load i64, ptr %l28, !tbaa !24
  %t336 = add i64 %t332, %t333
  %t339 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t329, i64 %t336)
  store i64 %t339, ptr %l193
  br label %bb54
bb54:
  %t340 = load i64, ptr %l193, !tbaa !24
  %t341 = load i64, ptr %l186, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr i64, ptr %t343, i64 %t341
  store i64 %t340, ptr %t344, !tbaa !34
  %t345 = load ptr, ptr %l1, !tbaa !29
  %t347 = getelementptr %"compiler/eval:Snapshot", ptr %t345, i32 0, i32 0
  %t348 = load i64, ptr %l20, !tbaa !24
  %t350 = add i64 %t348, 3
  %t351 = load i64, ptr %l21, !tbaa !24
  %t354 = add i64 %t350, %t351
  %t355 = load i64, ptr %l28, !tbaa !24
  %t358 = add i64 %t354, %t355
  %t361 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t347, i64 %t358)
  store i64 %t361, ptr %l202
  br label %bb55
bb55:
  %t362 = load i64, ptr %l202, !tbaa !24
  store i64 %t362, ptr %l29, !tbaa !24
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/eval:Machine", ptr %t363, i32 0, i32 46
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !27
  store { i64, ptr } %t366, ptr %l204, !tbaa !27
  %t367 = load i64, ptr %l22, !tbaa !24
  %t368 = load i64, ptr %l28, !tbaa !24
  %t371 = add i64 %t367, %t368
  store i64 %t371, ptr %l207, !tbaa !24
  %t372 = load i64, ptr %l29, !tbaa !24
  %t374 = icmp sgt i64 %t372, 0
  br i1 %t374, label %bb56, label %bb57
bb56:
  %t376 = load i64, ptr %l29, !tbaa !24
  %t378 = sub i64 %t376, 1
  %t379 = load ptr, ptr %lp4
  %t381 = getelementptr { i64, ptr }, ptr %t379, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr i64, ptr %t382, i64 %t378
  %t384 = load i64, ptr %t383, !tbaa !34
  store i64 %t384, ptr %l210, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l210, !tbaa !24
  br label %bb58
bb58:
  %t386 = load i64, ptr %l210, !tbaa !24
  %t387 = load i64, ptr %l207, !tbaa !24
  %t388 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !27
  %t390 = getelementptr i64, ptr %t389, i64 %t387
  store i64 %t386, ptr %t390, !tbaa !34
  br label %bb59
bb59:
  %t391 = load i64, ptr %l27, !tbaa !24
  %t393 = add i64 %t391, 1
  store i64 %t393, ptr %l27, !tbaa !24
  br label %bb50
bb60:
  br label %bb61
bb61:
  %t395 = load i64, ptr %l18, !tbaa !24
  %t397 = add i64 %t395, 1
  store i64 %t397, ptr %l18, !tbaa !24
  br label %bb38
bb62:
  store i64 0, ptr %l30, !tbaa !24
  %t399 = load ptr, ptr %l1, !tbaa !29
  %t401 = getelementptr %"compiler/eval:Snapshot", ptr %t399, i32 0, i32 2
  %t403 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t401)
  store i64 %t403, ptr %l220
  br label %bb63
bb63:
  %t404 = load i64, ptr %l220, !tbaa !24
  store i64 %t404, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t405 = load i64, ptr %l31, !tbaa !24
  %t406 = load i64, ptr %l30, !tbaa !24
  %t409 = icmp sgt i64 %t405, %t406
  br i1 %t409, label %bb64, label %bb65
bb64:
  %t411 = load i64, ptr %l32, !tbaa !24
  %t413 = icmp sgt i64 %t411, 0
  br i1 %t413, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb69
bb66:
  %t415 = load i64, ptr %l31, !tbaa !24
  %t416 = load i64, ptr %l30, !tbaa !24
  %t419 = sub i64 %t415, %t416
  %t420 = load i64, ptr %l32, !tbaa !24
  %t423 = add i64 %t419, %t420
  %t425 = sub i64 %t423, 1
  %t426 = load i64, ptr %l32, !tbaa !24
  %t429 = sdiv i64 %t425, %t426
  store i64 %t429, ptr %l227, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l227, !tbaa !24
  br label %bb68
bb68:
  %t431 = load i64, ptr %l227, !tbaa !24
  store i64 %t431, ptr %l224, !tbaa !24
  br label %bb69
bb69:
  %t432 = load i64, ptr %l224, !tbaa !24
  store i64 %t432, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb70
bb70:
  store %olang.scope zeroinitializer, ptr %s12
  %t433 = load i64, ptr %l34, !tbaa !24
  %t434 = load i64, ptr %l33, !tbaa !24
  %t437 = icmp slt i64 %t433, %t434
  %t439 = xor i1 %t437, true
  br i1 %t439, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s12)
  br label %bb84
bb72:
  br label %bb73
bb73:
  %t441 = load i64, ptr %l30, !tbaa !24
  %t442 = load i64, ptr %l34, !tbaa !24
  %t443 = load i64, ptr %l32, !tbaa !24
  %t446 = mul i64 %t442, %t443
  %t449 = add i64 %t441, %t446
  store i64 %t449, ptr %l35, !tbaa !24
  store ptr %a3, ptr %l246, !tbaa !29
  %t452 = load ptr, ptr %l1, !tbaa !29
  %t454 = getelementptr %"compiler/eval:Snapshot", ptr %t452, i32 0, i32 2
  %t455 = load i64, ptr %l35, !tbaa !24
  %t458 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t454, i64 %t455)
  store { i64, ptr } %t458, ptr %l250
  br label %bb74
bb74:
  %t459 = load ptr, ptr %l246, !tbaa !29
  %t460 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t461 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hae4594312d85fd67c5b552e2ad8327fe(ptr %v3, ptr %v1, ptr %t459, { i64, ptr } %t460)
  %t462 = extractvalue { i32, i32 } %t461, 1
  %t463 = extractvalue { i32, i32 } %t461, 0
  store i32 %t463, ptr %l252
  %t464 = icmp ne i32 %t463, 0
  br i1 %t464, label %bb76, label %ok.465, !prof !99
ok.465:
  store i32 %t462, ptr %l251
  br label %bb75
bb75:
  %t466 = load i32, ptr %l251, !tbaa !23
  store i32 %t466, ptr %l245, !tbaa !23
  br label %bb78
bb76:
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s12)
  br label %bb83
bb78:
  %t467 = load i32, ptr %l245, !tbaa !23
  %t468 = load ptr, ptr %l0, !tbaa !29
  store ptr %t468, ptr %l253, !tbaa !29
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/eval:Machine", ptr %t469, i32 0, i32 70
  %t472 = load i64, ptr %t471, !tbaa !24
  store i64 %t472, ptr %l255, !tbaa !24
  %t473 = load i64, ptr @G_2ecompiler_2feval_2egDtor, !tbaa !24
  store i64 %t473, ptr %l256, !tbaa !24
  %t476 = sext i32 %t467 to i64
  store i64 %t476, ptr %l258, !tbaa !24
  %t477 = load ptr, ptr %l1, !tbaa !29
  %t479 = getelementptr %"compiler/eval:Snapshot", ptr %t477, i32 0, i32 3
  %t480 = load i64, ptr %l35, !tbaa !24
  %t483 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t479, i64 %t480)
  store i64 %t483, ptr %l262
  br label %bb79
bb79:
  %t484 = load ptr, ptr %lp4
  %t485 = load i64, ptr %l262, !tbaa !24
  %t486 = getelementptr { i64, ptr }, ptr %t484, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !27
  %t488 = getelementptr i64, ptr %t487, i64 %t485
  %t489 = load i64, ptr %t488, !tbaa !34
  store i64 %t489, ptr %l263, !tbaa !24
  %t490 = load ptr, ptr %l1, !tbaa !29
  %t492 = getelementptr %"compiler/eval:Snapshot", ptr %t490, i32 0, i32 4
  %t493 = load i64, ptr %l35, !tbaa !24
  %t496 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t492, i64 %t493)
  store i64 %t496, ptr %l267
  br label %bb80
bb80:
  %t497 = load i64, ptr %l263, !tbaa !24
  %t498 = load i64, ptr %l267, !tbaa !24
  %t499 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s12, i64 %t497, i64 %t498)
  store %"compiler/eval:Ptr" %t499, ptr %l268
  br label %bb81
bb81:
  %t500 = load ptr, ptr %l253, !tbaa !29
  %t501 = load i64, ptr %l255, !tbaa !24
  %t502 = load i64, ptr %l256, !tbaa !24
  %t503 = load i64, ptr %l258, !tbaa !24
  %t504 = load %"compiler/eval:Ptr", ptr %l268
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddReg(ptr %v0, ptr %t500, i64 %t501, i64 %t502, i64 %t503, %"compiler/eval:Ptr" %t504)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s12)
  br label %bb83
bb83:
  %t505 = load i64, ptr %l34, !tbaa !24
  %t507 = add i64 %t505, 1
  store i64 %t507, ptr %l34, !tbaa !24
  br label %bb70
bb84:
  %t509 = load ptr, ptr %lp4
  %t510 = load { i64, ptr }, ptr %t509, !tbaa !27
  store { i64, ptr } %t510, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceLen(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 88
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = sdiv i64 %t6, 4
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { { i64, ptr }, i64, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eWhy(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, [21 x i64] }
  %l17 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %lp18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %lp21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i32
  %l53 = alloca ptr
  %l56 = alloca i64
  %l60 = alloca i64
  %l63 = alloca i64
  %l84 = alloca ptr
  %l87 = alloca i64
  %l89 = alloca i64
  %l94 = alloca { i64, [21 x i64] }
  %l97 = alloca { i64, [21 x i64] }
  %l98 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l99 = alloca { i64, ptr }
  %l100 = alloca i64
  %l101 = alloca { i64, ptr }
  %l104 = alloca i1
  %l119 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l120 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca { i64, ptr }
  %l125 = alloca i1
  %l134 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l136 = alloca %"compiler/source:Span"
  %l137 = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  %l138 = alloca { i64, ptr }
  %l139 = alloca i64
  %l140 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64, %"compiler/source:Span" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l23
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l2
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l24
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 30
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t7, { i64, [2 x i64] } %a1)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l30
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb4, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l29
  br label %bb3
bb3:
  %t16 = load i64, ptr %l29, !tbaa !24
  store i64 %t16, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  store { i64, ptr } %t17, ptr %l32, !tbaa !27
  %t19 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t19, ptr %l33
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t21 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t20, 0
  %t22 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t21, i64 0, 1
  %t23 = load %"compiler/source:Span", ptr %l33
  %t24 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t22, %"compiler/source:Span" %t23, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t24, ptr %l34
  %t25 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l34, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l35, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  store i64 %t28, ptr %l36, !tbaa !24
  %t29 = load i64, ptr %l36, !tbaa !24
  %t30 = mul i64 %t29, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l37, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = load i64, ptr %l36, !tbaa !24
  %t39 = mul i64 %t38, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t35, ptr %t37, i64 %t39, i1 false)
  %t40 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t41 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l34, i32 0, i32 0
  store { i64, ptr } %t40, ptr %t41, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t42 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l34
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t42, ptr %rv
  br label %ret
bb7:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t44)
  br label %bb8
bb8:
  %t47 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l2, i64 %t47, i1 true)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t51, ptr %l43
  br label %bb11
bb11:
  %t52 = load i64, ptr %l43, !tbaa !24
  %t53 = icmp sgt i64 %t52, 0
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb53
bb13:
  br label %bb14
bb14:
  %t58 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l3)
  %t59 = extractvalue { i32, i64 } %t58, 1
  %t60 = extractvalue { i32, i64 } %t58, 0
  store i32 %t60, ptr %l49
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb16, label %ok.62, !prof !99
ok.62:
  store i64 %t59, ptr %l48
  br label %bb15
bb15:
  %t63 = load i64, ptr %l48, !tbaa !24
  store i64 %t63, ptr %l46, !tbaa !24
  br label %bb18
bb16:
  br label %bb17
bb17:
  br label %bb53
bb18:
  %t64 = load i64, ptr %l46, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 25
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t67, i64 %t64)
  store ptr %t71, ptr %l53
  br label %bb19
bb19:
  %t72 = load ptr, ptr %l53, !tbaa !29
  store ptr %t72, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  %t73 = load ptr, ptr %l6, !tbaa !29
  %t75 = getelementptr %"compiler/mir:Fn", ptr %t73, i32 0, i32 9
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l56
  br label %bb20
bb20:
  %t78 = load i64, ptr %l56, !tbaa !24
  store i64 %t78, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = icmp sgt i64 %t79, %t80
  br i1 %t83, label %bb21, label %bb22
bb21:
  %t85 = load i64, ptr %l9, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb26
bb23:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l7, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t99 = sub i64 %t97, 1
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = sdiv i64 %t99, %t100
  store i64 %t103, ptr %l63, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb25
bb25:
  %t105 = load i64, ptr %l63, !tbaa !24
  store i64 %t105, ptr %l60, !tbaa !24
  br label %bb26
bb26:
  %t106 = load i64, ptr %l60, !tbaa !24
  store i64 %t106, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t107 = load i64, ptr %l11, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb51
bb29:
  br label %bb30
bb30:
  %t115 = load i64, ptr %l7, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  %t117 = load i64, ptr %l9, !tbaa !24
  %t120 = mul i64 %t116, %t117
  %t123 = add i64 %t115, %t120
  %t125 = load ptr, ptr %l6, !tbaa !29
  %t127 = getelementptr %"compiler/mir:Fn", ptr %t125, i32 0, i32 9
  %t131 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t127, i64 %t123)
  store ptr %t131, ptr %l84
  br label %bb31
bb31:
  %t132 = load ptr, ptr %l84, !tbaa !29
  store ptr %t132, ptr %l13, !tbaa !29
  %t133 = load ptr, ptr %l13, !tbaa !29
  %t135 = getelementptr %"compiler/mir:BasicBlock", ptr %t133, i32 0, i32 0
  store ptr %t135, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s7
  %t137 = load i64, ptr %l15, !tbaa !24
  store i64 %t137, ptr %l87, !tbaa !24
  %t138 = load ptr, ptr %l14, !tbaa !29
  %t140 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t138)
  store i64 %t140, ptr %l89
  br label %bb33
bb33:
  %t141 = load i64, ptr %l87, !tbaa !24
  %t142 = load i64, ptr %l89, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb35:
  br label %bb36
bb36:
  %t147 = load ptr, ptr %l14, !tbaa !29
  %t148 = load i64, ptr %l15, !tbaa !24
  %t151 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t147, i64 %t148)
  store { i64, [21 x i64] } %t151, ptr %l94
  br label %bb37
bb37:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l94, i64 176, i1 false)
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l6, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l97, ptr %l16, i64 176, i1 false)
  %t156 = load { i64, [21 x i64] }, ptr %l97
  %t157 = call { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyStmt(ptr %v0, ptr %v0, ptr %s7, ptr %t152, ptr %t153, { i64, [21 x i64] } %t156)
  store { { i64, ptr }, %"compiler/source:Span" } %t157, ptr %l98
  br label %bb38
bb38:
  %t158 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l98
  store { { i64, ptr }, %"compiler/source:Span" } %t158, ptr %l17
  %t159 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l17, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l99, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  store i64 %t162, ptr %l100, !tbaa !24
  %t163 = load i64, ptr %l100, !tbaa !24
  %t164 = mul i64 %t163, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t164)
  %t166 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l101, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = load i64, ptr %l100, !tbaa !24
  %t173 = mul i64 %t172, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t169, ptr %t171, i64 %t173, i1 false)
  %t174 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t174, ptr %lp18
  %t175 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t176 = load ptr, ptr %lp18
  store { i64, ptr } %t175, ptr %t176, !tbaa !27
  %t177 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l17, i32 0, i32 1
  %t178 = load %"compiler/source:Span", ptr %t177
  store %"compiler/source:Span" %t178, ptr %l19
  %t180 = load ptr, ptr %lp18
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t183 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s7, { i64, ptr } %t181, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t183, ptr %l104
  br label %bb39
bb39:
  %t184 = load i1, ptr %l104, !tbaa !21
  %t185 = xor i1 %t184, true
  br i1 %t185, label %bb40, label %bb41
bb40:
  %t187 = load ptr, ptr %lp18
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  %t189 = load ptr, ptr %l6, !tbaa !29
  %t191 = getelementptr %"compiler/mir:Fn", ptr %t189, i32 0, i32 2
  %t192 = load i64, ptr %t191, !tbaa !24
  %t193 = load %"compiler/source:Span", ptr %l19
  %t195 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t188, 0
  %t197 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t195, i64 %t192, 1
  %t199 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t197, %"compiler/source:Span" %t193, 2
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t199, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s7)
  br label %bb43
bb43:
  %t201 = load i64, ptr %l15, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l15, !tbaa !24
  br label %bb32
bb44:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load ptr, ptr %l6, !tbaa !29
  %t207 = load ptr, ptr %l13, !tbaa !29
  %t209 = getelementptr %"compiler/mir:BasicBlock", ptr %t207, i32 0, i32 1
  %t210 = load { i64, [8 x i64] }, ptr %t209
  %t216 = call { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyTerm(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %s5, ptr %t205, ptr %t206, { i64, [8 x i64] } %t210, ptr %l2, ptr %l3)
  store { { i64, ptr }, %"compiler/source:Span" } %t216, ptr %l119
  br label %bb45
bb45:
  %t217 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l119
  store { { i64, ptr }, %"compiler/source:Span" } %t217, ptr %l20
  %t218 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l20, i32 0, i32 0
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  store { i64, ptr } %t219, ptr %l120, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  store i64 %t221, ptr %l121, !tbaa !24
  %t222 = load i64, ptr %l121, !tbaa !24
  %t223 = mul i64 %t222, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t223)
  %t225 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  store { i64, ptr } %t226, ptr %l122, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = load i64, ptr %l121, !tbaa !24
  %t232 = mul i64 %t231, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t228, ptr %t230, i64 %t232, i1 false)
  %t233 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t233, ptr %lp21
  %t234 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t235 = load ptr, ptr %lp21
  store { i64, ptr } %t234, ptr %t235, !tbaa !27
  %t236 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l20, i32 0, i32 1
  %t237 = load %"compiler/source:Span", ptr %t236
  store %"compiler/source:Span" %t237, ptr %l22
  %t239 = load ptr, ptr %lp21
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  %t242 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s5, { i64, ptr } %t240, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t242, ptr %l125
  br label %bb46
bb46:
  %t243 = load i1, ptr %l125, !tbaa !21
  %t244 = xor i1 %t243, true
  br i1 %t244, label %bb47, label %bb48
bb47:
  %t246 = load ptr, ptr %lp21
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  %t248 = load ptr, ptr %l6, !tbaa !29
  %t250 = getelementptr %"compiler/mir:Fn", ptr %t248, i32 0, i32 2
  %t251 = load i64, ptr %t250, !tbaa !24
  %t252 = load %"compiler/source:Span", ptr %l22
  %t254 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t247, 0
  %t256 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t254, i64 %t251, 1
  %t258 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t256, %"compiler/source:Span" %t252, 2
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t258, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s5)
  br label %bb50
bb50:
  %t260 = load i64, ptr %l11, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l11, !tbaa !24
  br label %bb27
bb51:
  br label %bb52
bb52:
  br label %bb10
bb53:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l134, !tbaa !27
  %t264 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t264, ptr %l135, !tbaa !27
  %t265 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t265, ptr %l136
  br label %bb54
bb54:
  %t266 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t267 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %t266, 0
  %t268 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t267, i64 0, 1
  %t269 = load %"compiler/source:Span", ptr %l136
  %t270 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t268, %"compiler/source:Span" %t269, 2
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t270, ptr %l137
  %t271 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l137, i32 0, i32 0
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  store { i64, ptr } %t272, ptr %l138, !tbaa !27
  %t273 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 0
  store i64 %t274, ptr %l139, !tbaa !24
  %t275 = load i64, ptr %l139, !tbaa !24
  %t276 = mul i64 %t275, 1
  %t277 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t276)
  %t278 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t277, 1
  store { i64, ptr } %t279, ptr %l140, !tbaa !27
  %t280 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = load i64, ptr %l139, !tbaa !24
  %t285 = mul i64 %t284, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t281, ptr %t283, i64 %t285, i1 false)
  %t286 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t287 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l137, i32 0, i32 0
  store { i64, ptr } %t286, ptr %t287, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t288 = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %l137
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t288, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, i64, %"compiler/source:Span" } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eadopt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l31 = alloca ptr
  %l38 = alloca %"compiler/eval:scope"
  %l43 = alloca ptr
  %l50 = alloca ptr
  %t51 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i1, ptr %l14, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l19
  br label %bb4
bb4:
  %t14 = load i1, ptr %l19, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l16, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load i64, ptr %l1, !tbaa !24
  %t19 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t22 = and i64 %t18, %t19
  store i64 %t22, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t28 = and i64 %t24, %t25
  store i64 %t28, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 52
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t34, i64 %t30)
  store ptr %t38, ptr %l31
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l31, !tbaa !29
  %t41 = load i64, ptr %l2, !tbaa !24
  %t44 = getelementptr %"compiler/eval:scope", ptr %t39, i32 0, i32 5
  store i64 %t41, ptr %t44, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 52
  %t50 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t51, ptr %v0, ptr %t49, i64 %t50)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t51, i64 152, i1 false)
  br label %bb10
bb10:
  %t54 = getelementptr %"compiler/eval:scope", ptr %l38, i32 0, i32 6
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 52
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l43
  br label %bb11
bb11:
  %t64 = load ptr, ptr %l43, !tbaa !29
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = getelementptr %"compiler/eval:scope", ptr %t64, i32 0, i32 7
  store i64 %t66, ptr %t69, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 52
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t74, i64 %t70)
  store ptr %t78, ptr %l50
  br label %bb12
bb12:
  %t79 = load ptr, ptr %l50, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t84 = getelementptr %"compiler/eval:scope", ptr %t79, i32 0, i32 6
  store i64 %t81, ptr %t84, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/eval:Machine", ptr %t2, i32 0, i32 26
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  store { i64, ptr } %t5, ptr %l5, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i64 %a1
  %t11 = getelementptr %"compiler/eval:cfn", ptr %t10, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 77
  store i64 %t12, ptr %t15, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 78
  store %"compiler/source:Span" %a2, ptr %t20
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t1, i64 %a1, { i64, [1 x i64] } %a2)
  store i64 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i64, ptr %l7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l10
  br label %bb2
bb2:
  %t14 = load i1, ptr %l10, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t19 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t19, ptr %t17, { i64, ptr } %t18)
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i32
  %l4 = alloca { %"compiler/eval:Ptr", i64 }
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i32
  %l19 = alloca ptr
  %l23 = alloca %"compiler/eval:Ptr"
  %l25 = alloca { %"compiler/eval:Ptr", i64 }
  %l32 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i64
  %l39 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l67 = alloca i64
  %l68 = alloca ptr
  %l73 = alloca %"compiler/eval:Ptr"
  %l74 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [4 x i64] }, ptr %l2
  %t7 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1, i64 %t2, { i64, [4 x i64] } %t3)
  store i32 %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load i32, ptr %l18, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l19, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load { i64, [4 x i64] }, ptr %l2
  %t16 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t10, i64 %t11, { i64, [4 x i64] } %t12, i64 1)
  store %"compiler/eval:Ptr" %t16, ptr %l23
  br label %bb2
bb2:
  %t17 = load i32, ptr %l3, !tbaa !23
  %t18 = load ptr, ptr %l19, !tbaa !29
  %t19 = load %"compiler/eval:Ptr", ptr %l23
  %t21 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t18, %"compiler/eval:Ptr" %t19, i32 %t17)
  store { %"compiler/eval:Ptr", i64 } %t21, ptr %l25
  br label %bb3
bb3:
  %t22 = load { %"compiler/eval:Ptr", i64 }, ptr %l25
  store { %"compiler/eval:Ptr", i64 } %t22, ptr %l4
  %t23 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  store %"compiler/eval:Ptr" %t24, ptr %l5
  %t26 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l6, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 22
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = icmp sge i64 0, 0
  br i1 %t34, label %bb6, label %bb7
bb5:
  br label %bb8
bb6:
  %t36 = mul i64 0, 1
  %t37 = insertvalue { i64, ptr } undef, i64 0, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_9c6d2d38b14ece16_85850a0ccdf8ec6a)
  unreachable
bb8:
  %t40 = load i64, ptr %l6, !tbaa !24
  store i64 %t40, ptr %l32, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l33, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l36
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l33, !tbaa !29
  %t48 = load i32, ptr %l36, !tbaa !23
  %t49 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t47, i32 %t48)
  store i64 %t49, ptr %l37
  br label %bb10
bb10:
  %t50 = load i64, ptr %l32, !tbaa !24
  %t51 = load i64, ptr %l37, !tbaa !24
  %t52 = mul i64 %t50, %t51
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  store i64 %t54, ptr %l39, !tbaa !24
  %t55 = load i64, ptr %l39, !tbaa !24
  %t56 = icmp sge i64 %t55, 0
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load i64, ptr %l39, !tbaa !24
  %t59 = mul i64 %t58, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t63, ptr %lp8
  %t65 = load ptr, ptr %lp8
  store { i64, ptr } %t62, ptr %t65, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  store i64 %t66, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t68 = load i64, ptr %l10, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = icmp sgt i64 %t68, %t69
  br i1 %t72, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_3e93cd40ddf47e2b_3ba0afa8b25b773f)
  unreachable
bb13:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb18
bb15:
  %t78 = load i64, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = sub i64 %t78, %t79
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = add i64 %t82, %t83
  %t88 = sub i64 %t86, 1
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = sdiv i64 %t88, %t89
  store i64 %t92, ptr %l49, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb17
bb17:
  %t94 = load i64, ptr %l49, !tbaa !24
  store i64 %t94, ptr %l46, !tbaa !24
  br label %bb18
bb18:
  %t95 = load i64, ptr %l46, !tbaa !24
  store i64 %t95, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t96 = load i64, ptr %l13, !tbaa !24
  %t97 = load i64, ptr %l12, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l13, !tbaa !24
  %t106 = load i64, ptr %l11, !tbaa !24
  %t109 = mul i64 %t105, %t106
  %t112 = add i64 %t104, %t109
  store i64 %t112, ptr %l14, !tbaa !24
  %t114 = load i64, ptr %l14, !tbaa !24
  store i64 %t114, ptr %l67, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l68, !tbaa !29
  %t116 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t126 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t117, i64 %t123)
  store %"compiler/eval:Ptr" %t126, ptr %l73
  br label %bb23
bb23:
  %t127 = load ptr, ptr %l68, !tbaa !29
  %t128 = load %"compiler/eval:Ptr", ptr %l73
  %t129 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t127, %"compiler/eval:Ptr" %t128, i64 1)
  store i64 %t129, ptr %l74
  br label %bb24
bb24:
  %t130 = load i64, ptr %l74, !tbaa !24
  %t131 = trunc i64 %t130 to i8
  %t133 = load ptr, ptr %lp8
  %t134 = load i64, ptr %l67, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i8, ptr %t136, i64 %t134
  store i8 %t131, ptr %t137, !tbaa !32
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  %t138 = load i64, ptr %l13, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l13, !tbaa !24
  br label %bb19
bb26:
  %t142 = load ptr, ptr %lp8
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecaseHolds(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca { i64, i64 }
  %l8 = alloca i64
  %l11 = alloca i64
  %l22 = alloca { i64, i64 }
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t7 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp ne i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t15 = and i64 %t11, %a5
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp eq i64 %t15, %t16
  store i1 %t19, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i64, ptr %l2, !tbaa !24
  %t27 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %t21, i32 %t22, i64 %t23)
  store { i64, i64 } %t27, ptr %l22
  br label %bb5
bb5:
  %t28 = load { i64, i64 }, ptr %l22
  store { i64, i64 } %t28, ptr %l6
  %t29 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  store i64 %t33, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp eq i64 %t30, %t36
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp eq i64 %t41, %a4
  store i1 %t45, ptr %l28, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb8
bb8:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l17 = alloca %"compiler/eval:scope"
  %l20 = alloca i1
  %l28 = alloca %"compiler/eval:scope"
  %l34 = alloca %"compiler/eval:task"
  %l39 = alloca ptr
  %l45 = alloca %"compiler/eval:scope"
  %l52 = alloca ptr
  %l73 = alloca i64
  %l75 = alloca { i64, ptr }
  %l79 = alloca i1
  %t11 = alloca %"compiler/eval:scope", align 8
  %t33 = alloca %"compiler/eval:scope", align 8
  %t68 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %t1, %t2
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 52
  %t10 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t9, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t11, i64 152, i1 false)
  br label %bb2
bb2:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l17, i32 0, i32 10
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = icmp sge i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 22
  %t22 = load i1, ptr %t21, !tbaa !21
  %t24 = xor i1 %t22, true
  store i1 %t24, ptr %l20, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l20, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  br label %bb23
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 52
  %t32 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t33, ptr %v0, ptr %t31, i64 %t32)
  call void @llvm.memmove.p0.p0.i64(ptr %l28, ptr %t33, i64 152, i1 false)
  br label %bb9
bb9:
  %t36 = getelementptr %"compiler/eval:scope", ptr %l28, i32 0, i32 10
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 56
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/eval:task" %t47, ptr %l34
  br label %bb10
bb10:
  %t48 = getelementptr %"compiler/eval:task", ptr %l34, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/eval:Machine", ptr %t51, i32 0, i32 52
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t53, i64 %t54)
  store ptr %t57, ptr %l39
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l39, !tbaa !29
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = getelementptr %"compiler/eval:scope", ptr %t58, i32 0, i32 10
  store i64 %t60, ptr %t63, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 52
  %t67 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t68, ptr %v0, ptr %t66, i64 %t67)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t68, i64 152, i1 false)
  br label %bb12
bb12:
  %t71 = getelementptr %"compiler/eval:scope", ptr %l45, i32 0, i32 10
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = icmp slt i64 %t72, 0
  br i1 %t74, label %bb13, label %bb14
bb13:
  %t76 = load i64, ptr %l3, !tbaa !24
  store i64 -1, ptr %l9, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 52
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t80, i64 %t76)
  store ptr %t84, ptr %l52
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t85 = load ptr, ptr %l52, !tbaa !29
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = getelementptr %"compiler/eval:scope", ptr %t85, i32 0, i32 11
  store i64 %t87, ptr %t90, !tbaa !24
  br label %bb16
bb16:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %t91, i64 %t92, i64 %t93)
  br label %bb17
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 59
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = load i64, ptr %l1, !tbaa !24
  %t103 = add i64 %t101, 1
  %t106 = icmp sgt i64 %t100, %t103
  br i1 %t106, label %bb18, label %bb19
bb18:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l1, !tbaa !24
  %t111 = add i64 %t109, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t108, i64 %t111)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb1
bb23:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/eval:Machine", ptr %t114, i32 0, i32 22
  %t117 = load i1, ptr %t116, !tbaa !21
  br i1 %t117, label %bb24, label %bb25
bb24:
  br label %ret
bb25:
  br label %bb26
bb26:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 62
  %t122 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t121, i64 %t122)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/eval:Machine", ptr %t125, i32 0, i32 62
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t127)
  store i64 %t129, ptr %l73
  br label %bb29
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/eval:Machine", ptr %t130, i32 0, i32 58
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l75, !tbaa !27
  %t134 = load i64, ptr %l1, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr %"compiler/eval:frame", ptr %t137, i64 %t134
  %t139 = getelementptr %"compiler/eval:frame", ptr %t138, i32 0, i32 9
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load i64, ptr %l73, !tbaa !24
  %t143 = icmp sgt i64 %t141, %t140
  br i1 %t143, label %bb30, label %bb31
bb30:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/eval:Machine", ptr %t145, i32 0, i32 22
  %t148 = load i1, ptr %t147, !tbaa !21
  %t150 = xor i1 %t148, true
  store i1 %t150, ptr %l79, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb32
bb32:
  %t152 = load i1, ptr %l79, !tbaa !21
  %t153 = xor i1 %t152, true
  br i1 %t153, label %bb33, label %bb34
bb33:
  br label %bb42
bb34:
  br label %bb35
bb35:
  %t155 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %t155)
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/eval:Machine", ptr %t157, i32 0, i32 59
  %t160 = load i64, ptr %t159, !tbaa !24
  %t161 = load i64, ptr %l1, !tbaa !24
  %t163 = add i64 %t161, 1
  %t166 = icmp sgt i64 %t160, %t163
  br i1 %t166, label %bb37, label %bb38
bb37:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i64, ptr %l1, !tbaa !24
  %t171 = add i64 %t169, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t168, i64 %t171)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb28
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2econvertArray(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [4 x i64] } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/eval:Ptr"
  %l15 = alloca { %"compiler/eval:Ptr", i64 }
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i64
  %l23 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i32
  %l33 = alloca %"compiler/eval:Ptr"
  %l38 = alloca i32
  %l42 = alloca i32
  %l45 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i1
  %l52 = alloca i1
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca i64
  %l70 = alloca %"compiler/eval:Ptr"
  %l80 = alloca ptr
  %l84 = alloca %"compiler/eval:Ptr"
  %l89 = alloca { %"compiler/eval:Ptr", i64 }
  %l95 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca %"compiler/eval:Ptr"
  %l105 = alloca %"compiler/eval:Ptr"
  %l108 = alloca i64
  %l112 = alloca ptr
  %l116 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i64, ptr %l1, !tbaa !24
  %t8 = load { i64, [4 x i64] }, ptr %l3
  %t12 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t6, i64 %t7, { i64, [4 x i64] } %t8)
  store i32 %t12, ptr %l23
  br label %bb1
bb1:
  %t13 = load i32, ptr %l23, !tbaa !23
  store i32 %t13, ptr %l6, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l6, !tbaa !23
  %t18 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l26
  br label %bb2
bb2:
  %t19 = load i32, ptr %l26, !tbaa !23
  store i32 %t19, ptr %l7, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l4, !tbaa !23
  %t24 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l29
  br label %bb3
bb3:
  %t25 = load i32, ptr %l29, !tbaa !23
  store i32 %t25, ptr %l8, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l1, !tbaa !24
  %t28 = load { i64, [4 x i64] }, ptr %l3
  %t32 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t26, i64 %t27, { i64, [4 x i64] } %t28, i64 1)
  store %"compiler/eval:Ptr" %t32, ptr %l33
  br label %bb4
bb4:
  %t33 = load %"compiler/eval:Ptr", ptr %l33
  store %"compiler/eval:Ptr" %t33, ptr %l9
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 22
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t40 = load i32, ptr %l7, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l38
  br label %bb8
bb8:
  %t44 = load i32, ptr %l38, !tbaa !23
  %t45 = icmp ne i32 %t44, 0
  store i1 %t45, ptr %l10, !tbaa !21
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t48 = load i32, ptr %l8, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l42
  br label %bb9
bb9:
  %t52 = load i32, ptr %l42, !tbaa !23
  %t53 = icmp ne i32 %t52, 0
  store i1 %t53, ptr %l11, !tbaa !21
  %t55 = load i1, ptr %l10, !tbaa !21
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = load ptr, ptr %l5, !tbaa !29
  store ptr %t57, ptr %l46, !tbaa !29
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t59 = load i32, ptr %l6, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l49
  br label %bb12
bb11:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb14
bb12:
  %t63 = load ptr, ptr %l46, !tbaa !29
  %t64 = load i32, ptr %l49, !tbaa !23
  %t65 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t65, ptr %l50
  br label %bb13
bb13:
  %t66 = load i1, ptr %l50, !tbaa !21
  %t67 = xor i1 %t66, true
  store i1 %t67, ptr %l45, !tbaa !21
  br label %bb14
bb14:
  %t69 = load i1, ptr %l45, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t70 = load i1, ptr %l11, !tbaa !21
  %t72 = xor i1 %t70, true
  store i1 %t72, ptr %l52, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb17
bb17:
  %t74 = load i1, ptr %l52, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l7, !tbaa !23
  %t79 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t79, ptr %l57
  br label %bb20
bb19:
  br label %bb31
bb20:
  %t80 = load i64, ptr %l57, !tbaa !24
  store i64 %t80, ptr %l12, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  store i64 %t81, ptr %l58, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l59, !tbaa !29
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t84 = load i32, ptr %l7, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l62
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l59, !tbaa !29
  %t89 = load i32, ptr %l62, !tbaa !23
  %t90 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t88, i32 %t89)
  store i64 %t90, ptr %l63
  br label %bb22
bb22:
  %t91 = load i64, ptr %l58, !tbaa !24
  %t92 = load i64, ptr %l63, !tbaa !24
  %t93 = mul i64 %t91, %t92
  store i64 %t93, ptr %l13, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l13, !tbaa !24
  %t97 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/eval:Machine", ptr %t98, i32 0, i32 70
  %t101 = load i64, ptr %t100, !tbaa !24
  %t106 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t95, i64 %t96, i64 %t97, i64 %t101)
  store %"compiler/eval:Ptr" %t106, ptr %l70
  br label %bb23
bb23:
  %t107 = load %"compiler/eval:Ptr", ptr %l70
  store %"compiler/eval:Ptr" %t107, ptr %l14
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 22
  %t111 = load i1, ptr %t110, !tbaa !21
  br i1 %t111, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/eval:Ptr", ptr %l14
  %t115 = load %"compiler/eval:Ptr", ptr %l9
  %t116 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t113, %"compiler/eval:Ptr" %t114, %"compiler/eval:Ptr" %t115, i64 %t116)
  br label %bb27
bb27:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l2
  %t123 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122, i64 8, i64 %t123)
  br label %bb28
bb28:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l80, !tbaa !29
  %t128 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t129 = load i64, ptr %t128, !tbaa !24
  %t130 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t131 = load i64, ptr %t130, !tbaa !24
  %t133 = add i64 %t131, 8
  %t136 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t129, i64 %t133)
  store %"compiler/eval:Ptr" %t136, ptr %l84
  br label %bb29
bb29:
  %t137 = load %"compiler/eval:Ptr", ptr %l14
  %t138 = load ptr, ptr %l80, !tbaa !29
  %t139 = load %"compiler/eval:Ptr", ptr %l84
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t138, %"compiler/eval:Ptr" %t139, %"compiler/eval:Ptr" %t137)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load %"compiler/eval:Ptr", ptr %l9
  %t143 = load i32, ptr %l6, !tbaa !23
  %t147 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t141, %"compiler/eval:Ptr" %t142, i32 %t143)
  store { %"compiler/eval:Ptr", i64 } %t147, ptr %l89
  br label %bb32
bb32:
  %t148 = load { %"compiler/eval:Ptr", i64 }, ptr %l89
  store { %"compiler/eval:Ptr", i64 } %t148, ptr %l15
  %t149 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l15, i32 0, i32 0
  %t150 = load %"compiler/eval:Ptr", ptr %t149
  store %"compiler/eval:Ptr" %t150, ptr %l16
  %t152 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l15, i32 0, i32 1
  %t153 = load i64, ptr %t152, !tbaa !24
  store i64 %t153, ptr %l17, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 22
  %t158 = load i1, ptr %t157, !tbaa !21
  br i1 %t158, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t160 = load i1, ptr %l11, !tbaa !21
  br i1 %t160, label %bb36, label %bb37
bb36:
  %t162 = load ptr, ptr %l5, !tbaa !29
  store ptr %t162, ptr %l95, !tbaa !29
  %t163 = load ptr, ptr %l5, !tbaa !29
  %t164 = load i32, ptr %l4, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l98
  br label %bb38
bb37:
  br label %bb46
bb38:
  %t168 = load ptr, ptr %l95, !tbaa !29
  %t169 = load i32, ptr %l98, !tbaa !23
  %t170 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t168, i32 %t169)
  store i1 %t170, ptr %l99
  br label %bb39
bb39:
  %t171 = load i1, ptr %l99, !tbaa !21
  br i1 %t171, label %bb40, label %bb41
bb40:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load %"compiler/eval:Ptr", ptr %l2
  %t174 = load %"compiler/eval:Ptr", ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t172, %"compiler/eval:Ptr" %t173, %"compiler/eval:Ptr" %t174)
  br label %bb42
bb41:
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l103, !tbaa !29
  %t179 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t179, ptr %l104
  %t180 = load %"compiler/eval:Ptr", ptr %l16
  store %"compiler/eval:Ptr" %t180, ptr %l105
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l8, !tbaa !23
  %t185 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t181, i32 %t182)
  store i64 %t185, ptr %l108
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t186 = load ptr, ptr %l103, !tbaa !29
  %t187 = load %"compiler/eval:Ptr", ptr %l104
  %t188 = load %"compiler/eval:Ptr", ptr %l105
  %t189 = load i64, ptr %l108, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t186, %"compiler/eval:Ptr" %t187, %"compiler/eval:Ptr" %t188, i64 %t189)
  br label %bb44
bb44:
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb46:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/eval:Ptr", ptr %l2
  %t192 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t190, %"compiler/eval:Ptr" %t191, i64 8, i64 %t192)
  br label %bb47
bb47:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l112, !tbaa !29
  %t197 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t198 = load i64, ptr %t197, !tbaa !24
  %t199 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t200 = load i64, ptr %t199, !tbaa !24
  %t202 = add i64 %t200, 8
  %t205 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t198, i64 %t202)
  store %"compiler/eval:Ptr" %t205, ptr %l116
  br label %bb48
bb48:
  %t206 = load %"compiler/eval:Ptr", ptr %l16
  %t207 = load ptr, ptr %l112, !tbaa !29
  %t208 = load %"compiler/eval:Ptr", ptr %l116
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t207, %"compiler/eval:Ptr" %t208, %"compiler/eval:Ptr" %t206)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edisown(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %l22 = alloca %"compiler/eval:scope"
  %l26 = alloca i1
  %l29 = alloca i1
  %l37 = alloca %"compiler/eval:scope"
  %l45 = alloca %"compiler/eval:scope"
  %l50 = alloca ptr
  %l56 = alloca %"compiler/eval:scope"
  %l66 = alloca %"compiler/eval:scope"
  %l77 = alloca %"compiler/eval:scope"
  %l82 = alloca ptr
  %l90 = alloca ptr
  %t11 = alloca %"compiler/eval:scope", align 8
  %t40 = alloca %"compiler/eval:scope", align 8
  %t56 = alloca %"compiler/eval:scope", align 8
  %t63 = alloca %"compiler/eval:scope", align 8
  %t99 = alloca %"compiler/eval:scope", align 8
  %t121 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %t1, %t2
  store i64 %t5, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 52
  %t10 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t9, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t11, i64 152, i1 false)
  br label %bb1
bb1:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l22, i32 0, i32 5
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp eq i64 %t17, 0
  br i1 %t19, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb5
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t21, i64 %t22)
  store i1 %t25, ptr %l29
  br label %bb4
bb4:
  %t26 = load i1, ptr %l29, !tbaa !21
  %t27 = xor i1 %t26, true
  store i1 %t27, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l26, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t34 = and i64 %t30, %t31
  store i64 %t34, ptr %l4, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/eval:Machine", ptr %t36, i32 0, i32 52
  %t39 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t40, ptr %v0, ptr %t38, i64 %t39)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t40, i64 152, i1 false)
  br label %bb9
bb9:
  %t43 = getelementptr %"compiler/eval:scope", ptr %l37, i32 0, i32 6
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = icmp eq i64 %t44, %t45
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load i64, ptr %l4, !tbaa !24
  store i64 %t50, ptr %l5, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 52
  %t55 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t56, ptr %v0, ptr %t54, i64 %t55)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t56, i64 152, i1 false)
  br label %bb12
bb11:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 52
  %t62 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t63, ptr %v0, ptr %t61, i64 %t62)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t63, i64 152, i1 false)
  br label %bb14
bb12:
  %t66 = getelementptr %"compiler/eval:scope", ptr %l45, i32 0, i32 7
  %t67 = load i64, ptr %t66, !tbaa !24
  store i64 %t67, ptr %l6, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 52
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l50
  br label %bb13
bb13:
  %t76 = load ptr, ptr %l50, !tbaa !29
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = getelementptr %"compiler/eval:scope", ptr %t76, i32 0, i32 6
  store i64 %t78, ptr %t81, !tbaa !24
  br label %bb27
bb14:
  %t82 = getelementptr %"compiler/eval:scope", ptr %l56, i32 0, i32 6
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = icmp ne i64 %t85, 0
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  br label %bb26
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t91, i32 0, i32 52
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t98 = and i64 %t94, %t95
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t99, ptr %v0, ptr %t93, i64 %t98)
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t99, i64 152, i1 false)
  br label %bb19
bb19:
  %t102 = getelementptr %"compiler/eval:scope", ptr %l66, i32 0, i32 7
  %t103 = load i64, ptr %t102, !tbaa !24
  store i64 %t103, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l1, !tbaa !24
  %t109 = icmp eq i64 %t105, %t106
  br i1 %t109, label %bb20, label %bb21
bb20:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t112 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t115 = and i64 %t111, %t112
  store i64 %t115, ptr %l10, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 52
  %t120 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t121, ptr %v0, ptr %t119, i64 %t120)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t121, i64 152, i1 false)
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t124 = getelementptr %"compiler/eval:scope", ptr %l77, i32 0, i32 7
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l11, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 52
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t129, i64 %t130)
  store ptr %t133, ptr %l82
  br label %bb23
bb23:
  %t134 = load ptr, ptr %l82, !tbaa !29
  %t136 = load i64, ptr %l11, !tbaa !24
  %t139 = getelementptr %"compiler/eval:scope", ptr %t134, i32 0, i32 7
  store i64 %t136, ptr %t139, !tbaa !24
  br label %bb26
bb24:
  %t140 = load i64, ptr %l9, !tbaa !24
  store i64 %t140, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  br label %bb15
bb26:
  br label %bb27
bb27:
  %t142 = load i64, ptr %l2, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/eval:Machine", ptr %t144, i32 0, i32 52
  %t150 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t146, i64 %t142)
  store ptr %t150, ptr %l90
  br label %bb28
bb28:
  %t151 = load ptr, ptr %l90, !tbaa !29
  %t153 = load i64, ptr %l14, !tbaa !24
  %t156 = getelementptr %"compiler/eval:scope", ptr %t151, i32 0, i32 5
  store i64 %t153, ptr %t156, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropDefers(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i1
  %l21 = alloca i64
  %l28 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca i64
  %l67 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i64
  %l75 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca i64
  %l83 = alloca i64
  %l87 = alloca ptr
  %l90 = alloca i64
  %l93 = alloca ptr
  %l96 = alloca i64
  %l99 = alloca ptr
  %l102 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 67
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 66
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l21
  br label %bb5
bb4:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb6
bb5:
  %t21 = load i64, ptr %l21, !tbaa !24
  %t23 = icmp eq i64 %t21, %a1
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l17, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb7, label %bb8
bb7:
  br label %bb43
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 67
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l28
  br label %bb10
bb10:
  %t36 = load i64, ptr %l28, !tbaa !24
  %t38 = icmp ne i64 %t36, %a2
  br i1 %t38, label %bb11, label %bb12
bb11:
  br label %bb42
bb12:
  br label %bb13
bb13:
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 67
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l34
  br label %bb14
bb14:
  %t47 = load i64, ptr %l34, !tbaa !24
  %t48 = sub i64 %t47, 1
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb20
bb17:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l42, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb19
bb19:
  %t76 = load i64, ptr %l42, !tbaa !24
  store i64 %t76, ptr %l39, !tbaa !24
  br label %bb20
bb20:
  %t77 = load i64, ptr %l39, !tbaa !24
  store i64 %t77, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  br label %bb32
bb23:
  br label %bb24
bb24:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l10, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/eval:Machine", ptr %t96, i32 0, i32 66
  store ptr %t98, ptr %l61, !tbaa !29
  %t99 = load i64, ptr %l10, !tbaa !24
  store i64 %t99, ptr %l62, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 66
  %t103 = load i64, ptr %l10, !tbaa !24
  %t105 = add i64 %t103, 1
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t102, i64 %t105)
  store i64 %t108, ptr %l67
  br label %bb25
bb25:
  %t109 = load ptr, ptr %l61, !tbaa !29
  %t110 = load i64, ptr %l62, !tbaa !24
  %t111 = load i64, ptr %l67, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t109, i64 %t110, i64 %t111)
  br label %bb26
bb26:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/eval:Machine", ptr %t112, i32 0, i32 67
  store ptr %t114, ptr %l69, !tbaa !29
  %t115 = load i64, ptr %l10, !tbaa !24
  store i64 %t115, ptr %l70, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/eval:Machine", ptr %t116, i32 0, i32 67
  %t119 = load i64, ptr %l10, !tbaa !24
  %t121 = add i64 %t119, 1
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t118, i64 %t121)
  store i64 %t124, ptr %l75
  br label %bb27
bb27:
  %t125 = load ptr, ptr %l69, !tbaa !29
  %t126 = load i64, ptr %l70, !tbaa !24
  %t127 = load i64, ptr %l75, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t125, i64 %t126, i64 %t127)
  br label %bb28
bb28:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/eval:Machine", ptr %t128, i32 0, i32 68
  store ptr %t130, ptr %l77, !tbaa !29
  %t131 = load i64, ptr %l10, !tbaa !24
  store i64 %t131, ptr %l78, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 68
  %t135 = load i64, ptr %l10, !tbaa !24
  %t137 = add i64 %t135, 1
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t134, i64 %t137)
  store i64 %t140, ptr %l83
  br label %bb29
bb29:
  %t141 = load ptr, ptr %l77, !tbaa !29
  %t142 = load i64, ptr %l78, !tbaa !24
  %t143 = load i64, ptr %l83, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t141, i64 %t142, i64 %t143)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t144 = load i64, ptr %l9, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l9, !tbaa !24
  br label %bb21
bb32:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/eval:Machine", ptr %t148, i32 0, i32 66
  store ptr %t150, ptr %l87, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/eval:Machine", ptr %t151, i32 0, i32 66
  %t155 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t153)
  store i64 %t155, ptr %l90
  br label %bb33
bb33:
  %t156 = load i64, ptr %l90, !tbaa !24
  %t157 = sub i64 %t156, 1
  %t158 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t158, i64 %t157)
  br label %bb34
bb34:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/eval:Machine", ptr %t160, i32 0, i32 67
  store ptr %t162, ptr %l93, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 67
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t165)
  store i64 %t167, ptr %l96
  br label %bb35
bb35:
  %t168 = load i64, ptr %l96, !tbaa !24
  %t169 = sub i64 %t168, 1
  %t170 = load ptr, ptr %l93, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t170, i64 %t169)
  br label %bb36
bb36:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/eval:Machine", ptr %t172, i32 0, i32 68
  store ptr %t174, ptr %l99, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 68
  %t179 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t177)
  store i64 %t179, ptr %l102
  br label %bb37
bb37:
  %t180 = load i64, ptr %l102, !tbaa !24
  %t181 = sub i64 %t180, 1
  %t182 = load ptr, ptr %l99, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t182, i64 %t181)
  br label %bb38
bb38:
  br i1 %a3, label %bb39, label %bb40
bb39:
  br label %ret
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t186 = load i64, ptr %l4, !tbaa !24
  %t188 = sub i64 %t186, 1
  store i64 %t188, ptr %l4, !tbaa !24
  br label %bb2
bb43:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:frame"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"compiler/eval:frame"
  %l23 = alloca i64
  %l26 = alloca i64
  %l45 = alloca { i64, ptr }
  %l52 = alloca i1
  %l59 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t8, i32 0, i32 58
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l14, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr %"compiler/eval:frame", ptr %t15, i64 %t6
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t16, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l16, i64 136, i1 false)
  store i64 0, ptr %l3, !tbaa !24
  %t17 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 5
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 4
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = sub i64 %t18, %t20
  store i64 %t23, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb1, label %bb2
bb1:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t51 = load i64, ptr %l26, !tbaa !24
  store i64 %t51, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t52 = load i64, ptr %l23, !tbaa !24
  store i64 %t52, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 60
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l45, !tbaa !27
  %t75 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 4
  %t76 = load i64, ptr %t75, !tbaa !24
  %t80 = add i64 %t76, %t69
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i64, ptr %t83, i64 %t80
  %t85 = load i64, ptr %t84, !tbaa !34
  store i64 %t85, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t87, i64 %t88)
  store i1 %t91, ptr %l52
  br label %bb11
bb11:
  %t92 = load i1, ptr %l52, !tbaa !21
  br i1 %t92, label %bb12, label %bb13
bb12:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropScope(ptr %v0, ptr %t93, i64 %t94)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t97 = load i64, ptr %l7, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l7, !tbaa !24
  br label %bb7
bb17:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 6
  %t103 = load i64, ptr %t102, !tbaa !24
  %t106 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t101, i64 %t103)
  store i1 %t106, ptr %l59
  br label %bb18
bb18:
  %t107 = load i1, ptr %l59, !tbaa !21
  br i1 %t107, label %bb19, label %bb20
bb19:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 6
  %t110 = load i64, ptr %t109, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropScope(ptr %v0, ptr %t108, i64 %t110)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 62
  %t116 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 9
  %t117 = load i64, ptr %t116, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t115, i64 %t117)
  br label %bb23
bb23:
  %t120 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %t120)
  br label %bb24
bb24:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 66
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 66
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = sub i64 %t14, 1
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t13, i64 %t16)
  store i64 %t19, ptr %l13
  br label %bb5
bb4:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb5:
  %t21 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp sge i64 %t21, %a1
  store i1 %t23, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l8, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = sub i64 %t28, 1
  store i64 %t30, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 66
  %t35 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t34, i64 %t35)
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 67
  %t41 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t40, i64 %t41)
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 68
  %t47 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2edropWork(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, [21 x i64] }
  %l8 = alloca { i64, [8 x i64] }
  %l9 = alloca i32
  %l13 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca i64
  %l30 = alloca { i64, [21 x i64] }
  %l31 = alloca { i64, [21 x i64] }
  %l33 = alloca { i64, [21 x i64] }
  %l35 = alloca { i64, [21 x i64] }
  %l42 = alloca i64
  %rv = alloca i1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 25
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  br label %bb2
bb2:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb45
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/mir:Fn", ptr %t15, i32 0, i32 9
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l20
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l20, !tbaa !29
  store ptr %t22, ptr %l4, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = getelementptr %"compiler/mir:BasicBlock", ptr %t23, i32 0, i32 0
  store ptr %t25, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l6, !tbaa !24
  store i64 %t27, ptr %l23, !tbaa !24
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t30 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l25
  br label %bb8
bb8:
  %t31 = load i64, ptr %l23, !tbaa !24
  %t32 = load i64, ptr %l25, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb9, label %bb10
bb9:
  br label %bb27
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t37, i64 %t38)
  store { i64, [21 x i64] } %t41, ptr %l30
  br label %bb12
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l30, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %l7, i64 176, i1 false)
  %t42 = load { i64, [21 x i64] }, ptr %l31
  %t43 = extractvalue { i64, [21 x i64] } %t42, 0
  %t44 = icmp eq i64 %t43, 4
  br i1 %t44, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %l7, i64 176, i1 false)
  %t46 = load { i64, [21 x i64] }, ptr %l33
  %t47 = extractvalue { i64, [21 x i64] } %t46, 0
  %t48 = icmp eq i64 %t47, 2
  br i1 %t48, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %l7, i64 176, i1 false)
  %t50 = load { i64, [21 x i64] }, ptr %l35
  %t51 = extractvalue { i64, [21 x i64] } %t50, 0
  %t52 = icmp eq i64 %t51, 18
  br i1 %t52, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_8eca6dc2e728fddd_b862a3b547c92c71)
  unreachable
bb25:
  br label %bb26
bb26:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l6, !tbaa !24
  br label %bb7
bb27:
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/mir:BasicBlock", ptr %t59, i32 0, i32 1
  %t62 = load { i64, [8 x i64] }, ptr %t61
  store { i64, [8 x i64] } %t62, ptr %l8
  %t64 = load { i64, [8 x i64] }, ptr %l8
  %t66 = extractvalue { i64, [8 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 1
  br i1 %t67, label %bb28, label %bb29
bb28:
  %t69 = getelementptr { i64, [8 x i64] }, ptr %l8, i32 0, i32 1
  %t70 = getelementptr { i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  store i32 %t71, ptr %l9, !tbaa !23
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t73 = load i32, ptr %l9, !tbaa !23
  %t75 = sext i32 %t73 to i64
  store i64 %t75, ptr %l42, !tbaa !24
  br label %bb40
bb31:
  %t77 = load { i64, [8 x i64] }, ptr %l8
  %t79 = extractvalue { i64, [8 x i64] } %t77, 0
  %t80 = icmp eq i64 %t79, 12
  br i1 %t80, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i64 -1, ptr %l42, !tbaa !24
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i64 -2, ptr %l42, !tbaa !24
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_82023e8b3f4d7b2c_b53e56899aeca860)
  unreachable
bb40:
  %t82 = load i64, ptr %l42, !tbaa !24
  store i64 %t82, ptr %l2, !tbaa !24
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = icmp eq i64 %t83, -2
  br i1 %t85, label %bb41, label %bb42
bb41:
  store i1 true, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb2
bb45:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eendsProgram(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:task"
  %l6 = alloca %"compiler/eval:task"
  %l10 = alloca ptr
  %l14 = alloca %"compiler/mir:Task"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
  %t7 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/eval:task" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load %"compiler/eval:task", ptr %l6
  store %"compiler/eval:task" %t8, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 25
  %t12 = getelementptr %"compiler/eval:task", ptr %l2, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t13)
  store ptr %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 16
  %t20 = getelementptr %"compiler/eval:task", ptr %l2, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t19, i64 %t21)
  store %"compiler/mir:Task" %t24, ptr %l14
  br label %bb3
bb3:
  %t25 = getelementptr %"compiler/mir:Task", ptr %l14, i32 0, i32 5
  %t26 = getelementptr %"compiler/mir:Range", ptr %t25, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = icmp sgt i32 %t27, 0
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4, i64 %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l9 = alloca i64
  %l10 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i1
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca { i64, [1 x i64] }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i1
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l51 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l71 = alloca i32
  %l77 = alloca ptr
  %l85 = alloca ptr
  %l89 = alloca ptr
  %l91 = alloca i64
  %l95 = alloca %"compiler/eval:genRec"
  %l97 = alloca %"compiler/eval:genRec"
  %l121 = alloca i64
  %l126 = alloca i64
  %l131 = alloca i64
  %l138 = alloca ptr
  %l139 = alloca i1
  %l146 = alloca i32
  %l149 = alloca i32
  %l168 = alloca i64
  %l171 = alloca i64
  %l177 = alloca i32
  %l180 = alloca i1
  %l182 = alloca ptr
  %l186 = alloca %"compiler/eval:Ptr"
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca i64
  %l194 = alloca { i64, [4 x i64] }
  %l195 = alloca %"compiler/eval:Ptr"
  %l196 = alloca %"compiler/eval:Ptr"
  %l197 = alloca ptr
  %l198 = alloca i64
  %l202 = alloca %"compiler/eval:Ptr"
  %l207 = alloca %"compiler/mir:Local"
  %l208 = alloca i32
  %l216 = alloca { i64, [4 x i64] }
  %l226 = alloca i64
  %l228 = alloca i64
  %l233 = alloca { i64, [1 x i64] }
  %l240 = alloca i1
  %l246 = alloca { i64, ptr }
  %l251 = alloca i64
  %l254 = alloca i64
  %l275 = alloca { i64, [1 x i64] }
  %l278 = alloca i64
  %l282 = alloca i1
  %l291 = alloca ptr
  %l292 = alloca i64
  %l299 = alloca { i64, [1 x i64] }
  %l300 = alloca i64
  %l304 = alloca { i64, [1 x i64] }
  %l305 = alloca i64
  %l323 = alloca i64
  %l326 = alloca i64
  %l348 = alloca i1
  %l353 = alloca ptr
  %l354 = alloca i64
  %l361 = alloca { i64, [1 x i64] }
  %l362 = alloca i64
  %l367 = alloca i1
  %l371 = alloca i1
  %l376 = alloca i64
  %l381 = alloca i64
  %l383 = alloca { i64, ptr }
  %l387 = alloca { i64, ptr }
  %l389 = alloca { i64, ptr }
  %l400 = alloca { i64, ptr }
  %l408 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  %t86 = alloca %"compiler/eval:genRec", align 8
  %t89 = alloca %"compiler/eval:genRec", align 8
  %t107 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [7 x i64] } %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  store i64 %a5, ptr %l5
  store i64 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l55
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l55, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t9 = load { i64, [7 x i64] }, ptr %l2
  %t13 = call { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %t7, i64 %t8, { i64, [7 x i64] } %t9)
  store { i64, %"compiler/eval:Ptr", i64 } %t13, ptr %l59
  br label %bb2
bb2:
  %t14 = load { i64, %"compiler/eval:Ptr", i64 }, ptr %l59
  store { i64, %"compiler/eval:Ptr", i64 } %t14, ptr %l8
  %t15 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l9, !tbaa !24
  %t18 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t19 = load %"compiler/eval:Ptr", ptr %t18
  store %"compiler/eval:Ptr" %t19, ptr %l10
  %t21 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp sge i64 %t22, 0
  store i1 %t26, ptr %l12, !tbaa !21
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 22
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load { i64, [7 x i64] }, ptr %l2
  %t40 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %t34, i64 %t35, { i64, [7 x i64] } %t36)
  store i32 %t40, ptr %l71
  br label %bb6
bb6:
  %t41 = load i32, ptr %l71, !tbaa !23
  store i32 %t41, ptr %l13, !tbaa !23
  %t42 = load i1, ptr %l12, !tbaa !21
  br i1 %t42, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l14, !tbaa !24
  store i1 false, ptr %l15, !tbaa !21
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 25
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s0, ptr %t47, i64 %t48)
  store ptr %t51, ptr %l77
  br label %bb10
bb10:
  %t52 = load ptr, ptr %l77, !tbaa !29
  %t54 = getelementptr %"compiler/mir:Fn", ptr %t52, i32 0, i32 25
  %t55 = load i1, ptr %t54, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = getelementptr %"compiler/eval:Ptr", ptr %l10, i32 0, i32 0
  %t58 = load i64, ptr %t57, !tbaa !24
  %t60 = icmp eq i64 %t58, 0
  br i1 %t60, label %bb13, label %bb14
bb12:
  br label %bb29
bb13:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t64 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t64, ptr %t62, { i64, ptr } %t63)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb16:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l85, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 25
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l89
  br label %bb17
bb17:
  %t76 = load %"compiler/eval:Ptr", ptr %l10
  %t77 = load ptr, ptr %l85, !tbaa !29
  %t78 = load ptr, ptr %l89, !tbaa !29
  %t80 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenIndex(ptr %v0, ptr %v0, ptr %t77, ptr %t78, %"compiler/eval:Ptr" %t76)
  store i64 %t80, ptr %l91
  br label %bb18
bb18:
  %t81 = load i64, ptr %l91, !tbaa !24
  store i64 %t81, ptr %l14, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/eval:Machine", ptr %t82, i32 0, i32 63
  %t85 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t86, ptr %v0, ptr %s3, ptr %t84, i64 %t85)
  call void @llvm.memmove.p0.p0.i64(ptr %l95, ptr %t86, i64 280, i1 false)
  br label %bb19
bb19:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t89, ptr %s3, ptr %l95)
  call void @llvm.memmove.p0.p0.i64(ptr %l97, ptr %t89, i64 280, i1 false)
  br label %bb20
bb20:
  %t91 = getelementptr %"compiler/eval:genRec", ptr %l97, i32 0, i32 0
  %t92 = load i64, ptr %t91, !tbaa !24
  store i64 %t92, ptr %l16, !tbaa !24
  %t94 = load i64, ptr %l16, !tbaa !24
  %t96 = icmp eq i64 %t94, 2
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 77
  %t102 = load i64, ptr %t101, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/eval:Machine", ptr %t103, i32 0, i32 78
  %t106 = load %"compiler/source:Span", ptr %t105
  store { i64, [5 x i64] } zeroinitializer, ptr %t107
  %t108 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 0
  store i64 2, ptr %t108
  %t110 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } undef, i32 13, 0
  %t112 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t110, i64 %t102, 1
  %t114 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t112, %"compiler/source:Span" %t106, 2
  %t115 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, 3
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 1
  store { i32, i64, %"compiler/source:Span", { i64, ptr } } %t115, ptr %t116
  %t117 = load { i64, [5 x i64] }, ptr %t107
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v0, ptr %t98, { i64, [5 x i64] } %t117)
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb24:
  %t121 = load i64, ptr %l16, !tbaa !24
  %t123 = icmp eq i64 %t121, 3
  br i1 %t123, label %bb25, label %bb26
bb25:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l1, !tbaa !24
  %t127 = load i64, ptr %l9, !tbaa !24
  %t128 = load { i64, [7 x i64] }, ptr %l2
  %t129 = load i64, ptr %l5, !tbaa !24
  %t130 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenOver(ptr %v0, ptr %t125, i64 %t126, i64 %t127, { i64, [7 x i64] } %t128, i64 %t129, i64 %t130)
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb28:
  %t138 = load i64, ptr %l16, !tbaa !24
  %t140 = icmp eq i64 %t138, 1
  store i1 %t140, ptr %l15, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb29:
  %t142 = load i1, ptr %l15, !tbaa !21
  br i1 %t142, label %bb30, label %bb31
bb30:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l14, !tbaa !24
  %t146 = load i64, ptr %l5, !tbaa !24
  %t147 = load i64, ptr %l6, !tbaa !24
  %t152 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erestoreGen(ptr %v0, ptr %t144, i64 %t145, i64 %t146, i64 %t147)
  store i64 %t152, ptr %l126
  br label %bb32
bb31:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i64, ptr %l9, !tbaa !24
  %t155 = load i64, ptr %l5, !tbaa !24
  %t156 = load i64, ptr %l6, !tbaa !24
  %t161 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t153, i64 %t154, i64 %t155, i64 %t156)
  store i64 %t161, ptr %l131
  br label %bb33
bb32:
  %t162 = load i64, ptr %l126, !tbaa !24
  store i64 %t162, ptr %l121, !tbaa !24
  br label %bb34
bb33:
  %t163 = load i64, ptr %l131, !tbaa !24
  store i64 %t163, ptr %l121, !tbaa !24
  br label %bb34
bb34:
  %t164 = load i64, ptr %l121, !tbaa !24
  store i64 %t164, ptr %l17, !tbaa !24
  %t165 = load i64, ptr %l17, !tbaa !24
  %t167 = icmp slt i64 %t165, 0
  br i1 %t167, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/eval:Machine", ptr %t170, i32 0, i32 25
  %t173 = load i64, ptr %l9, !tbaa !24
  %t176 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t172, i64 %t173)
  store ptr %t176, ptr %l138
  br label %bb38
bb38:
  %t177 = load ptr, ptr %l138, !tbaa !29
  store ptr %t177, ptr %l18, !tbaa !29
  %t178 = load { i64, [7 x i64] }, ptr %l2
  %t180 = extractvalue { i64, [7 x i64] } %t178, 0
  %t181 = icmp eq i64 %t180, 3
  br i1 %t181, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 true, ptr %l139, !tbaa !21
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_11a19fcb84a16e6d_1ab7f06eb0f74619)
  unreachable
bb47:
  %t183 = load i1, ptr %l139, !tbaa !21
  store i1 %t183, ptr %l19, !tbaa !21
  store i32 0, ptr %l20, !tbaa !23
  %t184 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t185 = load i32, ptr %t184, !tbaa !23
  store i32 %t185, ptr %l21, !tbaa !23
  store i32 1, ptr %l22, !tbaa !23
  %t187 = load i32, ptr %l21, !tbaa !23
  %t188 = load i32, ptr %l20, !tbaa !23
  %t191 = icmp sgt i32 %t187, %t188
  br i1 %t191, label %bb48, label %bb49
bb48:
  %t193 = load i32, ptr %l22, !tbaa !23
  %t195 = icmp sgt i32 %t193, 0
  br i1 %t195, label %bb50, label %bb51
bb49:
  store i32 0, ptr %l146, !tbaa !23
  br label %bb53
bb50:
  %t197 = load i32, ptr %l21, !tbaa !23
  %t198 = load i32, ptr %l20, !tbaa !23
  %t201 = sub i32 %t197, %t198
  %t202 = load i32, ptr %l22, !tbaa !23
  %t205 = add i32 %t201, %t202
  %t207 = sub i32 %t205, 1
  %t208 = load i32, ptr %l22, !tbaa !23
  %t211 = sdiv i32 %t207, %t208
  store i32 %t211, ptr %l149, !tbaa !23
  br label %bb52
bb51:
  store i32 0, ptr %l149, !tbaa !23
  br label %bb52
bb52:
  %t213 = load i32, ptr %l149, !tbaa !23
  store i32 %t213, ptr %l146, !tbaa !23
  br label %bb53
bb53:
  %t214 = load i32, ptr %l146, !tbaa !23
  store i32 %t214, ptr %l23, !tbaa !23
  store i32 0, ptr %l24, !tbaa !23
  br label %bb54
bb54:
  %t215 = load i32, ptr %l24, !tbaa !23
  %t216 = load i32, ptr %l23, !tbaa !23
  %t219 = icmp slt i32 %t215, %t216
  %t221 = xor i1 %t219, true
  br i1 %t221, label %bb55, label %bb56
bb55:
  br label %bb79
bb56:
  br label %bb57
bb57:
  %t223 = load i32, ptr %l20, !tbaa !23
  %t224 = load i32, ptr %l24, !tbaa !23
  %t225 = load i32, ptr %l22, !tbaa !23
  %t228 = mul i32 %t224, %t225
  %t231 = add i32 %t223, %t228
  store i32 %t231, ptr %l25, !tbaa !23
  %t233 = load i32, ptr %l25, !tbaa !23
  %t235 = sext i32 %t233 to i64
  store i64 %t235, ptr %l168, !tbaa !24
  %t236 = load ptr, ptr %l18, !tbaa !29
  %t238 = getelementptr %"compiler/mir:Fn", ptr %t236, i32 0, i32 4
  %t240 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t238)
  store i64 %t240, ptr %l171
  br label %bb58
bb58:
  %t241 = load i64, ptr %l168, !tbaa !24
  %t242 = load i64, ptr %l171, !tbaa !24
  %t243 = icmp slt i64 %t241, %t242
  br i1 %t243, label %bb59, label %bb60
bb59:
  %t245 = load ptr, ptr %l18, !tbaa !29
  %t247 = getelementptr %"compiler/mir:Fn", ptr %t245, i32 0, i32 4
  %t248 = load i32, ptr %l25, !tbaa !23
  %t250 = sext i32 %t248 to i64
  %t253 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t247, i64 %t250)
  store i32 %t253, ptr %l177
  br label %bb61
bb60:
  br label %bb77
bb61:
  %t254 = load i32, ptr %l177, !tbaa !23
  store i32 %t254, ptr %l26, !tbaa !23
  %t255 = load i32, ptr %l25, !tbaa !23
  %t257 = icmp eq i32 %t255, 0
  br i1 %t257, label %bb62, label %bb63
bb62:
  %t259 = load i1, ptr %l19, !tbaa !21
  store i1 %t259, ptr %l180, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb64
bb64:
  %t261 = load i1, ptr %l180, !tbaa !21
  br i1 %t261, label %bb65, label %bb66
bb65:
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l182, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i64, ptr %l17, !tbaa !24
  %t265 = load i32, ptr %l26, !tbaa !23
  %t269 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t263, i64 %t264, i32 %t265)
  store %"compiler/eval:Ptr" %t269, ptr %l186
  br label %bb67
bb66:
  br label %bb72
bb67:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l187, !tbaa !29
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l188, !tbaa !29
  %t272 = load i64, ptr %l1, !tbaa !24
  store i64 %t272, ptr %l189, !tbaa !24
  %t273 = load ptr, ptr %l7, !tbaa !29
  %t275 = getelementptr %"compiler/mir:Fn", ptr %t273, i32 0, i32 11
  %t276 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 0
  %t277 = load i32, ptr %t276, !tbaa !23
  %t279 = sext i32 %t277 to i64
  %t282 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t275, i64 %t279)
  store { i64, [4 x i64] } %t282, ptr %l194
  br label %bb68
bb68:
  %t283 = load ptr, ptr %l188, !tbaa !29
  %t284 = load i64, ptr %l189, !tbaa !24
  %t285 = load { i64, [4 x i64] }, ptr %l194
  %t286 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t283, i64 %t284, { i64, [4 x i64] } %t285, i64 1)
  store %"compiler/eval:Ptr" %t286, ptr %l195
  br label %bb69
bb69:
  %t287 = load ptr, ptr %l187, !tbaa !29
  %t288 = load %"compiler/eval:Ptr", ptr %l195
  %t289 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t287, %"compiler/eval:Ptr" %t288)
  store %"compiler/eval:Ptr" %t289, ptr %l196
  br label %bb70
bb70:
  %t290 = load ptr, ptr %l182, !tbaa !29
  %t291 = load %"compiler/eval:Ptr", ptr %l186
  %t292 = load %"compiler/eval:Ptr", ptr %l196
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t290, %"compiler/eval:Ptr" %t291, %"compiler/eval:Ptr" %t292)
  br label %bb71
bb71:
  br label %bb78
bb72:
  %t293 = load ptr, ptr %l0, !tbaa !29
  store ptr %t293, ptr %l197, !tbaa !29
  %t294 = load i64, ptr %l1, !tbaa !24
  store i64 %t294, ptr %l198, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i64, ptr %l17, !tbaa !24
  %t297 = load i32, ptr %l26, !tbaa !23
  %t301 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t295, i64 %t296, i32 %t297)
  store %"compiler/eval:Ptr" %t301, ptr %l202
  br label %bb73
bb73:
  %t302 = load ptr, ptr %l18, !tbaa !29
  %t304 = getelementptr %"compiler/mir:Fn", ptr %t302, i32 0, i32 7
  %t305 = load i32, ptr %l26, !tbaa !23
  %t307 = sext i32 %t305 to i64
  %t310 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t304, i64 %t307)
  store %"compiler/mir:Local" %t310, ptr %l207
  br label %bb74
bb74:
  %t311 = getelementptr %"compiler/mir:Local", ptr %l207, i32 0, i32 2
  %t312 = load i32, ptr %t311, !tbaa !23
  store i32 %t312, ptr %l208, !tbaa !23
  %t313 = load ptr, ptr %l7, !tbaa !29
  %t315 = getelementptr %"compiler/mir:Fn", ptr %t313, i32 0, i32 11
  %t316 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 0
  %t317 = load i32, ptr %t316, !tbaa !23
  %t319 = sext i32 %t317 to i64
  %t320 = load i32, ptr %l25, !tbaa !23
  %t322 = sext i32 %t320 to i64
  %t325 = add i64 %t319, %t322
  %t328 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t315, i64 %t325)
  store { i64, [4 x i64] } %t328, ptr %l216
  br label %bb75
bb75:
  %t329 = load ptr, ptr %l197, !tbaa !29
  %t330 = load i64, ptr %l198, !tbaa !24
  %t331 = load %"compiler/eval:Ptr", ptr %l202
  %t332 = load i32, ptr %l208, !tbaa !23
  %t333 = load { i64, [4 x i64] }, ptr %l216
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t329, i64 %t330, %"compiler/eval:Ptr" %t331, i32 %t332, { i64, [4 x i64] } %t333)
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t334 = load i32, ptr %l24, !tbaa !23
  %t336 = add i32 %t334, 1
  store i32 %t336, ptr %l24, !tbaa !23
  br label %bb54
bb79:
  %t338 = load i1, ptr %l15, !tbaa !21
  %t340 = xor i1 %t338, true
  br i1 %t340, label %bb80, label %bb81
bb80:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load i64, ptr %l17, !tbaa !24
  %t344 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eownParams(ptr %v0, ptr %t342, i64 %t343, i64 %t344)
  br label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb83
bb83:
  store i64 0, ptr %l27, !tbaa !24
  %t348 = load ptr, ptr %l18, !tbaa !29
  %t350 = getelementptr %"compiler/mir:Fn", ptr %t348, i32 0, i32 6
  store ptr %t350, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb84
bb84:
  %t352 = load i64, ptr %l29, !tbaa !24
  store i64 %t352, ptr %l226, !tbaa !24
  %t353 = load ptr, ptr %l28, !tbaa !29
  %t355 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t353)
  store i64 %t355, ptr %l228
  br label %bb85
bb85:
  %t356 = load i64, ptr %l226, !tbaa !24
  %t357 = load i64, ptr %l228, !tbaa !24
  %t358 = icmp slt i64 %t356, %t357
  %t360 = xor i1 %t358, true
  br i1 %t360, label %bb86, label %bb87
bb86:
  br label %bb100
bb87:
  br label %bb88
bb88:
  %t362 = load ptr, ptr %l28, !tbaa !29
  %t363 = load i64, ptr %l29, !tbaa !24
  %t366 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t362, i64 %t363)
  store { i64, [1 x i64] } %t366, ptr %l233
  br label %bb89
bb89:
  %t367 = load { i64, [1 x i64] }, ptr %l233
  %t370 = extractvalue { i64, [1 x i64] } %t367, 0
  %t371 = icmp eq i64 %t370, 4
  br i1 %t371, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb98
bb93:
  br i1 true, label %bb94, label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  %t373 = load i64, ptr %l27, !tbaa !24
  %t375 = add i64 %t373, 1
  store i64 %t375, ptr %l27, !tbaa !24
  br label %bb98
bb97:
  call void @__olang_check_failed(ptr @olang_loc_e8d82fb02ccf62bc_44b724ba703ff148)
  unreachable
bb98:
  br label %bb99
bb99:
  %t377 = load i64, ptr %l29, !tbaa !24
  %t379 = add i64 %t377, 1
  store i64 %t379, ptr %l29, !tbaa !24
  br label %bb84
bb100:
  %t381 = load { i64, [7 x i64] }, ptr %l2
  %t383 = extractvalue { i64, [7 x i64] } %t381, 0
  %t384 = icmp eq i64 %t383, 0
  br i1 %t384, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb104
bb103:
  store i1 true, ptr %l240, !tbaa !21
  br label %bb109
bb104:
  br i1 true, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb108
bb107:
  store i1 false, ptr %l240, !tbaa !21
  br label %bb109
bb108:
  call void @__olang_check_failed(ptr @olang_loc_36e0ec838c111677_372a612bd7b0a623)
  unreachable
bb109:
  %t386 = load i1, ptr %l240, !tbaa !21
  store i1 %t386, ptr %l31, !tbaa !21
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = getelementptr %"compiler/eval:Machine", ptr %t387, i32 0, i32 0
  %t390 = load ptr, ptr %t389, !tbaa !29
  %t391 = load i32, ptr %l13, !tbaa !23
  %t394 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t390, i32 %t391)
  store { i64, ptr } %t394, ptr %l246
  br label %bb110
bb110:
  %t395 = load { i64, ptr }, ptr %l246, !tbaa !27
  store { i64, ptr } %t395, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t396 = load i64, ptr %l27, !tbaa !24
  store i64 %t396, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t398 = load i64, ptr %l34, !tbaa !24
  %t399 = load i64, ptr %l33, !tbaa !24
  %t402 = icmp sgt i64 %t398, %t399
  br i1 %t402, label %bb111, label %bb112
bb111:
  %t404 = load i64, ptr %l35, !tbaa !24
  %t406 = icmp sgt i64 %t404, 0
  br i1 %t406, label %bb113, label %bb114
bb112:
  store i64 0, ptr %l251, !tbaa !24
  br label %bb116
bb113:
  %t408 = load i64, ptr %l34, !tbaa !24
  %t409 = load i64, ptr %l33, !tbaa !24
  %t412 = sub i64 %t408, %t409
  %t413 = load i64, ptr %l35, !tbaa !24
  %t416 = add i64 %t412, %t413
  %t418 = sub i64 %t416, 1
  %t419 = load i64, ptr %l35, !tbaa !24
  %t422 = sdiv i64 %t418, %t419
  store i64 %t422, ptr %l254, !tbaa !24
  br label %bb115
bb114:
  store i64 0, ptr %l254, !tbaa !24
  br label %bb115
bb115:
  %t424 = load i64, ptr %l254, !tbaa !24
  store i64 %t424, ptr %l251, !tbaa !24
  br label %bb116
bb116:
  %t425 = load i64, ptr %l251, !tbaa !24
  store i64 %t425, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb117
bb117:
  %t426 = load i64, ptr %l37, !tbaa !24
  %t427 = load i64, ptr %l36, !tbaa !24
  %t430 = icmp slt i64 %t426, %t427
  %t432 = xor i1 %t430, true
  br i1 %t432, label %bb118, label %bb119
bb118:
  br label %bb188
bb119:
  br label %bb120
bb120:
  %t434 = load i64, ptr %l33, !tbaa !24
  %t435 = load i64, ptr %l37, !tbaa !24
  %t436 = load i64, ptr %l35, !tbaa !24
  %t439 = mul i64 %t435, %t436
  %t442 = add i64 %t434, %t439
  store i64 %t442, ptr %l38, !tbaa !24
  %t444 = load ptr, ptr %l18, !tbaa !29
  %t446 = getelementptr %"compiler/mir:Fn", ptr %t444, i32 0, i32 6
  %t447 = load i64, ptr %l38, !tbaa !24
  %t450 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t446, i64 %t447)
  store { i64, [1 x i64] } %t450, ptr %l275
  br label %bb121
bb121:
  %t451 = load { i64, [1 x i64] }, ptr %l275
  %t453 = extractvalue { i64, [1 x i64] } %t451, 0
  %t454 = icmp eq i64 %t453, 5
  br i1 %t454, label %bb122, label %bb123
bb122:
  store i64 0, ptr %l278, !tbaa !24
  br label %bb124
bb123:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/eval:Machine", ptr %t456, i32 0, i32 70
  %t459 = load i64, ptr %t458, !tbaa !24
  store i64 %t459, ptr %l278, !tbaa !24
  br label %bb124
bb124:
  %t461 = load i64, ptr %l278, !tbaa !24
  store i64 %t461, ptr %l39, !tbaa !24
  %t462 = load i1, ptr %l31, !tbaa !21
  br i1 %t462, label %bb125, label %bb126
bb125:
  store i1 true, ptr %l282, !tbaa !21
  br label %bb127
bb126:
  %t464 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t464, 0
  %t467 = load i64, ptr %l27, !tbaa !24
  %t470 = icmp eq i64 %t466, %t467
  store i1 %t470, ptr %l282, !tbaa !21
  br label %bb127
bb127:
  %t472 = load i1, ptr %l282, !tbaa !21
  br i1 %t472, label %bb128, label %bb129
bb128:
  %t473 = load i64, ptr %l38, !tbaa !24
  %t474 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t475 = load i32, ptr %t474, !tbaa !23
  %t477 = sext i32 %t475 to i64
  %t480 = icmp slt i64 %t473, %t477
  br i1 %t480, label %bb130, label %bb131
bb129:
  %t482 = load ptr, ptr %l18, !tbaa !29
  %t484 = getelementptr %"compiler/mir:Fn", ptr %t482, i32 0, i32 6
  %t485 = load i64, ptr %l38, !tbaa !24
  %t488 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t484, i64 %t485)
  store { i64, [1 x i64] } %t488, ptr %l304
  br label %bb135
bb130:
  %t489 = load ptr, ptr %l0, !tbaa !29
  store ptr %t489, ptr %l291, !tbaa !29
  %t490 = load i64, ptr %l1, !tbaa !24
  store i64 %t490, ptr %l292, !tbaa !24
  %t491 = load ptr, ptr %l7, !tbaa !29
  %t493 = getelementptr %"compiler/mir:Fn", ptr %t491, i32 0, i32 12
  %t494 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t495 = load i32, ptr %t494, !tbaa !23
  %t497 = sext i32 %t495 to i64
  %t498 = load i64, ptr %l38, !tbaa !24
  %t501 = add i64 %t497, %t498
  %t504 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t493, i64 %t501)
  store { i64, [1 x i64] } %t504, ptr %l299
  br label %bb132
bb131:
  br label %bb134
bb132:
  %t505 = load ptr, ptr %l291, !tbaa !29
  %t506 = load i64, ptr %l292, !tbaa !24
  %t507 = load { i64, [1 x i64] }, ptr %l299
  %t508 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t505, i64 %t506, { i64, [1 x i64] } %t507)
  store i64 %t508, ptr %l300
  br label %bb133
bb133:
  %t509 = load i64, ptr %l300, !tbaa !24
  store i64 %t509, ptr %l39, !tbaa !24
  br label %bb134
bb134:
  br label %bb186
bb135:
  %t510 = load { i64, [1 x i64] }, ptr %l304
  store { i64, [1 x i64] } %t510, ptr %l40
  %t511 = load { i64, [1 x i64] }, ptr %l40
  %t513 = extractvalue { i64, [1 x i64] } %t511, 0
  %t514 = icmp eq i64 %t513, 0
  br i1 %t514, label %bb136, label %bb137
bb136:
  %t516 = getelementptr { i64, [1 x i64] }, ptr %l40, i32 0, i32 1
  %t517 = getelementptr { i64 }, ptr %t516, i32 0, i32 0
  %t518 = load i64, ptr %t517
  store i64 %t518, ptr %l41, !tbaa !24
  br label %bb138
bb137:
  br label %bb139
bb138:
  %t520 = load i64, ptr %l41, !tbaa !24
  store i64 %t520, ptr %l305, !tbaa !24
  br label %bb154
bb139:
  %t522 = load { i64, [1 x i64] }, ptr %l40
  %t524 = extractvalue { i64, [1 x i64] } %t522, 0
  %t525 = icmp eq i64 %t524, 1
  br i1 %t525, label %bb140, label %bb141
bb140:
  br label %bb144
bb141:
  %t527 = load { i64, [1 x i64] }, ptr %l40
  %t529 = extractvalue { i64, [1 x i64] } %t527, 0
  %t530 = icmp eq i64 %t529, 2
  br i1 %t530, label %bb142, label %bb143
bb142:
  br label %bb144
bb143:
  br label %bb145
bb144:
  %t532 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  store i64 %t532, ptr %l305, !tbaa !24
  br label %bb154
bb145:
  %t534 = load { i64, [1 x i64] }, ptr %l40
  %t536 = extractvalue { i64, [1 x i64] } %t534, 0
  %t537 = icmp eq i64 %t536, 3
  br i1 %t537, label %bb146, label %bb147
bb146:
  br label %bb148
bb147:
  br label %bb149
bb148:
  %t539 = load i64, ptr @G_2ecompiler_2ftypes_2eClosingVar, !tbaa !24
  store i64 %t539, ptr %l305, !tbaa !24
  br label %bb154
bb149:
  br i1 true, label %bb150, label %bb151
bb150:
  br label %bb152
bb151:
  br label %bb153
bb152:
  store i64 -9, ptr %l305, !tbaa !24
  br label %bb154
bb153:
  call void @__olang_check_failed(ptr @olang_loc_5609b5c4ef82b256_83c053ae3d548522)
  unreachable
bb154:
  %t541 = load i64, ptr %l305, !tbaa !24
  store i64 %t541, ptr %l42, !tbaa !24
  store i1 false, ptr %l43, !tbaa !21
  store i64 0, ptr %l44, !tbaa !24
  %t542 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t544 = extractvalue { i64, ptr } %t542, 0
  store i64 %t544, ptr %l45, !tbaa !24
  store i64 1, ptr %l46, !tbaa !24
  %t546 = load i64, ptr %l45, !tbaa !24
  %t547 = load i64, ptr %l44, !tbaa !24
  %t550 = icmp sgt i64 %t546, %t547
  br i1 %t550, label %bb155, label %bb156
bb155:
  %t552 = load i64, ptr %l46, !tbaa !24
  %t554 = icmp sgt i64 %t552, 0
  br i1 %t554, label %bb157, label %bb158
bb156:
  store i64 0, ptr %l323, !tbaa !24
  br label %bb160
bb157:
  %t556 = load i64, ptr %l45, !tbaa !24
  %t557 = load i64, ptr %l44, !tbaa !24
  %t560 = sub i64 %t556, %t557
  %t561 = load i64, ptr %l46, !tbaa !24
  %t564 = add i64 %t560, %t561
  %t566 = sub i64 %t564, 1
  %t567 = load i64, ptr %l46, !tbaa !24
  %t570 = sdiv i64 %t566, %t567
  store i64 %t570, ptr %l326, !tbaa !24
  br label %bb159
bb158:
  store i64 0, ptr %l326, !tbaa !24
  br label %bb159
bb159:
  %t572 = load i64, ptr %l326, !tbaa !24
  store i64 %t572, ptr %l323, !tbaa !24
  br label %bb160
bb160:
  %t573 = load i64, ptr %l323, !tbaa !24
  store i64 %t573, ptr %l47, !tbaa !24
  store i64 0, ptr %l48, !tbaa !24
  br label %bb161
bb161:
  %t574 = load i64, ptr %l48, !tbaa !24
  %t575 = load i64, ptr %l47, !tbaa !24
  %t578 = icmp slt i64 %t574, %t575
  %t580 = xor i1 %t578, true
  br i1 %t580, label %bb162, label %bb163
bb162:
  br label %bb174
bb163:
  br label %bb164
bb164:
  %t582 = load i64, ptr %l44, !tbaa !24
  %t583 = load i64, ptr %l48, !tbaa !24
  %t584 = load i64, ptr %l46, !tbaa !24
  %t587 = mul i64 %t583, %t584
  %t590 = add i64 %t582, %t587
  store i64 %t590, ptr %l49, !tbaa !24
  %t592 = load i64, ptr %l49, !tbaa !24
  %t594 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t595 = load ptr, ptr %t594, !tbaa !27
  %t596 = getelementptr i64, ptr %t595, i64 %t592
  %t597 = load i64, ptr %t596, !tbaa !34
  %t598 = load i64, ptr %l42, !tbaa !24
  %t601 = icmp eq i64 %t597, %t598
  br i1 %t601, label %bb165, label %bb166
bb165:
  %t603 = load i64, ptr %l49, !tbaa !24
  %t604 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t605 = load i32, ptr %t604, !tbaa !23
  %t607 = sext i32 %t605 to i64
  %t610 = icmp slt i64 %t603, %t607
  store i1 %t610, ptr %l348, !tbaa !21
  br label %bb167
bb166:
  store i1 false, ptr %l348, !tbaa !21
  br label %bb167
bb167:
  %t612 = load i1, ptr %l348, !tbaa !21
  br i1 %t612, label %bb168, label %bb169
bb168:
  %t613 = load ptr, ptr %l0, !tbaa !29
  store ptr %t613, ptr %l353, !tbaa !29
  %t614 = load i64, ptr %l1, !tbaa !24
  store i64 %t614, ptr %l354, !tbaa !24
  %t615 = load ptr, ptr %l7, !tbaa !29
  %t617 = getelementptr %"compiler/mir:Fn", ptr %t615, i32 0, i32 12
  %t618 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t619 = load i32, ptr %t618, !tbaa !23
  %t621 = sext i32 %t619 to i64
  %t622 = load i64, ptr %l49, !tbaa !24
  %t625 = add i64 %t621, %t622
  %t628 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t617, i64 %t625)
  store { i64, [1 x i64] } %t628, ptr %l361
  br label %bb170
bb169:
  br label %bb172
bb170:
  %t629 = load ptr, ptr %l353, !tbaa !29
  %t630 = load i64, ptr %l354, !tbaa !24
  %t631 = load { i64, [1 x i64] }, ptr %l361
  %t632 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t629, i64 %t630, { i64, [1 x i64] } %t631)
  store i64 %t632, ptr %l362
  br label %bb171
bb171:
  %t633 = load i64, ptr %l362, !tbaa !24
  store i64 %t633, ptr %l39, !tbaa !24
  store i1 true, ptr %l43, !tbaa !21
  br label %bb172
bb172:
  br label %bb173
bb173:
  %t634 = load i64, ptr %l48, !tbaa !24
  %t636 = add i64 %t634, 1
  store i64 %t636, ptr %l48, !tbaa !24
  br label %bb161
bb174:
  %t638 = load i1, ptr %l43, !tbaa !21
  %t640 = xor i1 %t638, true
  br i1 %t640, label %bb175, label %bb176
bb175:
  %t642 = load i64, ptr %l42, !tbaa !24
  %t643 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t646 = icmp eq i64 %t642, %t643
  store i1 %t646, ptr %l367, !tbaa !21
  br label %bb177
bb176:
  store i1 false, ptr %l367, !tbaa !21
  br label %bb177
bb177:
  %t648 = load i1, ptr %l367, !tbaa !21
  br i1 %t648, label %bb178, label %bb179
bb178:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t651 = getelementptr %"compiler/eval:Machine", ptr %t649, i32 0, i32 0
  %t652 = load ptr, ptr %t651, !tbaa !29
  %t653 = load ptr, ptr %l18, !tbaa !29
  %t655 = getelementptr %"compiler/mir:Fn", ptr %t653, i32 0, i32 1
  %t656 = load i32, ptr %t655, !tbaa !23
  %t659 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t652, i32 %t656)
  store i64 %t659, ptr %l376
  br label %bb180
bb179:
  store i1 false, ptr %l371, !tbaa !21
  br label %bb181
bb180:
  %t660 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleTail, !tbaa !24
  %t661 = load i64, ptr %l376, !tbaa !24
  %t663 = icmp eq i64 %t661, %t660
  store i1 %t663, ptr %l371, !tbaa !21
  br label %bb181
bb181:
  %t665 = load i1, ptr %l371, !tbaa !21
  br i1 %t665, label %bb182, label %bb183
bb182:
  %t666 = load ptr, ptr %l0, !tbaa !29
  %t667 = load i64, ptr @G_2ecompiler_2feval_2esBlock, !tbaa !24
  %t670 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t666, i64 %t667)
  store i64 %t670, ptr %l381
  br label %bb184
bb183:
  br label %bb185
bb184:
  %t671 = load i64, ptr %l381, !tbaa !24
  store i64 %t671, ptr %l39, !tbaa !24
  %t672 = load ptr, ptr %l0, !tbaa !29
  %t674 = getelementptr %"compiler/eval:Machine", ptr %t672, i32 0, i32 58
  %t675 = load { i64, ptr }, ptr %t674, !tbaa !27
  store { i64, ptr } %t675, ptr %l383, !tbaa !27
  %t676 = load i64, ptr %l17, !tbaa !24
  %t677 = load i64, ptr %l39, !tbaa !24
  %t680 = getelementptr { i64, ptr }, ptr %l383, i32 0, i32 1
  %t681 = load ptr, ptr %t680, !tbaa !27
  %t682 = getelementptr %"compiler/eval:frame", ptr %t681, i64 %t676
  %t683 = getelementptr %"compiler/eval:frame", ptr %t682, i32 0, i32 19
  store i64 %t677, ptr %t683, !tbaa !24
  br label %bb185
bb185:
  br label %bb186
bb186:
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t686 = getelementptr %"compiler/eval:Machine", ptr %t684, i32 0, i32 60
  %t687 = load { i64, ptr }, ptr %t686, !tbaa !27
  store { i64, ptr } %t687, ptr %l387, !tbaa !27
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t690 = getelementptr %"compiler/eval:Machine", ptr %t688, i32 0, i32 58
  %t691 = load { i64, ptr }, ptr %t690, !tbaa !27
  store { i64, ptr } %t691, ptr %l389, !tbaa !27
  %t692 = load i64, ptr %l17, !tbaa !24
  %t694 = getelementptr { i64, ptr }, ptr %l389, i32 0, i32 1
  %t695 = load ptr, ptr %t694, !tbaa !27
  %t696 = getelementptr %"compiler/eval:frame", ptr %t695, i64 %t692
  %t697 = getelementptr %"compiler/eval:frame", ptr %t696, i32 0, i32 5
  %t698 = load i64, ptr %t697, !tbaa !24
  %t699 = load i64, ptr %l38, !tbaa !24
  %t702 = add i64 %t698, %t699
  %t703 = load i64, ptr %l39, !tbaa !24
  %t706 = getelementptr { i64, ptr }, ptr %l387, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !27
  %t708 = getelementptr i64, ptr %t707, i64 %t702
  store i64 %t703, ptr %t708, !tbaa !34
  br label %bb187
bb187:
  %t709 = load i64, ptr %l37, !tbaa !24
  %t711 = add i64 %t709, 1
  store i64 %t711, ptr %l37, !tbaa !24
  br label %bb117
bb188:
  %t713 = load i64, ptr %l14, !tbaa !24
  %t715 = icmp sge i64 %t713, 0
  br i1 %t715, label %bb189, label %bb190
bb189:
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t719 = getelementptr %"compiler/eval:Machine", ptr %t717, i32 0, i32 58
  %t720 = load { i64, ptr }, ptr %t719, !tbaa !27
  store { i64, ptr } %t720, ptr %l400, !tbaa !27
  %t721 = load i64, ptr %l17, !tbaa !24
  %t722 = load i64, ptr %l14, !tbaa !24
  %t724 = trunc i64 %t722 to i32
  %t727 = getelementptr { i64, ptr }, ptr %l400, i32 0, i32 1
  %t728 = load ptr, ptr %t727, !tbaa !27
  %t729 = getelementptr %"compiler/eval:frame", ptr %t728, i64 %t721
  %t730 = getelementptr %"compiler/eval:frame", ptr %t729, i32 0, i32 18
  store i32 %t724, ptr %t730, !tbaa !23
  %t731 = load i64, ptr %l14, !tbaa !24
  store i64 2, ptr %l51, !tbaa !24
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t735 = getelementptr %"compiler/eval:Machine", ptr %t733, i32 0, i32 63
  %t739 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t735, i64 %t731)
  store ptr %t739, ptr %l408
  br label %bb191
bb190:
  br label %bb192
bb191:
  %t740 = load ptr, ptr %l408, !tbaa !29
  %t742 = load i64, ptr %l51, !tbaa !24
  %t745 = getelementptr %"compiler/eval:genRec", ptr %t740, i32 0, i32 0
  store i64 %t742, ptr %t745, !tbaa !24
  br label %bb192
bb192:
  %t746 = load i1, ptr %l15, !tbaa !21
  %t748 = xor i1 %t746, true
  br i1 %t748, label %bb193, label %bb194
bb193:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t751 = load i64, ptr %l17, !tbaa !24
  %t752 = load ptr, ptr %l18, !tbaa !29
  %t753 = load %"compiler/eval:Ptr", ptr %l10
  %t754 = load i64, ptr %l27, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v0, ptr %t750, i64 %t751, ptr %t752, %"compiler/eval:Ptr" %t753, i64 %t754)
  br label %bb195
bb194:
  br label %bb196
bb195:
  br label %bb196
bb196:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t762 = getelementptr %"compiler/eval:Machine", ptr %t760, i32 0, i32 22
  %t763 = load i1, ptr %t762, !tbaa !21
  br i1 %t763, label %bb197, label %bb198
bb197:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb198:
  br label %bb199
bb199:
  %t766 = load i64, ptr %l17, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t766, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i32 %a4, { i64, [4 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca { i64, ptr }
  %l8 = alloca { %"compiler/eval:Ptr", i64 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i1
  %l24 = alloca i1
  %l35 = alloca %"compiler/eval:Ptr"
  %l36 = alloca ptr
  %l37 = alloca %"compiler/eval:Ptr"
  %l41 = alloca i32
  %l42 = alloca { %"compiler/eval:Ptr", i64 }
  %l45 = alloca %"std/prelude/text:StringBuilder"
  %l50 = alloca i64
  %l53 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l77 = alloca %"compiler/eval:Ptr"
  %l78 = alloca i64
  %l84 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t150 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a4, ptr %l4
  store { i64, [4 x i64] } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 2}
  %t6 = trunc i64 0 to i32
  %t7 = icmp eq i32 %t4, %t6
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr %l4, !range !{i32 0, i32 20}
  %t11 = trunc i64 0 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb6
bb3:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i32, ptr %l4, !range !{i32 0, i32 20}
  %t16 = trunc i64 1 to i32
  %t17 = icmp eq i32 %t14, %t16
  store i1 %t17, ptr %l24, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l24, !tbaa !21
  store i1 %t19, ptr %l21, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l21, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyEnds, !tbaa !27
  %t23 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t23, ptr %t21, { i64, ptr } %t22)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %ret
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t26 = load { i64, [4 x i64] }, ptr %l5
  %t28 = extractvalue { i64, [4 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 0
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l1, !tbaa !24
  %t35 = load { i64, [4 x i64] }, ptr %l5
  %t39 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t33, i64 %t34, { i64, [4 x i64] } %t35, i64 1)
  store %"compiler/eval:Ptr" %t39, ptr %l35
  br label %bb13
bb12:
  br label %bb33
bb13:
  %t40 = load %"compiler/eval:Ptr", ptr %l35
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l36, !tbaa !29
  store %"compiler/eval:Ptr" %t40, ptr %l37
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load { i64, [4 x i64] }, ptr %l5
  %t49 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t43, i64 %t44, { i64, [4 x i64] } %t45)
  store i32 %t49, ptr %l41
  br label %bb14
bb14:
  %t50 = load ptr, ptr %l36, !tbaa !29
  %t51 = load %"compiler/eval:Ptr", ptr %l37
  %t52 = load i32, ptr %l41, !tbaa !23
  %t53 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t50, %"compiler/eval:Ptr" %t51, i32 %t52)
  store { %"compiler/eval:Ptr", i64 } %t53, ptr %l42
  br label %bb15
bb15:
  %t54 = load { %"compiler/eval:Ptr", i64 }, ptr %l42
  store { %"compiler/eval:Ptr", i64 } %t54, ptr %l8
  %t55 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t56 = load %"compiler/eval:Ptr", ptr %t55
  store %"compiler/eval:Ptr" %t56, ptr %l9
  %t58 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  store i64 %t59, ptr %l10, !tbaa !24
  %t61 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t61, ptr %l45
  br label %bb16
bb16:
  %t62 = load %"std/prelude/text:StringBuilder", ptr %l45
  store %"std/prelude/text:StringBuilder" %t62, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  store i64 %t63, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t65 = load i64, ptr %l13, !tbaa !24
  %t66 = load i64, ptr %l12, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb17, label %bb18
bb17:
  %t71 = load i64, ptr %l14, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb22
bb19:
  %t75 = load i64, ptr %l13, !tbaa !24
  %t76 = load i64, ptr %l12, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l14, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l14, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l53, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb21
bb21:
  %t91 = load i64, ptr %l53, !tbaa !24
  store i64 %t91, ptr %l50, !tbaa !24
  br label %bb22
bb22:
  %t92 = load i64, ptr %l50, !tbaa !24
  store i64 %t92, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t93 = load i64, ptr %l16, !tbaa !24
  %t94 = load i64, ptr %l15, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb31
bb25:
  br label %bb26
bb26:
  %t101 = load i64, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l16, !tbaa !24
  %t103 = load i64, ptr %l14, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store ptr %l11, ptr %l71, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l72, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 0
  %t113 = load i64, ptr %t112, !tbaa !24
  %t114 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 1
  %t115 = load i64, ptr %t114, !tbaa !24
  %t119 = add i64 %t115, %t109
  %t122 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t113, i64 %t119)
  store %"compiler/eval:Ptr" %t122, ptr %l77
  br label %bb27
bb27:
  %t123 = load ptr, ptr %l72, !tbaa !29
  %t124 = load %"compiler/eval:Ptr", ptr %l77
  %t125 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t123, %"compiler/eval:Ptr" %t124, i64 1)
  store i64 %t125, ptr %l78
  br label %bb28
bb28:
  %t126 = load i64, ptr %l78, !tbaa !24
  %t127 = trunc i64 %t126 to i8
  %t129 = load ptr, ptr %l71, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s2, ptr %t129, i8 %t127)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb30:
  %t131 = load i64, ptr %l16, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l16, !tbaa !24
  br label %bb23
bb31:
  %t136 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %v0, ptr %l11)
  store { i64, ptr } %t136, ptr %l84
  br label %bb32
bb32:
  %t137 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t139 = extractvalue { i64, ptr } %t137, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  store { i64, ptr } %t143, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb33:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l4, !range !{i32 0, i32 20}
  %t149 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t150
  %t151 = getelementptr { i64, [5 x i64] }, ptr %t150, i32 0, i32 0
  store i64 2, ptr %t151
  %t153 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } undef, i32 %t146, 0
  %t155 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t153, i64 %a2, 1
  %t157 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t155, %"compiler/source:Span" %a3, 2
  %t159 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t157, { i64, ptr } %t149, 3
  %t160 = getelementptr { i64, [5 x i64] }, ptr %t150, i32 0, i32 1
  store { i32, i64, %"compiler/source:Span", { i64, ptr } } %t159, ptr %t160
  %t161 = load { i64, [5 x i64] }, ptr %t150
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v0, ptr %t145, { i64, [5 x i64] } %t161)
  br label %bb34
bb34:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatten(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/mir:Lvalue"
  %l7 = alloca { i64, [15 x i64] }
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 19}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [21 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l5
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [21 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t18, i32 0, i32 1
  %t20 = load %"compiler/mir:Lvalue", ptr %t19
  store %"compiler/mir:Lvalue" %t20, ptr %l6
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [21 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, [15 x i64] }, ptr %t25
  store { i64, [15 x i64] } %t26, ptr %l7
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/eval:cfn", ptr %t28, i32 0, i32 18
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load %"compiler/source:Span", ptr %l5
  %t36 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/source:Span", ptr %t37, i64 %t32
  store %"compiler/source:Span" %t33, ptr %t38
  %t39 = getelementptr %"compiler/mir:Lvalue", ptr %l6, i32 0, i32 1
  %t40 = getelementptr %"compiler/mir:Range", ptr %t39, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = icmp eq i32 %t41, 0
  br i1 %t43, label %bb6, label %bb7
bb6:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t47 = load %"compiler/mir:Lvalue", ptr %l6
  %t48 = load { i64, [15 x i64] }, ptr %l7
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t50 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToLocal(ptr %v0, ptr %v1, ptr %v3, ptr %t45, ptr %t46, %"compiler/mir:Lvalue" %t47, { i64, [15 x i64] } %t48, ptr %t49, i64 %t50)
  br label %bb8
bb7:
  %t57 = getelementptr %"compiler/mir:Lvalue", ptr %l6, i32 0, i32 1
  %t58 = getelementptr %"compiler/mir:Range", ptr %t57, i32 0, i32 1
  %t59 = load i32, ptr %t58, !tbaa !23
  %t61 = icmp eq i32 %t59, 1
  br i1 %t61, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = load %"compiler/mir:Lvalue", ptr %l6
  %t66 = load { i64, [15 x i64] }, ptr %l7
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToElem(ptr %v0, ptr %v1, ptr %v3, ptr %t63, ptr %t64, %"compiler/mir:Lvalue" %t65, { i64, [15 x i64] } %t66, ptr %t67, i64 %t68)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
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
  call void @__olang_check_failed(ptr @olang_loc_2c3649ec7760d571_b360c53de5a7362d)
  unreachable
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenLoad(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, i64 %a3, i64 %a4, ptr %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, [1 x i64] }
  %l9 = alloca i64
  %l10 = alloca i32
  %l14 = alloca i64
  %l20 = alloca { i64, [1 x i64] }
  %l27 = alloca ptr
  %l31 = alloca %"compiler/mir:Local"
  %l33 = alloca i32
  %l36 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i64
  %l44 = alloca i1
  %l47 = alloca i64
  %l50 = alloca ptr
  %l54 = alloca %"compiler/mir:Local"
  %l56 = alloca i1
  %l62 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l78 = alloca %"compiler/mir:Local"
  %l84 = alloca %"compiler/mir:Local"
  %l88 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store i64 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 10
  %t4 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t5 = getelementptr %"compiler/mir:Range", ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t11 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t3, i64 %t8)
  store { i64, [1 x i64] } %t11, ptr %l20
  br label %bb1
bb1:
  %t12 = load { i64, [1 x i64] }, ptr %l20
  store { i64, [1 x i64] } %t12, ptr %l7
  %t13 = load { i64, [1 x i64] }, ptr %l7
  %t15 = extractvalue { i64, [1 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 1
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = getelementptr { i64, [1 x i64] }, ptr %l7, i32 0, i32 1
  %t21 = getelementptr { i32 }, ptr %t20, i32 0, i32 0
  %t22 = load i32, ptr %t21
  %t26 = sext i32 %t22 to i64
  store i64 %t26, ptr %l9, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l27, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 7
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t31, i64 %t32)
  store %"compiler/mir:Local" %t35, ptr %l31
  br label %bb5
bb5:
  %t36 = getelementptr %"compiler/mir:Local", ptr %l31, i32 0, i32 2
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l27, !tbaa !29
  %t40 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t38, i32 %t37)
  store i32 %t40, ptr %l33
  br label %bb6
bb6:
  %t41 = load i32, ptr %l33, !tbaa !23
  store i32 %t41, ptr %l10, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l10, !tbaa !23
  %t46 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l36
  br label %bb7
bb7:
  %t47 = load i1, ptr %l36, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb11
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l10, !tbaa !23
  %t54 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t50, i32 %t51)
  store i64 %t54, ptr %l41
  br label %bb10
bb10:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr %l41, !tbaa !24
  %t58 = icmp ne i64 %t56, %t55
  store i1 %t58, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t60 = load i1, ptr %l38, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb15
bb13:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l10, !tbaa !23
  %t65 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t61, i32 %t62)
  store i64 %t65, ptr %l47
  br label %bb14
bb14:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l47, !tbaa !24
  %t69 = icmp ne i64 %t67, %t66
  store i1 %t69, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t71 = load i1, ptr %l44, !tbaa !21
  br i1 %t71, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l50, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/mir:Fn", ptr %t73, i32 0, i32 7
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t75, i64 %t76)
  store %"compiler/mir:Local" %t79, ptr %l54
  br label %bb19
bb19:
  %t80 = getelementptr %"compiler/mir:Local", ptr %l54, i32 0, i32 2
  %t81 = load i32, ptr %t80, !tbaa !23
  %t82 = load ptr, ptr %l50, !tbaa !29
  %t84 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t82, i32 %t81)
  store i1 %t84, ptr %l56
  br label %bb20
bb20:
  %t85 = load i1, ptr %l56, !tbaa !21
  %t86 = xor i1 %t85, true
  br i1 %t86, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  %t88 = load i64, ptr @G_2ecompiler_2feval_2efLoad, !tbaa !24
  %t90 = load i64, ptr %l3, !tbaa !24
  %t92 = load i64, ptr %l9, !tbaa !24
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t96 = getelementptr %"compiler/eval:cfn", ptr %t94, i32 0, i32 13
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l62, !tbaa !27
  %t98 = load i64, ptr %l6, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i64, ptr %t103, i64 %t98
  store i64 %t88, ptr %t104, !tbaa !34
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t107 = getelementptr %"compiler/eval:cfn", ptr %t105, i32 0, i32 13
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = load i64, ptr %l6, !tbaa !24
  %t111 = add i64 %t109, 3
  %t115 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i64, ptr %t116, i64 %t111
  store i64 %t90, ptr %t117, !tbaa !34
  %t118 = load ptr, ptr %l5, !tbaa !29
  %t120 = getelementptr %"compiler/eval:cfn", ptr %t118, i32 0, i32 13
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l71, !tbaa !27
  %t122 = load i64, ptr %l6, !tbaa !24
  %t124 = add i64 %t122, 5
  %t128 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i64, ptr %t129, i64 %t124
  store i64 %t92, ptr %t130, !tbaa !34
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = getelementptr %"compiler/mir:Fn", ptr %t131, i32 0, i32 7
  %t134 = load i64, ptr %l3, !tbaa !24
  %t137 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t133, i64 %t134)
  store %"compiler/mir:Local" %t137, ptr %l78
  br label %bb24
bb24:
  %t138 = getelementptr %"compiler/mir:Local", ptr %l78, i32 0, i32 2
  %t139 = load i32, ptr %t138, !tbaa !23
  %t141 = sext i32 %t139 to i64
  store i64 %t141, ptr %l14, !tbaa !24
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/mir:Fn", ptr %t143, i32 0, i32 7
  %t146 = load i64, ptr %l9, !tbaa !24
  %t149 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t145, i64 %t146)
  store %"compiler/mir:Local" %t149, ptr %l84
  br label %bb25
bb25:
  %t150 = getelementptr %"compiler/mir:Local", ptr %l84, i32 0, i32 2
  %t151 = load i32, ptr %t150, !tbaa !23
  %t153 = sext i32 %t151 to i64
  %t155 = load ptr, ptr %l5, !tbaa !29
  %t157 = getelementptr %"compiler/eval:cfn", ptr %t155, i32 0, i32 13
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l88, !tbaa !27
  %t159 = load i64, ptr %l6, !tbaa !24
  %t161 = add i64 %t159, 7
  %t162 = load i64, ptr %l14, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i64, ptr %t166, i64 %t161
  store i64 %t162, ptr %t167, !tbaa !34
  %t168 = load ptr, ptr %l5, !tbaa !29
  %t170 = getelementptr %"compiler/eval:cfn", ptr %t168, i32 0, i32 13
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l93, !tbaa !27
  %t172 = load i64, ptr %l6, !tbaa !24
  %t174 = add i64 %t172, 8
  %t178 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i64, ptr %t179, i64 %t174
  store i64 %t153, ptr %t180, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenPrim(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4, i64 %a5, ptr %a6, i64 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i64
  %l19 = alloca i1
  %l21 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l32 = alloca { i64, [4 x i64] }
  %l38 = alloca i32
  %l41 = alloca i1
  %l44 = alloca i1
  %l50 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l56 = alloca ptr
  %l62 = alloca { i64, [4 x i64] }
  %l68 = alloca i32
  %l70 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l81 = alloca i1
  %l82 = alloca i1
  %l85 = alloca { i64, ptr }
  %l91 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  store ptr %a6, ptr %l6
  store i64 %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i1, ptr %l11, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t9, i32 %t10)
  store i64 %t13, ptr %l16
  br label %bb4
bb4:
  %t15 = load i64, ptr %l16, !tbaa !24
  %t17 = icmp ne i64 %t15, %a5
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l13, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb7:
  %t20 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t22 = call i1 @compiler_2feval_2eflatOp(i32 %t20)
  store i1 %t22, ptr %l21
  br label %bb8
bb8:
  %t23 = load i1, ptr %l21, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l19, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  %t27 = load i64, ptr %l7, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t31 = mul i64 %t27, %t28
  store i64 %t31, ptr %l8, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l26, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l27, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/mir:Fn", ptr %t35, i32 0, i32 11
  %t38 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = sext i32 %t39 to i64
  %t44 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %t37, i64 %t41)
  store { i64, [4 x i64] } %t44, ptr %l32
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t46 = load i64, ptr %l8, !tbaa !24
  %t48 = add i64 %t46, 3
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = add i64 %t49, 7
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = load ptr, ptr %l27, !tbaa !29
  %t54 = load { i64, [4 x i64] }, ptr %l32
  %t58 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %t52, ptr %t53, { i64, [4 x i64] } %t54, ptr %t45, i64 %t48, i64 %t51)
  store i32 %t58, ptr %l38
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb15, label %ok.60, !prof !99
ok.60:
  br label %bb14
bb14:
  br label %bb17
bb15:
  br label %bb16
bb16:
  br label %ret
bb17:
  %t61 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t63 = trunc i64 0 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb19:
  %t66 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t68 = trunc i64 1 to i32
  %t69 = icmp eq i32 %t66, %t68
  store i1 %t69, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l41, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb23
bb22:
  %t72 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t74 = trunc i64 2 to i32
  %t75 = icmp eq i32 %t72, %t74
  store i1 %t75, ptr %l44, !tbaa !21
  br label %bb23
bb23:
  %t77 = load i1, ptr %l44, !tbaa !21
  br i1 %t77, label %bb24, label %bb25
bb24:
  %t78 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t79 = load i32, ptr %t78, !tbaa !23
  %t81 = icmp ne i32 %t79, 1
  br i1 %t81, label %bb26, label %bb27
bb25:
  %t83 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t84 = load i32, ptr %t83, !tbaa !23
  %t86 = icmp ne i32 %t84, 2
  br i1 %t86, label %bb29, label %bb30
bb26:
  br label %ret
bb27:
  br label %bb28
bb28:
  %t88 = load ptr, ptr %l6, !tbaa !29
  %t90 = getelementptr %"compiler/eval:cfn", ptr %t88, i32 0, i32 13
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l50, !tbaa !27
  %t92 = load i64, ptr %l8, !tbaa !24
  %t93 = load i64, ptr @G_2ecompiler_2feval_2efUn, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i64, ptr %t97, i64 %t92
  store i64 %t93, ptr %t98, !tbaa !34
  br label %bb49
bb29:
  br label %ret
bb30:
  br label %bb31
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l55, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  store ptr %t100, ptr %l56, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/mir:Fn", ptr %t101, i32 0, i32 11
  %t104 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = sext i32 %t105 to i64
  %t109 = add i64 %t107, 1
  %t112 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %t103, i64 %t109)
  store { i64, [4 x i64] } %t112, ptr %l62
  br label %bb32
bb32:
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t114 = load i64, ptr %l8, !tbaa !24
  %t116 = add i64 %t114, 5
  %t117 = load i64, ptr %l8, !tbaa !24
  %t119 = add i64 %t117, 8
  %t120 = load ptr, ptr %l55, !tbaa !29
  %t121 = load ptr, ptr %l56, !tbaa !29
  %t122 = load { i64, [4 x i64] }, ptr %l62
  %t126 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %t120, ptr %t121, { i64, [4 x i64] } %t122, ptr %t113, i64 %t116, i64 %t119)
  store i32 %t126, ptr %l68
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb34, label %ok.128, !prof !99
ok.128:
  br label %bb33
bb33:
  br label %bb36
bb34:
  br label %bb35
bb35:
  br label %ret
bb36:
  %t129 = load ptr, ptr %l6, !tbaa !29
  %t131 = getelementptr %"compiler/eval:cfn", ptr %t129, i32 0, i32 13
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l70, !tbaa !27
  %t133 = load i64, ptr %l8, !tbaa !24
  %t134 = load i64, ptr @G_2ecompiler_2feval_2efBin, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i64, ptr %t138, i64 %t133
  store i64 %t134, ptr %t139, !tbaa !34
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l6, !tbaa !29
  %t143 = getelementptr %"compiler/eval:cfn", ptr %t141, i32 0, i32 13
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l75, !tbaa !27
  %t145 = load i64, ptr %l8, !tbaa !24
  %t147 = add i64 %t145, 7
  %t149 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i64, ptr %t150, i64 %t147
  %t152 = load i64, ptr %t151, !tbaa !34
  %t154 = trunc i64 %t152 to i32
  %t158 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ei64(ptr %v0, ptr %t140, i32 %t154)
  store i1 %t158, ptr %l81
  br label %bb37
bb37:
  %t159 = load i1, ptr %l81, !tbaa !21
  br i1 %t159, label %bb38, label %bb39
bb38:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l6, !tbaa !29
  %t163 = getelementptr %"compiler/eval:cfn", ptr %t161, i32 0, i32 13
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  store { i64, ptr } %t164, ptr %l85, !tbaa !27
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = add i64 %t165, 8
  %t169 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i64, ptr %t170, i64 %t167
  %t172 = load i64, ptr %t171, !tbaa !34
  %t174 = trunc i64 %t172 to i32
  %t178 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ei64(ptr %v0, ptr %t160, i32 %t174)
  store i1 %t178, ptr %l91
  br label %bb40
bb39:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb41
bb40:
  %t179 = load i1, ptr %l91, !tbaa !21
  store i1 %t179, ptr %l82, !tbaa !21
  br label %bb41
bb41:
  %t180 = load i1, ptr %l82, !tbaa !21
  br i1 %t180, label %bb42, label %bb43
bb42:
  %t181 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t183 = call i1 @compiler_2feval_2ewordOp(i32 %t181)
  store i1 %t183, ptr %l94
  br label %bb44
bb43:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb45
bb44:
  %t184 = load i1, ptr %l94, !tbaa !21
  store i1 %t184, ptr %l92, !tbaa !21
  br label %bb45
bb45:
  %t185 = load i1, ptr %l92, !tbaa !21
  br i1 %t185, label %bb46, label %bb47
bb46:
  %t186 = load ptr, ptr %l6, !tbaa !29
  %t188 = getelementptr %"compiler/eval:cfn", ptr %t186, i32 0, i32 13
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l96, !tbaa !27
  %t190 = load i64, ptr %l8, !tbaa !24
  %t192 = add i64 %t190, 10
  %t194 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr i64, ptr %t195, i64 %t192
  store i64 1, ptr %t196, !tbaa !34
  br label %bb48
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t197 = load ptr, ptr %l6, !tbaa !29
  %t199 = getelementptr %"compiler/eval:cfn", ptr %t197, i32 0, i32 14
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !27
  store { i64, ptr } %t200, ptr %l100, !tbaa !27
  %t201 = load i64, ptr %l7, !tbaa !24
  %t202 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t205 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i32, ptr %t206, i64 %t201
  store i32 %t202, ptr %t207
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l8 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 25
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 58
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/eval:frame", ptr %t11, i64 %a1
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %t3, i64 %t14)
  store ptr %t17, ptr %l8
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l8, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l22 = alloca i64
  %l28 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca i1
  %l40 = alloca %"compiler/eval:scope"
  %l47 = alloca i64
  %l50 = alloca i1
  %l59 = alloca %"compiler/eval:scope"
  %l64 = alloca i1
  %l68 = alloca i1
  %l72 = alloca i64
  %rv = alloca i64
  %t81 = alloca %"compiler/eval:scope", align 8
  %t121 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 70
  %t9 = load i64, ptr %t8, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t16 = and i64 %t12, %t13
  store i64 %t16, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 50
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = icmp sge i64 %t18, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb6
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 49
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr %"compiler/eval:alloc", ptr %t34, i64 %t31
  %t36 = getelementptr %"compiler/eval:alloc", ptr %t35, i32 0, i32 3
  %t37 = load i64, ptr %t36, !tbaa !24
  %t38 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t40, ptr %l22, !tbaa !24
  %t42 = load i64, ptr %l22, !tbaa !24
  %t43 = load i64, ptr %l22, !tbaa !24
  %t44 = ashr i64 %t39, %t43
  %t47 = icmp ne i64 %t37, %t44
  store i1 %t47, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t49 = load i1, ptr %l16, !tbaa !21
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 70
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/eval:Machine", ptr %t55, i32 0, i32 49
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l28, !tbaa !27
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr %"compiler/eval:alloc", ptr %t62, i64 %t59
  %t64 = getelementptr %"compiler/eval:alloc", ptr %t63, i32 0, i32 5
  %t65 = load i64, ptr %t64, !tbaa !24
  store i64 %t65, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l3, !tbaa !24
  %t71 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t67, i64 %t68)
  store i1 %t71, ptr %l33
  br label %bb11
bb11:
  %t72 = load i1, ptr %l33, !tbaa !21
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 52
  %t76 = load i64, ptr %l3, !tbaa !24
  %t77 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t80 = and i64 %t76, %t77
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t81, ptr %v0, ptr %t75, i64 %t80)
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t81, i64 152, i1 false)
  br label %bb14
bb13:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb15
bb14:
  %t84 = getelementptr %"compiler/eval:scope", ptr %l40, i32 0, i32 2
  %t85 = load i64, ptr %t84, !tbaa !24
  %t86 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t89 = icmp eq i64 %t85, %t86
  store i1 %t89, ptr %l34, !tbaa !21
  br label %bb15
bb15:
  %t91 = load i1, ptr %l34, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l3, !tbaa !24
  %t98 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHome(ptr %v0, ptr %t94, i64 %t95)
  store i64 %t98, ptr %l47
  br label %bb19
bb19:
  %t99 = load i64, ptr %l47, !tbaa !24
  store i64 %t99, ptr %l3, !tbaa !24
  br label %bb20
bb20:
  br label %bb10
bb21:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l3, !tbaa !24
  %t104 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t100, i64 %t101)
  store i1 %t104, ptr %l50
  br label %bb22
bb22:
  %t105 = load i1, ptr %l50, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 70
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 52
  %t116 = load i64, ptr %l3, !tbaa !24
  %t117 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t120 = and i64 %t116, %t117
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t121, ptr %v0, ptr %t115, i64 %t120)
  call void @llvm.memmove.p0.p0.i64(ptr %l59, ptr %t121, i64 152, i1 false)
  br label %bb26
bb26:
  %t124 = getelementptr %"compiler/eval:scope", ptr %l59, i32 0, i32 2
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l4, !tbaa !24
  %t127 = load i64, ptr %l4, !tbaa !24
  %t128 = load i64, ptr @G_2ecompiler_2feval_2esStore, !tbaa !24
  %t131 = icmp eq i64 %t127, %t128
  br i1 %t131, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb29
bb28:
  %t133 = load i64, ptr %l4, !tbaa !24
  %t134 = load i64, ptr @G_2ecompiler_2feval_2esInert, !tbaa !24
  %t137 = icmp eq i64 %t133, %t134
  store i1 %t137, ptr %l64, !tbaa !21
  br label %bb29
bb29:
  %t139 = load i1, ptr %l64, !tbaa !21
  br i1 %t139, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb32
bb31:
  %t140 = load i64, ptr %l4, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2feval_2esBuilder, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  store i1 %t144, ptr %l68, !tbaa !21
  br label %bb32
bb32:
  %t146 = load i1, ptr %l68, !tbaa !21
  br i1 %t146, label %bb33, label %bb34
bb33:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/eval:Machine", ptr %t147, i32 0, i32 70
  %t150 = load i64, ptr %t149, !tbaa !24
  store i64 %t150, ptr %l72, !tbaa !24
  br label %bb35
bb34:
  %t152 = load i64, ptr %l3, !tbaa !24
  store i64 %t152, ptr %l72, !tbaa !24
  br label %bb35
bb35:
  %t154 = load i64, ptr %l72, !tbaa !24
  store i64 %t154, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2egenNew(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, { i64, [4 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:Ptr"
  %l10 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l22 = alloca i64
  %l27 = alloca %"compiler/eval:Ptr"
  %l34 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l49 = alloca %"compiler/eval:Ptr"
  %l55 = alloca %"compiler/eval:scope"
  %l59 = alloca i64
  %l62 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  %t97 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l3, !tbaa !23
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t4, i32 %t5)
  store i64 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load i64, ptr %l14, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp sle i64 %t10, 8
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i64 8, ptr %l17, !tbaa !24
  br label %bb4
bb3:
  %t14 = load i64, ptr %l5, !tbaa !24
  store i64 %t14, ptr %l17, !tbaa !24
  br label %bb4
bb4:
  %t16 = load i64, ptr %l17, !tbaa !24
  store i64 %t16, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l19, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l22
  br label %bb5
bb5:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l22, !tbaa !24
  %t26 = add i64 %t24, %t23
  %t27 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t29 = load ptr, ptr %l19, !tbaa !29
  %t33 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t29, i64 %t26, i64 %t27, i64 %t28)
  store %"compiler/eval:Ptr" %t33, ptr %l27
  br label %bb6
bb6:
  %t34 = load %"compiler/eval:Ptr", ptr %l27
  store %"compiler/eval:Ptr" %t34, ptr %l7
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 22
  %t38 = load i1, ptr %t37, !tbaa !21
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t40, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = load i32, ptr %l3, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 49
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l34, !tbaa !27
  %t50 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t55 = and i64 %t51, %t52
  %t59 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/eval:alloc", ptr %t60, i64 %t55
  %t62 = getelementptr %"compiler/eval:alloc", ptr %t61, i32 0, i32 10
  store i64 %t42, ptr %t62, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 49
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l40, !tbaa !27
  %t67 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t72 = and i64 %t68, %t69
  %t76 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr %"compiler/eval:alloc", ptr %t77, i64 %t72
  %t79 = getelementptr %"compiler/eval:alloc", ptr %t78, i32 0, i32 11
  store i32 %t44, ptr %t79, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l45, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = sub i64 %t83, 8
  %t88 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t82, i64 %t85)
  store %"compiler/eval:Ptr" %t88, ptr %l49
  br label %bb10
bb10:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/eval:Machine", ptr %t89, i32 0, i32 52
  %t92 = load i64, ptr %l2, !tbaa !24
  %t93 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t96 = and i64 %t92, %t93
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t97, ptr %v0, ptr %t91, i64 %t96)
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t97, i64 152, i1 false)
  br label %bb11
bb11:
  %t100 = getelementptr %"compiler/eval:scope", ptr %l55, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load i64, ptr @G_2ecompiler_2feval_2esStore, !tbaa !24
  %t105 = icmp eq i64 %t101, %t102
  br i1 %t105, label %bb12, label %bb13
bb12:
  store i64 196609, ptr %l59, !tbaa !24
  br label %bb14
bb13:
  store i64 1, ptr %l59, !tbaa !24
  br label %bb14
bb14:
  %t107 = load ptr, ptr %l45, !tbaa !29
  %t108 = load %"compiler/eval:Ptr", ptr %l49
  %t109 = load i64, ptr %l59, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t107, %"compiler/eval:Ptr" %t108, i64 8, i64 %t109)
  br label %bb15
bb15:
  %t110 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t111 = load i64, ptr %t110, !tbaa !24
  %t112 = load i64, ptr %l6, !tbaa !24
  %t115 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t111, i64 %t112)
  store %"compiler/eval:Ptr" %t115, ptr %l62
  br label %bb16
bb16:
  %t116 = load %"compiler/eval:Ptr", ptr %l62
  store %"compiler/eval:Ptr" %t116, ptr %l10
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = load %"compiler/eval:Ptr", ptr %l10
  %t120 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t117, i64 %a1, %"compiler/eval:Ptr" %t119, i32 %t120, { i64, [4 x i64] } %a4)
  br label %bb17
bb17:
  %t127 = load %"compiler/eval:Ptr", ptr %l10
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t127, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenRefOp(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 5
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l6, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t8, i64 %a1, { i64, [4 x i64] } %a2)
  store i32 %t14, ptr %l10
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l6, !tbaa !29
  %t17 = load i32, ptr %l10, !tbaa !23
  %t18 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eGenRef(ptr %v0, ptr %v0, ptr %t15, ptr %t16, i32 %t17)
  store i1 %t18, ptr %l11
  br label %bb2
bb2:
  %t19 = load i1, ptr %l11, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalWritten(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca %"compiler/eval:gkey"
  %l17 = alloca i64
  %l18 = alloca i32
  %l21 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l2
  %t4 = load { i64, [2 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 2
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i64, i32, i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t14 = getelementptr { i64, i32, i32 }, ptr %t13, i32 0, i32 1
  %t15 = load i32, ptr %t14
  store i32 %t15, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb16
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 43
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i32, ptr %l4, !tbaa !23
  %t24 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s1, i64 %t20, i32 %t21)
  store %"compiler/eval:gkey" %t24, ptr %l16
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load %"compiler/eval:gkey", ptr %l16
  %t27 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t25, %"compiler/eval:gkey" %t26)
  %t28 = extractvalue { i32, i64 } %t27, 1
  %t29 = extractvalue { i32, i64 } %t27, 0
  store i32 %t29, ptr %l18
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb6, label %ok.31, !prof !99
ok.31:
  store i64 %t28, ptr %l17
  br label %bb5
bb5:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l11, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l11, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 73
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp ne i64 %t38, %t42
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l21, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWritesGlobalVar, !tbaa !27
  %t50 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t50, ptr %t48, { i64, ptr } %t49)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_cdcdbab6c5a00ca5_1566754bdc1f9529)
  unreachable
bb21:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholderCheck(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { ptr, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/eval:alloc"
  %l10 = alloca %"compiler/eval:Ptr"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/eval:global"
  %l30 = alloca i64
  %l33 = alloca i64
  %l52 = alloca { i64, ptr }
  %l58 = alloca i1
  %l61 = alloca i1
  %l65 = alloca i64
  %l70 = alloca %"compiler/eval:Ptr"
  %l79 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l105 = alloca ptr
  %l110 = alloca %"compiler/eval:Ptr"
  %l119 = alloca i64
  %l121 = alloca i64
  %l126 = alloca %"compiler/eval:global"
  %l129 = alloca i1
  %l132 = alloca ptr
  %l134 = alloca %"compiler/eval:Ptr"
  %l150 = alloca i32
  %l152 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 6
  store i1 false, ptr %t3, !tbaa !21
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr null, i32 1
  %t7 = ptrtoint ptr %t6 to i64
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t7, i64 8)
  %t9 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %t8, i32 0, i32 0
  store %"compiler/eval:Ptr" %a1, ptr %t9, !tbaa !28
  %t11 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %t8, i32 0, i32 1
  store ptr %t5, ptr %t11, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t13 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %t8, i32 0, i32 2
  store ptr %v0, ptr %t13, !tbaa !28
  %t14 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_5, 0
  %t15 = insertvalue { ptr, ptr } %t14, ptr %t8, 1
  store { ptr, ptr } %t15, ptr %l2
  store i64 1, ptr %l3, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 50
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb1, label %bb2
bb1:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb6
bb3:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l33, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb5
bb5:
  %t48 = load i64, ptr %l33, !tbaa !24
  store i64 %t48, ptr %l30, !tbaa !24
  br label %bb6
bb6:
  %t49 = load i64, ptr %l30, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb9:
  br label %bb10
bb10:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l8, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 49
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l52, !tbaa !27
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"compiler/eval:alloc", ptr %t75, i64 %t72
  %t77 = load %"compiler/eval:alloc", ptr %t76
  store %"compiler/eval:alloc" %t77, ptr %l9
  %t79 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 4
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t84 = icmp ne i64 %t80, %t81
  br i1 %t84, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb13
bb12:
  %t86 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t87 = load i32, ptr %t86, !tbaa !23
  %t89 = icmp eq i32 %t87, 0
  store i1 %t89, ptr %l58, !tbaa !21
  br label %bb13
bb13:
  %t91 = load i1, ptr %l58, !tbaa !21
  br i1 %t91, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb16
bb15:
  %t92 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 9
  %t93 = load i64, ptr %t92, !tbaa !24
  %t95 = icmp sge i64 %t93, 0
  store i1 %t95, ptr %l61, !tbaa !21
  br label %bb16
bb16:
  %t97 = load i1, ptr %l61, !tbaa !21
  br i1 %t97, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb18:
  br label %bb19
bb19:
  %t98 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 3
  %t99 = load i64, ptr %t98, !tbaa !24
  %t100 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t100, ptr %l65, !tbaa !24
  %t102 = load i64, ptr %l65, !tbaa !24
  %t103 = load i64, ptr %l65, !tbaa !24
  %t104 = shl i64 %t99, %t103
  %t105 = load i64, ptr %l8, !tbaa !24
  %t108 = or i64 %t104, %t105
  %t109 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 10
  %t110 = load i64, ptr %t109, !tbaa !24
  %t113 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t108, i64 %t110)
  store %"compiler/eval:Ptr" %t113, ptr %l70
  br label %bb20
bb20:
  %t114 = load %"compiler/eval:Ptr", ptr %l70
  store %"compiler/eval:Ptr" %t114, ptr %l10
  %t115 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 12
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  br i1 %t118, label %bb21, label %bb22
bb21:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load %"compiler/eval:Ptr", ptr %l10
  %t122 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load { ptr, ptr }, ptr %l2
  %t129 = extractvalue { ptr, ptr } %t124, 0
  %t130 = extractvalue { ptr, ptr } %t124, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t120, %"compiler/eval:Ptr" %t121, i32 %t123, i1 false, ptr %t129, ptr %t130)
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t133 = load i32, ptr %t132, !tbaa !23
  %t136 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t131, i32 %t133)
  store i64 %t136, ptr %l79
  br label %bb25
bb25:
  %t137 = load i64, ptr %l79, !tbaa !24
  store i64 %t137, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t138 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 12
  %t139 = load i64, ptr %t138, !tbaa !24
  store i64 %t139, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = icmp sgt i64 %t141, %t142
  br i1 %t145, label %bb26, label %bb27
bb26:
  %t147 = load i64, ptr %l14, !tbaa !24
  %t149 = icmp sgt i64 %t147, 0
  br i1 %t149, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb31
bb28:
  %t151 = load i64, ptr %l13, !tbaa !24
  %t152 = load i64, ptr %l12, !tbaa !24
  %t155 = sub i64 %t151, %t152
  %t156 = load i64, ptr %l14, !tbaa !24
  %t159 = add i64 %t155, %t156
  %t161 = sub i64 %t159, 1
  %t162 = load i64, ptr %l14, !tbaa !24
  %t165 = sdiv i64 %t161, %t162
  store i64 %t165, ptr %l87, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb30
bb30:
  %t167 = load i64, ptr %l87, !tbaa !24
  store i64 %t167, ptr %l84, !tbaa !24
  br label %bb31
bb31:
  %t168 = load i64, ptr %l84, !tbaa !24
  store i64 %t168, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  %t169 = load i64, ptr %l16, !tbaa !24
  %t170 = load i64, ptr %l15, !tbaa !24
  %t173 = icmp slt i64 %t169, %t170
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load i64, ptr %l16, !tbaa !24
  %t179 = load i64, ptr %l14, !tbaa !24
  %t182 = mul i64 %t178, %t179
  %t185 = add i64 %t177, %t182
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l105, !tbaa !29
  %t188 = getelementptr %"compiler/eval:Ptr", ptr %l10, i32 0, i32 0
  %t189 = load i64, ptr %t188, !tbaa !24
  %t191 = load i64, ptr %l11, !tbaa !24
  %t194 = mul i64 %t185, %t191
  %t197 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s6, i64 %t189, i64 %t194)
  store %"compiler/eval:Ptr" %t197, ptr %l110
  br label %bb36
bb36:
  %t198 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t199 = load i32, ptr %t198, !tbaa !23
  %t200 = load { ptr, ptr }, ptr %l2
  %t201 = load ptr, ptr %l105, !tbaa !29
  %t202 = load %"compiler/eval:Ptr", ptr %l110
  %t205 = extractvalue { ptr, ptr } %t200, 0
  %t206 = extractvalue { ptr, ptr } %t200, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t201, %"compiler/eval:Ptr" %t202, i32 %t199, i1 false, ptr %t205, ptr %t206)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb38:
  %t207 = load i64, ptr %l16, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l16, !tbaa !24
  br label %bb32
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t211 = load i64, ptr %l7, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l7, !tbaa !24
  br label %bb7
bb41:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/eval:Machine", ptr %t215, i32 0, i32 42
  store ptr %t217, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb42
bb42:
  %t219 = load i64, ptr %l19, !tbaa !24
  store i64 %t219, ptr %l119, !tbaa !24
  %t220 = load ptr, ptr %l18, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t220)
  store i64 %t222, ptr %l121
  br label %bb43
bb43:
  %t223 = load i64, ptr %l119, !tbaa !24
  %t224 = load i64, ptr %l121, !tbaa !24
  %t225 = icmp slt i64 %t223, %t224
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb44, label %bb45
bb44:
  br label %bb57
bb45:
  br label %bb46
bb46:
  %t229 = load ptr, ptr %l18, !tbaa !29
  %t230 = load i64, ptr %l19, !tbaa !24
  %t233 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t229, i64 %t230)
  store %"compiler/eval:global" %t233, ptr %l126
  br label %bb47
bb47:
  %t234 = load %"compiler/eval:global", ptr %l126
  store %"compiler/eval:global" %t234, ptr %l20
  %t235 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 4
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = icmp eq i64 %t236, 2
  br i1 %t238, label %bb48, label %bb49
bb48:
  %t240 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 3
  %t241 = load i64, ptr %t240, !tbaa !24
  %t243 = icmp ne i64 %t241, 0
  store i1 %t243, ptr %l129, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb50
bb50:
  %t245 = load i1, ptr %l129, !tbaa !21
  br i1 %t245, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l132, !tbaa !29
  %t247 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 3
  %t248 = load i64, ptr %t247, !tbaa !24
  %t250 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t248, i64 0)
  store %"compiler/eval:Ptr" %t250, ptr %l134
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t251 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 0
  %t252 = load i64, ptr %t251, !tbaa !24
  %t254 = trunc i64 %t252 to i32
  %t256 = load { ptr, ptr }, ptr %l2
  %t257 = load ptr, ptr %l132, !tbaa !29
  %t258 = load %"compiler/eval:Ptr", ptr %l134
  %t261 = extractvalue { ptr, ptr } %t256, 0
  %t262 = extractvalue { ptr, ptr } %t256, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t257, %"compiler/eval:Ptr" %t258, i32 %t254, i1 false, ptr %t261, ptr %t262)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s11)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t263 = load i64, ptr %l19, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l19, !tbaa !24
  br label %bb42
bb57:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/eval:Machine", ptr %t267, i32 0, i32 6
  %t270 = load i1, ptr %t269, !tbaa !21
  %t272 = xor i1 %t270, true
  br i1 %t272, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb59:
  br label %bb60
bb60:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/eval:Machine", ptr %t274, i32 0, i32 77
  %t277 = load i64, ptr %t276, !tbaa !24
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/eval:Machine", ptr %t278, i32 0, i32 78
  %t281 = getelementptr %"compiler/source:Span", ptr %t280, i32 0, i32 0
  %t282 = load i32, ptr %t281, !tbaa !23
  %t283 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyHolderMissed, !tbaa !27
  %t284 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t287 = call i64 @__olang_fmt_i64(ptr null, i64 %t277)
  %t288 = add i64 %t285, %t287
  %t289 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t290 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t291 = add i64 %t288, %t290
  %t293 = sext i32 %t282 to i64
  %t294 = call i64 @__olang_fmt_i64(ptr null, i64 %t293)
  %t295 = add i64 %t291, %t294
  %t296 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t297 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t298 = add i64 %t295, %t297
  %t300 = extractvalue { i64, ptr } %t283, 1
  %t301 = extractvalue { i64, ptr } %t283, 0
  %t302 = add i64 %t298, %t301
  %t303 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t305 = add i64 %t302, %t304
  %t306 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t305)
  call void @olang_textcopy(ptr %t306, ptr %t284, i64 %t285)
  %t307 = getelementptr i8, ptr %t306, i64 %t285
  %t308 = call i64 @__olang_fmt_i64(ptr %t307, i64 %t277)
  %t309 = getelementptr i8, ptr %t307, i64 %t287
  call void @olang_textcopy(ptr %t309, ptr %t289, i64 %t290)
  %t310 = getelementptr i8, ptr %t309, i64 %t290
  %t311 = call i64 @__olang_fmt_i64(ptr %t310, i64 %t293)
  %t312 = getelementptr i8, ptr %t310, i64 %t294
  call void @olang_textcopy(ptr %t312, ptr %t296, i64 %t297)
  %t313 = getelementptr i8, ptr %t312, i64 %t297
  call void @olang_textcopy(ptr %t313, ptr %t300, i64 %t301)
  %t314 = getelementptr i8, ptr %t313, i64 %t301
  call void @olang_textcopy(ptr %t314, ptr %t303, i64 %t304)
  %t315 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t306, 1
  %t318 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t316)
  store i32 %t318, ptr %l150
  %t319 = icmp ne i32 %t318, 0
  br i1 %t319, label %bb62, label %ok.320, !prof !99
ok.320:
  br label %bb61
bb61:
  br label %bb66
bb62:
  %t321 = load i32, ptr %l150, !tbaa !23
  %t322 = ashr i32 %t321, 16
  %t324 = icmp eq i32 %t322, 1
  store i1 %t324, ptr %l152, !tbaa !21
  %t325 = load i32, ptr %l150, !tbaa !23
  %t326 = ashr i32 %t325, 16
  %t328 = icmp eq i32 %t326, 1
  br i1 %t328, label %bb63, label %bb64
bb63:
  call void @__olang_errpay_pop()
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  call void @std_2fos_2eExit(i32 70)
  unreachable
bb67:
  call void @__olang_check_failed(ptr @olang_loc_c0f012afc32ce5a5_1c35e5c4f1b6a4c9)
  unreachable
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l38 = alloca i64
  %l42 = alloca i64
  %l70 = alloca i1
  %l79 = alloca i64
  %l88 = alloca i64
  %l104 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i1
  %l113 = alloca i64
  %l115 = alloca i1
  %l120 = alloca i1
  %l130 = alloca i64
  %l134 = alloca i64
  %l138 = alloca i64
  %l161 = alloca i64
  %l167 = alloca i64
  %l171 = alloca i1
  %l178 = alloca i64
  %l182 = alloca i1
  %l189 = alloca i64
  %l193 = alloca i1
  %l200 = alloca i64
  %l204 = alloca i1
  %l211 = alloca i64
  %l213 = alloca i64
  %l214 = alloca i64
  %l216 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l4, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load i64, ptr %l17, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l4, !tbaa !23
  %t11 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l20
  br label %bb2
bb2:
  %t12 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t13 = load i64, ptr %l20, !tbaa !24
  %t15 = icmp eq i64 %t13, %t12
  store i1 %t15, ptr %l7, !tbaa !21
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i32, ptr %l4, !tbaa !23
  %t23 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t17, i64 %t18, i32 %t19)
  store i64 %t23, ptr %l26
  br label %bb3
bb3:
  %t24 = load i64, ptr %l26, !tbaa !24
  store i64 %t24, ptr %l8, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i32, ptr %l4, !tbaa !23
  %t31 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t25, i64 %t26, i32 %t27)
  store i64 %t31, ptr %l30
  br label %bb4
bb4:
  %t32 = load i64, ptr %l30, !tbaa !24
  store i64 %t32, ptr %l9, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  store i64 %t33, ptr %l31, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = call i64 @compiler_2feval_2ebmask(i64 %t34)
  store i64 %t36, ptr %l33
  br label %bb5
bb5:
  %t37 = load i64, ptr %l31, !tbaa !24
  %t38 = load i64, ptr %l33, !tbaa !24
  %t39 = and i64 %t37, %t38
  store i64 %t39, ptr %l10, !tbaa !65
  %t42 = load i64, ptr %l3, !tbaa !24
  store i64 %t42, ptr %l36, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t45 = call i64 @compiler_2feval_2ebmask(i64 %t43)
  store i64 %t45, ptr %l38
  br label %bb6
bb6:
  %t46 = load i64, ptr %l36, !tbaa !24
  %t47 = load i64, ptr %l38, !tbaa !24
  %t48 = and i64 %t46, %t47
  store i64 %t48, ptr %l11, !tbaa !65
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = call i64 @compiler_2feval_2eminBits(i64 %t51)
  store i64 %t53, ptr %l42
  br label %bb7
bb7:
  %t54 = load i64, ptr %l42, !tbaa !24
  store i64 %t54, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t55 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t57 = trunc i64 3 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = add i64 %t60, %t61
  store i64 %t64, ptr %l13, !tbaa !24
  br label %bb148
bb11:
  %t66 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t68 = trunc i64 4 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t71 = load i64, ptr %l8, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = sub i64 %t71, %t72
  store i64 %t75, ptr %l13, !tbaa !24
  br label %bb148
bb15:
  %t77 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t79 = trunc i64 5 to i32
  %t80 = icmp eq i32 %t77, %t79
  br i1 %t80, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = mul i64 %t82, %t83
  store i64 %t86, ptr %l13, !tbaa !24
  br label %bb148
bb19:
  %t88 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t90 = trunc i64 6 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  %t93 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t95 = trunc i64 7 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb45
bb24:
  %t98 = load i64, ptr %l9, !tbaa !24
  %t100 = icmp eq i64 %t98, 0
  br i1 %t100, label %bb25, label %bb26
bb25:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDivZero, !tbaa !27
  %t104 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t104, ptr %t102, { i64, ptr } %t103)
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i64 0, ptr %rv
  br label %ret
bb28:
  %t108 = load i1, ptr %l7, !tbaa !21
  br i1 %t108, label %bb29, label %bb30
bb29:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t112 = icmp eq i64 %t110, -1
  br i1 %t112, label %bb31, label %bb32
bb30:
  %t114 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t116 = trunc i64 6 to i32
  %t117 = icmp eq i32 %t114, %t116
  br i1 %t117, label %bb41, label %bb42
bb31:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t120 = load i64, ptr %l12, !tbaa !24
  %t123 = icmp eq i64 %t119, %t120
  store i1 %t123, ptr %l70, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb33
bb33:
  %t125 = load i1, ptr %l70, !tbaa !21
  br i1 %t125, label %bb34, label %bb35
bb34:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDivMin, !tbaa !27
  %t128 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t128, ptr %t126, { i64, ptr } %t127)
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i64 0, ptr %rv
  br label %ret
bb37:
  %t132 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t134 = trunc i64 6 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb38, label %bb39
bb38:
  %t137 = load i64, ptr %l8, !tbaa !24
  %t138 = load i64, ptr %l9, !tbaa !24
  %t141 = sdiv i64 %t137, %t138
  store i64 %t141, ptr %l79, !tbaa !24
  br label %bb40
bb39:
  %t143 = load i64, ptr %l8, !tbaa !24
  %t144 = load i64, ptr %l9, !tbaa !24
  %t147 = srem i64 %t143, %t144
  store i64 %t147, ptr %l79, !tbaa !24
  br label %bb40
bb40:
  %t149 = load i64, ptr %l79, !tbaa !24
  store i64 %t149, ptr %l13, !tbaa !24
  br label %bb44
bb41:
  %t150 = load i64, ptr %l10, !tbaa !65
  %t151 = load i64, ptr %l11, !tbaa !65
  %t154 = udiv i64 %t150, %t151
  store i64 %t154, ptr %l88, !tbaa !24
  br label %bb43
bb42:
  %t157 = load i64, ptr %l10, !tbaa !65
  %t158 = load i64, ptr %l11, !tbaa !65
  %t161 = urem i64 %t157, %t158
  store i64 %t161, ptr %l88, !tbaa !24
  br label %bb43
bb43:
  %t164 = load i64, ptr %l88, !tbaa !24
  store i64 %t164, ptr %l13, !tbaa !24
  br label %bb44
bb44:
  br label %bb148
bb45:
  %t165 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t167 = trunc i64 8 to i32
  %t168 = icmp eq i32 %t165, %t167
  br i1 %t168, label %bb46, label %bb47
bb46:
  br label %bb50
bb47:
  %t170 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t172 = trunc i64 9 to i32
  %t173 = icmp eq i32 %t170, %t172
  br i1 %t173, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb76
bb50:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i64, ptr %l3, !tbaa !24
  %t177 = load i32, ptr %l5, !tbaa !23
  %t181 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t175, i64 %t176, i32 %t177)
  store i64 %t181, ptr %l104
  br label %bb51
bb51:
  %t182 = load i64, ptr %l104, !tbaa !24
  store i64 %t182, ptr %l14, !tbaa !24
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l5, !tbaa !23
  %t187 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t183, i32 %t184)
  store i64 %t187, ptr %l107
  br label %bb52
bb52:
  %t188 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t189 = load i64, ptr %l107, !tbaa !24
  %t191 = icmp eq i64 %t189, %t188
  br i1 %t191, label %bb53, label %bb54
bb53:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i32, ptr %l5, !tbaa !23
  %t197 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t193, i32 %t194)
  store i64 %t197, ptr %l113
  br label %bb55
bb54:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb56
bb55:
  %t198 = load i64, ptr %l113, !tbaa !24
  %t199 = icmp eq i64 %t198, 64
  store i1 %t199, ptr %l110, !tbaa !21
  br label %bb56
bb56:
  %t201 = load i1, ptr %l110, !tbaa !21
  br i1 %t201, label %bb57, label %bb58
bb57:
  %t202 = load i64, ptr %l3, !tbaa !24
  %t204 = icmp slt i64 %t202, 0
  store i1 %t204, ptr %l115, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb59
bb59:
  %t206 = load i1, ptr %l115, !tbaa !21
  br i1 %t206, label %bb60, label %bb61
bb60:
  store i64 64, ptr %l14, !tbaa !24
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t207 = load i64, ptr %l14, !tbaa !24
  %t209 = icmp slt i64 %t207, 0
  br i1 %t209, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb65
bb64:
  %t211 = load i64, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l6, !tbaa !24
  %t215 = icmp sge i64 %t211, %t212
  store i1 %t215, ptr %l120, !tbaa !21
  br label %bb65
bb65:
  %t217 = load i1, ptr %l120, !tbaa !21
  br i1 %t217, label %bb66, label %bb67
bb66:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyShift, !tbaa !27
  %t220 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t220, ptr %t218, { i64, ptr } %t219)
  br label %bb68
bb67:
  br label %bb69
bb68:
  store i64 0, ptr %rv
  br label %ret
bb69:
  %t224 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t226 = trunc i64 8 to i32
  %t227 = icmp eq i32 %t224, %t226
  br i1 %t227, label %bb70, label %bb71
bb70:
  %t229 = load i64, ptr %l8, !tbaa !24
  %t230 = load i64, ptr %l14, !tbaa !24
  store i64 %t230, ptr %l130, !tbaa !24
  %t232 = load i64, ptr %l130, !tbaa !24
  %t233 = load i64, ptr %l130, !tbaa !24
  %t234 = shl i64 %t229, %t233
  store i64 %t234, ptr %l13, !tbaa !24
  br label %bb75
bb71:
  %t236 = load i1, ptr %l7, !tbaa !21
  br i1 %t236, label %bb72, label %bb73
bb72:
  %t238 = load i64, ptr %l8, !tbaa !24
  %t239 = load i64, ptr %l14, !tbaa !24
  store i64 %t239, ptr %l134, !tbaa !24
  %t241 = load i64, ptr %l134, !tbaa !24
  %t242 = load i64, ptr %l134, !tbaa !24
  %t243 = ashr i64 %t238, %t242
  store i64 %t243, ptr %l13, !tbaa !24
  br label %bb74
bb73:
  %t245 = load i64, ptr %l10, !tbaa !65
  %t246 = load i64, ptr %l14, !tbaa !24
  store i64 %t246, ptr %l138, !tbaa !65
  %t249 = load i64, ptr %l138, !tbaa !65
  %t250 = load i64, ptr %l138, !tbaa !65
  %t251 = lshr i64 %t245, %t250
  store i64 %t251, ptr %l13, !tbaa !24
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb148
bb76:
  %t254 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t256 = trunc i64 10 to i32
  %t257 = icmp eq i32 %t254, %t256
  br i1 %t257, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  %t259 = load i64, ptr %l8, !tbaa !24
  %t260 = load i64, ptr %l9, !tbaa !24
  %t263 = and i64 %t259, %t260
  store i64 %t263, ptr %l13, !tbaa !24
  br label %bb148
bb80:
  %t265 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t267 = trunc i64 11 to i32
  %t268 = icmp eq i32 %t265, %t267
  br i1 %t268, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t270 = load i64, ptr %l8, !tbaa !24
  %t271 = load i64, ptr %l9, !tbaa !24
  %t274 = or i64 %t270, %t271
  store i64 %t274, ptr %l13, !tbaa !24
  br label %bb148
bb84:
  %t276 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t278 = trunc i64 12 to i32
  %t279 = icmp eq i32 %t276, %t278
  br i1 %t279, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  %t281 = load i64, ptr %l8, !tbaa !24
  %t282 = load i64, ptr %l9, !tbaa !24
  %t285 = xor i64 %t281, %t282
  store i64 %t285, ptr %l13, !tbaa !24
  br label %bb148
bb88:
  %t287 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t289 = trunc i64 13 to i32
  %t290 = icmp eq i32 %t287, %t289
  br i1 %t290, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb95
bb91:
  %t292 = load i64, ptr %l8, !tbaa !24
  %t293 = load i64, ptr %l9, !tbaa !24
  %t296 = icmp eq i64 %t292, %t293
  br i1 %t296, label %bb92, label %bb93
bb92:
  store i64 1, ptr %l161, !tbaa !24
  br label %bb94
bb93:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb94
bb94:
  %t298 = load i64, ptr %l161, !tbaa !24
  store i64 %t298, ptr %rv
  br label %ret
bb95:
  %t299 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t301 = trunc i64 14 to i32
  %t302 = icmp eq i32 %t299, %t301
  br i1 %t302, label %bb96, label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb102
bb98:
  %t304 = load i64, ptr %l8, !tbaa !24
  %t305 = load i64, ptr %l9, !tbaa !24
  %t308 = icmp ne i64 %t304, %t305
  br i1 %t308, label %bb99, label %bb100
bb99:
  store i64 1, ptr %l167, !tbaa !24
  br label %bb101
bb100:
  store i64 0, ptr %l167, !tbaa !24
  br label %bb101
bb101:
  %t310 = load i64, ptr %l167, !tbaa !24
  store i64 %t310, ptr %rv
  br label %ret
bb102:
  %t311 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t313 = trunc i64 15 to i32
  %t314 = icmp eq i32 %t311, %t313
  br i1 %t314, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb112
bb105:
  %t316 = load i1, ptr %l7, !tbaa !21
  br i1 %t316, label %bb106, label %bb107
bb106:
  %t318 = load i64, ptr %l8, !tbaa !24
  %t319 = load i64, ptr %l9, !tbaa !24
  %t322 = icmp slt i64 %t318, %t319
  store i1 %t322, ptr %l171, !tbaa !21
  br label %bb108
bb107:
  %t324 = load i64, ptr %l10, !tbaa !65
  %t325 = load i64, ptr %l11, !tbaa !65
  %t328 = icmp ult i64 %t324, %t325
  store i1 %t328, ptr %l171, !tbaa !21
  br label %bb108
bb108:
  %t330 = load i1, ptr %l171, !tbaa !21
  br i1 %t330, label %bb109, label %bb110
bb109:
  store i64 1, ptr %l178, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l178, !tbaa !24
  br label %bb111
bb111:
  %t331 = load i64, ptr %l178, !tbaa !24
  store i64 %t331, ptr %rv
  br label %ret
bb112:
  %t332 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t334 = trunc i64 16 to i32
  %t335 = icmp eq i32 %t332, %t334
  br i1 %t335, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb122
bb115:
  %t337 = load i1, ptr %l7, !tbaa !21
  br i1 %t337, label %bb116, label %bb117
bb116:
  %t339 = load i64, ptr %l8, !tbaa !24
  %t340 = load i64, ptr %l9, !tbaa !24
  %t343 = icmp sle i64 %t339, %t340
  store i1 %t343, ptr %l182, !tbaa !21
  br label %bb118
bb117:
  %t345 = load i64, ptr %l10, !tbaa !65
  %t346 = load i64, ptr %l11, !tbaa !65
  %t349 = icmp ule i64 %t345, %t346
  store i1 %t349, ptr %l182, !tbaa !21
  br label %bb118
bb118:
  %t351 = load i1, ptr %l182, !tbaa !21
  br i1 %t351, label %bb119, label %bb120
bb119:
  store i64 1, ptr %l189, !tbaa !24
  br label %bb121
bb120:
  store i64 0, ptr %l189, !tbaa !24
  br label %bb121
bb121:
  %t352 = load i64, ptr %l189, !tbaa !24
  store i64 %t352, ptr %rv
  br label %ret
bb122:
  %t353 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t355 = trunc i64 17 to i32
  %t356 = icmp eq i32 %t353, %t355
  br i1 %t356, label %bb123, label %bb124
bb123:
  br label %bb125
bb124:
  br label %bb132
bb125:
  %t358 = load i1, ptr %l7, !tbaa !21
  br i1 %t358, label %bb126, label %bb127
bb126:
  %t360 = load i64, ptr %l8, !tbaa !24
  %t361 = load i64, ptr %l9, !tbaa !24
  %t364 = icmp sgt i64 %t360, %t361
  store i1 %t364, ptr %l193, !tbaa !21
  br label %bb128
bb127:
  %t366 = load i64, ptr %l10, !tbaa !65
  %t367 = load i64, ptr %l11, !tbaa !65
  %t370 = icmp ugt i64 %t366, %t367
  store i1 %t370, ptr %l193, !tbaa !21
  br label %bb128
bb128:
  %t372 = load i1, ptr %l193, !tbaa !21
  br i1 %t372, label %bb129, label %bb130
bb129:
  store i64 1, ptr %l200, !tbaa !24
  br label %bb131
bb130:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb131
bb131:
  %t373 = load i64, ptr %l200, !tbaa !24
  store i64 %t373, ptr %rv
  br label %ret
bb132:
  %t374 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t376 = trunc i64 18 to i32
  %t377 = icmp eq i32 %t374, %t376
  br i1 %t377, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb142
bb135:
  %t379 = load i1, ptr %l7, !tbaa !21
  br i1 %t379, label %bb136, label %bb137
bb136:
  %t381 = load i64, ptr %l8, !tbaa !24
  %t382 = load i64, ptr %l9, !tbaa !24
  %t385 = icmp sge i64 %t381, %t382
  store i1 %t385, ptr %l204, !tbaa !21
  br label %bb138
bb137:
  %t387 = load i64, ptr %l10, !tbaa !65
  %t388 = load i64, ptr %l11, !tbaa !65
  %t391 = icmp uge i64 %t387, %t388
  store i1 %t391, ptr %l204, !tbaa !21
  br label %bb138
bb138:
  %t393 = load i1, ptr %l204, !tbaa !21
  br i1 %t393, label %bb139, label %bb140
bb139:
  store i64 1, ptr %l211, !tbaa !24
  br label %bb141
bb140:
  store i64 0, ptr %l211, !tbaa !24
  br label %bb141
bb141:
  %t394 = load i64, ptr %l211, !tbaa !24
  store i64 %t394, ptr %rv
  br label %ret
bb142:
  br i1 true, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb147
bb145:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t395)
  store i64 %t397, ptr %l213
  br label %bb146
bb146:
  %t398 = load i64, ptr %l213, !tbaa !24
  store i64 %t398, ptr %rv
  br label %ret
bb147:
  call void @__olang_check_failed(ptr @olang_loc_cc4a112acbde7ca1_19be4f90a96d28f5)
  unreachable
bb148:
  %t399 = load i64, ptr %l13, !tbaa !24
  store i64 %t399, ptr %l214, !tbaa !24
  %t400 = load i64, ptr %l6, !tbaa !24
  %t402 = call i64 @compiler_2feval_2ebmask(i64 %t400)
  store i64 %t402, ptr %l216
  br label %bb149
bb149:
  %t403 = load i64, ptr %l214, !tbaa !24
  %t404 = load i64, ptr %l216, !tbaa !24
  %t405 = and i64 %t403, %t404
  store i64 %t405, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l14 = alloca i64
  %l16 = alloca i1
  %l21 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l28 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load i32, ptr %l2, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t11 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %t5
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 1
  store i64 %t8, ptr %t14, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 58
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l10, !tbaa !27
  %t19 = load i64, ptr %l1, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/eval:frame", ptr %t22, i64 %t19
  %t24 = getelementptr %"compiler/eval:frame", ptr %t23, i32 0, i32 2
  store i64 0, ptr %t24, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 88
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l14
  br label %bb1
bb1:
  %t30 = load i64, ptr %l14, !tbaa !24
  %t31 = icmp sgt i64 %t30, 0
  br i1 %t31, label %bb2, label %bb3
bb2:
  %t33 = load i32, ptr %l2, !tbaa !23
  store i32 %t33, ptr %l3, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 25
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 58
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l21, !tbaa !27
  %t42 = load i64, ptr %l1, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr %"compiler/eval:frame", ptr %t45, i64 %t42
  %t47 = getelementptr %"compiler/eval:frame", ptr %t46, i32 0, i32 0
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t37, i64 %t48)
  store ptr %t51, ptr %l24
  br label %bb4
bb3:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb6
bb4:
  %t52 = load ptr, ptr %l24, !tbaa !29
  %t54 = getelementptr %"compiler/mir:Fn", ptr %t52, i32 0, i32 22
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eHas_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t58, ptr %l28
  br label %bb5
bb5:
  %t59 = load i1, ptr %l28, !tbaa !21
  store i1 %t59, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t60 = load i1, ptr %l16, !tbaa !21
  br i1 %t60, label %bb7, label %bb8
bb7:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t63)
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 90
  store i64 0, ptr %t67, !tbaa !24
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekept(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"compiler/eval:Ptr"
  %l18 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call %"compiler/eval:Ptr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eAt_3ccompiler_2feval_3aPtr_3e(ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/eval:Ptr" %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load %"compiler/eval:Ptr", ptr %l14
  store %"compiler/eval:Ptr" %t18, ptr %l5
  %t19 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t21 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = icmp eq i64 %t20, %t22
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  %t33 = icmp eq i64 %t28, %t30
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l18, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekindWidth(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i8
  %l5 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = and i8 %a1, 127
  store i8 %t3, ptr %l2, !tbaa !22
  %t5 = load i8, ptr %l2, !tbaa !22
  %t7 = icmp eq i8 %t5, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t9 = load i8, ptr %l2, !tbaa !22
  %t11 = icmp eq i8 %t9, 5
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i64 1, ptr %l5, !tbaa !24
  br label %bb29
bb6:
  %t13 = load i8, ptr %l2, !tbaa !22
  %t15 = icmp eq i8 %t13, 2
  br i1 %t15, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  %t17 = load i8, ptr %l2, !tbaa !22
  %t19 = icmp eq i8 %t17, 6
  br i1 %t19, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t21 = load i8, ptr %l2, !tbaa !22
  %t23 = icmp eq i8 %t21, 9
  br i1 %t23, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t25 = load i8, ptr %l2, !tbaa !22
  %t27 = icmp eq i8 %t25, 10
  br i1 %t27, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 2, ptr %l5, !tbaa !24
  br label %bb29
bb16:
  %t29 = load i8, ptr %l2, !tbaa !22
  %t31 = icmp eq i8 %t29, 3
  br i1 %t31, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  %t33 = load i8, ptr %l2, !tbaa !22
  %t35 = icmp eq i8 %t33, 7
  br i1 %t35, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  %t37 = load i8, ptr %l2, !tbaa !22
  %t39 = icmp eq i8 %t37, 11
  br i1 %t39, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i64 4, ptr %l5, !tbaa !24
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i64 8, ptr %l5, !tbaa !24
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_57883a0fca4ce879_b5ee1d89385345fd)
  unreachable
bb29:
  %t41 = load i64, ptr %l5, !tbaa !24
  store i64 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i64
  %l27 = alloca i32
  %l30 = alloca ptr
  %l33 = alloca i32
  %l36 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l49 = alloca i1
  %l54 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i32
  %l61 = alloca i64
  %s4 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t6, i32 %t7)
  store i64 %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load i64, ptr %l13, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  %t16 = icmp eq i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr @G_2ecompiler_2ftypes_2eNotLaidOut, !tbaa !24
  %t23 = icmp ne i64 %t19, %t20
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  %t28 = load i64, ptr @G_2ecompiler_2ftypes_2eLayingOut, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t26, i32 %t27, i64 %t28)
  br label %bb8
bb8:
  store i1 true, ptr %l4, !tbaa !21
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l27
  br label %bb9
bb9:
  %t37 = load i32, ptr %l27, !range !{i32 0, i32 33}
  %t39 = trunc i64 20 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l30, !tbaa !29
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l33
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t48 = load ptr, ptr %l30, !tbaa !29
  %t49 = load i32, ptr %l33, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayRepr(ptr %v0, ptr %t48, i32 %t49)
  br label %bb13
bb13:
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s4, ptr %t50, i32 %t51)
  store { i64, ptr } %t54, ptr %l36
  br label %bb15
bb15:
  %t55 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = mul i64 %t56, 4
  %t59 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t75 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t75, ptr %l44, !tbaa !27
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t87 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t83, i32 %t81)
  store i1 %t87, ptr %l49
  br label %bb20
bb20:
  %t88 = load i1, ptr %l49, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb21, label %bb22
bb21:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb16
bb25:
  call void @__olang_scope_close(ptr %s4)
  %t95 = load i1, ptr %l4, !tbaa !21
  br i1 %t95, label %bb26, label %bb27
bb26:
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t98 = load i32, ptr %l1, !tbaa !23
  %t101 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l57
  br label %bb28
bb27:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb29
bb28:
  %t102 = load i1, ptr %l57, !tbaa !21
  store i1 %t102, ptr %l54, !tbaa !21
  br label %bb29
bb29:
  %t103 = load i1, ptr %l54, !tbaa !21
  store i1 %t103, ptr %l4, !tbaa !21
  %t104 = load ptr, ptr %l2, !tbaa !29
  store ptr %t104, ptr %l58, !tbaa !29
  %t105 = load i32, ptr %l1, !tbaa !23
  store i32 %t105, ptr %l59, !tbaa !23
  %t106 = load i1, ptr %l4, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  %t108 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  store i64 %t108, ptr %l61, !tbaa !24
  br label %bb32
bb31:
  %t110 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  store i64 %t110, ptr %l61, !tbaa !24
  br label %bb32
bb32:
  %t112 = load ptr, ptr %l58, !tbaa !29
  %t113 = load i32, ptr %l59, !tbaa !23
  %t114 = load i64, ptr %l61, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t112, i32 %t113, i64 %t114)
  br label %bb33
bb33:
  %t115 = load i1, ptr %l4, !tbaa !21
  store i1 %t115, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elenOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i32
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i64
  %l28 = alloca ptr
  %l32 = alloca %"compiler/eval:Ptr"
  %l33 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a3)
  store i32 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l5, !tbaa !23
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load i32, ptr %l5, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l13
  br label %bb2
bb2:
  %t17 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l4, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l19
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = load i32, ptr %l19, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l20
  br label %bb6
bb6:
  %t31 = load i32, ptr %l20, !tbaa !23
  store i32 %t31, ptr %l5, !tbaa !23
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t33 = load i32, ptr %l5, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l23
  br label %bb8
bb8:
  %t37 = load i32, ptr %l23, !tbaa !23
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t40, i32 %t41)
  store i64 %t44, ptr %l27
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %rv
  br label %ret
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t53 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t47, i64 %a1, { i64, [4 x i64] } %a2, i64 1)
  store %"compiler/eval:Ptr" %t53, ptr %l32
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l28, !tbaa !29
  %t55 = load %"compiler/eval:Ptr", ptr %l32
  %t56 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t54, %"compiler/eval:Ptr" %t55, i64 8)
  store i64 %t56, ptr %l33
  br label %bb14
bb14:
  %t57 = load i64, ptr %l33, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:alloc"
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l27 = alloca i1
  %l32 = alloca ptr
  %l34 = alloca %"compiler/eval:Ptr"
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l45 = alloca i1
  %l48 = alloca i64
  %l51 = alloca i1
  %l55 = alloca ptr
  %l57 = alloca %"compiler/eval:Ptr"
  %l60 = alloca i64
  %l62 = alloca i1
  %l64 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i1
  %l76 = alloca i1
  %l80 = alloca %"compiler/eval:global"
  %l83 = alloca ptr
  %l85 = alloca %"compiler/eval:Ptr"
  %l88 = alloca i64
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 60
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l9, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 58
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l11, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %a1
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 3
  %t15 = load i64, ptr %t14, !tbaa !24
  %t19 = add i64 %t15, %a2
  %t21 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i64, ptr %t22, i64 %t19
  %t24 = load i64, ptr %t23, !tbaa !34
  store i64 %t24, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp eq i64 %t26, 0
  br i1 %t28, label %bb1, label %bb2
bb1:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t32 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t32, ptr %t30, { i64, ptr } %t31)
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 -1, ptr %rv
  br label %ret
bb4:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t40 = and i64 %t36, %t37
  store i64 %t40, ptr %l6, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 22
  %t45 = load i1, ptr %t44, !tbaa !21
  br i1 %t45, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb7
bb6:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 50
  %t51 = load i64, ptr %t50, !tbaa !24
  %t54 = icmp sge i64 %t47, %t51
  store i1 %t54, ptr %l27, !tbaa !21
  br label %bb7
bb7:
  %t56 = load i1, ptr %l27, !tbaa !21
  br i1 %t56, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l32, !tbaa !29
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t58, i64 0)
  store %"compiler/eval:Ptr" %t60, ptr %l34
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i1, ptr %l4, !tbaa !21
  %t63 = load ptr, ptr %l32, !tbaa !29
  %t64 = load %"compiler/eval:Ptr", ptr %l34
  %t67 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t63, %"compiler/eval:Ptr" %t64, i64 %t61, i1 %t62)
  store i64 %t67, ptr %l37
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  %t68 = load i64, ptr %l37, !tbaa !24
  store i64 %t68, ptr %rv
  br label %ret
bb12:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 49
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l39, !tbaa !27
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr %"compiler/eval:alloc", ptr %t76, i64 %t73
  %t78 = load %"compiler/eval:alloc", ptr %t77
  store %"compiler/eval:alloc" %t78, ptr %l7
  %t80 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 4
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t85 = icmp eq i64 %t81, %t82
  br i1 %t85, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb15
bb14:
  %t87 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 3
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load i64, ptr %l5, !tbaa !24
  %t90 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t90, ptr %l48, !tbaa !24
  %t92 = load i64, ptr %l48, !tbaa !24
  %t93 = load i64, ptr %l48, !tbaa !24
  %t94 = ashr i64 %t89, %t93
  %t97 = icmp ne i64 %t88, %t94
  store i1 %t97, ptr %l45, !tbaa !21
  br label %bb15
bb15:
  %t99 = load i1, ptr %l45, !tbaa !21
  br i1 %t99, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb18
bb17:
  %t100 = load i64, ptr %l3, !tbaa !24
  %t101 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 1
  %t102 = load i64, ptr %t101, !tbaa !24
  %t105 = icmp sgt i64 %t100, %t102
  store i1 %t105, ptr %l51, !tbaa !21
  br label %bb18
bb18:
  %t107 = load i1, ptr %l51, !tbaa !21
  br i1 %t107, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l55, !tbaa !29
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t109, i64 0)
  store %"compiler/eval:Ptr" %t111, ptr %l57
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t112 = load i64, ptr %l3, !tbaa !24
  %t113 = load i1, ptr %l4, !tbaa !21
  %t114 = load ptr, ptr %l55, !tbaa !29
  %t115 = load %"compiler/eval:Ptr", ptr %l57
  %t118 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t114, %"compiler/eval:Ptr" %t115, i64 %t112, i1 %t113)
  store i64 %t118, ptr %l60
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  %t119 = load i64, ptr %l60, !tbaa !24
  store i64 %t119, ptr %rv
  br label %ret
bb23:
  %t120 = load i1, ptr %l4, !tbaa !21
  br i1 %t120, label %bb24, label %bb25
bb24:
  %t122 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 13
  %t123 = load i1, ptr %t122, !tbaa !21
  br i1 %t123, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb39
bb26:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb38
bb27:
  %t125 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 8
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = icmp sge i64 %t126, 0
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 8
  %t131 = load i64, ptr %t130, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 73
  %t135 = load i64, ptr %t134, !tbaa !24
  %t138 = icmp ne i64 %t131, %t135
  store i1 %t138, ptr %l67, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb30
bb30:
  %t140 = load i1, ptr %l67, !tbaa !21
  br i1 %t140, label %bb31, label %bb32
bb31:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 1
  %t144 = load i32, ptr %t143, !range !{i32 0, i32 2}
  %t146 = trunc i64 0 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb33, label %bb34
bb32:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb37
bb33:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb36
bb34:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/eval:Machine", ptr %t149, i32 0, i32 42
  %t152 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 8
  %t153 = load i64, ptr %t152, !tbaa !24
  %t156 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t151, i64 %t153)
  store %"compiler/eval:global" %t156, ptr %l80
  br label %bb35
bb35:
  %t157 = getelementptr %"compiler/eval:global", ptr %l80, i32 0, i32 1
  %t158 = load i1, ptr %t157, !tbaa !21
  %t160 = xor i1 %t158, true
  store i1 %t160, ptr %l76, !tbaa !21
  br label %bb36
bb36:
  %t162 = load i1, ptr %l76, !tbaa !21
  store i1 %t162, ptr %l72, !tbaa !21
  br label %bb37
bb37:
  %t163 = load i1, ptr %l72, !tbaa !21
  store i1 %t163, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t164 = load i1, ptr %l64, !tbaa !21
  store i1 %t164, ptr %l62, !tbaa !21
  br label %bb39
bb39:
  %t165 = load i1, ptr %l62, !tbaa !21
  br i1 %t165, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s4
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l83, !tbaa !29
  %t167 = load i64, ptr %l5, !tbaa !24
  %t169 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t167, i64 0)
  store %"compiler/eval:Ptr" %t169, ptr %l85
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t170 = load i64, ptr %l3, !tbaa !24
  %t171 = load i1, ptr %l4, !tbaa !21
  %t172 = load ptr, ptr %l83, !tbaa !29
  %t173 = load %"compiler/eval:Ptr", ptr %l85
  %t176 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t172, %"compiler/eval:Ptr" %t173, i64 %t170, i1 %t171)
  store i64 %t176, ptr %l88
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s4)
  %t177 = load i64, ptr %l88, !tbaa !24
  store i64 %t177, ptr %rv
  br label %ret
bb44:
  %t178 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  store i64 %t179, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = mul i64 8, %t5
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = shl i64 1, %t9
  %t12 = sub i64 %t10, 1
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t14 = load i64, ptr %l4, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewRegSlot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/eval:reg"
  %l6 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 54
  store ptr %t3, ptr %l2, !tbaa !29
  %t4 = call %"compiler/eval:reg" @compiler_2feval_3areg_2ector(ptr %s0)
  store %"compiler/eval:reg" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load %"compiler/eval:reg", ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2ePush_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t5, %"compiler/eval:reg" %t6)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 54
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eLen_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l6
  br label %bb3
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = sub i64 %t12, 1
  call void @__olang_scope_close(ptr %s0)
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewSlot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"compiler/eval:alloc"
  %l24 = alloca %"compiler/eval:alloc"
  %l28 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l64 = alloca ptr
  %rv = alloca i64
  %t48 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 50
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 49
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp sge i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 49
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l1, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l16, !tbaa !29
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l17, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e49
  br i1 %t22, label %bb3, label %bb4
bb2:
  br label %bb26
bb3:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l17, !tbaa !24
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = mul i64 2, %t28
  store i64 %t30, ptr %l21, !tbaa !24
  store %"compiler/eval:alloc" zeroinitializer, ptr %l22
  %t31 = load i64, ptr %l21, !tbaa !24
  %t32 = icmp sgt i64 %t31, 0
  br i1 %t32, label %bb5, label %bb6
bb5:
  %t34 = call %"compiler/eval:alloc" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aalloc()
  store %"compiler/eval:alloc" %t34, ptr %l24
  br label %bb7
bb6:
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  br i1 %t36, label %bb8, label %bb9
bb7:
  %t38 = load %"compiler/eval:alloc", ptr %l24
  store %"compiler/eval:alloc" %t38, ptr %l22
  br label %bb6
bb8:
  %t39 = load i64, ptr %l21, !tbaa !24
  %t40 = icmp sle i64 %t39, 72057594037927935
  br i1 %t40, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1aa148087c58143e_12c49f79ebc6dae2)
  unreachable
bb10:
  %t42 = load i64, ptr %l21, !tbaa !24
  %t43 = mul i64 %t42, 128
  %t44 = load i64, ptr %l17
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  %t47 = load %"compiler/eval:alloc", ptr %l22
  store i64 0, ptr %t48
  br label %fill.49
fill.49:
  %t52 = load i64, ptr %t48
  %t53 = icmp slt i64 %t52, %t42
  br i1 %t53, label %fillb.50, label %filld.51
fillb.50:
  %t54 = getelementptr %"compiler/eval:alloc", ptr %t46, i64 %t52
  store %"compiler/eval:alloc" %t47, ptr %t54
  %t55 = add i64 %t52, 1
  store i64 %t55, ptr %t48
  br label %fill.49
filld.51:
  %t56 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t46, 1
  %t58 = load ptr, ptr %l16, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 49
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l28, !tbaa !27
  %t62 = load ptr, ptr %l16, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 49
  store { i64, ptr } %t57, ptr %t63, !tbaa !27
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e49
  br i1 %t64, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1aa148087c58143e_12c49f79ebc6dae2)
  unreachable
bb12:
  %t66 = load { i64, ptr }, ptr %l28
  %t67 = extractvalue { i64, ptr } %t66, 1
  call void @__olang_region_release(ptr %t67)
  store { i64, ptr } zeroinitializer, ptr %l28
  br label %bb13
bb13:
  store i64 0, ptr %l2, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 50
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i64, ptr %l2, !tbaa !24
  %t77 = icmp sgt i64 %t73, %t74
  br i1 %t77, label %bb14, label %bb15
bb14:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb19
bb16:
  %t83 = load i64, ptr %l3, !tbaa !24
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = sub i64 %t83, %t84
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = sub i64 %t91, 1
  %t94 = load i64, ptr %l4, !tbaa !24
  %t97 = sdiv i64 %t93, %t94
  store i64 %t97, ptr %l38, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb18
bb18:
  %t99 = load i64, ptr %l38, !tbaa !24
  store i64 %t99, ptr %l35, !tbaa !24
  br label %bb19
bb19:
  %t100 = load i64, ptr %l35, !tbaa !24
  store i64 %t100, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb20
bb20:
  %t101 = load i64, ptr %l6, !tbaa !24
  %t102 = load i64, ptr %l5, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  br label %bb23
bb23:
  %t109 = load i64, ptr %l2, !tbaa !24
  %t110 = load i64, ptr %l6, !tbaa !24
  %t111 = load i64, ptr %l4, !tbaa !24
  %t114 = mul i64 %t110, %t111
  %t117 = add i64 %t109, %t114
  store i64 %t117, ptr %l7, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 49
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l57, !tbaa !27
  %t123 = load i64, ptr %l7, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t124, ptr %l59, !tbaa !27
  %t125 = load i64, ptr %l7, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr %"compiler/eval:alloc", ptr %t128, i64 %t125
  %t130 = load %"compiler/eval:alloc", ptr %t129
  %t133 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr %"compiler/eval:alloc", ptr %t134, i64 %t123
  store %"compiler/eval:alloc" %t130, ptr %t135
  br label %bb24
bb24:
  %t136 = load i64, ptr %l6, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l6, !tbaa !24
  br label %bb20
bb25:
  br label %bb26
bb26:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l64, !tbaa !29
  %t141 = load ptr, ptr %l64, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 50
  %t143 = load i64, ptr %t142, !tbaa !24
  %t145 = add i64 %t143, 1
  %t147 = load ptr, ptr %l64, !tbaa !29
  %t148 = getelementptr %"compiler/eval:Machine", ptr %t147, i32 0, i32 50
  store i64 %t145, ptr %t148, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/eval:Machine", ptr %t149, i32 0, i32 50
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = sub i64 %t152, 1
  store i64 %t154, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca i1
  %l11 = alloca i1
  %rv = alloca i1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l3
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t12 = load %"compiler/mir:Lvalue", ptr %l3
  %t16 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %t12)
  store i1 %t16, ptr %l11
  br label %bb4
bb4:
  %t17 = load i1, ptr %l11, !tbaa !21
  store i1 %t17, ptr %l4, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_ad3bfe70499dbe21_2daaaf2a9e405db5)
  unreachable
bb10:
  %t18 = load i1, ptr %l4, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eownParams(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca %"compiler/eval:Ptr"
  %l17 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l46 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l57 = alloca i32
  %l61 = alloca %"compiler/eval:Ptr"
  %l64 = alloca i64
  %l67 = alloca i1
  %l70 = alloca ptr
  %l74 = alloca %"compiler/eval:Ptr"
  %l75 = alloca %"compiler/eval:Ptr"
  %l76 = alloca i64
  %l77 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l86 = alloca i32
  %l87 = alloca i64
  %l94 = alloca %"compiler/eval:Ptr"
  %l99 = alloca ptr
  %l103 = alloca %"compiler/eval:Ptr"
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 26
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l17, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:cfn", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i32 0, i32 12
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb1, label %bb2
bb1:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb3:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l28, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb5
bb5:
  %t43 = load i64, ptr %l28, !tbaa !24
  store i64 %t43, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb9:
  br label %bb10
bb10:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t63, ptr %l46, !tbaa !27
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i1, ptr %t67, i64 %t64
  %t69 = load i1, ptr %t68, !tbaa !31
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb12:
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 25
  %t76 = load i64, ptr %l2, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l53
  br label %bb14
bb14:
  %t80 = load ptr, ptr %l53, !tbaa !29
  %t82 = getelementptr %"compiler/mir:Fn", ptr %t80, i32 0, i32 4
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t82, i64 %t83)
  store i32 %t86, ptr %l57
  br label %bb15
bb15:
  %t87 = load i32, ptr %l57, !tbaa !23
  store i32 %t87, ptr %l10, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l10, !tbaa !23
  %t94 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t88, i64 %a1, i32 %t90)
  store %"compiler/eval:Ptr" %t94, ptr %l61
  br label %bb16
bb16:
  %t95 = load %"compiler/eval:Ptr", ptr %l61
  store %"compiler/eval:Ptr" %t95, ptr %l11
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/eval:Ptr", ptr %l11
  %t100 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t96, %"compiler/eval:Ptr" %t97, i64 8)
  store i64 %t100, ptr %l64
  br label %bb17
bb17:
  %t101 = load i64, ptr %l64, !tbaa !24
  store i64 %t101, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l12, !tbaa !24
  %t104 = icmp sle i64 %t102, 0
  br i1 %t104, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb20
bb19:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/eval:Machine", ptr %t106, i32 0, i32 22
  %t109 = load i1, ptr %t108, !tbaa !21
  store i1 %t109, ptr %l67, !tbaa !21
  br label %bb20
bb20:
  %t111 = load i1, ptr %l67, !tbaa !21
  br i1 %t111, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb22:
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l70, !tbaa !29
  %t113 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = add i64 %t116, 8
  %t121 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t114, i64 %t118)
  store %"compiler/eval:Ptr" %t121, ptr %l74
  br label %bb24
bb24:
  %t122 = load ptr, ptr %l70, !tbaa !29
  %t123 = load %"compiler/eval:Ptr", ptr %l74
  %t124 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t122, %"compiler/eval:Ptr" %t123)
  store %"compiler/eval:Ptr" %t124, ptr %l75
  br label %bb25
bb25:
  %t125 = load %"compiler/eval:Ptr", ptr %l75
  store %"compiler/eval:Ptr" %t125, ptr %l13
  %t126 = load i64, ptr %l12, !tbaa !24
  store i64 %t126, ptr %l76, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l77, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t129, i32 0, i32 26
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l80, !tbaa !27
  %t133 = load i64, ptr %l2, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr %"compiler/eval:cfn", ptr %t136, i64 %t133
  %t138 = getelementptr %"compiler/eval:cfn", ptr %t137, i32 0, i32 1
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l82, !tbaa !27
  %t140 = load i32, ptr %l10, !tbaa !23
  %t142 = sext i32 %t140 to i64
  %t144 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr %"compiler/mir:Local", ptr %t145, i64 %t142
  %t147 = getelementptr %"compiler/mir:Local", ptr %t146, i32 0, i32 2
  %t148 = load i32, ptr %t147, !tbaa !23
  %t151 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t128, i32 %t148)
  store i32 %t151, ptr %l86
  br label %bb26
bb26:
  %t152 = load ptr, ptr %l77, !tbaa !29
  %t153 = load i32, ptr %l86, !tbaa !23
  %t154 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t152, i32 %t153)
  store i64 %t154, ptr %l87
  br label %bb27
bb27:
  %t155 = load i64, ptr %l76, !tbaa !24
  %t156 = load i64, ptr %l87, !tbaa !24
  %t157 = mul i64 %t155, %t156
  store i64 %t157, ptr %l14, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i64, ptr %l14, !tbaa !24
  %t161 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 70
  %t165 = load i64, ptr %t164, !tbaa !24
  %t170 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t159, i64 %t160, i64 %t161, i64 %t165)
  store %"compiler/eval:Ptr" %t170, ptr %l94
  br label %bb28
bb28:
  %t171 = load %"compiler/eval:Ptr", ptr %l94
  store %"compiler/eval:Ptr" %t171, ptr %l15
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load %"compiler/eval:Ptr", ptr %l15
  %t174 = load %"compiler/eval:Ptr", ptr %l13
  %t175 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t172, %"compiler/eval:Ptr" %t173, %"compiler/eval:Ptr" %t174, i64 %t175)
  br label %bb29
bb29:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l99, !tbaa !29
  %t181 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t184 = load i64, ptr %t183, !tbaa !24
  %t186 = add i64 %t184, 8
  %t189 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t182, i64 %t186)
  store %"compiler/eval:Ptr" %t189, ptr %l103
  br label %bb30
bb30:
  %t190 = load %"compiler/eval:Ptr", ptr %l15
  %t191 = load ptr, ptr %l99, !tbaa !29
  %t192 = load %"compiler/eval:Ptr", ptr %l103
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t191, %"compiler/eval:Ptr" %t192, %"compiler/eval:Ptr" %t190)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb32:
  %t194 = load i64, ptr %l8, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l8, !tbaa !24
  br label %bb7
bb33:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca { i64, ptr }
  %l11 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l26 = alloca { i64, ptr }
  %l29 = alloca i1
  %l34 = alloca i32
  %l35 = alloca { i64, ptr }
  %rv = alloca i32
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l11, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l14
  br label %bb2
bb2:
  %t17 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t19 = trunc i64 24 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t23 = load i32, ptr %l4, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l20
  br label %bb5
bb4:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t28 = load i32, ptr %l4, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l23
  br label %bb6
bb5:
  %t32 = load i32, ptr %l20, !tbaa !23
  store i32 %t32, ptr %l17, !tbaa !23
  br label %bb7
bb6:
  %t33 = load i32, ptr %l23, !tbaa !23
  store i32 %t33, ptr %l17, !tbaa !23
  br label %bb7
bb7:
  %t34 = load i32, ptr %l17, !tbaa !23
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t35, i32 %t34)
  store { i64, ptr } %t39, ptr %l26
  br label %bb8
bb8:
  %t40 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t40, ptr %l6, !tbaa !27
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = icmp sge i64 %t41, 0
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t51 = icmp slt i64 %t45, %t48
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb11
bb11:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t54, ptr %l35, !tbaa !27
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i32, ptr %t58, i64 %t55
  %t60 = load i32, ptr %t59, !tbaa !33
  store i32 %t60, ptr %l34, !tbaa !23
  br label %bb14
bb13:
  store i32 0, ptr %l34, !tbaa !23
  br label %bb14
bb14:
  %t62 = load i32, ptr %l34, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l20 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 59
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = sub i64 %t11, 1
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 59
  store i64 %t13, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 26
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l8, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 58
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l10, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 59
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/eval:frame", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/eval:frame", ptr %t32, i32 0, i32 0
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:cfn", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:cfn", ptr %t38, i32 0, i32 17
  %t40 = load i1, ptr %t39, !tbaa !21
  br i1 %t40, label %bb4, label %bb5
bb4:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l15, !tbaa !29
  %t43 = load ptr, ptr %l15, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 11
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = sub i64 %t45, 1
  %t49 = load ptr, ptr %l15, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 11
  store i64 %t47, ptr %t50, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 58
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l20, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 59
  %t59 = load i64, ptr %t58, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr %"compiler/eval:frame", ptr %t62, i64 %t59
  %t64 = getelementptr %"compiler/eval:frame", ptr %t63, i32 0, i32 3
  %t65 = load i64, ptr %t64, !tbaa !24
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t51, i32 0, i32 61
  store i64 %t65, ptr %t68, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 59
  %t73 = load i64, ptr %t72, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %t69, i64 %t73)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eprim(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca %"compiler/eval:Ptr"
  %l18 = alloca %"compiler/eval:Ptr"
  %l19 = alloca %"compiler/eval:Ptr"
  %l20 = alloca %"compiler/eval:Ptr"
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca %"compiler/eval:Ptr"
  %l28 = alloca %"compiler/eval:Ptr"
  %l29 = alloca i1
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca %"compiler/eval:Ptr"
  %l39 = alloca %"compiler/eval:Ptr"
  %l43 = alloca { i64, [4 x i64] }
  %l47 = alloca i32
  %l54 = alloca i64
  %l60 = alloca %"compiler/eval:Ptr"
  %l61 = alloca ptr
  %l62 = alloca i64
  %l66 = alloca { i64, [4 x i64] }
  %l67 = alloca %"compiler/eval:Ptr"
  %l70 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i64
  %l101 = alloca ptr
  %l107 = alloca %"compiler/eval:Ptr"
  %l108 = alloca %"compiler/eval:Ptr"
  %l109 = alloca ptr
  %l115 = alloca %"compiler/eval:Ptr"
  %l116 = alloca %"compiler/eval:Ptr"
  %l120 = alloca i1
  %l130 = alloca ptr
  %l134 = alloca %"compiler/eval:Ptr"
  %l136 = alloca i64
  %l137 = alloca ptr
  %l138 = alloca i64
  %l142 = alloca { i64, [4 x i64] }
  %l143 = alloca i64
  %l145 = alloca i64
  %l148 = alloca ptr
  %l152 = alloca i64
  %l155 = alloca i64
  %l158 = alloca ptr
  %l162 = alloca i64
  %l164 = alloca i64
  %l170 = alloca %"compiler/eval:Ptr"
  %l171 = alloca ptr
  %l175 = alloca %"compiler/eval:Ptr"
  %l176 = alloca %"compiler/eval:Ptr"
  %l179 = alloca i1
  %l185 = alloca %"compiler/eval:Ptr"
  %l186 = alloca i64
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca i64
  %l193 = alloca { i64, [4 x i64] }
  %l194 = alloca i32
  %l195 = alloca %"compiler/eval:Ptr"
  %l198 = alloca i64
  %l201 = alloca ptr
  %l202 = alloca i64
  %l206 = alloca %"compiler/eval:Ptr"
  %l224 = alloca i64
  %l239 = alloca i1
  %l242 = alloca ptr
  %l243 = alloca i64
  %l247 = alloca { i64, [4 x i64] }
  %l248 = alloca i64
  %l252 = alloca i64
  %l256 = alloca i32
  %l257 = alloca i64
  %l260 = alloca i64
  %l261 = alloca i64
  %l263 = alloca i64
  %l266 = alloca i64
  %l268 = alloca i64
  %l271 = alloca i64
  %l275 = alloca i64
  %l278 = alloca i1
  %l281 = alloca i1
  %l289 = alloca i64
  %l290 = alloca ptr
  %l291 = alloca i64
  %l295 = alloca { i64, [4 x i64] }
  %l296 = alloca i32
  %l297 = alloca ptr
  %l298 = alloca i64
  %l302 = alloca { i64, [4 x i64] }
  %l303 = alloca i64
  %l310 = alloca i1
  %l314 = alloca i1
  %l318 = alloca i1
  %l329 = alloca i64
  %l332 = alloca i1
  %l338 = alloca %"compiler/eval:Ptr"
  %l339 = alloca ptr
  %l340 = alloca i64
  %l344 = alloca { i64, [4 x i64] }
  %l345 = alloca %"compiler/eval:Ptr"
  %l348 = alloca i64
  %l355 = alloca i64
  %l358 = alloca i64
  %l381 = alloca i64
  %l388 = alloca %"compiler/eval:Ptr"
  %l389 = alloca ptr
  %l395 = alloca %"compiler/eval:Ptr"
  %l396 = alloca %"compiler/eval:Ptr"
  %l397 = alloca ptr
  %l403 = alloca %"compiler/eval:Ptr"
  %l405 = alloca i64
  %l406 = alloca %"compiler/eval:Ptr"
  %l409 = alloca %"compiler/eval:Ptr"
  %l410 = alloca ptr
  %l416 = alloca %"compiler/eval:Ptr"
  %l417 = alloca %"compiler/eval:Ptr"
  %l418 = alloca ptr
  %l424 = alloca %"compiler/eval:Ptr"
  %l426 = alloca i64
  %l427 = alloca %"compiler/eval:Ptr"
  %l431 = alloca i1
  %l441 = alloca i64
  %l443 = alloca i64
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load %"compiler/mir:Range", ptr %l4
  %t7 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Range" %t3, i64 0)
  store { i64, [4 x i64] } %t7, ptr %l43
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l43
  store { i64, [4 x i64] } %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l5
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l47
  br label %bb2
bb2:
  %t16 = load i32, ptr %l47, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t19 = trunc i64 22 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t24 = load { i64, [4 x i64] }, ptr %l5
  %t25 = load i32, ptr %l6, !tbaa !23
  %t30 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elenOf(ptr %v0, ptr %t22, i64 %t23, { i64, [4 x i64] } %t24, i32 %t25)
  store i64 %t30, ptr %l54
  br label %bb6
bb6:
  %t31 = load i64, ptr %l54, !tbaa !24
  store i64 %t31, ptr %rv
  br label %ret
bb7:
  %t32 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t34 = trunc i64 19 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb40
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t39 = load { i64, [4 x i64] }, ptr %l5
  %t43 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t37, i64 %t38, { i64, [4 x i64] } %t39, i64 1)
  store %"compiler/eval:Ptr" %t43, ptr %l60
  br label %bb11
bb11:
  %t44 = load %"compiler/eval:Ptr", ptr %l60
  store %"compiler/eval:Ptr" %t44, ptr %l7
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l61, !tbaa !29
  %t46 = load i64, ptr %l1, !tbaa !24
  store i64 %t46, ptr %l62, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load %"compiler/mir:Range", ptr %l4
  %t53 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t47, i64 %t48, %"compiler/mir:Range" %t49, i64 1)
  store { i64, [4 x i64] } %t53, ptr %l66
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l61, !tbaa !29
  %t55 = load i64, ptr %l62, !tbaa !24
  %t56 = load { i64, [4 x i64] }, ptr %l66
  %t57 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t54, i64 %t55, { i64, [4 x i64] } %t56, i64 2)
  store %"compiler/eval:Ptr" %t57, ptr %l67
  br label %bb13
bb13:
  %t58 = load %"compiler/eval:Ptr", ptr %l67
  store %"compiler/eval:Ptr" %t58, ptr %l8
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l6, !tbaa !23
  %t63 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t63, ptr %l70
  br label %bb14
bb14:
  %t64 = load i64, ptr %l70, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 22
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb15, label %bb16
bb15:
  store i64 0, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t73 = add i64 %t71, 7
  %t75 = sdiv i64 %t73, 8
  store i64 %t75, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t77 = load i64, ptr %l11, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t83 = load i64, ptr %l12, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb23
bb20:
  %t87 = load i64, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l12, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l83, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb22
bb22:
  %t103 = load i64, ptr %l83, !tbaa !24
  store i64 %t103, ptr %l80, !tbaa !24
  br label %bb23
bb23:
  %t104 = load i64, ptr %l80, !tbaa !24
  store i64 %t104, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t105 = load i64, ptr %l14, !tbaa !24
  %t106 = load i64, ptr %l13, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb26:
  br label %bb27
bb27:
  %t113 = load i64, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l14, !tbaa !24
  %t115 = load i64, ptr %l12, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l15, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l101, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t125 = load i64, ptr %t124, !tbaa !24
  %t126 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 1
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load i64, ptr %l15, !tbaa !24
  %t130 = mul i64 8, %t128
  %t133 = add i64 %t127, %t130
  %t136 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t125, i64 %t133)
  store %"compiler/eval:Ptr" %t136, ptr %l107
  br label %bb28
bb28:
  %t137 = load ptr, ptr %l101, !tbaa !29
  %t138 = load %"compiler/eval:Ptr", ptr %l107
  %t139 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t137, %"compiler/eval:Ptr" %t138)
  store %"compiler/eval:Ptr" %t139, ptr %l108
  br label %bb29
bb29:
  %t140 = load %"compiler/eval:Ptr", ptr %l108
  store %"compiler/eval:Ptr" %t140, ptr %l16
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l109, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 0
  %t143 = load i64, ptr %t142, !tbaa !24
  %t144 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 1
  %t145 = load i64, ptr %t144, !tbaa !24
  %t146 = load i64, ptr %l15, !tbaa !24
  %t148 = mul i64 8, %t146
  %t151 = add i64 %t145, %t148
  %t154 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t143, i64 %t151)
  store %"compiler/eval:Ptr" %t154, ptr %l115
  br label %bb30
bb30:
  %t155 = load ptr, ptr %l109, !tbaa !29
  %t156 = load %"compiler/eval:Ptr", ptr %l115
  %t157 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t155, %"compiler/eval:Ptr" %t156)
  store %"compiler/eval:Ptr" %t157, ptr %l116
  br label %bb31
bb31:
  %t158 = load %"compiler/eval:Ptr", ptr %l116
  store %"compiler/eval:Ptr" %t158, ptr %l17
  %t159 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t160 = load i64, ptr %t159, !tbaa !24
  %t161 = getelementptr %"compiler/eval:Ptr", ptr %l17, i32 0, i32 0
  %t162 = load i64, ptr %t161, !tbaa !24
  %t165 = icmp ne i64 %t160, %t162
  br i1 %t165, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb34
bb33:
  %t167 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 1
  %t168 = load i64, ptr %t167, !tbaa !24
  %t169 = getelementptr %"compiler/eval:Ptr", ptr %l17, i32 0, i32 1
  %t170 = load i64, ptr %t169, !tbaa !24
  %t173 = icmp ne i64 %t168, %t170
  store i1 %t173, ptr %l120, !tbaa !21
  br label %bb34
bb34:
  %t175 = load i1, ptr %l120, !tbaa !21
  br i1 %t175, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s5)
  store i64 0, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb38:
  %t177 = load i64, ptr %l14, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l14, !tbaa !24
  br label %bb24
bb39:
  store i64 1, ptr %rv
  br label %ret
bb40:
  %t182 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t184 = trunc i64 23 to i32
  %t185 = icmp eq i32 %t182, %t184
  br i1 %t185, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb51
bb43:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l130, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i64, ptr %l1, !tbaa !24
  %t190 = load { i64, [4 x i64] }, ptr %l5
  %t194 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t188, i64 %t189, { i64, [4 x i64] } %t190, i64 1)
  store %"compiler/eval:Ptr" %t194, ptr %l134
  br label %bb44
bb44:
  %t195 = load i32, ptr %l6, !tbaa !23
  %t196 = load ptr, ptr %l130, !tbaa !29
  %t197 = load %"compiler/eval:Ptr", ptr %l134
  %t199 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %t196, %"compiler/eval:Ptr" %t197, i32 %t195)
  store i64 %t199, ptr %l136
  br label %bb45
bb45:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l137, !tbaa !29
  %t201 = load i64, ptr %l1, !tbaa !24
  store i64 %t201, ptr %l138, !tbaa !24
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i64, ptr %l1, !tbaa !24
  %t204 = load %"compiler/mir:Range", ptr %l4
  %t208 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t202, i64 %t203, %"compiler/mir:Range" %t204, i64 1)
  store { i64, [4 x i64] } %t208, ptr %l142
  br label %bb46
bb46:
  %t209 = load ptr, ptr %l137, !tbaa !29
  %t210 = load i64, ptr %l138, !tbaa !24
  %t211 = load { i64, [4 x i64] }, ptr %l142
  %t212 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t209, i64 %t210, { i64, [4 x i64] } %t211)
  store i64 %t212, ptr %l143
  br label %bb47
bb47:
  %t213 = load i64, ptr %l136, !tbaa !24
  %t214 = load i64, ptr %l143, !tbaa !24
  %t215 = icmp eq i64 %t213, %t214
  br i1 %t215, label %bb48, label %bb49
bb48:
  store i64 1, ptr %l145, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb50
bb50:
  %t217 = load i64, ptr %l145, !tbaa !24
  store i64 %t217, ptr %rv
  br label %ret
bb51:
  %t218 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t220 = trunc i64 20 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l148, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i64, ptr %l1, !tbaa !24
  %t226 = load { i64, [4 x i64] }, ptr %l5
  %t230 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t224, i64 %t225, { i64, [4 x i64] } %t226)
  store i64 %t230, ptr %l152
  br label %bb55
bb55:
  %t231 = load i32, ptr %l6, !tbaa !23
  %t233 = load ptr, ptr %l148, !tbaa !29
  %t234 = load i64, ptr %l152, !tbaa !24
  %t237 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econvert(ptr %v0, ptr %t233, i64 %t234, i32 %t231, i32 %a3)
  store i64 %t237, ptr %l155
  br label %bb56
bb56:
  %t238 = load i64, ptr %l155, !tbaa !24
  store i64 %t238, ptr %rv
  br label %ret
bb57:
  %t239 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t241 = trunc i64 21 to i32
  %t242 = icmp eq i32 %t239, %t241
  br i1 %t242, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l158, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load i64, ptr %l1, !tbaa !24
  %t247 = load { i64, [4 x i64] }, ptr %l5
  %t251 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t245, i64 %t246, { i64, [4 x i64] } %t247)
  store i64 %t251, ptr %l162
  br label %bb61
bb61:
  %t252 = load i32, ptr %l6, !tbaa !23
  %t253 = load ptr, ptr %l158, !tbaa !29
  %t254 = load i64, ptr %l162, !tbaa !24
  %t256 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebitcast(ptr %v0, ptr %t253, i64 %t254, i32 %t252)
  store i64 %t256, ptr %l164
  br label %bb62
bb62:
  %t257 = load i64, ptr %l164, !tbaa !24
  store i64 %t257, ptr %rv
  br label %ret
bb63:
  %t258 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t260 = trunc i64 43 to i32
  %t261 = icmp eq i32 %t258, %t260
  br i1 %t261, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb83
bb66:
  store %olang.scope zeroinitializer, ptr %s11
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i64, ptr %l1, !tbaa !24
  %t265 = load { i64, [4 x i64] }, ptr %l5
  %t269 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t263, i64 %t264, { i64, [4 x i64] } %t265, i64 1)
  store %"compiler/eval:Ptr" %t269, ptr %l170
  br label %bb67
bb67:
  %t270 = load %"compiler/eval:Ptr", ptr %l170
  store %"compiler/eval:Ptr" %t270, ptr %l18
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l171, !tbaa !29
  %t272 = getelementptr %"compiler/eval:Ptr", ptr %l18, i32 0, i32 0
  %t273 = load i64, ptr %t272, !tbaa !24
  %t274 = getelementptr %"compiler/eval:Ptr", ptr %l18, i32 0, i32 1
  %t275 = load i64, ptr %t274, !tbaa !24
  %t277 = add i64 %t275, 8
  %t280 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t273, i64 %t277)
  store %"compiler/eval:Ptr" %t280, ptr %l175
  br label %bb68
bb68:
  %t281 = load ptr, ptr %l171, !tbaa !29
  %t282 = load %"compiler/eval:Ptr", ptr %l175
  %t283 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t281, %"compiler/eval:Ptr" %t282)
  store %"compiler/eval:Ptr" %t283, ptr %l176
  br label %bb69
bb69:
  %t284 = load %"compiler/eval:Ptr", ptr %l176
  store %"compiler/eval:Ptr" %t284, ptr %l19
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/eval:Machine", ptr %t285, i32 0, i32 22
  %t288 = load i1, ptr %t287, !tbaa !21
  br i1 %t288, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l179, !tbaa !21
  br label %bb72
bb71:
  %t290 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t291 = load i64, ptr %t290, !tbaa !24
  %t293 = icmp eq i64 %t291, 0
  store i1 %t293, ptr %l179, !tbaa !21
  br label %bb72
bb72:
  %t295 = load i1, ptr %l179, !tbaa !21
  br i1 %t295, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s11)
  store i64 0, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load %"compiler/eval:Ptr", ptr %l19
  %t301 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t297, %"compiler/eval:Ptr" %t298)
  store %"compiler/eval:Ptr" %t301, ptr %l185
  br label %bb76
bb76:
  %t302 = load %"compiler/eval:Ptr", ptr %l185
  store %"compiler/eval:Ptr" %t302, ptr %l20
  %t303 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t304 = load i64, ptr %t303, !tbaa !24
  store i64 %t304, ptr %l186, !tbaa !24
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l187, !tbaa !29
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l188, !tbaa !29
  %t307 = load i64, ptr %l1, !tbaa !24
  store i64 %t307, ptr %l189, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load i64, ptr %l1, !tbaa !24
  %t310 = load %"compiler/mir:Range", ptr %l4
  %t314 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t308, i64 %t309, %"compiler/mir:Range" %t310, i64 1)
  store { i64, [4 x i64] } %t314, ptr %l193
  br label %bb77
bb77:
  %t315 = load ptr, ptr %l188, !tbaa !29
  %t316 = load i64, ptr %l189, !tbaa !24
  %t317 = load { i64, [4 x i64] }, ptr %l193
  %t318 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t315, i64 %t316, { i64, [4 x i64] } %t317)
  store i32 %t318, ptr %l194
  br label %bb78
bb78:
  %t319 = load ptr, ptr %l187, !tbaa !29
  %t320 = load i32, ptr %l194, !tbaa !23
  %t321 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %t319, i32 %t320)
  store %"compiler/eval:Ptr" %t321, ptr %l195
  br label %bb79
bb79:
  %t322 = getelementptr %"compiler/eval:Ptr", ptr %l195, i32 0, i32 0
  %t323 = load i64, ptr %t322, !tbaa !24
  %t324 = load i64, ptr %l186, !tbaa !24
  %t326 = icmp eq i64 %t324, %t323
  br i1 %t326, label %bb80, label %bb81
bb80:
  store i64 1, ptr %l198, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s11)
  %t328 = load i64, ptr %l198, !tbaa !24
  store i64 %t328, ptr %rv
  br label %ret
bb83:
  %t329 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t331 = trunc i64 29 to i32
  %t332 = icmp eq i32 %t329, %t331
  br i1 %t332, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l201, !tbaa !29
  %t335 = load i64, ptr %l1, !tbaa !24
  store i64 %t335, ptr %l202, !tbaa !24
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load i64, ptr %l1, !tbaa !24
  %t338 = load { i64, [4 x i64] }, ptr %l5
  %t342 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t336, i64 %t337, { i64, [4 x i64] } %t338, i64 1)
  store %"compiler/eval:Ptr" %t342, ptr %l206
  br label %bb87
bb87:
  %t343 = load i32, ptr %l6, !tbaa !23
  %t344 = load ptr, ptr %l201, !tbaa !29
  %t345 = load i64, ptr %l202, !tbaa !24
  %t346 = load %"compiler/eval:Ptr", ptr %l206
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eretire(ptr %v0, ptr %t344, i64 %t345, %"compiler/eval:Ptr" %t346, i32 %t343)
  br label %bb88
bb88:
  store i64 0, ptr %rv
  br label %ret
bb89:
  %t349 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t351 = trunc i64 24 to i32
  %t352 = icmp eq i32 %t349, %t351
  br i1 %t352, label %bb90, label %bb91
bb90:
  br label %bb100
bb91:
  %t354 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t356 = trunc i64 25 to i32
  %t357 = icmp eq i32 %t354, %t356
  br i1 %t357, label %bb92, label %bb93
bb92:
  br label %bb100
bb93:
  %t359 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t361 = trunc i64 26 to i32
  %t362 = icmp eq i32 %t359, %t361
  br i1 %t362, label %bb94, label %bb95
bb94:
  br label %bb100
bb95:
  %t364 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t366 = trunc i64 27 to i32
  %t367 = icmp eq i32 %t364, %t366
  br i1 %t367, label %bb96, label %bb97
bb96:
  br label %bb100
bb97:
  %t369 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t371 = trunc i64 28 to i32
  %t372 = icmp eq i32 %t369, %t371
  br i1 %t372, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load i64, ptr %l1, !tbaa !24
  %t376 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t377 = load %"compiler/mir:Range", ptr %l4
  %t378 = load i32, ptr %l6, !tbaa !23
  %t384 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eatomic(ptr %v0, ptr %t374, i64 %t375, i32 %t376, %"compiler/mir:Range" %t377, i32 %t378)
  store i64 %t384, ptr %l224
  br label %bb101
bb101:
  %t385 = load i64, ptr %l224, !tbaa !24
  store i64 %t385, ptr %rv
  br label %ret
bb102:
  %t386 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t388 = trunc i64 31 to i32
  %t389 = icmp eq i32 %t386, %t388
  br i1 %t389, label %bb103, label %bb104
bb103:
  br label %bb115
bb104:
  %t391 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t393 = trunc i64 32 to i32
  %t394 = icmp eq i32 %t391, %t393
  br i1 %t394, label %bb105, label %bb106
bb105:
  br label %bb115
bb106:
  %t396 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t398 = trunc i64 33 to i32
  %t399 = icmp eq i32 %t396, %t398
  br i1 %t399, label %bb107, label %bb108
bb107:
  br label %bb115
bb108:
  %t401 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t403 = trunc i64 36 to i32
  %t404 = icmp eq i32 %t401, %t403
  br i1 %t404, label %bb109, label %bb110
bb109:
  br label %bb115
bb110:
  %t406 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t408 = trunc i64 34 to i32
  %t409 = icmp eq i32 %t406, %t408
  br i1 %t409, label %bb111, label %bb112
bb111:
  br label %bb115
bb112:
  %t411 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t413 = trunc i64 35 to i32
  %t414 = icmp eq i32 %t411, %t413
  br i1 %t414, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb132
bb115:
  store i64 0, ptr %l21, !tbaa !24
  %t416 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t418 = trunc i64 34 to i32
  %t419 = icmp eq i32 %t416, %t418
  br i1 %t419, label %bb116, label %bb117
bb116:
  store i1 true, ptr %l239, !tbaa !21
  br label %bb118
bb117:
  %t421 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t423 = trunc i64 35 to i32
  %t424 = icmp eq i32 %t421, %t423
  store i1 %t424, ptr %l239, !tbaa !21
  br label %bb118
bb118:
  %t426 = load i1, ptr %l239, !tbaa !21
  br i1 %t426, label %bb119, label %bb120
bb119:
  %t427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t427, ptr %l242, !tbaa !29
  %t428 = load i64, ptr %l1, !tbaa !24
  store i64 %t428, ptr %l243, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load i64, ptr %l1, !tbaa !24
  %t431 = load %"compiler/mir:Range", ptr %l4
  %t435 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t429, i64 %t430, %"compiler/mir:Range" %t431, i64 1)
  store { i64, [4 x i64] } %t435, ptr %l247
  br label %bb121
bb120:
  br label %bb123
bb121:
  %t436 = load ptr, ptr %l242, !tbaa !29
  %t437 = load i64, ptr %l243, !tbaa !24
  %t438 = load { i64, [4 x i64] }, ptr %l247
  %t439 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t436, i64 %t437, { i64, [4 x i64] } %t438)
  store i64 %t439, ptr %l248
  br label %bb122
bb122:
  %t440 = load i64, ptr %l248, !tbaa !24
  store i64 %t440, ptr %l21, !tbaa !24
  br label %bb123
bb123:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load i64, ptr %l1, !tbaa !24
  %t443 = load { i64, [4 x i64] }, ptr %l5
  %t447 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t441, i64 %t442, { i64, [4 x i64] } %t443)
  store i64 %t447, ptr %l252
  br label %bb124
bb124:
  %t448 = load i64, ptr %l252, !tbaa !24
  store i64 %t448, ptr %l22, !tbaa !24
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/eval:Machine", ptr %t449, i32 0, i32 22
  %t452 = load i1, ptr %t451, !tbaa !21
  br i1 %t452, label %bb125, label %bb126
bb125:
  store i64 0, ptr %rv
  br label %ret
bb126:
  br label %bb127
bb127:
  %t455 = load i32, ptr %l2, !range !{i32 0, i32 51}
  store i32 %t455, ptr %l256
  %t456 = load i64, ptr %l22, !tbaa !24
  store i64 %t456, ptr %l257, !tbaa !24
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load i32, ptr %l6, !tbaa !23
  %t461 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t457, i32 %t458)
  store i64 %t461, ptr %l260
  br label %bb128
bb128:
  %t462 = load i64, ptr %l260, !tbaa !24
  %t463 = call i64 @compiler_2feval_2ebmask(i64 %t462)
  store i64 %t463, ptr %l261
  br label %bb129
bb129:
  %t464 = load i64, ptr %l257, !tbaa !24
  %t465 = load i64, ptr %l261, !tbaa !24
  %t466 = and i64 %t464, %t465
  store i64 %t466, ptr %l263, !tbaa !65
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load i32, ptr %l6, !tbaa !23
  %t472 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t468, i32 %t469)
  store i64 %t472, ptr %l266
  br label %bb130
bb130:
  %t473 = load i64, ptr %l21, !tbaa !24
  %t474 = load i32, ptr %l256, !range !{i32 0, i32 51}
  %t475 = load i64, ptr %l263, !tbaa !65
  %t476 = load i64, ptr %l266, !tbaa !24
  %t478 = call i64 @compiler_2feval_2ebitOp(i32 %t474, i64 %t475, i64 %t476, i64 %t473)
  store i64 %t478, ptr %l268
  br label %bb131
bb131:
  %t479 = load i64, ptr %l268, !tbaa !24
  store i64 %t479, ptr %rv
  br label %ret
bb132:
  br i1 true, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb137
bb136:
  call void @__olang_check_failed(ptr @olang_loc_c5a1577ee3e22d75_549c323efc9636a1)
  unreachable
bb137:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load i32, ptr %l6, !tbaa !23
  %t484 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t480, i32 %t481)
  store i64 %t484, ptr %l271
  br label %bb138
bb138:
  %t485 = load i64, ptr %l271, !tbaa !24
  store i64 %t485, ptr %l23, !tbaa !24
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t487 = load i64, ptr %l1, !tbaa !24
  %t488 = load { i64, [4 x i64] }, ptr %l5
  %t492 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t486, i64 %t487, { i64, [4 x i64] } %t488)
  store i64 %t492, ptr %l275
  br label %bb139
bb139:
  %t493 = load i64, ptr %l275, !tbaa !24
  store i64 %t493, ptr %l24, !tbaa !24
  %t494 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t496 = trunc i64 0 to i32
  %t497 = icmp eq i32 %t494, %t496
  br i1 %t497, label %bb140, label %bb141
bb140:
  store i1 true, ptr %l278, !tbaa !21
  br label %bb142
bb141:
  %t499 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t501 = trunc i64 1 to i32
  %t502 = icmp eq i32 %t499, %t501
  store i1 %t502, ptr %l278, !tbaa !21
  br label %bb142
bb142:
  %t504 = load i1, ptr %l278, !tbaa !21
  br i1 %t504, label %bb143, label %bb144
bb143:
  store i1 true, ptr %l281, !tbaa !21
  br label %bb145
bb144:
  %t505 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t507 = trunc i64 2 to i32
  %t508 = icmp eq i32 %t505, %t507
  store i1 %t508, ptr %l281, !tbaa !21
  br label %bb145
bb145:
  %t510 = load i1, ptr %l281, !tbaa !21
  br i1 %t510, label %bb146, label %bb147
bb146:
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t512 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t513 = load i64, ptr %l24, !tbaa !24
  %t514 = load i32, ptr %l6, !tbaa !23
  %t515 = load i64, ptr %l23, !tbaa !24
  %t521 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eunary(ptr %v0, ptr %t511, i32 %t512, i64 %t513, i32 %t514, i64 %t515)
  store i64 %t521, ptr %l289
  br label %bb148
bb147:
  br label %bb149
bb148:
  %t522 = load i64, ptr %l289, !tbaa !24
  store i64 %t522, ptr %rv
  br label %ret
bb149:
  %t523 = load ptr, ptr %l0, !tbaa !29
  store ptr %t523, ptr %l290, !tbaa !29
  %t524 = load i64, ptr %l1, !tbaa !24
  store i64 %t524, ptr %l291, !tbaa !24
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t526 = load i64, ptr %l1, !tbaa !24
  %t527 = load %"compiler/mir:Range", ptr %l4
  %t531 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t525, i64 %t526, %"compiler/mir:Range" %t527, i64 1)
  store { i64, [4 x i64] } %t531, ptr %l295
  br label %bb150
bb150:
  %t532 = load ptr, ptr %l290, !tbaa !29
  %t533 = load i64, ptr %l291, !tbaa !24
  %t534 = load { i64, [4 x i64] }, ptr %l295
  %t535 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t532, i64 %t533, { i64, [4 x i64] } %t534)
  store i32 %t535, ptr %l296
  br label %bb151
bb151:
  %t536 = load i32, ptr %l296, !tbaa !23
  store i32 %t536, ptr %l25, !tbaa !23
  %t537 = load ptr, ptr %l0, !tbaa !29
  store ptr %t537, ptr %l297, !tbaa !29
  %t538 = load i64, ptr %l1, !tbaa !24
  store i64 %t538, ptr %l298, !tbaa !24
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t540 = load i64, ptr %l1, !tbaa !24
  %t541 = load %"compiler/mir:Range", ptr %l4
  %t545 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t539, i64 %t540, %"compiler/mir:Range" %t541, i64 1)
  store { i64, [4 x i64] } %t545, ptr %l302
  br label %bb152
bb152:
  %t546 = load ptr, ptr %l297, !tbaa !29
  %t547 = load i64, ptr %l298, !tbaa !24
  %t548 = load { i64, [4 x i64] }, ptr %l302
  %t549 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t546, i64 %t547, { i64, [4 x i64] } %t548)
  store i64 %t549, ptr %l303
  br label %bb153
bb153:
  %t550 = load i64, ptr %l303, !tbaa !24
  store i64 %t550, ptr %l26, !tbaa !24
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/eval:Machine", ptr %t551, i32 0, i32 22
  %t554 = load i1, ptr %t553, !tbaa !21
  br i1 %t554, label %bb154, label %bb155
bb154:
  store i64 0, ptr %rv
  br label %ret
bb155:
  br label %bb156
bb156:
  %t557 = load i64, ptr %l23, !tbaa !24
  %t558 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t561 = icmp eq i64 %t557, %t558
  br i1 %t561, label %bb157, label %bb158
bb157:
  store i1 true, ptr %l310, !tbaa !21
  br label %bb159
bb158:
  %t563 = load i64, ptr %l23, !tbaa !24
  %t564 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t567 = icmp eq i64 %t563, %t564
  store i1 %t567, ptr %l310, !tbaa !21
  br label %bb159
bb159:
  %t569 = load i1, ptr %l310, !tbaa !21
  br i1 %t569, label %bb160, label %bb161
bb160:
  store i1 true, ptr %l314, !tbaa !21
  br label %bb162
bb161:
  %t570 = load i64, ptr %l23, !tbaa !24
  %t571 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t574 = icmp eq i64 %t570, %t571
  store i1 %t574, ptr %l314, !tbaa !21
  br label %bb162
bb162:
  %t576 = load i1, ptr %l314, !tbaa !21
  br i1 %t576, label %bb163, label %bb164
bb163:
  store i1 true, ptr %l318, !tbaa !21
  br label %bb165
bb164:
  %t577 = load i64, ptr %l23, !tbaa !24
  %t578 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t581 = icmp eq i64 %t577, %t578
  store i1 %t581, ptr %l318, !tbaa !21
  br label %bb165
bb165:
  %t583 = load i1, ptr %l318, !tbaa !21
  br i1 %t583, label %bb166, label %bb167
bb166:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t585 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t586 = load i64, ptr %l24, !tbaa !24
  %t587 = load i64, ptr %l26, !tbaa !24
  %t588 = load i32, ptr %l6, !tbaa !23
  %t589 = load i32, ptr %l25, !tbaa !23
  %t590 = load i64, ptr %l23, !tbaa !24
  %t598 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumOp(ptr %v0, ptr %t584, i32 %t585, i64 %t586, i64 %t587, i32 %t588, i32 %t589, i64 %t590)
  store i64 %t598, ptr %l329
  br label %bb168
bb167:
  br label %bb169
bb168:
  %t599 = load i64, ptr %l329, !tbaa !24
  store i64 %t599, ptr %rv
  br label %ret
bb169:
  %t600 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t602 = trunc i64 13 to i32
  %t603 = icmp eq i32 %t600, %t602
  br i1 %t603, label %bb170, label %bb171
bb170:
  store i1 true, ptr %l332, !tbaa !21
  br label %bb172
bb171:
  %t605 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t607 = trunc i64 14 to i32
  %t608 = icmp eq i32 %t605, %t607
  store i1 %t608, ptr %l332, !tbaa !21
  br label %bb172
bb172:
  %t610 = load i1, ptr %l332, !tbaa !21
  br i1 %t610, label %bb173, label %bb174
bb173:
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t612 = load i64, ptr %l1, !tbaa !24
  %t613 = load { i64, [4 x i64] }, ptr %l5
  %t617 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t611, i64 %t612, { i64, [4 x i64] } %t613, i64 1)
  store %"compiler/eval:Ptr" %t617, ptr %l338
  br label %bb175
bb174:
  br label %bb219
bb175:
  %t618 = load %"compiler/eval:Ptr", ptr %l338
  store %"compiler/eval:Ptr" %t618, ptr %l27
  %t619 = load ptr, ptr %l0, !tbaa !29
  store ptr %t619, ptr %l339, !tbaa !29
  %t620 = load i64, ptr %l1, !tbaa !24
  store i64 %t620, ptr %l340, !tbaa !24
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t622 = load i64, ptr %l1, !tbaa !24
  %t623 = load %"compiler/mir:Range", ptr %l4
  %t627 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t621, i64 %t622, %"compiler/mir:Range" %t623, i64 1)
  store { i64, [4 x i64] } %t627, ptr %l344
  br label %bb176
bb176:
  %t628 = load ptr, ptr %l339, !tbaa !29
  %t629 = load i64, ptr %l340, !tbaa !24
  %t630 = load { i64, [4 x i64] }, ptr %l344
  %t631 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t628, i64 %t629, { i64, [4 x i64] } %t630, i64 2)
  store %"compiler/eval:Ptr" %t631, ptr %l345
  br label %bb177
bb177:
  %t632 = load %"compiler/eval:Ptr", ptr %l345
  store %"compiler/eval:Ptr" %t632, ptr %l28
  store i1 true, ptr %l29, !tbaa !21
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load i32, ptr %l6, !tbaa !23
  %t637 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t633, i32 %t634)
  store i64 %t637, ptr %l348
  br label %bb178
bb178:
  %t638 = load i64, ptr %l348, !tbaa !24
  store i64 %t638, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  %t639 = load i64, ptr %l30, !tbaa !24
  %t641 = add i64 %t639, 7
  %t643 = sdiv i64 %t641, 8
  store i64 %t643, ptr %l32, !tbaa !24
  store i64 1, ptr %l33, !tbaa !24
  %t645 = load i64, ptr %l32, !tbaa !24
  %t646 = load i64, ptr %l31, !tbaa !24
  %t649 = icmp sgt i64 %t645, %t646
  br i1 %t649, label %bb179, label %bb180
bb179:
  %t651 = load i64, ptr %l33, !tbaa !24
  %t653 = icmp sgt i64 %t651, 0
  br i1 %t653, label %bb181, label %bb182
bb180:
  store i64 0, ptr %l355, !tbaa !24
  br label %bb184
bb181:
  %t655 = load i64, ptr %l32, !tbaa !24
  %t656 = load i64, ptr %l31, !tbaa !24
  %t659 = sub i64 %t655, %t656
  %t660 = load i64, ptr %l33, !tbaa !24
  %t663 = add i64 %t659, %t660
  %t665 = sub i64 %t663, 1
  %t666 = load i64, ptr %l33, !tbaa !24
  %t669 = sdiv i64 %t665, %t666
  store i64 %t669, ptr %l358, !tbaa !24
  br label %bb183
bb182:
  store i64 0, ptr %l358, !tbaa !24
  br label %bb183
bb183:
  %t671 = load i64, ptr %l358, !tbaa !24
  store i64 %t671, ptr %l355, !tbaa !24
  br label %bb184
bb184:
  %t672 = load i64, ptr %l355, !tbaa !24
  store i64 %t672, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  br label %bb185
bb185:
  store %olang.scope zeroinitializer, ptr %s24
  %t673 = load i64, ptr %l35, !tbaa !24
  %t674 = load i64, ptr %l34, !tbaa !24
  %t677 = icmp slt i64 %t673, %t674
  %t679 = xor i1 %t677, true
  br i1 %t679, label %bb186, label %bb187
bb186:
  call void @__olang_scope_close(ptr %s24)
  br label %bb215
bb187:
  br label %bb188
bb188:
  %t681 = load i64, ptr %l31, !tbaa !24
  %t682 = load i64, ptr %l35, !tbaa !24
  %t683 = load i64, ptr %l33, !tbaa !24
  %t686 = mul i64 %t682, %t683
  %t689 = add i64 %t681, %t686
  store i64 %t689, ptr %l36, !tbaa !24
  %t691 = load i64, ptr %l30, !tbaa !24
  %t692 = load i64, ptr %l36, !tbaa !24
  %t694 = mul i64 8, %t692
  %t697 = sub i64 %t691, %t694
  %t699 = icmp sge i64 %t697, 8
  br i1 %t699, label %bb189, label %bb190
bb189:
  store i64 8, ptr %l381, !tbaa !24
  br label %bb191
bb190:
  %t701 = load i64, ptr %l30, !tbaa !24
  %t702 = load i64, ptr %l36, !tbaa !24
  %t704 = mul i64 8, %t702
  %t707 = sub i64 %t701, %t704
  store i64 %t707, ptr %l381, !tbaa !24
  br label %bb191
bb191:
  %t709 = load i64, ptr %l381, !tbaa !24
  store i64 %t709, ptr %l37, !tbaa !24
  %t710 = load i64, ptr %l37, !tbaa !24
  %t712 = icmp eq i64 %t710, 8
  br i1 %t712, label %bb192, label %bb193
bb192:
  %t714 = load ptr, ptr %l0, !tbaa !29
  store ptr %t714, ptr %l389, !tbaa !29
  %t715 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 0
  %t716 = load i64, ptr %t715, !tbaa !24
  %t717 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 1
  %t718 = load i64, ptr %t717, !tbaa !24
  %t719 = load i64, ptr %l36, !tbaa !24
  %t721 = mul i64 8, %t719
  %t724 = add i64 %t718, %t721
  %t727 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s24, i64 %t716, i64 %t724)
  store %"compiler/eval:Ptr" %t727, ptr %l395
  br label %bb194
bb193:
  %t728 = load ptr, ptr %l0, !tbaa !29
  store ptr %t728, ptr %l397, !tbaa !29
  %t729 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 0
  %t730 = load i64, ptr %t729, !tbaa !24
  %t731 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 1
  %t732 = load i64, ptr %t731, !tbaa !24
  %t733 = load i64, ptr %l36, !tbaa !24
  %t735 = mul i64 8, %t733
  %t738 = add i64 %t732, %t735
  %t741 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s24, i64 %t730, i64 %t738)
  store %"compiler/eval:Ptr" %t741, ptr %l403
  br label %bb196
bb194:
  %t742 = load ptr, ptr %l389, !tbaa !29
  %t743 = load %"compiler/eval:Ptr", ptr %l395
  %t744 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t742, %"compiler/eval:Ptr" %t743)
  store %"compiler/eval:Ptr" %t744, ptr %l396
  br label %bb195
bb195:
  %t745 = load %"compiler/eval:Ptr", ptr %l396
  store %"compiler/eval:Ptr" %t745, ptr %l388
  br label %bb199
bb196:
  %t746 = load i64, ptr %l37, !tbaa !24
  %t747 = load ptr, ptr %l397, !tbaa !29
  %t748 = load %"compiler/eval:Ptr", ptr %l403
  %t750 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t747, %"compiler/eval:Ptr" %t748, i64 %t746)
  store i64 %t750, ptr %l405
  br label %bb197
bb197:
  %t751 = load i64, ptr %l405, !tbaa !24
  %t752 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s24, i64 0, i64 %t751)
  store %"compiler/eval:Ptr" %t752, ptr %l406
  br label %bb198
bb198:
  %t753 = load %"compiler/eval:Ptr", ptr %l406
  store %"compiler/eval:Ptr" %t753, ptr %l388
  br label %bb199
bb199:
  %t754 = load %"compiler/eval:Ptr", ptr %l388
  store %"compiler/eval:Ptr" %t754, ptr %l38
  %t755 = load i64, ptr %l37, !tbaa !24
  %t757 = icmp eq i64 %t755, 8
  br i1 %t757, label %bb200, label %bb201
bb200:
  %t759 = load ptr, ptr %l0, !tbaa !29
  store ptr %t759, ptr %l410, !tbaa !29
  %t760 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 0
  %t761 = load i64, ptr %t760, !tbaa !24
  %t762 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 1
  %t763 = load i64, ptr %t762, !tbaa !24
  %t764 = load i64, ptr %l36, !tbaa !24
  %t766 = mul i64 8, %t764
  %t769 = add i64 %t763, %t766
  %t772 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s24, i64 %t761, i64 %t769)
  store %"compiler/eval:Ptr" %t772, ptr %l416
  br label %bb202
bb201:
  %t773 = load ptr, ptr %l0, !tbaa !29
  store ptr %t773, ptr %l418, !tbaa !29
  %t774 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 0
  %t775 = load i64, ptr %t774, !tbaa !24
  %t776 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 1
  %t777 = load i64, ptr %t776, !tbaa !24
  %t778 = load i64, ptr %l36, !tbaa !24
  %t780 = mul i64 8, %t778
  %t783 = add i64 %t777, %t780
  %t786 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s24, i64 %t775, i64 %t783)
  store %"compiler/eval:Ptr" %t786, ptr %l424
  br label %bb204
bb202:
  %t787 = load ptr, ptr %l410, !tbaa !29
  %t788 = load %"compiler/eval:Ptr", ptr %l416
  %t789 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t787, %"compiler/eval:Ptr" %t788)
  store %"compiler/eval:Ptr" %t789, ptr %l417
  br label %bb203
bb203:
  %t790 = load %"compiler/eval:Ptr", ptr %l417
  store %"compiler/eval:Ptr" %t790, ptr %l409
  br label %bb207
bb204:
  %t791 = load i64, ptr %l37, !tbaa !24
  %t792 = load ptr, ptr %l418, !tbaa !29
  %t793 = load %"compiler/eval:Ptr", ptr %l424
  %t795 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t792, %"compiler/eval:Ptr" %t793, i64 %t791)
  store i64 %t795, ptr %l426
  br label %bb205
bb205:
  %t796 = load i64, ptr %l426, !tbaa !24
  %t797 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s24, i64 0, i64 %t796)
  store %"compiler/eval:Ptr" %t797, ptr %l427
  br label %bb206
bb206:
  %t798 = load %"compiler/eval:Ptr", ptr %l427
  store %"compiler/eval:Ptr" %t798, ptr %l409
  br label %bb207
bb207:
  %t799 = load %"compiler/eval:Ptr", ptr %l409
  store %"compiler/eval:Ptr" %t799, ptr %l39
  %t800 = getelementptr %"compiler/eval:Ptr", ptr %l38, i32 0, i32 0
  %t801 = load i64, ptr %t800, !tbaa !24
  %t802 = getelementptr %"compiler/eval:Ptr", ptr %l39, i32 0, i32 0
  %t803 = load i64, ptr %t802, !tbaa !24
  %t806 = icmp ne i64 %t801, %t803
  br i1 %t806, label %bb208, label %bb209
bb208:
  store i1 true, ptr %l431, !tbaa !21
  br label %bb210
bb209:
  %t808 = getelementptr %"compiler/eval:Ptr", ptr %l38, i32 0, i32 1
  %t809 = load i64, ptr %t808, !tbaa !24
  %t810 = getelementptr %"compiler/eval:Ptr", ptr %l39, i32 0, i32 1
  %t811 = load i64, ptr %t810, !tbaa !24
  %t814 = icmp ne i64 %t809, %t811
  store i1 %t814, ptr %l431, !tbaa !21
  br label %bb210
bb210:
  %t816 = load i1, ptr %l431, !tbaa !21
  br i1 %t816, label %bb211, label %bb212
bb211:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb213
bb212:
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s24)
  br label %bb214
bb214:
  %t817 = load i64, ptr %l35, !tbaa !24
  %t819 = add i64 %t817, 1
  store i64 %t819, ptr %l35, !tbaa !24
  br label %bb185
bb215:
  %t821 = load i1, ptr %l29, !tbaa !21
  %t822 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t824 = trunc i64 13 to i32
  %t825 = icmp eq i32 %t822, %t824
  %t828 = icmp eq i1 %t821, %t825
  br i1 %t828, label %bb216, label %bb217
bb216:
  store i64 1, ptr %l441, !tbaa !24
  br label %bb218
bb217:
  store i64 0, ptr %l441, !tbaa !24
  br label %bb218
bb218:
  %t830 = load i64, ptr %l441, !tbaa !24
  store i64 %t830, ptr %rv
  br label %ret
bb219:
  %t831 = load ptr, ptr %l0, !tbaa !29
  %t833 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t831)
  store i64 %t833, ptr %l443
  br label %bb220
bb220:
  %t834 = load i64, ptr %l443, !tbaa !24
  store i64 %t834, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { %"compiler/eval:Ptr", i64 }
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca %"compiler/eval:Ptr"
  %l27 = alloca { %"compiler/eval:Ptr", i64 }
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca i64
  %l60 = alloca i64
  %l63 = alloca i64
  %l81 = alloca ptr
  %l86 = alloca %"compiler/eval:Ptr"
  %l87 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [4 x i64] }, ptr %l2
  %t7 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1, i64 %t2, { i64, [4 x i64] } %t3)
  store i32 %t7, ptr %l20
  br label %bb1
bb1:
  %t8 = load i32, ptr %l20, !tbaa !23
  store i32 %t8, ptr %l5, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l21, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load { i64, [4 x i64] }, ptr %l2
  %t16 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t10, i64 %t11, { i64, [4 x i64] } %t12, i64 1)
  store %"compiler/eval:Ptr" %t16, ptr %l25
  br label %bb2
bb2:
  %t17 = load i32, ptr %l5, !tbaa !23
  %t18 = load ptr, ptr %l21, !tbaa !29
  %t19 = load %"compiler/eval:Ptr", ptr %l25
  %t21 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t18, %"compiler/eval:Ptr" %t19, i32 %t17)
  store { %"compiler/eval:Ptr", i64 } %t21, ptr %l27
  br label %bb3
bb3:
  %t22 = load { %"compiler/eval:Ptr", i64 }, ptr %l27
  store { %"compiler/eval:Ptr", i64 } %t22, ptr %l6
  %t23 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l6, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  store %"compiler/eval:Ptr" %t24, ptr %l7
  %t26 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l6, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l8, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 22
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb6
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 49
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l34, !tbaa !27
  %t38 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t43 = and i64 %t39, %t40
  %t45 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/eval:alloc", ptr %t46, i64 %t43
  %t48 = getelementptr %"compiler/eval:alloc", ptr %t47, i32 0, i32 13
  %t49 = load i1, ptr %t48, !tbaa !21
  store i1 %t49, ptr %l32, !tbaa !21
  br label %bb6
bb6:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l39, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l40, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l5, !tbaa !23
  %t58 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l43
  br label %bb10
bb10:
  %t59 = load ptr, ptr %l40, !tbaa !29
  %t60 = load i32, ptr %l43, !tbaa !23
  %t61 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t61, ptr %l44
  br label %bb11
bb11:
  %t62 = load i64, ptr %l39, !tbaa !24
  %t63 = load i64, ptr %l44, !tbaa !24
  %t64 = mul i64 %t62, %t63
  store i64 %t64, ptr %l9, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  br i1 %t74, label %bb12, label %bb13
bb12:
  %t76 = load i64, ptr %l4, !tbaa !24
  store i64 %t76, ptr %l10, !tbaa !24
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  br i1 %t82, label %bb15, label %bb16
bb15:
  %t84 = load i64, ptr %l9, !tbaa !24
  store i64 %t84, ptr %l10, !tbaa !24
  br label %bb17
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l10, !tbaa !24
  store i64 %t86, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t88 = load i64, ptr %l12, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb18, label %bb19
bb18:
  %t94 = load i64, ptr %l13, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb23
bb20:
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l13, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l63, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb22
bb22:
  %t114 = load i64, ptr %l63, !tbaa !24
  store i64 %t114, ptr %l60, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l60, !tbaa !24
  store i64 %t115, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t116 = load i64, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb26:
  br label %bb27
bb27:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l15, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l16, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l81, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t136 = load i64, ptr %t135, !tbaa !24
  %t137 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 1
  %t138 = load i64, ptr %t137, !tbaa !24
  %t139 = load i64, ptr %l16, !tbaa !24
  %t142 = add i64 %t138, %t139
  %t145 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t136, i64 %t142)
  store %"compiler/eval:Ptr" %t145, ptr %l86
  br label %bb28
bb28:
  %t146 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t146, ptr %l87, !tbaa !27
  %t147 = load i64, ptr %l16, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i8, ptr %t150, i64 %t147
  %t152 = load i8, ptr %t151, !tbaa !32
  %t154 = zext i8 %t152 to i64
  %t155 = load ptr, ptr %l81, !tbaa !29
  %t156 = load %"compiler/eval:Ptr", ptr %l86
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t155, %"compiler/eval:Ptr" %t156, i64 1, i64 %t154)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb30:
  %t158 = load i64, ptr %l15, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l15, !tbaa !24
  br label %bb24
bb31:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputLimit(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i1
  %l6 = alloca { i64, i64 }
  %l9 = alloca { i64, i64 }
  %l15 = alloca { i64, i64 }
  %l25 = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a5, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i1, ptr %l4, !tbaa !21
  %t7 = call { i64, i64 } @compiler_2feval_2ewideMax(i64 %t3, i1 %t4)
  store { i64, i64 } %t7, ptr %l15
  br label %bb3
bb2:
  %t8 = load i1, ptr %l4, !tbaa !21
  br i1 %t8, label %bb5, label %bb6
bb3:
  %t10 = load { i64, i64 }, ptr %l15
  store { i64, i64 } %t10, ptr %l6
  %t11 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load %"compiler/eval:Ptr", ptr %l1
  %t19 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t17, %"compiler/eval:Ptr" %t18, i32 %t19, i64 %t12, i64 %t15)
  br label %bb4
bb4:
  br label %bb11
bb5:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t27)
  store { i64, i64 } %t29, ptr %l25
  br label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/eval:Ptr", ptr %l1
  %t32 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t30, %"compiler/eval:Ptr" %t31, i32 %t32, i64 0, i64 0)
  br label %bb9
bb7:
  %t36 = load { i64, i64 }, ptr %l25
  store { i64, i64 } %t36, ptr %l9
  %t37 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 0
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load %"compiler/eval:Ptr", ptr %l1
  %t45 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t43, %"compiler/eval:Ptr" %t44, i32 %t45, i64 %t38, i64 %t41)
  br label %bb8
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca i64
  %l44 = alloca { i64, [4 x i64] }
  %l45 = alloca i1
  %rv = alloca i1
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l4, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l5, !tbaa !23
  store i32 1, ptr %l6, !tbaa !23
  %t4 = load i32, ptr %l5, !tbaa !23
  %t5 = load i32, ptr %l4, !tbaa !23
  %t8 = icmp sgt i32 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i32, ptr %l6, !tbaa !23
  %t12 = icmp sgt i32 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l14, !tbaa !23
  br label %bb6
bb3:
  %t14 = load i32, ptr %l5, !tbaa !23
  %t15 = load i32, ptr %l4, !tbaa !23
  %t18 = sub i32 %t14, %t15
  %t19 = load i32, ptr %l6, !tbaa !23
  %t22 = add i32 %t18, %t19
  %t24 = sub i32 %t22, 1
  %t25 = load i32, ptr %l6, !tbaa !23
  %t28 = sdiv i32 %t24, %t25
  store i32 %t28, ptr %l17, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb5
bb5:
  %t30 = load i32, ptr %l17, !tbaa !23
  store i32 %t30, ptr %l14, !tbaa !23
  br label %bb6
bb6:
  %t31 = load i32, ptr %l14, !tbaa !23
  store i32 %t31, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  br label %bb7
bb7:
  %t32 = load i32, ptr %l8, !tbaa !23
  %t33 = load i32, ptr %l7, !tbaa !23
  %t36 = icmp slt i32 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t40 = load i32, ptr %l4, !tbaa !23
  %t41 = load i32, ptr %l8, !tbaa !23
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = mul i32 %t41, %t42
  %t48 = add i32 %t40, %t45
  store ptr %a0, ptr %l35, !tbaa !29
  store i64 %a1, ptr %l36, !tbaa !24
  %t54 = getelementptr %"compiler/mir:Fn", ptr %a2, i32 0, i32 11
  %t55 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 0
  %t56 = load i32, ptr %t55, !tbaa !23
  %t58 = sext i32 %t56 to i64
  %t61 = sext i32 %t48 to i64
  %t64 = add i64 %t58, %t61
  %t67 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %t54, i64 %t64)
  store { i64, [4 x i64] } %t67, ptr %l44
  br label %bb11
bb11:
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = load i64, ptr %l36, !tbaa !24
  %t70 = load { i64, [4 x i64] }, ptr %l44
  %t71 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t68, i64 %t69, { i64, [4 x i64] } %t70)
  store i1 %t71, ptr %l45
  br label %bb12
bb12:
  %t72 = load i1, ptr %l45, !tbaa !21
  %t73 = xor i1 %t72, true
  br i1 %t73, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t76 = load i32, ptr %l8, !tbaa !23
  %t78 = add i32 %t76, 1
  store i32 %t78, ptr %l8, !tbaa !23
  br label %bb7
bb17:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i1
  %l30 = alloca { i64, ptr }
  %l35 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t9, i32 %a2)
  store { i64, ptr } %t13, ptr %l13
  br label %bb4
bb4:
  %t14 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = ashr i64 %t15, 16
  %t19 = sub i64 %t17, 1
  store i64 %t19, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp sge i64 %t25, %t28
  store i1 %t31, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t36 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t36, ptr %t34, { i64, ptr } %t35)
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 0, ptr %rv
  br label %ret
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t45, ptr %l30, !tbaa !27
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i32, ptr %t49, i64 %t46
  %t51 = load i32, ptr %t50, !tbaa !33
  %t52 = load i64, ptr %l1, !tbaa !24
  %t54 = and i64 %t52, 65535
  %t59 = call i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %t43, i32 %a3, i32 %t51, i64 %t54)
  store i64 %t59, ptr %l35
  br label %bb12
bb12:
  %t60 = load i64, ptr %l35, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp slt i64 %t61, 0
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t67 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t67, ptr %t65, { i64, ptr } %t66)
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 0, ptr %rv
  br label %ret
bb16:
  %t71 = load i64, ptr %l6, !tbaa !24
  store i64 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %t11 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/eval:Machine", ptr %t3, i32 0, i32 77
  %t6 = load i64, ptr %t5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 78
  %t10 = load %"compiler/source:Span", ptr %t9
  store { i64, [5 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t11, i32 0, i32 0
  store i64 3, ptr %t12
  %t14 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } undef, { i64, ptr } %a1, 0
  %t16 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t14, i64 %t6, 1
  %t18 = insertvalue { { i64, ptr }, i64, %"compiler/source:Span" } %t16, %"compiler/source:Span" %t10, 2
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t11, i32 0, i32 1
  store { { i64, ptr }, i64, %"compiler/source:Span" } %t18, ptr %t19
  %t20 = load { i64, [5 x i64] }, ptr %t11
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v0, ptr %t1, { i64, [5 x i64] } %t20)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregion(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l7 = alloca i64
  %l16 = alloca %"compiler/eval:scope"
  %l26 = alloca ptr
  %rv = alloca i64
  %t21 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eadopt(ptr %v0, ptr %t7, i64 %t8, i64 %t9)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 52
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t20 = and i64 %t16, %t17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t21, ptr %v0, ptr %t15, i64 %t20)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t21, i64 152, i1 false)
  br label %bb3
bb3:
  %t24 = getelementptr %"compiler/eval:scope", ptr %l16, i32 0, i32 2
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t29 = icmp ne i64 %t25, %t26
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t35 = and i64 %t31, %t32
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 52
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t39, i64 %t35)
  store ptr %t43, ptr %l26
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t46 = load i64, ptr %l1, !tbaa !24
  %t49 = getelementptr %"compiler/eval:scope", ptr %t44, i32 0, i32 16
  store i64 %t46, ptr %t49, !tbaa !24
  br label %bb7
bb7:
  %t50 = load i64, ptr %l2, !tbaa !24
  store i64 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereleaseHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i32
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i64
  %l8 = alloca i1
  %l11 = alloca i64
  %l16 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i64
  %l23 = alloca ptr
  %l27 = alloca %"compiler/eval:Ptr"
  %l28 = alloca i64
  %l32 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca %"compiler/eval:Ptr"
  %l40 = alloca i64
  %l44 = alloca i1
  %l50 = alloca %"compiler/eval:scope"
  %l54 = alloca i1
  %l57 = alloca i1
  %t83 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i1, ptr %l3, !tbaa !21
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load %"compiler/eval:Ptr", ptr %l1
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t3, %"compiler/eval:Ptr" %t4, i64 8)
  store i64 %t7, ptr %l11
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp eq i64 %t8, 0
  store i1 %t9, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l8, !tbaa !21
  store i1 %t11, ptr %l5, !tbaa !21
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l16
  br label %bb5
bb5:
  %t20 = load i1, ptr %l16, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb9
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load i32, ptr %l2, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l21, !tbaa !21
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l23, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/eval:Ptr", ptr %l1
  %t34 = load i32, ptr %l2, !tbaa !23
  %t38 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %t32, %"compiler/eval:Ptr" %t33, i32 %t34)
  store %"compiler/eval:Ptr" %t38, ptr %l27
  br label %bb12
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/eval:Ptr", ptr %l1
  %t41 = load i32, ptr %l2, !tbaa !23
  %t45 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %t39, %"compiler/eval:Ptr" %t40, i32 %t41)
  store i64 %t45, ptr %l32
  br label %bb14
bb12:
  %t46 = load ptr, ptr %l23, !tbaa !29
  %t47 = load %"compiler/eval:Ptr", ptr %l27
  %t48 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %t46, %"compiler/eval:Ptr" %t47)
  store i64 %t48, ptr %l28
  br label %bb13
bb13:
  %t49 = load i64, ptr %l28, !tbaa !24
  store i64 %t49, ptr %l22, !tbaa !24
  br label %bb15
bb14:
  %t50 = load i64, ptr %l32, !tbaa !24
  store i64 %t50, ptr %l22, !tbaa !24
  br label %bb15
bb15:
  %t51 = load i64, ptr %l22, !tbaa !24
  store i64 %t51, ptr %l6, !tbaa !24
  %t52 = load i1, ptr %l5, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/eval:Machine", ptr %t54, i32 0, i32 22
  %t57 = load i1, ptr %t56, !tbaa !21
  br i1 %t57, label %bb19, label %bb20
bb19:
  br label %ret
bb20:
  br label %bb21
bb21:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l36, !tbaa !29
  %t60 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t60, ptr %l37
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l2, !tbaa !23
  %t65 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t61, i32 %t62)
  store i64 %t65, ptr %l40
  br label %bb22
bb22:
  %t66 = load ptr, ptr %l36, !tbaa !29
  %t67 = load %"compiler/eval:Ptr", ptr %l37
  %t68 = load i64, ptr %l40, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t66, %"compiler/eval:Ptr" %t67, i64 %t68)
  br label %bb23
bb23:
  %t69 = load i64, ptr %l6, !tbaa !24
  %t71 = icmp eq i64 %t69, 0
  br i1 %t71, label %bb24, label %bb25
bb24:
  br label %ret
bb25:
  br label %bb26
bb26:
  %t73 = load i1, ptr %l3, !tbaa !21
  br i1 %t73, label %bb27, label %bb28
bb27:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/eval:Machine", ptr %t75, i32 0, i32 52
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t82 = and i64 %t78, %t79
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t83, ptr %v0, ptr %t77, i64 %t82)
  call void @llvm.memmove.p0.p0.i64(ptr %l50, ptr %t83, i64 152, i1 false)
  br label %bb29
bb28:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb30
bb29:
  %t86 = getelementptr %"compiler/eval:scope", ptr %l50, i32 0, i32 19
  %t87 = load i1, ptr %t86, !tbaa !21
  %t89 = xor i1 %t87, true
  store i1 %t89, ptr %l44, !tbaa !21
  br label %bb30
bb30:
  %t91 = load i1, ptr %l44, !tbaa !21
  br i1 %t91, label %bb31, label %bb32
bb31:
  br label %ret
bb32:
  br label %bb33
bb33:
  br i1 %a4, label %bb34, label %bb35
bb34:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eslotRegion(ptr %v0, ptr %t94, i64 %t95)
  store i1 %t98, ptr %l57
  br label %bb36
bb35:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb37
bb36:
  %t99 = load i1, ptr %l57, !tbaa !21
  %t100 = xor i1 %t99, true
  store i1 %t100, ptr %l54, !tbaa !21
  br label %bb37
bb37:
  %t102 = load i1, ptr %l54, !tbaa !21
  br i1 %t102, label %bb38, label %bb39
bb38:
  br label %ret
bb39:
  br label %bb40
bb40:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %t103, i64 %t104)
  br label %bb41
bb41:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erestoreGen(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"compiler/eval:genRec"
  %l5 = alloca %"compiler/eval:frame"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
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
  %l22 = alloca i64
  %l23 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l50 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l61 = alloca %"compiler/eval:genRec"
  %l63 = alloca %"compiler/eval:genRec"
  %l64 = alloca %"compiler/eval:frame"
  %l67 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l96 = alloca i64
  %l98 = alloca i64
  %l102 = alloca { i64, ptr }
  %l109 = alloca i64
  %l112 = alloca i64
  %l131 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l142 = alloca i64
  %l145 = alloca i64
  %l164 = alloca { i64, ptr }
  %l168 = alloca i64
  %l174 = alloca i64
  %l198 = alloca i64
  %l212 = alloca ptr
  %l213 = alloca i64
  %l217 = alloca i64
  %l218 = alloca %"compiler/eval:frame"
  %l220 = alloca %"compiler/eval:frame"
  %l224 = alloca { i64, ptr }
  %l231 = alloca i64
  %l234 = alloca i64
  %l253 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l257 = alloca %"compiler/eval:frame"
  %l261 = alloca { i64, ptr }
  %l264 = alloca %"compiler/eval:frame"
  %l265 = alloca ptr
  %l269 = alloca i64
  %l273 = alloca i64
  %l276 = alloca i64
  %l300 = alloca ptr
  %l303 = alloca i64
  %l305 = alloca ptr
  %l308 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t34 = alloca %"compiler/eval:genRec", align 8
  %t37 = alloca %"compiler/eval:genRec", align 8
  %t397 = alloca %"compiler/eval:frame", align 8
  %t409 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 10
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp sge i64 %t4, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l50, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 1
  %t17 = load i32, ptr %t16, !range !{i32 0, i32 2}
  %t19 = trunc i64 0 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t22 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDepth, !tbaa !27
  store { i64, ptr } %t22, ptr %l54, !tbaa !27
  br label %bb5
bb4:
  %t24 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyRunDepth, !tbaa !27
  store { i64, ptr } %t24, ptr %l54, !tbaa !27
  br label %bb5
bb5:
  %t26 = load ptr, ptr @__olang_prog_scope
  %t27 = load ptr, ptr %l50, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l54, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t26, ptr %t27, { i64, ptr } %t28)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 63
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t34, ptr %v0, ptr %v0, ptr %t32, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t34, i64 280, i1 false)
  br label %bb8
bb8:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t37, ptr %s0, ptr %l61)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t37, i64 280, i1 false)
  br label %bb9
bb9:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l63, i64 280, i1 false)
  %t39 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 2
  call void @llvm.memmove.p0.p0.i64(ptr %l64, ptr %t39, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l64, i64 136, i1 false)
  %t40 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l6, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 26
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l67, !tbaa !27
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr %"compiler/eval:cfn", ptr %t50, i64 %t47
  %t52 = getelementptr %"compiler/eval:cfn", ptr %t51, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l7, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 26
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l72, !tbaa !27
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr %"compiler/eval:cfn", ptr %t64, i64 %t61
  %t66 = getelementptr %"compiler/eval:cfn", ptr %t65, i32 0, i32 2
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 61
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 9
  %t76 = load i64, ptr %t75, !tbaa !24
  %t79 = add i64 %t74, %t76
  store i64 %t79, ptr %l9, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/eval:Machine", ptr %t82, i32 0, i32 60
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t90 = icmp sgt i64 %t81, %t87
  br i1 %t90, label %bb10, label %bb11
bb10:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 60
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  store { i64, ptr } %t95, ptr %l10, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  store i64 %t99, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  br label %bb38
bb12:
  %t101 = load i64, ptr %l11, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t109 = load i64, ptr %l11, !tbaa !24
  %t111 = mul i64 %t109, 2
  store i64 %t111, ptr %l11, !tbaa !24
  br label %bb16
bb16:
  br label %bb12
bb17:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l95, !tbaa !29
  %t114 = ptrtoint ptr %v0 to i64
  store i64 %t114, ptr %l96, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e60
  br i1 %t115, label %bb18, label %bb19
bb18:
  %t117 = call ptr @__olang_region_make(ptr %v0)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l96, !tbaa !24
  br label %bb19
bb19:
  %t119 = load i64, ptr %l11, !tbaa !24
  store i64 %t119, ptr %l98, !tbaa !24
  %t120 = load i64, ptr %l98, !tbaa !24
  %t121 = icmp sge i64 %t120, 0
  br i1 %t121, label %bb20, label %bb21
bb20:
  %t123 = load i64, ptr %l98, !tbaa !24
  %t124 = icmp sle i64 %t123, 1152921504606846975
  br i1 %t124, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_82f264fd3f63866e_1586045834f1f9b2)
  unreachable
bb22:
  %t126 = load i64, ptr %l98, !tbaa !24
  %t127 = mul i64 %t126, 8
  %t128 = load i64, ptr %l96
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = call ptr @__olang_scope_alloc_zeroed(ptr %t129, i64 %t127)
  %t131 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t133 = load ptr, ptr %l95, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 60
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l102, !tbaa !27
  %t137 = load ptr, ptr %l95, !tbaa !29
  %t138 = getelementptr %"compiler/eval:Machine", ptr %t137, i32 0, i32 60
  store { i64, ptr } %t132, ptr %t138, !tbaa !27
  %t139 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e60
  br i1 %t139, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_82f264fd3f63866e_1586045834f1f9b2)
  unreachable
bb24:
  %t141 = load { i64, ptr }, ptr %l102
  %t142 = extractvalue { i64, ptr } %t141, 1
  call void @__olang_region_release(ptr %t142)
  store { i64, ptr } zeroinitializer, ptr %l102
  br label %bb25
bb25:
  store i64 0, ptr %l12, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 61
  %t146 = load i64, ptr %t145, !tbaa !24
  store i64 %t146, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t148 = load i64, ptr %l13, !tbaa !24
  %t149 = load i64, ptr %l12, !tbaa !24
  %t152 = icmp sgt i64 %t148, %t149
  br i1 %t152, label %bb26, label %bb27
bb26:
  %t154 = load i64, ptr %l14, !tbaa !24
  %t156 = icmp sgt i64 %t154, 0
  br i1 %t156, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb31
bb28:
  %t158 = load i64, ptr %l13, !tbaa !24
  %t159 = load i64, ptr %l12, !tbaa !24
  %t162 = sub i64 %t158, %t159
  %t163 = load i64, ptr %l14, !tbaa !24
  %t166 = add i64 %t162, %t163
  %t168 = sub i64 %t166, 1
  %t169 = load i64, ptr %l14, !tbaa !24
  %t172 = sdiv i64 %t168, %t169
  store i64 %t172, ptr %l112, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb30
bb30:
  %t174 = load i64, ptr %l112, !tbaa !24
  store i64 %t174, ptr %l109, !tbaa !24
  br label %bb31
bb31:
  %t175 = load i64, ptr %l109, !tbaa !24
  store i64 %t175, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb32
bb32:
  %t176 = load i64, ptr %l16, !tbaa !24
  %t177 = load i64, ptr %l15, !tbaa !24
  %t180 = icmp slt i64 %t176, %t177
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t184 = load i64, ptr %l12, !tbaa !24
  %t185 = load i64, ptr %l16, !tbaa !24
  %t186 = load i64, ptr %l14, !tbaa !24
  %t189 = mul i64 %t185, %t186
  %t192 = add i64 %t184, %t189
  store i64 %t192, ptr %l17, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 60
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  store { i64, ptr } %t197, ptr %l131, !tbaa !27
  %t198 = load i64, ptr %l17, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t199, ptr %l133, !tbaa !27
  %t200 = load i64, ptr %l17, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i64, ptr %t203, i64 %t200
  %t205 = load i64, ptr %t204, !tbaa !34
  %t208 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i64, ptr %t209, i64 %t198
  store i64 %t205, ptr %t210, !tbaa !34
  br label %bb36
bb36:
  %t211 = load i64, ptr %l16, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l16, !tbaa !24
  br label %bb32
bb37:
  br label %bb38
bb38:
  store i64 0, ptr %l18, !tbaa !24
  %t215 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 9
  %t216 = load i64, ptr %t215, !tbaa !24
  store i64 %t216, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t218 = load i64, ptr %l19, !tbaa !24
  %t219 = load i64, ptr %l18, !tbaa !24
  %t222 = icmp sgt i64 %t218, %t219
  br i1 %t222, label %bb39, label %bb40
bb39:
  %t224 = load i64, ptr %l20, !tbaa !24
  %t226 = icmp sgt i64 %t224, 0
  br i1 %t226, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb44
bb41:
  %t228 = load i64, ptr %l19, !tbaa !24
  %t229 = load i64, ptr %l18, !tbaa !24
  %t232 = sub i64 %t228, %t229
  %t233 = load i64, ptr %l20, !tbaa !24
  %t236 = add i64 %t232, %t233
  %t238 = sub i64 %t236, 1
  %t239 = load i64, ptr %l20, !tbaa !24
  %t242 = sdiv i64 %t238, %t239
  store i64 %t242, ptr %l145, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb43
bb43:
  %t244 = load i64, ptr %l145, !tbaa !24
  store i64 %t244, ptr %l142, !tbaa !24
  br label %bb44
bb44:
  %t245 = load i64, ptr %l142, !tbaa !24
  store i64 %t245, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb45
bb45:
  %t246 = load i64, ptr %l22, !tbaa !24
  %t247 = load i64, ptr %l21, !tbaa !24
  %t250 = icmp slt i64 %t246, %t247
  %t252 = xor i1 %t250, true
  br i1 %t252, label %bb46, label %bb47
bb46:
  br label %bb51
bb47:
  br label %bb48
bb48:
  %t254 = load i64, ptr %l18, !tbaa !24
  %t255 = load i64, ptr %l22, !tbaa !24
  %t256 = load i64, ptr %l20, !tbaa !24
  %t259 = mul i64 %t255, %t256
  %t262 = add i64 %t254, %t259
  store i64 %t262, ptr %l23, !tbaa !24
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/eval:Machine", ptr %t264, i32 0, i32 60
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  store { i64, ptr } %t267, ptr %l164, !tbaa !27
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/eval:Machine", ptr %t268, i32 0, i32 61
  %t271 = load i64, ptr %t270, !tbaa !24
  %t272 = load i64, ptr %l23, !tbaa !24
  %t275 = add i64 %t271, %t272
  store i64 %t275, ptr %l168, !tbaa !24
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/eval:Machine", ptr %t276, i32 0, i32 65
  %t279 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 8
  %t280 = load i64, ptr %t279, !tbaa !24
  %t281 = load i64, ptr %l23, !tbaa !24
  %t284 = add i64 %t280, %t281
  %t287 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t278, i64 %t284)
  store i64 %t287, ptr %l174
  br label %bb49
bb49:
  %t288 = load i64, ptr %l174, !tbaa !24
  %t289 = load i64, ptr %l168, !tbaa !24
  %t290 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr i64, ptr %t291, i64 %t289
  store i64 %t288, ptr %t292, !tbaa !34
  br label %bb50
bb50:
  %t293 = load i64, ptr %l22, !tbaa !24
  %t295 = add i64 %t293, 1
  store i64 %t295, ptr %l22, !tbaa !24
  br label %bb45
bb51:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/eval:Machine", ptr %t297, i32 0, i32 61
  %t300 = load i64, ptr %t299, !tbaa !24
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/eval:Machine", ptr %t302, i32 0, i32 61
  %t305 = load i64, ptr %t304, !tbaa !24
  %t306 = load i64, ptr %l7, !tbaa !24
  %t309 = add i64 %t305, %t306
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/eval:Machine", ptr %t311, i32 0, i32 61
  %t314 = load i64, ptr %t313, !tbaa !24
  %t315 = load i64, ptr %l7, !tbaa !24
  %t318 = add i64 %t314, %t315
  %t319 = load i64, ptr %l8, !tbaa !24
  %t322 = add i64 %t318, %t319
  %t326 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 3
  store i64 %t300, ptr %t326, !tbaa !24
  %t329 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 4
  store i64 %t309, ptr %t329, !tbaa !24
  %t332 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 5
  store i64 %t322, ptr %t332, !tbaa !24
  %t339 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 7
  store i64 %a2, ptr %t339, !tbaa !24
  %t342 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 8
  store i64 %a3, ptr %t342, !tbaa !24
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/eval:Machine", ptr %t343, i32 0, i32 62
  %t347 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t345)
  store i64 %t347, ptr %l198
  br label %bb52
bb52:
  %t348 = load i64, ptr %l198, !tbaa !24
  %t349 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 9
  store i64 %t348, ptr %t349, !tbaa !24
  %t352 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 10
  store i1 false, ptr %t352, !tbaa !21
  %t355 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 11
  store i1 false, ptr %t355, !tbaa !21
  %t358 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 12
  store i1 false, ptr %t358, !tbaa !21
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i64, ptr %l9, !tbaa !24
  %t363 = getelementptr %"compiler/eval:Machine", ptr %t359, i32 0, i32 61
  store i64 %t360, ptr %t363, !tbaa !24
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/eval:Machine", ptr %t364, i32 0, i32 59
  %t367 = load i64, ptr %t366, !tbaa !24
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/eval:Machine", ptr %t368, i32 0, i32 58
  %t371 = load { i64, ptr }, ptr %t370, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t376 = icmp sge i64 %t367, %t373
  br i1 %t376, label %bb53, label %bb54
bb53:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/eval:Machine", ptr %t378, i32 0, i32 58
  %t381 = load { i64, ptr }, ptr %t380, !tbaa !27
  store { i64, ptr } %t381, ptr %l32, !tbaa !27
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l212, !tbaa !29
  %t384 = ptrtoint ptr %v0 to i64
  store i64 %t384, ptr %l213, !tbaa !24
  %t385 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e58
  br i1 %t385, label %bb55, label %bb56
bb54:
  br label %bb78
bb55:
  %t387 = call ptr @__olang_region_make(ptr %v0)
  %t388 = ptrtoint ptr %t387 to i64
  store i64 %t388, ptr %l213, !tbaa !24
  br label %bb56
bb56:
  %t389 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t393 = mul i64 2, %t391
  store i64 %t393, ptr %l217, !tbaa !24
  call void @llvm.memset.p0.i64(ptr %l218, i8 0, i64 136, i1 false)
  %t394 = load i64, ptr %l217, !tbaa !24
  %t395 = icmp sgt i64 %t394, 0
  br i1 %t395, label %bb57, label %bb58
bb57:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %t397)
  call void @llvm.memmove.p0.p0.i64(ptr %l220, ptr %t397, i64 136, i1 false)
  br label %bb59
bb58:
  %t398 = load i64, ptr %l217, !tbaa !24
  %t399 = icmp sge i64 %t398, 0
  br i1 %t399, label %bb60, label %bb61
bb59:
  call void @llvm.memmove.p0.p0.i64(ptr %l218, ptr %l220, i64 136, i1 false)
  br label %bb58
bb60:
  %t401 = load i64, ptr %l217, !tbaa !24
  %t402 = icmp sle i64 %t401, 67818912035696880
  br i1 %t402, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_9faf736d233c85e3_6ce3cec307115a7)
  unreachable
bb62:
  %t404 = load i64, ptr %l217, !tbaa !24
  %t405 = mul i64 %t404, 136
  %t406 = load i64, ptr %l213
  %t407 = inttoptr i64 %t406 to ptr
  %t408 = call ptr @__olang_scope_alloc(ptr %t407, i64 %t405)
  store i64 0, ptr %t409
  br label %fill.410
fill.410:
  %t413 = load i64, ptr %t409
  %t414 = icmp slt i64 %t413, %t404
  br i1 %t414, label %fillb.411, label %filld.412
fillb.411:
  %t415 = getelementptr %"compiler/eval:frame", ptr %t408, i64 %t413
  call void @llvm.memmove.p0.p0.i64(ptr %t415, ptr %l218, i64 136, i1 false)
  %t416 = add i64 %t413, 1
  store i64 %t416, ptr %t409
  br label %fill.410
filld.412:
  %t417 = insertvalue { i64, ptr } undef, i64 %t404, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t408, 1
  %t419 = load ptr, ptr %l212, !tbaa !29
  %t420 = getelementptr %"compiler/eval:Machine", ptr %t419, i32 0, i32 58
  %t421 = load { i64, ptr }, ptr %t420, !tbaa !27
  store { i64, ptr } %t421, ptr %l224, !tbaa !27
  %t423 = load ptr, ptr %l212, !tbaa !29
  %t424 = getelementptr %"compiler/eval:Machine", ptr %t423, i32 0, i32 58
  store { i64, ptr } %t418, ptr %t424, !tbaa !27
  %t425 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e58
  br i1 %t425, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_9faf736d233c85e3_6ce3cec307115a7)
  unreachable
bb64:
  %t427 = load { i64, ptr }, ptr %l224
  %t428 = extractvalue { i64, ptr } %t427, 1
  call void @__olang_region_release(ptr %t428)
  store { i64, ptr } zeroinitializer, ptr %l224
  br label %bb65
bb65:
  store i64 0, ptr %l33, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/eval:Machine", ptr %t429, i32 0, i32 59
  %t432 = load i64, ptr %t431, !tbaa !24
  store i64 %t432, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t434 = load i64, ptr %l34, !tbaa !24
  %t435 = load i64, ptr %l33, !tbaa !24
  %t438 = icmp sgt i64 %t434, %t435
  br i1 %t438, label %bb66, label %bb67
bb66:
  %t440 = load i64, ptr %l35, !tbaa !24
  %t442 = icmp sgt i64 %t440, 0
  br i1 %t442, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb71
bb68:
  %t444 = load i64, ptr %l34, !tbaa !24
  %t445 = load i64, ptr %l33, !tbaa !24
  %t448 = sub i64 %t444, %t445
  %t449 = load i64, ptr %l35, !tbaa !24
  %t452 = add i64 %t448, %t449
  %t454 = sub i64 %t452, 1
  %t455 = load i64, ptr %l35, !tbaa !24
  %t458 = sdiv i64 %t454, %t455
  store i64 %t458, ptr %l234, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l234, !tbaa !24
  br label %bb70
bb70:
  %t460 = load i64, ptr %l234, !tbaa !24
  store i64 %t460, ptr %l231, !tbaa !24
  br label %bb71
bb71:
  %t461 = load i64, ptr %l231, !tbaa !24
  store i64 %t461, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb72
bb72:
  %t462 = load i64, ptr %l37, !tbaa !24
  %t463 = load i64, ptr %l36, !tbaa !24
  %t466 = icmp slt i64 %t462, %t463
  %t468 = xor i1 %t466, true
  br i1 %t468, label %bb73, label %bb74
bb73:
  br label %bb77
bb74:
  br label %bb75
bb75:
  %t470 = load i64, ptr %l33, !tbaa !24
  %t471 = load i64, ptr %l37, !tbaa !24
  %t472 = load i64, ptr %l35, !tbaa !24
  %t475 = mul i64 %t471, %t472
  %t478 = add i64 %t470, %t475
  store i64 %t478, ptr %l38, !tbaa !24
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t482 = getelementptr %"compiler/eval:Machine", ptr %t480, i32 0, i32 58
  %t483 = load { i64, ptr }, ptr %t482, !tbaa !27
  store { i64, ptr } %t483, ptr %l253, !tbaa !27
  %t484 = load i64, ptr %l38, !tbaa !24
  %t485 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t485, ptr %l255, !tbaa !27
  %t486 = load i64, ptr %l38, !tbaa !24
  %t488 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = getelementptr %"compiler/eval:frame", ptr %t489, i64 %t486
  call void @llvm.memmove.p0.p0.i64(ptr %l257, ptr %t490, i64 136, i1 false)
  %t492 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t493 = load ptr, ptr %t492, !tbaa !27
  %t494 = getelementptr %"compiler/eval:frame", ptr %t493, i64 %t484
  call void @llvm.memmove.p0.p0.i64(ptr %t494, ptr %l257, i64 136, i1 false)
  br label %bb76
bb76:
  %t495 = load i64, ptr %l37, !tbaa !24
  %t497 = add i64 %t495, 1
  store i64 %t497, ptr %l37, !tbaa !24
  br label %bb72
bb77:
  br label %bb78
bb78:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t501 = getelementptr %"compiler/eval:Machine", ptr %t499, i32 0, i32 58
  %t502 = load { i64, ptr }, ptr %t501, !tbaa !27
  store { i64, ptr } %t502, ptr %l261, !tbaa !27
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = getelementptr %"compiler/eval:Machine", ptr %t503, i32 0, i32 59
  %t506 = load i64, ptr %t505, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l264, ptr %l5, i64 136, i1 false)
  %t508 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t509 = load ptr, ptr %t508, !tbaa !27
  %t510 = getelementptr %"compiler/eval:frame", ptr %t509, i64 %t506
  call void @llvm.memmove.p0.p0.i64(ptr %t510, ptr %l264, i64 136, i1 false)
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l265, !tbaa !29
  %t512 = load ptr, ptr %l265, !tbaa !29
  %t513 = getelementptr %"compiler/eval:Machine", ptr %t512, i32 0, i32 59
  %t514 = load i64, ptr %t513, !tbaa !24
  %t516 = add i64 %t514, 1
  %t518 = load ptr, ptr %l265, !tbaa !29
  %t519 = getelementptr %"compiler/eval:Machine", ptr %t518, i32 0, i32 59
  store i64 %t516, ptr %t519, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  %t520 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 6
  %t522 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t520)
  store i64 %t522, ptr %l269
  br label %bb79
bb79:
  %t523 = load i64, ptr %l269, !tbaa !24
  store i64 %t523, ptr %l40, !tbaa !24
  store i64 1, ptr %l41, !tbaa !24
  %t524 = load i64, ptr %l40, !tbaa !24
  %t525 = load i64, ptr %l39, !tbaa !24
  %t528 = icmp sgt i64 %t524, %t525
  br i1 %t528, label %bb80, label %bb81
bb80:
  %t530 = load i64, ptr %l41, !tbaa !24
  %t532 = icmp sgt i64 %t530, 0
  br i1 %t532, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l273, !tbaa !24
  br label %bb85
bb82:
  %t534 = load i64, ptr %l40, !tbaa !24
  %t535 = load i64, ptr %l39, !tbaa !24
  %t538 = sub i64 %t534, %t535
  %t539 = load i64, ptr %l41, !tbaa !24
  %t542 = add i64 %t538, %t539
  %t544 = sub i64 %t542, 1
  %t545 = load i64, ptr %l41, !tbaa !24
  %t548 = sdiv i64 %t544, %t545
  store i64 %t548, ptr %l276, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l276, !tbaa !24
  br label %bb84
bb84:
  %t550 = load i64, ptr %l276, !tbaa !24
  store i64 %t550, ptr %l273, !tbaa !24
  br label %bb85
bb85:
  %t551 = load i64, ptr %l273, !tbaa !24
  store i64 %t551, ptr %l42, !tbaa !24
  store i64 0, ptr %l43, !tbaa !24
  br label %bb86
bb86:
  %t552 = load i64, ptr %l43, !tbaa !24
  %t553 = load i64, ptr %l42, !tbaa !24
  %t556 = icmp slt i64 %t552, %t553
  %t558 = xor i1 %t556, true
  br i1 %t558, label %bb87, label %bb88
bb87:
  br label %bb96
bb88:
  br label %bb89
bb89:
  %t560 = load i64, ptr %l39, !tbaa !24
  %t561 = load i64, ptr %l43, !tbaa !24
  %t562 = load i64, ptr %l41, !tbaa !24
  %t565 = mul i64 %t561, %t562
  %t568 = add i64 %t560, %t565
  store i64 %t568, ptr %l44, !tbaa !24
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/eval:Machine", ptr %t570, i32 0, i32 66
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/eval:Machine", ptr %t573, i32 0, i32 59
  %t576 = load i64, ptr %t575, !tbaa !24
  %t578 = sub i64 %t576, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t572, i64 %t578)
  br label %bb90
bb90:
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t583 = getelementptr %"compiler/eval:Machine", ptr %t581, i32 0, i32 67
  store ptr %t583, ptr %l300, !tbaa !29
  %t584 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 6
  %t585 = load i64, ptr %l44, !tbaa !24
  %t588 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t584, i64 %t585)
  store i64 %t588, ptr %l303
  br label %bb91
bb91:
  %t589 = load ptr, ptr %l300, !tbaa !29
  %t590 = load i64, ptr %l303, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t589, i64 %t590)
  br label %bb92
bb92:
  %t591 = load ptr, ptr %l0, !tbaa !29
  %t593 = getelementptr %"compiler/eval:Machine", ptr %t591, i32 0, i32 68
  store ptr %t593, ptr %l305, !tbaa !29
  %t594 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 7
  %t595 = load i64, ptr %l44, !tbaa !24
  %t598 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t594, i64 %t595)
  store i64 %t598, ptr %l308
  br label %bb93
bb93:
  %t599 = load ptr, ptr %l305, !tbaa !29
  %t600 = load i64, ptr %l308, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t599, i64 %t600)
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t601 = load i64, ptr %l43, !tbaa !24
  %t603 = add i64 %t601, 1
  store i64 %t603, ptr %l43, !tbaa !24
  br label %bb86
bb96:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/eval:Machine", ptr %t605, i32 0, i32 59
  %t608 = load i64, ptr %t607, !tbaa !24
  %t610 = sub i64 %t608, 1
  call void @__olang_scope_close(ptr %s0)
  store i64 %t610, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArrayValue(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l10
  br label %bb2
bb2:
  %t18 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t31 = load i32, ptr %l17, !tbaa !23
  %t32 = icmp eq i32 %t31, 0
  store i1 %t32, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l13, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2esaveAlloc(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/eval:alloc"
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l17 = alloca { i64, ptr }
  %l25 = alloca i1
  %l28 = alloca i64
  %l35 = alloca i1
  %l41 = alloca i1
  %l47 = alloca i1
  %l53 = alloca i64
  %rv = alloca { i32, i64 }
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Snapshot", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v1, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l12
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l7, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l7, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = insertvalue { i32, i64 } zeroinitializer, i64 %t18, 1
  store { i32, i64 } %t20, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 49
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l17, !tbaa !27
  %t25 = load i64, ptr %l1, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t29 = and i64 %t25, %t26
  %t31 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr %"compiler/eval:alloc", ptr %t32, i64 %t29
  %t34 = load %"compiler/eval:alloc", ptr %t33
  store %"compiler/eval:alloc" %t34, ptr %l5
  %t36 = getelementptr %"compiler/eval:alloc", ptr %l5, i32 0, i32 4
  %t37 = load i64, ptr %t36, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t41 = icmp eq i64 %t37, %t38
  br i1 %t41, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb10
bb9:
  %t43 = getelementptr %"compiler/eval:alloc", ptr %l5, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load i64, ptr %l1, !tbaa !24
  %t46 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t46, ptr %l28, !tbaa !24
  %t48 = load i64, ptr %l28, !tbaa !24
  %t49 = load i64, ptr %l28, !tbaa !24
  %t50 = ashr i64 %t45, %t49
  %t53 = icmp ne i64 %t44, %t50
  store i1 %t53, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t55 = load i1, ptr %l25, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  %t57 = insertvalue { i32, i64 } zeroinitializer, i32 65539, 0
  store { i32, i64 } %t57, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t58 = getelementptr %"compiler/eval:alloc", ptr %l5, i32 0, i32 4
  %t59 = load i64, ptr %t58, !tbaa !24
  %t60 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t63 = icmp eq i64 %t59, %t60
  br i1 %t63, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb16
bb15:
  %t65 = getelementptr %"compiler/eval:alloc", ptr %l5, i32 0, i32 15
  %t66 = load i1, ptr %t65, !tbaa !21
  store i1 %t66, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t68 = load i1, ptr %l35, !tbaa !21
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t70, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t71 = getelementptr %"compiler/eval:alloc", ptr %l5, i32 0, i32 4
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = load i64, ptr @G_2ecompiler_2feval_2eaGlobal, !tbaa !24
  %t76 = icmp eq i64 %t72, %t73
  br i1 %t76, label %bb20, label %bb21
bb20:
  %t80 = xor i1 %a3, true
  store i1 %t80, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t82 = load i1, ptr %l41, !tbaa !21
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t84, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t85 = getelementptr %"compiler/eval:alloc", ptr %l5, i32 0, i32 11
  %t86 = load i32, ptr %t85, !tbaa !23
  %t88 = icmp ne i32 %t86, 0
  br i1 %t88, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb28
bb27:
  %t90 = getelementptr %"compiler/eval:alloc", ptr %l5, i32 0, i32 10
  %t91 = load i64, ptr %t90, !tbaa !24
  %t93 = icmp ne i64 %t91, 0
  store i1 %t93, ptr %l47, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l47, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t97 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t97, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/eval:Snapshot", ptr %t98, i32 0, i32 1
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t100)
  store i64 %t102, ptr %l53
  br label %bb32
bb32:
  %t103 = load i64, ptr %l53, !tbaa !24
  store i64 %t103, ptr %l6, !tbaa !24
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t106 = getelementptr %"compiler/eval:Snapshot", ptr %t104, i32 0, i32 5
  %t107 = load i64, ptr %l1, !tbaa !24
  %t108 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v1, ptr %t106, i64 %t107, i64 %t108)
  br label %bb33
bb33:
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t114 = getelementptr %"compiler/eval:Snapshot", ptr %t112, i32 0, i32 1
  %t115 = load i64, ptr %l1, !tbaa !24
  %t117 = sub i64 0, %t115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t114, i64 %t117)
  br label %bb34
bb34:
  %t120 = load i64, ptr %l6, !tbaa !24
  %t122 = insertvalue { i32, i64 } zeroinitializer, i64 %t120, 1
  store { i32, i64 } %t122, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2esaveWords(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l4 = alloca %"compiler/eval:alloc"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i64
  %l35 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
  %l77 = alloca { i64, ptr }
  %l89 = alloca i64
  %l92 = alloca i64
  %l111 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i64
  %l127 = alloca i64
  %l128 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Snapshot", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l22
  br label %bb1
bb1:
  %t8 = load i64, ptr %l22, !tbaa !24
  %t9 = sub i64 0, %t8
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 49
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l25, !tbaa !27
  %t16 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t19 = and i64 %t9, %t16
  %t21 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/eval:alloc", ptr %t22, i64 %t19
  %t24 = load %"compiler/eval:alloc", ptr %t23
  store %"compiler/eval:alloc" %t24, ptr %l4
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Snapshot", ptr %t26, i32 0, i32 1
  store ptr %t28, ptr %l31, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %l32, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Snapshot", ptr %t30, i32 0, i32 0
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t32)
  store i64 %t34, ptr %l35
  br label %bb2
bb2:
  %t35 = load ptr, ptr %l31, !tbaa !29
  %t36 = load i64, ptr %l32, !tbaa !24
  %t37 = load i64, ptr %l35, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v1, ptr %t35, i64 %t36, i64 %t37)
  br label %bb3
bb3:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Snapshot", ptr %t38, i32 0, i32 0
  %t41 = getelementptr %"compiler/eval:alloc", ptr %l4, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t40, i64 %t42)
  br label %bb4
bb4:
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Snapshot", ptr %t45, i32 0, i32 0
  %t48 = getelementptr %"compiler/eval:alloc", ptr %l4, i32 0, i32 4
  %t49 = load i64, ptr %t48, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t47, i64 %t49)
  br label %bb5
bb5:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Snapshot", ptr %t52, i32 0, i32 0
  store ptr %t54, ptr %l43, !tbaa !29
  %t55 = getelementptr %"compiler/eval:alloc", ptr %l4, i32 0, i32 13
  %t56 = load i1, ptr %t55, !tbaa !21
  br i1 %t56, label %bb6, label %bb7
bb6:
  store i64 1, ptr %l45, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb8
bb8:
  %t58 = load ptr, ptr %l43, !tbaa !29
  %t59 = load i64, ptr %l45, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t58, i64 %t59)
  br label %bb9
bb9:
  %t60 = getelementptr %"compiler/eval:alloc", ptr %l4, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  %t63 = add i64 %t61, 7
  %t65 = sdiv i64 %t63, 8
  store i64 %t65, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t67 = load i64, ptr %l5, !tbaa !24
  store i64 %t67, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb10, label %bb11
bb10:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb15
bb12:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l56, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb14
bb14:
  %t95 = load i64, ptr %l56, !tbaa !24
  store i64 %t95, ptr %l53, !tbaa !24
  br label %bb15
bb15:
  %t96 = load i64, ptr %l53, !tbaa !24
  store i64 %t96, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t97 = load i64, ptr %l10, !tbaa !24
  %t98 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t107 = load i64, ptr %l8, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr %"compiler/eval:Snapshot", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 45
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l77, !tbaa !27
  %t122 = getelementptr %"compiler/eval:alloc", ptr %l4, i32 0, i32 0
  %t123 = load i64, ptr %t122, !tbaa !24
  %t125 = sdiv i64 %t123, 8
  %t129 = add i64 %t125, %t113
  %t131 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t129
  %t134 = load i64, ptr %t133, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t117, i64 %t134)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t137 = load i64, ptr %l10, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l10, !tbaa !24
  br label %bb16
bb22:
  store i64 0, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l5, !tbaa !24
  store i64 %t141, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l13, !tbaa !24
  %t144 = load i64, ptr %l12, !tbaa !24
  %t147 = icmp sgt i64 %t143, %t144
  br i1 %t147, label %bb23, label %bb24
bb23:
  %t149 = load i64, ptr %l14, !tbaa !24
  %t151 = icmp sgt i64 %t149, 0
  br i1 %t151, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb28
bb25:
  %t153 = load i64, ptr %l13, !tbaa !24
  %t154 = load i64, ptr %l12, !tbaa !24
  %t157 = sub i64 %t153, %t154
  %t158 = load i64, ptr %l14, !tbaa !24
  %t161 = add i64 %t157, %t158
  %t163 = sub i64 %t161, 1
  %t164 = load i64, ptr %l14, !tbaa !24
  %t167 = sdiv i64 %t163, %t164
  store i64 %t167, ptr %l92, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb27
bb27:
  %t169 = load i64, ptr %l92, !tbaa !24
  store i64 %t169, ptr %l89, !tbaa !24
  br label %bb28
bb28:
  %t170 = load i64, ptr %l89, !tbaa !24
  store i64 %t170, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb29
bb29:
  %t171 = load i64, ptr %l16, !tbaa !24
  %t172 = load i64, ptr %l15, !tbaa !24
  %t175 = icmp slt i64 %t171, %t172
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb30, label %bb31
bb30:
  br label %bb42
bb31:
  br label %bb32
bb32:
  %t179 = load i64, ptr %l12, !tbaa !24
  %t180 = load i64, ptr %l16, !tbaa !24
  %t181 = load i64, ptr %l14, !tbaa !24
  %t184 = mul i64 %t180, %t181
  %t187 = add i64 %t179, %t184
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/eval:Machine", ptr %t189, i32 0, i32 46
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  store { i64, ptr } %t192, ptr %l111, !tbaa !27
  %t193 = getelementptr %"compiler/eval:alloc", ptr %l4, i32 0, i32 0
  %t194 = load i64, ptr %t193, !tbaa !24
  %t196 = sdiv i64 %t194, 8
  %t200 = add i64 %t196, %t187
  %t202 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i64, ptr %t203, i64 %t200
  %t205 = load i64, ptr %t204, !tbaa !34
  store i64 %t205, ptr %l18, !tbaa !24
  %t207 = load i64, ptr %l18, !tbaa !24
  %t209 = icmp eq i64 %t207, 0
  br i1 %t209, label %bb33, label %bb34
bb33:
  %t211 = load ptr, ptr %l2, !tbaa !29
  %t213 = getelementptr %"compiler/eval:Snapshot", ptr %t211, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t213, i64 0)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb41
bb36:
  %t215 = load ptr, ptr %l2, !tbaa !29
  %t217 = getelementptr %"compiler/eval:Snapshot", ptr %t215, i32 0, i32 0
  store ptr %t217, ptr %l122, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i64, ptr %l18, !tbaa !24
  %t220 = load ptr, ptr %l2, !tbaa !29
  %t224 = call { i32, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2esaveAlloc(ptr %v0, ptr %v1, ptr %t218, i64 %t219, ptr %t220, i1 false)
  %t225 = extractvalue { i32, i64 } %t224, 1
  %t226 = extractvalue { i32, i64 } %t224, 0
  store i32 %t226, ptr %l128
  %t227 = icmp ne i32 %t226, 0
  br i1 %t227, label %bb38, label %ok.228, !prof !99
ok.228:
  store i64 %t225, ptr %l127
  br label %bb37
bb37:
  %t229 = load i64, ptr %l127, !tbaa !24
  store i64 %t229, ptr %l123, !tbaa !24
  br label %bb39
bb38:
  %t230 = load i32, ptr %l128, !tbaa !23
  %t231 = lshr i32 %t230, 16
  %t232 = and i32 %t230, 65535
  %t233 = icmp eq i32 %t231, 1
  %t234 = select i1 %t233, i32 1, i32 0
  %t235 = icmp eq i32 %t230, 0
  %t236 = shl i32 %t234, 16
  %t237 = or i32 %t236, %t232
  %t238 = select i1 %t235, i32 0, i32 %t237
  store i32 %t238, ptr %rv
  br label %ret
bb39:
  %t240 = load i64, ptr %l123, !tbaa !24
  %t241 = add i64 1, %t240
  %t242 = load ptr, ptr %l122, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t242, i64 %t241)
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t244 = load i64, ptr %l16, !tbaa !24
  %t246 = add i64 %t244, 1
  store i64 %t246, ptr %l16, !tbaa !24
  br label %bb29
bb42:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca i64
  %l7 = alloca { %"compiler/eval:Ptr", i32 }
  %l20 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i1
  %l31 = alloca ptr
  %l37 = alloca %"compiler/eval:Ptr"
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l53 = alloca { %"compiler/eval:Ptr", i32 }
  %l56 = alloca ptr
  %l57 = alloca %"compiler/eval:Ptr"
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca ptr
  %l66 = alloca %"compiler/eval:Ptr"
  %l67 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i64
  %l73 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 0, ptr %rv
  br label %ret
bb4:
  %t7 = load { i64, [4 x i64] }, ptr %l2
  %t9 = extractvalue { i64, [4 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 2
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t13 = getelementptr { i32, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  %t16 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t17 = getelementptr { i32, i64 }, ptr %t16, i32 0, i32 1
  %t18 = load i64, ptr %t17
  store i64 %t18, ptr %l4, !tbaa !24
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load i64, ptr %l4, !tbaa !24
  %t26 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %t20, i32 %t21, i64 %t22)
  store i64 %t26, ptr %l20
  br label %bb8
bb8:
  %t27 = load i64, ptr %l20, !tbaa !24
  store i64 %t27, ptr %rv
  br label %ret
bb9:
  %t28 = load { i64, [4 x i64] }, ptr %l2
  %t30 = extractvalue { i64, [4 x i64] } %t28, 0
  %t31 = icmp eq i64 %t30, 1
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t34 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/mir:Lvalue", ptr %t34
  store %"compiler/mir:Lvalue" %t35, ptr %l5
  br label %bb12
bb11:
  br label %bb26
bb12:
  %t37 = load %"compiler/mir:Lvalue", ptr %l5
  %t39 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %t37)
  store i64 %t39, ptr %l25
  br label %bb13
bb13:
  %t40 = load i64, ptr %l25, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  %t41 = getelementptr %"compiler/mir:Lvalue", ptr %l5, i32 0, i32 1
  %t42 = getelementptr %"compiler/mir:Range", ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t45 = icmp eq i32 %t43, 0
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sge i64 %t47, 0
  store i1 %t49, ptr %l28, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l28, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l1, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = trunc i64 %t55 to i32
  %t62 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t53, i64 %t54, i32 %t57)
  store %"compiler/eval:Ptr" %t62, ptr %l37
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 26
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  store { i64, ptr } %t67, ptr %l40, !tbaa !27
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 58
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l42, !tbaa !27
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"compiler/eval:frame", ptr %t75, i64 %t72
  %t77 = getelementptr %"compiler/eval:frame", ptr %t76, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr %"compiler/eval:cfn", ptr %t81, i64 %t78
  %t83 = getelementptr %"compiler/eval:cfn", ptr %t82, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l45, !tbaa !27
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"compiler/mir:Local", ptr %t88, i64 %t85
  %t90 = getelementptr %"compiler/mir:Local", ptr %t89, i32 0, i32 2
  %t91 = load i32, ptr %t90, !tbaa !23
  %t94 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %t63, i32 %t91)
  store i64 %t94, ptr %l48
  br label %bb20
bb20:
  %t95 = load ptr, ptr %l31, !tbaa !29
  %t96 = load %"compiler/eval:Ptr", ptr %l37
  %t97 = load i64, ptr %l48, !tbaa !24
  %t98 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t95, %"compiler/eval:Ptr" %t96, i64 %t97)
  store i64 %t98, ptr %l49
  br label %bb21
bb21:
  %t99 = load i64, ptr %l49, !tbaa !24
  store i64 %t99, ptr %rv
  br label %ret
bb22:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l1, !tbaa !24
  %t102 = load %"compiler/mir:Lvalue", ptr %l5
  %t106 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t100, i64 %t101, %"compiler/mir:Lvalue" %t102)
  store { %"compiler/eval:Ptr", i32 } %t106, ptr %l53
  br label %bb23
bb23:
  %t107 = load { %"compiler/eval:Ptr", i32 }, ptr %l53
  store { %"compiler/eval:Ptr", i32 } %t107, ptr %l7
  %t108 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 0
  %t109 = load %"compiler/eval:Ptr", ptr %t108
  %t111 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 1
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l56, !tbaa !29
  store %"compiler/eval:Ptr" %t109, ptr %l57
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t120 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %t116, i32 %t112)
  store i64 %t120, ptr %l60
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l56, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l57
  %t123 = load i64, ptr %l60, !tbaa !24
  %t124 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122, i64 %t123)
  store i64 %t124, ptr %l61
  br label %bb25
bb25:
  %t125 = load i64, ptr %l61, !tbaa !24
  store i64 %t125, ptr %rv
  br label %ret
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l62, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i64, ptr %l1, !tbaa !24
  %t129 = load { i64, [4 x i64] }, ptr %l2
  %t133 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t127, i64 %t128, { i64, [4 x i64] } %t129, i64 1)
  store %"compiler/eval:Ptr" %t133, ptr %l66
  br label %bb30
bb30:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l67, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i64, ptr %l1, !tbaa !24
  %t137 = load { i64, [4 x i64] }, ptr %l2
  %t141 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t135, i64 %t136, { i64, [4 x i64] } %t137)
  store i32 %t141, ptr %l71
  br label %bb31
bb31:
  %t142 = load ptr, ptr %l67, !tbaa !29
  %t143 = load i32, ptr %l71, !tbaa !23
  %t144 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %t142, i32 %t143)
  store i64 %t144, ptr %l72
  br label %bb32
bb32:
  %t145 = load ptr, ptr %l62, !tbaa !29
  %t146 = load %"compiler/eval:Ptr", ptr %l66
  %t147 = load i64, ptr %l72, !tbaa !24
  %t148 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t145, %"compiler/eval:Ptr" %t146, i64 %t147)
  store i64 %t148, ptr %l73
  br label %bb33
bb33:
  %t149 = load i64, ptr %l73, !tbaa !24
  store i64 %t149, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_1c104311c72af5f5_c45dcd645c687dc1)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eslice(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3, { i64, [4 x i64] } %a4, { i64, [4 x i64] } %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca { i64, [4 x i64] }
  %l7 = alloca { %"compiler/eval:Ptr", i32 }
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca i32
  %l10 = alloca { %"compiler/eval:Ptr", i64 }
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i32
  %l21 = alloca { %"compiler/eval:Ptr", i32 }
  %l29 = alloca { %"compiler/eval:Ptr", i64 }
  %l32 = alloca ptr
  %l36 = alloca i64
  %l40 = alloca i32
  %l41 = alloca i64
  %l42 = alloca ptr
  %l46 = alloca i64
  %l50 = alloca i32
  %l51 = alloca i64
  %l56 = alloca i1
  %l60 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca i64
  %l74 = alloca i1
  %l77 = alloca %"compiler/eval:Ptr"
  %l84 = alloca %"compiler/eval:Ptr"
  %l89 = alloca i32
  %l93 = alloca i32
  %l96 = alloca i1
  %l98 = alloca ptr
  %l100 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca i32
  %l106 = alloca i32
  %l116 = alloca ptr
  %l120 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a4, ptr %l4
  store { i64, [4 x i64] } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t7 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Lvalue" %a3)
  store { %"compiler/eval:Ptr", i32 } %t7, ptr %l21
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i32 }, ptr %l21
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l7
  %t9 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l8
  %t12 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l9, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 22
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/eval:Ptr", ptr %l8
  %t22 = load i32, ptr %l9, !tbaa !23
  %t26 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t20, %"compiler/eval:Ptr" %t21, i32 %t22)
  store { %"compiler/eval:Ptr", i64 } %t26, ptr %l29
  br label %bb5
bb5:
  %t27 = load { %"compiler/eval:Ptr", i64 }, ptr %l29
  store { %"compiler/eval:Ptr", i64 } %t27, ptr %l10
  %t28 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 0
  %t29 = load %"compiler/eval:Ptr", ptr %t28
  store %"compiler/eval:Ptr" %t29, ptr %l11
  %t31 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l12, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l32, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  %t37 = load { i64, [4 x i64] }, ptr %l4
  %t41 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t35, i64 %t36, { i64, [4 x i64] } %t37)
  store i64 %t41, ptr %l36
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load { i64, [4 x i64] }, ptr %l4
  %t48 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t42, i64 %t43, { i64, [4 x i64] } %t44)
  store i32 %t48, ptr %l40
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t50 = load i64, ptr %l36, !tbaa !24
  %t51 = load i32, ptr %l40, !tbaa !23
  %t52 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t49, i64 %t50, i32 %t51)
  store i64 %t52, ptr %l41
  br label %bb8
bb8:
  %t53 = load i64, ptr %l41, !tbaa !24
  store i64 %t53, ptr %l13, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l42, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load { i64, [4 x i64] }, ptr %l5
  %t61 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t55, i64 %t56, { i64, [4 x i64] } %t57)
  store i64 %t61, ptr %l46
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  %t64 = load { i64, [4 x i64] }, ptr %l5
  %t68 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t62, i64 %t63, { i64, [4 x i64] } %t64)
  store i32 %t68, ptr %l50
  br label %bb10
bb10:
  %t69 = load ptr, ptr %l42, !tbaa !29
  %t70 = load i64, ptr %l46, !tbaa !24
  %t71 = load i32, ptr %l50, !tbaa !23
  %t72 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t69, i64 %t70, i32 %t71)
  store i64 %t72, ptr %l51
  br label %bb11
bb11:
  %t73 = load i64, ptr %l51, !tbaa !24
  store i64 %t73, ptr %l14, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 22
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t79 = load i64, ptr %l13, !tbaa !24
  %t81 = icmp slt i64 %t79, 0
  br i1 %t81, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb17
bb16:
  %t83 = load i64, ptr %l13, !tbaa !24
  %t84 = load i64, ptr %l14, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  store i1 %t87, ptr %l56, !tbaa !21
  br label %bb17
bb17:
  %t89 = load i1, ptr %l56, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb20
bb19:
  %t90 = load i64, ptr %l14, !tbaa !24
  %t91 = load i64, ptr %l12, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  store i1 %t94, ptr %l60, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l60, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyOutside, !tbaa !27
  %t99 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t99, ptr %t97, { i64, ptr } %t98)
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l66, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l9, !tbaa !23
  %t107 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l69
  br label %bb25
bb25:
  %t108 = load ptr, ptr %l66, !tbaa !29
  %t109 = load i32, ptr %l69, !tbaa !23
  %t110 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t108, i32 %t109)
  store i64 %t110, ptr %l70
  br label %bb26
bb26:
  %t111 = load i64, ptr %l70, !tbaa !24
  store i64 %t111, ptr %l15, !tbaa !24
  %t112 = load i64, ptr %l14, !tbaa !24
  %t113 = load i64, ptr %l13, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb29
bb28:
  %t118 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = icmp ne i64 %t119, 0
  store i1 %t121, ptr %l74, !tbaa !21
  br label %bb29
bb29:
  %t123 = load i1, ptr %l74, !tbaa !21
  br i1 %t123, label %bb30, label %bb31
bb30:
  %t124 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t125 = load i64, ptr %t124, !tbaa !24
  %t126 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load i64, ptr %l13, !tbaa !24
  %t129 = load i64, ptr %l15, !tbaa !24
  %t132 = mul i64 %t128, %t129
  %t135 = add i64 %t127, %t132
  %t138 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t125, i64 %t135)
  store %"compiler/eval:Ptr" %t138, ptr %l84
  br label %bb32
bb31:
  %t139 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t139, ptr %l77
  br label %bb33
bb32:
  %t141 = load %"compiler/eval:Ptr", ptr %l84
  store %"compiler/eval:Ptr" %t141, ptr %l77
  br label %bb33
bb33:
  %t142 = load %"compiler/eval:Ptr", ptr %l77
  store %"compiler/eval:Ptr" %t142, ptr %l16
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t146, i32 %a6)
  store i32 %t150, ptr %l89
  br label %bb34
bb34:
  %t151 = load i32, ptr %l89, !tbaa !23
  store i32 %t151, ptr %l17, !tbaa !23
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t156 = load i32, ptr %l17, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l93
  br label %bb35
bb35:
  %t160 = load i32, ptr %l93, !range !{i32 0, i32 33}
  %t162 = trunc i64 20 to i32
  %t163 = icmp eq i32 %t160, %t162
  br i1 %t163, label %bb36, label %bb37
bb36:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/eval:Machine", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  store ptr %t168, ptr %l98, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/eval:Machine", ptr %t169, i32 0, i32 0
  %t172 = load ptr, ptr %t171, !tbaa !29
  store ptr %t172, ptr %l100, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/eval:Machine", ptr %t173, i32 0, i32 0
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t177 = load i32, ptr %l17, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t176, i32 %t177)
  store i32 %t180, ptr %l104
  br label %bb38
bb37:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb41
bb38:
  %t181 = load ptr, ptr %l100, !tbaa !29
  %t182 = load i32, ptr %l104, !tbaa !23
  %t183 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t181, i32 %t182)
  store i32 %t183, ptr %l105
  br label %bb39
bb39:
  %t184 = load ptr, ptr %l98, !tbaa !29
  %t185 = load i32, ptr %l105, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t184, i32 %t185)
  store i32 %t186, ptr %l106
  br label %bb40
bb40:
  %t187 = load i32, ptr %l106, !tbaa !23
  %t188 = icmp ne i32 %t187, 0
  store i1 %t188, ptr %l96, !tbaa !21
  br label %bb41
bb41:
  %t190 = load i1, ptr %l96, !tbaa !21
  br i1 %t190, label %bb42, label %bb43
bb42:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/eval:Ptr", ptr %l2
  %t193 = load %"compiler/eval:Ptr", ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t191, %"compiler/eval:Ptr" %t192, %"compiler/eval:Ptr" %t193)
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/eval:Ptr", ptr %l2
  %t199 = load i64, ptr %l14, !tbaa !24
  %t200 = load i64, ptr %l13, !tbaa !24
  %t203 = sub i64 %t199, %t200
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t197, %"compiler/eval:Ptr" %t198, i64 8, i64 %t203)
  br label %bb46
bb46:
  %t207 = load ptr, ptr %l0, !tbaa !29
  store ptr %t207, ptr %l116, !tbaa !29
  %t208 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t209 = load i64, ptr %t208, !tbaa !24
  %t210 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t211 = load i64, ptr %t210, !tbaa !24
  %t213 = add i64 %t211, 8
  %t216 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t209, i64 %t213)
  store %"compiler/eval:Ptr" %t216, ptr %l120
  br label %bb47
bb47:
  %t217 = load %"compiler/eval:Ptr", ptr %l16
  %t218 = load ptr, ptr %l116, !tbaa !29
  %t219 = load %"compiler/eval:Ptr", ptr %l120
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t218, %"compiler/eval:Ptr" %t219, %"compiler/eval:Ptr" %t217)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eslotRegion(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca %"compiler/eval:scope"
  %l12 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l22 = alloca %"compiler/eval:scope"
  %rv = alloca i1
  %t9 = alloca %"compiler/eval:scope", align 8
  %t34 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 52
  %t5 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t8 = and i64 %a1, %t5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t9, ptr %v0, ptr %t3, i64 %t8)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t9, i64 152, i1 false)
  br label %bb1
bb1:
  %t12 = getelementptr %"compiler/eval:scope", ptr %l8, i32 0, i32 5
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp ne i64 %t15, 0
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t19, i64 %t20)
  store i1 %t23, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb5
bb4:
  %t24 = load i1, ptr %l15, !tbaa !21
  store i1 %t24, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l12, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 52
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t33 = and i64 %t29, %t30
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t34, ptr %v0, ptr %t28, i64 %t33)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t34, i64 152, i1 false)
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb9
bb8:
  %t37 = getelementptr %"compiler/eval:scope", ptr %l22, i32 0, i32 18
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l16, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca %"compiler/eval:reg"
  %l8 = alloca i64
  %l9 = alloca %"compiler/eval:reg"
  %l11 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l24 = alloca %"compiler/eval:scope"
  %l26 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca i64
  %l37 = alloca i1
  %l39 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i32
  %l47 = alloca %"compiler/eval:scope"
  %l51 = alloca i1
  %l55 = alloca %"compiler/eval:scope"
  %l57 = alloca i1
  %l61 = alloca %"compiler/eval:scope"
  %l67 = alloca %"compiler/eval:scope"
  %l73 = alloca %"compiler/eval:reg"
  %l78 = alloca ptr
  %l86 = alloca %"compiler/eval:reg"
  %l93 = alloca ptr
  %l94 = alloca i64
  %l97 = alloca i32
  %l100 = alloca %"compiler/eval:Ptr"
  %l104 = alloca %"compiler/eval:scope"
  %l111 = alloca %"compiler/eval:reg"
  %l117 = alloca ptr
  %l126 = alloca ptr
  %l135 = alloca ptr
  %l136 = alloca i64
  %l139 = alloca i32
  %l142 = alloca %"compiler/eval:Ptr"
  %l152 = alloca %"compiler/eval:scope"
  %l162 = alloca %"compiler/eval:scope"
  %l167 = alloca ptr
  %l176 = alloca ptr
  %l181 = alloca i1
  %l187 = alloca i1
  %l191 = alloca %"compiler/eval:scope"
  %l196 = alloca %"compiler/eval:scope"
  %l204 = alloca { i64, ptr }
  %l207 = alloca i64
  %l212 = alloca { i64, ptr }
  %l218 = alloca %"compiler/eval:scope"
  %l222 = alloca ptr
  %l226 = alloca %"compiler/eval:scope"
  %l231 = alloca %"compiler/eval:scope"
  %l238 = alloca %"compiler/eval:scope"
  %l242 = alloca i64
  %l245 = alloca i64
  %l246 = alloca i32
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t43 = alloca %"compiler/eval:scope", align 8
  %t57 = alloca %"compiler/eval:scope", align 8
  %t68 = alloca %"compiler/eval:scope", align 8
  %t81 = alloca %"compiler/eval:scope", align 8
  %t159 = alloca %"compiler/eval:scope", align 8
  %t265 = alloca %"compiler/eval:scope", align 8
  %t285 = alloca %"compiler/eval:scope", align 8
  %t344 = alloca %"compiler/eval:scope", align 8
  %t355 = alloca %"compiler/eval:scope", align 8
  %t408 = alloca %"compiler/eval:scope", align 8
  %t423 = alloca %"compiler/eval:scope", align 8
  %t434 = alloca %"compiler/eval:scope", align 8
  %t453 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 62
  store ptr %t3, ptr %l26, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 62
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l29
  br label %bb1
bb1:
  %t9 = load i64, ptr %l29, !tbaa !24
  %t10 = sub i64 %t9, 1
  %t11 = load ptr, ptr %l26, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t10)
  store i64 %t13, ptr %l31
  br label %bb2
bb2:
  %t14 = load i64, ptr %l31, !tbaa !24
  store i64 %t14, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t16 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t19 = and i64 %t15, %t16
  store i64 %t19, ptr %l2, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t21, i64 %t22)
  store i1 %t25, ptr %l37
  br label %bb3
bb3:
  %t26 = load i1, ptr %l37, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 62
  %t33 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t31)
  %t34 = extractvalue { i32, i64 } %t33, 1
  %t35 = extractvalue { i32, i64 } %t33, 0
  store i32 %t35, ptr %l43
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb7, label %ok.37, !prof !99
ok.37:
  store i64 %t34, ptr %l42
  br label %bb6
bb5:
  br label %bb10
bb6:
  %t38 = load i64, ptr %l42, !tbaa !24
  store i64 %t38, ptr %l39, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %ret
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 52
  %t42 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t43, ptr %v0, ptr %t41, i64 %t42)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t43, i64 152, i1 false)
  br label %bb11
bb11:
  %t46 = getelementptr %"compiler/eval:scope", ptr %l47, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t51 = icmp eq i64 %t47, %t48
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 52
  %t56 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t57, ptr %v0, ptr %t55, i64 %t56)
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t57, i64 152, i1 false)
  br label %bb14
bb13:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb15
bb14:
  %t60 = getelementptr %"compiler/eval:scope", ptr %l55, i32 0, i32 15
  %t61 = load i1, ptr %t60, !tbaa !21
  store i1 %t61, ptr %l51, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l51, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 52
  %t67 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t68, ptr %v0, ptr %t66, i64 %t67)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t68, i64 152, i1 false)
  br label %bb18
bb17:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb19
bb18:
  %t71 = getelementptr %"compiler/eval:scope", ptr %l61, i32 0, i32 17
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = icmp sge i64 %t72, 0
  store i1 %t74, ptr %l57, !tbaa !21
  br label %bb19
bb19:
  %t76 = load i1, ptr %l57, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t77, i32 0, i32 52
  %t80 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t81, ptr %v0, ptr %t79, i64 %t80)
  call void @llvm.memmove.p0.p0.i64(ptr %l67, ptr %t81, i64 152, i1 false)
  br label %bb22
bb21:
  br label %bb33
bb22:
  %t84 = getelementptr %"compiler/eval:scope", ptr %l67, i32 0, i32 17
  %t85 = load i64, ptr %t84, !tbaa !24
  store i64 %t85, ptr %l3, !tbaa !24
  %t87 = load i64, ptr %l2, !tbaa !24
  store i64 %t87, ptr %l4, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/eval:Machine", ptr %t89, i32 0, i32 54
  %t92 = load i64, ptr %l3, !tbaa !24
  %t95 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t91, i64 %t92)
  store %"compiler/eval:reg" %t95, ptr %l73
  br label %bb23
bb23:
  %t96 = getelementptr %"compiler/eval:reg", ptr %l73, i32 0, i32 7
  %t97 = load i64, ptr %t96, !tbaa !24
  store i64 %t97, ptr %l5, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 52
  %t102 = load i64, ptr %l4, !tbaa !24
  %t105 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t101, i64 %t102)
  store ptr %t105, ptr %l78
  br label %bb24
bb24:
  %t106 = load ptr, ptr %l78, !tbaa !29
  %t108 = load i64, ptr %l5, !tbaa !24
  %t111 = getelementptr %"compiler/eval:scope", ptr %t106, i32 0, i32 17
  store i64 %t108, ptr %t111, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunlinkReg(ptr %v0, ptr %t112, i64 %t113)
  br label %bb25
bb25:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/eval:Machine", ptr %t116, i32 0, i32 54
  %t119 = load i64, ptr %l3, !tbaa !24
  %t122 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t118, i64 %t119)
  store %"compiler/eval:reg" %t122, ptr %l86
  br label %bb26
bb26:
  %t123 = load %"compiler/eval:reg", ptr %l86
  store %"compiler/eval:reg" %t123, ptr %l7
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t124, i32 0, i32 55
  %t127 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t126, i64 %t127)
  br label %bb27
bb27:
  %t130 = getelementptr %"compiler/eval:reg", ptr %l7, i32 0, i32 0
  %t131 = load i64, ptr %t130, !tbaa !24
  %t132 = load i64, ptr @G_2ecompiler_2feval_2egDtor, !tbaa !24
  %t135 = icmp eq i64 %t131, %t132
  br i1 %t135, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l93, !tbaa !29
  %t138 = load i64, ptr %l1, !tbaa !24
  store i64 %t138, ptr %l94, !tbaa !24
  %t139 = getelementptr %"compiler/eval:reg", ptr %l7, i32 0, i32 1
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = trunc i64 %t140 to i32
  store i32 %t142, ptr %l97, !tbaa !23
  %t144 = getelementptr %"compiler/eval:reg", ptr %l7, i32 0, i32 2
  %t145 = load i64, ptr %t144, !tbaa !24
  %t146 = getelementptr %"compiler/eval:reg", ptr %l7, i32 0, i32 3
  %t147 = load i64, ptr %t146, !tbaa !24
  %t150 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t145, i64 %t147)
  store %"compiler/eval:Ptr" %t150, ptr %l100
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t151 = load ptr, ptr %l93, !tbaa !29
  %t152 = load i64, ptr %l94, !tbaa !24
  %t153 = load i32, ptr %l97, !tbaa !23
  %t154 = load %"compiler/eval:Ptr", ptr %l100
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %t151, i64 %t152, i32 %t153, %"compiler/eval:Ptr" %t154)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb32:
  br label %ret
bb33:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 52
  %t158 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t159, ptr %v0, ptr %t157, i64 %t158)
  call void @llvm.memmove.p0.p0.i64(ptr %l104, ptr %t159, i64 152, i1 false)
  br label %bb34
bb34:
  %t162 = getelementptr %"compiler/eval:scope", ptr %l104, i32 0, i32 4
  %t163 = load i64, ptr %t162, !tbaa !24
  store i64 %t163, ptr %l8, !tbaa !24
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = icmp sge i64 %t165, 0
  br i1 %t167, label %bb35, label %bb36
bb35:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/eval:Machine", ptr %t169, i32 0, i32 54
  %t172 = load i64, ptr %l8, !tbaa !24
  %t175 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t171, i64 %t172)
  store %"compiler/eval:reg" %t175, ptr %l111
  br label %bb37
bb36:
  br label %bb53
bb37:
  %t176 = load %"compiler/eval:reg", ptr %l111
  store %"compiler/eval:reg" %t176, ptr %l9
  %t177 = load i64, ptr %l2, !tbaa !24
  %t179 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 4
  %t180 = load i64, ptr %t179, !tbaa !24
  store i64 %t180, ptr %l11, !tbaa !24
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/eval:Machine", ptr %t182, i32 0, i32 52
  %t188 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t184, i64 %t177)
  store ptr %t188, ptr %l117
  br label %bb38
bb38:
  %t189 = load ptr, ptr %l117, !tbaa !29
  %t191 = load i64, ptr %l11, !tbaa !24
  %t194 = getelementptr %"compiler/eval:scope", ptr %t189, i32 0, i32 4
  store i64 %t191, ptr %t194, !tbaa !24
  %t195 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 4
  %t196 = load i64, ptr %t195, !tbaa !24
  %t198 = icmp sge i64 %t196, 0
  br i1 %t198, label %bb39, label %bb40
bb39:
  %t200 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 4
  %t201 = load i64, ptr %t200, !tbaa !24
  store i64 -1, ptr %l14, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/eval:Machine", ptr %t203, i32 0, i32 54
  %t209 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v0, ptr %t205, i64 %t201)
  store ptr %t209, ptr %l126
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t210 = load ptr, ptr %l126, !tbaa !29
  %t212 = load i64, ptr %l14, !tbaa !24
  %t215 = getelementptr %"compiler/eval:reg", ptr %t210, i32 0, i32 5
  store i64 %t212, ptr %t215, !tbaa !24
  br label %bb42
bb42:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/eval:Machine", ptr %t216, i32 0, i32 55
  %t219 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t218, i64 %t219)
  br label %bb43
bb43:
  %t222 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 0
  %t223 = load i64, ptr %t222, !tbaa !24
  %t224 = load i64, ptr @G_2ecompiler_2feval_2egDtor, !tbaa !24
  %t227 = icmp eq i64 %t223, %t224
  br i1 %t227, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l135, !tbaa !29
  %t230 = load i64, ptr %l1, !tbaa !24
  store i64 %t230, ptr %l136, !tbaa !24
  %t231 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 1
  %t232 = load i64, ptr %t231, !tbaa !24
  %t234 = trunc i64 %t232 to i32
  store i32 %t234, ptr %l139, !tbaa !23
  %t236 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 2
  %t237 = load i64, ptr %t236, !tbaa !24
  %t238 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 3
  %t239 = load i64, ptr %t238, !tbaa !24
  %t242 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t237, i64 %t239)
  store %"compiler/eval:Ptr" %t242, ptr %l142
  br label %bb46
bb45:
  %t243 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 0
  %t244 = load i64, ptr %t243, !tbaa !24
  %t245 = load i64, ptr @G_2ecompiler_2feval_2egGen, !tbaa !24
  %t248 = icmp eq i64 %t244, %t245
  br i1 %t248, label %bb48, label %bb49
bb46:
  %t250 = load ptr, ptr %l135, !tbaa !29
  %t251 = load i64, ptr %l136, !tbaa !24
  %t252 = load i32, ptr %l139, !tbaa !23
  %t253 = load %"compiler/eval:Ptr", ptr %l142
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %t250, i64 %t251, i32 %t252, %"compiler/eval:Ptr" %t253)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb48:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i64, ptr %l1, !tbaa !24
  %t256 = getelementptr %"compiler/eval:reg", ptr %l9, i32 0, i32 1
  %t257 = load i64, ptr %t256, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseGen(ptr %v0, ptr %t254, i64 %t255, i64 %t257)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  br label %ret
bb53:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/eval:Machine", ptr %t261, i32 0, i32 52
  %t264 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t265, ptr %v0, ptr %t263, i64 %t264)
  call void @llvm.memmove.p0.p0.i64(ptr %l152, ptr %t265, i64 152, i1 false)
  br label %bb54
bb54:
  %t268 = getelementptr %"compiler/eval:scope", ptr %l152, i32 0, i32 6
  %t269 = load i64, ptr %t268, !tbaa !24
  store i64 %t269, ptr %l16, !tbaa !24
  %t271 = load i64, ptr %l16, !tbaa !24
  %t273 = icmp ne i64 %t271, 0
  br i1 %t273, label %bb55, label %bb56
bb55:
  %t275 = load i64, ptr %l2, !tbaa !24
  store i64 %t275, ptr %l17, !tbaa !24
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/eval:Machine", ptr %t277, i32 0, i32 52
  %t280 = load i64, ptr %l16, !tbaa !24
  %t281 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t284 = and i64 %t280, %t281
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t285, ptr %v0, ptr %t279, i64 %t284)
  call void @llvm.memmove.p0.p0.i64(ptr %l162, ptr %t285, i64 152, i1 false)
  br label %bb57
bb56:
  br label %bb65
bb57:
  %t288 = getelementptr %"compiler/eval:scope", ptr %l162, i32 0, i32 7
  %t289 = load i64, ptr %t288, !tbaa !24
  store i64 %t289, ptr %l18, !tbaa !24
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/eval:Machine", ptr %t291, i32 0, i32 52
  %t294 = load i64, ptr %l17, !tbaa !24
  %t297 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t293, i64 %t294)
  store ptr %t297, ptr %l167
  br label %bb58
bb58:
  %t298 = load ptr, ptr %l167, !tbaa !29
  %t300 = load i64, ptr %l18, !tbaa !24
  %t303 = getelementptr %"compiler/eval:scope", ptr %t298, i32 0, i32 6
  store i64 %t300, ptr %t303, !tbaa !24
  %t304 = load i64, ptr %l16, !tbaa !24
  %t305 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t308 = and i64 %t304, %t305
  store i64 0, ptr %l21, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/eval:Machine", ptr %t310, i32 0, i32 52
  %t316 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t312, i64 %t308)
  store ptr %t316, ptr %l176
  br label %bb59
bb59:
  %t317 = load ptr, ptr %l176, !tbaa !29
  %t319 = load i64, ptr %l21, !tbaa !24
  %t322 = getelementptr %"compiler/eval:scope", ptr %t317, i32 0, i32 5
  store i64 %t319, ptr %t322, !tbaa !24
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load i64, ptr %l16, !tbaa !24
  %t327 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t323, i64 %t324)
  store i1 %t327, ptr %l181
  br label %bb60
bb60:
  %t328 = load i1, ptr %l181, !tbaa !21
  br i1 %t328, label %bb61, label %bb62
bb61:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/eval:Machine", ptr %t329, i32 0, i32 62
  %t332 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t331, i64 %t332)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  br label %ret
bb65:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/eval:Machine", ptr %t335, i32 0, i32 16
  %t338 = load i1, ptr %t337, !tbaa !21
  br i1 %t338, label %bb66, label %bb67
bb66:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/eval:Machine", ptr %t340, i32 0, i32 52
  %t343 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t344, ptr %v0, ptr %t342, i64 %t343)
  call void @llvm.memmove.p0.p0.i64(ptr %l191, ptr %t344, i64 152, i1 false)
  br label %bb68
bb67:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb69
bb68:
  %t347 = getelementptr %"compiler/eval:scope", ptr %l191, i32 0, i32 15
  %t348 = load i1, ptr %t347, !tbaa !21
  store i1 %t348, ptr %l187, !tbaa !21
  br label %bb69
bb69:
  %t350 = load i1, ptr %l187, !tbaa !21
  br i1 %t350, label %bb70, label %bb71
bb70:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t353 = getelementptr %"compiler/eval:Machine", ptr %t351, i32 0, i32 52
  %t354 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t355, ptr %v0, ptr %t353, i64 %t354)
  call void @llvm.memmove.p0.p0.i64(ptr %l196, ptr %t355, i64 152, i1 false)
  br label %bb72
bb71:
  br label %bb80
bb72:
  %t358 = getelementptr %"compiler/eval:scope", ptr %l196, i32 0, i32 3
  %t359 = load i64, ptr %t358, !tbaa !24
  store i64 %t359, ptr %l23, !tbaa !24
  br label %bb73
bb73:
  %t361 = load i64, ptr %l23, !tbaa !24
  %t363 = icmp ne i64 %t361, 0
  %t365 = xor i1 %t363, true
  br i1 %t365, label %bb74, label %bb75
bb74:
  br label %bb79
bb75:
  br label %bb76
bb76:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/eval:Machine", ptr %t367, i32 0, i32 17
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/eval:Machine", ptr %t370, i32 0, i32 49
  %t373 = load { i64, ptr }, ptr %t372, !tbaa !27
  store { i64, ptr } %t373, ptr %l204, !tbaa !27
  %t374 = load i64, ptr %l23, !tbaa !24
  %t376 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = getelementptr %"compiler/eval:alloc", ptr %t377, i64 %t374
  %t379 = getelementptr %"compiler/eval:alloc", ptr %t378, i32 0, i32 3
  %t380 = load i64, ptr %t379, !tbaa !24
  %t381 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t381, ptr %l207, !tbaa !24
  %t383 = load i64, ptr %l207, !tbaa !24
  %t384 = load i64, ptr %l207, !tbaa !24
  %t385 = shl i64 %t380, %t384
  %t386 = load i64, ptr %l23, !tbaa !24
  %t389 = or i64 %t385, %t386
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t369, i64 %t389, i1 true)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 49
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  store { i64, ptr } %t395, ptr %l212, !tbaa !27
  %t396 = load i64, ptr %l23, !tbaa !24
  %t398 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr %"compiler/eval:alloc", ptr %t399, i64 %t396
  %t401 = getelementptr %"compiler/eval:alloc", ptr %t400, i32 0, i32 7
  %t402 = load i64, ptr %t401, !tbaa !24
  store i64 %t402, ptr %l23, !tbaa !24
  br label %bb73
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/eval:Machine", ptr %t404, i32 0, i32 52
  %t407 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t408, ptr %v0, ptr %t406, i64 %t407)
  call void @llvm.memmove.p0.p0.i64(ptr %l218, ptr %t408, i64 152, i1 false)
  br label %bb82
bb82:
  %t411 = getelementptr %"compiler/eval:scope", ptr %l218, i32 0, i32 3
  %t412 = load i64, ptr %t411, !tbaa !24
  %t414 = icmp ne i64 %t412, 0
  %t416 = xor i1 %t414, true
  br i1 %t416, label %bb83, label %bb84
bb83:
  br label %bb89
bb84:
  br label %bb85
bb85:
  %t418 = load ptr, ptr %l0, !tbaa !29
  store ptr %t418, ptr %l222, !tbaa !29
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr %"compiler/eval:Machine", ptr %t419, i32 0, i32 52
  %t422 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t423, ptr %v0, ptr %t421, i64 %t422)
  call void @llvm.memmove.p0.p0.i64(ptr %l226, ptr %t423, i64 152, i1 false)
  br label %bb86
bb86:
  %t426 = getelementptr %"compiler/eval:scope", ptr %l226, i32 0, i32 3
  %t427 = load i64, ptr %t426, !tbaa !24
  %t428 = load ptr, ptr %l222, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t428, i64 %t427)
  br label %bb87
bb87:
  br label %bb88
bb88:
  br label %bb81
bb89:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/eval:Machine", ptr %t430, i32 0, i32 52
  %t433 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t434, ptr %v0, ptr %t432, i64 %t433)
  call void @llvm.memmove.p0.p0.i64(ptr %l231, ptr %t434, i64 152, i1 false)
  br label %bb90
bb90:
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %l231, i64 152, i1 false)
  %t437 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 1
  store i1 false, ptr %t437, !tbaa !21
  %t438 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 15
  store i1 false, ptr %t438, !tbaa !21
  %t439 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 0
  %t440 = load i64, ptr %t439, !tbaa !24
  %t442 = add i64 %t440, 1
  %t444 = and i64 %t442, 274877906943
  %t446 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 0
  store i64 %t444, ptr %t446, !tbaa !24
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/eval:Machine", ptr %t447, i32 0, i32 52
  %t450 = load i64, ptr %l2, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l238, ptr %l24, i64 152, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t453, ptr %l238, i64 152, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t449, i64 %t450, ptr %t453)
  br label %bb91
bb91:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/eval:Machine", ptr %t454, i32 0, i32 53
  %t457 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t456, i64 %t457)
  br label %bb92
bb92:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/eval:Machine", ptr %t460, i32 0, i32 62
  %t464 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t462)
  %t465 = extractvalue { i32, i64 } %t464, 1
  %t466 = extractvalue { i32, i64 } %t464, 0
  store i32 %t466, ptr %l246
  %t467 = icmp ne i32 %t466, 0
  br i1 %t467, label %bb94, label %ok.468, !prof !99
ok.468:
  store i64 %t465, ptr %l245
  br label %bb93
bb93:
  %t469 = load i64, ptr %l245, !tbaa !24
  store i64 %t469, ptr %l242, !tbaa !24
  br label %bb96
bb94:
  br label %bb95
bb95:
  br label %bb96
bb96:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v1, ptr %a0, { i64, [5 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 22
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 20
  store { i64, [5 x i64] } %a1, ptr %t13
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2estopAtComparison(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, [8 x i64] }
  %l5 = alloca i32
  %l13 = alloca i1
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l39 = alloca %"compiler/mir:BasicBlock"
  %l41 = alloca %"compiler/mir:BasicBlock"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  store i64 %t6, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp sgt i64 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 26
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 58
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr %"compiler/eval:frame", ptr %t23, i64 %t20
  %t25 = getelementptr %"compiler/eval:frame", ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr %"compiler/eval:cfn", ptr %t29, i64 %t26
  %t31 = getelementptr %"compiler/eval:cfn", ptr %t30, i32 0, i32 17
  %t32 = load i1, ptr %t31, !tbaa !21
  store i1 %t32, ptr %l13, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t34 = load i1, ptr %l13, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = sub i64 %t37, 1
  store i64 %t39, ptr %l1, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 25
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 58
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  store { i64, ptr } %t51, ptr %l29, !tbaa !27
  %t52 = load i64, ptr %l1, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr %"compiler/eval:frame", ptr %t55, i64 %t52
  %t57 = getelementptr %"compiler/eval:frame", ptr %t56, i32 0, i32 0
  %t58 = load i64, ptr %t57, !tbaa !24
  %t61 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t47, i64 %t58)
  store ptr %t61, ptr %l32
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l32, !tbaa !29
  store ptr %t62, ptr %l2, !tbaa !29
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/mir:Fn", ptr %t63, i32 0, i32 9
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 58
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l36, !tbaa !27
  %t70 = load i64, ptr %l1, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr %"compiler/eval:frame", ptr %t73, i64 %t70
  %t75 = getelementptr %"compiler/eval:frame", ptr %t74, i32 0, i32 1
  %t76 = load i64, ptr %t75, !tbaa !24
  %t79 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %s0, ptr %t65, i64 %t76)
  store %"compiler/mir:BasicBlock" %t79, ptr %l39
  br label %bb14
bb14:
  %t81 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %s0, ptr %l39)
  store %"compiler/mir:BasicBlock" %t81, ptr %l41
  br label %bb15
bb15:
  %t82 = getelementptr %"compiler/mir:BasicBlock", ptr %l41, i32 0, i32 1
  %t83 = load { i64, [8 x i64] }, ptr %t82
  store { i64, [8 x i64] } %t83, ptr %l3
  %t85 = load { i64, [8 x i64] }, ptr %l3
  %t87 = extractvalue { i64, [8 x i64] } %t85, 0
  %t88 = icmp eq i64 %t87, 4
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = getelementptr { i64, [8 x i64] }, ptr %l3, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i32 }, ptr %t90, i32 0, i32 0
  %t92 = load %"compiler/source:Span", ptr %t91
  %t94 = getelementptr { i64, [8 x i64] }, ptr %l3, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i32 }, ptr %t94, i32 0, i32 1
  %t96 = load i32, ptr %t95
  store i32 %t96, ptr %l5, !tbaa !23
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/mir:Fn", ptr %t98, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:Machine", ptr %t105, i32 0, i32 77
  store i64 %t101, ptr %t109, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/eval:Machine", ptr %t110, i32 0, i32 78
  store %"compiler/source:Span" %t92, ptr %t114
  br label %bb18
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, %"compiler/eval:Ptr" %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca %"compiler/eval:Ptr"
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l27 = alloca i32
  %l31 = alloca i32
  %l37 = alloca i32
  %l41 = alloca i64
  %l43 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l82 = alloca %"compiler/eval:Ptr"
  %l95 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca %"compiler/eval:Ptr"
  %l100 = alloca i64
  %l104 = alloca { i64, ptr }
  %l108 = alloca i32
  %l111 = alloca i1
  %l121 = alloca %"compiler/eval:Ptr"
  %l131 = alloca i64
  %l137 = alloca i64
  %l140 = alloca i64
  %l158 = alloca { i64, ptr }
  %l160 = alloca i64
  %l162 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store %"compiler/eval:Ptr" %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a2)
  store i32 %t8, ptr %l27
  br label %bb1
bb1:
  %t9 = load i32, ptr %l27, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l5, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l31
  br label %bb2
bb2:
  %t18 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l5, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l37
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t31 = load i32, ptr %l37, !tbaa !23
  store i32 %t31, ptr %l6, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l41
  br label %bb6
bb6:
  %t40 = load i64, ptr %l41, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l43, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l47
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l43, !tbaa !29
  %t54 = load i32, ptr %l47, !tbaa !23
  %t55 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t53, i32 %t54)
  store i64 %t55, ptr %l48
  br label %bb8
bb8:
  %t56 = load i64, ptr %l48, !tbaa !24
  store i64 %t56, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb9, label %bb10
bb9:
  %t63 = load i64, ptr %l10, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb14
bb11:
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l55, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb13
bb13:
  %t83 = load i64, ptr %l55, !tbaa !24
  store i64 %t83, ptr %l52, !tbaa !24
  br label %bb14
bb14:
  %t84 = load i64, ptr %l52, !tbaa !24
  store i64 %t84, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t85 = load i64, ptr %l12, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb17:
  br label %bb18
bb18:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l12, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l13, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l73, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t105 = load i64, ptr %t104, !tbaa !24
  store i64 %t105, ptr %l74, !tbaa !24
  %t106 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  store i64 %t107, ptr %l75, !tbaa !24
  %t108 = load i64, ptr %l13, !tbaa !24
  store i64 %t108, ptr %l76, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr %l6, !tbaa !23
  %t113 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t109, i32 %t110)
  store i64 %t113, ptr %l79
  br label %bb19
bb19:
  %t114 = load i64, ptr %l76, !tbaa !24
  %t115 = load i64, ptr %l79, !tbaa !24
  %t116 = mul i64 %t114, %t115
  %t117 = load i64, ptr %l75, !tbaa !24
  %t119 = add i64 %t117, %t116
  %t120 = load i64, ptr %l74, !tbaa !24
  %t122 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t120, i64 %t119)
  store %"compiler/eval:Ptr" %t122, ptr %l82
  br label %bb20
bb20:
  %t123 = load i32, ptr %l6, !tbaa !23
  %t124 = load %"compiler/eval:Ptr", ptr %l3
  %t125 = load i64, ptr %l4, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  %t134 = load ptr, ptr %l73, !tbaa !29
  %t135 = load %"compiler/eval:Ptr", ptr %l82
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %t134, %"compiler/eval:Ptr" %t135, i32 %t123, %"compiler/eval:Ptr" %t124, i64 %t133)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t139 = load i64, ptr %l12, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l12, !tbaa !24
  br label %bb15
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l5, !tbaa !23
  %t150 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t146, i32 %t147)
  store i64 %t150, ptr %l95
  br label %bb25
bb25:
  %t151 = load i64, ptr %l95, !tbaa !24
  store i64 %t151, ptr %l14, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l96, !tbaa !29
  %t153 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t153, ptr %l97
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i32, ptr %l5, !tbaa !23
  %t158 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t154, i32 %t155)
  store i64 %t158, ptr %l100
  br label %bb26
bb26:
  %t159 = load ptr, ptr %l96, !tbaa !29
  %t160 = load %"compiler/eval:Ptr", ptr %l97
  %t161 = load i64, ptr %l100, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t159, %"compiler/eval:Ptr" %t160, i64 %t161)
  br label %bb27
bb27:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 0
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t166 = load i32, ptr %l5, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %s0, ptr %t165, i32 %t166)
  store { i64, ptr } %t169, ptr %l104
  br label %bb28
bb28:
  %t170 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t170, ptr %l15, !tbaa !27
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/eval:Machine", ptr %t171, i32 0, i32 0
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t175 = load i32, ptr %l5, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l108
  br label %bb29
bb29:
  %t179 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t180 = load i32, ptr %l108, !tbaa !23
  %t182 = icmp eq i32 %t180, %t179
  br i1 %t182, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb32
bb31:
  %t184 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t188 = icmp eq i64 %t186, 0
  store i1 %t188, ptr %l111, !tbaa !21
  br label %bb32
bb32:
  %t190 = load i1, ptr %l111, !tbaa !21
  br i1 %t190, label %bb33, label %bb34
bb33:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/eval:Ptr", ptr %l1
  %t193 = load %"compiler/eval:Ptr", ptr %l3
  %t194 = load i64, ptr %l4, !tbaa !24
  %t195 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t191, %"compiler/eval:Ptr" %t192, i64 0, %"compiler/eval:Ptr" %t193, i64 %t194, i64 %t195)
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb36:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t201, i64 3, i64 8)
  store %"compiler/eval:Ptr" %t203, ptr %l121
  br label %bb37
bb37:
  %t204 = load %"compiler/eval:Ptr", ptr %l121
  store %"compiler/eval:Ptr" %t204, ptr %l16
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load %"compiler/eval:Ptr", ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t205, %"compiler/eval:Ptr" %t206, i64 8)
  br label %bb38
bb38:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/eval:Ptr", ptr %l16
  %t211 = load %"compiler/eval:Ptr", ptr %l3
  %t212 = load i64, ptr %l4, !tbaa !24
  %t213 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t209, %"compiler/eval:Ptr" %t210, i64 0, %"compiler/eval:Ptr" %t211, i64 %t212, i64 %t213)
  br label %bb39
bb39:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load %"compiler/eval:Ptr", ptr %l16
  %t223 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t219, %"compiler/eval:Ptr" %t220, i64 8)
  store i64 %t223, ptr %l131
  br label %bb40
bb40:
  %t224 = load i64, ptr %l131, !tbaa !24
  store i64 %t224, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  %t225 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t225, 0
  store i64 %t227, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t229 = load i64, ptr %l19, !tbaa !24
  %t230 = load i64, ptr %l18, !tbaa !24
  %t233 = icmp sgt i64 %t229, %t230
  br i1 %t233, label %bb41, label %bb42
bb41:
  %t235 = load i64, ptr %l20, !tbaa !24
  %t237 = icmp sgt i64 %t235, 0
  br i1 %t237, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb46
bb43:
  %t239 = load i64, ptr %l19, !tbaa !24
  %t240 = load i64, ptr %l18, !tbaa !24
  %t243 = sub i64 %t239, %t240
  %t244 = load i64, ptr %l20, !tbaa !24
  %t247 = add i64 %t243, %t244
  %t249 = sub i64 %t247, 1
  %t250 = load i64, ptr %l20, !tbaa !24
  %t253 = sdiv i64 %t249, %t250
  store i64 %t253, ptr %l140, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb45
bb45:
  %t255 = load i64, ptr %l140, !tbaa !24
  store i64 %t255, ptr %l137, !tbaa !24
  br label %bb46
bb46:
  %t256 = load i64, ptr %l137, !tbaa !24
  store i64 %t256, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb47
bb47:
  %t257 = load i64, ptr %l22, !tbaa !24
  %t258 = load i64, ptr %l21, !tbaa !24
  %t261 = icmp slt i64 %t257, %t258
  %t263 = xor i1 %t261, true
  br i1 %t263, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t265 = load i64, ptr %l18, !tbaa !24
  %t266 = load i64, ptr %l22, !tbaa !24
  %t267 = load i64, ptr %l20, !tbaa !24
  %t270 = mul i64 %t266, %t267
  %t273 = add i64 %t265, %t270
  store i64 %t273, ptr %l23, !tbaa !24
  %t275 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t275, ptr %l158, !tbaa !27
  %t276 = load i64, ptr %l23, !tbaa !24
  %t278 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr i64, ptr %t279, i64 %t276
  %t281 = load i64, ptr %t280, !tbaa !34
  store i64 %t281, ptr %l160, !tbaa !24
  %t282 = load i64, ptr %l14, !tbaa !24
  %t284 = call i64 @compiler_2feval_2ebmask(i64 %t282)
  store i64 %t284, ptr %l162
  br label %bb51
bb51:
  %t285 = load i64, ptr %l160, !tbaa !24
  %t286 = load i64, ptr %l162, !tbaa !24
  %t287 = and i64 %t285, %t286
  %t288 = load i64, ptr %l17, !tbaa !24
  %t291 = icmp eq i64 %t287, %t288
  br i1 %t291, label %bb52, label %bb53
bb52:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load %"compiler/eval:Ptr", ptr %l1
  %t295 = load i64, ptr %l23, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t293, %"compiler/eval:Ptr" %t294, i64 4, i64 %t295)
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb55:
  br label %bb56
bb56:
  %t299 = load i64, ptr %l22, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l22, !tbaa !24
  br label %bb47
bb57:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t305 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t305, ptr %t303, { i64, ptr } %t304)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewaitsForTask(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/eval:task"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca { i64, [21 x i64] }
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l35 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l48 = alloca i64
  %l51 = alloca i64
  %l70 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l83 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i64
  %l111 = alloca %"compiler/eval:scope"
  %l113 = alloca i1
  %l117 = alloca %"compiler/eval:scope"
  %l124 = alloca i1
  %l127 = alloca i1
  %l137 = alloca %"compiler/eval:task"
  %l139 = alloca { i64, ptr }
  %l147 = alloca i64
  %l150 = alloca i64
  %l168 = alloca { i64, ptr }
  %l170 = alloca { i64, [21 x i64] }
  %l171 = alloca { i64, [21 x i64] }
  %l173 = alloca i1
  %l185 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t156 = alloca %"compiler/eval:scope", align 8
  %t166 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t3, ptr %l35
  br label %bb1
bb1:
  %t4 = load i1, ptr %l35, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t5 = load i1, ptr %l2, !tbaa !21
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t11, ptr %l40
  br label %bb4
bb3:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i1, ptr %l40, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l38, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 59
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb14
bb11:
  %t32 = load i64, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l51, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l51, !tbaa !24
  store i64 %t48, ptr %l48, !tbaa !24
  br label %bb14
bb14:
  %t49 = load i64, ptr %l48, !tbaa !24
  store i64 %t49, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb16, label %bb17
bb16:
  br label %bb23
bb17:
  br label %bb18
bb18:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l9, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 58
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l70, !tbaa !27
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"compiler/eval:frame", ptr %t75, i64 %t72
  %t77 = getelementptr %"compiler/eval:frame", ptr %t76, i32 0, i32 7
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load i64, ptr @G_2ecompiler_2feval_2erTask, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 58
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l76, !tbaa !27
  %t88 = load i64, ptr %l9, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr %"compiler/eval:frame", ptr %t91, i64 %t88
  %t93 = getelementptr %"compiler/eval:frame", ptr %t92, i32 0, i32 8
  %t94 = load i64, ptr %t93, !tbaa !24
  store i64 %t94, ptr %l3, !tbaa !24
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l8, !tbaa !24
  br label %bb15
bb23:
  store i1 false, ptr %l10, !tbaa !21
  store i64 1, ptr %l11, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 52
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t102)
  store i64 %t104, ptr %l83
  br label %bb24
bb24:
  %t105 = load i64, ptr %l83, !tbaa !24
  store i64 %t105, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t106 = load i64, ptr %l12, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t110 = icmp sgt i64 %t106, %t107
  br i1 %t110, label %bb25, label %bb26
bb25:
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = icmp sgt i64 %t112, 0
  br i1 %t114, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb30
bb27:
  %t116 = load i64, ptr %l12, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = sub i64 %t116, %t117
  %t121 = load i64, ptr %l13, !tbaa !24
  %t124 = add i64 %t120, %t121
  %t126 = sub i64 %t124, 1
  %t127 = load i64, ptr %l13, !tbaa !24
  %t130 = sdiv i64 %t126, %t127
  store i64 %t130, ptr %l90, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb29
bb29:
  %t132 = load i64, ptr %l90, !tbaa !24
  store i64 %t132, ptr %l87, !tbaa !24
  br label %bb30
bb30:
  %t133 = load i64, ptr %l87, !tbaa !24
  store i64 %t133, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  %t134 = load i64, ptr %l15, !tbaa !24
  %t135 = load i64, ptr %l14, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb32, label %bb33
bb32:
  br label %bb44
bb33:
  br label %bb34
bb34:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t143 = load i64, ptr %l15, !tbaa !24
  %t144 = load i64, ptr %l13, !tbaa !24
  %t147 = mul i64 %t143, %t144
  %t150 = add i64 %t142, %t147
  store i64 %t150, ptr %l16, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 52
  %t155 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t156, ptr %v0, ptr %t154, i64 %t155)
  call void @llvm.memmove.p0.p0.i64(ptr %l111, ptr %t156, i64 152, i1 false)
  br label %bb35
bb35:
  %t159 = getelementptr %"compiler/eval:scope", ptr %l111, i32 0, i32 1
  %t160 = load i1, ptr %t159, !tbaa !21
  br i1 %t160, label %bb36, label %bb37
bb36:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 52
  %t165 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t166, ptr %v0, ptr %t164, i64 %t165)
  call void @llvm.memmove.p0.p0.i64(ptr %l117, ptr %t166, i64 152, i1 false)
  br label %bb38
bb37:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb39
bb38:
  %t169 = getelementptr %"compiler/eval:scope", ptr %l117, i32 0, i32 10
  %t170 = load i64, ptr %t169, !tbaa !24
  %t172 = icmp sge i64 %t170, 0
  store i1 %t172, ptr %l113, !tbaa !21
  br label %bb39
bb39:
  %t174 = load i1, ptr %l113, !tbaa !21
  br i1 %t174, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t175 = load i64, ptr %l15, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l15, !tbaa !24
  br label %bb31
bb44:
  %t179 = load i1, ptr %l2, !tbaa !21
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb45, label %bb46
bb45:
  %t183 = load i1, ptr %l10, !tbaa !21
  %t185 = xor i1 %t183, true
  store i1 %t185, ptr %l124, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb47
bb47:
  %t187 = load i1, ptr %l124, !tbaa !21
  br i1 %t187, label %bb48, label %bb49
bb48:
  %t188 = load i64, ptr %l3, !tbaa !24
  %t190 = icmp slt i64 %t188, 0
  store i1 %t190, ptr %l127, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb50
bb50:
  %t192 = load i1, ptr %l127, !tbaa !21
  br i1 %t192, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 92
  store i64 -1, ptr %t196, !tbaa !24
  %t197 = load i64, ptr %l3, !tbaa !24
  %t199 = icmp sge i64 %t197, 0
  br i1 %t199, label %bb54, label %bb55
bb54:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/eval:Machine", ptr %t201, i32 0, i32 56
  %t204 = load i64, ptr %l3, !tbaa !24
  %t207 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t203, i64 %t204)
  store %"compiler/eval:task" %t207, ptr %l137
  br label %bb56
bb55:
  br label %bb75
bb56:
  %t208 = load %"compiler/eval:task", ptr %l137
  store %"compiler/eval:task" %t208, ptr %l17
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/eval:Machine", ptr %t209, i32 0, i32 26
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  store { i64, ptr } %t212, ptr %l139, !tbaa !27
  %t213 = getelementptr %"compiler/eval:task", ptr %l17, i32 0, i32 0
  %t214 = load i64, ptr %t213, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr %"compiler/eval:cfn", ptr %t217, i64 %t214
  %t219 = getelementptr %"compiler/eval:cfn", ptr %t218, i32 0, i32 7
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t222 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t222, 0
  store i64 %t224, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t226 = load i64, ptr %l20, !tbaa !24
  %t227 = load i64, ptr %l19, !tbaa !24
  %t230 = icmp sgt i64 %t226, %t227
  br i1 %t230, label %bb57, label %bb58
bb57:
  %t232 = load i64, ptr %l21, !tbaa !24
  %t234 = icmp sgt i64 %t232, 0
  br i1 %t234, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb62
bb59:
  %t236 = load i64, ptr %l20, !tbaa !24
  %t237 = load i64, ptr %l19, !tbaa !24
  %t240 = sub i64 %t236, %t237
  %t241 = load i64, ptr %l21, !tbaa !24
  %t244 = add i64 %t240, %t241
  %t246 = sub i64 %t244, 1
  %t247 = load i64, ptr %l21, !tbaa !24
  %t250 = sdiv i64 %t246, %t247
  store i64 %t250, ptr %l150, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb61
bb61:
  %t252 = load i64, ptr %l150, !tbaa !24
  store i64 %t252, ptr %l147, !tbaa !24
  br label %bb62
bb62:
  %t253 = load i64, ptr %l147, !tbaa !24
  store i64 %t253, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb63
bb63:
  %t254 = load i64, ptr %l23, !tbaa !24
  %t255 = load i64, ptr %l22, !tbaa !24
  %t258 = icmp slt i64 %t254, %t255
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb64, label %bb65
bb64:
  br label %bb74
bb65:
  br label %bb66
bb66:
  %t262 = load i64, ptr %l19, !tbaa !24
  %t263 = load i64, ptr %l23, !tbaa !24
  %t264 = load i64, ptr %l21, !tbaa !24
  %t267 = mul i64 %t263, %t264
  %t270 = add i64 %t262, %t267
  %t272 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t272, ptr %l168, !tbaa !27
  %t275 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !27
  %t277 = getelementptr { i64, [21 x i64] }, ptr %t276, i64 %t270
  call void @llvm.memmove.p0.p0.i64(ptr %l170, ptr %t277, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %l170, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l171, ptr %l25, i64 176, i1 false)
  %t278 = load { i64, [21 x i64] }, ptr %l171
  %t279 = extractvalue { i64, [21 x i64] } %t278, 0
  %t280 = icmp eq i64 %t279, 12
  br i1 %t280, label %bb67, label %bb68
bb67:
  %t282 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t283 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t282, i32 0, i32 0
  %t284 = load %"compiler/source:Span", ptr %t283
  store %"compiler/source:Span" %t284, ptr %l26
  %t286 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t287 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t286, i32 0, i32 1
  %t288 = load i32, ptr %t287
  store i32 %t288, ptr %l27, !tbaa !23
  %t290 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t290, i32 0, i32 2
  %t292 = load i32, ptr %t291
  %t296 = sext i32 %t292 to i64
  %t297 = getelementptr %"compiler/eval:task", ptr %l17, i32 0, i32 1
  %t298 = load i64, ptr %t297, !tbaa !24
  %t301 = icmp eq i64 %t296, %t298
  store i1 %t301, ptr %l173, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb69
bb69:
  %t303 = load i1, ptr %l173, !tbaa !21
  br i1 %t303, label %bb70, label %bb71
bb70:
  %t304 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t305 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t304, i32 0, i32 0
  %t306 = load %"compiler/source:Span", ptr %t305
  %t308 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t308, i32 0, i32 1
  %t310 = load i32, ptr %t309
  store i32 %t310, ptr %l30, !tbaa !23
  %t312 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t313 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t312, i32 0, i32 2
  %t314 = load i32, ptr %t313
  store i32 %t314, ptr %l31, !tbaa !23
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/eval:Machine", ptr %t316, i32 0, i32 26
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l185, !tbaa !27
  %t320 = getelementptr %"compiler/eval:task", ptr %l17, i32 0, i32 0
  %t321 = load i64, ptr %t320, !tbaa !24
  %t323 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr %"compiler/eval:cfn", ptr %t324, i64 %t321
  %t326 = getelementptr %"compiler/eval:cfn", ptr %t325, i32 0, i32 0
  %t327 = load i64, ptr %t326, !tbaa !24
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/eval:Machine", ptr %t331, i32 0, i32 92
  store i64 %t327, ptr %t335, !tbaa !24
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/eval:Machine", ptr %t336, i32 0, i32 93
  store %"compiler/source:Span" %t306, ptr %t340
  br label %bb72
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t341 = load i64, ptr %l23, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l23, !tbaa !24
  br label %bb63
bb74:
  br label %bb75
bb75:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWaits, !tbaa !27
  %t347 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t347, ptr %t345, { i64, ptr } %t346)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eweakRead(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { %"compiler/eval:Ptr", i32 }
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca %"compiler/eval:Ptr"
  %l10 = alloca { %"compiler/eval:Ptr", i32 }
  %l16 = alloca %"compiler/eval:Ptr"
  %l19 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1, i64 %a1, %"compiler/mir:Lvalue" %a3)
  store { %"compiler/eval:Ptr", i32 } %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i32 }, ptr %l10
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l4
  %t9 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l4, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l5
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 22
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load %"compiler/eval:Ptr", ptr %l5
  %t21 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t17, %"compiler/eval:Ptr" %t18)
  store %"compiler/eval:Ptr" %t21, ptr %l16
  br label %bb5
bb5:
  %t22 = load %"compiler/eval:Ptr", ptr %l16
  store %"compiler/eval:Ptr" %t22, ptr %l6
  %t23 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = icmp ne i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/eval:Ptr", ptr %l6
  %t32 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenLive(ptr %v0, ptr %t28, %"compiler/eval:Ptr" %t29)
  store i1 %t32, ptr %l22
  br label %bb8
bb7:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb9
bb8:
  %t33 = load i1, ptr %l22, !tbaa !21
  %t34 = xor i1 %t33, true
  store i1 %t34, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 1
  %t40 = load i32, ptr %t39, !range !{i32 0, i32 2}
  %t42 = trunc i64 1 to i32
  %t43 = icmp eq i32 %t40, %t42
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t46 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t46, ptr %l6
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t48 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = icmp ne i64 %t49, 0
  br i1 %t51, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/eval:Ptr", ptr %l6
  %t57 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %t53, %"compiler/eval:Ptr" %t54)
  store i64 %t57, ptr %l34
  br label %bb18
bb17:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb19
bb18:
  %t58 = load i64, ptr %l34, !tbaa !24
  %t59 = icmp eq i64 %t58, 0
  store i1 %t59, ptr %l31, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l31, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 1
  %t65 = load i32, ptr %t64, !range !{i32 0, i32 2}
  %t67 = trunc i64 0 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb22, label %bb23
bb21:
  br label %bb26
bb22:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWeakUnheld, !tbaa !27
  %t72 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t72, ptr %t70, { i64, ptr } %t71)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %ret
bb25:
  %t75 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t75, ptr %l6
  br label %bb26
bb26:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t77, %"compiler/eval:Ptr" %a2, %"compiler/eval:Ptr" %t79)
  br label %bb27
bb27:
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [7 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l38 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l45 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l54 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %l58 = alloca i1
  %l61 = alloca i1
  %l62 = alloca i32
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, %"compiler/source:Span" }
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l5, !tbaa !24
  %t10 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t11 = getelementptr { i64, i32 }, ptr %t10, i32 0, i32 1
  %t12 = load i32, ptr %t11
  store i32 %t12, ptr %l6, !tbaa !23
  br label %bb3
bb2:
  br label %bb18
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 34
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l19
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb5, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l18
  br label %bb4
bb4:
  %t25 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t25, ptr %l14, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l14, !tbaa !27
  br label %bb7
bb7:
  %t26 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t27, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t29, ptr %l21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l21, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t33, ptr %l24, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l26, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l30
  br label %bb11
bb10:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb14
bb11:
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = load i32, ptr %l30, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t46, i32 %t47)
  store { i64, ptr } %t48, ptr %l31
  br label %bb12
bb12:
  %t49 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t53 = call i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %t51, i64 %t50)
  store i1 %t53, ptr %l33
  br label %bb13
bb13:
  %t54 = load i1, ptr %l33, !tbaa !21
  %t55 = xor i1 %t54, true
  store i1 %t55, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l23, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyExtern, !tbaa !27
  %t60 = load %"compiler/source:Span", ptr %l2
  %t62 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t58, 0
  %t64 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t62, %"compiler/source:Span" %t60, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t64, ptr %l38
  %t65 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l38, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l39, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l40, !tbaa !24
  %t69 = load i64, ptr %l40, !tbaa !24
  %t70 = mul i64 %t69, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l41, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l40, !tbaa !24
  %t79 = mul i64 %t78, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t75, ptr %t77, i64 %t79, i1 false)
  %t80 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t81 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l38, i32 0, i32 0
  store { i64, ptr } %t80, ptr %t81, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t82 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l38
  store { { i64, ptr }, %"compiler/source:Span" } %t82, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  br label %bb40
bb18:
  %t83 = load { i64, [7 x i64] }, ptr %l1
  %t85 = extractvalue { i64, [7 x i64] } %t83, 0
  %t86 = icmp eq i64 %t85, 0
  br i1 %t86, label %bb19, label %bb20
bb19:
  %t88 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t89 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t88, i32 0, i32 0
  %t90 = load { i64, [2 x i64] }, ptr %t89
  store { i64, [2 x i64] } %t90, ptr %l8
  br label %bb21
bb20:
  br label %bb35
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 30
  %t95 = load { i64, [2 x i64] }, ptr %l8
  %t98 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t94, { i64, [2 x i64] } %t95)
  %t99 = extractvalue { i32, i64 } %t98, 1
  %t100 = extractvalue { i32, i64 } %t98, 0
  store i32 %t100, ptr %l50
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb23, label %ok.102, !prof !99
ok.102:
  store i64 %t99, ptr %l49
  br label %bb22
bb22:
  %t103 = load i64, ptr %l49, !tbaa !24
  store i64 %t103, ptr %l45, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  %t104 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t106 = load %"compiler/source:Span", ptr %l2
  %t108 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t104, 0
  %t110 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t108, %"compiler/source:Span" %t106, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t110, ptr %l54
  %t111 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l54, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l55, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  store i64 %t114, ptr %l56, !tbaa !24
  %t115 = load i64, ptr %l56, !tbaa !24
  %t116 = mul i64 %t115, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t116)
  %t118 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l57, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l56, !tbaa !24
  %t125 = mul i64 %t124, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t121, ptr %t123, i64 %t125, i1 false)
  %t126 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t127 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l54, i32 0, i32 0
  store { i64, ptr } %t126, ptr %t127, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t128 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l54
  store { { i64, ptr }, %"compiler/source:Span" } %t128, ptr %rv
  br label %ret
bb25:
  %t129 = load i64, ptr %l45, !tbaa !24
  store i64 %t129, ptr %l9, !tbaa !24
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v1, ptr %t130, i64 %t131)
  %t135 = extractvalue { i32, i1 } %t134, 1
  %t136 = extractvalue { i32, i1 } %t134, 0
  store i32 %t136, ptr %l62
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb27, label %ok.138, !prof !99
ok.138:
  store i1 %t135, ptr %l61
  br label %bb26
bb26:
  %t139 = load i1, ptr %l61, !tbaa !21
  store i1 %t139, ptr %l58, !tbaa !21
  br label %bb29
bb27:
  br label %bb28
bb28:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb29
bb29:
  %t140 = load i1, ptr %l58, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb30, label %bb31
bb30:
  %t143 = load ptr, ptr %l3, !tbaa !29
  %t144 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t143, i64 %t144, i1 true)
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t148 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %a4, i64 %t148)
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_69287ebff671eb2d_9fd35f0201a42c21)
  unreachable
bb40:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l68, !tbaa !27
  %t151 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t151, ptr %l69, !tbaa !27
  %t152 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t152, ptr %l70
  br label %bb41
bb41:
  %t153 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t154 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t153, 0
  %t155 = load %"compiler/source:Span", ptr %l70
  %t156 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t154, %"compiler/source:Span" %t155, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t156, ptr %l71
  %t157 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l71, i32 0, i32 0
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l72, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  store i64 %t160, ptr %l73, !tbaa !24
  %t161 = load i64, ptr %l73, !tbaa !24
  %t162 = mul i64 %t161, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t162)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  store { i64, ptr } %t165, ptr %l74, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = load i64, ptr %l73, !tbaa !24
  %t171 = mul i64 %t170, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t167, ptr %t169, i64 %t171, i1 false)
  %t172 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t173 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l71, i32 0, i32 0
  store { i64, ptr } %t172, ptr %t173, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t174 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l71
  store { { i64, ptr }, %"compiler/source:Span" } %t174, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/eval:Machine", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  store ptr %t5, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a1)
  store i32 %t13, ptr %l9
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load i32, ptr %l9, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb5
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = ashr i64 %t18, 63
  store i64 %t20, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = insertvalue { i64, i64 } undef, i64 %t22, 0
  %t24 = load i64, ptr %l11, !tbaa !24
  %t25 = insertvalue { i64, i64 } %t23, i64 %t24, 1
  store { i64, i64 } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOp(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i64
  %l49 = alloca { i64, [4 x i64] }
  %l50 = alloca i32
  %l51 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t7 = load i64, ptr %l12, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i32 0, ptr %l4, !tbaa !23
  %t12 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l5, !tbaa !23
  store i32 1, ptr %l6, !tbaa !23
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = load i32, ptr %l4, !tbaa !23
  %t19 = icmp sgt i32 %t15, %t16
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i32, ptr %l6, !tbaa !23
  %t23 = icmp sgt i32 %t21, 0
  br i1 %t23, label %bb7, label %bb8
bb6:
  store i32 0, ptr %l20, !tbaa !23
  br label %bb10
bb7:
  %t25 = load i32, ptr %l5, !tbaa !23
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = sub i32 %t25, %t26
  %t30 = load i32, ptr %l6, !tbaa !23
  %t33 = add i32 %t29, %t30
  %t35 = sub i32 %t33, 1
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = sdiv i32 %t35, %t36
  store i32 %t39, ptr %l23, !tbaa !23
  br label %bb9
bb8:
  store i32 0, ptr %l23, !tbaa !23
  br label %bb9
bb9:
  %t41 = load i32, ptr %l23, !tbaa !23
  store i32 %t41, ptr %l20, !tbaa !23
  br label %bb10
bb10:
  %t42 = load i32, ptr %l20, !tbaa !23
  store i32 %t42, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  br label %bb11
bb11:
  %t43 = load i32, ptr %l8, !tbaa !23
  %t44 = load i32, ptr %l7, !tbaa !23
  %t47 = icmp slt i32 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb22
bb13:
  br label %bb14
bb14:
  %t51 = load i32, ptr %l4, !tbaa !23
  %t52 = load i32, ptr %l8, !tbaa !23
  %t53 = load i32, ptr %l6, !tbaa !23
  %t56 = mul i32 %t52, %t53
  %t59 = add i32 %t51, %t56
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l41, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l42, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  store i64 %t63, ptr %l43, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l1, !tbaa !24
  %t66 = load %"compiler/mir:Range", ptr %l3
  %t69 = sext i32 %t59 to i64
  %t74 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t64, i64 %t65, %"compiler/mir:Range" %t66, i64 %t69)
  store { i64, [4 x i64] } %t74, ptr %l49
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = load i64, ptr %l43, !tbaa !24
  %t77 = load { i64, [4 x i64] }, ptr %l49
  %t78 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t75, i64 %t76, { i64, [4 x i64] } %t77)
  store i32 %t78, ptr %l50
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l41, !tbaa !29
  %t80 = load i32, ptr %l50, !tbaa !23
  %t81 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t79, i32 %t80)
  store i64 %t81, ptr %l51
  br label %bb17
bb17:
  %t82 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t83 = load i64, ptr %l51, !tbaa !24
  %t85 = icmp eq i64 %t83, %t82
  br i1 %t85, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t88 = load i32, ptr %l8, !tbaa !23
  %t90 = add i32 %t88, 1
  store i32 %t90, ptr %l8, !tbaa !23
  br label %bb11
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 8, ptr %l7, !tbaa !24
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l7, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewritesAfter(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca %"compiler/mir:StmtList"
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, [21 x i64] }
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, [21 x i64] }
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca %"compiler/mir:Lvalue"
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l32 = alloca %"compiler/mir:BasicBlock"
  %l34 = alloca %"compiler/mir:BasicBlock"
  %l35 = alloca %"compiler/mir:StmtList"
  %l37 = alloca %"compiler/mir:StmtList"
  %l39 = alloca { i64, ptr }
  %l42 = alloca i64
  %l44 = alloca i64
  %l49 = alloca { i64, [21 x i64] }
  %l50 = alloca { i64, [21 x i64] }
  %l58 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l85 = alloca { i64, [21 x i64] }
  %l86 = alloca { i64, [21 x i64] }
  %l97 = alloca i1
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 25
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 58
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l22, !tbaa !27
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/eval:frame", ptr %t11, i64 %t8
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t14)
  store ptr %t17, ptr %l25
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l25, !tbaa !29
  %t21 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 9
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 58
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l29, !tbaa !27
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr %"compiler/eval:frame", ptr %t29, i64 %t26
  %t31 = getelementptr %"compiler/eval:frame", ptr %t30, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t35 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t21, i64 %t32)
  store %"compiler/mir:BasicBlock" %t35, ptr %l32
  br label %bb2
bb2:
  %t37 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %v0, ptr %l32)
  store %"compiler/mir:BasicBlock" %t37, ptr %l34
  br label %bb3
bb3:
  %t38 = getelementptr %"compiler/mir:BasicBlock", ptr %l34, i32 0, i32 0
  %t39 = load %"compiler/mir:StmtList", ptr %t38
  store %"compiler/mir:StmtList" %t39, ptr %l35
  %t41 = call %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %s0, ptr %l35)
  store %"compiler/mir:StmtList" %t41, ptr %l37
  br label %bb4
bb4:
  %t42 = load %"compiler/mir:StmtList", ptr %l37
  store %"compiler/mir:StmtList" %t42, ptr %l5
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 58
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l39, !tbaa !27
  %t47 = load i64, ptr %l1, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr %"compiler/eval:frame", ptr %t50, i64 %t47
  %t52 = getelementptr %"compiler/eval:frame", ptr %t51, i32 0, i32 2
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  store i64 %t55, ptr %l42, !tbaa !24
  %t57 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s0, ptr %l5)
  store i64 %t57, ptr %l44
  br label %bb5
bb5:
  %t58 = load i64, ptr %l42, !tbaa !24
  %t59 = load i64, ptr %l44, !tbaa !24
  %t60 = icmp sge i64 %t58, %t59
  br i1 %t60, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i32 -1, ptr %l7, !tbaa !23
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s0, ptr %l5, i64 %t63)
  store { i64, [21 x i64] } %t66, ptr %l49
  br label %bb9
bb9:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l49, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l50, ptr %l8, i64 176, i1 false)
  %t67 = load { i64, [21 x i64] }, ptr %l50
  %t68 = extractvalue { i64, [21 x i64] } %t67, 0
  %t69 = icmp eq i64 %t68, 0
  br i1 %t69, label %bb10, label %bb11
bb10:
  %t71 = getelementptr { i64, [21 x i64] }, ptr %l8, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t71, i32 0, i32 0
  %t73 = load %"compiler/source:Span", ptr %t72
  store %"compiler/source:Span" %t73, ptr %l9
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t75 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  store i32 %t76, ptr %l7, !tbaa !23
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_4d14e07bfe4410cd_6dafb030c3a12d39)
  unreachable
bb18:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l10, !tbaa !24
  %t84 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s0, ptr %l5)
  store i64 %t84, ptr %l58
  br label %bb19
bb19:
  %t85 = load i64, ptr %l58, !tbaa !24
  store i64 %t85, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb20, label %bb21
bb20:
  %t92 = load i64, ptr %l12, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb25
bb22:
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l12, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l12, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l65, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb24
bb24:
  %t112 = load i64, ptr %l65, !tbaa !24
  store i64 %t112, ptr %l62, !tbaa !24
  br label %bb25
bb25:
  %t113 = load i64, ptr %l62, !tbaa !24
  store i64 %t113, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb26
bb26:
  %t114 = load i64, ptr %l14, !tbaa !24
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb27, label %bb28
bb27:
  br label %bb48
bb28:
  br label %bb29
bb29:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t123 = load i64, ptr %l14, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  %t135 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s0, ptr %l5, i64 %t130)
  store { i64, [21 x i64] } %t135, ptr %l85
  br label %bb30
bb30:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l85, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l86, ptr %l16, i64 176, i1 false)
  %t136 = load { i64, [21 x i64] }, ptr %l86
  %t137 = extractvalue { i64, [21 x i64] } %t136, 0
  %t138 = icmp eq i64 %t137, 0
  br i1 %t138, label %bb31, label %bb32
bb31:
  %t140 = getelementptr { i64, [21 x i64] }, ptr %l16, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l17
  %t144 = getelementptr { i64, [21 x i64] }, ptr %l16, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t144, i32 0, i32 1
  %t146 = load %"compiler/mir:Lvalue", ptr %t145
  store %"compiler/mir:Lvalue" %t146, ptr %l18
  br label %bb33
bb32:
  br label %bb41
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t148 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = load i32, ptr %l7, !tbaa !23
  %t153 = icmp ne i32 %t149, %t150
  br i1 %t153, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t161 = call i1 @compiler_2feval_2ewritesGlobal(ptr %s6, ptr %l18, i64 %a2, i32 %a3)
  store i1 %t161, ptr %l97
  br label %bb37
bb37:
  %t162 = load i1, ptr %l97, !tbaa !21
  br i1 %t162, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s6)
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_9c829c68892d289c_3e4192d6cd213d68)
  unreachable
bb46:
  br label %bb47
bb47:
  %t165 = load i64, ptr %l14, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l14, !tbaa !24
  br label %bb26
bb48:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aStop_2eText(ptr %v0, ptr %v1, ptr %v2, { i64, [5 x i64] } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, [5 x i64] }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i32, i32 }
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/source:Span"
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l29 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l37 = alloca i1
  %l40 = alloca { i32, i32 }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i32
  %l46 = alloca i32
  %l48 = alloca { i64, ptr }
  %l51 = alloca i1
  %l53 = alloca { i64, ptr }
  %l56 = alloca i32
  %l58 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l64 = alloca i32
  %l66 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l77 = alloca i32
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, [5 x i64] } %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [5 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [5 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l14, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l15, !tbaa !24
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l16, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t20, ptr %l14, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb4:
  %t22 = load { i64, [5 x i64] }, ptr %l0
  %t24 = extractvalue { i64, [5 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 1
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = getelementptr i8, ptr %t37, i64 %t33
  %t39 = call i64 @__olang_fmt_i64(ptr %t38, i64 %t31)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  store { i64, ptr } %t41, ptr %rv
  br label %ret
bb8:
  %t43 = load { i64, [5 x i64] }, ptr %l0
  %t45 = extractvalue { i64, [5 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 2
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t49 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t48, i32 0, i32 0
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 20}
  store i32 %t50, ptr %l3
  %t52 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t53 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t52, i32 0, i32 2
  %t54 = load %"compiler/source:Span", ptr %t53
  store %"compiler/source:Span" %t54, ptr %l4
  %t56 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t57 = getelementptr { i32, i64, %"compiler/source:Span", { i64, ptr } }, ptr %t56, i32 0, i32 3
  %t58 = load { i64, ptr }, ptr %t57
  store { i64, ptr } %t58, ptr %l5, !tbaa !27
  br label %bb11
bb10:
  br label %bb32
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t60 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t62 = trunc i64 0 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb14
bb13:
  %t65 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t67 = trunc i64 1 to i32
  %t68 = icmp eq i32 %t65, %t67
  store i1 %t68, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t70 = load i1, ptr %l29, !tbaa !21
  br i1 %t70, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t71, ptr %l33, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l34, !tbaa !24
  %t74 = load i64, ptr %l34, !tbaa !24
  %t75 = mul i64 %t74, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l35, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = load i64, ptr %l34, !tbaa !24
  %t84 = mul i64 %t83, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t80, ptr %t82, i64 %t84, i1 false)
  %t85 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t85, ptr %l33, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  %t86 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t87 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t89 = call i1 @compiler_2fmir_2eColumned(i32 %t87)
  store i1 %t89, ptr %l37
  br label %bb18
bb18:
  %t90 = load i1, ptr %l37, !tbaa !21
  br i1 %t90, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t93 = load i32, ptr %t92, !tbaa !23
  %t96 = call { i32, i32 } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLineCol(ptr %v1, ptr %t91, i32 %t93)
  store { i32, i32 } %t96, ptr %l40
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t97 = load { i32, i32 }, ptr %l40
  store { i32, i32 } %t97, ptr %l6
  %t98 = getelementptr { i32, i32 }, ptr %l6, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  %t101 = getelementptr { i32, i32 }, ptr %l6, i32 0, i32 1
  %t102 = load i32, ptr %t101, !tbaa !23
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/source:Source", ptr %t104, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l44, !tbaa !27
  store i32 %t99, ptr %l45, !tbaa !23
  store i32 %t102, ptr %l46, !tbaa !23
  %t110 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t112 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s6, i32 %t110)
  store { i64, ptr } %t112, ptr %l48
  br label %bb22
bb22:
  %t113 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t118 = add i64 %t115, %t117
  %t119 = load i32, ptr %l45, !tbaa !23
  %t120 = sext i32 %t119 to i64
  %t121 = call i64 @__olang_fmt_i64(ptr null, i64 %t120)
  %t122 = add i64 %t118, %t121
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t125 = add i64 %t122, %t124
  %t126 = load i32, ptr %l46, !tbaa !23
  %t127 = sext i32 %t126 to i64
  %t128 = call i64 @__olang_fmt_i64(ptr null, i64 %t127)
  %t129 = add i64 %t125, %t128
  %t130 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t132 = add i64 %t129, %t131
  %t133 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t136 = add i64 %t132, %t135
  %t137 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t136)
  call void @olang_textcopy(ptr %t137, ptr %t114, i64 %t115)
  %t138 = getelementptr i8, ptr %t137, i64 %t115
  call void @olang_textcopy(ptr %t138, ptr %t116, i64 %t117)
  %t139 = getelementptr i8, ptr %t138, i64 %t117
  %t140 = call i64 @__olang_fmt_i64(ptr %t139, i64 %t120)
  %t141 = getelementptr i8, ptr %t139, i64 %t121
  call void @olang_textcopy(ptr %t141, ptr %t123, i64 %t124)
  %t142 = getelementptr i8, ptr %t141, i64 %t124
  %t143 = call i64 @__olang_fmt_i64(ptr %t142, i64 %t127)
  %t144 = getelementptr i8, ptr %t142, i64 %t128
  call void @olang_textcopy(ptr %t144, ptr %t130, i64 %t131)
  %t145 = getelementptr i8, ptr %t144, i64 %t131
  call void @olang_textcopy(ptr %t145, ptr %t134, i64 %t135)
  %t146 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t137, 1
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t147, ptr %rv
  br label %ret
bb23:
  %t149 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t151 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t149, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t151, ptr %l51
  br label %bb24
bb24:
  %t152 = load i1, ptr %l51, !tbaa !21
  br i1 %t152, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr %"compiler/source:Source", ptr %t153, i32 0, i32 0
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l53, !tbaa !27
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t158 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t159 = load i32, ptr %t158, !tbaa !23
  %t162 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v1, ptr %t157, i32 %t159)
  store i32 %t162, ptr %l56
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t163 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t165 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s8, i32 %t163)
  store { i64, ptr } %t165, ptr %l58
  br label %bb28
bb28:
  %t166 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t171 = add i64 %t168, %t170
  %t172 = load i32, ptr %l56, !tbaa !23
  %t173 = sext i32 %t172 to i64
  %t174 = call i64 @__olang_fmt_i64(ptr null, i64 %t173)
  %t175 = add i64 %t171, %t174
  %t176 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t178 = add i64 %t175, %t177
  %t179 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t182 = add i64 %t178, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t167, i64 %t168)
  %t184 = getelementptr i8, ptr %t183, i64 %t168
  call void @olang_textcopy(ptr %t184, ptr %t169, i64 %t170)
  %t185 = getelementptr i8, ptr %t184, i64 %t170
  %t186 = call i64 @__olang_fmt_i64(ptr %t185, i64 %t173)
  %t187 = getelementptr i8, ptr %t185, i64 %t174
  call void @olang_textcopy(ptr %t187, ptr %t176, i64 %t177)
  %t188 = getelementptr i8, ptr %t187, i64 %t177
  call void @olang_textcopy(ptr %t188, ptr %t180, i64 %t181)
  %t189 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t183, 1
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t190, ptr %rv
  br label %ret
bb29:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr %"compiler/source:Source", ptr %t192, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  store { i64, ptr } %t195, ptr %l61, !tbaa !27
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t198 = load i32, ptr %t197, !tbaa !23
  %t201 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v1, ptr %t196, i32 %t198)
  store i32 %t201, ptr %l64
  br label %bb30
bb30:
  %t202 = load i32, ptr %l3, !range !{i32 0, i32 20}
  %t204 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s4, i32 %t202)
  store { i64, ptr } %t204, ptr %l66
  br label %bb31
bb31:
  %t205 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t211 = add i64 %t208, %t210
  %t212 = load i32, ptr %l64, !tbaa !23
  %t213 = sext i32 %t212 to i64
  %t214 = call i64 @__olang_fmt_i64(ptr null, i64 %t213)
  %t215 = add i64 %t211, %t214
  %t216 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t218 = add i64 %t215, %t217
  %t219 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = extractvalue { i64, ptr } %t219, 0
  %t222 = add i64 %t218, %t221
  %t223 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t227 = extractvalue { i64, ptr } %t205, 1
  %t228 = extractvalue { i64, ptr } %t205, 0
  %t229 = add i64 %t225, %t228
  %t230 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t229)
  call void @olang_textcopy(ptr %t230, ptr %t207, i64 %t208)
  %t231 = getelementptr i8, ptr %t230, i64 %t208
  call void @olang_textcopy(ptr %t231, ptr %t209, i64 %t210)
  %t232 = getelementptr i8, ptr %t231, i64 %t210
  %t233 = call i64 @__olang_fmt_i64(ptr %t232, i64 %t213)
  %t234 = getelementptr i8, ptr %t232, i64 %t214
  call void @olang_textcopy(ptr %t234, ptr %t216, i64 %t217)
  %t235 = getelementptr i8, ptr %t234, i64 %t217
  call void @olang_textcopy(ptr %t235, ptr %t220, i64 %t221)
  %t236 = getelementptr i8, ptr %t235, i64 %t221
  call void @olang_textcopy(ptr %t236, ptr %t223, i64 %t224)
  %t237 = getelementptr i8, ptr %t236, i64 %t224
  call void @olang_textcopy(ptr %t237, ptr %t227, i64 %t228)
  %t238 = insertvalue { i64, ptr } undef, i64 %t229, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t230, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t239, ptr %rv
  br label %ret
bb32:
  %t241 = load { i64, [5 x i64] }, ptr %l0
  %t243 = extractvalue { i64, [5 x i64] } %t241, 0
  %t244 = icmp eq i64 %t243, 3
  br i1 %t244, label %bb33, label %bb34
bb33:
  %t246 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t247 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t246, i32 0, i32 0
  %t248 = load { i64, ptr }, ptr %t247
  store { i64, ptr } %t248, ptr %l9, !tbaa !27
  %t250 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t251 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t250, i32 0, i32 2
  %t252 = load %"compiler/source:Span", ptr %t251
  store %"compiler/source:Span" %t252, ptr %l10
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t254 = load ptr, ptr %l1, !tbaa !29
  %t256 = getelementptr %"compiler/source:Source", ptr %t254, i32 0, i32 0
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l74, !tbaa !27
  %t258 = load ptr, ptr %l1, !tbaa !29
  %t259 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 0
  %t260 = load i32, ptr %t259, !tbaa !23
  %t263 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v1, ptr %t258, i32 %t260)
  store i32 %t263, ptr %l77
  br label %bb36
bb36:
  %t264 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 1
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t270 = add i64 %t267, %t269
  %t271 = load i32, ptr %l77, !tbaa !23
  %t272 = sext i32 %t271 to i64
  %t273 = call i64 @__olang_fmt_i64(ptr null, i64 %t272)
  %t274 = add i64 %t270, %t273
  %t275 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t277 = add i64 %t274, %t276
  %t279 = extractvalue { i64, ptr } %t264, 1
  %t280 = extractvalue { i64, ptr } %t264, 0
  %t281 = add i64 %t277, %t280
  %t282 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t281)
  call void @olang_textcopy(ptr %t282, ptr %t266, i64 %t267)
  %t283 = getelementptr i8, ptr %t282, i64 %t267
  call void @olang_textcopy(ptr %t283, ptr %t268, i64 %t269)
  %t284 = getelementptr i8, ptr %t283, i64 %t269
  %t285 = call i64 @__olang_fmt_i64(ptr %t284, i64 %t272)
  %t286 = getelementptr i8, ptr %t284, i64 %t273
  call void @olang_textcopy(ptr %t286, ptr %t275, i64 %t276)
  %t287 = getelementptr i8, ptr %t286, i64 %t276
  call void @olang_textcopy(ptr %t287, ptr %t279, i64 %t280)
  %t288 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t282, 1
  store { i64, ptr } %t289, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_e6861b790824244d_fbaf0ff74301c89)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, i64 } @compiler_2feval_2efloatToWide(double %a0) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca i64
  %l2 = alloca i1
  %l4 = alloca i64
  %l7 = alloca { i64, i64 }
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  %l24 = alloca double
  %l43 = alloca { i64, i64 }
  %l49 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  store double %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr %l0, !tbaa !26
  %t3 = fcmp ogt double %t1, 0xc3e0000000000000
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load double, ptr %l0, !tbaa !26
  %t7 = fcmp olt double %t5, 0x43e0000000000000
  store i1 %t7, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load double, ptr %l0, !tbaa !26
  %t12 = fptosi double %t10 to i64
  store i64 %t12, ptr %l1, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = ashr i64 %t15, 63
  %t19 = insertvalue { i64, i64 } undef, i64 %t14, 0
  %t21 = insertvalue { i64, i64 } %t19, i64 %t17, 1
  store { i64, i64 } %t21, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load double, ptr %l0, !tbaa !26
  %t25 = fcmp olt double %t23, 0x0000000000000000
  store i1 %t25, ptr %l2, !tbaa !21
  %t27 = load i1, ptr %l2, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load double, ptr %l0, !tbaa !26
  %t31 = fneg double %t29
  store double %t31, ptr %l24, !tbaa !26
  br label %bb9
bb8:
  %t33 = load double, ptr %l0, !tbaa !26
  store double %t33, ptr %l24, !tbaa !26
  br label %bb9
bb9:
  %t35 = load double, ptr %l24, !tbaa !26
  %t38 = bitcast double %t35 to i64
  store i64 %t38, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = ashr i64 %t41, 52
  %t45 = and i64 %t43, 2047
  %t47 = sub i64 %t45, 1075
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = shl i64 1, 52
  %t52 = sub i64 %t50, 1
  %t55 = and i64 %t49, %t52
  %t56 = shl i64 1, 52
  %t59 = or i64 %t55, %t56
  %t65 = call { i64, i64 } @compiler_2feval_2eshl128(i64 %t59, i64 0, i64 %t47)
  store { i64, i64 } %t65, ptr %l43
  br label %bb10
bb10:
  %t66 = load { i64, i64 }, ptr %l43
  store { i64, i64 } %t66, ptr %l7
  %t67 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  store i64 %t68, ptr %l8, !tbaa !24
  %t70 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 1
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = load i1, ptr %l2, !tbaa !21
  br i1 %t73, label %bb11, label %bb12
bb11:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t75, i64 %t76)
  store { i64, i64 } %t79, ptr %l49
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t80 = load { i64, i64 }, ptr %l49
  store { i64, i64 } %t80, ptr %rv
  br label %ret
bb14:
  %t81 = load i64, ptr %l8, !tbaa !24
  %t82 = load i64, ptr %l9, !tbaa !24
  %t84 = insertvalue { i64, i64 } undef, i64 %t81, 0
  %t86 = insertvalue { i64, i64 } %t84, i64 %t82, 1
  store { i64, i64 } %t86, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2feval_2eminBits(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sge i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -9223372036854775808, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = sub i64 %t5, 1
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = shl i64 1, %t9
  %t12 = sub i64 0, %t10
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t14 = load i64, ptr %l3, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2emul64(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = and i64 %t1, 4294967295
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l0, !tbaa !24
  %t8 = lshr i64 %t5, 32
  store i64 %t8, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = and i64 %t11, 4294967295
  store i64 %t13, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = lshr i64 %t15, 32
  store i64 %t18, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = mul i64 %t21, %t22
  store i64 %t25, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = mul i64 %t27, %t28
  store i64 %t31, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = mul i64 %t33, %t34
  store i64 %t37, ptr %l8, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = mul i64 %t39, %t40
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = lshr i64 %t45, 32
  %t50 = load i64, ptr %l7, !tbaa !24
  %t52 = and i64 %t50, 4294967295
  %t55 = add i64 %t48, %t52
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = and i64 %t56, 4294967295
  %t61 = add i64 %t55, %t58
  store i64 %t61, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t65 = and i64 %t63, 4294967295
  %t66 = load i64, ptr %l10, !tbaa !24
  %t68 = shl i64 %t66, 32
  %t71 = or i64 %t65, %t68
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = lshr i64 %t74, 32
  %t81 = add i64 %t43, %t77
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = lshr i64 %t82, 32
  %t89 = add i64 %t81, %t85
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = lshr i64 %t90, 32
  %t97 = add i64 %t89, %t93
  %t102 = insertvalue { i64, i64 } undef, i64 %t71, 0
  %t104 = insertvalue { i64, i64 } %t102, i64 %t97, 1
  store { i64, i64 } %t104, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %a0) #0 {
entry:
  %l0 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i1
  %rv = alloca i1
  store %"compiler/mir:Lvalue" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l0, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  %t6 = extractvalue { i64, [2 x i64] } %t2, 0
  %t7 = icmp eq i64 %t6, 2
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_d44b28fe9fc96fb9_71a7ff2b834e49cd)
  unreachable
bb9:
  %t9 = load i1, ptr %l3, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2eshl128(i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l25 = alloca i64
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = insertvalue { i64, i64 } undef, i64 %t5, 0
  %t10 = insertvalue { i64, i64 } %t8, i64 %t6, 1
  store { i64, i64 } %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sge i64 %t12, 64
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load i64, ptr %l0, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t17, 64
  store i64 %t19, ptr %l12, !tbaa !24
  %t21 = load i64, ptr %l12, !tbaa !24
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = shl i64 %t16, %t22
  %t24 = insertvalue { i64, i64 } undef, i64 0, 0
  %t26 = insertvalue { i64, i64 } %t24, i64 %t23, 1
  store { i64, i64 } %t26, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t28 = load i64, ptr %l0, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  %t31 = load i64, ptr %l16, !tbaa !24
  %t32 = load i64, ptr %l16, !tbaa !24
  %t33 = shl i64 %t28, %t32
  %t34 = load i64, ptr %l1, !tbaa !24
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l19, !tbaa !24
  %t37 = load i64, ptr %l19, !tbaa !24
  %t38 = load i64, ptr %l19, !tbaa !24
  %t39 = shl i64 %t34, %t38
  %t40 = load i64, ptr %l0, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = sub i64 64, %t42
  store i64 %t44, ptr %l25, !tbaa !65
  %t47 = load i64, ptr %l25, !tbaa !65
  %t48 = load i64, ptr %l25, !tbaa !65
  %t49 = lshr i64 %t40, %t48
  %t53 = or i64 %t39, %t49
  %t55 = insertvalue { i64, i64 } undef, i64 %t33, 0
  %t57 = insertvalue { i64, i64 } %t55, i64 %t53, 1
  store { i64, i64 } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i32 @compiler_2feval_2etdecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = ptrtoint ptr %v0 to i64
  store i64 %t2, ptr %l6, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v0)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t7, 1
  %t12 = extractvalue { i64, ptr } %t7, 0
  %t13 = add i64 %t9, %t12
  %t14 = load i64, ptr %l6
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t13)
  call void @olang_textcopy(ptr %t16, ptr %t8, i64 %t9)
  %t17 = getelementptr i8, ptr %t16, i64 %t9
  call void @olang_textcopy(ptr %t17, ptr %t11, i64 %t12)
  %t18 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t16, 1
  %t21 = load i64, ptr %l6
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v0, ptr %t29, { i64, ptr } %t28)
  store i64 %t31, ptr %l11
  br label %bb3
bb3:
  %t32 = load i64, ptr %l11, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l12, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l13, !tbaa !29
  store i64 %t32, ptr %l14, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v1, ptr %v2, ptr %a1, { i64, ptr } %t37)
  store i32 %t40, ptr %l17
  br label %bb4
bb4:
  %t42 = load ptr, ptr %l13, !tbaa !29
  %t43 = load i64, ptr %l14, !tbaa !24
  %t44 = load i32, ptr %l17, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v3, ptr %t42, i64 %t43, i32 %t44, i32 %a2, i32 0)
  store i32 %t46, ptr %l19
  br label %bb5
bb5:
  %t47 = load ptr, ptr %l12, !tbaa !29
  %t48 = load i32, ptr %l19, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t47, i32 %t48, i32 0)
  store i32 %t49, ptr %l20
  br label %bb6
bb6:
  %t50 = load i32, ptr %l20, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l14 = alloca %"compiler/mir:Fn"
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l32 = alloca i32
  %l39 = alloca i32
  %l41 = alloca i32
  %l46 = alloca { i64, [21 x i64] }
  %l48 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t5 = alloca { i64, [2 x i64] }, align 8
  %t13 = alloca %"compiler/mir:Fn", align 8
  %t75 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = trunc i64 %a1 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t8 = insertvalue { i32 } undef, i32 %t3, 0
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i32 } %t8, ptr %t9
  %t10 = load { i64, [2 x i64] }, ptr %t5
  %t11 = load i32, ptr %l2, !tbaa !23
  %t12 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  call void @compiler_2fmir_3aFn_2ector(ptr %t13, ptr %v1, { i64, [2 x i64] } %t10, i32 %t11, i64 0, %"compiler/source:Span" %t12)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t13, i64 800, i1 false)
  br label %bb1
bb1:
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t17, ptr %lp3
  %t18 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %l14, i64 800, i1 false)
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l18
  br label %bb2
bb2:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i32, ptr %l18, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t25, i32 %t26)
  store { i64, ptr } %t27, ptr %l19
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t41, ptr %l26, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i32, ptr %t45, i64 %t42
  %t47 = load i32, ptr %t46, !tbaa !33
  %t49 = load ptr, ptr %lp3
  %t50 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t55 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v1, ptr %t49, i32 0, %"compiler/source:Span" %t50, i32 %t47)
  store i32 %t55, ptr %l32
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb4
bb10:
  %t60 = load ptr, ptr %lp3
  %t61 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t62 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t67 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v1, ptr %t60, i32 0, i32 %t61, i32 0, %"compiler/source:Span" %t62, i32 0)
  store i32 %t67, ptr %l39
  br label %bb11
bb11:
  %t68 = load ptr, ptr %lp3
  %t70 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t68)
  store i32 %t70, ptr %l41
  br label %bb12
bb12:
  %t71 = load ptr, ptr %lp3
  %t72 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t73 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t74 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [21 x i64] }, ptr %t75, i32 0, i32 0
  store i64 3, ptr %t76
  %t78 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t73, 0
  %t80 = insertvalue { %"compiler/source:Span", i32 } %t78, i32 %t74, 1
  %t81 = getelementptr { i64, [21 x i64] }, ptr %t75, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t80, ptr %t81
  %t82 = load { i64, [21 x i64] }, ptr %t75
  store { i64, [21 x i64] } %t82, ptr %l46
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t71, i32 %t72, ptr %l46)
  br label %bb13
bb13:
  %t86 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t86, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l48, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2etprim(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i32 %a4, { i64, [4 x i64] } %a5, { i64, [4 x i64] } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/mir:Lvalue"
  %l12 = alloca i32
  %l13 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"compiler/mir:Range"
  %l20 = alloca { i64, [21 x i64] }
  %s0 = alloca %olang.scope
  %t27 = alloca { i64, [15 x i64] }, align 8
  %t37 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i32 %a1, ptr %l8, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t3, ptr %l9
  %t6 = call %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a2)
  store %"compiler/mir:Lvalue" %t6, ptr %l11
  br label %bb1
bb1:
  store i32 %a3, ptr %l12
  store i32 %a4, ptr %l13, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t12 = mul i64 2, 40
  %t13 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 2, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t18, i64 0
  store { i64, [4 x i64] } %a5, ptr %t19
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t22, i64 1
  store { i64, [4 x i64] } %a6, ptr %t23
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t26 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } %t25)
  store %"compiler/mir:Range" %t26, ptr %l18
  br label %bb2
bb2:
  store { i64, [15 x i64] } zeroinitializer, ptr %t27
  %t28 = getelementptr { i64, [15 x i64] }, ptr %t27, i32 0, i32 0
  store i64 3, ptr %t28
  %t29 = load i32, ptr %l12, !range !{i32 0, i32 51}
  %t30 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t29, 0
  %t31 = load i32, ptr %l13, !tbaa !23
  %t32 = insertvalue { i32, i32, %"compiler/mir:Range" } %t30, i32 %t31, 1
  %t33 = load %"compiler/mir:Range", ptr %l18
  %t34 = insertvalue { i32, i32, %"compiler/mir:Range" } %t32, %"compiler/mir:Range" %t33, 2
  %t35 = getelementptr { i64, [15 x i64] }, ptr %t27, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t34, ptr %t35
  %t36 = load { i64, [15 x i64] }, ptr %t27
  store { i64, [21 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [21 x i64] }, ptr %t37, i32 0, i32 0
  store i64 0, ptr %t38
  %t39 = load %"compiler/source:Span", ptr %l9
  %t40 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t39, 0
  %t41 = load %"compiler/mir:Lvalue", ptr %l11
  %t42 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t40, %"compiler/mir:Lvalue" %t41, 1
  %t44 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t42, { i64, [15 x i64] } %t36, 2
  %t45 = getelementptr { i64, [21 x i64] }, ptr %t37, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t44, ptr %t45
  %t46 = load { i64, [21 x i64] }, ptr %t37
  store { i64, [21 x i64] } %t46, ptr %l20
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t48 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %s0, ptr %t47, i32 %t48, ptr %l20)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2feval_2etspan(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = trunc i64 %t1 to i32
  %t4 = load i64, ptr %l0, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = trunc i64 %t6 to i32
  %t11 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t3, i32 %t8)
  store %"compiler/source:Span" %t11, ptr %l6
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2feval_3aBlob_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"compiler/eval:Blob"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l10, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l10
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l12
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l10
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
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
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  store i64 8, ptr %l1, !tbaa !24
  store i1 false, ptr %l2, !tbaa !21
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l14, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e3
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l14
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l16
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e3
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l14
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
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
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l3
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l18, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e4
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l18
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l20
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e4
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l18
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
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
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l4
  %t64 = ptrtoint ptr %v0 to i64
  store i64 %t64, ptr %l22, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e5
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = call ptr @__olang_region_make(ptr %v0)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l22, !tbaa !24
  br label %bb17
bb17:
  %t69 = load i64, ptr %l22
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t70, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l24
  br label %bb18
bb18:
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e5
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load i64, ptr %l22
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
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
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l5
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l26, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e6
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t88 = call ptr @__olang_region_make(ptr %v0)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l26, !tbaa !24
  br label %bb22
bb22:
  %t90 = load i64, ptr %l26
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t91, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l28
  br label %bb23
bb23:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e6
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load i64, ptr %l26
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = call ptr @__olang_region_home(ptr %t100)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr null
  %t104 = icmp eq ptr %t103, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t104)
  br label %bb25
bb25:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l6
  %t106 = ptrtoint ptr %v0 to i64
  store i64 %t106, ptr %l30, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e7
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = call ptr @__olang_region_make(ptr %v0)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l30, !tbaa !24
  br label %bb27
bb27:
  %t111 = load i64, ptr %l30
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t112, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113, ptr %l32
  br label %bb28
bb28:
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e7
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l30
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = call ptr @__olang_region_home(ptr %t121)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = icmp eq ptr %t124, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t125)
  br label %bb30
bb30:
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l7
  %t127 = ptrtoint ptr %v0 to i64
  store i64 %t127, ptr %l34, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e8
  br i1 %t128, label %bb31, label %bb32
bb31:
  %t130 = call ptr @__olang_region_make(ptr %v0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l34, !tbaa !24
  br label %bb32
bb32:
  %t132 = load i64, ptr %l34
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t133, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l36
  br label %bb33
bb33:
  %t135 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e8
  br i1 %t135, label %bb34, label %bb35
bb34:
  %t137 = load i64, ptr %l34
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36, i32 0, i32 0
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = call ptr @__olang_region_home(ptr %t142)
  %t144 = icmp ne ptr %t143, null
  %t145 = select i1 %t144, ptr %t143, ptr null
  %t146 = icmp eq ptr %t145, %t138
  call void @__olang_region_settle(ptr %t138, i1 %t146)
  br label %bb35
bb35:
  %t147 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t147, ptr %l8
  %t148 = ptrtoint ptr %v0 to i64
  store i64 %t148, ptr %l38, !tbaa !24
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e9
  br i1 %t149, label %bb36, label %bb37
bb36:
  %t151 = call ptr @__olang_region_make(ptr %v0)
  %t152 = ptrtoint ptr %t151 to i64
  store i64 %t152, ptr %l38, !tbaa !24
  br label %bb37
bb37:
  %t153 = load i64, ptr %l38
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t154, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t155, ptr %l40
  br label %bb38
bb38:
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e9
  br i1 %t156, label %bb39, label %bb40
bb39:
  %t158 = load i64, ptr %l38
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40, i32 0, i32 0
  %t161 = load { i64, ptr }, ptr %t160
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = call ptr @__olang_region_or(ptr %t162, ptr null)
  %t164 = call ptr @__olang_region_home(ptr %t163)
  %t165 = icmp ne ptr %t164, null
  %t166 = select i1 %t165, ptr %t164, ptr null
  %t167 = icmp eq ptr %t166, %t159
  call void @__olang_region_settle(ptr %t159, i1 %t167)
  br label %bb40
bb40:
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  %t169 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 0
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %t169
  %t171 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 1
  %t172 = load i64, ptr %l1, !tbaa !24
  store i64 %t172, ptr %t171, !tbaa !24
  %t173 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 2
  %t174 = load i1, ptr %l2, !tbaa !21
  store i1 %t174, ptr %t173, !tbaa !21
  %t175 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 3
  %t176 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %t175
  %t177 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 4
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %t177
  %t179 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 5
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %t179
  %t181 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 6
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %t181
  %t183 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 7
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t183
  %t185 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 8
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %t185
  %t187 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %t187
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l42, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:dkey" @compiler_2feval_3adkey_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5) #0 {
entry:
  %rv = alloca %"compiler/eval:dkey"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/eval:dkey" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/eval:dkey" %t14, i32 %a1, 1
  %t18 = insertvalue %"compiler/eval:dkey" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/eval:dkey" %t18, i32 %a3, 3
  %t22 = insertvalue %"compiler/eval:dkey" %t20, i32 %a4, 4
  %t24 = insertvalue %"compiler/eval:dkey" %t22, i64 %a5, 5
  store %"compiler/eval:dkey" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:dkey", ptr %rv
  ret %"compiler/eval:dkey" %rr
}

define dso_local %"compiler/eval:global" @compiler_2feval_3aglobal_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/eval:global"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/eval:global" undef, i64 0, 0
  %t4 = insertvalue %"compiler/eval:global" %t2, i1 false, 1
  %t6 = insertvalue %"compiler/eval:global" %t4, i64 -1, 2
  %t8 = insertvalue %"compiler/eval:global" %t6, i64 0, 3
  %t10 = insertvalue %"compiler/eval:global" %t8, i64 0, 4
  %t12 = insertvalue %"compiler/eval:global" %t10, i1 false, 5
  %t14 = insertvalue %"compiler/eval:global" %t12, i1 false, 6
  %t16 = insertvalue %"compiler/eval:global" %t14, i1 false, 7
  store %"compiler/eval:global" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:global", ptr %rv
  ret %"compiler/eval:global" %rr
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@__olang_empty_array = external constant [16 x i64]
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:genRec"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 280, i1 false)
  %t2 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 6
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 7
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 280, i1 false)
  br label %ret
ret:
  ret void
}

@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
define available_externally void @__olang_scope_escape(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %un = icmp eq ptr %o, null
  br i1 %un, label %claim, label %done
claim:
  %me = load ptr, ptr @__olang_self
  store atomic ptr %me, ptr %op monotonic, align 8
  br label %done
done:
  ret void
}
define internal void @olang_lambda_5(ptr %env, %"compiler/eval:Ptr" %a0) #0 {
entry:
  %l0 = alloca %"compiler/eval:Ptr"
  %l1 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i1
  store %"compiler/eval:Ptr" %a0, ptr %l0
  %cp0 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load %"compiler/eval:Ptr", ptr %cp0, !tbaa !28
  store %"compiler/eval:Ptr" %cv0, ptr %l1
  %cp1 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load ptr, ptr %cp1, !tbaa !28
  %vq0 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp eq i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp eq i64 %t10, %t12
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t20 = getelementptr %"compiler/eval:Machine", ptr %cv1, i32 0, i32 6
  store i1 true, ptr %t20, !tbaa !21
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

@.d6 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: internal compiler error: file " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
declare void @__olang_errpay_pop()
@olang_2esole_2ecompiler_2feval_3aMachine_2e49 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define linkonce_odr %"compiler/eval:alloc" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aalloc() #0 {
entry:
  %l0 = alloca %"compiler/eval:alloc"
  %rv = alloca %"compiler/eval:alloc"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"compiler/eval:alloc" @compiler_2feval_3aalloc_2ector(ptr %t1)
  store %"compiler/eval:alloc" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"compiler/eval:alloc", ptr %l0
  store %"compiler/eval:alloc" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:alloc", ptr %rv
  ret %"compiler/eval:alloc" %rr
}

declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2feval_3aMachine_2e60 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e58 = weak hidden constant i1 false
declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %out) #0 {
entry:
  %l0 = alloca %"compiler/eval:frame"
  %t1 = alloca %"compiler/eval:frame", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_3aframe_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 136, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:BasicBlock"
  %l3 = alloca %"compiler/mir:StmtList"
  %rv = alloca %"compiler/mir:BasicBlock"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:BasicBlock", ptr %a0
  store %"compiler/mir:BasicBlock" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  %t5 = call %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %t3)
  store %"compiler/mir:StmtList" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/mir:StmtList", ptr %l3
  %t7 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  store %"compiler/mir:StmtList" %t6, ptr %t7
  %t8 = load %"compiler/mir:BasicBlock", ptr %l1
  store %"compiler/mir:BasicBlock" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:BasicBlock", ptr %rv
  ret %"compiler/mir:BasicBlock" %rr
}

@.d10 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"pthread_cond_wait" }>, align 8
@.d11 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"pthread_cond_timedwait" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_run_on_stack" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:StmtList"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/mir:StmtList"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:StmtList", ptr %a0
  store %"compiler/mir:StmtList" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 176
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 176
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/mir:StmtList", ptr %l1
  store %"compiler/mir:StmtList" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:StmtList", ptr %rv
  ret %"compiler/mir:StmtList" %rr
}

@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"an error escapes, code " }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d27 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"eval_test_" }>, align 8
@olang_2esole_2ecompiler_2feval_3aBlob_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2feval_3aBlob_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e9 = weak hidden constant i1 false
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

@__olang_self = external thread_local(initialexec) global ptr
define available_externally ptr @__olang_capture_scope(ptr %s) alwaysinline {
entry:
  %isprog = icmp eq ptr %s, null
  br i1 %isprog, label %prog, label %mine
prog:
  %p = load ptr, ptr @__olang_prog_scope
  ret ptr %p
mine:
  %m = call ptr @__olang_scope_mine(ptr %s)
  ret ptr %m
}
define available_externally ptr @__olang_scope_mine(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %me = load ptr, ptr @__olang_self
  %own = icmp eq ptr %o, %me
  br i1 %own, label %mine, label %slow
mine:
  ret ptr %s
slow:
  %r = call ptr @__olang_scope_mine_slow(ptr %s)
  ret ptr %r
}
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Haf69023555548e8239d9db5dde4c25f9(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eaGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %v0, i64 %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eP_Hdbb1ec214f67f51e9ea8789b3bf075dc(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1, i64 %a2)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2ePush_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, %"compiler/eval:global" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_61f429caa744f672_700daf8f54ef9296 = external constant [0 x i8]
declare { i32, %"compiler/eval:Ptr" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aPtr_3e_2eGe_Hf62dada0e9720a77250f7fe385f6e19e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hae4594312d85fd67c5b552e2ad8327fe(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2feval_2egDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddReg(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/eval:Ptr" %a4)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [21 x i64] } %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyTerm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, [8 x i64] } %a2, ptr %a3, ptr %a4)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
@G_2ecompiler_2feval_2eWhyClosed = external constant <{ [8 x i8], ptr }>
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3)
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
@olang_loc_9c6d2d38b14ece16_85850a0ccdf8ec6a = external constant [0 x i8]
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_3e93cd40ddf47e2b_3ba0afa8b25b773f = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evWide = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropScope(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8eca6dc2e728fddd_b862a3b547c92c71 = external constant [0 x i8]
@olang_loc_82023e8b3f4d7b2c_b53e56899aeca860 = external constant [0 x i8]
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2)
@G_2ecompiler_2feval_2eWhyNullCall = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenIndex(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenOver(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [7 x i64] } %a3, i64 %a4, i64 %a5)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_11a19fcb84a16e6d_1ab7f06eb0f74619 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e8d82fb02ccf62bc_44b724ba703ff148 = external constant [0 x i8]
@olang_loc_36e0ec838c111677_372a612bd7b0a623 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eClosingVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_5609b5c4ef82b256_83c053ae3d548522 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/eval:Ptr" %a3, i64 %a4)
@G_2ecompiler_2feval_2eWhyEnds = external constant <{ [8 x i8], ptr }>
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToElem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5)
@olang_loc_2c3649ec7760d571_b360c53de5a7362d = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2efLoad = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feval_2eflatOp(i32 %a0)
@G_2ecompiler_2feval_2efastStride = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [4 x i64] } %a2, ptr %a3, i64 %a4, i64 %a5)
@G_2ecompiler_2feval_2efUn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efBin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ei64(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ewordOp(i32 %a0)
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHome(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2esStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esInert = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBuilder = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eGenRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1)
@G_2ecompiler_2feval_2eWhyWritesGlobalVar = external constant <{ [8 x i8], ptr }>
@olang_loc_cdcdbab6c5a00ca5_1566754bdc1f9529 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i1 %a3, ptr %a4c, ptr %a4e)
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyHolderMissed = external constant <{ [8 x i8], ptr }>
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_c0f012afc32ce5a5_1c35e5c4f1b6a4c9 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2feval_2ebmask(i64 %a0)
@G_2ecompiler_2feval_2eWhyDivZero = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyDivMin = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2evUint = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyShift = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
@olang_loc_cc4a112acbde7ca1_19be4f90a96d28f5 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eHas_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0)
declare %"compiler/eval:Ptr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_57883a0fca4ce879_b5ee1d89385345fd = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eLaidOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNotLaidOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eLayingOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayRepr(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNoLayout = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3)
@G_2ecompiler_2feval_2eaFree = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:reg" @compiler_2feval_3areg_2ector(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2ePush_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, %"compiler/eval:reg" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eLen_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0)
@olang_loc_1aa148087c58143e_12c49f79ebc6dae2 = external constant [0 x i8]
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
@olang_loc_ad3bfe70499dbe21_2daaaf2a9e405db5 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Range" %a2, i64 %a3)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econvert(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebitcast(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eretire(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eatomic(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/mir:Range" %a3, i32 %a4)
@olang_loc_c5a1577ee3e22d75_549c323efc9636a1 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eunary(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i64 %a4)
@G_2ecompiler_2feval_2evFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4, i32 %a5, i64 %a6)
declare { i64, i64 } @compiler_2feval_2ewideMax(i64 %a0, i1 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4)
declare { i64, i64 } @compiler_2feval_2ewideMin(i64 %a0)
@G_2ecompiler_2feval_2eWhyNotModelled = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyDepth = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyRunDepth = external constant <{ [8 x i8], ptr }>
@olang_loc_82f264fd3f63866e_1586045834f1f9b2 = external constant [0 x i8]
@olang_loc_9faf736d233c85e3_6ce3cec307115a7 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaCode = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a0)
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
@olang_loc_1c104311c72af5f5_c45dcd645c687dc1 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyOutside = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunlinkReg(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/eval:Ptr" %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2egGen = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseGen(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, %"compiler/eval:Ptr" %a3, i64 %a4, i64 %a5)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2feval_2erTask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eWhyWaits = external constant <{ [8 x i8], ptr }>
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenLive(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
@G_2ecompiler_2feval_2eWhyWeakUnheld = external constant <{ [8 x i8], ptr }>
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyExtern = external constant <{ [8 x i8], ptr }>
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_69287ebff671eb2d_9fd35f0201a42c21 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4d14e07bfe4410cd_6dafb030c3a12d39 = external constant [0 x i8]
declare i1 @compiler_2feval_2ewritesGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_9c829c68892d289c_3e4192d6cd213d68 = external constant [0 x i8]
declare i1 @compiler_2fmir_2eColumned(i32 %a0)
declare { i32, i32 } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLineCol(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2eExitText(ptr %v0, i32 %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e6861b790824244d_fbaf0ff74301c89 = external constant [0 x i8]
declare { i64, i64 } @compiler_2feval_2eneg128(i64 %a0, i64 %a1)
@olang_loc_d44b28fe9fc96fb9_71a7ff2b834e49cd = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2feval_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eB0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eS0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a0)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/eval:alloc" @compiler_2feval_3aalloc_2ector(ptr %v0)
declare void @compiler_2feval_3aframe_2ector(ptr %out, ptr %v0)

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
