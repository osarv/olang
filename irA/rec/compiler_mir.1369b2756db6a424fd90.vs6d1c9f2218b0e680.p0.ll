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
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:dumper" = type { ptr, ptr, %"std/prelude/text:StringBuilder" }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:verifier" = type { ptr, ptr, %"std/prelude/text:StringBuilder", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
@G_2ecompiler_2fmir_2eEmpty = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eI32T = constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eI64T = constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eNoBlock = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fmir_2eNoLocal = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fmir_2eNoPlace = constant <{ [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 32
@G_2ecompiler_2fmir_2eNoScope = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fmir_2eSp0 = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
define dso_local i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
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
  %l19 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l46 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l51 = alloca i32
  %l54 = alloca i32
  %l55 = alloca i1
  %l68 = alloca i64
  %l71 = alloca i64
  %l89 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1, i32 %a1)
  store { i64, ptr } %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l28, !tbaa !24
  store i64 %t37, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l25, !tbaa !24
  store i64 %t38, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l9, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l10, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l46, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t59, ptr %l48, !tbaa !27
  %t60 = load i64, ptr %l10, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i32, ptr %t63, i64 %t60
  %t65 = load i32, ptr %t64, !tbaa !33
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t58, i32 %t65)
  store i32 %t68, ptr %l51
  br label %bb12
bb12:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t69, i32 %a2)
  store i32 %t73, ptr %l54
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l46, !tbaa !29
  %t75 = load i32, ptr %l51, !tbaa !23
  %t76 = load i32, ptr %l54, !tbaa !23
  %t77 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t74, i32 %t75, i32 %t76)
  store i1 %t77, ptr %l55
  br label %bb14
bb14:
  %t78 = load i1, ptr %l55, !tbaa !21
  br i1 %t78, label %bb15, label %bb16
bb15:
  %t79 = load i64, ptr %l10, !tbaa !24
  %t81 = add i64 %t79, 1
  %t83 = shl i64 %t81, 16
  %t87 = or i64 %t83, %a3
  store i64 %t87, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l9, !tbaa !24
  br label %bb8
bb19:
  store i64 0, ptr %l11, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  store i64 %t95, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t97 = load i64, ptr %l12, !tbaa !24
  %t98 = load i64, ptr %l11, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb20, label %bb21
bb20:
  %t103 = load i64, ptr %l13, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb25
bb22:
  %t107 = load i64, ptr %l12, !tbaa !24
  %t108 = load i64, ptr %l11, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l13, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l13, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l71, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb24
bb24:
  %t123 = load i64, ptr %l71, !tbaa !24
  store i64 %t123, ptr %l68, !tbaa !24
  br label %bb25
bb25:
  %t124 = load i64, ptr %l68, !tbaa !24
  store i64 %t124, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb26
bb26:
  %t125 = load i64, ptr %l15, !tbaa !24
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb27, label %bb28
bb27:
  br label %bb34
bb28:
  br label %bb29
bb29:
  %t133 = load i64, ptr %l11, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t135 = load i64, ptr %l13, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  store i64 %t141, ptr %l16, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t143, ptr %l89, !tbaa !27
  %t144 = load i64, ptr %l16, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i32, ptr %t147, i64 %t144
  %t149 = load i32, ptr %t148, !tbaa !33
  %t150 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t153 = icmp eq i32 %t149, %t150
  br i1 %t153, label %bb30, label %bb31
bb30:
  %t155 = load i64, ptr %l16, !tbaa !24
  %t157 = add i64 %t155, 1
  %t159 = shl i64 %t157, 16
  store i64 %t159, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t161 = load i64, ptr %l15, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l15, !tbaa !24
  br label %bb26
bb34:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t14 = trunc i64 24 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb15
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb5
bb5:
  %t22 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t24 = trunc i64 18 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb8:
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = load i32, ptr %l21, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t35, ptr %l22
  br label %bb9
bb9:
  %t36 = load i32, ptr %l22, !range !{i32 0, i32 6}
  %t38 = trunc i64 1 to i32
  %t39 = icmp eq i32 %t36, %t38
  store i1 %t39, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l17, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l28
  br label %bb13
bb12:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb14
bb13:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l25, !tbaa !21
  store i1 %t48, ptr %l11, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l11, !tbaa !21
  store i1 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0) #0 {
entry:
  %l4 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Lvalue"
  %t2 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, [2 x i64] } zeroinitializer, ptr %t2
  %t3 = getelementptr { i64, [2 x i64] }, ptr %t2, i32 0, i32 0
  store i64 1, ptr %t3
  %t5 = insertvalue { i32 } undef, i32 %a0, 0
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t2, i32 0, i32 1
  store { i32 } %t5, ptr %t6
  %t7 = load { i64, [2 x i64] }, ptr %t2
  %t8 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  %t11 = call %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %s0, { i64, [2 x i64] } %t7, %"compiler/mir:Range" %t8)
  store %"compiler/mir:Lvalue" %t11, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"compiler/mir:Lvalue", ptr %l4
  store %"compiler/mir:Lvalue" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2) #0 {
entry:
  %l1 = alloca { i64, [7 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l10 = alloca i1
  %l15 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l52 = alloca i1
  %l55 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l75 = alloca { i64, ptr }
  %s7 = alloca %olang.scope
  %rv = alloca i64
  store { i64, [7 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [2 x i64] }, ptr %t7
  %t10 = extractvalue { i64, [2 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 3
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb3:
  %t13 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t14 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t13, i32 0, i32 0
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32, i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16, !range !{i32 0, i32 8}
  %t19 = trunc i64 0 to i32
  %t20 = icmp eq i32 %t17, %t19
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l10, !tbaa !21
  store i1 %t22, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l7, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  br label %bb14
bb8:
  %t24 = load { i64, [7 x i64] }, ptr %l1
  %t26 = extractvalue { i64, [7 x i64] } %t24, 0
  %t27 = icmp eq i64 %t26, 0
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t30 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t29, i32 0, i32 0
  %t31 = load { i64, [2 x i64] }, ptr %t30
  %t33 = extractvalue { i64, [2 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 5
  store i1 %t34, ptr %l15, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l15, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 1, ptr %l4, !tbaa !24
  br label %bb85
bb15:
  %t37 = load { i64, [7 x i64] }, ptr %l1
  %t39 = extractvalue { i64, [7 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 0
  br i1 %t40, label %bb16, label %bb17
bb16:
  %t42 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t42, i32 0, i32 0
  %t44 = load { i64, [2 x i64] }, ptr %t43
  %t46 = extractvalue { i64, [2 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 3
  br i1 %t47, label %bb18, label %bb19
bb17:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb21
bb18:
  %t49 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t50 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t49, i32 0, i32 0
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i32, i32 }, ptr %t51, i32 0, i32 0
  %t53 = load i32, ptr %t52, !range !{i32 0, i32 8}
  %t55 = trunc i64 4 to i32
  %t56 = icmp eq i32 %t53, %t55
  store i1 %t56, ptr %l23, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l23, !tbaa !21
  store i1 %t58, ptr %l20, !tbaa !21
  br label %bb21
bb21:
  %t59 = load i1, ptr %l20, !tbaa !21
  br i1 %t59, label %bb22, label %bb23
bb22:
  br label %bb32
bb23:
  %t60 = load { i64, [7 x i64] }, ptr %l1
  %t62 = extractvalue { i64, [7 x i64] } %t60, 0
  %t63 = icmp eq i64 %t62, 0
  br i1 %t63, label %bb24, label %bb25
bb24:
  %t65 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t66 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t65, i32 0, i32 0
  %t67 = load { i64, [2 x i64] }, ptr %t66
  %t69 = extractvalue { i64, [2 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 3
  br i1 %t70, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb29
bb26:
  %t72 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t73 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t72, i32 0, i32 0
  %t74 = getelementptr { i64, [2 x i64] }, ptr %t73, i32 0, i32 1
  %t75 = getelementptr { i32, i32 }, ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75, !range !{i32 0, i32 8}
  %t78 = trunc i64 5 to i32
  %t79 = icmp eq i32 %t76, %t78
  store i1 %t79, ptr %l31, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb28
bb28:
  %t81 = load i1, ptr %l31, !tbaa !21
  store i1 %t81, ptr %l28, !tbaa !21
  br label %bb29
bb29:
  %t82 = load i1, ptr %l28, !tbaa !21
  br i1 %t82, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i64 1, ptr %l4, !tbaa !24
  br label %bb85
bb33:
  %t83 = load { i64, [7 x i64] }, ptr %l1
  %t85 = extractvalue { i64, [7 x i64] } %t83, 0
  %t86 = icmp eq i64 %t85, 0
  br i1 %t86, label %bb34, label %bb35
bb34:
  %t88 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t89 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t88, i32 0, i32 0
  %t90 = load { i64, [2 x i64] }, ptr %t89
  %t92 = extractvalue { i64, [2 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 3
  br i1 %t93, label %bb36, label %bb37
bb35:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb39
bb36:
  %t95 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t96 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t95, i32 0, i32 0
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 1
  %t98 = getelementptr { i32, i32 }, ptr %t97, i32 0, i32 0
  %t99 = load i32, ptr %t98, !range !{i32 0, i32 8}
  %t101 = trunc i64 6 to i32
  %t102 = icmp eq i32 %t99, %t101
  store i1 %t102, ptr %l39, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb38
bb38:
  %t104 = load i1, ptr %l39, !tbaa !21
  store i1 %t104, ptr %l36, !tbaa !21
  br label %bb39
bb39:
  %t105 = load i1, ptr %l36, !tbaa !21
  br i1 %t105, label %bb40, label %bb41
bb40:
  br label %bb50
bb41:
  %t106 = load { i64, [7 x i64] }, ptr %l1
  %t108 = extractvalue { i64, [7 x i64] } %t106, 0
  %t109 = icmp eq i64 %t108, 0
  br i1 %t109, label %bb42, label %bb43
bb42:
  %t111 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t112 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t111, i32 0, i32 0
  %t113 = load { i64, [2 x i64] }, ptr %t112
  %t115 = extractvalue { i64, [2 x i64] } %t113, 0
  %t116 = icmp eq i64 %t115, 3
  br i1 %t116, label %bb44, label %bb45
bb43:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb47
bb44:
  %t118 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t119 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t118, i32 0, i32 0
  %t120 = getelementptr { i64, [2 x i64] }, ptr %t119, i32 0, i32 1
  %t121 = getelementptr { i32, i32 }, ptr %t120, i32 0, i32 0
  %t122 = load i32, ptr %t121, !range !{i32 0, i32 8}
  %t124 = trunc i64 7 to i32
  %t125 = icmp eq i32 %t122, %t124
  store i1 %t125, ptr %l47, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb46
bb46:
  %t127 = load i1, ptr %l47, !tbaa !21
  store i1 %t127, ptr %l44, !tbaa !21
  br label %bb47
bb47:
  %t128 = load i1, ptr %l44, !tbaa !21
  br i1 %t128, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  store i64 1, ptr %l4, !tbaa !24
  br label %bb85
bb51:
  %t129 = load { i64, [7 x i64] }, ptr %l1
  %t131 = extractvalue { i64, [7 x i64] } %t129, 0
  %t132 = icmp eq i64 %t131, 0
  br i1 %t132, label %bb52, label %bb53
bb52:
  %t134 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t135 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t134, i32 0, i32 0
  %t136 = load { i64, [2 x i64] }, ptr %t135
  %t138 = extractvalue { i64, [2 x i64] } %t136, 0
  %t139 = icmp eq i64 %t138, 3
  br i1 %t139, label %bb54, label %bb55
bb53:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb57
bb54:
  %t141 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t142 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t141, i32 0, i32 0
  %t143 = getelementptr { i64, [2 x i64] }, ptr %t142, i32 0, i32 1
  %t144 = getelementptr { i32, i32 }, ptr %t143, i32 0, i32 0
  %t145 = load i32, ptr %t144, !range !{i32 0, i32 8}
  %t147 = trunc i64 1 to i32
  %t148 = icmp eq i32 %t145, %t147
  store i1 %t148, ptr %l55, !tbaa !21
  br label %bb56
bb55:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb56
bb56:
  %t150 = load i1, ptr %l55, !tbaa !21
  store i1 %t150, ptr %l52, !tbaa !21
  br label %bb57
bb57:
  %t151 = load i1, ptr %l52, !tbaa !21
  br i1 %t151, label %bb58, label %bb59
bb58:
  br label %bb68
bb59:
  %t152 = load { i64, [7 x i64] }, ptr %l1
  %t154 = extractvalue { i64, [7 x i64] } %t152, 0
  %t155 = icmp eq i64 %t154, 0
  br i1 %t155, label %bb60, label %bb61
bb60:
  %t157 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t158 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t157, i32 0, i32 0
  %t159 = load { i64, [2 x i64] }, ptr %t158
  %t161 = extractvalue { i64, [2 x i64] } %t159, 0
  %t162 = icmp eq i64 %t161, 3
  br i1 %t162, label %bb62, label %bb63
bb61:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb65
bb62:
  %t164 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t165 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t164, i32 0, i32 0
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 1
  %t167 = getelementptr { i32, i32 }, ptr %t166, i32 0, i32 0
  %t168 = load i32, ptr %t167, !range !{i32 0, i32 8}
  %t170 = trunc i64 2 to i32
  %t171 = icmp eq i32 %t168, %t170
  store i1 %t171, ptr %l63, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb64
bb64:
  %t173 = load i1, ptr %l63, !tbaa !21
  store i1 %t173, ptr %l60, !tbaa !21
  br label %bb65
bb65:
  %t174 = load i1, ptr %l60, !tbaa !21
  br i1 %t174, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb85
bb69:
  %t175 = load { i64, [7 x i64] }, ptr %l1
  %t177 = extractvalue { i64, [7 x i64] } %t175, 0
  %t178 = icmp eq i64 %t177, 1
  br i1 %t178, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb85
bb73:
  %t180 = load { i64, [7 x i64] }, ptr %l1
  %t182 = extractvalue { i64, [7 x i64] } %t180, 0
  %t183 = icmp eq i64 %t182, 3
  br i1 %t183, label %bb74, label %bb75
bb74:
  %t185 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t186 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t185, i32 0, i32 1
  %t187 = load i64, ptr %t186
  store i64 %t187, ptr %l3, !tbaa !24
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t189 = load i64, ptr %l3, !tbaa !24
  %t191 = icmp slt i64 %t189, 0
  br i1 %t191, label %bb77, label %bb78
bb77:
  store i64 1, ptr %l4, !tbaa !24
  br label %bb85
bb78:
  br label %bb79
bb79:
  br i1 true, label %bb80, label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb84
bb82:
  store %olang.scope zeroinitializer, ptr %s7
  %t197 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s7, ptr %a0, i32 %a2)
  store { i64, ptr } %t197, ptr %l75
  br label %bb83
bb83:
  %t198 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 0
  store i64 %t199, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_419ac27aa82c7b2c_45256e944a6f3408)
  unreachable
bb85:
  %t201 = load i64, ptr %l4, !tbaa !24
  store i64 %t201, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l17 = alloca { i64, ptr }
  %l30 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 15
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eLen_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l17, !tbaa !27
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr %"compiler/mir:Case", ptr %t25, i64 %t22
  %t27 = load %"compiler/mir:Case", ptr %t26
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2ePush_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %t31, %"compiler/mir:Case" %t27)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = trunc i64 %t39 to i32
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = trunc i64 %t44 to i32
  %t49 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 %t41, i32 %t46)
  store %"compiler/mir:Range" %t49, ptr %l30
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load %"compiler/mir:Range", ptr %l30
  store %"compiler/mir:Range" %t50, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l11 = alloca %"compiler/mir:Local"
  %l12 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t5 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [1 x i64] }, ptr %t5, i32 0, i32 0
  store i64 3, ptr %t6
  %t7 = load { i64, [1 x i64] }, ptr %t5
  %t13 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 0, { i64, [1 x i64] } %t7)
  store %"compiler/mir:Local" %t13, ptr %l11
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load %"compiler/mir:Local", ptr %l11
  %t16 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %t14, %"compiler/mir:Local" %t15)
  store i32 %t16, ptr %l12
  br label %bb2
bb2:
  %t17 = load i32, ptr %l12, !tbaa !23
  store i32 %t17, ptr %l4, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 4
  %t21 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t20, i32 %t21)
  br label %bb3
bb3:
  %t24 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i32
  %l22 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v1, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2enote(ptr %v0, ptr %v1, ptr %t7, ptr %t8, i32 %t9)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t20 = trunc i64 18 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/mir:GenInfo", ptr %t23, i32 0, i32 0
  store ptr %t25, ptr %l17, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l20
  br label %bb6
bb5:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb6:
  %t31 = load i32, ptr %l20, !tbaa !23
  %t32 = sext i32 %t31 to i64
  %t33 = load ptr, ptr %l17, !tbaa !29
  %t35 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t33, i64 %t32)
  store i1 %t35, ptr %l22
  br label %bb7
bb7:
  %t36 = load i1, ptr %l22, !tbaa !21
  store i1 %t36, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l15, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eTruncate(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/mir:StmtList", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp slt i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = getelementptr %"compiler/mir:StmtList", ptr %t10, i32 0, i32 1
  store i64 %t11, ptr %t14, !tbaa !24
  br label %bb3
bb2:
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecases(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l1 = alloca %"compiler/mir:Range"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"compiler/mir:Case"
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i32
  %l18 = alloca i32
  %l38 = alloca ptr
  %l45 = alloca %"compiler/mir:Case"
  %l46 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store %"compiler/mir:Range" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l10
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store i32 0, ptr %l3, !tbaa !23
  %t3 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = icmp sgt i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t14 = icmp sgt i32 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb3:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb7
bb4:
  %t16 = load i32, ptr %l4, !tbaa !23
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = sub i32 %t16, %t17
  %t21 = load i32, ptr %l5, !tbaa !23
  %t24 = add i32 %t20, %t21
  %t26 = sub i32 %t24, 1
  %t27 = load i32, ptr %l5, !tbaa !23
  %t30 = sdiv i32 %t26, %t27
  store i32 %t30, ptr %l18, !tbaa !23
  br label %bb6
bb5:
  store i32 0, ptr %l18, !tbaa !23
  br label %bb6
bb6:
  %t32 = load i32, ptr %l18, !tbaa !23
  store i32 %t32, ptr %l15, !tbaa !23
  br label %bb7
bb7:
  %t33 = load i32, ptr %l15, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = load i32, ptr %l7, !tbaa !23
  %t35 = load i32, ptr %l6, !tbaa !23
  %t38 = icmp slt i32 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = load i32, ptr %l7, !tbaa !23
  %t44 = load i32, ptr %l5, !tbaa !23
  %t47 = mul i32 %t43, %t44
  %t50 = add i32 %t42, %t47
  store i32 %t50, ptr %l8, !tbaa !23
  %t54 = getelementptr %"compiler/mir:dumper", ptr %a0, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/mir:Fn", ptr %t55, i32 0, i32 15
  store ptr %t57, ptr %l38, !tbaa !29
  %t58 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t59 = load i32, ptr %t58, !tbaa !23
  %t61 = sext i32 %t59 to i64
  %t62 = load i32, ptr %l8, !tbaa !23
  %t64 = sext i32 %t62 to i64
  %t67 = add i64 %t61, %t64
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = call ptr @__olang_scope_or(ptr %v2, ptr %t68)
  %t70 = ptrtoint ptr %t69 to i64
  %t72 = inttoptr i64 %t70 to ptr
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t75 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t72, ptr %t73, i64 %t67)
  store %"compiler/mir:Case" %t75, ptr %l45
  br label %bb12
bb12:
  %t76 = load %"compiler/mir:Case", ptr %l45
  store %"compiler/mir:Case" %t76, ptr %l9
  store ptr %l2, ptr %l46, !tbaa !29
  %t77 = load i32, ptr %l8, !tbaa !23
  %t79 = icmp sgt i32 %t77, 0
  br i1 %t79, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb15
bb15:
  %t81 = getelementptr %"compiler/mir:Case", ptr %l9, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/mir:Case", ptr %l9, i32 0, i32 1
  %t84 = load i32, ptr %t83, !tbaa !23
  %t85 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t89 = call i64 @__olang_fmt_i64(ptr null, i64 %t82)
  %t90 = add i64 %t87, %t89
  %t91 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t93 = add i64 %t90, %t92
  %t95 = sext i32 %t84 to i64
  %t96 = call i64 @__olang_fmt_i64(ptr null, i64 %t95)
  %t97 = add i64 %t93, %t96
  %t98 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t97)
  call void @olang_textcopy(ptr %t98, ptr %t86, i64 %t87)
  %t99 = getelementptr i8, ptr %t98, i64 %t87
  %t100 = call i64 @__olang_fmt_i64(ptr %t99, i64 %t82)
  %t101 = getelementptr i8, ptr %t99, i64 %t89
  call void @olang_textcopy(ptr %t101, ptr %t91, i64 %t92)
  %t102 = getelementptr i8, ptr %t101, i64 %t92
  %t103 = call i64 @__olang_fmt_i64(ptr %t102, i64 %t95)
  %t104 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t98, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = extractvalue { i64, ptr } %t105, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t113 = load ptr, ptr %l46, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t113, { i64, ptr } %t112)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t115 = load i32, ptr %l7, !tbaa !23
  %t117 = add i32 %t115, 1
  store i32 %t117, ptr %l7, !tbaa !23
  br label %bb8
bb18:
  %t120 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t120, ptr %l57
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t121 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t121, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t6, ptr %l9, !tbaa !27
  br label %bb21
bb4:
  %t8 = load { i64, [4 x i64] }, ptr %l1
  %t10 = extractvalue { i64, [4 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 1
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t14 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t13, i32 0, i32 0
  %t15 = load %"compiler/mir:Lvalue", ptr %t14
  store %"compiler/mir:Lvalue" %t15, ptr %l2
  br label %bb7
bb6:
  br label %bb9
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load %"compiler/mir:Lvalue", ptr %l2
  %t21 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s2, ptr %v2, ptr %t17, %"compiler/mir:Lvalue" %t18)
  store { i64, ptr } %t21, ptr %l19
  br label %bb8
bb8:
  %t22 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t24 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = add i64 %t23, %t26
  %t28 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t27)
  call void @olang_textcopy(ptr %t28, ptr %t22, i64 %t23)
  %t29 = getelementptr i8, ptr %t28, i64 %t23
  call void @olang_textcopy(ptr %t29, ptr %t25, i64 %t26)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t28, 1
  store { i64, ptr } %t31, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb9:
  %t33 = load { i64, [4 x i64] }, ptr %l1
  %t35 = extractvalue { i64, [4 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 2
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t39 = getelementptr { i32, i64 }, ptr %t38, i32 0, i32 0
  %t40 = load i32, ptr %t39
  store i32 %t40, ptr %l3, !tbaa !23
  %t42 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { i32, i64 }, ptr %t42, i32 0, i32 1
  %t44 = load i64, ptr %t43
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb12
bb11:
  br label %bb14
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/mir:dumper", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  store ptr %t49, ptr %l26, !tbaa !29
  %t50 = load i32, ptr %l3, !tbaa !23
  %t51 = load ptr, ptr %l26, !tbaa !29
  %t52 = call ptr @__olang_scope_or(ptr %v3, ptr %t51)
  %t53 = ptrtoint ptr %t52 to i64
  %t55 = inttoptr i64 %t53 to ptr
  %t57 = inttoptr i64 0 to ptr
  %t58 = load ptr, ptr %l26, !tbaa !29
  %t60 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t55, ptr %s4, ptr %t57, ptr %t58, i32 %t50)
  store { i64, ptr } %t60, ptr %l30
  br label %bb13
bb13:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t62 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t64 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = add i64 %t63, %t66
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t72 = call i64 @__olang_fmt_i64(ptr null, i64 %t61)
  %t73 = add i64 %t70, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t62, i64 %t63)
  %t75 = getelementptr i8, ptr %t74, i64 %t63
  call void @olang_textcopy(ptr %t75, ptr %t65, i64 %t66)
  %t76 = getelementptr i8, ptr %t75, i64 %t66
  call void @olang_textcopy(ptr %t76, ptr %t68, i64 %t69)
  %t77 = getelementptr i8, ptr %t76, i64 %t69
  %t78 = call i64 @__olang_fmt_i64(ptr %t77, i64 %t61)
  %t79 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t74, 1
  store { i64, ptr } %t80, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb14:
  %t82 = load { i64, [4 x i64] }, ptr %l1
  %t84 = extractvalue { i64, [4 x i64] } %t82, 0
  %t85 = icmp eq i64 %t84, 3
  br i1 %t85, label %bb15, label %bb16
bb15:
  %t87 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t88 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t87, i32 0, i32 0
  %t89 = load i32, ptr %t88
  store i32 %t89, ptr %l5, !tbaa !23
  %t91 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t92 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t91, i32 0, i32 1
  %t93 = load i32, ptr %t92
  store i32 %t93, ptr %l6, !tbaa !23
  %t95 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t96 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t95, i32 0, i32 2
  %t97 = load i64, ptr %t96
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t100 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t99, i32 0, i32 3
  %t101 = load %"compiler/source:Span", ptr %t100
  store %"compiler/source:Span" %t101, ptr %l8
  br label %bb17
bb16:
  br label %bb20
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/mir:dumper", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  store ptr %t106, ptr %l40, !tbaa !29
  %t107 = load i32, ptr %l5, !tbaa !23
  %t108 = load ptr, ptr %l40, !tbaa !29
  %t109 = call ptr @__olang_scope_or(ptr %v3, ptr %t108)
  %t110 = ptrtoint ptr %t109 to i64
  %t112 = inttoptr i64 %t110 to ptr
  %t114 = inttoptr i64 0 to ptr
  %t115 = load ptr, ptr %l40, !tbaa !29
  %t117 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t112, ptr %s6, ptr %t114, ptr %t115, i32 %t107)
  store { i64, ptr } %t117, ptr %l44
  br label %bb18
bb18:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i32, ptr %l6, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstant(ptr %v0, ptr %s6, ptr %v2, ptr %t118, i32 %t119)
  store { i64, ptr } %t122, ptr %l47
  br label %bb19
bb19:
  %t123 = load i64, ptr %l7, !tbaa !24
  %t124 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t125 = load i32, ptr %t124, !tbaa !23
  %t126 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t128 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = add i64 %t127, %t130
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t135 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = add i64 %t134, %t137
  %t139 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t141 = add i64 %t138, %t140
  %t143 = call i64 @__olang_fmt_i64(ptr null, i64 %t123)
  %t144 = add i64 %t141, %t143
  %t145 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t149 = sext i32 %t125 to i64
  %t150 = call i64 @__olang_fmt_i64(ptr null, i64 %t149)
  %t151 = add i64 %t147, %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t126, i64 %t127)
  %t153 = getelementptr i8, ptr %t152, i64 %t127
  call void @olang_textcopy(ptr %t153, ptr %t129, i64 %t130)
  %t154 = getelementptr i8, ptr %t153, i64 %t130
  call void @olang_textcopy(ptr %t154, ptr %t132, i64 %t133)
  %t155 = getelementptr i8, ptr %t154, i64 %t133
  call void @olang_textcopy(ptr %t155, ptr %t136, i64 %t137)
  %t156 = getelementptr i8, ptr %t155, i64 %t137
  call void @olang_textcopy(ptr %t156, ptr %t139, i64 %t140)
  %t157 = getelementptr i8, ptr %t156, i64 %t140
  %t158 = call i64 @__olang_fmt_i64(ptr %t157, i64 %t123)
  %t159 = getelementptr i8, ptr %t157, i64 %t143
  call void @olang_textcopy(ptr %t159, ptr %t145, i64 %t146)
  %t160 = getelementptr i8, ptr %t159, i64 %t146
  %t161 = call i64 @__olang_fmt_i64(ptr %t160, i64 %t149)
  %t162 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t152, 1
  store { i64, ptr } %t163, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4b3ff56260a2bca0_3dcb0434d488ed4c)
  unreachable
bb21:
  %t165 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  store i64 %t166, ptr %l51, !tbaa !24
  %t167 = load i64, ptr %l51, !tbaa !24
  %t168 = mul i64 %t167, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t168)
  %t170 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  store { i64, ptr } %t171, ptr %l52, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = load i64, ptr %l51, !tbaa !24
  %t177 = mul i64 %t176, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t173, ptr %t175, i64 %t177, i1 false)
  %t178 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t178, ptr %l9, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t179, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t14 = sext i32 %t10 to i64
  %t15 = call i64 @__olang_fmt_i64(ptr null, i64 %t14)
  %t16 = add i64 %t12, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t11, i64 %t12)
  %t18 = getelementptr i8, ptr %t17, i64 %t12
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t14)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t17, 1
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  br label %bb21
bb4:
  %t23 = load { i64, [1 x i64] }, ptr %l1
  %t25 = extractvalue { i64, [1 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 1
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { i64 }, ptr %t28, i32 0, i32 0
  %t30 = load i64, ptr %t29
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t36 = call i64 @__olang_fmt_i64(ptr null, i64 %t32)
  %t37 = add i64 %t34, %t36
  %t38 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t37)
  call void @olang_textcopy(ptr %t38, ptr %t33, i64 %t34)
  %t39 = getelementptr i8, ptr %t38, i64 %t34
  %t40 = call i64 @__olang_fmt_i64(ptr %t39, i64 %t32)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t38, 1
  store { i64, ptr } %t42, ptr %l5, !tbaa !27
  br label %bb21
bb8:
  %t44 = load { i64, [1 x i64] }, ptr %l1
  %t46 = extractvalue { i64, [1 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 2
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t49, ptr %l5, !tbaa !27
  br label %bb21
bb12:
  %t51 = load { i64, [1 x i64] }, ptr %l1
  %t53 = extractvalue { i64, [1 x i64] } %t51, 0
  %t54 = icmp eq i64 %t53, 3
  br i1 %t54, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t56, ptr %l5, !tbaa !27
  br label %bb21
bb16:
  %t58 = load { i64, [1 x i64] }, ptr %l1
  %t60 = extractvalue { i64, [1 x i64] } %t58, 0
  %t61 = icmp eq i64 %t60, 4
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t63 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t64 = getelementptr { i32 }, ptr %t63, i32 0, i32 0
  %t65 = load i32, ptr %t64
  store i32 %t65, ptr %l4, !tbaa !23
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t67 = load i32, ptr %l4, !tbaa !23
  %t68 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t71 = sext i32 %t67 to i64
  %t72 = call i64 @__olang_fmt_i64(ptr null, i64 %t71)
  %t73 = add i64 %t69, %t72
  %t74 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t76 = add i64 %t73, %t75
  %t77 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t68, i64 %t69)
  %t78 = getelementptr i8, ptr %t77, i64 %t69
  %t79 = call i64 @__olang_fmt_i64(ptr %t78, i64 %t71)
  %t80 = getelementptr i8, ptr %t78, i64 %t72
  call void @olang_textcopy(ptr %t80, ptr %t74, i64 %t75)
  %t81 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t77, 1
  store { i64, ptr } %t82, ptr %l5, !tbaa !27
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_3c759898227385e0_43502750c3b6307c)
  unreachable
bb21:
  %t84 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  store i64 %t85, ptr %l29, !tbaa !24
  %t86 = load i64, ptr %l29, !tbaa !24
  %t87 = mul i64 %t86, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l30, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = load i64, ptr %l29, !tbaa !24
  %t96 = mul i64 %t95, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t92, ptr %t94, i64 %t96, i1 false)
  %t97 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t97, ptr %l5, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ervalue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [15 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [15 x i64] }
  %l2 = alloca ptr
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca i32
  %l6 = alloca %"compiler/mir:Lvalue"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"compiler/mir:Range"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca %"compiler/mir:Range"
  %l13 = alloca %"compiler/mir:Lvalue"
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca %"compiler/mir:Range"
  %l17 = alloca { i64, [1 x i64] }
  %l18 = alloca { i64, [4 x i64] }
  %l19 = alloca i32
  %l20 = alloca { i64, [1 x i64] }
  %l21 = alloca i32
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca %"compiler/mir:Lvalue"
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca { i64, [4 x i64] }
  %l27 = alloca i32
  %l28 = alloca { i64, [2 x i64] }
  %l29 = alloca i32
  %l30 = alloca { i64, [1 x i64] }
  %l31 = alloca %"compiler/mir:Range"
  %l32 = alloca %"compiler/mir:Range"
  %l33 = alloca { i64, [4 x i64] }
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca { i64, [1 x i64] }
  %l37 = alloca { i64, [1 x i64] }
  %l38 = alloca i32
  %l39 = alloca { i64, [1 x i64] }
  %l40 = alloca { i64, [4 x i64] }
  %l41 = alloca { i64, [1 x i64] }
  %l42 = alloca { i64, [4 x i64] }
  %l43 = alloca { i64, [1 x i64] }
  %l44 = alloca { i64, [4 x i64] }
  %l45 = alloca i64
  %l46 = alloca { i64, [1 x i64] }
  %l47 = alloca i32
  %l48 = alloca %"compiler/mir:Lvalue"
  %l49 = alloca i32
  %l50 = alloca { i64, [4 x i64] }
  %l53 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l85 = alloca i32
  %l87 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l104 = alloca i32
  %l106 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l113 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l130 = alloca ptr
  %l134 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l160 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l175 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l198 = alloca ptr
  %l202 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l216 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l222 = alloca { i64, ptr }
  %l225 = alloca { i64, ptr }
  %l228 = alloca ptr
  %l232 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l244 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l256 = alloca { i64, ptr }
  %l259 = alloca { i64, ptr }
  %l260 = alloca ptr
  %l264 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l279 = alloca { i64, ptr }
  %l282 = alloca { i64, ptr }
  %l289 = alloca { i64, ptr }
  %l297 = alloca { i64, ptr }
  %l300 = alloca { i64, ptr }
  %l304 = alloca { i64, ptr }
  %l316 = alloca { i64, ptr }
  %l321 = alloca ptr
  %l325 = alloca { i64, ptr }
  %l333 = alloca { i64, ptr }
  %l334 = alloca ptr
  %l338 = alloca { i64, ptr }
  %l345 = alloca { i64, ptr }
  %l347 = alloca i64
  %l348 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.builder
  %s7room = alloca [64 x i8], align 8
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.builder
  %s10room = alloca [64 x i8], align 8
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s47 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [15 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:dumper", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [15 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [15 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { { i64, [4 x i64] } }, ptr %t11, i32 0, i32 0
  %t13 = load { i64, [4 x i64] }, ptr %t12
  store { i64, [4 x i64] } %t13, ptr %l3
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [4 x i64] }, ptr %l3
  %t19 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t15, { i64, [4 x i64] } %t16)
  store { i64, ptr } %t19, ptr %l59
  br label %bb4
bb4:
  %t20 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t20, ptr %l53, !tbaa !27
  br label %bb147
bb5:
  %t21 = load { i64, [15 x i64] }, ptr %l1
  %t23 = extractvalue { i64, [15 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 1
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t27 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t26, i32 0, i32 0
  %t28 = load %"compiler/mir:Lvalue", ptr %t27
  store %"compiler/mir:Lvalue" %t28, ptr %l4
  %t30 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t31 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t30, i32 0, i32 1
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l5, !tbaa !23
  br label %bb8
bb7:
  br label %bb11
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load %"compiler/mir:Lvalue", ptr %l4
  %t38 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s2, ptr %v2, ptr %t34, %"compiler/mir:Lvalue" %t35)
  store { i64, ptr } %t38, ptr %l66
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l2, !tbaa !29
  store ptr %t39, ptr %l67, !tbaa !29
  %t40 = load i32, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l67, !tbaa !29
  %t42 = call ptr @__olang_scope_or(ptr %v3, ptr %t41)
  %t43 = ptrtoint ptr %t42 to i64
  %t45 = inttoptr i64 %t43 to ptr
  %t47 = inttoptr i64 0 to ptr
  %t48 = load ptr, ptr %l67, !tbaa !29
  %t50 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t45, ptr %s2, ptr %t47, ptr %t48, i32 %t40)
  store { i64, ptr } %t50, ptr %l71
  br label %bb10
bb10:
  %t51 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t53 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = add i64 %t52, %t55
  %t57 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t60 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = add i64 %t59, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t51, i64 %t52)
  %t65 = getelementptr i8, ptr %t64, i64 %t52
  call void @olang_textcopy(ptr %t65, ptr %t54, i64 %t55)
  %t66 = getelementptr i8, ptr %t65, i64 %t55
  call void @olang_textcopy(ptr %t66, ptr %t57, i64 %t58)
  %t67 = getelementptr i8, ptr %t66, i64 %t58
  call void @olang_textcopy(ptr %t67, ptr %t61, i64 %t62)
  %t68 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t64, 1
  store { i64, ptr } %t69, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb147
bb11:
  %t71 = load { i64, [15 x i64] }, ptr %l1
  %t73 = extractvalue { i64, [15 x i64] } %t71, 0
  %t74 = icmp eq i64 %t73, 2
  br i1 %t74, label %bb12, label %bb13
bb12:
  %t76 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t77 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t76, i32 0, i32 0
  %t78 = load %"compiler/mir:Lvalue", ptr %t77
  store %"compiler/mir:Lvalue" %t78, ptr %l6
  br label %bb14
bb13:
  br label %bb16
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load %"compiler/mir:Lvalue", ptr %l6
  %t84 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s4, ptr %v2, ptr %t80, %"compiler/mir:Lvalue" %t81)
  store { i64, ptr } %t84, ptr %l78
  br label %bb15
bb15:
  %t85 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t87 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t85, i64 %t86)
  %t92 = getelementptr i8, ptr %t91, i64 %t86
  call void @olang_textcopy(ptr %t92, ptr %t88, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  store { i64, ptr } %t94, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb147
bb16:
  %t96 = load { i64, [15 x i64] }, ptr %l1
  %t98 = extractvalue { i64, [15 x i64] } %t96, 0
  %t99 = icmp eq i64 %t98, 3
  br i1 %t99, label %bb17, label %bb18
bb17:
  %t101 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t102 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t101, i32 0, i32 0
  %t103 = load i32, ptr %t102, !range !{i32 0, i32 52}
  store i32 %t103, ptr %l7
  %t105 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t106 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t105, i32 0, i32 1
  %t107 = load i32, ptr %t106
  store i32 %t107, ptr %l8, !tbaa !23
  %t109 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t110 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t109, i32 0, i32 2
  %t111 = load %"compiler/mir:Range", ptr %t110
  store %"compiler/mir:Range" %t111, ptr %l9
  br label %bb19
bb18:
  br label %bb24
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t113 = load i32, ptr %l7, !range !{i32 0, i32 52}
  store i32 %t113, ptr %l85
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s7
  store ptr %s7room, ptr %s7
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s7, ptr %l85, i64 0)
  br label %bb20
bb20:
  %t115 = load ptr, ptr %s7
  %t116 = getelementptr %olang.builder, ptr %s7, i32 0, i32 1
  %t117 = load i64, ptr %t116
  %t118 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t117)
  call void @olang_textcopy(ptr %t118, ptr %t115, i64 %t117)
  %t119 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  store { i64, ptr } %t120, ptr %l87, !tbaa !27
  %t121 = getelementptr %olang.builder, ptr %s7, i32 0, i32 3
  %t122 = load ptr, ptr %t121
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %sbgrew.124, label %sbdone.125
sbgrew.124:
  call void @__olang_sb_done(ptr %s7)
  br label %sbdone.125
sbdone.125:
  %t126 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  %t128 = extractvalue { i64, ptr } %t126, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t134 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s6, ptr %s6, { i64, ptr } %t132)
  store { i64, ptr } %t134, ptr %l89
  br label %bb21
bb21:
  %t135 = load ptr, ptr %l2, !tbaa !29
  store ptr %t135, ptr %l90, !tbaa !29
  %t136 = load i32, ptr %l8, !tbaa !23
  %t137 = load ptr, ptr %l90, !tbaa !29
  %t138 = call ptr @__olang_scope_or(ptr %v3, ptr %t137)
  %t139 = ptrtoint ptr %t138 to i64
  %t141 = inttoptr i64 %t139 to ptr
  %t143 = inttoptr i64 0 to ptr
  %t144 = load ptr, ptr %l90, !tbaa !29
  %t146 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t141, ptr %s6, ptr %t143, ptr %t144, i32 %t136)
  store { i64, ptr } %t146, ptr %l94
  br label %bb22
bb22:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load %"compiler/mir:Range", ptr %l9
  %t151 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %s6, ptr %v2, ptr %v3, ptr %t147, %"compiler/mir:Range" %t148)
  store { i64, ptr } %t151, ptr %l97
  br label %bb23
bb23:
  %t152 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t158 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = add i64 %t157, %t160
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t164 = add i64 %t161, %t163
  %t165 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t168 = add i64 %t164, %t167
  %t169 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t171 = add i64 %t168, %t170
  %t172 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t153, i64 %t154)
  %t173 = getelementptr i8, ptr %t172, i64 %t154
  call void @olang_textcopy(ptr %t173, ptr %t155, i64 %t156)
  %t174 = getelementptr i8, ptr %t173, i64 %t156
  call void @olang_textcopy(ptr %t174, ptr %t159, i64 %t160)
  %t175 = getelementptr i8, ptr %t174, i64 %t160
  call void @olang_textcopy(ptr %t175, ptr %t162, i64 %t163)
  %t176 = getelementptr i8, ptr %t175, i64 %t163
  call void @olang_textcopy(ptr %t176, ptr %t166, i64 %t167)
  %t177 = getelementptr i8, ptr %t176, i64 %t167
  call void @olang_textcopy(ptr %t177, ptr %t169, i64 %t170)
  %t178 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t172, 1
  store { i64, ptr } %t179, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb147
bb24:
  %t181 = load { i64, [15 x i64] }, ptr %l1
  %t183 = extractvalue { i64, [15 x i64] } %t181, 0
  %t184 = icmp eq i64 %t183, 4
  br i1 %t184, label %bb25, label %bb26
bb25:
  %t186 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t187 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t186, i32 0, i32 0
  %t188 = load i32, ptr %t187, !range !{i32 0, i32 52}
  store i32 %t188, ptr %l10
  %t190 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t191 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t190, i32 0, i32 1
  %t192 = load i32, ptr %t191
  store i32 %t192, ptr %l11, !tbaa !23
  %t194 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t195 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t194, i32 0, i32 2
  %t196 = load %"compiler/mir:Range", ptr %t195
  store %"compiler/mir:Range" %t196, ptr %l12
  br label %bb27
bb26:
  br label %bb32
bb27:
  store %olang.scope zeroinitializer, ptr %s9
  %t198 = load i32, ptr %l10, !range !{i32 0, i32 52}
  store i32 %t198, ptr %l104
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s10, ptr %l104, i64 0)
  br label %bb28
bb28:
  %t200 = load ptr, ptr %s10
  %t201 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t202 = load i64, ptr %t201
  %t203 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t202)
  call void @olang_textcopy(ptr %t203, ptr %t200, i64 %t202)
  %t204 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  store { i64, ptr } %t205, ptr %l106, !tbaa !27
  %t206 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t207 = load ptr, ptr %t206
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %sbgrew.209, label %sbdone.210
sbgrew.209:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.210
sbdone.210:
  %t211 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t219 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s9, ptr %s9, { i64, ptr } %t217)
  store { i64, ptr } %t219, ptr %l108
  br label %bb29
bb29:
  %t220 = load ptr, ptr %l2, !tbaa !29
  store ptr %t220, ptr %l109, !tbaa !29
  %t221 = load i32, ptr %l11, !tbaa !23
  %t222 = load ptr, ptr %l109, !tbaa !29
  %t223 = call ptr @__olang_scope_or(ptr %v3, ptr %t222)
  %t224 = ptrtoint ptr %t223 to i64
  %t226 = inttoptr i64 %t224 to ptr
  %t228 = inttoptr i64 0 to ptr
  %t229 = load ptr, ptr %l109, !tbaa !29
  %t231 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t226, ptr %s9, ptr %t228, ptr %t229, i32 %t221)
  store { i64, ptr } %t231, ptr %l113
  br label %bb30
bb30:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load %"compiler/mir:Range", ptr %l12
  %t236 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %s9, ptr %v2, ptr %v3, ptr %t232, %"compiler/mir:Range" %t233)
  store { i64, ptr } %t236, ptr %l116
  br label %bb31
bb31:
  %t237 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t239 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = add i64 %t238, %t241
  %t243 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t245 = add i64 %t242, %t244
  %t246 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t249 = add i64 %t245, %t248
  %t250 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t252 = add i64 %t249, %t251
  %t253 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = add i64 %t252, %t255
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t260 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t259)
  call void @olang_textcopy(ptr %t260, ptr %t237, i64 %t238)
  %t261 = getelementptr i8, ptr %t260, i64 %t238
  call void @olang_textcopy(ptr %t261, ptr %t240, i64 %t241)
  %t262 = getelementptr i8, ptr %t261, i64 %t241
  call void @olang_textcopy(ptr %t262, ptr %t243, i64 %t244)
  %t263 = getelementptr i8, ptr %t262, i64 %t244
  call void @olang_textcopy(ptr %t263, ptr %t247, i64 %t248)
  %t264 = getelementptr i8, ptr %t263, i64 %t248
  call void @olang_textcopy(ptr %t264, ptr %t250, i64 %t251)
  %t265 = getelementptr i8, ptr %t264, i64 %t251
  call void @olang_textcopy(ptr %t265, ptr %t254, i64 %t255)
  %t266 = getelementptr i8, ptr %t265, i64 %t255
  call void @olang_textcopy(ptr %t266, ptr %t257, i64 %t258)
  %t267 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t260, 1
  store { i64, ptr } %t268, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb147
bb32:
  %t270 = load { i64, [15 x i64] }, ptr %l1
  %t272 = extractvalue { i64, [15 x i64] } %t270, 0
  %t273 = icmp eq i64 %t272, 5
  br i1 %t273, label %bb33, label %bb34
bb33:
  %t275 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t276 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t275, i32 0, i32 0
  %t277 = load %"compiler/mir:Lvalue", ptr %t276
  store %"compiler/mir:Lvalue" %t277, ptr %l13
  br label %bb35
bb34:
  br label %bb37
bb35:
  store %olang.scope zeroinitializer, ptr %s12
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load %"compiler/mir:Lvalue", ptr %l13
  %t283 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s12, ptr %v2, ptr %t279, %"compiler/mir:Lvalue" %t280)
  store { i64, ptr } %t283, ptr %l123
  br label %bb36
bb36:
  %t284 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t286 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = add i64 %t285, %t288
  %t290 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t289)
  call void @olang_textcopy(ptr %t290, ptr %t284, i64 %t285)
  %t291 = getelementptr i8, ptr %t290, i64 %t285
  call void @olang_textcopy(ptr %t291, ptr %t287, i64 %t288)
  %t292 = insertvalue { i64, ptr } undef, i64 %t289, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t290, 1
  store { i64, ptr } %t293, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s12)
  br label %bb147
bb37:
  %t295 = load { i64, [15 x i64] }, ptr %l1
  %t297 = extractvalue { i64, [15 x i64] } %t295, 0
  %t298 = icmp eq i64 %t297, 6
  br i1 %t298, label %bb38, label %bb39
bb38:
  %t300 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t301 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t300, i32 0, i32 0
  %t302 = load i32, ptr %t301
  store i32 %t302, ptr %l14, !tbaa !23
  %t304 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t305 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t304, i32 0, i32 1
  %t306 = load i64, ptr %t305
  store i64 %t306, ptr %l15, !tbaa !24
  %t308 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t309 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t308, i32 0, i32 2
  %t310 = load %"compiler/mir:Range", ptr %t309
  store %"compiler/mir:Range" %t310, ptr %l16
  br label %bb40
bb39:
  br label %bb46
bb40:
  store %olang.scope zeroinitializer, ptr %s14
  %t312 = load ptr, ptr %l2, !tbaa !29
  store ptr %t312, ptr %l130, !tbaa !29
  %t313 = load i32, ptr %l14, !tbaa !23
  %t314 = load ptr, ptr %l130, !tbaa !29
  %t315 = call ptr @__olang_scope_or(ptr %v3, ptr %t314)
  %t316 = ptrtoint ptr %t315 to i64
  %t318 = inttoptr i64 %t316 to ptr
  %t320 = inttoptr i64 0 to ptr
  %t321 = load ptr, ptr %l130, !tbaa !29
  %t323 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t318, ptr %s14, ptr %t320, ptr %t321, i32 %t313)
  store { i64, ptr } %t323, ptr %l134
  br label %bb41
bb41:
  %t324 = load i64, ptr %l15, !tbaa !24
  %t326 = icmp sgt i64 %t324, 0
  br i1 %t326, label %bb42, label %bb43
bb42:
  %t328 = load i64, ptr %l15, !tbaa !24
  %t329 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t330 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t332 = call i64 @__olang_fmt_i64(ptr null, i64 %t328)
  %t333 = add i64 %t330, %t332
  %t334 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t333)
  call void @olang_textcopy(ptr %t334, ptr %t329, i64 %t330)
  %t335 = getelementptr i8, ptr %t334, i64 %t330
  %t336 = call i64 @__olang_fmt_i64(ptr %t335, i64 %t328)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t334, 1
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t341 = extractvalue { i64, ptr } %t338, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  store { i64, ptr } %t345, ptr %l137, !tbaa !27
  br label %bb44
bb43:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l137, !tbaa !27
  br label %bb44
bb44:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load %"compiler/mir:Range", ptr %l16
  %t351 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %s14, ptr %v2, ptr %v3, ptr %t347, %"compiler/mir:Range" %t348)
  store { i64, ptr } %t351, ptr %l143
  br label %bb45
bb45:
  %t352 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t353 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t354 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 1
  %t356 = extractvalue { i64, ptr } %t354, 0
  %t357 = add i64 %t353, %t356
  %t358 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 1
  %t360 = extractvalue { i64, ptr } %t358, 0
  %t361 = add i64 %t357, %t360
  %t362 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t364 = add i64 %t361, %t363
  %t365 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 1
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t368 = add i64 %t364, %t367
  %t369 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t371 = add i64 %t368, %t370
  %t372 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t371)
  call void @olang_textcopy(ptr %t372, ptr %t352, i64 %t353)
  %t373 = getelementptr i8, ptr %t372, i64 %t353
  call void @olang_textcopy(ptr %t373, ptr %t355, i64 %t356)
  %t374 = getelementptr i8, ptr %t373, i64 %t356
  call void @olang_textcopy(ptr %t374, ptr %t359, i64 %t360)
  %t375 = getelementptr i8, ptr %t374, i64 %t360
  call void @olang_textcopy(ptr %t375, ptr %t362, i64 %t363)
  %t376 = getelementptr i8, ptr %t375, i64 %t363
  call void @olang_textcopy(ptr %t376, ptr %t366, i64 %t367)
  %t377 = getelementptr i8, ptr %t376, i64 %t367
  call void @olang_textcopy(ptr %t377, ptr %t369, i64 %t370)
  %t378 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t372, 1
  store { i64, ptr } %t379, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s14)
  br label %bb147
bb46:
  %t381 = load { i64, [15 x i64] }, ptr %l1
  %t383 = extractvalue { i64, [15 x i64] } %t381, 0
  %t384 = icmp eq i64 %t383, 7
  br i1 %t384, label %bb47, label %bb48
bb47:
  %t386 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t387 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t386, i32 0, i32 0
  %t388 = load { i64, [1 x i64] }, ptr %t387
  store { i64, [1 x i64] } %t388, ptr %l17
  %t390 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t391 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t390, i32 0, i32 1
  %t392 = load { i64, [4 x i64] }, ptr %t391
  store { i64, [4 x i64] } %t392, ptr %l18
  %t394 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t395 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t394, i32 0, i32 2
  %t396 = load i32, ptr %t395
  store i32 %t396, ptr %l19, !tbaa !23
  br label %bb49
bb48:
  br label %bb53
bb49:
  store %olang.scope zeroinitializer, ptr %s17
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load { i64, [1 x i64] }, ptr %l17
  %t402 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s17, ptr %t398, { i64, [1 x i64] } %t399)
  store { i64, ptr } %t402, ptr %l152
  br label %bb50
bb50:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load { i64, [4 x i64] }, ptr %l18
  %t407 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s17, ptr %v2, ptr %v3, ptr %t403, { i64, [4 x i64] } %t404)
  store { i64, ptr } %t407, ptr %l155
  br label %bb51
bb51:
  %t408 = load ptr, ptr %l2, !tbaa !29
  store ptr %t408, ptr %l156, !tbaa !29
  %t409 = load i32, ptr %l19, !tbaa !23
  %t410 = load ptr, ptr %l156, !tbaa !29
  %t411 = call ptr @__olang_scope_or(ptr %v3, ptr %t410)
  %t412 = ptrtoint ptr %t411 to i64
  %t414 = inttoptr i64 %t412 to ptr
  %t416 = inttoptr i64 0 to ptr
  %t417 = load ptr, ptr %l156, !tbaa !29
  %t419 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t414, ptr %s17, ptr %t416, ptr %t417, i32 %t409)
  store { i64, ptr } %t419, ptr %l160
  br label %bb52
bb52:
  %t420 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t421 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t422 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 1
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t425 = add i64 %t421, %t424
  %t426 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t427 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t428 = add i64 %t425, %t427
  %t429 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t430 = extractvalue { i64, ptr } %t429, 1
  %t431 = extractvalue { i64, ptr } %t429, 0
  %t432 = add i64 %t428, %t431
  %t433 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t435 = add i64 %t432, %t434
  %t436 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t437 = extractvalue { i64, ptr } %t436, 1
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t439 = add i64 %t435, %t438
  %t440 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t439)
  call void @olang_textcopy(ptr %t440, ptr %t420, i64 %t421)
  %t441 = getelementptr i8, ptr %t440, i64 %t421
  call void @olang_textcopy(ptr %t441, ptr %t423, i64 %t424)
  %t442 = getelementptr i8, ptr %t441, i64 %t424
  call void @olang_textcopy(ptr %t442, ptr %t426, i64 %t427)
  %t443 = getelementptr i8, ptr %t442, i64 %t427
  call void @olang_textcopy(ptr %t443, ptr %t430, i64 %t431)
  %t444 = getelementptr i8, ptr %t443, i64 %t431
  call void @olang_textcopy(ptr %t444, ptr %t433, i64 %t434)
  %t445 = getelementptr i8, ptr %t444, i64 %t434
  call void @olang_textcopy(ptr %t445, ptr %t437, i64 %t438)
  %t446 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t440, 1
  store { i64, ptr } %t447, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s17)
  br label %bb147
bb53:
  %t449 = load { i64, [15 x i64] }, ptr %l1
  %t451 = extractvalue { i64, [15 x i64] } %t449, 0
  %t452 = icmp eq i64 %t451, 8
  br i1 %t452, label %bb54, label %bb55
bb54:
  %t454 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t455 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t454, i32 0, i32 0
  %t456 = load { i64, [1 x i64] }, ptr %t455
  store { i64, [1 x i64] } %t456, ptr %l20
  %t458 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t459 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t458, i32 0, i32 1
  %t460 = load i32, ptr %t459
  store i32 %t460, ptr %l21, !tbaa !23
  %t462 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t463 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t462, i32 0, i32 2
  %t464 = load { i64, [4 x i64] }, ptr %t463
  store { i64, [4 x i64] } %t464, ptr %l22
  %t466 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t467 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t466, i32 0, i32 3
  %t468 = load { i64, [4 x i64] }, ptr %t467
  store { i64, [4 x i64] } %t468, ptr %l23
  br label %bb56
bb55:
  br label %bb61
bb56:
  store %olang.scope zeroinitializer, ptr %s19
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load { i64, [1 x i64] }, ptr %l20
  %t474 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s19, ptr %t470, { i64, [1 x i64] } %t471)
  store { i64, ptr } %t474, ptr %l170
  br label %bb57
bb57:
  %t475 = load ptr, ptr %l2, !tbaa !29
  store ptr %t475, ptr %l171, !tbaa !29
  %t476 = load i32, ptr %l21, !tbaa !23
  %t477 = load ptr, ptr %l171, !tbaa !29
  %t478 = call ptr @__olang_scope_or(ptr %v3, ptr %t477)
  %t479 = ptrtoint ptr %t478 to i64
  %t481 = inttoptr i64 %t479 to ptr
  %t483 = inttoptr i64 0 to ptr
  %t484 = load ptr, ptr %l171, !tbaa !29
  %t486 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t481, ptr %s19, ptr %t483, ptr %t484, i32 %t476)
  store { i64, ptr } %t486, ptr %l175
  br label %bb58
bb58:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load { i64, [4 x i64] }, ptr %l22
  %t491 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s19, ptr %v2, ptr %v3, ptr %t487, { i64, [4 x i64] } %t488)
  store { i64, ptr } %t491, ptr %l178
  br label %bb59
bb59:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load { i64, [4 x i64] }, ptr %l23
  %t496 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s19, ptr %v2, ptr %v3, ptr %t492, { i64, [4 x i64] } %t493)
  store { i64, ptr } %t496, ptr %l181
  br label %bb60
bb60:
  %t497 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t498 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t499 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t500 = extractvalue { i64, ptr } %t499, 1
  %t501 = extractvalue { i64, ptr } %t499, 0
  %t502 = add i64 %t498, %t501
  %t503 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t504 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t505 = add i64 %t502, %t504
  %t506 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t506, 1
  %t508 = extractvalue { i64, ptr } %t506, 0
  %t509 = add i64 %t505, %t508
  %t510 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t511 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t512 = add i64 %t509, %t511
  %t513 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t514 = extractvalue { i64, ptr } %t513, 1
  %t515 = extractvalue { i64, ptr } %t513, 0
  %t516 = add i64 %t512, %t515
  %t517 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t518 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t519 = add i64 %t516, %t518
  %t520 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t520, 1
  %t522 = extractvalue { i64, ptr } %t520, 0
  %t523 = add i64 %t519, %t522
  %t524 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t525 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t526 = add i64 %t523, %t525
  %t527 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t526)
  call void @olang_textcopy(ptr %t527, ptr %t497, i64 %t498)
  %t528 = getelementptr i8, ptr %t527, i64 %t498
  call void @olang_textcopy(ptr %t528, ptr %t500, i64 %t501)
  %t529 = getelementptr i8, ptr %t528, i64 %t501
  call void @olang_textcopy(ptr %t529, ptr %t503, i64 %t504)
  %t530 = getelementptr i8, ptr %t529, i64 %t504
  call void @olang_textcopy(ptr %t530, ptr %t507, i64 %t508)
  %t531 = getelementptr i8, ptr %t530, i64 %t508
  call void @olang_textcopy(ptr %t531, ptr %t510, i64 %t511)
  %t532 = getelementptr i8, ptr %t531, i64 %t511
  call void @olang_textcopy(ptr %t532, ptr %t514, i64 %t515)
  %t533 = getelementptr i8, ptr %t532, i64 %t515
  call void @olang_textcopy(ptr %t533, ptr %t517, i64 %t518)
  %t534 = getelementptr i8, ptr %t533, i64 %t518
  call void @olang_textcopy(ptr %t534, ptr %t521, i64 %t522)
  %t535 = getelementptr i8, ptr %t534, i64 %t522
  call void @olang_textcopy(ptr %t535, ptr %t524, i64 %t525)
  %t536 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t537 = insertvalue { i64, ptr } %t536, ptr %t527, 1
  store { i64, ptr } %t537, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s19)
  br label %bb147
bb61:
  %t539 = load { i64, [15 x i64] }, ptr %l1
  %t541 = extractvalue { i64, [15 x i64] } %t539, 0
  %t542 = icmp eq i64 %t541, 9
  br i1 %t542, label %bb62, label %bb63
bb62:
  %t544 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t545 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t544, i32 0, i32 0
  %t546 = load %"compiler/mir:Lvalue", ptr %t545
  store %"compiler/mir:Lvalue" %t546, ptr %l24
  %t548 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t549 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t548, i32 0, i32 1
  %t550 = load { i64, [4 x i64] }, ptr %t549
  store { i64, [4 x i64] } %t550, ptr %l25
  %t552 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t553 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t552, i32 0, i32 2
  %t554 = load { i64, [4 x i64] }, ptr %t553
  store { i64, [4 x i64] } %t554, ptr %l26
  %t556 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t557 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t556, i32 0, i32 3
  %t558 = load i32, ptr %t557
  store i32 %t558, ptr %l27, !tbaa !23
  br label %bb64
bb63:
  br label %bb69
bb64:
  store %olang.scope zeroinitializer, ptr %s21
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t561 = load %"compiler/mir:Lvalue", ptr %l24
  %t564 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s21, ptr %v2, ptr %t560, %"compiler/mir:Lvalue" %t561)
  store { i64, ptr } %t564, ptr %l191
  br label %bb65
bb65:
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t566 = load { i64, [4 x i64] }, ptr %l25
  %t569 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s21, ptr %v2, ptr %v3, ptr %t565, { i64, [4 x i64] } %t566)
  store { i64, ptr } %t569, ptr %l194
  br label %bb66
bb66:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = load { i64, [4 x i64] }, ptr %l26
  %t574 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s21, ptr %v2, ptr %v3, ptr %t570, { i64, [4 x i64] } %t571)
  store { i64, ptr } %t574, ptr %l197
  br label %bb67
bb67:
  %t575 = load ptr, ptr %l2, !tbaa !29
  store ptr %t575, ptr %l198, !tbaa !29
  %t576 = load i32, ptr %l27, !tbaa !23
  %t577 = load ptr, ptr %l198, !tbaa !29
  %t578 = call ptr @__olang_scope_or(ptr %v3, ptr %t577)
  %t579 = ptrtoint ptr %t578 to i64
  %t581 = inttoptr i64 %t579 to ptr
  %t583 = inttoptr i64 0 to ptr
  %t584 = load ptr, ptr %l198, !tbaa !29
  %t586 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t581, ptr %s21, ptr %t583, ptr %t584, i32 %t576)
  store { i64, ptr } %t586, ptr %l202
  br label %bb68
bb68:
  %t587 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t588 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t589 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = add i64 %t588, %t591
  %t593 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t594 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t595 = add i64 %t592, %t594
  %t596 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t597 = extractvalue { i64, ptr } %t596, 1
  %t598 = extractvalue { i64, ptr } %t596, 0
  %t599 = add i64 %t595, %t598
  %t600 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t601 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t602 = add i64 %t599, %t601
  %t603 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t604 = extractvalue { i64, ptr } %t603, 1
  %t605 = extractvalue { i64, ptr } %t603, 0
  %t606 = add i64 %t602, %t605
  %t607 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t608 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t609 = add i64 %t606, %t608
  %t610 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t611 = extractvalue { i64, ptr } %t610, 1
  %t612 = extractvalue { i64, ptr } %t610, 0
  %t613 = add i64 %t609, %t612
  %t614 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t613)
  call void @olang_textcopy(ptr %t614, ptr %t587, i64 %t588)
  %t615 = getelementptr i8, ptr %t614, i64 %t588
  call void @olang_textcopy(ptr %t615, ptr %t590, i64 %t591)
  %t616 = getelementptr i8, ptr %t615, i64 %t591
  call void @olang_textcopy(ptr %t616, ptr %t593, i64 %t594)
  %t617 = getelementptr i8, ptr %t616, i64 %t594
  call void @olang_textcopy(ptr %t617, ptr %t597, i64 %t598)
  %t618 = getelementptr i8, ptr %t617, i64 %t598
  call void @olang_textcopy(ptr %t618, ptr %t600, i64 %t601)
  %t619 = getelementptr i8, ptr %t618, i64 %t601
  call void @olang_textcopy(ptr %t619, ptr %t604, i64 %t605)
  %t620 = getelementptr i8, ptr %t619, i64 %t605
  call void @olang_textcopy(ptr %t620, ptr %t607, i64 %t608)
  %t621 = getelementptr i8, ptr %t620, i64 %t608
  call void @olang_textcopy(ptr %t621, ptr %t611, i64 %t612)
  %t622 = insertvalue { i64, ptr } undef, i64 %t613, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t614, 1
  store { i64, ptr } %t623, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s21)
  br label %bb147
bb69:
  %t625 = load { i64, [15 x i64] }, ptr %l1
  %t627 = extractvalue { i64, [15 x i64] } %t625, 0
  %t628 = icmp eq i64 %t627, 10
  br i1 %t628, label %bb70, label %bb71
bb70:
  %t630 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t631 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t630, i32 0, i32 0
  %t632 = load { i64, [2 x i64] }, ptr %t631
  store { i64, [2 x i64] } %t632, ptr %l28
  %t634 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t635 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t634, i32 0, i32 1
  %t636 = load i32, ptr %t635
  store i32 %t636, ptr %l29, !tbaa !23
  %t638 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t639 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t638, i32 0, i32 2
  %t640 = load { i64, [1 x i64] }, ptr %t639
  store { i64, [1 x i64] } %t640, ptr %l30
  %t642 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t643 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t642, i32 0, i32 3
  %t644 = load %"compiler/mir:Range", ptr %t643
  store %"compiler/mir:Range" %t644, ptr %l31
  %t646 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t647 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t646, i32 0, i32 4
  %t648 = load %"compiler/mir:Range", ptr %t647
  store %"compiler/mir:Range" %t648, ptr %l32
  br label %bb72
bb71:
  br label %bb81
bb72:
  store %olang.scope zeroinitializer, ptr %s23
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t651 = load { i64, [2 x i64] }, ptr %l28
  %t654 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ekey(ptr %v0, ptr %s23, ptr %v3, ptr %t650, { i64, [2 x i64] } %t651)
  store { i64, ptr } %t654, ptr %l213
  br label %bb73
bb73:
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load { i64, [1 x i64] }, ptr %l30
  %t659 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s23, ptr %t655, { i64, [1 x i64] } %t656)
  store { i64, ptr } %t659, ptr %l216
  br label %bb74
bb74:
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t661 = load %"compiler/mir:Range", ptr %l31
  %t664 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %s23, ptr %v2, ptr %v3, ptr %t660, %"compiler/mir:Range" %t661)
  store { i64, ptr } %t664, ptr %l219
  br label %bb75
bb75:
  %t665 = getelementptr %"compiler/mir:Range", ptr %l32, i32 0, i32 1
  %t666 = load i32, ptr %t665, !tbaa !23
  %t668 = icmp sgt i32 %t666, 0
  br i1 %t668, label %bb76, label %bb77
bb76:
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load %"compiler/mir:Range", ptr %l32
  %t674 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %s23, ptr %v2, ptr %t670, %"compiler/mir:Range" %t671)
  store { i64, ptr } %t674, ptr %l225
  br label %bb78
bb77:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l222, !tbaa !27
  br label %bb79
bb78:
  %t675 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t676 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t677 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t677, 1
  %t679 = extractvalue { i64, ptr } %t677, 0
  %t680 = add i64 %t676, %t679
  %t681 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t680)
  call void @olang_textcopy(ptr %t681, ptr %t675, i64 %t676)
  %t682 = getelementptr i8, ptr %t681, i64 %t676
  call void @olang_textcopy(ptr %t682, ptr %t678, i64 %t679)
  %t683 = insertvalue { i64, ptr } undef, i64 %t680, 0
  %t684 = insertvalue { i64, ptr } %t683, ptr %t681, 1
  %t686 = extractvalue { i64, ptr } %t684, 0
  %t687 = extractvalue { i64, ptr } %t684, 1
  %t688 = mul i64 %t686, 1
  %t689 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t688)
  call void @llvm.memcpy.p0.p0.i64(ptr %t689, ptr %t687, i64 %t688, i1 false)
  %t690 = insertvalue { i64, ptr } undef, i64 %t686, 0
  %t691 = insertvalue { i64, ptr } %t690, ptr %t689, 1
  store { i64, ptr } %t691, ptr %l222, !tbaa !27
  br label %bb79
bb79:
  %t693 = load ptr, ptr %l2, !tbaa !29
  store ptr %t693, ptr %l228, !tbaa !29
  %t694 = load i32, ptr %l29, !tbaa !23
  %t695 = load ptr, ptr %l228, !tbaa !29
  %t696 = call ptr @__olang_scope_or(ptr %v3, ptr %t695)
  %t697 = ptrtoint ptr %t696 to i64
  %t699 = inttoptr i64 %t697 to ptr
  %t701 = inttoptr i64 0 to ptr
  %t702 = load ptr, ptr %l228, !tbaa !29
  %t704 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t699, ptr %s23, ptr %t701, ptr %t702, i32 %t694)
  store { i64, ptr } %t704, ptr %l232
  br label %bb80
bb80:
  %t705 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t706 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t707 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t708 = extractvalue { i64, ptr } %t707, 1
  %t709 = extractvalue { i64, ptr } %t707, 0
  %t710 = add i64 %t706, %t709
  %t711 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t712 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t713 = add i64 %t710, %t712
  %t714 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t715 = extractvalue { i64, ptr } %t714, 1
  %t716 = extractvalue { i64, ptr } %t714, 0
  %t717 = add i64 %t713, %t716
  %t718 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t719 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t720 = add i64 %t717, %t719
  %t721 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t722 = extractvalue { i64, ptr } %t721, 1
  %t723 = extractvalue { i64, ptr } %t721, 0
  %t724 = add i64 %t720, %t723
  %t725 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t726 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t727 = add i64 %t724, %t726
  %t728 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t729 = extractvalue { i64, ptr } %t728, 1
  %t730 = extractvalue { i64, ptr } %t728, 0
  %t731 = add i64 %t727, %t730
  %t732 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t733 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t734 = add i64 %t731, %t733
  %t735 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t736 = extractvalue { i64, ptr } %t735, 1
  %t737 = extractvalue { i64, ptr } %t735, 0
  %t738 = add i64 %t734, %t737
  %t739 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t738)
  call void @olang_textcopy(ptr %t739, ptr %t705, i64 %t706)
  %t740 = getelementptr i8, ptr %t739, i64 %t706
  call void @olang_textcopy(ptr %t740, ptr %t708, i64 %t709)
  %t741 = getelementptr i8, ptr %t740, i64 %t709
  call void @olang_textcopy(ptr %t741, ptr %t711, i64 %t712)
  %t742 = getelementptr i8, ptr %t741, i64 %t712
  call void @olang_textcopy(ptr %t742, ptr %t715, i64 %t716)
  %t743 = getelementptr i8, ptr %t742, i64 %t716
  call void @olang_textcopy(ptr %t743, ptr %t718, i64 %t719)
  %t744 = getelementptr i8, ptr %t743, i64 %t719
  call void @olang_textcopy(ptr %t744, ptr %t722, i64 %t723)
  %t745 = getelementptr i8, ptr %t744, i64 %t723
  call void @olang_textcopy(ptr %t745, ptr %t725, i64 %t726)
  %t746 = getelementptr i8, ptr %t745, i64 %t726
  call void @olang_textcopy(ptr %t746, ptr %t729, i64 %t730)
  %t747 = getelementptr i8, ptr %t746, i64 %t730
  call void @olang_textcopy(ptr %t747, ptr %t732, i64 %t733)
  %t748 = getelementptr i8, ptr %t747, i64 %t733
  call void @olang_textcopy(ptr %t748, ptr %t736, i64 %t737)
  %t749 = insertvalue { i64, ptr } undef, i64 %t738, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr %t739, 1
  store { i64, ptr } %t750, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s23)
  br label %bb147
bb81:
  %t752 = load { i64, [15 x i64] }, ptr %l1
  %t754 = extractvalue { i64, [15 x i64] } %t752, 0
  %t755 = icmp eq i64 %t754, 11
  br i1 %t755, label %bb82, label %bb83
bb82:
  %t757 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t758 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t757, i32 0, i32 0
  %t759 = load { i64, [4 x i64] }, ptr %t758
  store { i64, [4 x i64] } %t759, ptr %l33
  %t761 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t762 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t761, i32 0, i32 1
  %t763 = load i32, ptr %t762
  store i32 %t763, ptr %l34, !tbaa !23
  %t765 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t766 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t765, i32 0, i32 2
  %t767 = load i32, ptr %t766
  store i32 %t767, ptr %l35, !tbaa !23
  br label %bb84
bb83:
  br label %bb88
bb84:
  store %olang.scope zeroinitializer, ptr %s26
  %t769 = load ptr, ptr %l0, !tbaa !29
  %t770 = load { i64, [4 x i64] }, ptr %l33
  %t773 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s26, ptr %v2, ptr %v3, ptr %t769, { i64, [4 x i64] } %t770)
  store { i64, ptr } %t773, ptr %l241
  br label %bb85
bb85:
  %t774 = load ptr, ptr %l0, !tbaa !29
  %t775 = load i32, ptr %l34, !tbaa !23
  %t778 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2elist(ptr %v0, ptr %s26, ptr %v3, ptr %t774, i32 %t775)
  store { i64, ptr } %t778, ptr %l244
  br label %bb86
bb86:
  %t779 = load ptr, ptr %l0, !tbaa !29
  %t780 = load i32, ptr %l35, !tbaa !23
  %t783 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2elist(ptr %v0, ptr %s26, ptr %v3, ptr %t779, i32 %t780)
  store { i64, ptr } %t783, ptr %l247
  br label %bb87
bb87:
  %t784 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t785 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t786 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t787 = extractvalue { i64, ptr } %t786, 1
  %t788 = extractvalue { i64, ptr } %t786, 0
  %t789 = add i64 %t785, %t788
  %t790 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t791 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t792 = add i64 %t789, %t791
  %t793 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t794 = extractvalue { i64, ptr } %t793, 1
  %t795 = extractvalue { i64, ptr } %t793, 0
  %t796 = add i64 %t792, %t795
  %t797 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t798 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t799 = add i64 %t796, %t798
  %t800 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t801 = extractvalue { i64, ptr } %t800, 1
  %t802 = extractvalue { i64, ptr } %t800, 0
  %t803 = add i64 %t799, %t802
  %t804 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t803)
  call void @olang_textcopy(ptr %t804, ptr %t784, i64 %t785)
  %t805 = getelementptr i8, ptr %t804, i64 %t785
  call void @olang_textcopy(ptr %t805, ptr %t787, i64 %t788)
  %t806 = getelementptr i8, ptr %t805, i64 %t788
  call void @olang_textcopy(ptr %t806, ptr %t790, i64 %t791)
  %t807 = getelementptr i8, ptr %t806, i64 %t791
  call void @olang_textcopy(ptr %t807, ptr %t794, i64 %t795)
  %t808 = getelementptr i8, ptr %t807, i64 %t795
  call void @olang_textcopy(ptr %t808, ptr %t797, i64 %t798)
  %t809 = getelementptr i8, ptr %t808, i64 %t798
  call void @olang_textcopy(ptr %t809, ptr %t801, i64 %t802)
  %t810 = insertvalue { i64, ptr } undef, i64 %t803, 0
  %t811 = insertvalue { i64, ptr } %t810, ptr %t804, 1
  store { i64, ptr } %t811, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s26)
  br label %bb147
bb88:
  %t813 = load { i64, [15 x i64] }, ptr %l1
  %t815 = extractvalue { i64, [15 x i64] } %t813, 0
  %t816 = icmp eq i64 %t815, 12
  br i1 %t816, label %bb89, label %bb90
bb89:
  %t818 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t819 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t818, i32 0, i32 0
  %t820 = load { i64, [1 x i64] }, ptr %t819
  store { i64, [1 x i64] } %t820, ptr %l36
  %t822 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t823 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t822, i32 0, i32 1
  %t824 = load { i64, [1 x i64] }, ptr %t823
  store { i64, [1 x i64] } %t824, ptr %l37
  %t826 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t827 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t826, i32 0, i32 2
  %t828 = load i32, ptr %t827
  store i32 %t828, ptr %l38, !tbaa !23
  br label %bb91
bb90:
  br label %bb95
bb91:
  store %olang.scope zeroinitializer, ptr %s28
  %t830 = load ptr, ptr %l0, !tbaa !29
  %t831 = load { i64, [1 x i64] }, ptr %l36
  %t834 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s28, ptr %t830, { i64, [1 x i64] } %t831)
  store { i64, ptr } %t834, ptr %l256
  br label %bb92
bb92:
  %t835 = load ptr, ptr %l0, !tbaa !29
  %t836 = load { i64, [1 x i64] }, ptr %l37
  %t839 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s28, ptr %t835, { i64, [1 x i64] } %t836)
  store { i64, ptr } %t839, ptr %l259
  br label %bb93
bb93:
  %t840 = load ptr, ptr %l2, !tbaa !29
  store ptr %t840, ptr %l260, !tbaa !29
  %t841 = load i32, ptr %l38, !tbaa !23
  %t842 = load ptr, ptr %l260, !tbaa !29
  %t843 = call ptr @__olang_scope_or(ptr %v3, ptr %t842)
  %t844 = ptrtoint ptr %t843 to i64
  %t846 = inttoptr i64 %t844 to ptr
  %t848 = inttoptr i64 0 to ptr
  %t849 = load ptr, ptr %l260, !tbaa !29
  %t851 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t846, ptr %s28, ptr %t848, ptr %t849, i32 %t841)
  store { i64, ptr } %t851, ptr %l264
  br label %bb94
bb94:
  %t852 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t853 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t854 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t855 = extractvalue { i64, ptr } %t854, 1
  %t856 = extractvalue { i64, ptr } %t854, 0
  %t857 = add i64 %t853, %t856
  %t858 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t859 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t860 = add i64 %t857, %t859
  %t861 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t862 = extractvalue { i64, ptr } %t861, 1
  %t863 = extractvalue { i64, ptr } %t861, 0
  %t864 = add i64 %t860, %t863
  %t865 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t866 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t867 = add i64 %t864, %t866
  %t868 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t869 = extractvalue { i64, ptr } %t868, 1
  %t870 = extractvalue { i64, ptr } %t868, 0
  %t871 = add i64 %t867, %t870
  %t872 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t871)
  call void @olang_textcopy(ptr %t872, ptr %t852, i64 %t853)
  %t873 = getelementptr i8, ptr %t872, i64 %t853
  call void @olang_textcopy(ptr %t873, ptr %t855, i64 %t856)
  %t874 = getelementptr i8, ptr %t873, i64 %t856
  call void @olang_textcopy(ptr %t874, ptr %t858, i64 %t859)
  %t875 = getelementptr i8, ptr %t874, i64 %t859
  call void @olang_textcopy(ptr %t875, ptr %t862, i64 %t863)
  %t876 = getelementptr i8, ptr %t875, i64 %t863
  call void @olang_textcopy(ptr %t876, ptr %t865, i64 %t866)
  %t877 = getelementptr i8, ptr %t876, i64 %t866
  call void @olang_textcopy(ptr %t877, ptr %t869, i64 %t870)
  %t878 = insertvalue { i64, ptr } undef, i64 %t871, 0
  %t879 = insertvalue { i64, ptr } %t878, ptr %t872, 1
  store { i64, ptr } %t879, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s28)
  br label %bb147
bb95:
  %t881 = load { i64, [15 x i64] }, ptr %l1
  %t883 = extractvalue { i64, [15 x i64] } %t881, 0
  %t884 = icmp eq i64 %t883, 13
  br i1 %t884, label %bb96, label %bb97
bb96:
  %t886 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t887 = getelementptr { { i64, [1 x i64] } }, ptr %t886, i32 0, i32 0
  %t888 = load { i64, [1 x i64] }, ptr %t887
  store { i64, [1 x i64] } %t888, ptr %l39
  br label %bb98
bb97:
  br label %bb100
bb98:
  store %olang.scope zeroinitializer, ptr %s30
  %t890 = load ptr, ptr %l0, !tbaa !29
  %t891 = load { i64, [1 x i64] }, ptr %l39
  %t894 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s30, ptr %t890, { i64, [1 x i64] } %t891)
  store { i64, ptr } %t894, ptr %l271
  br label %bb99
bb99:
  %t895 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t896 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t897 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t898 = extractvalue { i64, ptr } %t897, 1
  %t899 = extractvalue { i64, ptr } %t897, 0
  %t900 = add i64 %t896, %t899
  %t901 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t900)
  call void @olang_textcopy(ptr %t901, ptr %t895, i64 %t896)
  %t902 = getelementptr i8, ptr %t901, i64 %t896
  call void @olang_textcopy(ptr %t902, ptr %t898, i64 %t899)
  %t903 = insertvalue { i64, ptr } undef, i64 %t900, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr %t901, 1
  store { i64, ptr } %t904, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s30)
  br label %bb147
bb100:
  %t906 = load { i64, [15 x i64] }, ptr %l1
  %t908 = extractvalue { i64, [15 x i64] } %t906, 0
  %t909 = icmp eq i64 %t908, 14
  br i1 %t909, label %bb101, label %bb102
bb101:
  %t911 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t912 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t911, i32 0, i32 0
  %t913 = load { i64, [4 x i64] }, ptr %t912
  store { i64, [4 x i64] } %t913, ptr %l40
  %t915 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t916 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t915, i32 0, i32 1
  %t917 = load { i64, [1 x i64] }, ptr %t916
  store { i64, [1 x i64] } %t917, ptr %l41
  br label %bb103
bb102:
  br label %bb106
bb103:
  store %olang.scope zeroinitializer, ptr %s32
  %t919 = load ptr, ptr %l0, !tbaa !29
  %t920 = load { i64, [4 x i64] }, ptr %l40
  %t923 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s32, ptr %v2, ptr %v3, ptr %t919, { i64, [4 x i64] } %t920)
  store { i64, ptr } %t923, ptr %l279
  br label %bb104
bb104:
  %t924 = load ptr, ptr %l0, !tbaa !29
  %t925 = load { i64, [1 x i64] }, ptr %l41
  %t928 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s32, ptr %t924, { i64, [1 x i64] } %t925)
  store { i64, ptr } %t928, ptr %l282
  br label %bb105
bb105:
  %t929 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t930 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t931 = load { i64, ptr }, ptr %l279, !tbaa !27
  %t932 = extractvalue { i64, ptr } %t931, 1
  %t933 = extractvalue { i64, ptr } %t931, 0
  %t934 = add i64 %t930, %t933
  %t935 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t936 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t937 = add i64 %t934, %t936
  %t938 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t939 = extractvalue { i64, ptr } %t938, 1
  %t940 = extractvalue { i64, ptr } %t938, 0
  %t941 = add i64 %t937, %t940
  %t942 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t941)
  call void @olang_textcopy(ptr %t942, ptr %t929, i64 %t930)
  %t943 = getelementptr i8, ptr %t942, i64 %t930
  call void @olang_textcopy(ptr %t943, ptr %t932, i64 %t933)
  %t944 = getelementptr i8, ptr %t943, i64 %t933
  call void @olang_textcopy(ptr %t944, ptr %t935, i64 %t936)
  %t945 = getelementptr i8, ptr %t944, i64 %t936
  call void @olang_textcopy(ptr %t945, ptr %t939, i64 %t940)
  %t946 = insertvalue { i64, ptr } undef, i64 %t941, 0
  %t947 = insertvalue { i64, ptr } %t946, ptr %t942, 1
  store { i64, ptr } %t947, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s32)
  br label %bb147
bb106:
  %t949 = load { i64, [15 x i64] }, ptr %l1
  %t951 = extractvalue { i64, [15 x i64] } %t949, 0
  %t952 = icmp eq i64 %t951, 15
  br i1 %t952, label %bb107, label %bb108
bb107:
  %t954 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t955 = getelementptr { { i64, [4 x i64] } }, ptr %t954, i32 0, i32 0
  %t956 = load { i64, [4 x i64] }, ptr %t955
  store { i64, [4 x i64] } %t956, ptr %l42
  br label %bb109
bb108:
  br label %bb111
bb109:
  store %olang.scope zeroinitializer, ptr %s34
  %t958 = load ptr, ptr %l0, !tbaa !29
  %t959 = load { i64, [4 x i64] }, ptr %l42
  %t962 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s34, ptr %v2, ptr %v3, ptr %t958, { i64, [4 x i64] } %t959)
  store { i64, ptr } %t962, ptr %l289
  br label %bb110
bb110:
  %t963 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t964 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t965 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t966 = extractvalue { i64, ptr } %t965, 1
  %t967 = extractvalue { i64, ptr } %t965, 0
  %t968 = add i64 %t964, %t967
  %t969 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t968)
  call void @olang_textcopy(ptr %t969, ptr %t963, i64 %t964)
  %t970 = getelementptr i8, ptr %t969, i64 %t964
  call void @olang_textcopy(ptr %t970, ptr %t966, i64 %t967)
  %t971 = insertvalue { i64, ptr } undef, i64 %t968, 0
  %t972 = insertvalue { i64, ptr } %t971, ptr %t969, 1
  store { i64, ptr } %t972, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s34)
  br label %bb147
bb111:
  %t974 = load { i64, [15 x i64] }, ptr %l1
  %t976 = extractvalue { i64, [15 x i64] } %t974, 0
  %t977 = icmp eq i64 %t976, 16
  br i1 %t977, label %bb112, label %bb113
bb112:
  %t979 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t980 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t979, i32 0, i32 0
  %t981 = load { i64, [1 x i64] }, ptr %t980
  store { i64, [1 x i64] } %t981, ptr %l43
  %t983 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t984 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t983, i32 0, i32 1
  %t985 = load { i64, [4 x i64] }, ptr %t984
  store { i64, [4 x i64] } %t985, ptr %l44
  br label %bb114
bb113:
  br label %bb117
bb114:
  store %olang.scope zeroinitializer, ptr %s36
  %t987 = load ptr, ptr %l0, !tbaa !29
  %t988 = load { i64, [1 x i64] }, ptr %l43
  %t991 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s36, ptr %t987, { i64, [1 x i64] } %t988)
  store { i64, ptr } %t991, ptr %l297
  br label %bb115
bb115:
  %t992 = load ptr, ptr %l0, !tbaa !29
  %t993 = load { i64, [4 x i64] }, ptr %l44
  %t996 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s36, ptr %v2, ptr %v3, ptr %t992, { i64, [4 x i64] } %t993)
  store { i64, ptr } %t996, ptr %l300
  br label %bb116
bb116:
  %t997 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t998 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t999 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t1000 = extractvalue { i64, ptr } %t999, 1
  %t1001 = extractvalue { i64, ptr } %t999, 0
  %t1002 = add i64 %t998, %t1001
  %t1003 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t1004 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t1005 = add i64 %t1002, %t1004
  %t1006 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t1007 = extractvalue { i64, ptr } %t1006, 1
  %t1008 = extractvalue { i64, ptr } %t1006, 0
  %t1009 = add i64 %t1005, %t1008
  %t1010 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1009)
  call void @olang_textcopy(ptr %t1010, ptr %t997, i64 %t998)
  %t1011 = getelementptr i8, ptr %t1010, i64 %t998
  call void @olang_textcopy(ptr %t1011, ptr %t1000, i64 %t1001)
  %t1012 = getelementptr i8, ptr %t1011, i64 %t1001
  call void @olang_textcopy(ptr %t1012, ptr %t1003, i64 %t1004)
  %t1013 = getelementptr i8, ptr %t1012, i64 %t1004
  call void @olang_textcopy(ptr %t1013, ptr %t1007, i64 %t1008)
  %t1014 = insertvalue { i64, ptr } undef, i64 %t1009, 0
  %t1015 = insertvalue { i64, ptr } %t1014, ptr %t1010, 1
  store { i64, ptr } %t1015, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s36)
  br label %bb147
bb117:
  %t1017 = load { i64, [15 x i64] }, ptr %l1
  %t1019 = extractvalue { i64, [15 x i64] } %t1017, 0
  %t1020 = icmp eq i64 %t1019, 19
  br i1 %t1020, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l304, !tbaa !27
  %t1022 = load { i64, ptr }, ptr %l304, !tbaa !27
  store { i64, ptr } %t1022, ptr %l53, !tbaa !27
  br label %bb147
bb121:
  %t1024 = load { i64, [15 x i64] }, ptr %l1
  %t1026 = extractvalue { i64, [15 x i64] } %t1024, 0
  %t1027 = icmp eq i64 %t1026, 17
  br i1 %t1027, label %bb122, label %bb123
bb122:
  %t1029 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1030 = getelementptr { i64 }, ptr %t1029, i32 0, i32 0
  %t1031 = load i64, ptr %t1030
  store i64 %t1031, ptr %l45, !tbaa !24
  br label %bb124
bb123:
  br label %bb125
bb124:
  %t1033 = load i64, ptr %l45, !tbaa !24
  %t1034 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t1035 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t1037 = call i64 @__olang_fmt_i64(ptr null, i64 %t1033)
  %t1038 = add i64 %t1035, %t1037
  %t1039 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1038)
  call void @olang_textcopy(ptr %t1039, ptr %t1034, i64 %t1035)
  %t1040 = getelementptr i8, ptr %t1039, i64 %t1035
  %t1041 = call i64 @__olang_fmt_i64(ptr %t1040, i64 %t1033)
  %t1042 = insertvalue { i64, ptr } undef, i64 %t1038, 0
  %t1043 = insertvalue { i64, ptr } %t1042, ptr %t1039, 1
  store { i64, ptr } %t1043, ptr %l53, !tbaa !27
  br label %bb147
bb125:
  %t1045 = load { i64, [15 x i64] }, ptr %l1
  %t1047 = extractvalue { i64, [15 x i64] } %t1045, 0
  %t1048 = icmp eq i64 %t1047, 18
  br i1 %t1048, label %bb126, label %bb127
bb126:
  %t1050 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1051 = getelementptr { { i64, [1 x i64] } }, ptr %t1050, i32 0, i32 0
  %t1052 = load { i64, [1 x i64] }, ptr %t1051
  store { i64, [1 x i64] } %t1052, ptr %l46
  br label %bb128
bb127:
  br label %bb130
bb128:
  store %olang.scope zeroinitializer, ptr %s41
  %t1054 = load ptr, ptr %l0, !tbaa !29
  %t1055 = load { i64, [1 x i64] }, ptr %l46
  %t1058 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s41, ptr %t1054, { i64, [1 x i64] } %t1055)
  store { i64, ptr } %t1058, ptr %l316
  br label %bb129
bb129:
  %t1059 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1060 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1061 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t1062 = extractvalue { i64, ptr } %t1061, 1
  %t1063 = extractvalue { i64, ptr } %t1061, 0
  %t1064 = add i64 %t1060, %t1063
  %t1065 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1064)
  call void @olang_textcopy(ptr %t1065, ptr %t1059, i64 %t1060)
  %t1066 = getelementptr i8, ptr %t1065, i64 %t1060
  call void @olang_textcopy(ptr %t1066, ptr %t1062, i64 %t1063)
  %t1067 = insertvalue { i64, ptr } undef, i64 %t1064, 0
  %t1068 = insertvalue { i64, ptr } %t1067, ptr %t1065, 1
  store { i64, ptr } %t1068, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s41)
  br label %bb147
bb130:
  %t1070 = load { i64, [15 x i64] }, ptr %l1
  %t1072 = extractvalue { i64, [15 x i64] } %t1070, 0
  %t1073 = icmp eq i64 %t1072, 20
  br i1 %t1073, label %bb131, label %bb132
bb131:
  %t1075 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1076 = getelementptr { i32 }, ptr %t1075, i32 0, i32 0
  %t1077 = load i32, ptr %t1076
  store i32 %t1077, ptr %l47, !tbaa !23
  br label %bb133
bb132:
  br label %bb135
bb133:
  store %olang.scope zeroinitializer, ptr %s43
  %t1079 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1079, ptr %l321, !tbaa !29
  %t1080 = load i32, ptr %l47, !tbaa !23
  %t1081 = load ptr, ptr %l321, !tbaa !29
  %t1082 = call ptr @__olang_scope_or(ptr %v3, ptr %t1081)
  %t1083 = ptrtoint ptr %t1082 to i64
  %t1085 = inttoptr i64 %t1083 to ptr
  %t1087 = inttoptr i64 0 to ptr
  %t1088 = load ptr, ptr %l321, !tbaa !29
  %t1090 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t1085, ptr %s43, ptr %t1087, ptr %t1088, i32 %t1080)
  store { i64, ptr } %t1090, ptr %l325
  br label %bb134
bb134:
  %t1091 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t1092 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t1093 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t1094 = extractvalue { i64, ptr } %t1093, 1
  %t1095 = extractvalue { i64, ptr } %t1093, 0
  %t1096 = add i64 %t1092, %t1095
  %t1097 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1096)
  call void @olang_textcopy(ptr %t1097, ptr %t1091, i64 %t1092)
  %t1098 = getelementptr i8, ptr %t1097, i64 %t1092
  call void @olang_textcopy(ptr %t1098, ptr %t1094, i64 %t1095)
  %t1099 = insertvalue { i64, ptr } undef, i64 %t1096, 0
  %t1100 = insertvalue { i64, ptr } %t1099, ptr %t1097, 1
  store { i64, ptr } %t1100, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s43)
  br label %bb147
bb135:
  %t1102 = load { i64, [15 x i64] }, ptr %l1
  %t1104 = extractvalue { i64, [15 x i64] } %t1102, 0
  %t1105 = icmp eq i64 %t1104, 21
  br i1 %t1105, label %bb136, label %bb137
bb136:
  %t1107 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1108 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t1107, i32 0, i32 0
  %t1109 = load %"compiler/mir:Lvalue", ptr %t1108
  store %"compiler/mir:Lvalue" %t1109, ptr %l48
  %t1111 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1112 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t1111, i32 0, i32 1
  %t1113 = load i32, ptr %t1112
  store i32 %t1113, ptr %l49, !tbaa !23
  br label %bb138
bb137:
  br label %bb141
bb138:
  store %olang.scope zeroinitializer, ptr %s45
  %t1115 = load ptr, ptr %l0, !tbaa !29
  %t1116 = load %"compiler/mir:Lvalue", ptr %l48
  %t1119 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s45, ptr %v2, ptr %t1115, %"compiler/mir:Lvalue" %t1116)
  store { i64, ptr } %t1119, ptr %l333
  br label %bb139
bb139:
  %t1120 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1120, ptr %l334, !tbaa !29
  %t1121 = load i32, ptr %l49, !tbaa !23
  %t1122 = load ptr, ptr %l334, !tbaa !29
  %t1123 = call ptr @__olang_scope_or(ptr %v3, ptr %t1122)
  %t1124 = ptrtoint ptr %t1123 to i64
  %t1126 = inttoptr i64 %t1124 to ptr
  %t1128 = inttoptr i64 0 to ptr
  %t1129 = load ptr, ptr %l334, !tbaa !29
  %t1131 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t1126, ptr %s45, ptr %t1128, ptr %t1129, i32 %t1121)
  store { i64, ptr } %t1131, ptr %l338
  br label %bb140
bb140:
  %t1132 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t1133 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t1134 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t1135 = extractvalue { i64, ptr } %t1134, 1
  %t1136 = extractvalue { i64, ptr } %t1134, 0
  %t1137 = add i64 %t1133, %t1136
  %t1138 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1139 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1140 = add i64 %t1137, %t1139
  %t1141 = load { i64, ptr }, ptr %l338, !tbaa !27
  %t1142 = extractvalue { i64, ptr } %t1141, 1
  %t1143 = extractvalue { i64, ptr } %t1141, 0
  %t1144 = add i64 %t1140, %t1143
  %t1145 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1144)
  call void @olang_textcopy(ptr %t1145, ptr %t1132, i64 %t1133)
  %t1146 = getelementptr i8, ptr %t1145, i64 %t1133
  call void @olang_textcopy(ptr %t1146, ptr %t1135, i64 %t1136)
  %t1147 = getelementptr i8, ptr %t1146, i64 %t1136
  call void @olang_textcopy(ptr %t1147, ptr %t1138, i64 %t1139)
  %t1148 = getelementptr i8, ptr %t1147, i64 %t1139
  call void @olang_textcopy(ptr %t1148, ptr %t1142, i64 %t1143)
  %t1149 = insertvalue { i64, ptr } undef, i64 %t1144, 0
  %t1150 = insertvalue { i64, ptr } %t1149, ptr %t1145, 1
  store { i64, ptr } %t1150, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s45)
  br label %bb147
bb141:
  %t1152 = load { i64, [15 x i64] }, ptr %l1
  %t1154 = extractvalue { i64, [15 x i64] } %t1152, 0
  %t1155 = icmp eq i64 %t1154, 22
  br i1 %t1155, label %bb142, label %bb143
bb142:
  %t1157 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1158 = getelementptr { { i64, [4 x i64] } }, ptr %t1157, i32 0, i32 0
  %t1159 = load { i64, [4 x i64] }, ptr %t1158
  store { i64, [4 x i64] } %t1159, ptr %l50
  br label %bb144
bb143:
  br label %bb146
bb144:
  store %olang.scope zeroinitializer, ptr %s47
  %t1161 = load ptr, ptr %l0, !tbaa !29
  %t1162 = load { i64, [4 x i64] }, ptr %l50
  %t1165 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s47, ptr %v2, ptr %v3, ptr %t1161, { i64, [4 x i64] } %t1162)
  store { i64, ptr } %t1165, ptr %l345
  br label %bb145
bb145:
  %t1166 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1167 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1168 = load { i64, ptr }, ptr %l345, !tbaa !27
  %t1169 = extractvalue { i64, ptr } %t1168, 1
  %t1170 = extractvalue { i64, ptr } %t1168, 0
  %t1171 = add i64 %t1167, %t1170
  %t1172 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1171)
  call void @olang_textcopy(ptr %t1172, ptr %t1166, i64 %t1167)
  %t1173 = getelementptr i8, ptr %t1172, i64 %t1167
  call void @olang_textcopy(ptr %t1173, ptr %t1169, i64 %t1170)
  %t1174 = insertvalue { i64, ptr } undef, i64 %t1171, 0
  %t1175 = insertvalue { i64, ptr } %t1174, ptr %t1172, 1
  store { i64, ptr } %t1175, ptr %l53, !tbaa !27
  call void @__olang_scope_close(ptr %s47)
  br label %bb147
bb146:
  call void @__olang_check_failed(ptr @olang_loc_55b2be13c853614c_e5b496909f3a0f10)
  unreachable
bb147:
  %t1177 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t1178 = extractvalue { i64, ptr } %t1177, 0
  store i64 %t1178, ptr %l347, !tbaa !24
  %t1179 = load i64, ptr %l347, !tbaa !24
  %t1180 = mul i64 %t1179, 1
  %t1181 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1180)
  %t1182 = insertvalue { i64, ptr } undef, i64 %t1179, 0
  %t1183 = insertvalue { i64, ptr } %t1182, ptr %t1181, 1
  store { i64, ptr } %t1183, ptr %l348, !tbaa !27
  %t1184 = getelementptr { i64, ptr }, ptr %l348, i32 0, i32 1
  %t1185 = load ptr, ptr %t1184, !tbaa !27
  %t1186 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t1187 = load ptr, ptr %t1186, !tbaa !27
  %t1188 = load i64, ptr %l347, !tbaa !24
  %t1189 = mul i64 %t1188, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1185, ptr %t1187, i64 %t1189, i1 false)
  %t1190 = load { i64, ptr }, ptr %l348, !tbaa !27
  store { i64, ptr } %t1190, ptr %l53, !tbaa !27
  %t1191 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t1191, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i32
  %l9 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca %"compiler/mir:ScopeInfo"
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb14
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l9
  br label %bb4
bb4:
  %t15 = load i1, ptr %l9, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t23 = sext i32 %t19 to i64
  %t24 = call i64 @__olang_fmt_i64(ptr null, i64 %t23)
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  %t31 = call i64 @__olang_fmt_i64(ptr %t30, i64 %t23)
  %t32 = getelementptr i8, ptr %t30, i64 %t24
  call void @olang_textcopy(ptr %t32, ptr %t26, i64 %t27)
  %t33 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t29, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = extractvalue { i64, ptr } %t34, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t18, { i64, ptr } %t41)
  br label %bb7
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/mir:verifier", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/mir:Fn", ptr %t47, i32 0, i32 8
  store ptr %t49, ptr %l17, !tbaa !29
  %t50 = load i32, ptr %l2, !tbaa !23
  %t52 = sext i32 %t50 to i64
  %t53 = load ptr, ptr %l17, !tbaa !29
  %t54 = call ptr @__olang_scope_or(ptr %v1, ptr %t53)
  %t55 = ptrtoint ptr %t54 to i64
  %t57 = inttoptr i64 %t55 to ptr
  %t58 = load ptr, ptr %l17, !tbaa !29
  %t60 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t57, ptr %t58, i64 %t52)
  store %"compiler/mir:ScopeInfo" %t60, ptr %l21
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb8:
  %t61 = getelementptr %"compiler/mir:ScopeInfo", ptr %l21, i32 0, i32 0
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 7}
  %t64 = trunc i64 5 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s5
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l2, !tbaa !23
  %t69 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t72 = sext i32 %t68 to i64
  %t73 = call i64 @__olang_fmt_i64(ptr null, i64 %t72)
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t77)
  call void @olang_textcopy(ptr %t78, ptr %t69, i64 %t70)
  %t79 = getelementptr i8, ptr %t78, i64 %t70
  %t80 = call i64 @__olang_fmt_i64(ptr %t79, i64 %t72)
  %t81 = getelementptr i8, ptr %t79, i64 %t73
  call void @olang_textcopy(ptr %t81, ptr %t75, i64 %t76)
  %t82 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t78, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s5, ptr %t67, { i64, ptr } %t90)
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s5)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb24
bb14:
  %t93 = load { i64, [1 x i64] }, ptr %l1
  %t95 = extractvalue { i64, [1 x i64] } %t93, 0
  %t96 = icmp eq i64 %t95, 4
  br i1 %t96, label %bb15, label %bb16
bb15:
  %t98 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t99 = getelementptr { i32 }, ptr %t98, i32 0, i32 0
  %t100 = load i32, ptr %t99
  store i32 %t100, ptr %l3, !tbaa !23
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %t102, i32 %t103)
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
  call void @__olang_check_failed(ptr @olang_loc_a15aa4830130cc38_9fcdb454ad4b970c)
  unreachable
bb24:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecallee(ptr %v0, ptr %v1, ptr %a0, { i64, [7 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca { i64, [4 x i64] }
  store { i64, [7 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [4 x i64] } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [4 x i64] }, ptr %t7
  store { i64, [4 x i64] } %t8, ptr %l2
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t11 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %t11)
  br label %bb4
bb4:
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_43daeee16a7347fc_3936ff71893c42a0)
  unreachable
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [7 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca i32
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l20 = alloca i32
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca i32
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l56 = alloca i32
  %l60 = alloca ptr
  %l63 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 1
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb5
bb2:
  %t10 = load { i64, [7 x i64] }, ptr %l1
  %t12 = extractvalue { i64, [7 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t16 = getelementptr { i64, i32 }, ptr %t15, i32 0, i32 1
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t19 = load i32, ptr %l2, !tbaa !23
  store i32 %t19, ptr %l7, !tbaa !23
  br label %bb16
bb6:
  %t21 = load { i64, [7 x i64] }, ptr %l1
  %t23 = extractvalue { i64, [7 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 2
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t27 = getelementptr { { i64, [4 x i64] } }, ptr %t26, i32 0, i32 0
  %t28 = load { i64, [4 x i64] }, ptr %t27
  store { i64, [4 x i64] } %t28, ptr %l3
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load { i64, [4 x i64] }, ptr %l3
  %t34 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t30, { i64, [4 x i64] } %t31)
  store i32 %t34, ptr %l20
  br label %bb10
bb10:
  %t35 = load i32, ptr %l20, !tbaa !23
  store i32 %t35, ptr %l7, !tbaa !23
  br label %bb16
bb11:
  %t36 = load { i64, [7 x i64] }, ptr %l1
  %t38 = extractvalue { i64, [7 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 3
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t42 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t41, i32 0, i32 2
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l4, !tbaa !23
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t45 = load i32, ptr %l4, !tbaa !23
  store i32 %t45, ptr %l7, !tbaa !23
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_690174ade0b6e824_1aa5c898f3f73ab8)
  unreachable
bb16:
  %t47 = load i32, ptr %l7, !tbaa !23
  store i32 %t47, ptr %l5, !tbaa !23
  %t48 = load { i64, [7 x i64] }, ptr %l1
  %t50 = extractvalue { i64, [7 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 3
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t53 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t54 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t53, i32 0, i32 0
  %t55 = load { i64, [4 x i64] }, ptr %t54
  store { i64, [4 x i64] } %t55, ptr %l6
  br label %bb19
bb18:
  br label %bb29
bb19:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/mir:verifier", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  store ptr %t60, ptr %l29, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/mir:verifier", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  store ptr %t64, ptr %l31, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, [4 x i64] }, ptr %l6
  %t69 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t65, { i64, [4 x i64] } %t66)
  store i32 %t69, ptr %l34
  br label %bb20
bb20:
  %t70 = load ptr, ptr %l31, !tbaa !29
  %t71 = call ptr @__olang_scope_or(ptr %v2, ptr %t70)
  %t72 = ptrtoint ptr %t71 to i64
  %t74 = inttoptr i64 %t72 to ptr
  %t75 = load ptr, ptr %l31, !tbaa !29
  %t76 = load i32, ptr %l34, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t74, ptr %t75, i32 %t76)
  store i32 %t77, ptr %l36
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l29, !tbaa !29
  %t79 = call ptr @__olang_scope_or(ptr %v2, ptr %t78)
  %t80 = ptrtoint ptr %t79 to i64
  %t82 = inttoptr i64 %t80 to ptr
  %t83 = load ptr, ptr %l29, !tbaa !29
  %t84 = load i32, ptr %l36, !tbaa !23
  %t85 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %t82, ptr %t83, i32 %t84)
  store i1 %t85, ptr %l38
  br label %bb22
bb22:
  %t86 = load i1, ptr %l38, !tbaa !21
  %t87 = xor i1 %t86, true
  br i1 %t87, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l40, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l41, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, [4 x i64] }, ptr %l6
  %t95 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t91, { i64, [4 x i64] } %t92)
  store i32 %t95, ptr %l44
  br label %bb25
bb24:
  br label %bb28
bb25:
  %t96 = load ptr, ptr %l41, !tbaa !29
  %t97 = load i32, ptr %l44, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s5, ptr %v2, ptr %t96, i32 %t97)
  store { i64, ptr } %t98, ptr %l45
  br label %bb26
bb26:
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t101 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = add i64 %t100, %t103
  %t105 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t104)
  call void @olang_textcopy(ptr %t105, ptr %t99, i64 %t100)
  %t106 = getelementptr i8, ptr %t105, i64 %t100
  call void @olang_textcopy(ptr %t106, ptr %t102, i64 %t103)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t105, 1
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t111 = extractvalue { i64, ptr } %t108, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t116 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s5, ptr %t116, { i64, ptr } %t115)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb28
bb28:
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_b20acbf668615715_202a9ab5dba06089)
  unreachable
bb34:
  %t118 = load i32, ptr %l5, !tbaa !23
  %t119 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t122 = icmp eq i32 %t118, %t119
  br i1 %t122, label %bb35, label %bb36
bb35:
  %t124 = load i32, ptr %l5, !tbaa !23
  store i32 %t124, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/mir:verifier", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  store ptr %t129, ptr %l53, !tbaa !29
  %t130 = load i32, ptr %l5, !tbaa !23
  %t131 = load ptr, ptr %l53, !tbaa !29
  %t132 = call ptr @__olang_scope_or(ptr %v2, ptr %t131)
  %t133 = ptrtoint ptr %t132 to i64
  %t135 = inttoptr i64 %t133 to ptr
  %t136 = load ptr, ptr %l53, !tbaa !29
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t135, ptr %t136, i32 %t130)
  store i32 %t138, ptr %l56
  br label %bb38
bb38:
  %t139 = load i32, ptr %l56, !range !{i32 0, i32 33}
  %t141 = trunc i64 21 to i32
  %t142 = icmp eq i32 %t139, %t141
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s9
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l60, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i32, ptr %l5, !tbaa !23
  %t151 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s9, ptr %v2, ptr %t147, i32 %t148)
  store { i64, ptr } %t151, ptr %l63
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t152 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t154 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = add i64 %t153, %t156
  %t158 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t160 = add i64 %t157, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t152, i64 %t153)
  %t162 = getelementptr i8, ptr %t161, i64 %t153
  call void @olang_textcopy(ptr %t162, ptr %t155, i64 %t156)
  %t163 = getelementptr i8, ptr %t162, i64 %t156
  call void @olang_textcopy(ptr %t163, ptr %t158, i64 %t159)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t161, 1
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t168 = extractvalue { i64, ptr } %t165, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  %t173 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s9, ptr %t173, { i64, ptr } %t172)
  br label %bb42
bb42:
  %t175 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  store i32 %t175, ptr %rv
  br label %ret
bb43:
  %t177 = load i32, ptr %l5, !tbaa !23
  store i32 %t177, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
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
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
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
  %l33 = alloca i1
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i64
  %l47 = alloca ptr
  %l49 = alloca i64
  %l53 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l65 = alloca i64
  %l68 = alloca i64
  %l87 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l114 = alloca i64
  %l117 = alloca i64
  %l136 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l150 = alloca i64
  %l153 = alloca i64
  %l155 = alloca { i64, ptr }
  %l156 = alloca i64
  %l159 = alloca i64
  %l162 = alloca i64
  %l164 = alloca i64
  %l169 = alloca i32
  %l179 = alloca i64
  %l182 = alloca i64
  %l201 = alloca { i64, ptr }
  %l208 = alloca i1
  %l210 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l230 = alloca i1
  %l232 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l250 = alloca i64
  %l253 = alloca i64
  %l272 = alloca { i64, ptr }
  %l275 = alloca i1
  %l277 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l298 = alloca i64
  %l301 = alloca i64
  %l306 = alloca i64
  %l310 = alloca i64
  %l313 = alloca i64
  %l332 = alloca i1
  %l336 = alloca { i64, ptr }
  %l341 = alloca i32
  %l345 = alloca i32
  %l351 = alloca ptr
  %l352 = alloca i32
  %l354 = alloca { i64, ptr }
  %l357 = alloca { i64, ptr }
  %s24 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 7
  store ptr %t8, ptr %l43, !tbaa !29
  %t9 = load ptr, ptr %l43, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l43, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %t13, ptr %t14)
  store i64 %t15, ptr %l45
  br label %bb1
bb1:
  %t16 = load i64, ptr %l45, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 8
  store ptr %t19, ptr %l47, !tbaa !29
  %t20 = load ptr, ptr %l47, !tbaa !29
  %t21 = call ptr @__olang_scope_or(ptr %v1, ptr %t20)
  %t22 = ptrtoint ptr %t21 to i64
  %t24 = inttoptr i64 %t22 to ptr
  %t25 = load ptr, ptr %l47, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t24, ptr %t25)
  store i64 %t26, ptr %l49
  br label %bb2
bb2:
  %t27 = load i64, ptr %l49, !tbaa !24
  store i64 %t27, ptr %l4, !tbaa !24
  %t28 = load i32, ptr %l1, !tbaa !23
  %t30 = sext i32 %t28 to i64
  store i64 %t30, ptr %l5, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/mir:verifier", ptr %t32, i32 0, i32 6
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  store { i64, ptr } %t35, ptr %l53, !tbaa !27
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i1, ptr %t39, i64 %t36
  %t41 = load i1, ptr %t40, !tbaa !31
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb3, label %bb4
bb3:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/mir:verifier", ptr %t45, i32 0, i32 6
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l58, !tbaa !27
  %t49 = load i64, ptr %l5, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i1, ptr %t52, i64 %t49
  store i1 true, ptr %t53, !tbaa !31
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/mir:verifier", ptr %t54, i32 0, i32 18
  store i1 true, ptr %t56, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l3, !tbaa !24
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb5, label %bb6
bb4:
  br label %bb40
bb5:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb10
bb7:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = sub i64 %t69, %t70
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t73, %t74
  %t79 = sub i64 %t77, 1
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = sdiv i64 %t79, %t80
  store i64 %t83, ptr %l68, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb9
bb9:
  %t85 = load i64, ptr %l68, !tbaa !24
  store i64 %t85, ptr %l65, !tbaa !24
  br label %bb10
bb10:
  %t86 = load i64, ptr %l65, !tbaa !24
  store i64 %t86, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = mul i64 %t96, %t97
  %t103 = add i64 %t95, %t100
  store i64 %t103, ptr %l11, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/mir:verifier", ptr %t105, i32 0, i32 7
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l87, !tbaa !27
  %t109 = load i64, ptr %l5, !tbaa !24
  %t110 = load i64, ptr %l3, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/mir:verifier", ptr %t118, i32 0, i32 14
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l94, !tbaa !27
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i1, ptr %t125, i64 %t122
  %t127 = load i1, ptr %t126, !tbaa !31
  %t130 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i1, ptr %t131, i64 %t117
  store i1 %t127, ptr %t132, !tbaa !31
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/mir:verifier", ptr %t133, i32 0, i32 8
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l98, !tbaa !27
  %t137 = load i64, ptr %l5, !tbaa !24
  %t138 = load i64, ptr %l3, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t142 = load i64, ptr %l11, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/mir:verifier", ptr %t146, i32 0, i32 15
  %t149 = load { i64, ptr }, ptr %t148, !tbaa !27
  store { i64, ptr } %t149, ptr %l105, !tbaa !27
  %t150 = load i64, ptr %l11, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i1, ptr %t153, i64 %t150
  %t155 = load i1, ptr %t154, !tbaa !31
  %t158 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr i1, ptr %t159, i64 %t145
  store i1 %t155, ptr %t160, !tbaa !31
  br label %bb15
bb15:
  %t161 = load i64, ptr %l10, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l10, !tbaa !24
  br label %bb11
bb16:
  store i64 0, ptr %l12, !tbaa !24
  %t165 = load i64, ptr %l4, !tbaa !24
  store i64 %t165, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t167 = load i64, ptr %l13, !tbaa !24
  %t168 = load i64, ptr %l12, !tbaa !24
  %t171 = icmp sgt i64 %t167, %t168
  br i1 %t171, label %bb17, label %bb18
bb17:
  %t173 = load i64, ptr %l14, !tbaa !24
  %t175 = icmp sgt i64 %t173, 0
  br i1 %t175, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb22
bb19:
  %t177 = load i64, ptr %l13, !tbaa !24
  %t178 = load i64, ptr %l12, !tbaa !24
  %t181 = sub i64 %t177, %t178
  %t182 = load i64, ptr %l14, !tbaa !24
  %t185 = add i64 %t181, %t182
  %t187 = sub i64 %t185, 1
  %t188 = load i64, ptr %l14, !tbaa !24
  %t191 = sdiv i64 %t187, %t188
  store i64 %t191, ptr %l117, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb21
bb21:
  %t193 = load i64, ptr %l117, !tbaa !24
  store i64 %t193, ptr %l114, !tbaa !24
  br label %bb22
bb22:
  %t194 = load i64, ptr %l114, !tbaa !24
  store i64 %t194, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb23
bb23:
  %t195 = load i64, ptr %l16, !tbaa !24
  %t196 = load i64, ptr %l15, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb24, label %bb25
bb24:
  br label %bb28
bb25:
  br label %bb26
bb26:
  %t203 = load i64, ptr %l12, !tbaa !24
  %t204 = load i64, ptr %l16, !tbaa !24
  %t205 = load i64, ptr %l14, !tbaa !24
  %t208 = mul i64 %t204, %t205
  %t211 = add i64 %t203, %t208
  store i64 %t211, ptr %l17, !tbaa !24
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/mir:verifier", ptr %t213, i32 0, i32 9
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  store { i64, ptr } %t216, ptr %l136, !tbaa !27
  %t217 = load i64, ptr %l5, !tbaa !24
  %t218 = load i64, ptr %l4, !tbaa !24
  %t221 = mul i64 %t217, %t218
  %t222 = load i64, ptr %l17, !tbaa !24
  %t225 = add i64 %t221, %t222
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/mir:verifier", ptr %t226, i32 0, i32 16
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  store { i64, ptr } %t229, ptr %l143, !tbaa !27
  %t230 = load i64, ptr %l17, !tbaa !24
  %t232 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr i1, ptr %t233, i64 %t230
  %t235 = load i1, ptr %t234, !tbaa !31
  %t238 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr i1, ptr %t239, i64 %t225
  store i1 %t235, ptr %t240, !tbaa !31
  br label %bb27
bb27:
  %t241 = load i64, ptr %l16, !tbaa !24
  %t243 = add i64 %t241, 1
  store i64 %t243, ptr %l16, !tbaa !24
  br label %bb23
bb28:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/mir:verifier", ptr %t245, i32 0, i32 10
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !27
  store { i64, ptr } %t248, ptr %l149, !tbaa !27
  %t249 = load i64, ptr %l5, !tbaa !24
  store i64 %t249, ptr %l150, !tbaa !24
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/mir:verifier", ptr %t250, i32 0, i32 12
  %t254 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t252)
  store i64 %t254, ptr %l153
  br label %bb29
bb29:
  %t255 = load i64, ptr %l153, !tbaa !24
  %t256 = load i64, ptr %l150, !tbaa !24
  %t257 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr i64, ptr %t258, i64 %t256
  store i64 %t255, ptr %t259, !tbaa !34
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/mir:verifier", ptr %t260, i32 0, i32 11
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l155, !tbaa !27
  %t264 = load i64, ptr %l5, !tbaa !24
  store i64 %t264, ptr %l156, !tbaa !24
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/mir:verifier", ptr %t265, i32 0, i32 17
  %t269 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t267)
  store i64 %t269, ptr %l159
  br label %bb30
bb30:
  %t270 = load i64, ptr %l159, !tbaa !24
  %t271 = load i64, ptr %l156, !tbaa !24
  %t272 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr i64, ptr %t273, i64 %t271
  store i64 %t270, ptr %t274, !tbaa !34
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/mir:verifier", ptr %t275, i32 0, i32 17
  store ptr %t277, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb31
bb31:
  %t279 = load i64, ptr %l19, !tbaa !24
  store i64 %t279, ptr %l162, !tbaa !24
  %t280 = load ptr, ptr %l18, !tbaa !29
  %t282 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t280)
  store i64 %t282, ptr %l164
  br label %bb32
bb32:
  %t283 = load i64, ptr %l162, !tbaa !24
  %t284 = load i64, ptr %l164, !tbaa !24
  %t285 = icmp slt i64 %t283, %t284
  %t287 = xor i1 %t285, true
  br i1 %t287, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t289 = load ptr, ptr %l18, !tbaa !29
  %t290 = load i64, ptr %l19, !tbaa !24
  %t293 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t289, i64 %t290)
  store i32 %t293, ptr %l169
  br label %bb36
bb36:
  %t294 = load i32, ptr %l169, !tbaa !23
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/mir:verifier", ptr %t295, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t297, i32 %t294)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t301 = load i64, ptr %l19, !tbaa !24
  %t303 = add i64 %t301, 1
  store i64 %t303, ptr %l19, !tbaa !24
  br label %bb31
bb39:
  br label %ret
bb40:
  store i64 0, ptr %l21, !tbaa !24
  %t305 = load i64, ptr %l3, !tbaa !24
  store i64 %t305, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t307 = load i64, ptr %l22, !tbaa !24
  %t308 = load i64, ptr %l21, !tbaa !24
  %t311 = icmp sgt i64 %t307, %t308
  br i1 %t311, label %bb41, label %bb42
bb41:
  %t313 = load i64, ptr %l23, !tbaa !24
  %t315 = icmp sgt i64 %t313, 0
  br i1 %t315, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l179, !tbaa !24
  br label %bb46
bb43:
  %t317 = load i64, ptr %l22, !tbaa !24
  %t318 = load i64, ptr %l21, !tbaa !24
  %t321 = sub i64 %t317, %t318
  %t322 = load i64, ptr %l23, !tbaa !24
  %t325 = add i64 %t321, %t322
  %t327 = sub i64 %t325, 1
  %t328 = load i64, ptr %l23, !tbaa !24
  %t331 = sdiv i64 %t327, %t328
  store i64 %t331, ptr %l182, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l182, !tbaa !24
  br label %bb45
bb45:
  %t333 = load i64, ptr %l182, !tbaa !24
  store i64 %t333, ptr %l179, !tbaa !24
  br label %bb46
bb46:
  %t334 = load i64, ptr %l179, !tbaa !24
  store i64 %t334, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb47
bb47:
  %t335 = load i64, ptr %l25, !tbaa !24
  %t336 = load i64, ptr %l24, !tbaa !24
  %t339 = icmp slt i64 %t335, %t336
  %t341 = xor i1 %t339, true
  br i1 %t341, label %bb48, label %bb49
bb48:
  br label %bb64
bb49:
  br label %bb50
bb50:
  %t343 = load i64, ptr %l21, !tbaa !24
  %t344 = load i64, ptr %l25, !tbaa !24
  %t345 = load i64, ptr %l23, !tbaa !24
  %t348 = mul i64 %t344, %t345
  %t351 = add i64 %t343, %t348
  store i64 %t351, ptr %l26, !tbaa !24
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = getelementptr %"compiler/mir:verifier", ptr %t353, i32 0, i32 7
  %t356 = load { i64, ptr }, ptr %t355, !tbaa !27
  store { i64, ptr } %t356, ptr %l201, !tbaa !27
  %t357 = load i64, ptr %l5, !tbaa !24
  %t358 = load i64, ptr %l3, !tbaa !24
  %t361 = mul i64 %t357, %t358
  %t362 = load i64, ptr %l26, !tbaa !24
  %t365 = add i64 %t361, %t362
  %t367 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t368 = load ptr, ptr %t367, !tbaa !27
  %t369 = getelementptr i1, ptr %t368, i64 %t365
  %t370 = load i1, ptr %t369, !tbaa !31
  br i1 %t370, label %bb51, label %bb52
bb51:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/mir:verifier", ptr %t372, i32 0, i32 14
  %t375 = load { i64, ptr }, ptr %t374, !tbaa !27
  store { i64, ptr } %t375, ptr %l210, !tbaa !27
  %t376 = load i64, ptr %l26, !tbaa !24
  %t378 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = getelementptr i1, ptr %t379, i64 %t376
  %t381 = load i1, ptr %t380, !tbaa !31
  %t383 = xor i1 %t381, true
  store i1 %t383, ptr %l208, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l208, !tbaa !21
  br label %bb53
bb53:
  %t385 = load i1, ptr %l208, !tbaa !21
  br i1 %t385, label %bb54, label %bb55
bb54:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = getelementptr %"compiler/mir:verifier", ptr %t386, i32 0, i32 7
  %t389 = load { i64, ptr }, ptr %t388, !tbaa !27
  store { i64, ptr } %t389, ptr %l215, !tbaa !27
  %t390 = load i64, ptr %l5, !tbaa !24
  %t391 = load i64, ptr %l3, !tbaa !24
  %t394 = mul i64 %t390, %t391
  %t395 = load i64, ptr %l26, !tbaa !24
  %t398 = add i64 %t394, %t395
  %t400 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr i1, ptr %t401, i64 %t398
  store i1 false, ptr %t402, !tbaa !31
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/mir:verifier", ptr %t403, i32 0, i32 18
  store i1 true, ptr %t405, !tbaa !21
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr %"compiler/mir:verifier", ptr %t406, i32 0, i32 8
  %t409 = load { i64, ptr }, ptr %t408, !tbaa !27
  store { i64, ptr } %t409, ptr %l223, !tbaa !27
  %t410 = load i64, ptr %l5, !tbaa !24
  %t411 = load i64, ptr %l3, !tbaa !24
  %t414 = mul i64 %t410, %t411
  %t415 = load i64, ptr %l26, !tbaa !24
  %t418 = add i64 %t414, %t415
  %t420 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !27
  %t422 = getelementptr i1, ptr %t421, i64 %t418
  %t423 = load i1, ptr %t422, !tbaa !31
  br i1 %t423, label %bb57, label %bb58
bb57:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/mir:verifier", ptr %t425, i32 0, i32 15
  %t428 = load { i64, ptr }, ptr %t427, !tbaa !27
  store { i64, ptr } %t428, ptr %l232, !tbaa !27
  %t429 = load i64, ptr %l26, !tbaa !24
  %t431 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !27
  %t433 = getelementptr i1, ptr %t432, i64 %t429
  %t434 = load i1, ptr %t433, !tbaa !31
  %t436 = xor i1 %t434, true
  store i1 %t436, ptr %l230, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb59
bb59:
  %t438 = load i1, ptr %l230, !tbaa !21
  br i1 %t438, label %bb60, label %bb61
bb60:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/mir:verifier", ptr %t439, i32 0, i32 8
  %t442 = load { i64, ptr }, ptr %t441, !tbaa !27
  store { i64, ptr } %t442, ptr %l237, !tbaa !27
  %t443 = load i64, ptr %l5, !tbaa !24
  %t444 = load i64, ptr %l3, !tbaa !24
  %t447 = mul i64 %t443, %t444
  %t448 = load i64, ptr %l26, !tbaa !24
  %t451 = add i64 %t447, %t448
  %t453 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = getelementptr i1, ptr %t454, i64 %t451
  store i1 false, ptr %t455, !tbaa !31
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/mir:verifier", ptr %t456, i32 0, i32 18
  store i1 true, ptr %t458, !tbaa !21
  br label %bb62
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t459 = load i64, ptr %l25, !tbaa !24
  %t461 = add i64 %t459, 1
  store i64 %t461, ptr %l25, !tbaa !24
  br label %bb47
bb64:
  store i64 0, ptr %l27, !tbaa !24
  %t463 = load i64, ptr %l4, !tbaa !24
  store i64 %t463, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t465 = load i64, ptr %l28, !tbaa !24
  %t466 = load i64, ptr %l27, !tbaa !24
  %t469 = icmp sgt i64 %t465, %t466
  br i1 %t469, label %bb65, label %bb66
bb65:
  %t471 = load i64, ptr %l29, !tbaa !24
  %t473 = icmp sgt i64 %t471, 0
  br i1 %t473, label %bb67, label %bb68
bb66:
  store i64 0, ptr %l250, !tbaa !24
  br label %bb70
bb67:
  %t475 = load i64, ptr %l28, !tbaa !24
  %t476 = load i64, ptr %l27, !tbaa !24
  %t479 = sub i64 %t475, %t476
  %t480 = load i64, ptr %l29, !tbaa !24
  %t483 = add i64 %t479, %t480
  %t485 = sub i64 %t483, 1
  %t486 = load i64, ptr %l29, !tbaa !24
  %t489 = sdiv i64 %t485, %t486
  store i64 %t489, ptr %l253, !tbaa !24
  br label %bb69
bb68:
  store i64 0, ptr %l253, !tbaa !24
  br label %bb69
bb69:
  %t491 = load i64, ptr %l253, !tbaa !24
  store i64 %t491, ptr %l250, !tbaa !24
  br label %bb70
bb70:
  %t492 = load i64, ptr %l250, !tbaa !24
  store i64 %t492, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb71
bb71:
  %t493 = load i64, ptr %l31, !tbaa !24
  %t494 = load i64, ptr %l30, !tbaa !24
  %t497 = icmp slt i64 %t493, %t494
  %t499 = xor i1 %t497, true
  br i1 %t499, label %bb72, label %bb73
bb72:
  br label %bb82
bb73:
  br label %bb74
bb74:
  %t501 = load i64, ptr %l27, !tbaa !24
  %t502 = load i64, ptr %l31, !tbaa !24
  %t503 = load i64, ptr %l29, !tbaa !24
  %t506 = mul i64 %t502, %t503
  %t509 = add i64 %t501, %t506
  store i64 %t509, ptr %l32, !tbaa !24
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t513 = getelementptr %"compiler/mir:verifier", ptr %t511, i32 0, i32 16
  %t514 = load { i64, ptr }, ptr %t513, !tbaa !27
  store { i64, ptr } %t514, ptr %l272, !tbaa !27
  %t515 = load i64, ptr %l32, !tbaa !24
  %t517 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t518 = load ptr, ptr %t517, !tbaa !27
  %t519 = getelementptr i1, ptr %t518, i64 %t515
  %t520 = load i1, ptr %t519, !tbaa !31
  br i1 %t520, label %bb75, label %bb76
bb75:
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t524 = getelementptr %"compiler/mir:verifier", ptr %t522, i32 0, i32 9
  %t525 = load { i64, ptr }, ptr %t524, !tbaa !27
  store { i64, ptr } %t525, ptr %l277, !tbaa !27
  %t526 = load i64, ptr %l5, !tbaa !24
  %t527 = load i64, ptr %l4, !tbaa !24
  %t530 = mul i64 %t526, %t527
  %t531 = load i64, ptr %l32, !tbaa !24
  %t534 = add i64 %t530, %t531
  %t536 = getelementptr { i64, ptr }, ptr %l277, i32 0, i32 1
  %t537 = load ptr, ptr %t536, !tbaa !27
  %t538 = getelementptr i1, ptr %t537, i64 %t534
  %t539 = load i1, ptr %t538, !tbaa !31
  %t541 = xor i1 %t539, true
  store i1 %t541, ptr %l275, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l275, !tbaa !21
  br label %bb77
bb77:
  %t543 = load i1, ptr %l275, !tbaa !21
  br i1 %t543, label %bb78, label %bb79
bb78:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t546 = getelementptr %"compiler/mir:verifier", ptr %t544, i32 0, i32 9
  %t547 = load { i64, ptr }, ptr %t546, !tbaa !27
  store { i64, ptr } %t547, ptr %l286, !tbaa !27
  %t548 = load i64, ptr %l5, !tbaa !24
  %t549 = load i64, ptr %l4, !tbaa !24
  %t552 = mul i64 %t548, %t549
  %t553 = load i64, ptr %l32, !tbaa !24
  %t556 = add i64 %t552, %t553
  %t558 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !27
  %t560 = getelementptr i1, ptr %t559, i64 %t556
  store i1 true, ptr %t560, !tbaa !31
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t563 = getelementptr %"compiler/mir:verifier", ptr %t561, i32 0, i32 18
  store i1 true, ptr %t563, !tbaa !21
  br label %bb80
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t564 = load i64, ptr %l31, !tbaa !24
  %t566 = add i64 %t564, 1
  store i64 %t566, ptr %l31, !tbaa !24
  br label %bb71
bb82:
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t570 = getelementptr %"compiler/mir:verifier", ptr %t568, i32 0, i32 11
  %t571 = load { i64, ptr }, ptr %t570, !tbaa !27
  store { i64, ptr } %t571, ptr %l296, !tbaa !27
  %t572 = load i64, ptr %l5, !tbaa !24
  %t574 = getelementptr { i64, ptr }, ptr %l296, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !27
  %t576 = getelementptr i64, ptr %t575, i64 %t572
  %t577 = load i64, ptr %t576, !tbaa !34
  store i64 %t577, ptr %l298, !tbaa !24
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/mir:verifier", ptr %t578, i32 0, i32 17
  %t582 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t580)
  store i64 %t582, ptr %l301
  br label %bb83
bb83:
  %t583 = load i64, ptr %l298, !tbaa !24
  %t584 = load i64, ptr %l301, !tbaa !24
  %t585 = icmp eq i64 %t583, %t584
  store i1 %t585, ptr %l33, !tbaa !21
  %t587 = load i1, ptr %l33, !tbaa !21
  br i1 %t587, label %bb84, label %bb85
bb84:
  store i64 0, ptr %l34, !tbaa !24
  %t589 = load ptr, ptr %l0, !tbaa !29
  %t591 = getelementptr %"compiler/mir:verifier", ptr %t589, i32 0, i32 17
  %t593 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t591)
  store i64 %t593, ptr %l306
  br label %bb86
bb85:
  br label %bb104
bb86:
  %t594 = load i64, ptr %l306, !tbaa !24
  store i64 %t594, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t595 = load i64, ptr %l35, !tbaa !24
  %t596 = load i64, ptr %l34, !tbaa !24
  %t599 = icmp sgt i64 %t595, %t596
  br i1 %t599, label %bb87, label %bb88
bb87:
  %t601 = load i64, ptr %l36, !tbaa !24
  %t603 = icmp sgt i64 %t601, 0
  br i1 %t603, label %bb89, label %bb90
bb88:
  store i64 0, ptr %l310, !tbaa !24
  br label %bb92
bb89:
  %t605 = load i64, ptr %l35, !tbaa !24
  %t606 = load i64, ptr %l34, !tbaa !24
  %t609 = sub i64 %t605, %t606
  %t610 = load i64, ptr %l36, !tbaa !24
  %t613 = add i64 %t609, %t610
  %t615 = sub i64 %t613, 1
  %t616 = load i64, ptr %l36, !tbaa !24
  %t619 = sdiv i64 %t615, %t616
  store i64 %t619, ptr %l313, !tbaa !24
  br label %bb91
bb90:
  store i64 0, ptr %l313, !tbaa !24
  br label %bb91
bb91:
  %t621 = load i64, ptr %l313, !tbaa !24
  store i64 %t621, ptr %l310, !tbaa !24
  br label %bb92
bb92:
  %t622 = load i64, ptr %l310, !tbaa !24
  store i64 %t622, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb93
bb93:
  %t623 = load i64, ptr %l38, !tbaa !24
  %t624 = load i64, ptr %l37, !tbaa !24
  %t627 = icmp slt i64 %t623, %t624
  %t629 = xor i1 %t627, true
  br i1 %t629, label %bb94, label %bb95
bb94:
  br label %bb103
bb95:
  br label %bb96
bb96:
  %t631 = load i64, ptr %l34, !tbaa !24
  %t632 = load i64, ptr %l38, !tbaa !24
  %t633 = load i64, ptr %l36, !tbaa !24
  %t636 = mul i64 %t632, %t633
  %t639 = add i64 %t631, %t636
  store i64 %t639, ptr %l39, !tbaa !24
  %t641 = load i1, ptr %l33, !tbaa !21
  br i1 %t641, label %bb97, label %bb98
bb97:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t645 = getelementptr %"compiler/mir:verifier", ptr %t643, i32 0, i32 12
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t648 = getelementptr %"compiler/mir:verifier", ptr %t646, i32 0, i32 10
  %t649 = load { i64, ptr }, ptr %t648, !tbaa !27
  store { i64, ptr } %t649, ptr %l336, !tbaa !27
  %t650 = load i64, ptr %l5, !tbaa !24
  %t652 = getelementptr { i64, ptr }, ptr %l336, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = getelementptr i64, ptr %t653, i64 %t650
  %t655 = load i64, ptr %t654, !tbaa !34
  %t656 = load i64, ptr %l39, !tbaa !24
  %t659 = add i64 %t655, %t656
  %t662 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t645, i64 %t659)
  store i32 %t662, ptr %l341
  br label %bb99
bb98:
  store i1 false, ptr %l332, !tbaa !21
  br label %bb101
bb99:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t665 = getelementptr %"compiler/mir:verifier", ptr %t663, i32 0, i32 17
  %t666 = load i64, ptr %l39, !tbaa !24
  %t669 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t665, i64 %t666)
  store i32 %t669, ptr %l345
  br label %bb100
bb100:
  %t670 = load i32, ptr %l341, !tbaa !23
  %t671 = load i32, ptr %l345, !tbaa !23
  %t672 = icmp eq i32 %t670, %t671
  store i1 %t672, ptr %l332, !tbaa !21
  br label %bb101
bb101:
  %t674 = load i1, ptr %l332, !tbaa !21
  store i1 %t674, ptr %l33, !tbaa !21
  br label %bb102
bb102:
  %t675 = load i64, ptr %l38, !tbaa !24
  %t677 = add i64 %t675, 1
  store i64 %t677, ptr %l38, !tbaa !24
  br label %bb93
bb103:
  br label %bb104
bb104:
  %t679 = load i1, ptr %l33, !tbaa !21
  %t681 = xor i1 %t679, true
  br i1 %t681, label %bb105, label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s24
  %t683 = load ptr, ptr %l0, !tbaa !29
  store ptr %t683, ptr %l351, !tbaa !29
  %t684 = load i32, ptr %l1, !tbaa !23
  store i32 %t684, ptr %l352, !tbaa !23
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t687 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackText(ptr %v0, ptr %s24, ptr %t685)
  store { i64, ptr } %t687, ptr %l354
  br label %bb107
bb106:
  br label %bb110
bb107:
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t689 = load i32, ptr %l1, !tbaa !23
  %t692 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackOf(ptr %v0, ptr %s24, ptr %t688, i32 %t689)
  store { i64, ptr } %t692, ptr %l357
  br label %bb108
bb108:
  %t693 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t694 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t695 = load i32, ptr %l352, !tbaa !23
  %t696 = sext i32 %t695 to i64
  %t697 = call i64 @__olang_fmt_i64(ptr null, i64 %t696)
  %t698 = add i64 %t694, %t697
  %t699 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t700 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t701 = add i64 %t698, %t700
  %t702 = load { i64, ptr }, ptr %l354, !tbaa !27
  %t703 = extractvalue { i64, ptr } %t702, 1
  %t704 = extractvalue { i64, ptr } %t702, 0
  %t705 = add i64 %t701, %t704
  %t706 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t707 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t708 = add i64 %t705, %t707
  %t709 = load { i64, ptr }, ptr %l357, !tbaa !27
  %t710 = extractvalue { i64, ptr } %t709, 1
  %t711 = extractvalue { i64, ptr } %t709, 0
  %t712 = add i64 %t708, %t711
  %t713 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t712)
  call void @olang_textcopy(ptr %t713, ptr %t693, i64 %t694)
  %t714 = getelementptr i8, ptr %t713, i64 %t694
  %t715 = call i64 @__olang_fmt_i64(ptr %t714, i64 %t696)
  %t716 = getelementptr i8, ptr %t714, i64 %t697
  call void @olang_textcopy(ptr %t716, ptr %t699, i64 %t700)
  %t717 = getelementptr i8, ptr %t716, i64 %t700
  call void @olang_textcopy(ptr %t717, ptr %t703, i64 %t704)
  %t718 = getelementptr i8, ptr %t717, i64 %t704
  call void @olang_textcopy(ptr %t718, ptr %t706, i64 %t707)
  %t719 = getelementptr i8, ptr %t718, i64 %t707
  call void @olang_textcopy(ptr %t719, ptr %t710, i64 %t711)
  %t720 = insertvalue { i64, ptr } undef, i64 %t712, 0
  %t721 = insertvalue { i64, ptr } %t720, ptr %t713, 1
  %t723 = extractvalue { i64, ptr } %t721, 0
  %t724 = extractvalue { i64, ptr } %t721, 1
  %t725 = mul i64 %t723, 1
  %t726 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t725)
  call void @llvm.memcpy.p0.p0.i64(ptr %t726, ptr %t724, i64 %t725, i1 false)
  %t727 = insertvalue { i64, ptr } undef, i64 %t723, 0
  %t728 = insertvalue { i64, ptr } %t727, ptr %t726, 1
  %t729 = load ptr, ptr %l351, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s24, ptr %t729, { i64, ptr } %t728)
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s24)
  br label %bb110
bb110:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l61 = alloca { i64, [4 x i64] }
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l12, !tbaa !29
  %t6 = load ptr, ptr %l12, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v1, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t10, ptr %s0, ptr %t11, i32 %a2)
  store { i64, ptr } %t13, ptr %l15
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t18 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = icmp ne i64 %t17, %t21
  br i1 %t24, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l21, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t31 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t27, i32 %a1)
  store { i64, ptr } %t31, ptr %l24
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t37 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t39 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = add i64 %t38, %t41
  %t43 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t47 = call i64 @__olang_fmt_i64(ptr null, i64 %t34)
  %t48 = add i64 %t45, %t47
  %t49 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = sext i32 %t36 to i64
  %t54 = call i64 @__olang_fmt_i64(ptr null, i64 %t53)
  %t55 = add i64 %t51, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t37, i64 %t38)
  %t57 = getelementptr i8, ptr %t56, i64 %t38
  call void @olang_textcopy(ptr %t57, ptr %t40, i64 %t41)
  %t58 = getelementptr i8, ptr %t57, i64 %t41
  call void @olang_textcopy(ptr %t58, ptr %t43, i64 %t44)
  %t59 = getelementptr i8, ptr %t58, i64 %t44
  %t60 = call i64 @__olang_fmt_i64(ptr %t59, i64 %t34)
  %t61 = getelementptr i8, ptr %t59, i64 %t47
  call void @olang_textcopy(ptr %t61, ptr %t49, i64 %t50)
  %t62 = getelementptr i8, ptr %t61, i64 %t50
  %t63 = call i64 @__olang_fmt_i64(ptr %t62, i64 %t53)
  %t64 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t56, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = extractvalue { i64, ptr } %t65, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t73, { i64, ptr } %t72)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  store i64 0, ptr %l5, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = load i64, ptr %l5, !tbaa !24
  %t83 = icmp sgt i64 %t79, %t80
  br i1 %t83, label %bb7, label %bb8
bb7:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb12
bb9:
  %t89 = load i64, ptr %l6, !tbaa !24
  %t90 = load i64, ptr %l5, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t99 = sub i64 %t97, 1
  %t100 = load i64, ptr %l7, !tbaa !24
  %t103 = sdiv i64 %t99, %t100
  store i64 %t103, ptr %l38, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb11
bb11:
  %t105 = load i64, ptr %l38, !tbaa !24
  store i64 %t105, ptr %l35, !tbaa !24
  br label %bb12
bb12:
  %t106 = load i64, ptr %l35, !tbaa !24
  store i64 %t106, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l8, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb15:
  br label %bb16
bb16:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t116 = load i64, ptr %l9, !tbaa !24
  %t117 = load i64, ptr %l7, !tbaa !24
  %t120 = mul i64 %t116, %t117
  %t123 = add i64 %t115, %t120
  store i64 %t123, ptr %l10, !tbaa !24
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l56, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l57, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/mir:Range", ptr %l3
  %t129 = load i64, ptr %l10, !tbaa !24
  %t133 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v2, ptr %t127, %"compiler/mir:Range" %t128, i64 %t129)
  store { i64, [4 x i64] } %t133, ptr %l61
  br label %bb17
bb17:
  %t134 = load ptr, ptr %l57, !tbaa !29
  %t135 = load { i64, [4 x i64] }, ptr %l61
  %t136 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v1, ptr %t134, { i64, [4 x i64] } %t135)
  store i32 %t136, ptr %l62
  br label %bb18
bb18:
  %t137 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t137, ptr %l63, !tbaa !27
  %t138 = load i64, ptr %l10, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i32, ptr %t141, i64 %t138
  %t143 = load i32, ptr %t142, !tbaa !33
  %t144 = load i64, ptr %l10, !tbaa !24
  %t145 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t148 = call i64 @__olang_fmt_i64(ptr null, i64 %t144)
  %t149 = add i64 %t146, %t148
  %t150 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t149)
  call void @olang_textcopy(ptr %t150, ptr %t145, i64 %t146)
  %t151 = getelementptr i8, ptr %t150, i64 %t146
  %t152 = call i64 @__olang_fmt_i64(ptr %t151, i64 %t144)
  %t153 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t150, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = extractvalue { i64, ptr } %t154, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t162 = load ptr, ptr %l56, !tbaa !29
  %t163 = load i32, ptr %l62, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s4, ptr %v1, ptr %t162, i32 %t163, i32 %t143, { i64, ptr } %t161)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  %t166 = load i64, ptr %l9, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l9, !tbaa !24
  br label %bb13
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2epointerLike(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i1
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/mir:verifier", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l6, !tbaa !29
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = call ptr @__olang_scope_or(ptr %v1, ptr %t10)
  %t12 = ptrtoint ptr %t11 to i64
  %t14 = inttoptr i64 %t12 to ptr
  %t15 = load ptr, ptr %l6, !tbaa !29
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t14, ptr %t15, i32 %a1)
  store i32 %t17, ptr %l9
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t19 = call ptr @__olang_scope_or(ptr %v1, ptr %t18)
  %t20 = ptrtoint ptr %t19 to i64
  %t22 = inttoptr i64 %t20 to ptr
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load i32, ptr %l9, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t22, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l11
  br label %bb2
bb2:
  %t26 = load i32, ptr %l11, !range !{i32 0, i32 33}
  store i32 %t26, ptr %l2
  %t27 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t29 = trunc i64 20 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  %t32 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t34 = trunc i64 19 to i32
  %t35 = icmp eq i32 %t32, %t34
  store i1 %t35, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t37 = load i1, ptr %l14, !tbaa !21
  br i1 %t37, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t40 = trunc i64 15 to i32
  %t41 = icmp eq i32 %t38, %t40
  store i1 %t41, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t43 = load i1, ptr %l17, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefs(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/mir:Range"
  %l6 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store %"compiler/mir:Range" %a1, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/mir:verifier", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 12
  store ptr %t8, ptr %l6, !tbaa !29
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %t13, ptr %t14)
  store i64 %t15, ptr %l8
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load %"compiler/mir:Range", ptr %l3
  %t18 = load i64, ptr %l8, !tbaa !24
  %t19 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s0, ptr %t16, %"compiler/mir:Range" %t17, i64 %t18, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t19, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esliceType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, { i64, [4 x i64] } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca i1
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i32
  %l33 = alloca i32
  %l38 = alloca i1
  %l42 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca i32
  %l50 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l55 = alloca i32
  %l57 = alloca i32
  %l59 = alloca i1
  %l61 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca ptr
  %l87 = alloca i32
  %l89 = alloca i32
  %l91 = alloca i1
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load i32, ptr %l16, !tbaa !23
  store i32 %t11, ptr %l6, !tbaa !23
  %t12 = load ptr, ptr %l5, !tbaa !29
  store ptr %t12, ptr %l17, !tbaa !29
  %t13 = load ptr, ptr %l5, !tbaa !29
  store ptr %t13, ptr %l18, !tbaa !29
  %t14 = load i32, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l18, !tbaa !29
  %t16 = call ptr @__olang_scope_or(ptr %v1, ptr %t15)
  %t17 = ptrtoint ptr %t16 to i64
  %t19 = inttoptr i64 %t17 to ptr
  %t20 = load ptr, ptr %l18, !tbaa !29
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t19, ptr %t20, i32 %t14)
  store i32 %t22, ptr %l21
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = call ptr @__olang_scope_or(ptr %v1, ptr %t23)
  %t25 = ptrtoint ptr %t24 to i64
  %t27 = inttoptr i64 %t25 to ptr
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = load i32, ptr %l21, !tbaa !23
  %t30 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t27, ptr %t28, i32 %t29)
  store i1 %t30, ptr %l23
  br label %bb3
bb3:
  %t31 = load i1, ptr %l23, !tbaa !21
  br i1 %t31, label %bb4, label %bb5
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l25, !tbaa !29
  %t33 = load ptr, ptr %l5, !tbaa !29
  store ptr %t33, ptr %l26, !tbaa !29
  %t34 = load ptr, ptr %l5, !tbaa !29
  store ptr %t34, ptr %l27, !tbaa !29
  %t35 = load i32, ptr %l4, !tbaa !23
  %t36 = load ptr, ptr %l27, !tbaa !29
  %t37 = call ptr @__olang_scope_or(ptr %v1, ptr %t36)
  %t38 = ptrtoint ptr %t37 to i64
  %t40 = inttoptr i64 %t38 to ptr
  %t41 = load ptr, ptr %l27, !tbaa !29
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t40, ptr %t41, i32 %t35)
  store i32 %t43, ptr %l30
  br label %bb6
bb5:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t44, ptr %l24, !tbaa !23
  br label %bb9
bb6:
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = call ptr @__olang_scope_or(ptr %v1, ptr %t46)
  %t48 = ptrtoint ptr %t47 to i64
  %t50 = inttoptr i64 %t48 to ptr
  %t51 = load ptr, ptr %l26, !tbaa !29
  %t52 = load i32, ptr %l30, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t50, ptr %t51, i32 %t52)
  store i32 %t53, ptr %l32
  br label %bb7
bb7:
  %t54 = load ptr, ptr %l25, !tbaa !29
  %t55 = load i32, ptr %l32, !tbaa !23
  %t56 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %t54, i32 %t55)
  store i32 %t56, ptr %l33
  br label %bb8
bb8:
  %t57 = load i32, ptr %l33, !tbaa !23
  store i32 %t57, ptr %l24, !tbaa !23
  br label %bb9
bb9:
  %t58 = load i32, ptr %l24, !tbaa !23
  store i32 %t58, ptr %l7, !tbaa !23
  %t59 = load i32, ptr %l6, !tbaa !23
  %t60 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t63 = icmp eq i32 %t59, %t60
  br i1 %t63, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb12
bb11:
  %t65 = load i32, ptr %l7, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t69 = icmp eq i32 %t65, %t66
  store i1 %t69, ptr %l38, !tbaa !21
  br label %bb12
bb12:
  %t71 = load i1, ptr %l38, !tbaa !21
  br i1 %t71, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb20
bb14:
  %t72 = load ptr, ptr %l5, !tbaa !29
  store ptr %t72, ptr %l43, !tbaa !29
  %t73 = load ptr, ptr %l5, !tbaa !29
  store ptr %t73, ptr %l44, !tbaa !29
  %t74 = load ptr, ptr %l5, !tbaa !29
  store ptr %t74, ptr %l45, !tbaa !29
  %t75 = load i32, ptr %l6, !tbaa !23
  %t76 = load ptr, ptr %l45, !tbaa !29
  %t77 = call ptr @__olang_scope_or(ptr %v1, ptr %t76)
  %t78 = ptrtoint ptr %t77 to i64
  %t80 = inttoptr i64 %t78 to ptr
  %t81 = load ptr, ptr %l45, !tbaa !29
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t80, ptr %t81, i32 %t75)
  store i32 %t83, ptr %l48
  br label %bb15
bb15:
  %t84 = load ptr, ptr %l44, !tbaa !29
  %t85 = call ptr @__olang_scope_or(ptr %v1, ptr %t84)
  %t86 = ptrtoint ptr %t85 to i64
  %t88 = inttoptr i64 %t86 to ptr
  %t89 = load ptr, ptr %l44, !tbaa !29
  %t90 = load i32, ptr %l48, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t88, ptr %t89, i32 %t90)
  store i32 %t91, ptr %l50
  br label %bb16
bb16:
  %t92 = load ptr, ptr %l5, !tbaa !29
  store ptr %t92, ptr %l51, !tbaa !29
  %t93 = load ptr, ptr %l5, !tbaa !29
  store ptr %t93, ptr %l52, !tbaa !29
  %t94 = load i32, ptr %l7, !tbaa !23
  %t95 = load ptr, ptr %l52, !tbaa !29
  %t96 = call ptr @__olang_scope_or(ptr %v1, ptr %t95)
  %t97 = ptrtoint ptr %t96 to i64
  %t99 = inttoptr i64 %t97 to ptr
  %t100 = load ptr, ptr %l52, !tbaa !29
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t99, ptr %t100, i32 %t94)
  store i32 %t102, ptr %l55
  br label %bb17
bb17:
  %t103 = load ptr, ptr %l51, !tbaa !29
  %t104 = call ptr @__olang_scope_or(ptr %v1, ptr %t103)
  %t105 = ptrtoint ptr %t104 to i64
  %t107 = inttoptr i64 %t105 to ptr
  %t108 = load ptr, ptr %l51, !tbaa !29
  %t109 = load i32, ptr %l55, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t107, ptr %t108, i32 %t109)
  store i32 %t110, ptr %l57
  br label %bb18
bb18:
  %t111 = load ptr, ptr %l43, !tbaa !29
  %t112 = call ptr @__olang_scope_or(ptr %v1, ptr %t111)
  %t113 = ptrtoint ptr %t112 to i64
  %t115 = inttoptr i64 %t113 to ptr
  %t116 = load ptr, ptr %l43, !tbaa !29
  %t117 = load i32, ptr %l50, !tbaa !23
  %t118 = load i32, ptr %l57, !tbaa !23
  %t119 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t115, ptr %t116, i32 %t117, i32 %t118)
  store i1 %t119, ptr %l59
  br label %bb19
bb19:
  %t120 = load i1, ptr %l59, !tbaa !21
  %t121 = xor i1 %t120, true
  store i1 %t121, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  %t123 = load i1, ptr %l42, !tbaa !21
  br i1 %t123, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s1
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l61, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i32, ptr %l4, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t125, i32 %t126)
  store { i64, ptr } %t129, ptr %l64
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l1, !tbaa !23
  %t134 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t130, i32 %t131)
  store { i64, ptr } %t134, ptr %l67
  br label %bb24
bb24:
  %t135 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t137 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = add i64 %t136, %t139
  %t141 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t144 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = add i64 %t143, %t146
  %t148 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t147)
  call void @olang_textcopy(ptr %t148, ptr %t135, i64 %t136)
  %t149 = getelementptr i8, ptr %t148, i64 %t136
  call void @olang_textcopy(ptr %t149, ptr %t138, i64 %t139)
  %t150 = getelementptr i8, ptr %t149, i64 %t139
  call void @olang_textcopy(ptr %t150, ptr %t141, i64 %t142)
  %t151 = getelementptr i8, ptr %t150, i64 %t142
  call void @olang_textcopy(ptr %t151, ptr %t145, i64 %t146)
  %t152 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t148, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t161 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t161, { i64, ptr } %t160)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s1)
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s3
  %t166 = insertvalue [2 x { i64, [4 x i64] }] undef, { i64, [4 x i64] } %a2, 0
  %t168 = insertvalue [2 x { i64, [4 x i64] }] %t166, { i64, [4 x i64] } %a3, 1
  %t170 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 80, i64 8)
  store [2 x { i64, [4 x i64] }] %t168, ptr %t170
  store ptr %t170, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t172 = load ptr, ptr %l8
  store i64 2, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  %t175 = load i64, ptr %l9, !tbaa !24
  %t176 = load i64, ptr %l10, !tbaa !24
  %t179 = icmp slt i64 %t175, %t176
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb28, label %bb29
bb28:
  br label %bb39
bb29:
  br label %bb30
bb30:
  %t183 = load ptr, ptr %l8
  %t184 = load i64, ptr %l9, !tbaa !24
  %t187 = getelementptr [2 x { i64, [4 x i64] }], ptr %t183, i64 0, i64 %t184
  %t188 = load { i64, [4 x i64] }, ptr %t187
  %t190 = load ptr, ptr %l5, !tbaa !29
  store ptr %t190, ptr %l83, !tbaa !29
  %t191 = load ptr, ptr %l5, !tbaa !29
  store ptr %t191, ptr %l84, !tbaa !29
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t196 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v1, ptr %t192, { i64, [4 x i64] } %t188)
  store i32 %t196, ptr %l87
  br label %bb31
bb31:
  %t197 = load ptr, ptr %l84, !tbaa !29
  %t198 = call ptr @__olang_scope_or(ptr %v1, ptr %t197)
  %t199 = ptrtoint ptr %t198 to i64
  %t201 = inttoptr i64 %t199 to ptr
  %t202 = load ptr, ptr %l84, !tbaa !29
  %t203 = load i32, ptr %l87, !tbaa !23
  %t204 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t201, ptr %t202, i32 %t203)
  store i32 %t204, ptr %l89
  br label %bb32
bb32:
  %t205 = load ptr, ptr %l83, !tbaa !29
  %t206 = call ptr @__olang_scope_or(ptr %v1, ptr %t205)
  %t207 = ptrtoint ptr %t206 to i64
  %t209 = inttoptr i64 %t207 to ptr
  %t210 = load ptr, ptr %l83, !tbaa !29
  %t211 = load i32, ptr %l89, !tbaa !23
  %t212 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t209, ptr %t210, i32 %t211)
  store i1 %t212, ptr %l91
  br label %bb33
bb33:
  %t213 = load i1, ptr %l91, !tbaa !21
  %t214 = xor i1 %t213, true
  br i1 %t214, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s5
  %t216 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s5, ptr %t216, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t218 = load i64, ptr %l9, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l9, !tbaa !24
  br label %bb27
bb39:
  call void @__olang_scope_close(ptr %s3)
  %t222 = load i32, ptr %l4, !tbaa !23
  store i32 %t222, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtFlow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca { i64, [15 x i64] }
  %l5 = alloca i32
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, [1 x i64] }
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca %"compiler/mir:Lvalue"
  %l15 = alloca i32
  %l16 = alloca %"compiler/mir:Lvalue"
  %l17 = alloca { i64, [1 x i64] }
  %l18 = alloca { i64, [4 x i64] }
  %l19 = alloca %"compiler/mir:Lvalue"
  %l20 = alloca %"compiler/mir:Lvalue"
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/mir:Task"
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i32
  %l43 = alloca { i64, [1 x i64] }
  %l44 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i32
  %l48 = alloca i32
  %l50 = alloca { i64, [4 x i64] }
  %l51 = alloca { i64, [4 x i64] }
  %l52 = alloca { i64, [4 x i64] }
  %l53 = alloca i32
  %l54 = alloca i32
  %l57 = alloca ptr
  %l58 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l76 = alloca ptr
  %l80 = alloca %"compiler/mir:Local"
  %l88 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l96 = alloca i1
  %l102 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l108 = alloca i64
  %l110 = alloca ptr
  %l114 = alloca %"compiler/mir:Local"
  %l117 = alloca ptr
  %l118 = alloca i1
  %l125 = alloca i1
  %l132 = alloca i64
  %l134 = alloca i32
  %l136 = alloca ptr
  %l139 = alloca i64
  %l141 = alloca i32
  %l144 = alloca ptr
  %l148 = alloca %"compiler/mir:ScopeInfo"
  %l153 = alloca ptr
  %l154 = alloca i32
  %l157 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l170 = alloca ptr
  %l171 = alloca i1
  %l179 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l188 = alloca i1
  %l199 = alloca ptr
  %l200 = alloca i1
  %l207 = alloca ptr
  %l208 = alloca i1
  %l219 = alloca ptr
  %l220 = alloca i1
  %l231 = alloca ptr
  %l232 = alloca i1
  %l247 = alloca ptr
  %l248 = alloca i1
  %l257 = alloca i1
  %l264 = alloca ptr
  %l268 = alloca %"compiler/mir:Task"
  %l273 = alloca i32
  %l276 = alloca i32
  %l294 = alloca ptr
  %l296 = alloca ptr
  %l303 = alloca %"compiler/mir:Lvalue"
  %l314 = alloca i32
  %l317 = alloca i32
  %l335 = alloca ptr
  %l337 = alloca ptr
  %l344 = alloca { i64, [1 x i64] }
  %l351 = alloca i32
  %l354 = alloca i32
  %l373 = alloca ptr
  %l380 = alloca { i64, [1 x i64] }
  %l392 = alloca i32
  %l395 = alloca i32
  %l413 = alloca ptr
  %l415 = alloca ptr
  %l422 = alloca %"compiler/mir:TaskClause"
  %l427 = alloca { i64, ptr }
  %l430 = alloca ptr
  %l431 = alloca i1
  %l434 = alloca ptr
  %l435 = alloca i1
  %l438 = alloca ptr
  %l439 = alloca i1
  %l446 = alloca ptr
  %l447 = alloca i1
  %l458 = alloca ptr
  %l459 = alloca i1
  %l468 = alloca i1
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s38 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t7 = load ptr, ptr %l57, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l57, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 16}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l58, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l58, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [21 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t17, i32 0, i32 1
  %t19 = load %"compiler/mir:Lvalue", ptr %t18
  store %"compiler/mir:Lvalue" %t19, ptr %l3
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [21 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t23, i32 0, i32 2
  %t25 = load { i64, [15 x i64] }, ptr %t24
  store { i64, [15 x i64] } %t25, ptr %l4
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, [15 x i64] }, ptr %l4
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueFlow(ptr %v0, ptr %v2, ptr %t27, { i64, [15 x i64] } %t28)
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/mir:Lvalue", ptr %l3
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estores(ptr %v0, ptr %v2, ptr %t31, %"compiler/mir:Lvalue" %t32)
  br label %bb7
bb7:
  br label %bb216
bb8:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t36 = load ptr, ptr %l69, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load ptr, ptr %l69, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 16}
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l70, !tbaa !21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l70, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [21 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32 }, ptr %t46, i32 0, i32 1
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l5, !tbaa !23
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/mir:Fn", ptr %t50, i32 0, i32 7
  store ptr %t52, ptr %l76, !tbaa !29
  %t53 = load i32, ptr %l5, !tbaa !23
  %t55 = sext i32 %t53 to i64
  %t56 = load ptr, ptr %l76, !tbaa !29
  %t57 = call ptr @__olang_scope_or(ptr %v2, ptr %t56)
  %t58 = ptrtoint ptr %t57 to i64
  %t60 = inttoptr i64 %t58 to ptr
  %t61 = load ptr, ptr %l76, !tbaa !29
  %t63 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t60, ptr %t61, i64 %t55)
  store %"compiler/mir:Local" %t63, ptr %l80
  br label %bb14
bb14:
  %t64 = getelementptr %"compiler/mir:Local", ptr %l80, i32 0, i32 4
  %t65 = load { i64, [1 x i64] }, ptr %t64
  store { i64, [1 x i64] } %t65, ptr %l6
  %t67 = load { i64, [1 x i64] }, ptr %l6
  %t69 = extractvalue { i64, [1 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 3
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb15, label %bb16
bb15:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, [1 x i64] }, ptr %l6
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v2, ptr %t74, { i64, [1 x i64] } %t75)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/mir:verifier", ptr %t78, i32 0, i32 15
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l88, !tbaa !27
  %t82 = load i32, ptr %l5, !tbaa !23
  %t84 = sext i32 %t82 to i64
  %t86 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i1, ptr %t87, i64 %t84
  store i1 true, ptr %t88, !tbaa !31
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/mir:verifier", ptr %t89, i32 0, i32 14
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  store { i64, ptr } %t92, ptr %l92, !tbaa !27
  %t93 = load i32, ptr %l5, !tbaa !23
  %t95 = sext i32 %t93 to i64
  %t97 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i1, ptr %t98, i64 %t95
  store i1 false, ptr %t99, !tbaa !31
  br label %bb216
bb19:
  %t100 = load ptr, ptr %l1, !tbaa !29
  store ptr %t100, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t101 = load ptr, ptr %l95, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load ptr, ptr %l95, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 16}
  %t107 = icmp eq i64 %t105, 2
  store i1 %t107, ptr %l96, !tbaa !21
  br label %bb21
bb21:
  %t108 = load i1, ptr %l96, !tbaa !21
  br i1 %t108, label %bb22, label %bb23
bb22:
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr { i64, [21 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32 }, ptr %t111, i32 0, i32 1
  %t113 = load i32, ptr %t112
  store i32 %t113, ptr %l7, !tbaa !23
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/mir:verifier", ptr %t115, i32 0, i32 14
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l102, !tbaa !27
  %t119 = load i32, ptr %l7, !tbaa !23
  %t121 = sext i32 %t119 to i64
  %t123 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr i1, ptr %t124, i64 %t121
  store i1 false, ptr %t125, !tbaa !31
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/mir:verifier", ptr %t126, i32 0, i32 15
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l106, !tbaa !27
  %t130 = load i32, ptr %l7, !tbaa !23
  %t132 = sext i32 %t130 to i64
  store i64 %t132, ptr %l108, !tbaa !24
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t135 = getelementptr %"compiler/mir:Fn", ptr %t133, i32 0, i32 7
  store ptr %t135, ptr %l110, !tbaa !29
  %t136 = load i32, ptr %l7, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t139 = load ptr, ptr %l110, !tbaa !29
  %t140 = call ptr @__olang_scope_or(ptr %v2, ptr %t139)
  %t141 = ptrtoint ptr %t140 to i64
  %t143 = inttoptr i64 %t141 to ptr
  %t144 = load ptr, ptr %l110, !tbaa !29
  %t146 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t143, ptr %t144, i64 %t138)
  store %"compiler/mir:Local" %t146, ptr %l114
  br label %bb25
bb25:
  %t147 = getelementptr %"compiler/mir:Local", ptr %l114, i32 0, i32 4
  %t148 = load { i64, [1 x i64] }, ptr %t147
  %t150 = extractvalue { i64, [1 x i64] } %t148, 0
  %t151 = icmp eq i64 %t150, 3
  %t153 = load i64, ptr %l108, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i1, ptr %t155, i64 %t153
  store i1 %t151, ptr %t156, !tbaa !31
  br label %bb216
bb26:
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l117, !tbaa !29
  store i1 false, ptr %l118, !tbaa !21
  %t158 = load ptr, ptr %l117, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb27, label %bb28
bb27:
  %t161 = load ptr, ptr %l117, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 16}
  %t164 = icmp eq i64 %t162, 3
  store i1 %t164, ptr %l118, !tbaa !21
  br label %bb28
bb28:
  %t165 = load i1, ptr %l118, !tbaa !21
  br i1 %t165, label %bb29, label %bb30
bb29:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr { i64, [21 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32 }, ptr %t168, i32 0, i32 1
  %t170 = load i32, ptr %t169
  store i32 %t170, ptr %l8, !tbaa !23
  br label %bb31
bb30:
  br label %bb51
bb31:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l8, !tbaa !23
  %t176 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %t172, i32 %t173)
  store i1 %t176, ptr %l125
  br label %bb32
bb32:
  %t177 = load i1, ptr %l125, !tbaa !21
  br i1 %t177, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l8, !tbaa !23
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t183 = sext i32 %t179 to i64
  %t184 = call i64 @__olang_fmt_i64(ptr null, i64 %t183)
  %t185 = add i64 %t181, %t184
  %t186 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t189 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t188)
  call void @olang_textcopy(ptr %t189, ptr %t180, i64 %t181)
  %t190 = getelementptr i8, ptr %t189, i64 %t181
  %t191 = call i64 @__olang_fmt_i64(ptr %t190, i64 %t183)
  %t192 = getelementptr i8, ptr %t190, i64 %t184
  call void @olang_textcopy(ptr %t192, ptr %t186, i64 %t187)
  %t193 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t189, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = extractvalue { i64, ptr } %t194, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s6, ptr %t178, { i64, ptr } %t201)
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb36:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/mir:verifier", ptr %t204, i32 0, i32 17
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t206)
  store i64 %t208, ptr %l132
  br label %bb37
bb37:
  %t209 = load i64, ptr %l132, !tbaa !24
  %t210 = icmp sgt i64 %t209, 0
  br i1 %t210, label %bb38, label %bb39
bb38:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/mir:verifier", ptr %t212, i32 0, i32 17
  store ptr %t214, ptr %l136, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/mir:verifier", ptr %t215, i32 0, i32 17
  %t219 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t217)
  store i64 %t219, ptr %l139
  br label %bb40
bb39:
  %t220 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  store i32 %t220, ptr %l134, !tbaa !23
  br label %bb42
bb40:
  %t222 = load i64, ptr %l139, !tbaa !24
  %t223 = sub i64 %t222, 1
  %t224 = load ptr, ptr %l136, !tbaa !29
  %t226 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t224, i64 %t223)
  store i32 %t226, ptr %l141
  br label %bb41
bb41:
  %t227 = load i32, ptr %l141, !tbaa !23
  store i32 %t227, ptr %l134, !tbaa !23
  br label %bb42
bb42:
  %t228 = load i32, ptr %l134, !tbaa !23
  store i32 %t228, ptr %l9, !tbaa !23
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = getelementptr %"compiler/mir:Fn", ptr %t229, i32 0, i32 8
  store ptr %t231, ptr %l144, !tbaa !29
  %t232 = load i32, ptr %l8, !tbaa !23
  %t234 = sext i32 %t232 to i64
  %t235 = load ptr, ptr %l144, !tbaa !29
  %t236 = call ptr @__olang_scope_or(ptr %v2, ptr %t235)
  %t237 = ptrtoint ptr %t236 to i64
  %t239 = inttoptr i64 %t237 to ptr
  %t240 = load ptr, ptr %l144, !tbaa !29
  %t242 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t239, ptr %t240, i64 %t234)
  store %"compiler/mir:ScopeInfo" %t242, ptr %l148
  br label %bb43
bb43:
  %t243 = getelementptr %"compiler/mir:ScopeInfo", ptr %l148, i32 0, i32 1
  %t244 = load i32, ptr %t243, !tbaa !23
  store i32 %t244, ptr %l10, !tbaa !23
  %t246 = load i32, ptr %l10, !tbaa !23
  %t247 = load i32, ptr %l9, !tbaa !23
  %t250 = icmp ne i32 %t246, %t247
  br i1 %t250, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l153, !tbaa !29
  %t253 = load i32, ptr %l8, !tbaa !23
  store i32 %t253, ptr %l154, !tbaa !23
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i32, ptr %l9, !tbaa !23
  %t258 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ename(ptr %v0, ptr %s8, ptr %t254, i32 %t255)
  store { i64, ptr } %t258, ptr %l157
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i32, ptr %l10, !tbaa !23
  %t263 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ename(ptr %v0, ptr %s8, ptr %t259, i32 %t260)
  store { i64, ptr } %t263, ptr %l160
  br label %bb47
bb47:
  %t264 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t266 = load i32, ptr %l154, !tbaa !23
  %t267 = sext i32 %t266 to i64
  %t268 = call i64 @__olang_fmt_i64(ptr null, i64 %t267)
  %t269 = add i64 %t265, %t268
  %t270 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t273 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 1
  %t275 = extractvalue { i64, ptr } %t273, 0
  %t276 = add i64 %t272, %t275
  %t277 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t279 = add i64 %t276, %t278
  %t280 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = add i64 %t279, %t282
  %t284 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t283)
  call void @olang_textcopy(ptr %t284, ptr %t264, i64 %t265)
  %t285 = getelementptr i8, ptr %t284, i64 %t265
  %t286 = call i64 @__olang_fmt_i64(ptr %t285, i64 %t267)
  %t287 = getelementptr i8, ptr %t285, i64 %t268
  call void @olang_textcopy(ptr %t287, ptr %t270, i64 %t271)
  %t288 = getelementptr i8, ptr %t287, i64 %t271
  call void @olang_textcopy(ptr %t288, ptr %t274, i64 %t275)
  %t289 = getelementptr i8, ptr %t288, i64 %t275
  call void @olang_textcopy(ptr %t289, ptr %t277, i64 %t278)
  %t290 = getelementptr i8, ptr %t289, i64 %t278
  call void @olang_textcopy(ptr %t290, ptr %t281, i64 %t282)
  %t291 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t284, 1
  %t294 = extractvalue { i64, ptr } %t292, 0
  %t295 = extractvalue { i64, ptr } %t292, 1
  %t296 = mul i64 %t294, 1
  %t297 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t296)
  call void @llvm.memcpy.p0.p0.i64(ptr %t297, ptr %t295, i64 %t296, i1 false)
  %t298 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t297, 1
  %t300 = load ptr, ptr %l153, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s8, ptr %t300, { i64, ptr } %t299)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s8)
  br label %bb49
bb49:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/mir:verifier", ptr %t302, i32 0, i32 17
  %t305 = load i32, ptr %l8, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t304, i32 %t305)
  br label %bb50
bb50:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/mir:verifier", ptr %t308, i32 0, i32 16
  %t311 = load { i64, ptr }, ptr %t310, !tbaa !27
  store { i64, ptr } %t311, ptr %l167, !tbaa !27
  %t312 = load i32, ptr %l8, !tbaa !23
  %t314 = sext i32 %t312 to i64
  %t316 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr i1, ptr %t317, i64 %t314
  store i1 false, ptr %t318, !tbaa !31
  br label %bb216
bb51:
  %t319 = load ptr, ptr %l1, !tbaa !29
  store ptr %t319, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t320 = load ptr, ptr %l170, !tbaa !29
  %t321 = icmp ne ptr %t320, null
  br i1 %t321, label %bb52, label %bb53
bb52:
  %t323 = load ptr, ptr %l170, !tbaa !29
  %t324 = load i64, ptr %t323, !range !{i64 0, i64 16}
  %t326 = icmp eq i64 %t324, 4
  store i1 %t326, ptr %l171, !tbaa !21
  br label %bb53
bb53:
  %t327 = load i1, ptr %l171, !tbaa !21
  br i1 %t327, label %bb54, label %bb55
bb54:
  %t328 = load ptr, ptr %l1, !tbaa !29
  %t330 = getelementptr { i64, [21 x i64] }, ptr %t328, i32 0, i32 1
  %t331 = getelementptr { %"compiler/source:Span", i32 }, ptr %t330, i32 0, i32 1
  %t332 = load i32, ptr %t331
  store i32 %t332, ptr %l11, !tbaa !23
  br label %bb56
bb55:
  br label %bb62
bb56:
  store %olang.scope zeroinitializer, ptr %s10
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2epop(ptr %v0, ptr %s10, ptr %t334, i32 %t335, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb57
bb57:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/mir:verifier", ptr %t338, i32 0, i32 16
  %t341 = load { i64, ptr }, ptr %t340, !tbaa !27
  store { i64, ptr } %t341, ptr %l179, !tbaa !27
  %t342 = load i32, ptr %l11, !tbaa !23
  %t344 = sext i32 %t342 to i64
  %t346 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = getelementptr i1, ptr %t347, i64 %t344
  %t349 = load i1, ptr %t348, !tbaa !31
  br i1 %t349, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s11
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load i32, ptr %l11, !tbaa !23
  %t353 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t354 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t356 = sext i32 %t352 to i64
  %t357 = call i64 @__olang_fmt_i64(ptr null, i64 %t356)
  %t358 = add i64 %t354, %t357
  %t359 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t360 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t361 = add i64 %t358, %t360
  %t362 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t361)
  call void @olang_textcopy(ptr %t362, ptr %t353, i64 %t354)
  %t363 = getelementptr i8, ptr %t362, i64 %t354
  %t364 = call i64 @__olang_fmt_i64(ptr %t363, i64 %t356)
  %t365 = getelementptr i8, ptr %t363, i64 %t357
  call void @olang_textcopy(ptr %t365, ptr %t359, i64 %t360)
  %t366 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t367 = insertvalue { i64, ptr } %t366, ptr %t362, 1
  %t369 = extractvalue { i64, ptr } %t367, 0
  %t370 = extractvalue { i64, ptr } %t367, 1
  %t371 = mul i64 %t369, 1
  %t372 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t371)
  call void @llvm.memcpy.p0.p0.i64(ptr %t372, ptr %t370, i64 %t371, i1 false)
  %t373 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t374 = insertvalue { i64, ptr } %t373, ptr %t372, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s11, ptr %t351, { i64, ptr } %t374)
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s11)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s10)
  br label %bb216
bb62:
  %t377 = load ptr, ptr %l1, !tbaa !29
  store ptr %t377, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t378 = load ptr, ptr %l187, !tbaa !29
  %t379 = icmp ne ptr %t378, null
  br i1 %t379, label %bb63, label %bb64
bb63:
  %t381 = load ptr, ptr %l187, !tbaa !29
  %t382 = load i64, ptr %t381, !range !{i64 0, i64 16}
  %t384 = icmp eq i64 %t382, 5
  store i1 %t384, ptr %l188, !tbaa !21
  br label %bb64
bb64:
  %t385 = load i1, ptr %l188, !tbaa !21
  br i1 %t385, label %bb65, label %bb66
bb65:
  %t386 = load ptr, ptr %l1, !tbaa !29
  %t388 = getelementptr { i64, [21 x i64] }, ptr %t386, i32 0, i32 1
  %t389 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t388, i32 0, i32 1
  %t390 = load { i64, [1 x i64] }, ptr %t389
  store { i64, [1 x i64] } %t390, ptr %l12
  %t392 = load ptr, ptr %l1, !tbaa !29
  %t394 = getelementptr { i64, [21 x i64] }, ptr %t392, i32 0, i32 1
  %t395 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t394, i32 0, i32 3
  %t396 = load { i64, [4 x i64] }, ptr %t395
  store { i64, [4 x i64] } %t396, ptr %l13
  br label %bb67
bb66:
  br label %bb70
bb67:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load { i64, [1 x i64] }, ptr %l12
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t398, { i64, [1 x i64] } %t399)
  br label %bb68
bb68:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load { i64, [4 x i64] }, ptr %l13
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v2, ptr %t402, { i64, [4 x i64] } %t403)
  br label %bb69
bb69:
  br label %bb216
bb70:
  %t406 = load ptr, ptr %l1, !tbaa !29
  store ptr %t406, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t407 = load ptr, ptr %l199, !tbaa !29
  %t408 = icmp ne ptr %t407, null
  br i1 %t408, label %bb71, label %bb72
bb71:
  %t410 = load ptr, ptr %l199, !tbaa !29
  %t411 = load i64, ptr %t410, !range !{i64 0, i64 16}
  %t413 = icmp eq i64 %t411, 6
  store i1 %t413, ptr %l200, !tbaa !21
  br label %bb72
bb72:
  %t414 = load i1, ptr %l200, !tbaa !21
  br i1 %t414, label %bb73, label %bb74
bb73:
  %t415 = load ptr, ptr %l1, !tbaa !29
  %t417 = getelementptr { i64, [21 x i64] }, ptr %t415, i32 0, i32 1
  %t418 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t417, i32 0, i32 1
  %t419 = load %"compiler/mir:Lvalue", ptr %t418
  store %"compiler/mir:Lvalue" %t419, ptr %l14
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load %"compiler/mir:Lvalue", ptr %l14
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v2, ptr %t421, %"compiler/mir:Lvalue" %t422)
  br label %bb76
bb76:
  br label %bb216
bb77:
  %t425 = load ptr, ptr %l1, !tbaa !29
  store ptr %t425, ptr %l207, !tbaa !29
  store i1 false, ptr %l208, !tbaa !21
  %t426 = load ptr, ptr %l207, !tbaa !29
  %t427 = icmp ne ptr %t426, null
  br i1 %t427, label %bb78, label %bb79
bb78:
  %t429 = load ptr, ptr %l207, !tbaa !29
  %t430 = load i64, ptr %t429, !range !{i64 0, i64 16}
  %t432 = icmp eq i64 %t430, 7
  store i1 %t432, ptr %l208, !tbaa !21
  br label %bb79
bb79:
  %t433 = load i1, ptr %l208, !tbaa !21
  br i1 %t433, label %bb80, label %bb81
bb80:
  %t434 = load ptr, ptr %l1, !tbaa !29
  %t436 = getelementptr { i64, [21 x i64] }, ptr %t434, i32 0, i32 1
  %t437 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t436, i32 0, i32 1
  %t438 = load i32, ptr %t437
  store i32 %t438, ptr %l15, !tbaa !23
  %t440 = load ptr, ptr %l1, !tbaa !29
  %t442 = getelementptr { i64, [21 x i64] }, ptr %t440, i32 0, i32 1
  %t443 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t442, i32 0, i32 2
  %t444 = load %"compiler/mir:Lvalue", ptr %t443
  store %"compiler/mir:Lvalue" %t444, ptr %l16
  br label %bb82
bb81:
  br label %bb85
bb82:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %t446, i32 %t447)
  br label %bb83
bb83:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load %"compiler/mir:Lvalue", ptr %l16
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v2, ptr %t450, %"compiler/mir:Lvalue" %t451)
  br label %bb84
bb84:
  br label %bb216
bb85:
  %t454 = load ptr, ptr %l1, !tbaa !29
  store ptr %t454, ptr %l219, !tbaa !29
  store i1 false, ptr %l220, !tbaa !21
  %t455 = load ptr, ptr %l219, !tbaa !29
  %t456 = icmp ne ptr %t455, null
  br i1 %t456, label %bb86, label %bb87
bb86:
  %t458 = load ptr, ptr %l219, !tbaa !29
  %t459 = load i64, ptr %t458, !range !{i64 0, i64 16}
  %t461 = icmp eq i64 %t459, 8
  store i1 %t461, ptr %l220, !tbaa !21
  br label %bb87
bb87:
  %t462 = load i1, ptr %l220, !tbaa !21
  br i1 %t462, label %bb88, label %bb89
bb88:
  %t463 = load ptr, ptr %l1, !tbaa !29
  %t465 = getelementptr { i64, [21 x i64] }, ptr %t463, i32 0, i32 1
  %t466 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t465, i32 0, i32 1
  %t467 = load { i64, [1 x i64] }, ptr %t466
  store { i64, [1 x i64] } %t467, ptr %l17
  %t469 = load ptr, ptr %l1, !tbaa !29
  %t471 = getelementptr { i64, [21 x i64] }, ptr %t469, i32 0, i32 1
  %t472 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t471, i32 0, i32 3
  %t473 = load { i64, [4 x i64] }, ptr %t472
  store { i64, [4 x i64] } %t473, ptr %l18
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load { i64, [1 x i64] }, ptr %l17
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t475, { i64, [1 x i64] } %t476)
  br label %bb91
bb91:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load { i64, [4 x i64] }, ptr %l18
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v2, ptr %t479, { i64, [4 x i64] } %t480)
  br label %bb92
bb92:
  br label %bb216
bb93:
  %t483 = load ptr, ptr %l1, !tbaa !29
  store ptr %t483, ptr %l231, !tbaa !29
  store i1 false, ptr %l232, !tbaa !21
  %t484 = load ptr, ptr %l231, !tbaa !29
  %t485 = icmp ne ptr %t484, null
  br i1 %t485, label %bb94, label %bb95
bb94:
  %t487 = load ptr, ptr %l231, !tbaa !29
  %t488 = load i64, ptr %t487, !range !{i64 0, i64 16}
  %t490 = icmp eq i64 %t488, 9
  store i1 %t490, ptr %l232, !tbaa !21
  br label %bb95
bb95:
  %t491 = load i1, ptr %l232, !tbaa !21
  br i1 %t491, label %bb96, label %bb97
bb96:
  %t492 = load ptr, ptr %l1, !tbaa !29
  %t494 = getelementptr { i64, [21 x i64] }, ptr %t492, i32 0, i32 1
  %t495 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t494, i32 0, i32 1
  %t496 = load %"compiler/mir:Lvalue", ptr %t495
  store %"compiler/mir:Lvalue" %t496, ptr %l19
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = getelementptr { i64, [21 x i64] }, ptr %t498, i32 0, i32 1
  %t501 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t500, i32 0, i32 2
  %t502 = load %"compiler/mir:Lvalue", ptr %t501
  store %"compiler/mir:Lvalue" %t502, ptr %l20
  %t504 = load ptr, ptr %l1, !tbaa !29
  %t506 = getelementptr { i64, [21 x i64] }, ptr %t504, i32 0, i32 1
  %t507 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t506, i32 0, i32 3
  %t508 = load { i64, [4 x i64] }, ptr %t507
  store { i64, [4 x i64] } %t508, ptr %l21
  br label %bb98
bb97:
  br label %bb102
bb98:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load %"compiler/mir:Lvalue", ptr %l20
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v2, ptr %t510, %"compiler/mir:Lvalue" %t511)
  br label %bb99
bb99:
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load { i64, [4 x i64] }, ptr %l21
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v2, ptr %t514, { i64, [4 x i64] } %t515)
  br label %bb100
bb100:
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load %"compiler/mir:Lvalue", ptr %l19
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v2, ptr %t518, %"compiler/mir:Lvalue" %t519)
  br label %bb101
bb101:
  br label %bb216
bb102:
  %t522 = load ptr, ptr %l1, !tbaa !29
  store ptr %t522, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t523 = load ptr, ptr %l247, !tbaa !29
  %t524 = icmp ne ptr %t523, null
  br i1 %t524, label %bb103, label %bb104
bb103:
  %t526 = load ptr, ptr %l247, !tbaa !29
  %t527 = load i64, ptr %t526, !range !{i64 0, i64 16}
  %t529 = icmp eq i64 %t527, 10
  store i1 %t529, ptr %l248, !tbaa !21
  br label %bb104
bb104:
  %t530 = load i1, ptr %l248, !tbaa !21
  br i1 %t530, label %bb105, label %bb106
bb105:
  %t531 = load ptr, ptr %l1, !tbaa !29
  %t533 = getelementptr { i64, [21 x i64] }, ptr %t531, i32 0, i32 1
  %t534 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t533, i32 0, i32 1
  %t535 = load i32, ptr %t534
  store i32 %t535, ptr %l22, !tbaa !23
  %t537 = load ptr, ptr %l1, !tbaa !29
  %t539 = getelementptr { i64, [21 x i64] }, ptr %t537, i32 0, i32 1
  %t540 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t539, i32 0, i32 2
  %t541 = load i32, ptr %t540
  store i32 %t541, ptr %l23, !tbaa !23
  br label %bb107
bb106:
  br label %bb175
bb107:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load i32, ptr %l22, !tbaa !23
  %t547 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %t543, i32 %t544)
  store i1 %t547, ptr %l257
  br label %bb108
bb108:
  %t548 = load i1, ptr %l257, !tbaa !21
  %t549 = xor i1 %t548, true
  br i1 %t549, label %bb109, label %bb110
bb109:
  store %olang.scope zeroinitializer, ptr %s19
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t552 = load i32, ptr %l22, !tbaa !23
  %t553 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t554 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t556 = sext i32 %t552 to i64
  %t557 = call i64 @__olang_fmt_i64(ptr null, i64 %t556)
  %t558 = add i64 %t554, %t557
  %t559 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t560 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t561 = add i64 %t558, %t560
  %t562 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t561)
  call void @olang_textcopy(ptr %t562, ptr %t553, i64 %t554)
  %t563 = getelementptr i8, ptr %t562, i64 %t554
  %t564 = call i64 @__olang_fmt_i64(ptr %t563, i64 %t556)
  %t565 = getelementptr i8, ptr %t563, i64 %t557
  call void @olang_textcopy(ptr %t565, ptr %t559, i64 %t560)
  %t566 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t567 = insertvalue { i64, ptr } %t566, ptr %t562, 1
  %t569 = extractvalue { i64, ptr } %t567, 0
  %t570 = extractvalue { i64, ptr } %t567, 1
  %t571 = mul i64 %t569, 1
  %t572 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t571)
  call void @llvm.memcpy.p0.p0.i64(ptr %t572, ptr %t570, i64 %t571, i1 false)
  %t573 = insertvalue { i64, ptr } undef, i64 %t569, 0
  %t574 = insertvalue { i64, ptr } %t573, ptr %t572, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s19, ptr %t551, { i64, ptr } %t574)
  br label %bb111
bb110:
  br label %bb112
bb111:
  call void @__olang_scope_close(ptr %s19)
  br label %bb112
bb112:
  %t577 = load ptr, ptr %l2, !tbaa !29
  %t579 = getelementptr %"compiler/mir:Fn", ptr %t577, i32 0, i32 16
  store ptr %t579, ptr %l264, !tbaa !29
  %t580 = load i32, ptr %l23, !tbaa !23
  %t582 = sext i32 %t580 to i64
  %t583 = load ptr, ptr %l264, !tbaa !29
  %t584 = call ptr @__olang_scope_or(ptr %v2, ptr %t583)
  %t585 = ptrtoint ptr %t584 to i64
  %t587 = inttoptr i64 %t585 to ptr
  %t588 = load ptr, ptr %l264, !tbaa !29
  %t590 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %t587, ptr %t588, i64 %t582)
  store %"compiler/mir:Task" %t590, ptr %l268
  br label %bb113
bb113:
  %t591 = load %"compiler/mir:Task", ptr %l268
  store %"compiler/mir:Task" %t591, ptr %l24
  store i32 0, ptr %l25, !tbaa !23
  %t592 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 3
  %t593 = getelementptr %"compiler/mir:Range", ptr %t592, i32 0, i32 1
  %t594 = load i32, ptr %t593, !tbaa !23
  store i32 %t594, ptr %l26, !tbaa !23
  store i32 1, ptr %l27, !tbaa !23
  %t596 = load i32, ptr %l26, !tbaa !23
  %t597 = load i32, ptr %l25, !tbaa !23
  %t600 = icmp sgt i32 %t596, %t597
  br i1 %t600, label %bb114, label %bb115
bb114:
  %t602 = load i32, ptr %l27, !tbaa !23
  %t604 = icmp sgt i32 %t602, 0
  br i1 %t604, label %bb116, label %bb117
bb115:
  store i32 0, ptr %l273, !tbaa !23
  br label %bb119
bb116:
  %t606 = load i32, ptr %l26, !tbaa !23
  %t607 = load i32, ptr %l25, !tbaa !23
  %t610 = sub i32 %t606, %t607
  %t611 = load i32, ptr %l27, !tbaa !23
  %t614 = add i32 %t610, %t611
  %t616 = sub i32 %t614, 1
  %t617 = load i32, ptr %l27, !tbaa !23
  %t620 = sdiv i32 %t616, %t617
  store i32 %t620, ptr %l276, !tbaa !23
  br label %bb118
bb117:
  store i32 0, ptr %l276, !tbaa !23
  br label %bb118
bb118:
  %t622 = load i32, ptr %l276, !tbaa !23
  store i32 %t622, ptr %l273, !tbaa !23
  br label %bb119
bb119:
  %t623 = load i32, ptr %l273, !tbaa !23
  store i32 %t623, ptr %l28, !tbaa !23
  store i32 0, ptr %l29, !tbaa !23
  br label %bb120
bb120:
  %t624 = load i32, ptr %l29, !tbaa !23
  %t625 = load i32, ptr %l28, !tbaa !23
  %t628 = icmp slt i32 %t624, %t625
  %t630 = xor i1 %t628, true
  br i1 %t630, label %bb121, label %bb122
bb121:
  br label %bb127
bb122:
  br label %bb123
bb123:
  %t632 = load i32, ptr %l25, !tbaa !23
  %t633 = load i32, ptr %l29, !tbaa !23
  %t634 = load i32, ptr %l27, !tbaa !23
  %t637 = mul i32 %t633, %t634
  %t640 = add i32 %t632, %t637
  %t642 = load ptr, ptr %l0, !tbaa !29
  store ptr %t642, ptr %l294, !tbaa !29
  %t643 = load ptr, ptr %l2, !tbaa !29
  %t645 = getelementptr %"compiler/mir:Fn", ptr %t643, i32 0, i32 13
  store ptr %t645, ptr %l296, !tbaa !29
  %t646 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 3
  %t647 = getelementptr %"compiler/mir:Range", ptr %t646, i32 0, i32 0
  %t648 = load i32, ptr %t647, !tbaa !23
  %t650 = sext i32 %t648 to i64
  %t653 = sext i32 %t640 to i64
  %t656 = add i64 %t650, %t653
  %t657 = load ptr, ptr %l296, !tbaa !29
  %t658 = call ptr @__olang_scope_or(ptr %v2, ptr %t657)
  %t659 = ptrtoint ptr %t658 to i64
  %t661 = inttoptr i64 %t659 to ptr
  %t662 = load ptr, ptr %l296, !tbaa !29
  %t664 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %t661, ptr %t662, i64 %t656)
  store %"compiler/mir:Lvalue" %t664, ptr %l303
  br label %bb124
bb124:
  %t665 = load ptr, ptr %l294, !tbaa !29
  %t666 = load %"compiler/mir:Lvalue", ptr %l303
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v2, ptr %t665, %"compiler/mir:Lvalue" %t666)
  br label %bb125
bb125:
  br label %bb126
bb126:
  %t667 = load i32, ptr %l29, !tbaa !23
  %t669 = add i32 %t667, 1
  store i32 %t669, ptr %l29, !tbaa !23
  br label %bb120
bb127:
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t672 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 0
  %t673 = load { i64, [7 x i64] }, ptr %t672
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeReads(ptr %v0, ptr %v2, ptr %t671, { i64, [7 x i64] } %t673)
  br label %bb128
bb128:
  %t676 = load ptr, ptr %l0, !tbaa !29
  %t677 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 1
  %t678 = load %"compiler/mir:Range", ptr %t677
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v2, ptr %t676, %"compiler/mir:Range" %t678)
  br label %bb129
bb129:
  store i32 0, ptr %l31, !tbaa !23
  %t681 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 2
  %t682 = getelementptr %"compiler/mir:Range", ptr %t681, i32 0, i32 1
  %t683 = load i32, ptr %t682, !tbaa !23
  store i32 %t683, ptr %l32, !tbaa !23
  store i32 1, ptr %l33, !tbaa !23
  %t685 = load i32, ptr %l32, !tbaa !23
  %t686 = load i32, ptr %l31, !tbaa !23
  %t689 = icmp sgt i32 %t685, %t686
  br i1 %t689, label %bb130, label %bb131
bb130:
  %t691 = load i32, ptr %l33, !tbaa !23
  %t693 = icmp sgt i32 %t691, 0
  br i1 %t693, label %bb132, label %bb133
bb131:
  store i32 0, ptr %l314, !tbaa !23
  br label %bb135
bb132:
  %t695 = load i32, ptr %l32, !tbaa !23
  %t696 = load i32, ptr %l31, !tbaa !23
  %t699 = sub i32 %t695, %t696
  %t700 = load i32, ptr %l33, !tbaa !23
  %t703 = add i32 %t699, %t700
  %t705 = sub i32 %t703, 1
  %t706 = load i32, ptr %l33, !tbaa !23
  %t709 = sdiv i32 %t705, %t706
  store i32 %t709, ptr %l317, !tbaa !23
  br label %bb134
bb133:
  store i32 0, ptr %l317, !tbaa !23
  br label %bb134
bb134:
  %t711 = load i32, ptr %l317, !tbaa !23
  store i32 %t711, ptr %l314, !tbaa !23
  br label %bb135
bb135:
  %t712 = load i32, ptr %l314, !tbaa !23
  store i32 %t712, ptr %l34, !tbaa !23
  store i32 0, ptr %l35, !tbaa !23
  br label %bb136
bb136:
  %t713 = load i32, ptr %l35, !tbaa !23
  %t714 = load i32, ptr %l34, !tbaa !23
  %t717 = icmp slt i32 %t713, %t714
  %t719 = xor i1 %t717, true
  br i1 %t719, label %bb137, label %bb138
bb137:
  br label %bb143
bb138:
  br label %bb139
bb139:
  %t721 = load i32, ptr %l31, !tbaa !23
  %t722 = load i32, ptr %l35, !tbaa !23
  %t723 = load i32, ptr %l33, !tbaa !23
  %t726 = mul i32 %t722, %t723
  %t729 = add i32 %t721, %t726
  %t731 = load ptr, ptr %l0, !tbaa !29
  store ptr %t731, ptr %l335, !tbaa !29
  %t732 = load ptr, ptr %l2, !tbaa !29
  %t734 = getelementptr %"compiler/mir:Fn", ptr %t732, i32 0, i32 12
  store ptr %t734, ptr %l337, !tbaa !29
  %t735 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 2
  %t736 = getelementptr %"compiler/mir:Range", ptr %t735, i32 0, i32 0
  %t737 = load i32, ptr %t736, !tbaa !23
  %t739 = sext i32 %t737 to i64
  %t742 = sext i32 %t729 to i64
  %t745 = add i64 %t739, %t742
  %t746 = load ptr, ptr %l337, !tbaa !29
  %t747 = call ptr @__olang_scope_or(ptr %v2, ptr %t746)
  %t748 = ptrtoint ptr %t747 to i64
  %t750 = inttoptr i64 %t748 to ptr
  %t751 = load ptr, ptr %l337, !tbaa !29
  %t753 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t750, ptr %t751, i64 %t745)
  store { i64, [1 x i64] } %t753, ptr %l344
  br label %bb140
bb140:
  %t754 = load ptr, ptr %l335, !tbaa !29
  %t755 = load { i64, [1 x i64] }, ptr %l344
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t754, { i64, [1 x i64] } %t755)
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t756 = load i32, ptr %l35, !tbaa !23
  %t758 = add i32 %t756, 1
  store i32 %t758, ptr %l35, !tbaa !23
  br label %bb136
bb143:
  store i32 0, ptr %l37, !tbaa !23
  %t760 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 7
  %t761 = getelementptr %"compiler/mir:Range", ptr %t760, i32 0, i32 1
  %t762 = load i32, ptr %t761, !tbaa !23
  store i32 %t762, ptr %l38, !tbaa !23
  store i32 1, ptr %l39, !tbaa !23
  %t764 = load i32, ptr %l38, !tbaa !23
  %t765 = load i32, ptr %l37, !tbaa !23
  %t768 = icmp sgt i32 %t764, %t765
  br i1 %t768, label %bb144, label %bb145
bb144:
  %t770 = load i32, ptr %l39, !tbaa !23
  %t772 = icmp sgt i32 %t770, 0
  br i1 %t772, label %bb146, label %bb147
bb145:
  store i32 0, ptr %l351, !tbaa !23
  br label %bb149
bb146:
  %t774 = load i32, ptr %l38, !tbaa !23
  %t775 = load i32, ptr %l37, !tbaa !23
  %t778 = sub i32 %t774, %t775
  %t779 = load i32, ptr %l39, !tbaa !23
  %t782 = add i32 %t778, %t779
  %t784 = sub i32 %t782, 1
  %t785 = load i32, ptr %l39, !tbaa !23
  %t788 = sdiv i32 %t784, %t785
  store i32 %t788, ptr %l354, !tbaa !23
  br label %bb148
bb147:
  store i32 0, ptr %l354, !tbaa !23
  br label %bb148
bb148:
  %t790 = load i32, ptr %l354, !tbaa !23
  store i32 %t790, ptr %l351, !tbaa !23
  br label %bb149
bb149:
  %t791 = load i32, ptr %l351, !tbaa !23
  store i32 %t791, ptr %l40, !tbaa !23
  store i32 0, ptr %l41, !tbaa !23
  br label %bb150
bb150:
  %t792 = load i32, ptr %l41, !tbaa !23
  %t793 = load i32, ptr %l40, !tbaa !23
  %t796 = icmp slt i32 %t792, %t793
  %t798 = xor i1 %t796, true
  br i1 %t798, label %bb151, label %bb152
bb151:
  br label %bb160
bb152:
  br label %bb153
bb153:
  %t800 = load i32, ptr %l37, !tbaa !23
  %t801 = load i32, ptr %l41, !tbaa !23
  %t802 = load i32, ptr %l39, !tbaa !23
  %t805 = mul i32 %t801, %t802
  %t808 = add i32 %t800, %t805
  %t810 = load ptr, ptr %l2, !tbaa !29
  %t812 = getelementptr %"compiler/mir:Fn", ptr %t810, i32 0, i32 12
  store ptr %t812, ptr %l373, !tbaa !29
  %t813 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 7
  %t814 = getelementptr %"compiler/mir:Range", ptr %t813, i32 0, i32 0
  %t815 = load i32, ptr %t814, !tbaa !23
  %t817 = sext i32 %t815 to i64
  %t820 = sext i32 %t808 to i64
  %t823 = add i64 %t817, %t820
  %t824 = load ptr, ptr %l373, !tbaa !29
  %t825 = call ptr @__olang_scope_or(ptr %v2, ptr %t824)
  %t826 = ptrtoint ptr %t825 to i64
  %t828 = inttoptr i64 %t826 to ptr
  %t829 = load ptr, ptr %l373, !tbaa !29
  %t831 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t828, ptr %t829, i64 %t823)
  store { i64, [1 x i64] } %t831, ptr %l380
  br label %bb154
bb154:
  %t832 = load { i64, [1 x i64] }, ptr %l380
  store { i64, [1 x i64] } %t832, ptr %l43
  %t833 = load { i64, [1 x i64] }, ptr %l43
  %t835 = extractvalue { i64, [1 x i64] } %t833, 0
  %t836 = icmp eq i64 %t835, 3
  %t838 = xor i1 %t836, true
  br i1 %t838, label %bb155, label %bb156
bb155:
  %t840 = load ptr, ptr %l0, !tbaa !29
  %t841 = load { i64, [1 x i64] }, ptr %l43
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t840, { i64, [1 x i64] } %t841)
  br label %bb157
bb156:
  br label %bb158
bb157:
  br label %bb158
bb158:
  br label %bb159
bb159:
  %t844 = load i32, ptr %l41, !tbaa !23
  %t846 = add i32 %t844, 1
  store i32 %t846, ptr %l41, !tbaa !23
  br label %bb150
bb160:
  store i32 0, ptr %l44, !tbaa !23
  %t848 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 4
  %t849 = getelementptr %"compiler/mir:Range", ptr %t848, i32 0, i32 1
  %t850 = load i32, ptr %t849, !tbaa !23
  store i32 %t850, ptr %l45, !tbaa !23
  store i32 1, ptr %l46, !tbaa !23
  %t852 = load i32, ptr %l45, !tbaa !23
  %t853 = load i32, ptr %l44, !tbaa !23
  %t856 = icmp sgt i32 %t852, %t853
  br i1 %t856, label %bb161, label %bb162
bb161:
  %t858 = load i32, ptr %l46, !tbaa !23
  %t860 = icmp sgt i32 %t858, 0
  br i1 %t860, label %bb163, label %bb164
bb162:
  store i32 0, ptr %l392, !tbaa !23
  br label %bb166
bb163:
  %t862 = load i32, ptr %l45, !tbaa !23
  %t863 = load i32, ptr %l44, !tbaa !23
  %t866 = sub i32 %t862, %t863
  %t867 = load i32, ptr %l46, !tbaa !23
  %t870 = add i32 %t866, %t867
  %t872 = sub i32 %t870, 1
  %t873 = load i32, ptr %l46, !tbaa !23
  %t876 = sdiv i32 %t872, %t873
  store i32 %t876, ptr %l395, !tbaa !23
  br label %bb165
bb164:
  store i32 0, ptr %l395, !tbaa !23
  br label %bb165
bb165:
  %t878 = load i32, ptr %l395, !tbaa !23
  store i32 %t878, ptr %l392, !tbaa !23
  br label %bb166
bb166:
  %t879 = load i32, ptr %l392, !tbaa !23
  store i32 %t879, ptr %l47, !tbaa !23
  store i32 0, ptr %l48, !tbaa !23
  br label %bb167
bb167:
  %t880 = load i32, ptr %l48, !tbaa !23
  %t881 = load i32, ptr %l47, !tbaa !23
  %t884 = icmp slt i32 %t880, %t881
  %t886 = xor i1 %t884, true
  br i1 %t886, label %bb168, label %bb169
bb168:
  br label %bb174
bb169:
  br label %bb170
bb170:
  %t888 = load i32, ptr %l44, !tbaa !23
  %t889 = load i32, ptr %l48, !tbaa !23
  %t890 = load i32, ptr %l46, !tbaa !23
  %t893 = mul i32 %t889, %t890
  %t896 = add i32 %t888, %t893
  %t898 = load ptr, ptr %l0, !tbaa !29
  store ptr %t898, ptr %l413, !tbaa !29
  %t899 = load ptr, ptr %l2, !tbaa !29
  %t901 = getelementptr %"compiler/mir:Fn", ptr %t899, i32 0, i32 17
  store ptr %t901, ptr %l415, !tbaa !29
  %t902 = getelementptr %"compiler/mir:Task", ptr %l24, i32 0, i32 4
  %t903 = getelementptr %"compiler/mir:Range", ptr %t902, i32 0, i32 0
  %t904 = load i32, ptr %t903, !tbaa !23
  %t906 = sext i32 %t904 to i64
  %t909 = sext i32 %t896 to i64
  %t912 = add i64 %t906, %t909
  %t913 = load ptr, ptr %l415, !tbaa !29
  %t914 = call ptr @__olang_scope_or(ptr %v2, ptr %t913)
  %t915 = ptrtoint ptr %t914 to i64
  %t917 = inttoptr i64 %t915 to ptr
  %t918 = load ptr, ptr %l415, !tbaa !29
  %t920 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %t917, ptr %t918, i64 %t912)
  store %"compiler/mir:TaskClause" %t920, ptr %l422
  br label %bb171
bb171:
  %t921 = getelementptr %"compiler/mir:TaskClause", ptr %l422, i32 0, i32 2
  %t922 = load { i64, [4 x i64] }, ptr %t921
  %t923 = load ptr, ptr %l413, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v2, ptr %t923, { i64, [4 x i64] } %t922)
  br label %bb172
bb172:
  br label %bb173
bb173:
  %t925 = load i32, ptr %l48, !tbaa !23
  %t927 = add i32 %t925, 1
  store i32 %t927, ptr %l48, !tbaa !23
  br label %bb167
bb174:
  %t929 = load ptr, ptr %l0, !tbaa !29
  %t931 = getelementptr %"compiler/mir:verifier", ptr %t929, i32 0, i32 16
  %t932 = load { i64, ptr }, ptr %t931, !tbaa !27
  store { i64, ptr } %t932, ptr %l427, !tbaa !27
  %t933 = load i32, ptr %l22, !tbaa !23
  %t935 = sext i32 %t933 to i64
  %t937 = getelementptr { i64, ptr }, ptr %l427, i32 0, i32 1
  %t938 = load ptr, ptr %t937, !tbaa !27
  %t939 = getelementptr i1, ptr %t938, i64 %t935
  store i1 true, ptr %t939, !tbaa !31
  br label %bb216
bb175:
  %t940 = load ptr, ptr %l1, !tbaa !29
  store ptr %t940, ptr %l430, !tbaa !29
  store i1 false, ptr %l431, !tbaa !21
  %t941 = load ptr, ptr %l430, !tbaa !29
  %t942 = icmp ne ptr %t941, null
  br i1 %t942, label %bb176, label %bb177
bb176:
  %t944 = load ptr, ptr %l430, !tbaa !29
  %t945 = load i64, ptr %t944, !range !{i64 0, i64 16}
  %t947 = icmp eq i64 %t945, 11
  store i1 %t947, ptr %l431, !tbaa !21
  br label %bb177
bb177:
  %t948 = load i1, ptr %l431, !tbaa !21
  br i1 %t948, label %bb178, label %bb179
bb178:
  br label %bb184
bb179:
  %t949 = load ptr, ptr %l1, !tbaa !29
  store ptr %t949, ptr %l434, !tbaa !29
  store i1 false, ptr %l435, !tbaa !21
  %t950 = load ptr, ptr %l434, !tbaa !29
  %t951 = icmp ne ptr %t950, null
  br i1 %t951, label %bb180, label %bb181
bb180:
  %t953 = load ptr, ptr %l434, !tbaa !29
  %t954 = load i64, ptr %t953, !range !{i64 0, i64 16}
  %t956 = icmp eq i64 %t954, 13
  store i1 %t956, ptr %l435, !tbaa !21
  br label %bb181
bb181:
  %t957 = load i1, ptr %l435, !tbaa !21
  br i1 %t957, label %bb182, label %bb183
bb182:
  br label %bb184
bb183:
  br label %bb185
bb184:
  br label %bb216
bb185:
  %t958 = load ptr, ptr %l1, !tbaa !29
  store ptr %t958, ptr %l438, !tbaa !29
  store i1 false, ptr %l439, !tbaa !21
  %t959 = load ptr, ptr %l438, !tbaa !29
  %t960 = icmp ne ptr %t959, null
  br i1 %t960, label %bb186, label %bb187
bb186:
  %t962 = load ptr, ptr %l438, !tbaa !29
  %t963 = load i64, ptr %t962, !range !{i64 0, i64 16}
  %t965 = icmp eq i64 %t963, 12
  store i1 %t965, ptr %l439, !tbaa !21
  br label %bb187
bb187:
  %t966 = load i1, ptr %l439, !tbaa !21
  br i1 %t966, label %bb188, label %bb189
bb188:
  %t967 = load ptr, ptr %l1, !tbaa !29
  %t969 = getelementptr { i64, [21 x i64] }, ptr %t967, i32 0, i32 1
  %t970 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t969, i32 0, i32 1
  %t971 = load { i64, [4 x i64] }, ptr %t970
  store { i64, [4 x i64] } %t971, ptr %l50
  br label %bb190
bb189:
  br label %bb192
bb190:
  %t973 = load ptr, ptr %l0, !tbaa !29
  %t974 = load { i64, [4 x i64] }, ptr %l50
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v2, ptr %t973, { i64, [4 x i64] } %t974)
  br label %bb191
bb191:
  br label %bb216
bb192:
  %t977 = load ptr, ptr %l1, !tbaa !29
  store ptr %t977, ptr %l446, !tbaa !29
  store i1 false, ptr %l447, !tbaa !21
  %t978 = load ptr, ptr %l446, !tbaa !29
  %t979 = icmp ne ptr %t978, null
  br i1 %t979, label %bb193, label %bb194
bb193:
  %t981 = load ptr, ptr %l446, !tbaa !29
  %t982 = load i64, ptr %t981, !range !{i64 0, i64 16}
  %t984 = icmp eq i64 %t982, 14
  store i1 %t984, ptr %l447, !tbaa !21
  br label %bb194
bb194:
  %t985 = load i1, ptr %l447, !tbaa !21
  br i1 %t985, label %bb195, label %bb196
bb195:
  %t986 = load ptr, ptr %l1, !tbaa !29
  %t988 = getelementptr { i64, [21 x i64] }, ptr %t986, i32 0, i32 1
  %t989 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t988, i32 0, i32 1
  %t990 = load { i64, [4 x i64] }, ptr %t989
  store { i64, [4 x i64] } %t990, ptr %l51
  %t992 = load ptr, ptr %l1, !tbaa !29
  %t994 = getelementptr { i64, [21 x i64] }, ptr %t992, i32 0, i32 1
  %t995 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t994, i32 0, i32 2
  %t996 = load { i64, [4 x i64] }, ptr %t995
  store { i64, [4 x i64] } %t996, ptr %l52
  br label %bb197
bb196:
  br label %bb200
bb197:
  %t998 = load ptr, ptr %l0, !tbaa !29
  %t999 = load { i64, [4 x i64] }, ptr %l51
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v2, ptr %t998, { i64, [4 x i64] } %t999)
  br label %bb198
bb198:
  %t1002 = load ptr, ptr %l0, !tbaa !29
  %t1003 = load { i64, [4 x i64] }, ptr %l52
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v2, ptr %t1002, { i64, [4 x i64] } %t1003)
  br label %bb199
bb199:
  br label %bb216
bb200:
  %t1006 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1006, ptr %l458, !tbaa !29
  store i1 false, ptr %l459, !tbaa !21
  %t1007 = load ptr, ptr %l458, !tbaa !29
  %t1008 = icmp ne ptr %t1007, null
  br i1 %t1008, label %bb201, label %bb202
bb201:
  %t1010 = load ptr, ptr %l458, !tbaa !29
  %t1011 = load i64, ptr %t1010, !range !{i64 0, i64 16}
  %t1013 = icmp eq i64 %t1011, 15
  store i1 %t1013, ptr %l459, !tbaa !21
  br label %bb202
bb202:
  %t1014 = load i1, ptr %l459, !tbaa !21
  br i1 %t1014, label %bb203, label %bb204
bb203:
  %t1015 = load ptr, ptr %l1, !tbaa !29
  %t1017 = getelementptr { i64, [21 x i64] }, ptr %t1015, i32 0, i32 1
  %t1018 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1017, i32 0, i32 1
  %t1019 = load i32, ptr %t1018
  store i32 %t1019, ptr %l53, !tbaa !23
  %t1021 = load ptr, ptr %l1, !tbaa !29
  %t1023 = getelementptr { i64, [21 x i64] }, ptr %t1021, i32 0, i32 1
  %t1024 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1023, i32 0, i32 2
  %t1025 = load i32, ptr %t1024
  store i32 %t1025, ptr %l54, !tbaa !23
  br label %bb205
bb204:
  br label %bb215
bb205:
  %t1027 = load ptr, ptr %l0, !tbaa !29
  %t1028 = load i32, ptr %l53, !tbaa !23
  %t1031 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %t1027, i32 %t1028)
  store i1 %t1031, ptr %l468
  br label %bb206
bb206:
  %t1032 = load i1, ptr %l468, !tbaa !21
  %t1033 = xor i1 %t1032, true
  br i1 %t1033, label %bb207, label %bb208
bb207:
  store %olang.scope zeroinitializer, ptr %s38
  %t1035 = load ptr, ptr %l0, !tbaa !29
  %t1036 = load i32, ptr %l53, !tbaa !23
  %t1037 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t1038 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t1040 = sext i32 %t1036 to i64
  %t1041 = call i64 @__olang_fmt_i64(ptr null, i64 %t1040)
  %t1042 = add i64 %t1038, %t1041
  %t1043 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t1044 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t1045 = add i64 %t1042, %t1044
  %t1046 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t1045)
  call void @olang_textcopy(ptr %t1046, ptr %t1037, i64 %t1038)
  %t1047 = getelementptr i8, ptr %t1046, i64 %t1038
  %t1048 = call i64 @__olang_fmt_i64(ptr %t1047, i64 %t1040)
  %t1049 = getelementptr i8, ptr %t1047, i64 %t1041
  call void @olang_textcopy(ptr %t1049, ptr %t1043, i64 %t1044)
  %t1050 = insertvalue { i64, ptr } undef, i64 %t1045, 0
  %t1051 = insertvalue { i64, ptr } %t1050, ptr %t1046, 1
  %t1053 = extractvalue { i64, ptr } %t1051, 0
  %t1054 = extractvalue { i64, ptr } %t1051, 1
  %t1055 = mul i64 %t1053, 1
  %t1056 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t1055)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1056, ptr %t1054, i64 %t1055, i1 false)
  %t1057 = insertvalue { i64, ptr } undef, i64 %t1053, 0
  %t1058 = insertvalue { i64, ptr } %t1057, ptr %t1056, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s38, ptr %t1035, { i64, ptr } %t1058)
  br label %bb209
bb208:
  br label %bb210
bb209:
  call void @__olang_scope_close(ptr %s38)
  br label %bb210
bb210:
  %t1061 = load i32, ptr %l54, !tbaa !23
  %t1062 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t1065 = icmp ne i32 %t1061, %t1062
  br i1 %t1065, label %bb211, label %bb212
bb211:
  %t1067 = load ptr, ptr %l0, !tbaa !29
  %t1068 = load i32, ptr %l54, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v2, ptr %t1067, i32 %t1068)
  br label %bb213
bb212:
  br label %bb214
bb213:
  br label %bb214
bb214:
  br label %bb216
bb215:
  call void @__olang_check_failed(ptr @olang_loc_30c75e8686103aec_2a803509807dc2e8)
  unreachable
bb216:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estores(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l9 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
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
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  store i32 %t11, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/mir:verifier", ptr %t13, i32 0, i32 15
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = load i32, ptr %l3, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t21 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i1, ptr %t22, i64 %t19
  %t24 = load i1, ptr %t23, !tbaa !31
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t33 = sext i32 %t29 to i64
  %t34 = call i64 @__olang_fmt_i64(ptr null, i64 %t33)
  %t35 = add i64 %t31, %t34
  %t36 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t30, i64 %t31)
  %t40 = getelementptr i8, ptr %t39, i64 %t31
  %t41 = call i64 @__olang_fmt_i64(ptr %t40, i64 %t33)
  %t42 = getelementptr i8, ptr %t40, i64 %t34
  call void @olang_textcopy(ptr %t42, ptr %t36, i64 %t37)
  %t43 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t39, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t28, { i64, ptr } %t51)
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb7
bb7:
  %t54 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t55 = getelementptr %"compiler/mir:Range", ptr %t54, i32 0, i32 1
  %t56 = load i32, ptr %t55, !tbaa !23
  %t58 = icmp eq i32 %t56, 0
  br i1 %t58, label %bb8, label %bb9
bb8:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/mir:verifier", ptr %t60, i32 0, i32 14
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l21, !tbaa !27
  %t64 = load i32, ptr %l3, !tbaa !23
  %t66 = sext i32 %t64 to i64
  %t68 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i1, ptr %t69, i64 %t66
  store i1 true, ptr %t70, !tbaa !31
  br label %bb11
bb9:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load %"compiler/mir:Lvalue", ptr %l1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %t71, %"compiler/mir:Lvalue" %t72)
  br label %bb10
bb10:
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
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/mir:Lvalue", ptr %l1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %t75, %"compiler/mir:Lvalue" %t76)
  br label %bb16
bb16:
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_8c773ec7d9409528_6b556770aed18854)
  unreachable
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermFlow(ptr %v0, ptr %v1, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca %"compiler/mir:Range"
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l16 = alloca i32
  %l17 = alloca %"compiler/mir:Call"
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l24 = alloca i1
  %l25 = alloca i32
  %l26 = alloca %"compiler/mir:Call"
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l33 = alloca { i64, [4 x i64] }
  %l34 = alloca { i64, [4 x i64] }
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i1
  %l72 = alloca i32
  %l75 = alloca i32
  %l93 = alloca ptr
  %l95 = alloca ptr
  %l102 = alloca %"compiler/mir:Case"
  %l112 = alloca ptr
  %l116 = alloca %"compiler/mir:Call"
  %l125 = alloca i32
  %l128 = alloca i32
  %l146 = alloca ptr
  %l148 = alloca ptr
  %l155 = alloca { i64, [1 x i64] }
  %l162 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l195 = alloca ptr
  %l199 = alloca %"compiler/mir:Call"
  %l208 = alloca i32
  %l211 = alloca i32
  %l229 = alloca ptr
  %l231 = alloca ptr
  %l238 = alloca { i64, [1 x i64] }
  %l243 = alloca i64
  %l245 = alloca ptr
  %l247 = alloca { i64, ptr }
  %l260 = alloca i64
  %l262 = alloca ptr
  %l264 = alloca { i64, ptr }
  %l282 = alloca i64
  %l284 = alloca ptr
  %l286 = alloca { i64, ptr }
  %l302 = alloca i1
  %l309 = alloca { i64, ptr }
  %l316 = alloca { i64, ptr }
  %l321 = alloca { i64, ptr }
  %l327 = alloca { i64, ptr }
  %s13 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s31 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [8 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [8 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t15, i32 %t16)
  br label %bb4
bb4:
  br label %bb147
bb5:
  %t19 = load { i64, [8 x i64] }, ptr %l1
  %t21 = extractvalue { i64, [8 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 2
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t25 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t24, i32 0, i32 0
  %t26 = load { i64, [4 x i64] }, ptr %t25
  store { i64, [4 x i64] } %t26, ptr %l4
  %t28 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t28, i32 0, i32 1
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l5, !tbaa !23
  %t32 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t33 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t32, i32 0, i32 2
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l6, !tbaa !23
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, [4 x i64] }, ptr %l4
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t36, { i64, [4 x i64] } %t37)
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t40, i32 %t41)
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t44, i32 %t45)
  br label %bb11
bb11:
  br label %bb147
bb12:
  %t48 = load { i64, [8 x i64] }, ptr %l1
  %t50 = extractvalue { i64, [8 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 3
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t54 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t53, i32 0, i32 0
  %t55 = load { i64, [4 x i64] }, ptr %t54
  store { i64, [4 x i64] } %t55, ptr %l7
  %t57 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t58 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t57, i32 0, i32 1
  %t59 = load %"compiler/mir:Range", ptr %t58
  store %"compiler/mir:Range" %t59, ptr %l8
  %t61 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t62 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t61, i32 0, i32 2
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l9, !tbaa !23
  br label %bb15
bb14:
  br label %bb32
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, [4 x i64] }, ptr %l7
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t65, { i64, [4 x i64] } %t66)
  br label %bb16
bb16:
  store i32 0, ptr %l10, !tbaa !23
  %t69 = getelementptr %"compiler/mir:Range", ptr %l8, i32 0, i32 1
  %t70 = load i32, ptr %t69, !tbaa !23
  store i32 %t70, ptr %l11, !tbaa !23
  store i32 1, ptr %l12, !tbaa !23
  %t72 = load i32, ptr %l11, !tbaa !23
  %t73 = load i32, ptr %l10, !tbaa !23
  %t76 = icmp sgt i32 %t72, %t73
  br i1 %t76, label %bb17, label %bb18
bb17:
  %t78 = load i32, ptr %l12, !tbaa !23
  %t80 = icmp sgt i32 %t78, 0
  br i1 %t80, label %bb19, label %bb20
bb18:
  store i32 0, ptr %l72, !tbaa !23
  br label %bb22
bb19:
  %t82 = load i32, ptr %l11, !tbaa !23
  %t83 = load i32, ptr %l10, !tbaa !23
  %t86 = sub i32 %t82, %t83
  %t87 = load i32, ptr %l12, !tbaa !23
  %t90 = add i32 %t86, %t87
  %t92 = sub i32 %t90, 1
  %t93 = load i32, ptr %l12, !tbaa !23
  %t96 = sdiv i32 %t92, %t93
  store i32 %t96, ptr %l75, !tbaa !23
  br label %bb21
bb20:
  store i32 0, ptr %l75, !tbaa !23
  br label %bb21
bb21:
  %t98 = load i32, ptr %l75, !tbaa !23
  store i32 %t98, ptr %l72, !tbaa !23
  br label %bb22
bb22:
  %t99 = load i32, ptr %l72, !tbaa !23
  store i32 %t99, ptr %l13, !tbaa !23
  store i32 0, ptr %l14, !tbaa !23
  br label %bb23
bb23:
  %t100 = load i32, ptr %l14, !tbaa !23
  %t101 = load i32, ptr %l13, !tbaa !23
  %t104 = icmp slt i32 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb24, label %bb25
bb24:
  br label %bb30
bb25:
  br label %bb26
bb26:
  %t108 = load i32, ptr %l10, !tbaa !23
  %t109 = load i32, ptr %l14, !tbaa !23
  %t110 = load i32, ptr %l12, !tbaa !23
  %t113 = mul i32 %t109, %t110
  %t116 = add i32 %t108, %t113
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l93, !tbaa !29
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t121 = getelementptr %"compiler/mir:Fn", ptr %t119, i32 0, i32 15
  store ptr %t121, ptr %l95, !tbaa !29
  %t122 = getelementptr %"compiler/mir:Range", ptr %l8, i32 0, i32 0
  %t123 = load i32, ptr %t122, !tbaa !23
  %t125 = sext i32 %t123 to i64
  %t128 = sext i32 %t116 to i64
  %t131 = add i64 %t125, %t128
  %t132 = load ptr, ptr %l95, !tbaa !29
  %t133 = call ptr @__olang_scope_or(ptr %v1, ptr %t132)
  %t134 = ptrtoint ptr %t133 to i64
  %t136 = inttoptr i64 %t134 to ptr
  %t137 = load ptr, ptr %l95, !tbaa !29
  %t139 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t136, ptr %t137, i64 %t131)
  store %"compiler/mir:Case" %t139, ptr %l102
  br label %bb27
bb27:
  %t140 = getelementptr %"compiler/mir:Case", ptr %l102, i32 0, i32 1
  %t141 = load i32, ptr %t140, !tbaa !23
  %t142 = load ptr, ptr %l93, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t142, i32 %t141)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t144 = load i32, ptr %l14, !tbaa !23
  %t146 = add i32 %t144, 1
  store i32 %t146, ptr %l14, !tbaa !23
  br label %bb23
bb30:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t148, i32 %t149)
  br label %bb31
bb31:
  br label %bb147
bb32:
  %t152 = load { i64, [8 x i64] }, ptr %l1
  %t154 = extractvalue { i64, [8 x i64] } %t152, 0
  %t155 = icmp eq i64 %t154, 4
  br i1 %t155, label %bb33, label %bb34
bb33:
  %t157 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", i32 }, ptr %t157, i32 0, i32 1
  %t159 = load i32, ptr %t158
  store i32 %t159, ptr %l16, !tbaa !23
  br label %bb35
bb34:
  br label %bb66
bb35:
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t163 = getelementptr %"compiler/mir:Fn", ptr %t161, i32 0, i32 14
  store ptr %t163, ptr %l112, !tbaa !29
  %t164 = load i32, ptr %l16, !tbaa !23
  %t166 = sext i32 %t164 to i64
  %t167 = load ptr, ptr %l112, !tbaa !29
  %t168 = call ptr @__olang_scope_or(ptr %v1, ptr %t167)
  %t169 = ptrtoint ptr %t168 to i64
  %t171 = inttoptr i64 %t169 to ptr
  %t172 = load ptr, ptr %l112, !tbaa !29
  %t174 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t171, ptr %t172, i64 %t166)
  store %"compiler/mir:Call" %t174, ptr %l116
  br label %bb36
bb36:
  %t175 = load %"compiler/mir:Call", ptr %l116
  store %"compiler/mir:Call" %t175, ptr %l17
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 0
  %t178 = load { i64, [7 x i64] }, ptr %t177
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeReads(ptr %v0, ptr %v1, ptr %t176, { i64, [7 x i64] } %t178)
  br label %bb37
bb37:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 1
  %t183 = load %"compiler/mir:Range", ptr %t182
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v1, ptr %t181, %"compiler/mir:Range" %t183)
  br label %bb38
bb38:
  store i32 0, ptr %l18, !tbaa !23
  %t186 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 2
  %t187 = getelementptr %"compiler/mir:Range", ptr %t186, i32 0, i32 1
  %t188 = load i32, ptr %t187, !tbaa !23
  store i32 %t188, ptr %l19, !tbaa !23
  store i32 1, ptr %l20, !tbaa !23
  %t190 = load i32, ptr %l19, !tbaa !23
  %t191 = load i32, ptr %l18, !tbaa !23
  %t194 = icmp sgt i32 %t190, %t191
  br i1 %t194, label %bb39, label %bb40
bb39:
  %t196 = load i32, ptr %l20, !tbaa !23
  %t198 = icmp sgt i32 %t196, 0
  br i1 %t198, label %bb41, label %bb42
bb40:
  store i32 0, ptr %l125, !tbaa !23
  br label %bb44
bb41:
  %t200 = load i32, ptr %l19, !tbaa !23
  %t201 = load i32, ptr %l18, !tbaa !23
  %t204 = sub i32 %t200, %t201
  %t205 = load i32, ptr %l20, !tbaa !23
  %t208 = add i32 %t204, %t205
  %t210 = sub i32 %t208, 1
  %t211 = load i32, ptr %l20, !tbaa !23
  %t214 = sdiv i32 %t210, %t211
  store i32 %t214, ptr %l128, !tbaa !23
  br label %bb43
bb42:
  store i32 0, ptr %l128, !tbaa !23
  br label %bb43
bb43:
  %t216 = load i32, ptr %l128, !tbaa !23
  store i32 %t216, ptr %l125, !tbaa !23
  br label %bb44
bb44:
  %t217 = load i32, ptr %l125, !tbaa !23
  store i32 %t217, ptr %l21, !tbaa !23
  store i32 0, ptr %l22, !tbaa !23
  br label %bb45
bb45:
  %t218 = load i32, ptr %l22, !tbaa !23
  %t219 = load i32, ptr %l21, !tbaa !23
  %t222 = icmp slt i32 %t218, %t219
  %t224 = xor i1 %t222, true
  br i1 %t224, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  br label %bb48
bb48:
  %t226 = load i32, ptr %l18, !tbaa !23
  %t227 = load i32, ptr %l22, !tbaa !23
  %t228 = load i32, ptr %l20, !tbaa !23
  %t231 = mul i32 %t227, %t228
  %t234 = add i32 %t226, %t231
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l146, !tbaa !29
  %t237 = load ptr, ptr %l2, !tbaa !29
  %t239 = getelementptr %"compiler/mir:Fn", ptr %t237, i32 0, i32 12
  store ptr %t239, ptr %l148, !tbaa !29
  %t240 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 2
  %t241 = getelementptr %"compiler/mir:Range", ptr %t240, i32 0, i32 0
  %t242 = load i32, ptr %t241, !tbaa !23
  %t244 = sext i32 %t242 to i64
  %t247 = sext i32 %t234 to i64
  %t250 = add i64 %t244, %t247
  %t251 = load ptr, ptr %l148, !tbaa !29
  %t252 = call ptr @__olang_scope_or(ptr %v1, ptr %t251)
  %t253 = ptrtoint ptr %t252 to i64
  %t255 = inttoptr i64 %t253 to ptr
  %t256 = load ptr, ptr %l148, !tbaa !29
  %t258 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t255, ptr %t256, i64 %t250)
  store { i64, [1 x i64] } %t258, ptr %l155
  br label %bb49
bb49:
  %t259 = load ptr, ptr %l146, !tbaa !29
  %t260 = load { i64, [1 x i64] }, ptr %l155
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t259, { i64, [1 x i64] } %t260)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t261 = load i32, ptr %l22, !tbaa !23
  %t263 = add i32 %t261, 1
  store i32 %t263, ptr %l22, !tbaa !23
  br label %bb45
bb52:
  %t265 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 7
  %t266 = load i32, ptr %t265, !tbaa !23
  %t267 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t270 = icmp ne i32 %t266, %t267
  br i1 %t270, label %bb53, label %bb54
bb53:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/mir:verifier", ptr %t272, i32 0, i32 15
  %t275 = load { i64, ptr }, ptr %t274, !tbaa !27
  store { i64, ptr } %t275, ptr %l162, !tbaa !27
  %t276 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 6
  %t277 = load i32, ptr %t276, !tbaa !23
  %t279 = sext i32 %t277 to i64
  %t281 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i1, ptr %t282, i64 %t279
  %t284 = load i1, ptr %t283, !tbaa !31
  br i1 %t284, label %bb55, label %bb56
bb54:
  br label %bb60
bb55:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/mir:verifier", ptr %t286, i32 0, i32 14
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  store { i64, ptr } %t289, ptr %l167, !tbaa !27
  %t290 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 6
  %t291 = load i32, ptr %t290, !tbaa !23
  %t293 = sext i32 %t291 to i64
  %t295 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr i1, ptr %t296, i64 %t293
  %t298 = load i1, ptr %t297, !tbaa !31
  store i1 %t298, ptr %l24, !tbaa !21
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/mir:verifier", ptr %t300, i32 0, i32 14
  %t303 = load { i64, ptr }, ptr %t302, !tbaa !27
  store { i64, ptr } %t303, ptr %l172, !tbaa !27
  %t304 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 6
  %t305 = load i32, ptr %t304, !tbaa !23
  %t307 = sext i32 %t305 to i64
  %t309 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr i1, ptr %t310, i64 %t307
  store i1 true, ptr %t311, !tbaa !31
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 7
  %t314 = load i32, ptr %t313, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t312, i32 %t314)
  br label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s13
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 6
  %t319 = load i32, ptr %t318, !tbaa !23
  %t320 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t323 = sext i32 %t319 to i64
  %t324 = call i64 @__olang_fmt_i64(ptr null, i64 %t323)
  %t325 = add i64 %t321, %t324
  %t326 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t328 = add i64 %t325, %t327
  %t329 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t328)
  call void @olang_textcopy(ptr %t329, ptr %t320, i64 %t321)
  %t330 = getelementptr i8, ptr %t329, i64 %t321
  %t331 = call i64 @__olang_fmt_i64(ptr %t330, i64 %t323)
  %t332 = getelementptr i8, ptr %t330, i64 %t324
  call void @olang_textcopy(ptr %t332, ptr %t326, i64 %t327)
  %t333 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t329, 1
  %t336 = extractvalue { i64, ptr } %t334, 0
  %t337 = extractvalue { i64, ptr } %t334, 1
  %t338 = mul i64 %t336, 1
  %t339 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t338)
  call void @llvm.memcpy.p0.p0.i64(ptr %t339, ptr %t337, i64 %t338, i1 false)
  %t340 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s13, ptr %t317, { i64, ptr } %t341)
  br label %bb58
bb57:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/mir:verifier", ptr %t344, i32 0, i32 14
  %t347 = load { i64, ptr }, ptr %t346, !tbaa !27
  store { i64, ptr } %t347, ptr %l178, !tbaa !27
  %t348 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 6
  %t349 = load i32, ptr %t348, !tbaa !23
  %t351 = sext i32 %t349 to i64
  %t352 = load i1, ptr %l24, !tbaa !21
  %t355 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr i1, ptr %t356, i64 %t351
  store i1 %t352, ptr %t357, !tbaa !31
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s13)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t358 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 4
  %t359 = load i1, ptr %t358, !tbaa !21
  br i1 %t359, label %bb61, label %bb62
bb61:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 3
  %t363 = load %"compiler/mir:Lvalue", ptr %t362
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estores(ptr %v0, ptr %v1, ptr %t361, %"compiler/mir:Lvalue" %t363)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"compiler/mir:Call", ptr %l17, i32 0, i32 5
  %t368 = load i32, ptr %t367, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t366, i32 %t368)
  br label %bb65
bb65:
  br label %bb147
bb66:
  %t371 = load { i64, [8 x i64] }, ptr %l1
  %t373 = extractvalue { i64, [8 x i64] } %t371, 0
  %t374 = icmp eq i64 %t373, 6
  br i1 %t374, label %bb67, label %bb68
bb67:
  %t376 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", i32 }, ptr %t376, i32 0, i32 1
  %t378 = load i32, ptr %t377
  store i32 %t378, ptr %l25, !tbaa !23
  br label %bb69
bb68:
  br label %bb93
bb69:
  %t380 = load ptr, ptr %l2, !tbaa !29
  %t382 = getelementptr %"compiler/mir:Fn", ptr %t380, i32 0, i32 14
  store ptr %t382, ptr %l195, !tbaa !29
  %t383 = load i32, ptr %l25, !tbaa !23
  %t385 = sext i32 %t383 to i64
  %t386 = load ptr, ptr %l195, !tbaa !29
  %t387 = call ptr @__olang_scope_or(ptr %v1, ptr %t386)
  %t388 = ptrtoint ptr %t387 to i64
  %t390 = inttoptr i64 %t388 to ptr
  %t391 = load ptr, ptr %l195, !tbaa !29
  %t393 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t390, ptr %t391, i64 %t385)
  store %"compiler/mir:Call" %t393, ptr %l199
  br label %bb70
bb70:
  %t394 = load %"compiler/mir:Call", ptr %l199
  store %"compiler/mir:Call" %t394, ptr %l26
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/mir:Call", ptr %l26, i32 0, i32 0
  %t397 = load { i64, [7 x i64] }, ptr %t396
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeReads(ptr %v0, ptr %v1, ptr %t395, { i64, [7 x i64] } %t397)
  br label %bb71
bb71:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/mir:Call", ptr %l26, i32 0, i32 1
  %t402 = load %"compiler/mir:Range", ptr %t401
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v1, ptr %t400, %"compiler/mir:Range" %t402)
  br label %bb72
bb72:
  store i32 0, ptr %l27, !tbaa !23
  %t405 = getelementptr %"compiler/mir:Call", ptr %l26, i32 0, i32 2
  %t406 = getelementptr %"compiler/mir:Range", ptr %t405, i32 0, i32 1
  %t407 = load i32, ptr %t406, !tbaa !23
  store i32 %t407, ptr %l28, !tbaa !23
  store i32 1, ptr %l29, !tbaa !23
  %t409 = load i32, ptr %l28, !tbaa !23
  %t410 = load i32, ptr %l27, !tbaa !23
  %t413 = icmp sgt i32 %t409, %t410
  br i1 %t413, label %bb73, label %bb74
bb73:
  %t415 = load i32, ptr %l29, !tbaa !23
  %t417 = icmp sgt i32 %t415, 0
  br i1 %t417, label %bb75, label %bb76
bb74:
  store i32 0, ptr %l208, !tbaa !23
  br label %bb78
bb75:
  %t419 = load i32, ptr %l28, !tbaa !23
  %t420 = load i32, ptr %l27, !tbaa !23
  %t423 = sub i32 %t419, %t420
  %t424 = load i32, ptr %l29, !tbaa !23
  %t427 = add i32 %t423, %t424
  %t429 = sub i32 %t427, 1
  %t430 = load i32, ptr %l29, !tbaa !23
  %t433 = sdiv i32 %t429, %t430
  store i32 %t433, ptr %l211, !tbaa !23
  br label %bb77
bb76:
  store i32 0, ptr %l211, !tbaa !23
  br label %bb77
bb77:
  %t435 = load i32, ptr %l211, !tbaa !23
  store i32 %t435, ptr %l208, !tbaa !23
  br label %bb78
bb78:
  %t436 = load i32, ptr %l208, !tbaa !23
  store i32 %t436, ptr %l30, !tbaa !23
  store i32 0, ptr %l31, !tbaa !23
  br label %bb79
bb79:
  %t437 = load i32, ptr %l31, !tbaa !23
  %t438 = load i32, ptr %l30, !tbaa !23
  %t441 = icmp slt i32 %t437, %t438
  %t443 = xor i1 %t441, true
  br i1 %t443, label %bb80, label %bb81
bb80:
  br label %bb86
bb81:
  br label %bb82
bb82:
  %t445 = load i32, ptr %l27, !tbaa !23
  %t446 = load i32, ptr %l31, !tbaa !23
  %t447 = load i32, ptr %l29, !tbaa !23
  %t450 = mul i32 %t446, %t447
  %t453 = add i32 %t445, %t450
  %t455 = load ptr, ptr %l0, !tbaa !29
  store ptr %t455, ptr %l229, !tbaa !29
  %t456 = load ptr, ptr %l2, !tbaa !29
  %t458 = getelementptr %"compiler/mir:Fn", ptr %t456, i32 0, i32 12
  store ptr %t458, ptr %l231, !tbaa !29
  %t459 = getelementptr %"compiler/mir:Call", ptr %l26, i32 0, i32 2
  %t460 = getelementptr %"compiler/mir:Range", ptr %t459, i32 0, i32 0
  %t461 = load i32, ptr %t460, !tbaa !23
  %t463 = sext i32 %t461 to i64
  %t466 = sext i32 %t453 to i64
  %t469 = add i64 %t463, %t466
  %t470 = load ptr, ptr %l231, !tbaa !29
  %t471 = call ptr @__olang_scope_or(ptr %v1, ptr %t470)
  %t472 = ptrtoint ptr %t471 to i64
  %t474 = inttoptr i64 %t472 to ptr
  %t475 = load ptr, ptr %l231, !tbaa !29
  %t477 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t474, ptr %t475, i64 %t469)
  store { i64, [1 x i64] } %t477, ptr %l238
  br label %bb83
bb83:
  %t478 = load ptr, ptr %l229, !tbaa !29
  %t479 = load { i64, [1 x i64] }, ptr %l238
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t478, { i64, [1 x i64] } %t479)
  br label %bb84
bb84:
  br label %bb85
bb85:
  %t480 = load i32, ptr %l31, !tbaa !23
  %t482 = add i32 %t480, 1
  store i32 %t482, ptr %l31, !tbaa !23
  br label %bb79
bb86:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t486 = getelementptr %"compiler/mir:verifier", ptr %t484, i32 0, i32 17
  %t488 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t486)
  store i64 %t488, ptr %l243
  br label %bb87
bb87:
  %t489 = load i64, ptr %l243, !tbaa !24
  %t490 = icmp sgt i64 %t489, 0
  br i1 %t490, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s20
  %t492 = load ptr, ptr %l0, !tbaa !29
  store ptr %t492, ptr %l245, !tbaa !29
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackText(ptr %v0, ptr %s20, ptr %t493)
  store { i64, ptr } %t495, ptr %l247
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t496 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t498 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t499 = extractvalue { i64, ptr } %t498, 1
  %t500 = extractvalue { i64, ptr } %t498, 0
  %t501 = add i64 %t497, %t500
  %t502 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t503 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t504 = add i64 %t501, %t503
  %t505 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t504)
  call void @olang_textcopy(ptr %t505, ptr %t496, i64 %t497)
  %t506 = getelementptr i8, ptr %t505, i64 %t497
  call void @olang_textcopy(ptr %t506, ptr %t499, i64 %t500)
  %t507 = getelementptr i8, ptr %t506, i64 %t500
  call void @olang_textcopy(ptr %t507, ptr %t502, i64 %t503)
  %t508 = insertvalue { i64, ptr } undef, i64 %t504, 0
  %t509 = insertvalue { i64, ptr } %t508, ptr %t505, 1
  %t511 = extractvalue { i64, ptr } %t509, 0
  %t512 = extractvalue { i64, ptr } %t509, 1
  %t513 = mul i64 %t511, 1
  %t514 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t513)
  call void @llvm.memcpy.p0.p0.i64(ptr %t514, ptr %t512, i64 %t513, i1 false)
  %t515 = insertvalue { i64, ptr } undef, i64 %t511, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t514, 1
  %t517 = load ptr, ptr %l245, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s20, ptr %t517, { i64, ptr } %t516)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s20)
  br label %bb92
bb92:
  br label %bb147
bb93:
  %t519 = load { i64, [8 x i64] }, ptr %l1
  %t521 = extractvalue { i64, [8 x i64] } %t519, 0
  %t522 = icmp eq i64 %t521, 5
  br i1 %t522, label %bb94, label %bb95
bb94:
  %t524 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t525 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t524, i32 0, i32 1
  %t526 = load { i64, [4 x i64] }, ptr %t525
  store { i64, [4 x i64] } %t526, ptr %l33
  br label %bb98
bb95:
  %t528 = load { i64, [8 x i64] }, ptr %l1
  %t530 = extractvalue { i64, [8 x i64] } %t528, 0
  %t531 = icmp eq i64 %t530, 7
  br i1 %t531, label %bb96, label %bb97
bb96:
  %t533 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t534 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t533, i32 0, i32 1
  %t535 = load { i64, [4 x i64] }, ptr %t534
  store { i64, [4 x i64] } %t535, ptr %l33
  br label %bb98
bb97:
  br label %bb106
bb98:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t538 = load { i64, [4 x i64] }, ptr %l33
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t537, { i64, [4 x i64] } %t538)
  br label %bb99
bb99:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t543 = getelementptr %"compiler/mir:verifier", ptr %t541, i32 0, i32 17
  %t545 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t543)
  store i64 %t545, ptr %l260
  br label %bb100
bb100:
  %t546 = load i64, ptr %l260, !tbaa !24
  %t547 = icmp sgt i64 %t546, 0
  br i1 %t547, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s23
  %t549 = load ptr, ptr %l0, !tbaa !29
  store ptr %t549, ptr %l262, !tbaa !29
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackText(ptr %v0, ptr %s23, ptr %t550)
  store { i64, ptr } %t552, ptr %l264
  br label %bb103
bb102:
  br label %bb105
bb103:
  %t553 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t554 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t555 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t556 = extractvalue { i64, ptr } %t555, 1
  %t557 = extractvalue { i64, ptr } %t555, 0
  %t558 = add i64 %t554, %t557
  %t559 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t560 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t561 = add i64 %t558, %t560
  %t562 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t561)
  call void @olang_textcopy(ptr %t562, ptr %t553, i64 %t554)
  %t563 = getelementptr i8, ptr %t562, i64 %t554
  call void @olang_textcopy(ptr %t563, ptr %t556, i64 %t557)
  %t564 = getelementptr i8, ptr %t563, i64 %t557
  call void @olang_textcopy(ptr %t564, ptr %t559, i64 %t560)
  %t565 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t566 = insertvalue { i64, ptr } %t565, ptr %t562, 1
  %t568 = extractvalue { i64, ptr } %t566, 0
  %t569 = extractvalue { i64, ptr } %t566, 1
  %t570 = mul i64 %t568, 1
  %t571 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t570)
  call void @llvm.memcpy.p0.p0.i64(ptr %t571, ptr %t569, i64 %t570, i1 false)
  %t572 = insertvalue { i64, ptr } undef, i64 %t568, 0
  %t573 = insertvalue { i64, ptr } %t572, ptr %t571, 1
  %t574 = load ptr, ptr %l262, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s23, ptr %t574, { i64, ptr } %t573)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s23)
  br label %bb105
bb105:
  br label %bb147
bb106:
  %t576 = load { i64, [8 x i64] }, ptr %l1
  %t578 = extractvalue { i64, [8 x i64] } %t576, 0
  %t579 = icmp eq i64 %t578, 11
  br i1 %t579, label %bb107, label %bb108
bb107:
  %t581 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t582 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t581, i32 0, i32 1
  %t583 = load { i64, [4 x i64] }, ptr %t582
  store { i64, [4 x i64] } %t583, ptr %l34
  %t585 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t586 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t585, i32 0, i32 2
  %t587 = load i32, ptr %t586
  store i32 %t587, ptr %l35, !tbaa !23
  %t589 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t590 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t589, i32 0, i32 4
  %t591 = load i32, ptr %t590
  store i32 %t591, ptr %l36, !tbaa !23
  br label %bb109
bb108:
  br label %bb113
bb109:
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load { i64, [4 x i64] }, ptr %l34
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t593, { i64, [4 x i64] } %t594)
  br label %bb110
bb110:
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t598 = load i32, ptr %l36, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t597, i32 %t598)
  br label %bb111
bb111:
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load i32, ptr %l35, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t601, i32 %t602)
  br label %bb112
bb112:
  br label %bb147
bb113:
  %t605 = load { i64, [8 x i64] }, ptr %l1
  %t607 = extractvalue { i64, [8 x i64] } %t605, 0
  %t608 = icmp eq i64 %t607, 12
  br i1 %t608, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb123
bb116:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = getelementptr %"compiler/mir:verifier", ptr %t610, i32 0, i32 17
  %t614 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t612)
  store i64 %t614, ptr %l282
  br label %bb117
bb117:
  %t615 = load i64, ptr %l282, !tbaa !24
  %t616 = icmp sgt i64 %t615, 0
  br i1 %t616, label %bb118, label %bb119
bb118:
  store %olang.scope zeroinitializer, ptr %s27
  %t618 = load ptr, ptr %l0, !tbaa !29
  store ptr %t618, ptr %l284, !tbaa !29
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t621 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackText(ptr %v0, ptr %s27, ptr %t619)
  store { i64, ptr } %t621, ptr %l286
  br label %bb120
bb119:
  br label %bb122
bb120:
  %t622 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t623 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t624 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t625 = extractvalue { i64, ptr } %t624, 1
  %t626 = extractvalue { i64, ptr } %t624, 0
  %t627 = add i64 %t623, %t626
  %t628 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t629 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t630 = add i64 %t627, %t629
  %t631 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t630)
  call void @olang_textcopy(ptr %t631, ptr %t622, i64 %t623)
  %t632 = getelementptr i8, ptr %t631, i64 %t623
  call void @olang_textcopy(ptr %t632, ptr %t625, i64 %t626)
  %t633 = getelementptr i8, ptr %t632, i64 %t626
  call void @olang_textcopy(ptr %t633, ptr %t628, i64 %t629)
  %t634 = insertvalue { i64, ptr } undef, i64 %t630, 0
  %t635 = insertvalue { i64, ptr } %t634, ptr %t631, 1
  %t637 = extractvalue { i64, ptr } %t635, 0
  %t638 = extractvalue { i64, ptr } %t635, 1
  %t639 = mul i64 %t637, 1
  %t640 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t639)
  call void @llvm.memcpy.p0.p0.i64(ptr %t640, ptr %t638, i64 %t639, i1 false)
  %t641 = insertvalue { i64, ptr } undef, i64 %t637, 0
  %t642 = insertvalue { i64, ptr } %t641, ptr %t640, 1
  %t643 = load ptr, ptr %l284, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s27, ptr %t643, { i64, ptr } %t642)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s27)
  br label %bb122
bb122:
  br label %bb147
bb123:
  %t645 = load { i64, [8 x i64] }, ptr %l1
  %t647 = extractvalue { i64, [8 x i64] } %t645, 0
  %t648 = icmp eq i64 %t647, 9
  br i1 %t648, label %bb124, label %bb125
bb124:
  %t650 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t651 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t650, i32 0, i32 2
  %t652 = load { i64, [4 x i64] }, ptr %t651
  store { i64, [4 x i64] } %t652, ptr %l37
  br label %bb126
bb125:
  br label %bb128
bb126:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load { i64, [4 x i64] }, ptr %l37
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t654, { i64, [4 x i64] } %t655)
  br label %bb127
bb127:
  br label %bb147
bb128:
  %t658 = load { i64, [8 x i64] }, ptr %l1
  %t660 = extractvalue { i64, [8 x i64] } %t658, 0
  %t661 = icmp eq i64 %t660, 8
  br i1 %t661, label %bb129, label %bb130
bb129:
  %t663 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t664 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t663, i32 0, i32 1
  %t665 = load i32, ptr %t664
  store i32 %t665, ptr %l38, !tbaa !23
  %t667 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t668 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t667, i32 0, i32 2
  %t669 = load i32, ptr %t668
  store i32 %t669, ptr %l39, !tbaa !23
  %t671 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t672 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t671, i32 0, i32 3
  %t673 = load i32, ptr %t672
  store i32 %t673, ptr %l40, !tbaa !23
  %t675 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t676 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t675, i32 0, i32 4
  %t677 = load i32, ptr %t676
  store i32 %t677, ptr %l41, !tbaa !23
  br label %bb131
bb130:
  br label %bb142
bb131:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t680 = load i32, ptr %l38, !tbaa !23
  %t683 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %t679, i32 %t680)
  store i1 %t683, ptr %l302
  br label %bb132
bb132:
  %t684 = load i1, ptr %l302, !tbaa !21
  %t685 = xor i1 %t684, true
  br i1 %t685, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s31
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t688 = load i32, ptr %l38, !tbaa !23
  %t689 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t690 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t692 = sext i32 %t688 to i64
  %t693 = call i64 @__olang_fmt_i64(ptr null, i64 %t692)
  %t694 = add i64 %t690, %t693
  %t695 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t696 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t697 = add i64 %t694, %t696
  %t698 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t697)
  call void @olang_textcopy(ptr %t698, ptr %t689, i64 %t690)
  %t699 = getelementptr i8, ptr %t698, i64 %t690
  %t700 = call i64 @__olang_fmt_i64(ptr %t699, i64 %t692)
  %t701 = getelementptr i8, ptr %t699, i64 %t693
  call void @olang_textcopy(ptr %t701, ptr %t695, i64 %t696)
  %t702 = insertvalue { i64, ptr } undef, i64 %t697, 0
  %t703 = insertvalue { i64, ptr } %t702, ptr %t698, 1
  %t705 = extractvalue { i64, ptr } %t703, 0
  %t706 = extractvalue { i64, ptr } %t703, 1
  %t707 = mul i64 %t705, 1
  %t708 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t707)
  call void @llvm.memcpy.p0.p0.i64(ptr %t708, ptr %t706, i64 %t707, i1 false)
  %t709 = insertvalue { i64, ptr } undef, i64 %t705, 0
  %t710 = insertvalue { i64, ptr } %t709, ptr %t708, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s31, ptr %t687, { i64, ptr } %t710)
  br label %bb135
bb134:
  br label %bb136
bb135:
  call void @__olang_scope_close(ptr %s31)
  br label %bb136
bb136:
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t715 = getelementptr %"compiler/mir:verifier", ptr %t713, i32 0, i32 16
  %t716 = load { i64, ptr }, ptr %t715, !tbaa !27
  store { i64, ptr } %t716, ptr %l309, !tbaa !27
  %t717 = load i32, ptr %l38, !tbaa !23
  %t719 = sext i32 %t717 to i64
  %t721 = getelementptr { i64, ptr }, ptr %l309, i32 0, i32 1
  %t722 = load ptr, ptr %t721, !tbaa !27
  %t723 = getelementptr i1, ptr %t722, i64 %t719
  store i1 false, ptr %t723, !tbaa !31
  %t724 = load i32, ptr %l41, !tbaa !23
  %t725 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t728 = icmp ne i32 %t724, %t725
  br i1 %t728, label %bb137, label %bb138
bb137:
  %t730 = load ptr, ptr %l0, !tbaa !29
  %t732 = getelementptr %"compiler/mir:verifier", ptr %t730, i32 0, i32 14
  %t733 = load { i64, ptr }, ptr %t732, !tbaa !27
  store { i64, ptr } %t733, ptr %l316, !tbaa !27
  %t734 = load i32, ptr %l40, !tbaa !23
  %t736 = sext i32 %t734 to i64
  %t738 = getelementptr { i64, ptr }, ptr %l316, i32 0, i32 1
  %t739 = load ptr, ptr %t738, !tbaa !27
  %t740 = getelementptr i1, ptr %t739, i64 %t736
  %t741 = load i1, ptr %t740, !tbaa !31
  store i1 %t741, ptr %l42, !tbaa !21
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t745 = getelementptr %"compiler/mir:verifier", ptr %t743, i32 0, i32 14
  %t746 = load { i64, ptr }, ptr %t745, !tbaa !27
  store { i64, ptr } %t746, ptr %l321, !tbaa !27
  %t747 = load i32, ptr %l40, !tbaa !23
  %t749 = sext i32 %t747 to i64
  %t751 = getelementptr { i64, ptr }, ptr %l321, i32 0, i32 1
  %t752 = load ptr, ptr %t751, !tbaa !27
  %t753 = getelementptr i1, ptr %t752, i64 %t749
  store i1 true, ptr %t753, !tbaa !31
  %t754 = load ptr, ptr %l0, !tbaa !29
  %t755 = load i32, ptr %l41, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t754, i32 %t755)
  br label %bb139
bb138:
  br label %bb140
bb139:
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = getelementptr %"compiler/mir:verifier", ptr %t758, i32 0, i32 14
  %t761 = load { i64, ptr }, ptr %t760, !tbaa !27
  store { i64, ptr } %t761, ptr %l327, !tbaa !27
  %t762 = load i32, ptr %l40, !tbaa !23
  %t764 = sext i32 %t762 to i64
  %t765 = load i1, ptr %l42, !tbaa !21
  %t768 = getelementptr { i64, ptr }, ptr %l327, i32 0, i32 1
  %t769 = load ptr, ptr %t768, !tbaa !27
  %t770 = getelementptr i1, ptr %t769, i64 %t764
  store i1 %t765, ptr %t770, !tbaa !31
  br label %bb140
bb140:
  %t771 = load ptr, ptr %l0, !tbaa !29
  %t772 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t771, i32 %t772)
  br label %bb141
bb141:
  br label %bb147
bb142:
  br i1 true, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb146
bb145:
  br label %bb147
bb146:
  call void @__olang_check_failed(ptr @olang_loc_d66c95c574566df8_862c2f5cde7f4614)
  unreachable
bb147:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l7 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v2, ptr %t1, i32 %t2, i32 %t3)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l9, !tbaa !29
  store { i64, ptr } %a3, ptr %l10, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v2, ptr %t13, i32 %t14)
  store { i64, ptr } %t17, ptr %l13
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v2, ptr %t18, i32 %t19)
  store { i64, ptr } %t22, ptr %l16
  br label %bb5
bb5:
  %t23 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = add i64 %t28, %t31
  %t33 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t36 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t24, i64 %t25)
  %t44 = getelementptr i8, ptr %t43, i64 %t25
  call void @olang_textcopy(ptr %t44, ptr %t26, i64 %t27)
  %t45 = getelementptr i8, ptr %t44, i64 %t27
  call void @olang_textcopy(ptr %t45, ptr %t30, i64 %t31)
  %t46 = getelementptr i8, ptr %t45, i64 %t31
  call void @olang_textcopy(ptr %t46, ptr %t33, i64 %t34)
  %t47 = getelementptr i8, ptr %t46, i64 %t34
  call void @olang_textcopy(ptr %t47, ptr %t37, i64 %t38)
  %t48 = getelementptr i8, ptr %t47, i64 %t38
  call void @olang_textcopy(ptr %t48, ptr %t40, i64 %t41)
  %t49 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t43, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = extractvalue { i64, ptr } %t50, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t58 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t58, { i64, ptr } %t57)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2eexpect(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %s0 = alloca %olang.scope
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v1, ptr %v0, ptr %s0, ptr %a1, ptr %a0)
  store { i64, ptr } %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %v2, { i64, ptr } %t7, { i64, ptr } %t8)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l11
  br label %bb2
bb2:
  %t16 = load i64, ptr %l11, !tbaa !24
  store i64 %t16, ptr %l8, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t20 = icmp sge i64 %t17, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t27 = extractvalue { i64, ptr } %t22, 1
  %t28 = extractvalue { i64, ptr } %t22, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t34 = extractvalue { i64, ptr } %t23, 1
  %t35 = extractvalue { i64, ptr } %t23, 0
  %t36 = add i64 %t32, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t24, i64 %t25)
  %t38 = getelementptr i8, ptr %t37, i64 %t25
  call void @olang_textcopy(ptr %t38, ptr %t27, i64 %t28)
  %t39 = getelementptr i8, ptr %t38, i64 %t28
  call void @olang_textcopy(ptr %t39, ptr %t30, i64 %t31)
  %t40 = getelementptr i8, ptr %t39, i64 %t31
  call void @olang_textcopy(ptr %t40, ptr %t34, i64 %t35)
  %t41 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t37, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = extractvalue { i64, ptr } %t49, 0
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  call void @__olang_check_failed_text(ptr @olang_loc_2787a88b0b468961_ce97027662ecd8ed, { i64, ptr } %t54)
  unreachable
ret:
  ret void
}

define dso_local void @compiler_2fmir_3aGenInfo_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"compiler/mir:GenInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l7, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l7
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l9
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l7
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr %t18
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = icmp eq ptr %t30, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l0
  %t33 = ptrtoint ptr %v0 to i64
  store i64 %t33, ptr %l11, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e1
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = call ptr @__olang_region_make(ptr %v0)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l11
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e(ptr %t39)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l13
  br label %bb8
bb8:
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e1
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l11
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr %t50
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr %t56
  %t63 = icmp eq ptr %t62, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t63)
  br label %bb10
bb10:
  %t64 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t64, ptr %l1
  %t65 = ptrtoint ptr %v0 to i64
  store i64 %t65, ptr %l15, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e2
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = call ptr @__olang_region_make(ptr %v0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l15, !tbaa !24
  br label %bb12
bb12:
  %t70 = load i64, ptr %l15
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t71)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %l17
  br label %bb13
bb13:
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e2
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = load i64, ptr %l15
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr %t82
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr %t88
  %t95 = icmp eq ptr %t94, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t95)
  br label %bb15
bb15:
  %t96 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %l2
  %t97 = ptrtoint ptr %v0 to i64
  store i64 %t97, ptr %l19, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e3
  br i1 %t98, label %bb16, label %bb17
bb16:
  %t100 = call ptr @__olang_region_make(ptr %v0)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l19, !tbaa !24
  br label %bb17
bb17:
  %t102 = load i64, ptr %l19
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t103)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t104, ptr %l21
  br label %bb18
bb18:
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e3
  br i1 %t105, label %bb19, label %bb20
bb19:
  %t107 = load i64, ptr %l19
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr %t114
  %t121 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = call ptr @__olang_region_or(ptr %t123, ptr null)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr %t120
  %t127 = icmp eq ptr %t126, %t108
  call void @__olang_region_settle(ptr %t108, i1 %t127)
  br label %bb20
bb20:
  %t128 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t128, ptr %l3
  %t129 = ptrtoint ptr %v0 to i64
  store i64 %t129, ptr %l23, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e4
  br i1 %t130, label %bb21, label %bb22
bb21:
  %t132 = call ptr @__olang_region_make(ptr %v0)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l23, !tbaa !24
  br label %bb22
bb22:
  %t134 = load i64, ptr %l23
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3cI64_3e_26_3e(ptr %t135)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t136, ptr %l25
  br label %bb23
bb23:
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e4
  br i1 %t137, label %bb24, label %bb25
bb24:
  %t139 = load i64, ptr %l23
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 2
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr null
  %t147 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = call ptr @__olang_region_or(ptr %t149, ptr null)
  %t151 = icmp ne ptr %t150, null
  %t152 = select i1 %t151, ptr %t150, ptr %t146
  %t153 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25, i32 0, i32 0
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr %t152
  %t159 = icmp eq ptr %t158, %t140
  call void @__olang_region_settle(ptr %t140, i1 %t159)
  br label %bb25
bb25:
  %t160 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t160, ptr %l4
  %t161 = ptrtoint ptr %v0 to i64
  store i64 %t161, ptr %l27, !tbaa !24
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e5
  br i1 %t162, label %bb26, label %bb27
bb26:
  %t164 = call ptr @__olang_region_make(ptr %v0)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l27, !tbaa !24
  br label %bb27
bb27:
  %t166 = load i64, ptr %l27
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t167, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l29
  br label %bb28
bb28:
  %t169 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aGenInfo_2e5
  br i1 %t169, label %bb29, label %bb30
bb29:
  %t171 = load i64, ptr %l27
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = call ptr @__olang_region_or(ptr %t175, ptr null)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr null
  %t179 = icmp eq ptr %t178, %t172
  call void @__olang_region_settle(ptr %t172, i1 %t179)
  br label %bb30
bb30:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t181 = getelementptr %"compiler/mir:GenInfo", ptr %l31, i32 0, i32 0
  %t182 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t182, ptr %t181
  %t183 = getelementptr %"compiler/mir:GenInfo", ptr %l31, i32 0, i32 1
  %t184 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t184, ptr %t183
  %t185 = getelementptr %"compiler/mir:GenInfo", ptr %l31, i32 0, i32 2
  %t186 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t186, ptr %t185
  %t187 = getelementptr %"compiler/mir:GenInfo", ptr %l31, i32 0, i32 3
  %t188 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t188, ptr %t187
  %t189 = getelementptr %"compiler/mir:GenInfo", ptr %l31, i32 0, i32 4
  %t190 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t190, ptr %t189
  %t191 = getelementptr %"compiler/mir:GenInfo", ptr %l31, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %t191
  %t193 = getelementptr %"compiler/mir:GenInfo", ptr %l31, i32 0, i32 6
  store i64 0, ptr %t193, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l31, i64 400, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/mir:StmtList" @compiler_2fmir_3aStmtList_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/mir:StmtList"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/mir:StmtList" undef, { i64, ptr } zeroinitializer, 0
  %t4 = insertvalue %"compiler/mir:StmtList" %t2, i64 0, 1
  store %"compiler/mir:StmtList" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:StmtList", ptr %rv
  ret %"compiler/mir:StmtList" %rr
}

define dso_local void @compiler_2fmir_3averifier_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca i64
  %l31 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca i64
  %l48 = alloca i64
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i64
  %l61 = alloca i64
  %l65 = alloca i64
  %l69 = alloca i64
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"compiler/mir:verifier"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store ptr %a1, ptr %l3, !tbaa !29
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l23, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l23, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l23
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t11)
  store %"std/prelude/text:StringBuilder" %t12, ptr %l25
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l23
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/text:StringBuilder", ptr %l25, i32 0, i32 0
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = call ptr @__olang_region_or(ptr %t20, ptr null)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/text:StringBuilder", ptr %l25
  store %"std/prelude/text:StringBuilder" %t25, ptr %l4
  store i64 -1, ptr %l5, !tbaa !24
  store i64 -1, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  %t26 = ptrtoint ptr %v2 to i64
  store i64 %t26, ptr %l27, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e6
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = call ptr @__olang_region_make(ptr %v2)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t31 = icmp sge i64 0, 0
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = mul i64 0, 1
  %t34 = load i64, ptr %l27
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = insertvalue { i64, ptr } undef, i64 0, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t37, ptr %l8, !tbaa !27
  %t39 = ptrtoint ptr %v2 to i64
  store i64 %t39, ptr %l31, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e7
  br i1 %t40, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_5380db3ec2a99a3_371ccfada9fdfeef)
  unreachable
bb10:
  %t42 = call ptr @__olang_region_make(ptr %v2)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l31, !tbaa !24
  br label %bb11
bb11:
  %t44 = icmp sge i64 0, 0
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = mul i64 0, 1
  %t47 = load i64, ptr %l31
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = insertvalue { i64, ptr } undef, i64 0, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t50, ptr %l9, !tbaa !27
  %t52 = ptrtoint ptr %v2 to i64
  store i64 %t52, ptr %l35, !tbaa !24
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e8
  br i1 %t53, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_5983d076d5883d2e_1665ff00cbce2e1a)
  unreachable
bb14:
  %t55 = call ptr @__olang_region_make(ptr %v2)
  %t56 = ptrtoint ptr %t55 to i64
  store i64 %t56, ptr %l35, !tbaa !24
  br label %bb15
bb15:
  %t57 = icmp sge i64 0, 0
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t59 = mul i64 0, 1
  %t60 = load i64, ptr %l35
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = insertvalue { i64, ptr } undef, i64 0, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t63, ptr %l10, !tbaa !27
  %t65 = ptrtoint ptr %v2 to i64
  store i64 %t65, ptr %l39, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e9
  br i1 %t66, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_910dd2c5a789172d_f03cfbb9736a8799)
  unreachable
bb18:
  %t68 = call ptr @__olang_region_make(ptr %v2)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l39, !tbaa !24
  br label %bb19
bb19:
  %t70 = icmp sge i64 0, 0
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = mul i64 0, 1
  %t73 = load i64, ptr %l39
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = insertvalue { i64, ptr } undef, i64 0, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t76, ptr %l11, !tbaa !27
  %t78 = ptrtoint ptr %v2 to i64
  store i64 %t78, ptr %l43, !tbaa !24
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e10
  br i1 %t79, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_2a1e3324a3ced000_b715b4216485c88c)
  unreachable
bb22:
  %t81 = call ptr @__olang_region_make(ptr %v2)
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l43, !tbaa !24
  br label %bb23
bb23:
  %t83 = icmp sge i64 0, 0
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t85 = icmp sle i64 0, 1152921504606846975
  br i1 %t85, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_424aba850193e62f_5d41a9f8bd7e1e63)
  unreachable
bb26:
  %t87 = mul i64 0, 8
  %t88 = load i64, ptr %l43
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = insertvalue { i64, ptr } undef, i64 0, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t91, ptr %l12, !tbaa !27
  %t93 = ptrtoint ptr %v2 to i64
  store i64 %t93, ptr %l48, !tbaa !24
  %t94 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e11
  br i1 %t94, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_424aba850193e62f_5d41a9f8bd7e1e63)
  unreachable
bb28:
  %t96 = call ptr @__olang_region_make(ptr %v2)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l48, !tbaa !24
  br label %bb29
bb29:
  %t98 = icmp sge i64 0, 0
  br i1 %t98, label %bb30, label %bb31
bb30:
  %t100 = icmp sle i64 0, 1152921504606846975
  br i1 %t100, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_26e15834dfadce5a_40849b88d9a51eee)
  unreachable
bb32:
  %t102 = mul i64 0, 8
  %t103 = load i64, ptr %l48
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = insertvalue { i64, ptr } undef, i64 0, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t106, ptr %l13, !tbaa !27
  %t108 = ptrtoint ptr %v2 to i64
  store i64 %t108, ptr %l53, !tbaa !24
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e12
  br i1 %t109, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_26e15834dfadce5a_40849b88d9a51eee)
  unreachable
bb34:
  %t111 = call ptr @__olang_region_make(ptr %v2)
  %t112 = ptrtoint ptr %t111 to i64
  store i64 %t112, ptr %l53, !tbaa !24
  br label %bb35
bb35:
  %t113 = load i64, ptr %l53
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %t114, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l55
  br label %bb36
bb36:
  %t116 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e12
  br i1 %t116, label %bb37, label %bb38
bb37:
  %t118 = load i64, ptr %l53
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55, i32 0, i32 0
  %t121 = load { i64, ptr }, ptr %t120
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr null
  %t126 = icmp eq ptr %t125, %t119
  call void @__olang_region_settle(ptr %t119, i1 %t126)
  br label %bb38
bb38:
  %t127 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %l14
  %t128 = ptrtoint ptr %v2 to i64
  store i64 %t128, ptr %l57, !tbaa !24
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e13
  br i1 %t129, label %bb39, label %bb40
bb39:
  %t131 = call ptr @__olang_region_make(ptr %v2)
  %t132 = ptrtoint ptr %t131 to i64
  store i64 %t132, ptr %l57, !tbaa !24
  br label %bb40
bb40:
  %t133 = icmp sge i64 0, 0
  br i1 %t133, label %bb41, label %bb42
bb41:
  %t135 = mul i64 0, 1
  %t136 = load i64, ptr %l57
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = insertvalue { i64, ptr } undef, i64 0, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t139, ptr %l15, !tbaa !27
  %t141 = ptrtoint ptr %v2 to i64
  store i64 %t141, ptr %l61, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e14
  br i1 %t142, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_390ccbe637d1d3d9_30a6ef9f1a3ec7ed)
  unreachable
bb43:
  %t144 = call ptr @__olang_region_make(ptr %v2)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l61, !tbaa !24
  br label %bb44
bb44:
  %t146 = icmp sge i64 0, 0
  br i1 %t146, label %bb45, label %bb46
bb45:
  %t148 = mul i64 0, 1
  %t149 = load i64, ptr %l61
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = insertvalue { i64, ptr } undef, i64 0, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t152, ptr %l16, !tbaa !27
  %t154 = ptrtoint ptr %v2 to i64
  store i64 %t154, ptr %l65, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e15
  br i1 %t155, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_1f26baa5abf820cc_81869963bb6d62c0)
  unreachable
bb47:
  %t157 = call ptr @__olang_region_make(ptr %v2)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l65, !tbaa !24
  br label %bb48
bb48:
  %t159 = icmp sge i64 0, 0
  br i1 %t159, label %bb49, label %bb50
bb49:
  %t161 = mul i64 0, 1
  %t162 = load i64, ptr %l65
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = insertvalue { i64, ptr } undef, i64 0, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t165, ptr %l17, !tbaa !27
  %t167 = ptrtoint ptr %v2 to i64
  store i64 %t167, ptr %l69, !tbaa !24
  %t168 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e16
  br i1 %t168, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_200617782b41aa6b_62fe98f9543f67b7)
  unreachable
bb51:
  %t170 = call ptr @__olang_region_make(ptr %v2)
  %t171 = ptrtoint ptr %t170 to i64
  store i64 %t171, ptr %l69, !tbaa !24
  br label %bb52
bb52:
  %t172 = icmp sge i64 0, 0
  br i1 %t172, label %bb53, label %bb54
bb53:
  %t174 = mul i64 0, 1
  %t175 = load i64, ptr %l69
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = insertvalue { i64, ptr } undef, i64 0, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t178, ptr %l18, !tbaa !27
  %t180 = ptrtoint ptr %v2 to i64
  store i64 %t180, ptr %l73, !tbaa !24
  %t181 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e17
  br i1 %t181, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_d8b0f1b6ba5e5556_5a69466de52f9302)
  unreachable
bb55:
  %t183 = call ptr @__olang_region_make(ptr %v2)
  %t184 = ptrtoint ptr %t183 to i64
  store i64 %t184, ptr %l73, !tbaa !24
  br label %bb56
bb56:
  %t185 = load i64, ptr %l73
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %t186, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l75
  br label %bb57
bb57:
  %t188 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e17
  br i1 %t188, label %bb58, label %bb59
bb58:
  %t190 = load i64, ptr %l73
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75, i32 0, i32 0
  %t193 = load { i64, ptr }, ptr %t192
  %t194 = extractvalue { i64, ptr } %t193, 1
  %t195 = call ptr @__olang_region_or(ptr %t194, ptr null)
  %t196 = icmp ne ptr %t195, null
  %t197 = select i1 %t196, ptr %t195, ptr null
  %t198 = icmp eq ptr %t197, %t191
  call void @__olang_region_settle(ptr %t191, i1 %t198)
  br label %bb59
bb59:
  %t199 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  %t200 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 0
  %t201 = load ptr, ptr %l2, !tbaa !29
  store ptr %t201, ptr %t200, !tbaa !29
  %t202 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 1
  %t203 = load ptr, ptr %l3, !tbaa !29
  store ptr %t203, ptr %t202, !tbaa !29
  %t204 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 2
  %t205 = load %"std/prelude/text:StringBuilder", ptr %l4
  store %"std/prelude/text:StringBuilder" %t205, ptr %t204
  %t206 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 3
  %t207 = load i64, ptr %l5, !tbaa !24
  store i64 %t207, ptr %t206, !tbaa !24
  %t208 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 4
  %t209 = load i64, ptr %l6, !tbaa !24
  store i64 %t209, ptr %t208, !tbaa !24
  %t210 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 5
  %t211 = load i1, ptr %l7, !tbaa !21
  store i1 %t211, ptr %t210, !tbaa !21
  %t212 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 6
  %t213 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t213, ptr %t212, !tbaa !27
  %t214 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 7
  %t215 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t215, ptr %t214, !tbaa !27
  %t216 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 8
  %t217 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t217, ptr %t216, !tbaa !27
  %t218 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 9
  %t219 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t219, ptr %t218, !tbaa !27
  %t220 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 10
  %t221 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t221, ptr %t220, !tbaa !27
  %t222 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 11
  %t223 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t223, ptr %t222, !tbaa !27
  %t224 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 12
  %t225 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t225, ptr %t224
  %t226 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 13
  %t227 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t227, ptr %t226, !tbaa !27
  %t228 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 14
  %t229 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t229, ptr %t228, !tbaa !27
  %t230 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 15
  %t231 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t231, ptr %t230, !tbaa !27
  %t232 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 16
  %t233 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t233, ptr %t232, !tbaa !27
  %t234 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t199, ptr %t234
  %t236 = getelementptr %"compiler/mir:verifier", ptr %l77, i32 0, i32 18
  store i1 false, ptr %t236, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l77, i64 304, i1 false)
  br label %ret
ret:
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
declare void @__olang_check_failed(ptr) cold noreturn
declare ptr @__olang_scope_or(ptr, ptr)
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" bb" }>, align 8
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
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"copy " }>, align 8
@.d5 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"const " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d7 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"data " }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"V" }>, align 8
@.d13 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"program" }>, align 8
@.d14 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"frame" }>, align 8
@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"held(L" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ref " }>, align 8
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d19 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"take " }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb10:
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb11:
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  br label %bb1
bb12:
  %t25 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  br label %bb1
bb13:
  %t27 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t27, i64 %t28)
  br label %bb1
bb14:
  %t29 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  br label %bb1
bb15:
  %t31 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb16:
  %t33 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb17:
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  br label %bb1
bb18:
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  br label %bb1
bb19:
  %t39 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb20:
  %t41 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  br label %bb1
bb21:
  %t43 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  br label %bb1
bb22:
  %t45 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t45, i64 %t46)
  br label %bb1
bb23:
  %t47 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb24:
  %t49 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
bb25:
  %t51 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t51, i64 %t52)
  br label %bb1
bb26:
  %t53 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  br label %bb1
bb27:
  %t55 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb28:
  %t57 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  br label %bb1
bb29:
  %t59 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  br label %bb1
bb30:
  %t61 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t61, i64 %t62)
  br label %bb1
bb31:
  %t63 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t63, i64 %t64)
  br label %bb1
bb32:
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t65, i64 %t66)
  br label %bb1
bb33:
  %t67 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t67, i64 %t68)
  br label %bb1
bb34:
  %t69 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t69, i64 %t70)
  br label %bb1
bb35:
  %t71 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t71, i64 %t72)
  br label %bb1
bb36:
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t73, i64 %t74)
  br label %bb1
bb37:
  %t75 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t75, i64 %t76)
  br label %bb1
bb38:
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t77, i64 %t78)
  br label %bb1
bb39:
  %t79 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  br label %bb1
bb40:
  %t81 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t81, i64 %t82)
  br label %bb1
bb41:
  %t83 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t83, i64 %t84)
  br label %bb1
bb42:
  %t85 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t85, i64 %t86)
  br label %bb1
bb43:
  %t87 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t87, i64 %t88)
  br label %bb1
bb44:
  %t89 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t89, i64 %t90)
  br label %bb1
bb45:
  %t91 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t91, i64 %t92)
  br label %bb1
bb46:
  %t93 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t93, i64 %t94)
  br label %bb1
bb47:
  %t95 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t95, i64 %t96)
  br label %bb1
bb48:
  %t97 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t97, i64 %t98)
  br label %bb1
bb49:
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t99, i64 %t100)
  br label %bb1
bb50:
  %t101 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t101, i64 %t102)
  br label %bb1
bb51:
  %t103 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb52:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  br label %bb1
bb53:
  %t107 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d23 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"overflows " }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"tag " }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" #" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"make " }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d33 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"new in " }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d35 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d36 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"newarray in " }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d39 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"slice " }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d43 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" : " }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"]: " }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" captures " }>, align 8
@.d47 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"closure " }>, align 8
@.d48 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d52 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"recode " }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" from " }>, align 8
@.d54 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d55 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"text " }>, align 8
@.d56 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d57 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d58 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"region in " }>, align 8
@.d59 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"region of " }>, align 8
@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" or " }>, align 8
@.d61 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"scope of " }>, align 8
@.d62 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"scope " }>, align 8
@.d63 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" or of " }>, align 8
@.d64 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"payload push" }>, align 8
@.d65 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"sole place " }>, align 8
@.d66 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"handle of " }>, align 8
@.d67 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"payload top: " }>, align 8
@.d68 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"weak " }>, align 8
@.d69 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d70 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"weak word " }>, align 8
@.d71 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"built in S" }>, align 8
@.d72 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c", which is not open" }>, align 8
@.d73 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"built in S" }>, align 8
@.d74 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", which is inert" }>, align 8
@.d75 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"a dispatch through a " }>, align 8
@.d76 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a call of a " }>, align 8
@.d77 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", not a function" }>, align 8
@.d78 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"enters bb" }>, align 8
@.d79 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" with scopes " }>, align 8
@.d80 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", where another path has " }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d82 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d83 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" parts made of " }>, align 8
@.d84 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"part " }>, align 8
@.d85 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"scopes" }>, align 8
@.d86 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a slice " }>, align 8
@.d87 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
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
@.d88 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"a slice's bound that is no integer" }>, align 8
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d90 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" opened while it is open" }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d92 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" opened in " }>, align 8
@.d93 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", not in its parent " }>, align 8
@.d94 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"closed" }>, align 8
@.d95 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"join S" }>, align 8
@.d96 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" closed with tasks not waited for" }>, align 8
@.d97 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a spawn into S" }>, align 8
@.d98 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c", which is not open" }>, align 8
@.d99 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"deferred code registered at S" }>, align 8
@.d100 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c", which is not open" }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d102 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c" stored into with no storage: its Live not reached" }>, align 8
@.d103 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d104 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c" given an error code with no storage" }>, align 8
@.d105 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"jumps out of the function with " }>, align 8
@.d106 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" open" }>, align 8
@.d107 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"leaves the function with " }>, align 8
@.d108 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" open" }>, align 8
@.d109 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ends a dropped walk with " }>, align 8
@.d110 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" open" }>, align 8
@.d111 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a wait for S" }>, align 8
@.d112 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c", which is not open" }>, align 8
@.d113 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" is a " }>, align 8
@.d114 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", where a " }>, align 8
@.d115 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" is wanted" }>, align 8
@.d116 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"wanted '" }>, align 8
@.d117 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"' among:\0A" }>, align 8
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
@olang_2esole_2ecompiler_2fmir_3aGenInfo_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fmir_3aGenInfo_2e1 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fmir_3aGenInfo_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aGenInfo_2e3 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fmir_3aGenInfo_2e4 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3cI64_3e_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3cI64_3e_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fmir_3aGenInfo_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e2 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fmir_3averifier_2e6 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2ecompiler_2fmir_3averifier_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e17 = weak hidden constant i1 false
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
@.d118 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Neg" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d119 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitNot" }>, align 8
@.d120 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Not" }>, align 8
@.d121 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Add" }>, align 8
@.d122 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Sub" }>, align 8
@.d123 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Mul" }>, align 8
@.d124 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Div" }>, align 8
@.d125 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Rem" }>, align 8
@.d126 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shl" }>, align 8
@.d127 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shr" }>, align 8
@.d128 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitAnd" }>, align 8
@.d129 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.BitOr" }>, align 8
@.d130 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitXor" }>, align 8
@.d131 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Eq" }>, align 8
@.d132 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ne" }>, align 8
@.d133 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Lt" }>, align 8
@.d134 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Le" }>, align 8
@.d135 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Gt" }>, align 8
@.d136 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ge" }>, align 8
@.d137 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Same" }>, align 8
@.d138 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Convert" }>, align 8
@.d139 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Bitcast" }>, align 8
@.d140 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Len" }>, align 8
@.d141 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.IsCase" }>, align 8
@.d142 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicLoad" }>, align 8
@.d143 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AtomicStore" }>, align 8
@.d144 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.AtomicAdd" }>, align 8
@.d145 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicSwap" }>, align 8
@.d146 = private unnamed_addr constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"typed.PrimOp.AtomicCompareSwap" }>, align 8
@.d147 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Retire" }>, align 8
@.d148 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Drop" }>, align 8
@.d149 = private unnamed_addr constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"typed.PrimOp.LeadingZeros" }>, align 8
@.d150 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.PrimOp.TrailingZeros" }>, align 8
@.d151 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.PopCount" }>, align 8
@.d152 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.RotateLeft" }>, align 8
@.d153 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.RotateRight" }>, align 8
@.d154 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ByteSwap" }>, align 8
@.d155 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.Holds" }>, align 8
@.d156 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.LaneLen" }>, align 8
@.d157 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.NonEmpty" }>, align 8
@.d158 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Unpack" }>, align 8
@.d159 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Repack" }>, align 8
@.d160 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.AnyMake" }>, align 8
@.d161 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AnyInstance" }>, align 8
@.d162 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.AnyIs" }>, align 8
@.d163 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.ErrPush" }>, align 8
@.d164 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.ErrCaught" }>, align 8
@.d165 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ErrTaken" }>, align 8
@.d166 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatAdd" }>, align 8
@.d167 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatSub" }>, align 8
@.d168 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatMul" }>, align 8
@.d169 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatShl" }>, align 8
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %v0, { i64, [2 x i64] } %a0, %"compiler/mir:Range" %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_419ac27aa82c7b2c_45256e944a6f3408 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eLen_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2ePush_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, %"compiler/mir:Case" %a1)
declare %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2enote(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_4b3ff56260a2bca0_3dcb0434d488ed4c = external constant [0 x i8]
@olang_loc_3c759898227385e0_43502750c3b6307c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmir_2eshort(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Range" %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ekey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2elist(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_55b2be13c853614c_e5b496909f3a0f10 = external constant [0 x i8]
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a15aa4830130cc38_9fcdb454ad4b970c = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1)
@olang_loc_43daeee16a7347fc_3936ff71893c42a0 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [4 x i64] } %a1)
@olang_loc_690174ade0b6e824_1aa5c898f3f73ab8 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_b20acbf668615715_202a9ab5dba06089 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackText(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2, { i64, ptr } %a3)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueFlow(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ename(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2epop(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeReads(ptr %v0, ptr %v1, ptr %a0, { i64, [7 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_30c75e8686103aec_2a803509807dc2e8 = external constant [0 x i8]
@olang_loc_8c773ec7d9409528_6b556770aed18854 = external constant [0 x i8]
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d66c95c574566df8_862c2f5cde7f4614 = external constant [0 x i8]
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_2787a88b0b468961_ce97027662ecd8ed = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_5380db3ec2a99a3_371ccfada9fdfeef = external constant [0 x i8]
@olang_loc_5983d076d5883d2e_1665ff00cbce2e1a = external constant [0 x i8]
@olang_loc_910dd2c5a789172d_f03cfbb9736a8799 = external constant [0 x i8]
@olang_loc_2a1e3324a3ced000_b715b4216485c88c = external constant [0 x i8]
@olang_loc_424aba850193e62f_5d41a9f8bd7e1e63 = external constant [0 x i8]
@olang_loc_26e15834dfadce5a_40849b88d9a51eee = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_390ccbe637d1d3d9_30a6ef9f1a3ec7ed = external constant [0 x i8]
@olang_loc_1f26baa5abf820cc_81869963bb6d62c0 = external constant [0 x i8]
@olang_loc_200617782b41aa6b_62fe98f9543f67b7 = external constant [0 x i8]
@olang_loc_d8b0f1b6ba5e5556_5a69466de52f9302 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3cI64_3e_26_3e_2ector(ptr %v0)

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
