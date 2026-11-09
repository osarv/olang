source_filename = "compiler_eval-3.quick.ll"
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
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/mir:Range" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/eval:reg" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t3 = trunc i64 33 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t98 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t121 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t146 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t253 = load i32, ptr %l0, !range !{i32 0, i32 52}
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

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eElems(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
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
  %l18 = alloca { %"compiler/eval:Ptr", i64 }
  %l23 = alloca i64
  %l24 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l53 = alloca i64
  %l54 = alloca ptr
  %l61 = alloca %"compiler/eval:Ptr"
  %l63 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i32 %a2)
  store { %"compiler/eval:Ptr", i64 } %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i64 }, ptr %l18
  store { %"compiler/eval:Ptr", i64 } %t8, ptr %l4
  %t9 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l5
  %t12 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t15, i32 %t16)
  store i64 %t19, ptr %l23
  br label %bb2
bb2:
  %t20 = load i64, ptr %l23, !tbaa !24
  store i64 %t20, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  store i64 %t21, ptr %l24, !tbaa !24
  %t22 = load i64, ptr %l24, !tbaa !24
  %t23 = icmp sge i64 %t22, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load i64, ptr %l24, !tbaa !24
  %t26 = icmp sle i64 %t25, 1152921504606846975
  br i1 %t26, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a07810e0cbb459c4_651f13a6a529fa18)
  unreachable
bb5:
  %t28 = load i64, ptr %l24, !tbaa !24
  %t29 = mul i64 %t28, 8
  %t30 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t33, ptr %lp8
  %t35 = load ptr, ptr %lp8
  store { i64, ptr } %t32, ptr %t35, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t39 = load i64, ptr %l9, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_a07810e0cbb459c4_651f13a6a529fa18)
  unreachable
bb7:
  %t44 = load i64, ptr %l11, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb12
bb9:
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l11, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l11, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l35, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb11
bb11:
  %t64 = load i64, ptr %l35, !tbaa !24
  store i64 %t64, ptr %l32, !tbaa !24
  br label %bb12
bb12:
  %t65 = load i64, ptr %l32, !tbaa !24
  store i64 %t65, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t66 = load i64, ptr %l13, !tbaa !24
  %t67 = load i64, ptr %l12, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb15:
  br label %bb16
bb16:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l13, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l14, !tbaa !24
  %t84 = load i64, ptr %l14, !tbaa !24
  store i64 %t84, ptr %l53, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l54, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t87 = load i64, ptr %t86, !tbaa !24
  %t88 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t89 = load i64, ptr %t88, !tbaa !24
  %t90 = load i64, ptr %l14, !tbaa !24
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  %t100 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t87, i64 %t97)
  store %"compiler/eval:Ptr" %t100, ptr %l61
  br label %bb17
bb17:
  %t101 = load i32, ptr %l3, !tbaa !23
  %t102 = load ptr, ptr %l54, !tbaa !29
  %t103 = load %"compiler/eval:Ptr", ptr %l61
  %t105 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t102, %"compiler/eval:Ptr" %t103, i32 %t101)
  store i64 %t105, ptr %l63
  br label %bb18
bb18:
  %t106 = load i64, ptr %l63, !tbaa !24
  %t107 = load ptr, ptr %lp8
  %t108 = load i64, ptr %l53, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i64, ptr %t110, i64 %t108
  store i64 %t106, ptr %t111, !tbaa !34
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l13, !tbaa !24
  br label %bb13
bb20:
  %t116 = load ptr, ptr %lp8
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 27
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
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 22
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

define dso_local %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %rv = alloca %"compiler/eval:alloc"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 46
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t9 = and i64 %a1, %t6
  %t11 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:alloc", ptr %t12, i64 %t9
  %t14 = load %"compiler/eval:alloc", ptr %t13
  store %"compiler/eval:alloc" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:alloc", ptr %rv
  ret %"compiler/eval:alloc" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayTarget(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { %"compiler/eval:Ptr", i64 }
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l8 = alloca { %"compiler/eval:Ptr", i64 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/eval:Ptr"
  %l16 = alloca { %"compiler/eval:Ptr", i64 }
  %l22 = alloca { %"compiler/eval:Ptr", i64 }
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i64
  %l50 = alloca %"compiler/eval:Ptr"
  %l62 = alloca ptr
  %l66 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/eval:Ptr", ptr %l1
  %t3 = load i32, ptr %l3, !tbaa !23
  %t7 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %t2, i32 %t3)
  store { %"compiler/eval:Ptr", i64 } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i64 }, ptr %l16
  store { %"compiler/eval:Ptr", i64 } %t8, ptr %l5
  %t9 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l6
  %t12 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l7, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/eval:Ptr", ptr %l2
  %t17 = load i32, ptr %l3, !tbaa !23
  %t21 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t15, %"compiler/eval:Ptr" %t16, i32 %t17)
  store { %"compiler/eval:Ptr", i64 } %t21, ptr %l22
  br label %bb2
bb2:
  %t22 = load { %"compiler/eval:Ptr", i64 }, ptr %l22
  store { %"compiler/eval:Ptr", i64 } %t22, ptr %l8
  %t23 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  store %"compiler/eval:Ptr" %t24, ptr %l9
  %t26 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l10, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l25, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l28
  br label %bb3
bb3:
  %t35 = load ptr, ptr %l25, !tbaa !29
  %t36 = load i32, ptr %l28, !tbaa !23
  %t37 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t37, ptr %l29
  br label %bb4
bb4:
  %t38 = load i64, ptr %l29, !tbaa !24
  store i64 %t38, ptr %l11, !tbaa !24
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l10, !tbaa !24
  %t43 = icmp eq i64 %t39, %t40
  br i1 %t43, label %bb5, label %bb6
bb5:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/eval:Ptr", ptr %l6
  %t47 = load %"compiler/eval:Ptr", ptr %l9
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l11, !tbaa !24
  %t52 = mul i64 %t48, %t49
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t45, %"compiler/eval:Ptr" %t46, %"compiler/eval:Ptr" %t47, i64 %t52)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = icmp eq i64 %t57, 0
  br i1 %t59, label %bb9, label %bb10
bb9:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load %"compiler/eval:Ptr", ptr %l1
  %t63 = load %"compiler/eval:Ptr", ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t61, %"compiler/eval:Ptr" %t62, %"compiler/eval:Ptr" %t63, i64 16)
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l10, !tbaa !24
  %t69 = load i64, ptr %l11, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t73 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t74 = load i64, ptr %l4, !tbaa !24
  %t79 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t67, i64 %t72, i64 %t73, i64 %t74)
  store %"compiler/eval:Ptr" %t79, ptr %l50
  br label %bb13
bb13:
  %t80 = load %"compiler/eval:Ptr", ptr %l50
  store %"compiler/eval:Ptr" %t80, ptr %l12
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 19
  %t84 = load i1, ptr %t83, !tbaa !21
  br i1 %t84, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  br label %bb16
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/eval:Ptr", ptr %l12
  %t88 = load %"compiler/eval:Ptr", ptr %l9
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = mul i64 %t89, %t90
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t86, %"compiler/eval:Ptr" %t87, %"compiler/eval:Ptr" %t88, i64 %t93)
  br label %bb17
bb17:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load %"compiler/eval:Ptr", ptr %l1
  %t100 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t98, %"compiler/eval:Ptr" %t99, i64 8, i64 %t100)
  br label %bb18
bb18:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l62, !tbaa !29
  %t105 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t107 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t108 = load i64, ptr %t107, !tbaa !24
  %t110 = add i64 %t108, 8
  %t113 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t106, i64 %t110)
  store %"compiler/eval:Ptr" %t113, ptr %l66
  br label %bb19
bb19:
  %t114 = load %"compiler/eval:Ptr", ptr %l12
  %t115 = load ptr, ptr %l62, !tbaa !29
  %t116 = load %"compiler/eval:Ptr", ptr %l66
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t115, %"compiler/eval:Ptr" %t116, %"compiler/eval:Ptr" %t114)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebitcast(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l20 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l51 = alloca i1
  %l56 = alloca i64
  %l67 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t7 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 2}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  store i1 %t17, ptr %l14, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l14, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t20, i32 %t21)
  store i64 %t24, ptr %l20
  br label %bb7
bb6:
  br label %bb40
bb7:
  %t25 = load i64, ptr %l20, !tbaa !24
  %t26 = mul i64 8, %t25
  store i64 %t26, ptr %l3, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l25
  br label %bb8
bb8:
  %t36 = load i32, ptr %l25, !tbaa !23
  store i32 %t36, ptr %l4, !tbaa !23
  %t37 = load i32, ptr %l4, !tbaa !23
  %t39 = icmp eq i32 %t37, 11
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 10, ptr %l26, !tbaa !24
  br label %bb25
bb12:
  %t41 = load i32, ptr %l4, !tbaa !23
  %t43 = icmp eq i32 %t41, 12
  br i1 %t43, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 7, ptr %l26, !tbaa !24
  br label %bb25
bb16:
  %t45 = load i32, ptr %l4, !tbaa !23
  %t47 = icmp eq i32 %t45, 13
  br i1 %t47, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 23, ptr %l26, !tbaa !24
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i64 52, ptr %l26, !tbaa !24
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_7b1287020d5a411f_7f0f28d70ecde84b)
  unreachable
bb25:
  %t49 = load i64, ptr %l26, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = sub i64 %t52, %t53
  store i64 %t56, ptr %l36, !tbaa !24
  %t57 = load i64, ptr %l36, !tbaa !24
  %t58 = load i64, ptr %l36, !tbaa !24
  %t59 = shl i64 1, %t58
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l5, !tbaa !24
  store i64 %t62, ptr %l39, !tbaa !24
  %t64 = load i64, ptr %l39, !tbaa !24
  %t65 = load i64, ptr %l39, !tbaa !24
  %t66 = shl i64 %t61, %t65
  store i64 %t66, ptr %l6, !tbaa !24
  %t68 = load i64, ptr %l1, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  store i64 %t69, ptr %l42, !tbaa !24
  %t70 = load i64, ptr %l42, !tbaa !24
  %t71 = load i64, ptr %l42, !tbaa !24
  %t72 = shl i64 1, %t71
  %t74 = sub i64 %t72, 1
  %t77 = and i64 %t68, %t74
  store i64 %t77, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = and i64 %t79, %t80
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = icmp eq i64 %t83, %t84
  br i1 %t87, label %bb26, label %bb27
bb26:
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = icmp ne i64 %t89, 0
  store i1 %t91, ptr %l51, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb28
bb28:
  %t93 = load i1, ptr %l51, !tbaa !21
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t94 = load i64, ptr %l7, !tbaa !24
  %t95 = load i64, ptr %l5, !tbaa !24
  %t97 = sub i64 %t95, 1
  store i64 %t97, ptr %l56, !tbaa !24
  %t99 = load i64, ptr %l56, !tbaa !24
  %t100 = load i64, ptr %l56, !tbaa !24
  %t101 = ashr i64 %t94, %t100
  %t103 = and i64 %t101, 1
  %t105 = icmp eq i64 %t103, 1
  %t109 = xor i1 %t105, true
  br i1 %t109, label %bb31, label %bb32
bb30:
  br label %bb39
bb31:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNaNSignal, !tbaa !27
  %t113 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t113, ptr %t111, { i64, ptr } %t112)
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i64 0, ptr %rv
  br label %ret
bb34:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t118 = load i64, ptr %l5, !tbaa !24
  %t120 = sub i64 %t118, 1
  store i64 %t120, ptr %l67, !tbaa !24
  %t121 = load i64, ptr %l67, !tbaa !24
  %t122 = load i64, ptr %l67, !tbaa !24
  %t123 = shl i64 1, %t122
  %t126 = icmp eq i64 %t117, %t123
  br i1 %t126, label %bb35, label %bb36
bb35:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNaNOp, !tbaa !27
  %t130 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t130, ptr %t128, { i64, ptr } %t129)
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i64 0, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t134 = load i64, ptr %l1, !tbaa !24
  store i64 %t134, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca i32
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 1
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l3, !tbaa !23
  br label %bb7
bb2:
  %t10 = load { i64, [7 x i64] }, ptr %l2
  %t12 = extractvalue { i64, [7 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t16 = getelementptr { i64, i32 }, ptr %t15, i32 0, i32 1
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l3, !tbaa !23
  br label %bb7
bb4:
  %t19 = load { i64, [7 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [7 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 3
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l3, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t28 = load i32, ptr %l3, !tbaa !23
  store i32 %t28, ptr %l5, !tbaa !23
  br label %bb15
bb8:
  %t30 = load { i64, [7 x i64] }, ptr %l2
  %t32 = extractvalue { i64, [7 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 2
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t36 = getelementptr { { i64, [4 x i64] } }, ptr %t35, i32 0, i32 0
  %t37 = load { i64, [4 x i64] }, ptr %t36
  store { i64, [4 x i64] } %t37, ptr %l4
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l20, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = load { i64, [4 x i64] }, ptr %l4
  %t49 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t43, i64 %a1, { i64, [4 x i64] } %t45)
  store i32 %t49, ptr %l24
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l20, !tbaa !29
  %t51 = load i32, ptr %l24, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t52, ptr %l25
  br label %bb13
bb13:
  %t53 = load i32, ptr %l25, !tbaa !23
  store i32 %t53, ptr %l5, !tbaa !23
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_467821a0171adcef_9f7d024fdb995773)
  unreachable
bb15:
  %t54 = load i32, ptr %l5, !tbaa !23
  store i32 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseGen(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/eval:genRec"
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l14 = alloca %"compiler/eval:genRec"
  %l16 = alloca %"compiler/eval:genRec"
  %l20 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l29 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca %"compiler/eval:genRec"
  %l42 = alloca %"compiler/eval:genRec"
  %l49 = alloca ptr
  %l55 = alloca i64
  %l59 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t5 = alloca %"compiler/eval:genRec", align 8
  %t8 = alloca %"compiler/eval:genRec", align 8
  %t60 = alloca %"compiler/eval:genRec", align 8
  %t64 = alloca %"compiler/eval:genRec", align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 60
  %t4 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t5, i64 280, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t8, ptr %s0, ptr %l14)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t8, i64 280, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l16, i64 280, i1 false)
  %t10 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp ne i64 %t11, 2
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l2, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 61
  %t20 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t19, i64 %t21)
  %t25 = extractvalue { i32, i64 } %t24, 1
  %t26 = extractvalue { i32, i64 } %t24, 0
  store i32 %t26, ptr %l25
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb6, label %ok.28, !prof !99
ok.28:
  store i64 %t25, ptr %l24
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t29 = load i64, ptr %l24, !tbaa !24
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 60
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t33, i64 %t34)
  store ptr %t37, ptr %l29
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l29, !tbaa !29
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = getelementptr %"compiler/eval:genRec", ptr %t38, i32 0, i32 11
  store i64 %t40, ptr %t43, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 61
  %t47 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 1
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t46, i64 %t48, i64 %t49)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t53 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 0
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = icmp eq i64 %t54, 0
  br i1 %t56, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l38, !tbaa !29
  store i64 %a1, ptr %l39, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %l3, i64 280, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t60, ptr %s2, ptr %l40)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t60, i64 280, i1 false)
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t62 = load ptr, ptr %l38, !tbaa !29
  %t63 = load i64, ptr %l39, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %l42, i64 280, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshDrops(ptr %v0, ptr %s2, ptr %t62, i64 %t63, ptr %t64)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t65 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 0
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = icmp ne i64 %t66, 1
  br i1 %t68, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  br label %bb19
bb19:
  %t70 = load i64, ptr %l2, !tbaa !24
  store i64 3, ptr %l8, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 60
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t74, i64 %t70)
  store ptr %t78, ptr %l49
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l49, !tbaa !29
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = getelementptr %"compiler/eval:genRec", ptr %t79, i32 0, i32 0
  store i64 %t81, ptr %t84, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load i64, ptr @G_2ecompiler_2feval_2erDtor, !tbaa !24
  %t91 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erestoreGen(ptr %v0, ptr %t85, i64 %t86, i64 %t87, i64 0)
  store i64 %t91, ptr %l55
  br label %bb21
bb21:
  %t92 = load i64, ptr %l55, !tbaa !24
  store i64 %t92, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = icmp slt i64 %t93, 0
  br i1 %t95, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  br label %bb24
bb24:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 55
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l59, !tbaa !27
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 3
  %t103 = load i64, ptr %t102, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr %"compiler/eval:frame", ptr %t107, i64 %t101
  %t109 = getelementptr %"compiler/eval:frame", ptr %t108, i32 0, i32 1
  store i64 %t103, ptr %t109, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Machine", ptr %t110, i32 0, i32 55
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  store { i64, ptr } %t113, ptr %l63, !tbaa !27
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr %"compiler/eval:frame", ptr %t117, i64 %t114
  %t119 = getelementptr %"compiler/eval:frame", ptr %t118, i32 0, i32 2
  store i64 0, ptr %t119, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/eval:Machine", ptr %t120, i32 0, i32 55
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l66, !tbaa !27
  %t124 = load i64, ptr %l10, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr %"compiler/eval:frame", ptr %t127, i64 %t124
  %t129 = getelementptr %"compiler/eval:frame", ptr %t128, i32 0, i32 18
  store i32 -1, ptr %t129, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econstLen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 1, ptr %l4, !tbaa !24
  br label %bb11
bb4:
  %t6 = load { i64, [1 x i64] }, ptr %l2
  %t8 = extractvalue { i64, [1 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t12 = getelementptr { %"compiler/mir:Range" }, ptr %t11, i32 0, i32 0
  %t13 = load %"compiler/mir:Range", ptr %t12
  store %"compiler/mir:Range" %t13, ptr %l3
  br label %bb9
bb6:
  %t15 = load { i64, [1 x i64] }, ptr %l2
  %t17 = extractvalue { i64, [1 x i64] } %t15, 0
  %t18 = icmp eq i64 %t17, 2
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t21 = getelementptr { %"compiler/mir:Range" }, ptr %t20, i32 0, i32 0
  %t22 = load %"compiler/mir:Range", ptr %t21
  store %"compiler/mir:Range" %t22, ptr %l3
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t24 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  store i64 %t27, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6be2223409a54017_8087911232ed0aeb)
  unreachable
bb11:
  %t29 = load i64, ptr %l4, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 64
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
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 63
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
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 64
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
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 64
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
  %t98 = getelementptr %"compiler/eval:Machine", ptr %t96, i32 0, i32 63
  store ptr %t98, ptr %l61, !tbaa !29
  %t99 = load i64, ptr %l10, !tbaa !24
  store i64 %t99, ptr %l62, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 63
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
  %t114 = getelementptr %"compiler/eval:Machine", ptr %t112, i32 0, i32 64
  store ptr %t114, ptr %l69, !tbaa !29
  %t115 = load i64, ptr %l10, !tbaa !24
  store i64 %t115, ptr %l70, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/eval:Machine", ptr %t116, i32 0, i32 64
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
  %t130 = getelementptr %"compiler/eval:Machine", ptr %t128, i32 0, i32 65
  store ptr %t130, ptr %l77, !tbaa !29
  %t131 = load i64, ptr %l10, !tbaa !24
  store i64 %t131, ptr %l78, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 65
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
  %t150 = getelementptr %"compiler/eval:Machine", ptr %t148, i32 0, i32 63
  store ptr %t150, ptr %l87, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/eval:Machine", ptr %t151, i32 0, i32 63
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
  %t162 = getelementptr %"compiler/eval:Machine", ptr %t160, i32 0, i32 64
  store ptr %t162, ptr %l93, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 64
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
  %t174 = getelementptr %"compiler/eval:Machine", ptr %t172, i32 0, i32 65
  store ptr %t174, ptr %l99, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 65
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
  %t9 = load i32, ptr %l4, !range !{i32 0, i32 16}
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
  %t14 = load i32, ptr %l4, !range !{i32 0, i32 16}
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l6, !tbaa !27
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
  %t146 = load i32, ptr %l4, !range !{i32 0, i32 16}
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
  %t20 = load i32, ptr %l2, !range !{i32 0, i32 52}
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
  %t61 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t63 = trunc i64 0 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb19:
  %t66 = load i32, ptr %l2, !range !{i32 0, i32 52}
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
  %t72 = load i32, ptr %l2, !range !{i32 0, i32 52}
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
  %t181 = load i32, ptr %l2, !range !{i32 0, i32 52}
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
  %t202 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t205 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i32, ptr %t206, i64 %t201
  store i32 %t202, ptr %t207
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToElem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, [1 x i64] }
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i64
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l29 = alloca { i64, [1 x i64] }
  %l36 = alloca ptr
  %l40 = alloca %"compiler/mir:Local"
  %l42 = alloca i32
  %l45 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i64
  %l53 = alloca i64
  %l57 = alloca i64
  %l66 = alloca i1
  %l81 = alloca i32
  %l84 = alloca { i64, ptr }
  %l90 = alloca i64
  %l93 = alloca ptr
  %l97 = alloca %"compiler/mir:Local"
  %l99 = alloca i1
  %l106 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l127 = alloca %"compiler/mir:Local"
  %l133 = alloca %"compiler/mir:Local"
  %l137 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  store { i64, [15 x i64] } %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/mir:Lvalue", ptr %l2
  %t3 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %t1)
  store i64 %t3, ptr %l22
  br label %bb1
bb1:
  %t4 = load i64, ptr %l22, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/mir:Fn", ptr %t9, i32 0, i32 10
  %t12 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t13 = getelementptr %"compiler/mir:Range", ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t19 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t11, i64 %t16)
  store { i64, [1 x i64] } %t19, ptr %l29
  br label %bb5
bb5:
  %t20 = load { i64, [1 x i64] }, ptr %l29
  store { i64, [1 x i64] } %t20, ptr %l7
  %t21 = load { i64, [1 x i64] }, ptr %l7
  %t23 = extractvalue { i64, [1 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 1
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = getelementptr { i64, [1 x i64] }, ptr %l7, i32 0, i32 1
  %t29 = getelementptr { i32 }, ptr %t28, i32 0, i32 0
  %t30 = load i32, ptr %t29
  %t34 = sext i32 %t30 to i64
  store i64 %t34, ptr %l9, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l36, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/mir:Fn", ptr %t37, i32 0, i32 7
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t39, i64 %t40)
  store %"compiler/mir:Local" %t43, ptr %l40
  br label %bb9
bb9:
  %t44 = getelementptr %"compiler/mir:Local", ptr %l40, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = load ptr, ptr %l36, !tbaa !29
  %t48 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t46, i32 %t45)
  store i32 %t48, ptr %l42
  br label %bb10
bb10:
  %t49 = load i32, ptr %l42, !tbaa !23
  store i32 %t49, ptr %l10, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l10, !tbaa !23
  %t54 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l45
  br label %bb11
bb11:
  %t55 = load i1, ptr %l45, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb16
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l10, !tbaa !23
  %t62 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t58, i32 %t59)
  store i64 %t62, ptr %l50
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l10, !tbaa !23
  %t67 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t63, i32 %t64)
  store i64 %t67, ptr %l53
  br label %bb15
bb15:
  %t68 = load i64, ptr %l50, !tbaa !24
  %t69 = load i64, ptr %l53, !tbaa !24
  %t70 = icmp ne i64 %t68, %t69
  store i1 %t70, ptr %l47, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l47, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  br label %ret
bb18:
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l10, !tbaa !23
  %t77 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t73, i32 %t74)
  store i64 %t77, ptr %l57
  br label %bb20
bb20:
  %t78 = load i64, ptr %l57, !tbaa !24
  store i64 %t78, ptr %l11, !tbaa !24
  %t79 = load { i64, [15 x i64] }, ptr %l3
  %t81 = extractvalue { i64, [15 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 0
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  %t86 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t87 = getelementptr { { i64, [4 x i64] } }, ptr %t86, i32 0, i32 0
  %t88 = load { i64, [4 x i64] }, ptr %t87
  store { i64, [4 x i64] } %t88, ptr %l13
  %t92 = load { i64, [4 x i64] }, ptr %l13
  %t94 = extractvalue { i64, [4 x i64] } %t92, 0
  %t95 = icmp eq i64 %t94, 2
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = load { i64, [4 x i64] }, ptr %l13
  %t101 = extractvalue { i64, [4 x i64] } %t99, 0
  %t102 = icmp eq i64 %t101, 1
  %t104 = xor i1 %t102, true
  store i1 %t104, ptr %l66, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb26
bb26:
  %t106 = load i1, ptr %l66, !tbaa !21
  br i1 %t106, label %bb27, label %bb28
bb27:
  br label %ret
bb28:
  br label %bb29
bb29:
  %t108 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t111 = mul i64 %a5, %t108
  store i64 %t111, ptr %l14, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t115 = load { i64, [4 x i64] }, ptr %l13
  %t116 = load ptr, ptr %l4, !tbaa !29
  %t117 = load i64, ptr %l14, !tbaa !24
  %t119 = add i64 %t117, 3
  %t120 = load i64, ptr %l14, !tbaa !24
  %t122 = add i64 %t120, 9
  %t129 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %t113, ptr %t114, { i64, [4 x i64] } %t115, ptr %t116, i64 %t119, i64 %t122)
  store i32 %t129, ptr %l81
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb31, label %ok.131, !prof !99
ok.131:
  br label %bb30
bb30:
  br label %bb33
bb31:
  br label %bb32
bb32:
  br label %ret
bb33:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l4, !tbaa !29
  %t135 = getelementptr %"compiler/eval:cfn", ptr %t133, i32 0, i32 13
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l84, !tbaa !27
  %t137 = load i64, ptr %l14, !tbaa !24
  %t139 = add i64 %t137, 9
  %t141 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i64, ptr %t142, i64 %t139
  %t144 = load i64, ptr %t143, !tbaa !34
  %t146 = trunc i64 %t144 to i32
  %t150 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t132, i32 %t146)
  store i64 %t150, ptr %l90
  br label %bb34
bb34:
  %t151 = load i64, ptr %l11, !tbaa !24
  %t152 = load i64, ptr %l90, !tbaa !24
  %t154 = icmp ne i64 %t152, %t151
  br i1 %t154, label %bb35, label %bb36
bb35:
  br label %ret
bb36:
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l93, !tbaa !29
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr %"compiler/mir:Fn", ptr %t157, i32 0, i32 7
  %t160 = load i64, ptr %l9, !tbaa !24
  %t163 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t159, i64 %t160)
  store %"compiler/mir:Local" %t163, ptr %l97
  br label %bb38
bb38:
  %t164 = getelementptr %"compiler/mir:Local", ptr %l97, i32 0, i32 2
  %t165 = load i32, ptr %t164, !tbaa !23
  %t166 = load ptr, ptr %l93, !tbaa !29
  %t168 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t166, i32 %t165)
  store i1 %t168, ptr %l99
  br label %bb39
bb39:
  %t169 = load i1, ptr %l99, !tbaa !21
  %t170 = xor i1 %t169, true
  br i1 %t170, label %bb40, label %bb41
bb40:
  br label %ret
bb41:
  br label %bb42
bb42:
  %t172 = load i64, ptr @G_2ecompiler_2feval_2efStore, !tbaa !24
  %t174 = load i64, ptr %l6, !tbaa !24
  %t176 = load i64, ptr %l11, !tbaa !24
  %t178 = load i64, ptr %l9, !tbaa !24
  %t180 = load ptr, ptr %l4, !tbaa !29
  %t182 = getelementptr %"compiler/eval:cfn", ptr %t180, i32 0, i32 13
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  store { i64, ptr } %t183, ptr %l106, !tbaa !27
  %t184 = load i64, ptr %l14, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i64, ptr %t189, i64 %t184
  store i64 %t172, ptr %t190, !tbaa !34
  %t191 = load ptr, ptr %l4, !tbaa !29
  %t193 = getelementptr %"compiler/eval:cfn", ptr %t191, i32 0, i32 13
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  store { i64, ptr } %t194, ptr %l110, !tbaa !27
  %t195 = load i64, ptr %l14, !tbaa !24
  %t197 = add i64 %t195, 1
  %t201 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i64, ptr %t202, i64 %t197
  store i64 %t174, ptr %t203, !tbaa !34
  %t204 = load ptr, ptr %l4, !tbaa !29
  %t206 = getelementptr %"compiler/eval:cfn", ptr %t204, i32 0, i32 13
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l115, !tbaa !27
  %t208 = load i64, ptr %l14, !tbaa !24
  %t210 = add i64 %t208, 2
  %t214 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i64, ptr %t215, i64 %t210
  store i64 %t176, ptr %t216, !tbaa !34
  %t217 = load ptr, ptr %l4, !tbaa !29
  %t219 = getelementptr %"compiler/eval:cfn", ptr %t217, i32 0, i32 13
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l120, !tbaa !27
  %t221 = load i64, ptr %l14, !tbaa !24
  %t223 = add i64 %t221, 5
  %t227 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr i64, ptr %t228, i64 %t223
  store i64 %t178, ptr %t229, !tbaa !34
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr %"compiler/mir:Fn", ptr %t230, i32 0, i32 7
  %t233 = load i64, ptr %l6, !tbaa !24
  %t236 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t232, i64 %t233)
  store %"compiler/mir:Local" %t236, ptr %l127
  br label %bb43
bb43:
  %t237 = getelementptr %"compiler/mir:Local", ptr %l127, i32 0, i32 2
  %t238 = load i32, ptr %t237, !tbaa !23
  %t240 = sext i32 %t238 to i64
  store i64 %t240, ptr %l19, !tbaa !24
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = getelementptr %"compiler/mir:Fn", ptr %t242, i32 0, i32 7
  %t245 = load i64, ptr %l9, !tbaa !24
  %t248 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t244, i64 %t245)
  store %"compiler/mir:Local" %t248, ptr %l133
  br label %bb44
bb44:
  %t249 = getelementptr %"compiler/mir:Local", ptr %l133, i32 0, i32 2
  %t250 = load i32, ptr %t249, !tbaa !23
  %t252 = sext i32 %t250 to i64
  %t254 = load ptr, ptr %l4, !tbaa !29
  %t256 = getelementptr %"compiler/eval:cfn", ptr %t254, i32 0, i32 13
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l137, !tbaa !27
  %t258 = load i64, ptr %l14, !tbaa !24
  %t260 = add i64 %t258, 7
  %t261 = load i64, ptr %l19, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i64, ptr %t265, i64 %t260
  store i64 %t261, ptr %t266, !tbaa !34
  %t267 = load ptr, ptr %l4, !tbaa !29
  %t269 = getelementptr %"compiler/eval:cfn", ptr %t267, i32 0, i32 13
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  store { i64, ptr } %t270, ptr %l142, !tbaa !27
  %t271 = load i64, ptr %l14, !tbaa !24
  %t273 = add i64 %t271, 8
  %t277 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr i64, ptr %t278, i64 %t273
  store i64 %t252, ptr %t279, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca %"compiler/mir:Range"
  %l17 = alloca i64
  %l20 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca %"compiler/mir:Local"
  %l27 = alloca i1
  %l32 = alloca ptr
  %l36 = alloca %"compiler/mir:Local"
  %l38 = alloca i64
  %l44 = alloca %"compiler/mir:Local"
  %l48 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [15 x i64] } %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a2)
  store i64 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i64, ptr %l17, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l21, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 7
  %t13 = load i64, ptr %l6, !tbaa !24
  %t16 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t12, i64 %t13)
  store %"compiler/mir:Local" %t16, ptr %l25
  br label %bb4
bb4:
  %t17 = getelementptr %"compiler/mir:Local", ptr %l25, i32 0, i32 2
  %t18 = load i32, ptr %t17, !tbaa !23
  %t19 = load ptr, ptr %l21, !tbaa !29
  %t21 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t19, i32 %t18)
  store i1 %t21, ptr %l27
  br label %bb5
bb5:
  %t22 = load i1, ptr %l27, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l20, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t30 = mul i64 %t26, %t27
  store i64 %t30, ptr %l7, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l32, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/mir:Fn", ptr %t33, i32 0, i32 7
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t35, i64 %t36)
  store %"compiler/mir:Local" %t39, ptr %l36
  br label %bb10
bb10:
  %t40 = getelementptr %"compiler/mir:Local", ptr %l36, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load ptr, ptr %l32, !tbaa !29
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t42, i32 %t41)
  store i64 %t44, ptr %l38
  br label %bb11
bb11:
  %t45 = load i64, ptr %l38, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  store i64 %t48, ptr %l10, !tbaa !24
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/mir:Fn", ptr %t50, i32 0, i32 7
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t52, i64 %t53)
  store %"compiler/mir:Local" %t56, ptr %l44
  br label %bb12
bb12:
  %t57 = getelementptr %"compiler/mir:Local", ptr %l44, i32 0, i32 2
  %t58 = load i32, ptr %t57, !tbaa !23
  %t60 = sext i32 %t58 to i64
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/eval:cfn", ptr %t62, i32 0, i32 13
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l48, !tbaa !27
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = add i64 %t66, 1
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i64, ptr %t73, i64 %t68
  store i64 %t69, ptr %t74, !tbaa !34
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = getelementptr %"compiler/eval:cfn", ptr %t75, i32 0, i32 13
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l53, !tbaa !27
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = add i64 %t79, 2
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t81
  store i64 %t82, ptr %t87, !tbaa !34
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = getelementptr %"compiler/eval:cfn", ptr %t88, i32 0, i32 13
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l58, !tbaa !27
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = add i64 %t92, 9
  %t98 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t94
  store i64 %t60, ptr %t100, !tbaa !34
  %t101 = load { i64, [15 x i64] }, ptr %l3
  %t103 = extractvalue { i64, [15 x i64] } %t101, 0
  %t104 = icmp eq i64 %t103, 0
  br i1 %t104, label %bb13, label %bb14
bb13:
  %t106 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t107 = getelementptr { { i64, [4 x i64] } }, ptr %t106, i32 0, i32 0
  %t108 = load { i64, [4 x i64] }, ptr %t107
  store { i64, [4 x i64] } %t108, ptr %l12
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t112 = load { i64, [4 x i64] }, ptr %l12
  %t113 = load i64, ptr %l8, !tbaa !24
  %t114 = load ptr, ptr %l4, !tbaa !29
  %t115 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenUse(ptr %v0, ptr %v1, ptr %v2, ptr %t110, ptr %t111, { i64, [4 x i64] } %t112, i64 %t113, ptr %t114, i64 %t115)
  br label %bb16
bb16:
  br label %bb27
bb17:
  %t122 = load { i64, [15 x i64] }, ptr %l3
  %t124 = extractvalue { i64, [15 x i64] } %t122, 0
  %t125 = icmp eq i64 %t124, 3
  br i1 %t125, label %bb18, label %bb19
bb18:
  %t127 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t128 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t127, i32 0, i32 0
  %t129 = load i32, ptr %t128, !range !{i32 0, i32 52}
  store i32 %t129, ptr %l13
  %t131 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t132 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t131, i32 0, i32 1
  %t133 = load i32, ptr %t132
  store i32 %t133, ptr %l14, !tbaa !23
  %t135 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t136 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t135, i32 0, i32 2
  %t137 = load %"compiler/mir:Range", ptr %t136
  store %"compiler/mir:Range" %t137, ptr %l15
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t141 = load i32, ptr %l13, !range !{i32 0, i32 52}
  %t142 = load i32, ptr %l14, !tbaa !23
  %t143 = load %"compiler/mir:Range", ptr %l15
  %t144 = load i64, ptr %l8, !tbaa !24
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t146 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenPrim(ptr %v0, ptr %v1, ptr %v2, ptr %t139, ptr %t140, i32 %t141, i32 %t142, %"compiler/mir:Range" %t143, i64 %t144, ptr %t145, i64 %t146)
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
  call void @__olang_check_failed(ptr @olang_loc_f109e7d1d9d4095f_6bdbe89eeb68f2bb)
  unreachable
bb27:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenIndex(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { { i64, ptr }, i64 }
  %l14 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca i64
  %l47 = alloca ptr
  %l51 = alloca i32
  %l53 = alloca %"compiler/mir:Local"
  %l59 = alloca { { i64, ptr }, i64 }
  %l61 = alloca ptr
  %l62 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l71 = alloca %"compiler/eval:Ptr"
  %l72 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i64, ptr %l14, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l14, !tbaa !24
  %t10 = icmp sle i64 %t9, 2305843009213693951
  br i1 %t10, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_9c073bf56b8103e8_f70ded813690f4)
  unreachable
bb4:
  %t12 = load i64, ptr %l14, !tbaa !24
  %t13 = mul i64 %t12, 4
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 5
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t20)
  store i64 %t22, ptr %l20
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_9c073bf56b8103e8_f70ded813690f4)
  unreachable
bb6:
  %t23 = load i64, ptr %l20, !tbaa !24
  store i64 %t23, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sgt i64 %t24, %t25
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb12
bb9:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = sub i64 %t34, %t35
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = add i64 %t38, %t39
  %t44 = sub i64 %t42, 1
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sdiv i64 %t44, %t45
  store i64 %t48, ptr %l27, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l27, !tbaa !24
  store i64 %t50, ptr %l24, !tbaa !24
  br label %bb12
bb12:
  %t51 = load i64, ptr %l24, !tbaa !24
  store i64 %t51, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  br label %bb16
bb16:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = mul i64 %t61, %t62
  %t68 = add i64 %t60, %t65
  store i64 %t68, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  store i64 %t70, ptr %l45, !tbaa !24
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/mir:Fn", ptr %t71, i32 0, i32 7
  store ptr %t73, ptr %l47, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/mir:Fn", ptr %t74, i32 0, i32 5
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t76, i64 %t77)
  store i32 %t80, ptr %l51
  br label %bb17
bb17:
  %t81 = load i32, ptr %l51, !tbaa !23
  %t82 = sext i32 %t81 to i64
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t85 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t83, i64 %t82)
  store %"compiler/mir:Local" %t85, ptr %l53
  br label %bb18
bb18:
  %t86 = getelementptr %"compiler/mir:Local", ptr %l53, i32 0, i32 2
  %t87 = load i32, ptr %t86, !tbaa !23
  %t89 = load i64, ptr %l45, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i32, ptr %t91, i64 %t89
  store i32 %t87, ptr %t92, !tbaa !33
  br label %bb19
bb19:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l8, !tbaa !24
  br label %bb13
bb20:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t101 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t97, { i64, ptr } %t98)
  store { { i64, ptr }, i64 } %t101, ptr %l59
  br label %bb21
bb21:
  %t102 = load { { i64, ptr }, i64 }, ptr %l59
  store { { i64, ptr }, i64 } %t102, ptr %l10
  %t103 = getelementptr { { i64, ptr }, i64 }, ptr %l10, i32 0, i32 1
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l61, !tbaa !29
  %t107 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  store i64 %t108, ptr %l62, !tbaa !24
  %t109 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t110 = load i64, ptr %t109, !tbaa !24
  %t114 = add i64 %t110, %t104
  store i64 %t114, ptr %l65, !tbaa !24
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/mir:Fn", ptr %t115, i32 0, i32 5
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t117)
  store i64 %t119, ptr %l68
  br label %bb22
bb22:
  %t120 = load i64, ptr %l68, !tbaa !24
  %t121 = mul i64 8, %t120
  %t122 = load i64, ptr %l65, !tbaa !24
  %t124 = add i64 %t122, %t121
  %t125 = load i64, ptr %l62, !tbaa !24
  %t127 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t125, i64 %t124)
  store %"compiler/eval:Ptr" %t127, ptr %l71
  br label %bb23
bb23:
  %t128 = load ptr, ptr %l61, !tbaa !29
  %t129 = load %"compiler/eval:Ptr", ptr %l71
  %t130 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t128, %"compiler/eval:Ptr" %t129, i64 8)
  store i64 %t130, ptr %l72
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t131 = load i64, ptr %l72, !tbaa !24
  store i64 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t55 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t66 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t77 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t88 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t90 = trunc i64 6 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  %t93 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t114 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t132 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t165 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t167 = trunc i64 8 to i32
  %t168 = icmp eq i32 %t165, %t167
  br i1 %t168, label %bb46, label %bb47
bb46:
  br label %bb50
bb47:
  %t170 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t224 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t254 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t265 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t276 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t287 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t299 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t311 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t332 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t353 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t374 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
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
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 55
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l10, !tbaa !27
  %t19 = load i64, ptr %l1, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/eval:frame", ptr %t22, i64 %t19
  %t24 = getelementptr %"compiler/eval:frame", ptr %t23, i32 0, i32 2
  store i64 0, ptr %t24, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 85
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
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 22
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 55
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
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 85
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t63)
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 87
  store i64 0, ptr %t67, !tbaa !24
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enamedShape(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca i64
  %rv = alloca i64
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t13 = load i32, ptr %l9, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load i32, ptr %l10, !range !{i32 0, i32 6}
  store i32 %t15, ptr %l3
  %t16 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t18 = trunc i64 0 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  store i64 %t21, ptr %l11, !tbaa !24
  br label %bb24
bb6:
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t25 = trunc i64 1 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t28 = load ptr, ptr %l2, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l20
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t36, ptr %l21
  br label %bb11
bb11:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t38 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  store i64 %t38, ptr %l22, !tbaa !24
  br label %bb14
bb13:
  %t40 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t40, ptr %l22, !tbaa !24
  br label %bb14
bb14:
  %t42 = load i64, ptr %l22, !tbaa !24
  store i64 %t42, ptr %l11, !tbaa !24
  br label %bb24
bb15:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t45 = trunc i64 2 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t48 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t48, ptr %l11, !tbaa !24
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t50 = load i64, ptr @G_2ecompiler_2feval_2evNone, !tbaa !24
  store i64 %t50, ptr %l11, !tbaa !24
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_3ad4fb4c50638c0b_118ff119db9b3957)
  unreachable
bb24:
  %t52 = load i64, ptr %l11, !tbaa !24
  store i64 %t52, ptr %rv
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 51
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
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 51
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScopeSlot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/eval:scope"
  %l6 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t4 = alloca %"compiler/eval:scope", align 8
  %t6 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 49
  store ptr %t3, ptr %l2, !tbaa !29
  call void @compiler_2feval_3ascope_2ector(ptr %t4, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t4, i64 144, i1 false)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t6, ptr %l3, i64 144, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ePush_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t5, ptr %t6)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 49
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t9)
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

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i1
  %l13 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t1, i32 %t2, i1 false)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t8, i32 %t9)
  store i64 %t12, ptr %l13
  br label %bb5
bb5:
  %t13 = load i64, ptr %l13, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t18 = icmp eq i64 %t14, %t15
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l20
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i32, ptr %l20, !tbaa !23
  %t28 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t28, ptr %l21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l21, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb10:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  %t34 = icmp ne i64 %t30, %t31
  br i1 %t34, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l27, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l30
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l27, !tbaa !29
  %t47 = load i32, ptr %l30, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store { i64, ptr } %t48, ptr %l31
  br label %bb15
bb15:
  %t49 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t49, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l38, !tbaa !27
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i32, ptr %t66, i64 %t63
  %t68 = load i32, ptr %t67, !tbaa !33
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t74 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t70, i32 %t68)
  store i1 %t74, ptr %l43
  br label %bb20
bb20:
  %t75 = load i1, ptr %l43, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb16
bb25:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l23 = alloca i1
  %l26 = alloca i64
  %l30 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l55 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load i32, ptr %l12, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 71
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t12, i32 %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l18
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb3, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l17
  br label %bb2
bb2:
  %t21 = load i64, ptr %l17, !tbaa !24
  store i64 %t21, ptr %l13, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp slt i64 %t23, 0
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l23
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 72
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l26
  br label %bb9
bb9:
  %t37 = load i64, ptr %l26, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %s2, ptr %t41, i32 %t42)
  store { i64, ptr } %t45, ptr %l30
  br label %bb10
bb10:
  %t46 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  %t48 = extractvalue { i64, ptr } %t46, 1
  %t49 = mul i64 %t47, 8
  %t50 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t66 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i64, ptr %t70, i64 %t67
  %t72 = load i64, ptr %t71, !tbaa !34
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 72
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t76, i64 %t72)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb11
bb17:
  call void @__olang_scope_close(ptr %s2)
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 71
  %t87 = load i32, ptr %l3, !tbaa !23
  %t88 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t86, i32 %t87, i64 %t88)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 72
  %t95 = load i64, ptr %l4, !tbaa !24
  %t99 = add i64 %t95, %a2
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t94, i64 %t99)
  store i64 %t102, ptr %l55
  br label %bb20
bb20:
  %t103 = load i64, ptr %l55, !tbaa !24
  store i64 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i64, ptr %l2, !tbaa !24
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 %t3, i1 false)
  store i64 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i64, ptr %l7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t20 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t14, i64 %t15, i64 %t16)
  store i64 %t20, ptr %l14
  br label %bb5
bb5:
  %t21 = load i64, ptr %l14, !tbaa !24
  store i64 %t21, ptr %rv
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
  %t5 = getelementptr %"compiler/eval:Machine", ptr %t3, i32 0, i32 74
  %t6 = load i64, ptr %t5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 75
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereleaseHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca %"compiler/eval:Ptr"
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca %"compiler/eval:Ptr"
  %l30 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l12
  br label %bb4
bb4:
  %t18 = load i1, ptr %l12, !tbaa !21
  store i1 %t18, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load %"compiler/eval:Ptr", ptr %l1
  %t23 = load i32, ptr %l2, !tbaa !23
  %t27 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %t21, %"compiler/eval:Ptr" %t22, i32 %t23)
  store %"compiler/eval:Ptr" %t27, ptr %l18
  br label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/eval:Ptr", ptr %l1
  %t30 = load i32, ptr %l2, !tbaa !23
  %t34 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %t28, %"compiler/eval:Ptr" %t29, i32 %t30)
  store i64 %t34, ptr %l23
  br label %bb10
bb8:
  %t35 = load ptr, ptr %l14, !tbaa !29
  %t36 = load %"compiler/eval:Ptr", ptr %l18
  %t37 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %t35, %"compiler/eval:Ptr" %t36)
  store i64 %t37, ptr %l19
  br label %bb9
bb9:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l13, !tbaa !24
  br label %bb11
bb10:
  %t39 = load i64, ptr %l23, !tbaa !24
  store i64 %t39, ptr %l13, !tbaa !24
  br label %bb11
bb11:
  %t40 = load i64, ptr %l13, !tbaa !24
  store i64 %t40, ptr %l3, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 19
  %t44 = load i1, ptr %t43, !tbaa !21
  br i1 %t44, label %bb12, label %bb13
bb12:
  br label %ret
bb13:
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  %t47 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t47, ptr %l27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t48, i32 %t49)
  store i64 %t52, ptr %l30
  br label %bb15
bb15:
  %t53 = load ptr, ptr %l26, !tbaa !29
  %t54 = load %"compiler/eval:Ptr", ptr %l27
  %t55 = load i64, ptr %l30, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t53, %"compiler/eval:Ptr" %t54, i64 %t55)
  br label %bb16
bb16:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp eq i64 %t56, 0
  br i1 %t58, label %bb17, label %bb18
bb17:
  br label %ret
bb18:
  br label %bb19
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %t60, i64 %t61)
  br label %bb20
bb20:
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 7
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
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 60
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
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 23
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
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 23
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
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 58
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = getelementptr %"compiler/eval:genRec", ptr %l4, i32 0, i32 9
  %t76 = load i64, ptr %t75, !tbaa !24
  %t79 = add i64 %t74, %t76
  store i64 %t79, ptr %l9, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/eval:Machine", ptr %t82, i32 0, i32 57
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t90 = icmp sgt i64 %t81, %t87
  br i1 %t90, label %bb10, label %bb11
bb10:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 57
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
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e57
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
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 57
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l102, !tbaa !27
  %t137 = load ptr, ptr %l95, !tbaa !29
  %t138 = getelementptr %"compiler/eval:Machine", ptr %t137, i32 0, i32 57
  store { i64, ptr } %t132, ptr %t138, !tbaa !27
  %t139 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e57
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
  %t145 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 58
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
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 57
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
  %t266 = getelementptr %"compiler/eval:Machine", ptr %t264, i32 0, i32 57
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  store { i64, ptr } %t267, ptr %l164, !tbaa !27
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/eval:Machine", ptr %t268, i32 0, i32 58
  %t271 = load i64, ptr %t270, !tbaa !24
  %t272 = load i64, ptr %l23, !tbaa !24
  %t275 = add i64 %t271, %t272
  store i64 %t275, ptr %l168, !tbaa !24
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/eval:Machine", ptr %t276, i32 0, i32 62
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
  %t299 = getelementptr %"compiler/eval:Machine", ptr %t297, i32 0, i32 58
  %t300 = load i64, ptr %t299, !tbaa !24
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/eval:Machine", ptr %t302, i32 0, i32 58
  %t305 = load i64, ptr %t304, !tbaa !24
  %t306 = load i64, ptr %l7, !tbaa !24
  %t309 = add i64 %t305, %t306
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/eval:Machine", ptr %t311, i32 0, i32 58
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
  %t345 = getelementptr %"compiler/eval:Machine", ptr %t343, i32 0, i32 59
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
  %t363 = getelementptr %"compiler/eval:Machine", ptr %t359, i32 0, i32 58
  store i64 %t360, ptr %t363, !tbaa !24
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/eval:Machine", ptr %t364, i32 0, i32 56
  %t367 = load i64, ptr %t366, !tbaa !24
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/eval:Machine", ptr %t368, i32 0, i32 55
  %t371 = load { i64, ptr }, ptr %t370, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t376 = icmp sge i64 %t367, %t373
  br i1 %t376, label %bb53, label %bb54
bb53:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/eval:Machine", ptr %t378, i32 0, i32 55
  %t381 = load { i64, ptr }, ptr %t380, !tbaa !27
  store { i64, ptr } %t381, ptr %l32, !tbaa !27
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l212, !tbaa !29
  %t384 = ptrtoint ptr %v0 to i64
  store i64 %t384, ptr %l213, !tbaa !24
  %t385 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e55
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
  %t420 = getelementptr %"compiler/eval:Machine", ptr %t419, i32 0, i32 55
  %t421 = load { i64, ptr }, ptr %t420, !tbaa !27
  store { i64, ptr } %t421, ptr %l224, !tbaa !27
  %t423 = load ptr, ptr %l212, !tbaa !29
  %t424 = getelementptr %"compiler/eval:Machine", ptr %t423, i32 0, i32 55
  store { i64, ptr } %t418, ptr %t424, !tbaa !27
  %t425 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e55
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
  %t431 = getelementptr %"compiler/eval:Machine", ptr %t429, i32 0, i32 56
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
  %t482 = getelementptr %"compiler/eval:Machine", ptr %t480, i32 0, i32 55
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
  %t501 = getelementptr %"compiler/eval:Machine", ptr %t499, i32 0, i32 55
  %t502 = load { i64, ptr }, ptr %t501, !tbaa !27
  store { i64, ptr } %t502, ptr %l261, !tbaa !27
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = getelementptr %"compiler/eval:Machine", ptr %t503, i32 0, i32 56
  %t506 = load i64, ptr %t505, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l264, ptr %l5, i64 136, i1 false)
  %t508 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t509 = load ptr, ptr %t508, !tbaa !27
  %t510 = getelementptr %"compiler/eval:frame", ptr %t509, i64 %t506
  call void @llvm.memmove.p0.p0.i64(ptr %t510, ptr %l264, i64 136, i1 false)
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l265, !tbaa !29
  %t512 = load ptr, ptr %l265, !tbaa !29
  %t513 = getelementptr %"compiler/eval:Machine", ptr %t512, i32 0, i32 56
  %t514 = load i64, ptr %t513, !tbaa !24
  %t516 = add i64 %t514, 1
  %t518 = load ptr, ptr %l265, !tbaa !29
  %t519 = getelementptr %"compiler/eval:Machine", ptr %t518, i32 0, i32 56
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
  %t572 = getelementptr %"compiler/eval:Machine", ptr %t570, i32 0, i32 63
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/eval:Machine", ptr %t573, i32 0, i32 56
  %t576 = load i64, ptr %t575, !tbaa !24
  %t578 = sub i64 %t576, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t572, i64 %t578)
  br label %bb90
bb90:
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t583 = getelementptr %"compiler/eval:Machine", ptr %t581, i32 0, i32 64
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
  %t593 = getelementptr %"compiler/eval:Machine", ptr %t591, i32 0, i32 65
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
  %t607 = getelementptr %"compiler/eval:Machine", ptr %t605, i32 0, i32 56
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  store ptr %t3, ptr %l26, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 59
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
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 59
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
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 49
  %t42 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t43, ptr %v0, ptr %t41, i64 %t42)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t43, i64 144, i1 false)
  br label %bb11
bb11:
  %t46 = getelementptr %"compiler/eval:scope", ptr %l47, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t51 = icmp eq i64 %t47, %t48
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 49
  %t56 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t57, ptr %v0, ptr %t55, i64 %t56)
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t57, i64 144, i1 false)
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
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 49
  %t67 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t68, ptr %v0, ptr %t66, i64 %t67)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t68, i64 144, i1 false)
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
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t77, i32 0, i32 49
  %t80 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t81, ptr %v0, ptr %t79, i64 %t80)
  call void @llvm.memmove.p0.p0.i64(ptr %l67, ptr %t81, i64 144, i1 false)
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
  %t91 = getelementptr %"compiler/eval:Machine", ptr %t89, i32 0, i32 51
  %t92 = load i64, ptr %l3, !tbaa !24
  %t95 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t91, i64 %t92)
  store %"compiler/eval:reg" %t95, ptr %l73
  br label %bb23
bb23:
  %t96 = getelementptr %"compiler/eval:reg", ptr %l73, i32 0, i32 7
  %t97 = load i64, ptr %t96, !tbaa !24
  store i64 %t97, ptr %l5, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 49
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
  %t118 = getelementptr %"compiler/eval:Machine", ptr %t116, i32 0, i32 51
  %t119 = load i64, ptr %l3, !tbaa !24
  %t122 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t118, i64 %t119)
  store %"compiler/eval:reg" %t122, ptr %l86
  br label %bb26
bb26:
  %t123 = load %"compiler/eval:reg", ptr %l86
  store %"compiler/eval:reg" %t123, ptr %l7
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t124, i32 0, i32 52
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
  %t157 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 49
  %t158 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t159, ptr %v0, ptr %t157, i64 %t158)
  call void @llvm.memmove.p0.p0.i64(ptr %l104, ptr %t159, i64 144, i1 false)
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
  %t171 = getelementptr %"compiler/eval:Machine", ptr %t169, i32 0, i32 51
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
  %t184 = getelementptr %"compiler/eval:Machine", ptr %t182, i32 0, i32 49
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
  %t205 = getelementptr %"compiler/eval:Machine", ptr %t203, i32 0, i32 51
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
  %t218 = getelementptr %"compiler/eval:Machine", ptr %t216, i32 0, i32 52
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
  %t263 = getelementptr %"compiler/eval:Machine", ptr %t261, i32 0, i32 49
  %t264 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t265, ptr %v0, ptr %t263, i64 %t264)
  call void @llvm.memmove.p0.p0.i64(ptr %l152, ptr %t265, i64 144, i1 false)
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
  %t279 = getelementptr %"compiler/eval:Machine", ptr %t277, i32 0, i32 49
  %t280 = load i64, ptr %l16, !tbaa !24
  %t281 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t284 = and i64 %t280, %t281
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t285, ptr %v0, ptr %t279, i64 %t284)
  call void @llvm.memmove.p0.p0.i64(ptr %l162, ptr %t285, i64 144, i1 false)
  br label %bb57
bb56:
  br label %bb65
bb57:
  %t288 = getelementptr %"compiler/eval:scope", ptr %l162, i32 0, i32 7
  %t289 = load i64, ptr %t288, !tbaa !24
  store i64 %t289, ptr %l18, !tbaa !24
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/eval:Machine", ptr %t291, i32 0, i32 49
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
  %t312 = getelementptr %"compiler/eval:Machine", ptr %t310, i32 0, i32 49
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
  %t331 = getelementptr %"compiler/eval:Machine", ptr %t329, i32 0, i32 59
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
  %t337 = getelementptr %"compiler/eval:Machine", ptr %t335, i32 0, i32 13
  %t338 = load i1, ptr %t337, !tbaa !21
  br i1 %t338, label %bb66, label %bb67
bb66:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/eval:Machine", ptr %t340, i32 0, i32 49
  %t343 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t344, ptr %v0, ptr %t342, i64 %t343)
  call void @llvm.memmove.p0.p0.i64(ptr %l191, ptr %t344, i64 144, i1 false)
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
  %t353 = getelementptr %"compiler/eval:Machine", ptr %t351, i32 0, i32 49
  %t354 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t355, ptr %v0, ptr %t353, i64 %t354)
  call void @llvm.memmove.p0.p0.i64(ptr %l196, ptr %t355, i64 144, i1 false)
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
  %t369 = getelementptr %"compiler/eval:Machine", ptr %t367, i32 0, i32 14
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/eval:Machine", ptr %t370, i32 0, i32 46
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
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 46
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
  %t406 = getelementptr %"compiler/eval:Machine", ptr %t404, i32 0, i32 49
  %t407 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t408, ptr %v0, ptr %t406, i64 %t407)
  call void @llvm.memmove.p0.p0.i64(ptr %l218, ptr %t408, i64 144, i1 false)
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
  %t421 = getelementptr %"compiler/eval:Machine", ptr %t419, i32 0, i32 49
  %t422 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t423, ptr %v0, ptr %t421, i64 %t422)
  call void @llvm.memmove.p0.p0.i64(ptr %l226, ptr %t423, i64 144, i1 false)
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
  %t432 = getelementptr %"compiler/eval:Machine", ptr %t430, i32 0, i32 49
  %t433 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t434, ptr %v0, ptr %t432, i64 %t433)
  call void @llvm.memmove.p0.p0.i64(ptr %l231, ptr %t434, i64 144, i1 false)
  br label %bb90
bb90:
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %l231, i64 144, i1 false)
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
  %t449 = getelementptr %"compiler/eval:Machine", ptr %t447, i32 0, i32 49
  %t450 = load i64, ptr %l2, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l238, ptr %l24, i64 144, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t453, ptr %l238, i64 144, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t449, i64 %t450, ptr %t453)
  br label %bb91
bb91:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/eval:Machine", ptr %t454, i32 0, i32 50
  %t457 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t456, i64 %t457)
  br label %bb92
bb92:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/eval:Machine", ptr %t460, i32 0, i32 59
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 19
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 19
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 17
  store { i64, [5 x i64] } %a1, ptr %t13
  br label %ret
ret:
  ret void
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
  %l22 = alloca i64
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
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 19
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
  %t32 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %t28, %"compiler/eval:Ptr" %t29)
  store i64 %t32, ptr %l22
  br label %bb8
bb7:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb9
bb8:
  %t33 = load i64, ptr %l22, !tbaa !24
  %t34 = icmp eq i64 %t33, 0
  store i1 %t34, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 1
  %t40 = load i32, ptr %t39, !range !{i32 0, i32 2}
  %t42 = trunc i64 0 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWeakUnheld, !tbaa !27
  %t47 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t47, ptr %t45, { i64, ptr } %t46)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %ret
bb15:
  %t50 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t50, ptr %l6
  br label %bb16
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t52, %"compiler/eval:Ptr" %a2, %"compiler/eval:Ptr" %t54)
  br label %bb17
bb17:
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [21 x i64] } %a2) #0 {
entry:
  %l2 = alloca { i64, [21 x i64] }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { i64, [15 x i64] }
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca { i64, [21 x i64] }
  %l14 = alloca i1
  %l18 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l25 = alloca i1
  %l29 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, [21 x i64] }
  %l43 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, %"compiler/source:Span" }
  store { i64, [21 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l2, i64 176, i1 false)
  %t1 = load { i64, [21 x i64] }, ptr %l8
  %t2 = extractvalue { i64, [21 x i64] } %t1, 0
  %t3 = icmp eq i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t6 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t5, i32 0, i32 0
  %t7 = load %"compiler/source:Span", ptr %t6
  store %"compiler/source:Span" %t7, ptr %l3
  %t9 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t9, i32 0, i32 1
  %t11 = load %"compiler/mir:Lvalue", ptr %t10
  store %"compiler/mir:Lvalue" %t11, ptr %l4
  %t13 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t14 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t13, i32 0, i32 2
  %t15 = load { i64, [15 x i64] }, ptr %t14
  store { i64, [15 x i64] } %t15, ptr %l5
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t17 = load %"compiler/mir:Lvalue", ptr %l4
  %t19 = call i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %t17)
  store i1 %t19, ptr %l14
  br label %bb4
bb4:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t21 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWritesGlobalVar, !tbaa !27
  %t23 = load %"compiler/source:Span", ptr %l3
  %t25 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t21, 0
  %t27 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t25, %"compiler/source:Span" %t23, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t27, ptr %l18
  %t28 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l18, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l19, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l20, !tbaa !24
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l21, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l20, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t44 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l18, i32 0, i32 0
  store { i64, ptr } %t43, ptr %t44, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l18
  store { { i64, ptr }, %"compiler/source:Span" } %t45, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t48 = load { i64, [15 x i64] }, ptr %l5
  %t52 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereadsMutable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [15 x i64] } %t48)
  store i1 %t52, ptr %l25
  br label %bb8
bb8:
  %t53 = load i1, ptr %l25, !tbaa !21
  br i1 %t53, label %bb9, label %bb10
bb9:
  %t54 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyMutableGlobal, !tbaa !27
  %t56 = load %"compiler/source:Span", ptr %l3
  %t58 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t54, 0
  %t60 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t58, %"compiler/source:Span" %t56, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t60, ptr %l29
  %t61 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l29, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l30, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l31, !tbaa !24
  %t65 = load i64, ptr %l31, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l32, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l31, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t77 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l29, i32 0, i32 0
  store { i64, ptr } %t76, ptr %t77, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t78 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l29
  store { { i64, ptr }, %"compiler/source:Span" } %t78, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb24
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %l2, i64 176, i1 false)
  %t79 = load { i64, [21 x i64] }, ptr %l33
  %t80 = extractvalue { i64, [21 x i64] } %t79, 0
  %t81 = icmp eq i64 %t80, 5
  br i1 %t81, label %bb13, label %bb14
bb13:
  %t83 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t83, i32 0, i32 0
  %t85 = load %"compiler/source:Span", ptr %t84
  store %"compiler/source:Span" %t85, ptr %l6
  %t87 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t87, i32 0, i32 1
  %t89 = load { i64, [1 x i64] }, ptr %t88
  store { i64, [1 x i64] } %t89, ptr %l7
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t91 = load { i64, [1 x i64] }, ptr %l7
  %t93 = extractvalue { i64, [1 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 2
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb16, label %bb17
bb16:
  %t98 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDestructor, !tbaa !27
  %t100 = load %"compiler/source:Span", ptr %l6
  %t102 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t98, 0
  %t104 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t102, %"compiler/source:Span" %t100, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t104, ptr %l43
  %t105 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l43, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l44, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  store i64 %t108, ptr %l45, !tbaa !24
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = mul i64 %t109, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t110)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  store { i64, ptr } %t113, ptr %l46, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = load i64, ptr %l45, !tbaa !24
  %t119 = mul i64 %t118, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t115, ptr %t117, i64 %t119, i1 false)
  %t120 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t121 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l43, i32 0, i32 0
  store { i64, ptr } %t120, ptr %t121, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l43
  store { { i64, ptr }, %"compiler/source:Span" } %t122, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_14e567516c3eb5fb_1379a201658fd827)
  unreachable
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t123, ptr %l48, !tbaa !27
  %t124 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t124, ptr %l49
  br label %bb25
bb25:
  %t125 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t126 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t125, 0
  %t127 = load %"compiler/source:Span", ptr %l49
  %t128 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t126, %"compiler/source:Span" %t127, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t128, ptr %l50
  %t129 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l50, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l51, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l52, !tbaa !24
  %t133 = load i64, ptr %l52, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l53, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l52, !tbaa !24
  %t143 = mul i64 %t142, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %t141, i64 %t143, i1 false)
  %t144 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t145 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l50, i32 0, i32 0
  store { i64, ptr } %t144, ptr %t145, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t146 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l50
  store { { i64, ptr }, %"compiler/source:Span" } %t146, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i1
  %l28 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 26
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t5, %t11
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 26
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l13, !tbaa !27
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i64, ptr %t23, i64 %t20
  %t25 = load i64, ptr %t24, !tbaa !34
  %t27 = icmp sge i64 %t25, 0
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t29 = load i1, ptr %l11, !tbaa !21
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 26
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l18, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i64, ptr %t37, i64 %t34
  %t39 = load i64, ptr %t38, !tbaa !34
  store i64 %t39, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidthOf(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l23
  br label %bb7
bb7:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l26
  br label %bb8
bb8:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 26
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l28, !tbaa !27
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t57
  store i64 %t58, ptr %t63, !tbaa !34
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t64 = load i64, ptr %l3, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aStop_2eText(ptr %v0, ptr %v1, ptr %v2, { i64, [5 x i64] } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, [5 x i64] }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/source:Span"
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l26 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l34 = alloca i1
  %l36 = alloca { i64, ptr }
  %l39 = alloca i32
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca i32
  %l49 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l60 = alloca i32
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t6, ptr %l11, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l12, !tbaa !24
  %t9 = load i64, ptr %l12, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l13, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t20, ptr %l11, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l11, !tbaa !27
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
  %t32 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
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
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 16}
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
  br label %bb26
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t60 = load i32, ptr %l3, !range !{i32 0, i32 16}
  %t62 = trunc i64 0 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb14
bb13:
  %t65 = load i32, ptr %l3, !range !{i32 0, i32 16}
  %t67 = trunc i64 1 to i32
  %t68 = icmp eq i32 %t65, %t67
  store i1 %t68, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t70 = load i1, ptr %l26, !tbaa !21
  br i1 %t70, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t71, ptr %l30, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l31, !tbaa !24
  %t74 = load i64, ptr %l31, !tbaa !24
  %t75 = mul i64 %t74, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l32, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = load i64, ptr %l31, !tbaa !24
  %t84 = mul i64 %t83, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t80, ptr %t82, i64 %t84, i1 false)
  %t85 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t85, ptr %l30, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  %t86 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t87 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t87, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t89, ptr %l34
  br label %bb18
bb18:
  %t90 = load i1, ptr %l34, !tbaa !21
  br i1 %t90, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/source:Source", ptr %t91, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l36, !tbaa !27
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t97 = load i32, ptr %t96, !tbaa !23
  %t100 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v1, ptr %t95, i32 %t97)
  store i32 %t100, ptr %l39
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t101 = load i32, ptr %l3, !range !{i32 0, i32 16}
  %t103 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s6, i32 %t101)
  store { i64, ptr } %t103, ptr %l41
  br label %bb22
bb22:
  %t104 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t109 = add i64 %t106, %t108
  %t110 = load i32, ptr %l39, !tbaa !23
  %t111 = sext i32 %t110 to i64
  %t112 = call i64 @__olang_fmt_i64(ptr null, i64 %t111)
  %t113 = add i64 %t109, %t112
  %t114 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t115 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t116 = add i64 %t113, %t115
  %t117 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = add i64 %t116, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t105, i64 %t106)
  %t122 = getelementptr i8, ptr %t121, i64 %t106
  call void @olang_textcopy(ptr %t122, ptr %t107, i64 %t108)
  %t123 = getelementptr i8, ptr %t122, i64 %t108
  %t124 = call i64 @__olang_fmt_i64(ptr %t123, i64 %t111)
  %t125 = getelementptr i8, ptr %t123, i64 %t112
  call void @olang_textcopy(ptr %t125, ptr %t114, i64 %t115)
  %t126 = getelementptr i8, ptr %t125, i64 %t115
  call void @olang_textcopy(ptr %t126, ptr %t118, i64 %t119)
  %t127 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t121, 1
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t128, ptr %rv
  br label %ret
bb23:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/source:Source", ptr %t130, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l44, !tbaa !27
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t136 = load i32, ptr %t135, !tbaa !23
  %t139 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v1, ptr %t134, i32 %t136)
  store i32 %t139, ptr %l47
  br label %bb24
bb24:
  %t140 = load i32, ptr %l3, !range !{i32 0, i32 16}
  %t142 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s4, i32 %t140)
  store { i64, ptr } %t142, ptr %l49
  br label %bb25
bb25:
  %t143 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t149 = add i64 %t146, %t148
  %t150 = load i32, ptr %l47, !tbaa !23
  %t151 = sext i32 %t150 to i64
  %t152 = call i64 @__olang_fmt_i64(ptr null, i64 %t151)
  %t153 = add i64 %t149, %t152
  %t154 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t157 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = add i64 %t156, %t159
  %t161 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t165 = extractvalue { i64, ptr } %t143, 1
  %t166 = extractvalue { i64, ptr } %t143, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t145, i64 %t146)
  %t169 = getelementptr i8, ptr %t168, i64 %t146
  call void @olang_textcopy(ptr %t169, ptr %t147, i64 %t148)
  %t170 = getelementptr i8, ptr %t169, i64 %t148
  %t171 = call i64 @__olang_fmt_i64(ptr %t170, i64 %t151)
  %t172 = getelementptr i8, ptr %t170, i64 %t152
  call void @olang_textcopy(ptr %t172, ptr %t154, i64 %t155)
  %t173 = getelementptr i8, ptr %t172, i64 %t155
  call void @olang_textcopy(ptr %t173, ptr %t158, i64 %t159)
  %t174 = getelementptr i8, ptr %t173, i64 %t159
  call void @olang_textcopy(ptr %t174, ptr %t161, i64 %t162)
  %t175 = getelementptr i8, ptr %t174, i64 %t162
  call void @olang_textcopy(ptr %t175, ptr %t165, i64 %t166)
  %t176 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t168, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t177, ptr %rv
  br label %ret
bb26:
  %t179 = load { i64, [5 x i64] }, ptr %l0
  %t181 = extractvalue { i64, [5 x i64] } %t179, 0
  %t182 = icmp eq i64 %t181, 3
  br i1 %t182, label %bb27, label %bb28
bb27:
  %t184 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t185 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t184, i32 0, i32 0
  %t186 = load { i64, ptr }, ptr %t185
  store { i64, ptr } %t186, ptr %l6, !tbaa !27
  %t188 = getelementptr { i64, [5 x i64] }, ptr %l0, i32 0, i32 1
  %t189 = getelementptr { { i64, ptr }, i64, %"compiler/source:Span" }, ptr %t188, i32 0, i32 2
  %t190 = load %"compiler/source:Span", ptr %t189
  store %"compiler/source:Span" %t190, ptr %l7
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr %"compiler/source:Source", ptr %t192, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  store { i64, ptr } %t195, ptr %l57, !tbaa !27
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t198 = load i32, ptr %t197, !tbaa !23
  %t201 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v1, ptr %t196, i32 %t198)
  store i32 %t201, ptr %l60
  br label %bb30
bb30:
  %t202 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t208 = add i64 %t205, %t207
  %t209 = load i32, ptr %l60, !tbaa !23
  %t210 = sext i32 %t209 to i64
  %t211 = call i64 @__olang_fmt_i64(ptr null, i64 %t210)
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t217 = extractvalue { i64, ptr } %t202, 1
  %t218 = extractvalue { i64, ptr } %t202, 0
  %t219 = add i64 %t215, %t218
  %t220 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t219)
  call void @olang_textcopy(ptr %t220, ptr %t204, i64 %t205)
  %t221 = getelementptr i8, ptr %t220, i64 %t205
  call void @olang_textcopy(ptr %t221, ptr %t206, i64 %t207)
  %t222 = getelementptr i8, ptr %t221, i64 %t207
  %t223 = call i64 @__olang_fmt_i64(ptr %t222, i64 %t210)
  %t224 = getelementptr i8, ptr %t222, i64 %t211
  call void @olang_textcopy(ptr %t224, ptr %t213, i64 %t214)
  %t225 = getelementptr i8, ptr %t224, i64 %t214
  call void @olang_textcopy(ptr %t225, ptr %t217, i64 %t218)
  %t226 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t220, 1
  store { i64, ptr } %t227, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_e6861b790824244d_fbaf0ff74301c89)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2feval_2ecountBits128(i1 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l46 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 %a3, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t3 = load i64, ptr %l6, !tbaa !24
  %t4 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l7, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l19, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l9, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t51 = icmp sge i64 %t49, 64
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t54 = load i64, ptr %l10, !tbaa !24
  %t56 = sub i64 %t54, 64
  store i64 %t56, ptr %l42, !tbaa !24
  %t58 = load i64, ptr %l42, !tbaa !24
  %t59 = load i64, ptr %l42, !tbaa !24
  %t60 = ashr i64 %a2, %t59
  %t62 = and i64 %t60, 1
  store i64 %t62, ptr %l39, !tbaa !24
  br label %bb13
bb12:
  %t65 = load i64, ptr %l10, !tbaa !24
  store i64 %t65, ptr %l46, !tbaa !24
  %t67 = load i64, ptr %l46, !tbaa !24
  %t68 = load i64, ptr %l46, !tbaa !24
  %t69 = ashr i64 %a1, %t68
  %t71 = and i64 %t69, 1
  store i64 %t71, ptr %l39, !tbaa !24
  br label %bb13
bb13:
  %t73 = load i64, ptr %l39, !tbaa !24
  store i64 %t73, ptr %l11, !tbaa !24
  br i1 %a0, label %bb14, label %bb15
bb14:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t77 = load i64, ptr %l11, !tbaa !24
  %t80 = add i64 %t76, %t77
  store i64 %t80, ptr %l4, !tbaa !24
  br label %bb19
bb15:
  %t82 = load i64, ptr %l11, !tbaa !24
  %t84 = icmp eq i64 %t82, 1
  br i1 %t84, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l4, !tbaa !24
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l9, !tbaa !24
  br label %bb7
bb21:
  %t94 = load i64, ptr %l4, !tbaa !24
  store i64 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2efailFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i32
  %l19 = alloca i32
  %l20 = alloca %"compiler/mir:Fn"
  %l24 = alloca i32
  %l26 = alloca i32
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca { i64, [4 x i64] }
  %l38 = alloca ptr
  %l39 = alloca i32
  %l41 = alloca %"compiler/mir:Lvalue"
  %l50 = alloca { i64, [21 x i64] }
  %l63 = alloca { i64, [21 x i64] }
  %l65 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca { i64, [4 x i64] }
  %l70 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t20 = alloca %"compiler/mir:Fn", align 8
  %t50 = alloca { i64, [4 x i64] }, align 8
  %t69 = alloca { i64, [4 x i64] }, align 8
  %t77 = alloca { i64, [8 x i64] }, align 8
  %t94 = alloca { i64, [21 x i64] }, align 8
  %t110 = alloca { i64, [4 x i64] }, align 8
  %t118 = alloca { i64, [8 x i64] }, align 8
  %t133 = alloca { i64, [21 x i64] }, align 8
  %t148 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i32, ptr %l10, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l11, !tbaa !29
  store i64 %a1, ptr %l12, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l13, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l4, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l16
  br label %bb2
bb2:
  %t13 = load i32, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l13, !tbaa !29
  %t16 = load i32, ptr %l16, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t15, i32 %t16, i32 %t13, i32 %a2, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t19, ptr %l19
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t20, ptr %v0, ptr %v1, ptr %t21, i64 %t22, i32 %t23)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t20, i64 800, i1 false)
  br label %bb4
bb4:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t24, ptr %lp5
  %t25 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %l20, i64 800, i1 false)
  %t26 = load ptr, ptr %lp5
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t28 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t32 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t26, i32 %t27, %"compiler/source:Span" %t28)
  store i32 %t32, ptr %l24
  br label %bb5
bb5:
  %t33 = load i32, ptr %l24, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  %t34 = load ptr, ptr %lp5
  %t36 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t34)
  store i32 %t36, ptr %l26
  br label %bb6
bb6:
  %t37 = load i32, ptr %l26, !tbaa !23
  store i32 %t37, ptr %l7, !tbaa !23
  %t38 = load ptr, ptr %lp5
  %t40 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t38)
  store i32 %t40, ptr %l28
  br label %bb7
bb7:
  %t41 = load i32, ptr %l28, !tbaa !23
  store i32 %t41, ptr %l8, !tbaa !23
  %t42 = load ptr, ptr %lp5
  store ptr %t42, ptr %l29, !tbaa !29
  %t43 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t43, ptr %l30, !tbaa !23
  %t44 = load i32, ptr %l6, !tbaa !23
  %t46 = sext i32 %t44 to i64
  store i64 %t46, ptr %l32, !tbaa !24
  store i32 15, ptr %l33
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t47, ptr %l34, !tbaa !23
  %t48 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t48, ptr %l35
  br label %bb8
bb8:
  %t49 = load i32, ptr %l4, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 0
  store i64 2, ptr %t51
  %t53 = insertvalue { i32, i64 } undef, i32 %t49, 0
  %t54 = insertvalue { i32, i64 } %t53, i64 0, 1
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  store { i32, i64 } %t54, ptr %t55
  %t56 = load { i64, [4 x i64] }, ptr %t50
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t58 = load i32, ptr %l30, !tbaa !23
  %t59 = load i64, ptr %l32, !tbaa !24
  %t60 = load i32, ptr %l33, !range !{i32 0, i32 52}
  %t61 = load i32, ptr %l34, !tbaa !23
  %t62 = load { i64, [4 x i64] }, ptr %l35
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t57, i32 %t58, i64 %t59, i32 %t60, i32 %t61, { i64, [4 x i64] } %t62, { i64, [4 x i64] } %t56)
  br label %bb9
bb9:
  %t64 = load ptr, ptr %lp5
  store ptr %t64, ptr %l38, !tbaa !29
  %t65 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t65, ptr %l39, !tbaa !23
  %t66 = load i32, ptr %l6, !tbaa !23
  %t68 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t66)
  store %"compiler/mir:Lvalue" %t68, ptr %l41
  br label %bb10
bb10:
  store { i64, [4 x i64] } zeroinitializer, ptr %t69
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 0
  store i64 1, ptr %t70
  %t71 = load %"compiler/mir:Lvalue", ptr %l41
  %t72 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t71, 0
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t72, ptr %t73
  %t74 = load { i64, [4 x i64] }, ptr %t69
  %t75 = load i32, ptr %l7, !tbaa !23
  %t76 = load i32, ptr %l8, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [8 x i64] }, ptr %t77, i32 0, i32 0
  store i64 2, ptr %t78
  %t80 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t74, 0
  %t82 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t80, i32 %t75, 1
  %t84 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t82, i32 %t76, 2
  %t85 = getelementptr { i64, [8 x i64] }, ptr %t77, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t84, ptr %t85
  %t86 = load { i64, [8 x i64] }, ptr %t77
  %t87 = load ptr, ptr %l38, !tbaa !29
  %t88 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t87, i32 %t88, { i64, [8 x i64] } %t86)
  br label %bb11
bb11:
  %t90 = load ptr, ptr %lp5
  %t91 = load i32, ptr %l7, !tbaa !23
  %t92 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t93 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [21 x i64] }, ptr %t94, i32 0, i32 0
  store i64 4, ptr %t95
  %t97 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t92, 0
  %t99 = insertvalue { %"compiler/source:Span", i32 } %t97, i32 %t93, 1
  %t100 = getelementptr { i64, [21 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t99, ptr %t100
  %t101 = load { i64, [21 x i64] }, ptr %t94
  store { i64, [21 x i64] } %t101, ptr %l50
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t90, i32 %t91, ptr %l50)
  br label %bb12
bb12:
  %t105 = load ptr, ptr %lp5
  %t106 = load i32, ptr %l7, !tbaa !23
  %t107 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t108 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 0
  store i64 2, ptr %t111
  %t113 = insertvalue { i32, i64 } undef, i32 %t108, 0
  %t115 = insertvalue { i32, i64 } %t113, i64 %a3, 1
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  store { i32, i64 } %t115, ptr %t116
  %t117 = load { i64, [4 x i64] }, ptr %t110
  store { i64, [8 x i64] } zeroinitializer, ptr %t118
  %t119 = getelementptr { i64, [8 x i64] }, ptr %t118, i32 0, i32 0
  store i64 7, ptr %t119
  %t121 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t107, 0
  %t123 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t121, { i64, [4 x i64] } %t117, 1
  %t124 = getelementptr { i64, [8 x i64] }, ptr %t118, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t123, ptr %t124
  %t125 = load { i64, [8 x i64] }, ptr %t118
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t105, i32 %t106, { i64, [8 x i64] } %t125)
  br label %bb13
bb13:
  %t129 = load ptr, ptr %lp5
  %t130 = load i32, ptr %l8, !tbaa !23
  %t131 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t132 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [21 x i64] }, ptr %t133, i32 0, i32 0
  store i64 4, ptr %t134
  %t136 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t131, 0
  %t138 = insertvalue { %"compiler/source:Span", i32 } %t136, i32 %t132, 1
  %t139 = getelementptr { i64, [21 x i64] }, ptr %t133, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t138, ptr %t139
  %t140 = load { i64, [21 x i64] }, ptr %t133
  store { i64, [21 x i64] } %t140, ptr %l63
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t129, i32 %t130, ptr %l63)
  br label %bb14
bb14:
  %t144 = load ptr, ptr %lp5
  store ptr %t144, ptr %l65, !tbaa !29
  %t145 = load i32, ptr %l8, !tbaa !23
  store i32 %t145, ptr %l66, !tbaa !23
  %t146 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t146, ptr %l67
  %t147 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t147, ptr %l68
  br label %bb15
bb15:
  store { i64, [8 x i64] } zeroinitializer, ptr %t148
  %t149 = getelementptr { i64, [8 x i64] }, ptr %t148, i32 0, i32 0
  store i64 5, ptr %t149
  %t150 = load %"compiler/source:Span", ptr %l67
  %t151 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t150, 0
  %t152 = load { i64, [4 x i64] }, ptr %l68
  %t153 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t151, { i64, [4 x i64] } %t152, 1
  %t154 = getelementptr { i64, [8 x i64] }, ptr %t148, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t153, ptr %t154
  %t155 = load { i64, [8 x i64] }, ptr %t148
  %t156 = load ptr, ptr %l65, !tbaa !29
  %t157 = load i32, ptr %l66, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t156, i32 %t157, { i64, [8 x i64] } %t155)
  br label %bb16
bb16:
  %t159 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %l70, ptr %t159, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l70, i64 800, i1 false)
  br label %ret
ret:
  ret void
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

define dso_local i1 @compiler_2feval_2erangeNamesGlobal(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l1 = alloca %"compiler/mir:Range"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l40 = alloca { i64, [4 x i64] }
  %l41 = alloca i1
  %rv = alloca i1
  store %"compiler/mir:Range" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l3, !tbaa !23
  store i32 1, ptr %l4, !tbaa !23
  %t4 = load i32, ptr %l3, !tbaa !23
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = icmp sgt i32 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i32, ptr %l4, !tbaa !23
  %t12 = icmp sgt i32 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l12, !tbaa !23
  br label %bb6
bb3:
  %t14 = load i32, ptr %l3, !tbaa !23
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = sub i32 %t14, %t15
  %t19 = load i32, ptr %l4, !tbaa !23
  %t22 = add i32 %t18, %t19
  %t24 = sub i32 %t22, 1
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = sdiv i32 %t24, %t25
  store i32 %t28, ptr %l15, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb5
bb5:
  %t30 = load i32, ptr %l15, !tbaa !23
  store i32 %t30, ptr %l12, !tbaa !23
  br label %bb6
bb6:
  %t31 = load i32, ptr %l12, !tbaa !23
  store i32 %t31, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  br label %bb7
bb7:
  %t32 = load i32, ptr %l6, !tbaa !23
  %t33 = load i32, ptr %l5, !tbaa !23
  %t36 = icmp slt i32 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t40 = load i32, ptr %l2, !tbaa !23
  %t41 = load i32, ptr %l6, !tbaa !23
  %t42 = load i32, ptr %l4, !tbaa !23
  %t45 = mul i32 %t41, %t42
  %t48 = add i32 %t40, %t45
  %t52 = getelementptr %"compiler/mir:Fn", ptr %a0, i32 0, i32 11
  %t53 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t54 = load i32, ptr %t53, !tbaa !23
  %t56 = sext i32 %t54 to i64
  %t59 = sext i32 %t48 to i64
  %t62 = add i64 %t56, %t59
  %t65 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t52, i64 %t62)
  store { i64, [4 x i64] } %t65, ptr %l40
  br label %bb11
bb11:
  %t66 = load { i64, [4 x i64] }, ptr %l40
  %t67 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t66)
  store i1 %t67, ptr %l41
  br label %bb12
bb12:
  %t68 = load i1, ptr %l41, !tbaa !21
  br i1 %t68, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t70 = load i32, ptr %l6, !tbaa !23
  %t72 = add i32 %t70, 1
  store i32 %t72, ptr %l6, !tbaa !23
  br label %bb7
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t29 = load i32, ptr %l12, !range !{i32 0, i32 52}
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

define dso_local void @compiler_2feval_3acfn_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l19 = alloca %"compiler/eval:cfn"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 0
  store i64 0, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 1
  store { i64, ptr } zeroinitializer, ptr %t3, !tbaa !27
  %t5 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 2
  store { i64, ptr } zeroinitializer, ptr %t5, !tbaa !27
  %t7 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 3
  store { i64, ptr } zeroinitializer, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 4
  store { i64, ptr } zeroinitializer, ptr %t9, !tbaa !27
  %t11 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 5
  store { i64, ptr } zeroinitializer, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 6
  store { i64, ptr } zeroinitializer, ptr %t13, !tbaa !27
  %t15 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 7
  store { i64, ptr } zeroinitializer, ptr %t15, !tbaa !27
  %t17 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 8
  store { i64, ptr } zeroinitializer, ptr %t17, !tbaa !27
  %t19 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 9
  store { i64, ptr } zeroinitializer, ptr %t19, !tbaa !27
  %t21 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 10
  store { i64, ptr } zeroinitializer, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 11
  store { i64, ptr } zeroinitializer, ptr %t23, !tbaa !27
  %t25 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 12
  store { i64, ptr } zeroinitializer, ptr %t25, !tbaa !27
  %t27 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 13
  store { i64, ptr } zeroinitializer, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 14
  store { i64, ptr } zeroinitializer, ptr %t29, !tbaa !27
  %t31 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 15
  store i64 0, ptr %t31, !tbaa !24
  %t33 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 16
  store i1 false, ptr %t33, !tbaa !21
  %t35 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 17
  store i1 false, ptr %t35, !tbaa !21
  %t37 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 18
  store { i64, ptr } zeroinitializer, ptr %t37, !tbaa !27
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l19, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_3aframe_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l20 = alloca %"compiler/eval:frame"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 0
  store i64 0, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 1
  store i64 0, ptr %t3, !tbaa !24
  %t5 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 2
  store i64 0, ptr %t5, !tbaa !24
  %t7 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 3
  store i64 0, ptr %t7, !tbaa !24
  %t9 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 4
  store i64 0, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 5
  store i64 0, ptr %t11, !tbaa !24
  %t13 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 6
  store i64 0, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 7
  store i64 0, ptr %t15, !tbaa !24
  %t17 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 8
  store i64 0, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 9
  store i64 0, ptr %t19, !tbaa !24
  %t21 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 10
  store i1 false, ptr %t21, !tbaa !21
  %t23 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 11
  store i1 false, ptr %t23, !tbaa !21
  %t25 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 12
  store i1 false, ptr %t25, !tbaa !21
  %t27 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 13
  store i64 0, ptr %t27, !tbaa !24
  %t29 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 14
  store i64 -1, ptr %t29, !tbaa !24
  %t31 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 15
  store i1 false, ptr %t31, !tbaa !21
  %t33 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 16
  store i64 -1, ptr %t33, !tbaa !24
  %t35 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 17
  store i32 0, ptr %t35, !tbaa !23
  %t37 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 18
  store i32 -1, ptr %t37, !tbaa !23
  %t39 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 19
  store i64 0, ptr %t39, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 136, i1 false)
  br label %ret
ret:
  ret void
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler_2feval_3aMachine_2e57 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2feval_3aMachine_2e55 = weak hidden constant i1 false
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

@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"an error escapes, code " }>, align 8
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
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
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

declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a07810e0cbb459c4_651f13a6a529fa18 = external constant [0 x i8]
declare %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyTerm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, [8 x i64] } %a2, ptr %a3, ptr %a4)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3)
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7b1287020d5a411f_7f0f28d70ecde84b = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyNaNSignal = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyNaNOp = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyClosed = external constant <{ [8 x i8], ptr }>
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
@olang_loc_467821a0171adcef_9f7d024fdb995773 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshDrops(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@G_2ecompiler_2feval_2erDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6be2223409a54017_8087911232ed0aeb = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyEnds = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2eflatOp(i32 %a0)
@G_2ecompiler_2feval_2efastStride = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [4 x i64] } %a2, ptr %a3, i64 %a4, i64 %a5)
@G_2ecompiler_2feval_2efUn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2efBin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ei64(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ewordOp(i32 %a0)
declare i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2efStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [4 x i64] } %a2, i64 %a3, ptr %a4, i64 %a5)
@olang_loc_f109e7d1d9d4095f_6bdbe89eeb68f2bb = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
@olang_loc_9c073bf56b8103e8_f70ded813690f4 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2feval_2ebmask(i64 %a0)
declare i64 @compiler_2feval_2eminBits(i64 %a0)
@G_2ecompiler_2feval_2eWhyDivZero = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyDivMin = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2evUint = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyShift = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
@olang_loc_cc4a112acbde7ca1_19be4f90a96d28f5 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eHas_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
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
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evAgg = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evEnum = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evOrd = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@olang_loc_3ad4fb4c50638c0b_118ff119db9b3957 = external constant [0 x i8]
declare %"compiler/eval:reg" @compiler_2feval_3areg_2ector(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2ePush_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, %"compiler/eval:reg" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eLen_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0)
declare void @compiler_2feval_3ascope_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ePush_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@G_2ecompiler_2feval_2evFixed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
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
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunlinkReg(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2egDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/eval:Ptr" %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2egGen = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, i64 %a1, ptr %a2)
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
@G_2ecompiler_2feval_2eWhyWeakUnheld = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyWritesGlobalVar = external constant <{ [8 x i8], ptr }>
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereadsMutable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [15 x i64] } %a2)
@G_2ecompiler_2feval_2eWhyMutableGlobal = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyDestructor = external constant <{ [8 x i8], ptr }>
@olang_loc_14e567516c3eb5fb_1379a201658fd827 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidthOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2eExitText(ptr %v0, i32 %a0)
@olang_loc_e6861b790824244d_fbaf0ff74301c89 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2feval_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eB0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 %a0)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %a0, i32 %a1, { i64, [8 x i64] } %a2)
@G_2ecompiler_2feval_2eS0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@olang_loc_d44b28fe9fc96fb9_71a7ff2b834e49cd = external constant [0 x i8]
declare i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %a0)
declare %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a0)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)

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
