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
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:dumper" = type { ptr, ptr, %"std/prelude/text:StringBuilder" }
%"compiler/mir:verifier" = type { ptr, ptr, %"std/prelude/text:StringBuilder", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
define dso_local i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l10 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l10
  br label %bb5
bb5:
  %t15 = load i32, ptr %l10, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t23 = trunc i64 24 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l19
  br label %bb9
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb10
bb9:
  %t36 = load i32, ptr %l19, !tbaa !23
  store i32 %t36, ptr %l16, !tbaa !23
  br label %bb11
bb10:
  %t37 = load i32, ptr %l22, !tbaa !23
  store i32 %t37, ptr %l16, !tbaa !23
  br label %bb11
bb11:
  %t38 = load i32, ptr %l16, !tbaa !23
  store i32 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2eGuardOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca i1
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l30 = alloca i1
  %l32 = alloca { i64, ptr }
  %l34 = alloca i32
  %l39 = alloca { i64, ptr }
  %l41 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t8 = trunc i64 22 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l13
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l10, !tbaa !29
  %t22 = load i32, ptr %l13, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t21, i32 %t22)
  store { i64, ptr } %t23, ptr %l14
  br label %bb6
bb6:
  %t24 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t24, ptr %l2, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t29 = icmp ne i64 %t27, 2
  br i1 %t29, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l20, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i32, ptr %t34, i64 0
  %t36 = load i32, ptr %t35, !tbaa !33
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t31, i32 %t36)
  store i1 %t39, ptr %l22
  br label %bb9
bb9:
  %t40 = load i1, ptr %l22, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l18, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb14
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t45, ptr %l26, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i32, ptr %t47, i64 1
  %t49 = load i32, ptr %t48, !tbaa !33
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t44, i32 %t49)
  store i1 %t52, ptr %l28
  br label %bb13
bb13:
  %t53 = load i1, ptr %l28, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l24, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb18
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t58, ptr %l32, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 0
  %t62 = load i32, ptr %t61, !tbaa !33
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t57, i32 %t62)
  store i32 %t65, ptr %l34
  br label %bb17
bb17:
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t67 = load i32, ptr %l34, !tbaa !23
  %t69 = icmp ne i32 %t67, %t66
  store i1 %t69, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t71 = load i1, ptr %l30, !tbaa !21
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t72, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t75, ptr %l39, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 1
  %t79 = load i32, ptr %t78, !tbaa !33
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t74, i32 %t79)
  store i32 %t82, ptr %l41
  br label %bb22
bb22:
  %t83 = load i32, ptr %l41, !tbaa !23
  store i32 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l8 = alloca ptr
  %l12 = alloca { i64, [21 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:Fn", ptr %a0, i32 0, i32 9
  %t6 = sext i32 %a1 to i64
  %t9 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRefMu_Hfcf461293be5a40629d8d6a3cbc76320(ptr %v0, ptr %v0, ptr %t3, i64 %t6)
  store ptr %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t13 = getelementptr %"compiler/mir:BasicBlock", ptr %t10, i32 0, i32 0
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %a2, i64 176, i1 false)
  %t17 = load { i64, [21 x i64] }, ptr %l12
  call void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2ePush(ptr %v0, ptr %t13, { i64, [21 x i64] } %t17)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2ePush_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t3, %"compiler/mir:Call" %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Fn", ptr %t7, i32 0, i32 14
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sub i64 %t12, 1
  %t15 = trunc i64 %t13 to i32
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/mir:BasicBlock"
  %l6 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 9
  store ptr %t3, ptr %l2, !tbaa !29
  %t4 = call %"compiler/mir:BasicBlock" @compiler_2fmir_3aBasicBlock_2ector(ptr %s0)
  store %"compiler/mir:BasicBlock" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load %"compiler/mir:BasicBlock", ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2ePush_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %s0, ptr %t5, %"compiler/mir:BasicBlock" %t6)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Fn", ptr %t7, i32 0, i32 9
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l6
  br label %bb3
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = sub i64 %t12, 1
  %t15 = trunc i64 %t13 to i32
  call void @__olang_scope_close(ptr %s0)
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l18 = alloca { i64, ptr }
  %l26 = alloca { i64, [2 x i64] }
  %l32 = alloca %"compiler/mir:Range"
  %l33 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Lvalue"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 10
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %l18, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, [1 x i64] }, ptr %t25, i64 %t22
  %t27 = load { i64, [1 x i64] }, ptr %t26
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ePush_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t31, { i64, [1 x i64] } %t27)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l5, !tbaa !24
  br label %bb2
bb8:
  store { i64, [2 x i64] } %a1, ptr %l26
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = trunc i64 %t40 to i32
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = trunc i64 %t45 to i32
  %t50 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 %t42, i32 %t47)
  store %"compiler/mir:Range" %t50, ptr %l32
  br label %bb9
bb9:
  %t51 = load { i64, [2 x i64] }, ptr %l26
  %t52 = load %"compiler/mir:Range", ptr %l32
  %t53 = call %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %s0, { i64, [2 x i64] } %t51, %"compiler/mir:Range" %t52)
  store %"compiler/mir:Lvalue" %t53, ptr %l33
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load %"compiler/mir:Lvalue", ptr %l33
  store %"compiler/mir:Lvalue" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca i32
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 23
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/mir:Fn", ptr %t53, i32 0, i32 23
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t55, i64 %t56)
  store i32 %t59, ptr %l38
  br label %bb12
bb12:
  %t60 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load i32, ptr %l38, !tbaa !23
  %t64 = icmp eq i32 %t62, %t61
  br i1 %t64, label %bb13, label %bb14
bb13:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/mir:Fn", ptr %t66, i32 0, i32 24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t68, i64 %t69)
  store { i64, ptr } %t72, ptr %l44
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t73 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb8
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t78, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l4 = alloca { i64, [21 x i64] }
  %rv = alloca { i64, [21 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"compiler/mir:StmtList", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr { i64, [21 x i64] }, ptr %t7, i64 %a1
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %t8, i64 176, i1 false)
  %t9 = load { i64, [21 x i64] }, ptr %l4
  store { i64, [21 x i64] } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [21 x i64] }, ptr %rv
  ret { i64, [21 x i64] } %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eClear(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %a0, i32 0, i32 1
  store i64 0, ptr %t3, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eInsert(ptr %v0, ptr %a0, i64 %a1, { i64, [21 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [21 x i64] }
  %l3 = alloca i64
  %l6 = alloca i1
  %l13 = alloca { i64, [21 x i64] }
  %l26 = alloca { i64, [21 x i64] }
  %l31 = alloca { i64, [21 x i64] }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [21 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/mir:StmtList", ptr %t6, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = icmp sgt i64 %t5, %t9
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store i32 65536, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l2, i64 176, i1 false)
  %t18 = load { i64, [21 x i64] }, ptr %l13
  call void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2ePush(ptr %v0, ptr %t16, { i64, [21 x i64] } %t18)
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/mir:StmtList", ptr %t19, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb8
bb8:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t37, 1
  %t41 = getelementptr %"compiler/mir:StmtList", ptr %t36, i32 0, i32 0
  %t43 = getelementptr { i64, ptr }, ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, [21 x i64] }, ptr %t44, i64 %t39
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t45, i64 176, i1 false)
  %t47 = getelementptr %"compiler/mir:StmtList", ptr %t34, i32 0, i32 0
  %t49 = getelementptr { i64, ptr }, ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, [21 x i64] }, ptr %t50, i64 %t35
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %l26, i64 176, i1 false)
  br label %bb12
bb12:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = sub i64 %t52, 1
  store i64 %t54, ptr %l3, !tbaa !24
  br label %bb8
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %l2, i64 176, i1 false)
  %t59 = getelementptr %"compiler/mir:StmtList", ptr %t56, i32 0, i32 0
  %t61 = getelementptr { i64, ptr }, ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, [21 x i64] }, ptr %t62, i64 %t57
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %l31, i64 176, i1 false)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eSetAt(ptr %v0, ptr %a0, i64 %a1, { i64, [21 x i64] } %a2) #0 {
entry:
  %l2 = alloca { i64, [21 x i64] }
  %l5 = alloca { i64, [21 x i64] }
  store { i64, [21 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l2, i64 176, i1 false)
  %t4 = getelementptr %"compiler/mir:StmtList", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr { i64, [21 x i64] }, ptr %t7, i64 %a1
  call void @llvm.memmove.p0.p0.i64(ptr %t8, ptr %l5, i64 176, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Call" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Call"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Call" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l2, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 3
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  %t11 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s1, ptr %v2, ptr %t6, %"compiler/mir:Lvalue" %t8)
  store { i64, ptr } %t11, ptr %l8
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 1
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t15 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t18 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t17)
  call void @olang_textcopy(ptr %t18, ptr %t13, i64 %t14)
  %t19 = getelementptr i8, ptr %t18, i64 %t14
  call void @olang_textcopy(ptr %t19, ptr %t15, i64 %t16)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t18, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = extractvalue { i64, ptr } %t21, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %t29, { i64, ptr } %t28)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb6
bb6:
  store ptr %l2, ptr %l11, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 0
  %t33 = load { i64, [7 x i64] }, ptr %t32
  %t36 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecallee(ptr %v0, ptr %s0, ptr %v3, ptr %v2, ptr %t31, { i64, [7 x i64] } %t33)
  store { i64, ptr } %t36, ptr %l14
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 1
  %t39 = load %"compiler/mir:Range", ptr %t38
  %t42 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %t37, %"compiler/mir:Range" %t39)
  store { i64, ptr } %t42, ptr %l17
  br label %bb8
bb8:
  %t43 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t45 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = add i64 %t51, %t54
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t58 = add i64 %t55, %t57
  %t59 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t43, i64 %t44)
  %t60 = getelementptr i8, ptr %t59, i64 %t44
  call void @olang_textcopy(ptr %t60, ptr %t46, i64 %t47)
  %t61 = getelementptr i8, ptr %t60, i64 %t47
  call void @olang_textcopy(ptr %t61, ptr %t49, i64 %t50)
  %t62 = getelementptr i8, ptr %t61, i64 %t50
  call void @olang_textcopy(ptr %t62, ptr %t53, i64 %t54)
  %t63 = getelementptr i8, ptr %t62, i64 %t54
  call void @olang_textcopy(ptr %t63, ptr %t56, i64 %t57)
  %t64 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t59, 1
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t68 = extractvalue { i64, ptr } %t65, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t73, { i64, ptr } %t72)
  br label %bb9
bb9:
  %t75 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 2
  %t76 = getelementptr %"compiler/mir:Range", ptr %t75, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = icmp sgt i32 %t77, 0
  br i1 %t79, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l2, ptr %l22, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 2
  %t83 = load %"compiler/mir:Range", ptr %t82
  %t86 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %s4, ptr %v2, ptr %t81, %"compiler/mir:Range" %t83)
  store { i64, ptr } %t86, ptr %l25
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t87 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t89 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = add i64 %t88, %t91
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t87, i64 %t88)
  %t97 = getelementptr i8, ptr %t96, i64 %t88
  call void @olang_textcopy(ptr %t97, ptr %t90, i64 %t91)
  %t98 = getelementptr i8, ptr %t97, i64 %t91
  call void @olang_textcopy(ptr %t98, ptr %t93, i64 %t94)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t96, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } %t100, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t108 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t108, { i64, ptr } %t107)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s4)
  br label %bb14
bb14:
  %t110 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 5
  %t111 = load i32, ptr %t110, !tbaa !23
  %t112 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t115 = sext i32 %t111 to i64
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t117 = add i64 %t113, %t116
  %t118 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t117)
  call void @olang_textcopy(ptr %t118, ptr %t112, i64 %t113)
  %t119 = getelementptr i8, ptr %t118, i64 %t113
  %t120 = call i64 @__olang_fmt_i64(ptr %t119, i64 %t115)
  %t121 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t118, 1
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t125 = extractvalue { i64, ptr } %t122, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t129)
  br label %bb15
bb15:
  %t132 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 7
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t137 = icmp ne i32 %t133, %t134
  br i1 %t137, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s7
  %t139 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 6
  %t140 = load i32, ptr %t139, !tbaa !23
  %t141 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 7
  %t142 = load i32, ptr %t141, !tbaa !23
  %t143 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t146 = sext i32 %t140 to i64
  %t147 = call i64 @__olang_fmt_i64(ptr null, i64 %t146)
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t153 = sext i32 %t142 to i64
  %t154 = call i64 @__olang_fmt_i64(ptr null, i64 %t153)
  %t155 = add i64 %t151, %t154
  %t156 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t155)
  call void @olang_textcopy(ptr %t156, ptr %t143, i64 %t144)
  %t157 = getelementptr i8, ptr %t156, i64 %t144
  %t158 = call i64 @__olang_fmt_i64(ptr %t157, i64 %t146)
  %t159 = getelementptr i8, ptr %t157, i64 %t147
  call void @olang_textcopy(ptr %t159, ptr %t149, i64 %t150)
  %t160 = getelementptr i8, ptr %t159, i64 %t150
  %t161 = call i64 @__olang_fmt_i64(ptr %t160, i64 %t153)
  %t162 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t156, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = extractvalue { i64, ptr } %t163, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l2, { i64, ptr } %t170)
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s7)
  br label %bb19
bb19:
  %t174 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t174, ptr %l41
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t175 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t175, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca i64
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca %"compiler/mir:Range"
  %l8 = alloca ptr
  %l12 = alloca { i64, [1 x i64] }
  %l13 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:dumper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 19
  store ptr %t6, ptr %l8, !tbaa !29
  %t9 = sext i32 %a1 to i64
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = call ptr @__olang_scope_or(ptr %v2, ptr %t10)
  %t12 = ptrtoint ptr %t11 to i64
  %t14 = inttoptr i64 %t12 to ptr
  %t15 = load ptr, ptr %l8, !tbaa !29
  %t17 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %t14, ptr %t15, i64 %t9)
  store { i64, [1 x i64] } %t17, ptr %l12
  br label %bb1
bb1:
  %t18 = load { i64, [1 x i64] }, ptr %l12
  store { i64, [1 x i64] } %t18, ptr %l2
  %t19 = load { i64, [1 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [1 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 0
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25
  store i64 %t26, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = call i64 @__olang_fmt_i64(ptr null, i64 %t28)
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  %t32 = call i64 @__olang_fmt_i64(ptr %t31, i64 %t28)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  store { i64, ptr } %t34, ptr %l13, !tbaa !27
  br label %bb15
bb5:
  %t36 = load { i64, [1 x i64] }, ptr %l2
  %t38 = extractvalue { i64, [1 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 1
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t42 = getelementptr { %"compiler/mir:Range" }, ptr %t41, i32 0, i32 0
  %t43 = load %"compiler/mir:Range", ptr %t42
  store %"compiler/mir:Range" %t43, ptr %l4
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t45 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t46 = load i32, ptr %t45, !tbaa !23
  %t47 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t50 = sext i32 %t46 to i64
  %t51 = call i64 @__olang_fmt_i64(ptr null, i64 %t50)
  %t52 = add i64 %t48, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t47, i64 %t48)
  %t54 = getelementptr i8, ptr %t53, i64 %t48
  %t55 = call i64 @__olang_fmt_i64(ptr %t54, i64 %t50)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t53, 1
  store { i64, ptr } %t57, ptr %l13, !tbaa !27
  br label %bb15
bb9:
  %t59 = load { i64, [1 x i64] }, ptr %l2
  %t61 = extractvalue { i64, [1 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 2
  br i1 %t62, label %bb10, label %bb11
bb10:
  %t64 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t65 = getelementptr { %"compiler/mir:Range" }, ptr %t64, i32 0, i32 0
  %t66 = load %"compiler/mir:Range", ptr %t65
  store %"compiler/mir:Range" %t66, ptr %l5
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load %"compiler/mir:Range", ptr %l5
  %t72 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstItems(ptr %v0, ptr %v1, ptr %v2, ptr %t68, %"compiler/mir:Range" %t69)
  store { i64, ptr } %t72, ptr %l29
  br label %bb13
bb13:
  %t73 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t73, ptr %l13, !tbaa !27
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_dca1ca4acf899191_a3a5645eac28d4dd)
  unreachable
bb15:
  %t74 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2elist(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca i64
  %l42 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/mir:dumper", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  store ptr %t6, ptr %l12, !tbaa !29
  %t8 = load ptr, ptr %l12, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v2, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t12, ptr %s0, ptr %t13, i32 %a1)
  store { i64, ptr } %t15, ptr %l15
  br label %bb2
bb2:
  %t16 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t16, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb8
bb5:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l24, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l24, !tbaa !24
  store i64 %t47, ptr %l21, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l21, !tbaa !24
  store i64 %t48, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l9, !tbaa !24
  store ptr %l2, ptr %l42, !tbaa !29
  %t67 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l45, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l45, !tbaa !27
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/mir:dumper", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  store ptr %t74, ptr %l47, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t75, ptr %l48, !tbaa !27
  %t76 = load i64, ptr %l9, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  %t82 = load ptr, ptr %l47, !tbaa !29
  %t83 = call ptr @__olang_scope_or(ptr %v2, ptr %t82)
  %t84 = ptrtoint ptr %t83 to i64
  %t86 = inttoptr i64 %t84 to ptr
  %t88 = inttoptr i64 0 to ptr
  %t89 = load ptr, ptr %l47, !tbaa !29
  %t91 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t86, ptr %s2, ptr %t88, ptr %t89, i32 %t81)
  store { i64, ptr } %t91, ptr %l53
  br label %bb16
bb16:
  %t92 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = add i64 %t94, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t93, i64 %t94)
  %t100 = getelementptr i8, ptr %t99, i64 %t94
  call void @olang_textcopy(ptr %t100, ptr %t96, i64 %t97)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = extractvalue { i64, ptr } %t102, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t110 = load ptr, ptr %l42, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t110, { i64, ptr } %t109)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t112 = load i64, ptr %l8, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l8, !tbaa !24
  br label %bb9
bb19:
  %t117 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t117, ptr %l59
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t118 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eargs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca i1
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l29 = alloca i32
  %l31 = alloca { i64, ptr }
  %l32 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i1
  %l60 = alloca i64
  %l63 = alloca i64
  %l81 = alloca ptr
  %l85 = alloca { i64, [4 x i64] }
  %l86 = alloca i32
  %l88 = alloca i1
  %l90 = alloca { i64, ptr }
  %l93 = alloca i1
  %l94 = alloca i1
  %l97 = alloca i1
  %l100 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l112 = alloca i64
  %l113 = alloca i1
  %l116 = alloca i1
  %l121 = alloca i1
  %l132 = alloca i1
  %l144 = alloca i32
  %l147 = alloca i32
  %l167 = alloca ptr
  %l174 = alloca { i64, [1 x i64] }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s17 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  store ptr %t6, ptr %l25, !tbaa !29
  %t7 = load ptr, ptr %l5, !tbaa !29
  store ptr %t7, ptr %l26, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l26, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l26, !tbaa !29
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %t13, ptr %t14, i32 %t8)
  store i32 %t16, ptr %l29
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l25, !tbaa !29
  %t18 = call ptr @__olang_scope_or(ptr %v1, ptr %t17)
  %t19 = ptrtoint ptr %t18 to i64
  %t21 = inttoptr i64 %t19 to ptr
  %t22 = load ptr, ptr %l25, !tbaa !29
  %t23 = load i32, ptr %l29, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t21, ptr %s0, ptr %t22, i32 %t23)
  store { i64, ptr } %t24, ptr %l31
  br label %bb2
bb2:
  %t25 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t25, ptr %l6, !tbaa !27
  %t26 = load { i64, [7 x i64] }, ptr %l1
  %t28 = extractvalue { i64, [7 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 1
  br i1 %t29, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_a40c0fc9d6bbeb91_41b07a29ba18aefd)
  unreachable
bb11:
  %t31 = load i1, ptr %l32, !tbaa !21
  store i1 %t31, ptr %l7, !tbaa !21
  %t32 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  %t41 = icmp ne i64 %t34, %t38
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load i1, ptr %l7, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb17
bb14:
  %t45 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t46 = load i32, ptr %t45, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t49 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t54 = icmp sgt i64 %t48, %t51
  store i1 %t54, ptr %l42, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb16
bb16:
  %t56 = load i1, ptr %l42, !tbaa !21
  %t57 = xor i1 %t56, true
  store i1 %t57, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l40, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t62 = load i32, ptr %t61, !tbaa !23
  %t63 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t69 = sext i32 %t62 to i64
  %t70 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t71 = add i64 %t67, %t70
  %t72 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t76 = call i64 @__olang_fmt_i64(ptr null, i64 %t65)
  %t77 = add i64 %t74, %t76
  %t78 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t80 = add i64 %t77, %t79
  %t81 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t80)
  call void @olang_textcopy(ptr %t81, ptr %t66, i64 %t67)
  %t82 = getelementptr i8, ptr %t81, i64 %t67
  %t83 = call i64 @__olang_fmt_i64(ptr %t82, i64 %t69)
  %t84 = getelementptr i8, ptr %t82, i64 %t70
  call void @olang_textcopy(ptr %t84, ptr %t72, i64 %t73)
  %t85 = getelementptr i8, ptr %t84, i64 %t73
  %t86 = call i64 @__olang_fmt_i64(ptr %t85, i64 %t65)
  %t87 = getelementptr i8, ptr %t85, i64 %t76
  call void @olang_textcopy(ptr %t87, ptr %t78, i64 %t79)
  %t88 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t81, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t60, { i64, ptr } %t96)
  br label %bb20
bb19:
  store i64 0, ptr %l8, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t103 = load i64, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = icmp sgt i64 %t103, %t104
  br i1 %t107, label %bb21, label %bb22
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb21:
  %t109 = load i64, ptr %l10, !tbaa !24
  %t111 = icmp sgt i64 %t109, 0
  br i1 %t111, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb26
bb23:
  %t113 = load i64, ptr %l9, !tbaa !24
  %t114 = load i64, ptr %l8, !tbaa !24
  %t117 = sub i64 %t113, %t114
  %t118 = load i64, ptr %l10, !tbaa !24
  %t121 = add i64 %t117, %t118
  %t123 = sub i64 %t121, 1
  %t124 = load i64, ptr %l10, !tbaa !24
  %t127 = sdiv i64 %t123, %t124
  store i64 %t127, ptr %l63, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb25
bb25:
  %t129 = load i64, ptr %l63, !tbaa !24
  store i64 %t129, ptr %l60, !tbaa !24
  br label %bb26
bb26:
  %t130 = load i64, ptr %l60, !tbaa !24
  store i64 %t130, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t131 = load i64, ptr %l12, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = icmp slt i64 %t131, %t132
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb29:
  br label %bb30
bb30:
  %t139 = load i64, ptr %l8, !tbaa !24
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l10, !tbaa !24
  %t144 = mul i64 %t140, %t141
  %t147 = add i64 %t139, %t144
  store i64 %t147, ptr %l13, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l81, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load %"compiler/mir:Range", ptr %l3
  %t152 = load i64, ptr %l13, !tbaa !24
  %t156 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v2, ptr %t150, %"compiler/mir:Range" %t151, i64 %t152)
  store { i64, [4 x i64] } %t156, ptr %l85
  br label %bb31
bb31:
  %t157 = load ptr, ptr %l81, !tbaa !29
  %t158 = load { i64, [4 x i64] }, ptr %l85
  %t159 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v1, ptr %t157, { i64, [4 x i64] } %t158)
  store i32 %t159, ptr %l86
  br label %bb32
bb32:
  %t160 = load i32, ptr %l86, !tbaa !23
  store i32 %t160, ptr %l14, !tbaa !23
  %t161 = load i1, ptr %l7, !tbaa !21
  br i1 %t161, label %bb33, label %bb34
bb33:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t164, ptr %l90, !tbaa !27
  %t165 = load i64, ptr %l13, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t173 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2epointerLike(ptr %v0, ptr %v1, ptr %t163, i32 %t170)
  store i1 %t173, ptr %l93
  br label %bb35
bb34:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb36
bb35:
  %t174 = load i1, ptr %l93, !tbaa !21
  store i1 %t174, ptr %l88, !tbaa !21
  br label %bb36
bb36:
  %t175 = load i1, ptr %l88, !tbaa !21
  br i1 %t175, label %bb37, label %bb38
bb37:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l14, !tbaa !23
  %t180 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2epointerLike(ptr %v0, ptr %v1, ptr %t176, i32 %t177)
  store i1 %t180, ptr %l97
  br label %bb39
bb38:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb40
bb39:
  %t181 = load i1, ptr %l97, !tbaa !21
  store i1 %t181, ptr %l94, !tbaa !21
  br label %bb40
bb40:
  %t182 = load i1, ptr %l94, !tbaa !21
  br i1 %t182, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb42:
  br label %bb43
bb43:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l14, !tbaa !23
  %t185 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t185, ptr %l100, !tbaa !27
  %t186 = load i64, ptr %l13, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i32, ptr %t189, i64 %t186
  %t191 = load i32, ptr %t190, !tbaa !33
  %t192 = load i64, ptr %l13, !tbaa !24
  %t193 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t196 = call i64 @__olang_fmt_i64(ptr null, i64 %t192)
  %t197 = add i64 %t194, %t196
  %t198 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t197)
  call void @olang_textcopy(ptr %t198, ptr %t193, i64 %t194)
  %t199 = getelementptr i8, ptr %t198, i64 %t194
  %t200 = call i64 @__olang_fmt_i64(ptr %t199, i64 %t192)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t198, 1
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t205 = extractvalue { i64, ptr } %t202, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s7, ptr %v1, ptr %t183, i32 %t184, i32 %t191, { i64, ptr } %t209)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb45:
  %t214 = load i64, ptr %l12, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l12, !tbaa !24
  br label %bb27
bb46:
  br label %bb47
bb47:
  %t218 = load ptr, ptr %l5, !tbaa !29
  store ptr %t218, ptr %l108, !tbaa !29
  %t219 = load { i64, [7 x i64] }, ptr %l1
  %t220 = load i32, ptr %l2, !tbaa !23
  %t221 = load ptr, ptr %l108, !tbaa !29
  %t222 = call ptr @__olang_scope_or(ptr %v1, ptr %t221)
  %t223 = ptrtoint ptr %t222 to i64
  %t225 = inttoptr i64 %t223 to ptr
  %t226 = load ptr, ptr %l108, !tbaa !29
  %t229 = call i64 @compiler_2fmir_2ePassedCount(ptr %t225, ptr %t226, { i64, [7 x i64] } %t219, i32 %t220)
  store i64 %t229, ptr %l112
  br label %bb48
bb48:
  %t230 = load i64, ptr %l112, !tbaa !24
  store i64 %t230, ptr %l15, !tbaa !24
  %t231 = load { i64, [7 x i64] }, ptr %l1
  %t233 = extractvalue { i64, [7 x i64] } %t231, 0
  %t234 = icmp eq i64 %t233, 0
  br i1 %t234, label %bb49, label %bb50
bb49:
  %t236 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t237 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t236, i32 0, i32 0
  %t238 = load { i64, [2 x i64] }, ptr %t237
  %t240 = extractvalue { i64, [2 x i64] } %t238, 0
  %t241 = icmp eq i64 %t240, 0
  store i1 %t241, ptr %l116, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb51
bb51:
  %t243 = load i1, ptr %l116, !tbaa !21
  br i1 %t243, label %bb52, label %bb53
bb52:
  br label %bb59
bb53:
  %t244 = load { i64, [7 x i64] }, ptr %l1
  %t246 = extractvalue { i64, [7 x i64] } %t244, 0
  %t247 = icmp eq i64 %t246, 0
  br i1 %t247, label %bb54, label %bb55
bb54:
  %t249 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t250 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t249, i32 0, i32 0
  %t251 = load { i64, [2 x i64] }, ptr %t250
  %t253 = extractvalue { i64, [2 x i64] } %t251, 0
  %t254 = icmp eq i64 %t253, 6
  store i1 %t254, ptr %l121, !tbaa !21
  br label %bb56
bb55:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb56
bb56:
  %t256 = load i1, ptr %l121, !tbaa !21
  br i1 %t256, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  %t257 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t258 = load i32, ptr %t257, !tbaa !23
  %t260 = sext i32 %t258 to i64
  %t261 = load i64, ptr %l15, !tbaa !24
  %t264 = icmp sgt i64 %t260, %t261
  store i1 %t264, ptr %l113, !tbaa !21
  br label %bb65
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_2214b4a83e210b00_93c2dace4d13d4cc)
  unreachable
bb65:
  %t266 = load i1, ptr %l113, !tbaa !21
  store i1 %t266, ptr %l16, !tbaa !21
  %t267 = load i64, ptr %l15, !tbaa !24
  %t268 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t269 = load i32, ptr %t268, !tbaa !23
  %t271 = sext i32 %t269 to i64
  %t274 = icmp ne i64 %t267, %t271
  br i1 %t274, label %bb66, label %bb67
bb66:
  %t276 = load i1, ptr %l16, !tbaa !21
  %t278 = xor i1 %t276, true
  store i1 %t278, ptr %l132, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb68
bb68:
  %t280 = load i1, ptr %l132, !tbaa !21
  br i1 %t280, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s13
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t283 = load i32, ptr %t282, !tbaa !23
  %t284 = load i64, ptr %l15, !tbaa !24
  %t285 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t288 = sext i32 %t283 to i64
  %t289 = call i64 @__olang_fmt_i64(ptr null, i64 %t288)
  %t290 = add i64 %t286, %t289
  %t291 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t293 = add i64 %t290, %t292
  %t295 = call i64 @__olang_fmt_i64(ptr null, i64 %t284)
  %t296 = add i64 %t293, %t295
  %t297 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t296)
  call void @olang_textcopy(ptr %t297, ptr %t285, i64 %t286)
  %t298 = getelementptr i8, ptr %t297, i64 %t286
  %t299 = call i64 @__olang_fmt_i64(ptr %t298, i64 %t288)
  %t300 = getelementptr i8, ptr %t298, i64 %t289
  call void @olang_textcopy(ptr %t300, ptr %t291, i64 %t292)
  %t301 = getelementptr i8, ptr %t300, i64 %t292
  %t302 = call i64 @__olang_fmt_i64(ptr %t301, i64 %t284)
  %t303 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t297, 1
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = extractvalue { i64, ptr } %t304, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s13, ptr %t281, { i64, ptr } %t311)
  br label %bb71
bb70:
  br label %bb72
bb71:
  call void @__olang_scope_close(ptr %s13)
  br label %bb72
bb72:
  store i32 0, ptr %l17, !tbaa !23
  %t314 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t315 = load i32, ptr %t314, !tbaa !23
  store i32 %t315, ptr %l18, !tbaa !23
  store i32 1, ptr %l19, !tbaa !23
  %t317 = load i32, ptr %l18, !tbaa !23
  %t318 = load i32, ptr %l17, !tbaa !23
  %t321 = icmp sgt i32 %t317, %t318
  br i1 %t321, label %bb73, label %bb74
bb73:
  %t323 = load i32, ptr %l19, !tbaa !23
  %t325 = icmp sgt i32 %t323, 0
  br i1 %t325, label %bb75, label %bb76
bb74:
  store i32 0, ptr %l144, !tbaa !23
  br label %bb78
bb75:
  %t327 = load i32, ptr %l18, !tbaa !23
  %t328 = load i32, ptr %l17, !tbaa !23
  %t331 = sub i32 %t327, %t328
  %t332 = load i32, ptr %l19, !tbaa !23
  %t335 = add i32 %t331, %t332
  %t337 = sub i32 %t335, 1
  %t338 = load i32, ptr %l19, !tbaa !23
  %t341 = sdiv i32 %t337, %t338
  store i32 %t341, ptr %l147, !tbaa !23
  br label %bb77
bb76:
  store i32 0, ptr %l147, !tbaa !23
  br label %bb77
bb77:
  %t343 = load i32, ptr %l147, !tbaa !23
  store i32 %t343, ptr %l144, !tbaa !23
  br label %bb78
bb78:
  %t344 = load i32, ptr %l144, !tbaa !23
  store i32 %t344, ptr %l20, !tbaa !23
  store i32 0, ptr %l21, !tbaa !23
  br label %bb79
bb79:
  %t345 = load i32, ptr %l21, !tbaa !23
  %t346 = load i32, ptr %l20, !tbaa !23
  %t349 = icmp slt i32 %t345, %t346
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb80, label %bb81
bb80:
  br label %bb89
bb81:
  br label %bb82
bb82:
  %t353 = load i32, ptr %l17, !tbaa !23
  %t354 = load i32, ptr %l21, !tbaa !23
  %t355 = load i32, ptr %l19, !tbaa !23
  %t358 = mul i32 %t354, %t355
  %t361 = add i32 %t353, %t358
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/mir:verifier", ptr %t363, i32 0, i32 0
  %t366 = load ptr, ptr %t365, !tbaa !29
  %t368 = getelementptr %"compiler/mir:Fn", ptr %t366, i32 0, i32 12
  store ptr %t368, ptr %l167, !tbaa !29
  %t369 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t370 = load i32, ptr %t369, !tbaa !23
  %t372 = sext i32 %t370 to i64
  %t375 = sext i32 %t361 to i64
  %t378 = add i64 %t372, %t375
  %t379 = load ptr, ptr %l167, !tbaa !29
  %t380 = call ptr @__olang_scope_or(ptr %v2, ptr %t379)
  %t381 = ptrtoint ptr %t380 to i64
  %t383 = inttoptr i64 %t381 to ptr
  %t384 = load ptr, ptr %l167, !tbaa !29
  %t386 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t383, ptr %t384, i64 %t378)
  store { i64, [1 x i64] } %t386, ptr %l174
  br label %bb83
bb83:
  %t387 = load { i64, [1 x i64] }, ptr %l174
  %t389 = extractvalue { i64, [1 x i64] } %t387, 0
  %t390 = icmp eq i64 %t389, 3
  br i1 %t390, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s17
  %t392 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s17, ptr %t392, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb86
bb85:
  br label %bb87
bb86:
  call void @__olang_scope_close(ptr %s17)
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t394 = load i32, ptr %l21, !tbaa !23
  %t396 = add i32 %t394, 1
  store i32 %t396, ptr %l21, !tbaa !23
  br label %bb79
bb89:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l6 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp slt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/mir:verifier", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/mir:Fn", ptr %t11, i32 0, i32 9
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = call ptr @__olang_scope_or(ptr %v1, ptr %t14)
  %t16 = ptrtoint ptr %t15 to i64
  %t18 = inttoptr i64 %t16 to ptr
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t18, ptr %t19)
  store i64 %t20, ptr %l11
  br label %bb3
bb3:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l11, !tbaa !24
  %t23 = icmp sge i64 %t21, %t22
  store i1 %t23, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l4, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  %t28 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t31 = sext i32 %t27 to i64
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t33 = add i64 %t29, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t28, i64 %t29)
  %t35 = getelementptr i8, ptr %t34, i64 %t29
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %t31)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t34, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t26, { i64, ptr } %t45)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb8:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuiltPart(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca ptr
  %l7 = alloca ptr
  %l10 = alloca i1
  %l12 = alloca i1
  %l13 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca i64
  %l33 = alloca i32
  %rv = alloca i32
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:verifier", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t12, ptr %t13, i32 %t7)
  store i1 %t15, ptr %l10
  br label %bb1
bb1:
  %t16 = load i1, ptr %l10, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb5
bb3:
  %t19 = load ptr, ptr %l4, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t23 = call ptr @__olang_scope_or(ptr %v1, ptr %t22)
  %t24 = ptrtoint ptr %t23 to i64
  %t26 = inttoptr i64 %t24 to ptr
  %t27 = load ptr, ptr %l13, !tbaa !29
  %t30 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %t26, ptr %t27, i32 %a1, i64 %a2)
  store i64 %t30, ptr %l17
  br label %bb4
bb4:
  %t31 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t32 = load i64, ptr %l17, !tbaa !24
  %t34 = icmp ne i64 %t32, %t31
  store i1 %t34, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t36 = load i1, ptr %l12, !tbaa !21
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t37 = load i32, ptr %l3, !tbaa !23
  store i32 %t37, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l4, !tbaa !29
  store ptr %t39, ptr %l21, !tbaa !29
  %t40 = load ptr, ptr %l4, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  %t41 = load i32, ptr %l3, !tbaa !23
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = call ptr @__olang_scope_or(ptr %v1, ptr %t42)
  %t44 = ptrtoint ptr %t43 to i64
  %t46 = inttoptr i64 %t44 to ptr
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t46, ptr %t47, i32 %t41)
  store i32 %t49, ptr %l25
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l4, !tbaa !29
  store ptr %t50, ptr %l26, !tbaa !29
  %t51 = load i32, ptr %l3, !tbaa !23
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = call ptr @__olang_scope_or(ptr %v1, ptr %t52)
  %t54 = ptrtoint ptr %t53 to i64
  %t56 = inttoptr i64 %t54 to ptr
  %t57 = load ptr, ptr %l26, !tbaa !29
  %t59 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t56, ptr %t57, i32 %t51)
  store i64 %t59, ptr %l29
  br label %bb10
bb10:
  %t60 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t61 = load i64, ptr %l29, !tbaa !24
  %t63 = or i64 %t61, %t60
  %t64 = load ptr, ptr %l21, !tbaa !29
  %t65 = call ptr @__olang_scope_or(ptr %v1, ptr %t64)
  %t66 = ptrtoint ptr %t65 to i64
  %t68 = inttoptr i64 %t66 to ptr
  %t69 = load ptr, ptr %l21, !tbaa !29
  %t70 = load i32, ptr %l25, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %t68, ptr %t69, i32 %t70, i64 %t63)
  store i32 %t72, ptr %l33
  br label %bb11
bb11:
  %t73 = load i32, ptr %l33, !tbaa !23
  store i32 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eclosureType(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l6 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v1, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t10, ptr %t11, i32 %t5)
  store i32 %t13, ptr %l6
  br label %bb1
bb1:
  %t14 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t16 = trunc i64 21 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l10, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t22, i32 %t23)
  store { i64, ptr } %t26, ptr %l13
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t27 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t29 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = add i64 %t28, %t31
  %t33 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t27, i64 %t28)
  %t34 = getelementptr i8, ptr %t33, i64 %t28
  call void @olang_textcopy(ptr %t34, ptr %t30, i64 %t31)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t39 = extractvalue { i64, ptr } %t36, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t44, { i64, ptr } %t43)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb6
bb6:
  %t46 = load i32, ptr %l1, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i32
  %l14 = alloca i1
  %l16 = alloca i64
  %l19 = alloca ptr
  %l21 = alloca i64
  %s3 = alloca %olang.scope
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
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/mir:Lvalue", ptr %l2
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %t10, %"compiler/mir:Lvalue" %t11)
  br label %bb4
bb4:
  br label %bb22
bb5:
  %t14 = load { i64, [4 x i64] }, ptr %l1
  %t16 = extractvalue { i64, [4 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 3
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t20 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t19, i32 0, i32 1
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l3, !tbaa !23
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t23 = load i32, ptr %l3, !tbaa !23
  %t25 = icmp slt i32 %t23, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb12
bb10:
  %t27 = load i32, ptr %l3, !tbaa !23
  %t29 = sext i32 %t27 to i64
  store i64 %t29, ptr %l16, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/mir:verifier", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/mir:Fn", ptr %t33, i32 0, i32 19
  store ptr %t35, ptr %l19, !tbaa !29
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = call ptr @__olang_scope_or(ptr %v1, ptr %t36)
  %t38 = ptrtoint ptr %t37 to i64
  %t40 = inttoptr i64 %t38 to ptr
  %t41 = load ptr, ptr %l19, !tbaa !29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eLen_3ccompiler_2fmir_3aConstNode_3e(ptr %t40, ptr %t41)
  store i64 %t42, ptr %l21
  br label %bb11
bb11:
  %t43 = load i64, ptr %l16, !tbaa !24
  %t44 = load i64, ptr %l21, !tbaa !24
  %t45 = icmp sge i64 %t43, %t44
  store i1 %t45, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l14, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l3, !tbaa !23
  %t50 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t53 = sext i32 %t49 to i64
  %t54 = call i64 @__olang_fmt_i64(ptr null, i64 %t53)
  %t55 = add i64 %t51, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t50, i64 %t51)
  %t57 = getelementptr i8, ptr %t56, i64 %t51
  %t58 = call i64 @__olang_fmt_i64(ptr %t57, i64 %t53)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t56, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = extractvalue { i64, ptr } %t60, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t48, { i64, ptr } %t67)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_293fa35c34966465_23dfef653c6d5c71)
  unreachable
bb22:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i32
  %l4 = alloca i32
  %l13 = alloca i32
  %rv = alloca i32
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
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  br label %bb16
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
  %t18 = load %"compiler/mir:Lvalue", ptr %l2
  %t21 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %t18)
  store i32 %t21, ptr %l13
  br label %bb8
bb8:
  %t22 = load i32, ptr %l13, !tbaa !23
  store i32 %t22, ptr %l4, !tbaa !23
  br label %bb16
bb9:
  %t23 = load { i64, [4 x i64] }, ptr %l1
  %t25 = extractvalue { i64, [4 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 2
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { i32, i64 }, ptr %t28, i32 0, i32 0
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l3, !tbaa !23
  br label %bb14
bb11:
  %t32 = load { i64, [4 x i64] }, ptr %l1
  %t34 = extractvalue { i64, [4 x i64] } %t32, 0
  %t35 = icmp eq i64 %t34, 3
  br i1 %t35, label %bb12, label %bb13
bb12:
  %t37 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t38 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l3, !tbaa !23
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t41 = load i32, ptr %l3, !tbaa !23
  store i32 %t41, ptr %l4, !tbaa !23
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_2eacfb98574d9c7d_9d1d6c478850d6e9)
  unreachable
bb16:
  %t43 = load i32, ptr %l4, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Range"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l33 = alloca ptr
  %l38 = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
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
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t40 = load i32, ptr %l2, !tbaa !23
  %t41 = load i32, ptr %l6, !tbaa !23
  %t42 = load i32, ptr %l4, !tbaa !23
  %t45 = mul i32 %t41, %t42
  %t48 = add i32 %t40, %t45
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l33, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load %"compiler/mir:Range", ptr %l1
  %t55 = sext i32 %t48 to i64
  %t59 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t51, %"compiler/mir:Range" %t52, i64 %t55)
  store { i64, [4 x i64] } %t59, ptr %l38
  br label %bb11
bb11:
  %t60 = load ptr, ptr %l33, !tbaa !29
  %t61 = load { i64, [4 x i64] }, ptr %l38
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t60, { i64, [4 x i64] } %t61)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t62 = load i32, ptr %l6, !tbaa !23
  %t64 = add i32 %t62, 1
  store i32 %t64, ptr %l6, !tbaa !23
  br label %bb7
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca %"compiler/mir:Lvalue"
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
  %t11 = load %"compiler/mir:Lvalue", ptr %l2
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %t11)
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
  call void @__olang_check_failed(ptr @olang_loc_a5f83820f05cb9f9_5f257facca4b96a5)
  unreachable
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l10 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i64
  %l20 = alloca ptr
  %l22 = alloca i64
  %l33 = alloca i1
  %s3 = alloca %olang.scope
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
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v1, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l10
  br label %bb4
bb4:
  br label %bb27
bb5:
  %t15 = load { i64, [1 x i64] }, ptr %l1
  %t17 = extractvalue { i64, [1 x i64] } %t15, 0
  %t18 = icmp eq i64 %t17, 1
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t21 = getelementptr { i64 }, ptr %t20, i32 0, i32 0
  %t22 = load i64, ptr %t21
  store i64 %t22, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp slt i64 %t24, 0
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb12
bb10:
  %t28 = load i64, ptr %l3, !tbaa !24
  store i64 %t28, ptr %l17, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:verifier", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/mir:Fn", ptr %t32, i32 0, i32 6
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = call ptr @__olang_scope_or(ptr %v1, ptr %t35)
  %t37 = ptrtoint ptr %t36 to i64
  %t39 = inttoptr i64 %t37 to ptr
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %t39, ptr %t40)
  store i64 %t41, ptr %l22
  br label %bb11
bb11:
  %t42 = load i64, ptr %l17, !tbaa !24
  %t43 = load i64, ptr %l22, !tbaa !24
  %t44 = icmp sge i64 %t42, %t43
  store i1 %t44, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l16, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t52 = call i64 @__olang_fmt_i64(ptr null, i64 %t48)
  %t53 = add i64 %t50, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = getelementptr i8, ptr %t54, i64 %t50
  %t56 = call i64 @__olang_fmt_i64(ptr %t55, i64 %t48)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t54, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } %t58, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t47, { i64, ptr } %t65)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  br label %bb27
bb17:
  %t68 = load { i64, [1 x i64] }, ptr %l1
  %t70 = extractvalue { i64, [1 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 4
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t74 = getelementptr { i32 }, ptr %t73, i32 0, i32 0
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l4, !tbaa !23
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l4, !tbaa !23
  %t81 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %t77, i32 %t78)
  store i1 %t81, ptr %l33
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
  call void @__olang_check_failed(ptr @olang_loc_6be72733009cb689_7eadbfb9b429b955)
  unreachable
bb27:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefType(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca i1
  %l11 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i1
  %l30 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t12, ptr %t13, i32 %t7)
  store i1 %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load i1, ptr %l9, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l11, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t20, i32 %t21)
  store { i64, ptr } %t24, ptr %l14
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t25 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = add i64 %t26, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t25, i64 %t26)
  %t32 = getelementptr i8, ptr %t31, i64 %t26
  call void @olang_textcopy(ptr %t32, ptr %t28, i64 %t29)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = extractvalue { i64, ptr } %t34, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t42, { i64, ptr } %t41)
  br label %bb5
bb5:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  store i32 %t44, ptr %rv
  br label %ret
bb6:
  %t46 = load i32, ptr %l1, !tbaa !23
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t50 = icmp ne i32 %t46, %t47
  br i1 %t50, label %bb7, label %bb8
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l22, !tbaa !29
  %t53 = load i32, ptr %l1, !tbaa !23
  store i32 %t53, ptr %l23, !tbaa !23
  %t54 = load ptr, ptr %l3, !tbaa !29
  store ptr %t54, ptr %l24, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  %t56 = load ptr, ptr %l24, !tbaa !29
  %t57 = call ptr @__olang_scope_or(ptr %v1, ptr %t56)
  %t58 = ptrtoint ptr %t57 to i64
  %t60 = inttoptr i64 %t58 to ptr
  %t61 = load ptr, ptr %l24, !tbaa !29
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t60, ptr %t61, i32 %t55)
  store i32 %t63, ptr %l27
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t64 = load ptr, ptr %l22, !tbaa !29
  %t65 = load i32, ptr %l23, !tbaa !23
  %t66 = load i32, ptr %l27, !tbaa !23
  %t67 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v1, ptr %t64, i32 %t65, i32 %t66)
  store i1 %t67, ptr %l28
  br label %bb10
bb10:
  %t68 = load i1, ptr %l28, !tbaa !21
  %t69 = xor i1 %t68, true
  store i1 %t69, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t71 = load i1, ptr %l21, !tbaa !21
  br i1 %t71, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l30, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l2, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s3, ptr %v1, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l33
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l1, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s3, ptr %v1, ptr %t78, i32 %t79)
  store { i64, ptr } %t82, ptr %l36
  br label %bb15
bb15:
  %t83 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t85 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = add i64 %t84, %t87
  %t89 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = add i64 %t91, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t83, i64 %t84)
  %t97 = getelementptr i8, ptr %t96, i64 %t84
  call void @olang_textcopy(ptr %t97, ptr %t86, i64 %t87)
  %t98 = getelementptr i8, ptr %t97, i64 %t87
  call void @olang_textcopy(ptr %t98, ptr %t89, i64 %t90)
  %t99 = getelementptr i8, ptr %t98, i64 %t90
  call void @olang_textcopy(ptr %t99, ptr %t93, i64 %t94)
  %t100 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t96, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = extractvalue { i64, ptr } %t101, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  %t109 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t109, { i64, ptr } %t108)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  %t111 = load i32, ptr %l2, !tbaa !23
  store i32 %t111, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eregionOrType(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i32
  %l14 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp ne i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/mir:verifier", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/mir:verifier", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l9, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t16 = load ptr, ptr %l9, !tbaa !29
  %t17 = call ptr @__olang_scope_or(ptr %v1, ptr %t16)
  %t18 = ptrtoint ptr %t17 to i64
  %t20 = inttoptr i64 %t18 to ptr
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t20, ptr %t21, i32 %t15)
  store i32 %t23, ptr %l12
  br label %bb3
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t24 = load ptr, ptr %l7, !tbaa !29
  %t25 = call ptr @__olang_scope_or(ptr %v1, ptr %t24)
  %t26 = ptrtoint ptr %t25 to i64
  %t28 = inttoptr i64 %t26 to ptr
  %t29 = load ptr, ptr %l7, !tbaa !29
  %t30 = load i32, ptr %l12, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t28, ptr %t29, i32 %t30)
  store i1 %t31, ptr %l14
  br label %bb4
bb4:
  %t32 = load i1, ptr %l14, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l5, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l16, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t37, i32 %t38)
  store { i64, ptr } %t41, ptr %l19
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t42 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t44 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = add i64 %t43, %t46
  %t48 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t42, i64 %t43)
  %t49 = getelementptr i8, ptr %t48, i64 %t43
  call void @olang_textcopy(ptr %t49, ptr %t45, i64 %t46)
  %t50 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } %t51, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t59, { i64, ptr } %t58)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb10
bb10:
  %t61 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eshape(ptr %v0, ptr %v1, ptr %v2, ptr %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereach(ptr %v0, ptr %v1, ptr %t7)
  br label %bb5
bb5:
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etypes(ptr %v0, ptr %v1, ptr %v2, ptr %t9)
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eflow(ptr %v0, ptr %v1, ptr %t11)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameRepr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca i32
  %l28 = alloca i1
  %l29 = alloca ptr
  %l32 = alloca i32
  %l35 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca ptr
  %l42 = alloca i32
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l8, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t12, ptr %t13, i32 %a1)
  store i32 %t15, ptr %l11
  br label %bb1
bb1:
  %t16 = load i32, ptr %l11, !tbaa !23
  store i32 %t16, ptr %l4, !tbaa !23
  %t17 = load ptr, ptr %l3, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t19 = load ptr, ptr %l12, !tbaa !29
  %t20 = call ptr @__olang_scope_or(ptr %v1, ptr %t19)
  %t21 = ptrtoint ptr %t20 to i64
  %t23 = inttoptr i64 %t21 to ptr
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t23, ptr %t24, i32 %a2)
  store i32 %t26, ptr %l15
  br label %bb2
bb2:
  %t27 = load i32, ptr %l15, !tbaa !23
  store i32 %t27, ptr %l5, !tbaa !23
  %t28 = load ptr, ptr %l3, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load i32, ptr %l4, !tbaa !23
  %t30 = load i32, ptr %l5, !tbaa !23
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = call ptr @__olang_scope_or(ptr %v1, ptr %t31)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l16, !tbaa !29
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t35, ptr %t36, i32 %t29, i32 %t30)
  store i1 %t39, ptr %l20
  br label %bb3
bb3:
  %t40 = load i1, ptr %l20, !tbaa !21
  br i1 %t40, label %bb4, label %bb5
bb4:
  store i1 true, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l3, !tbaa !29
  store ptr %t42, ptr %l22, !tbaa !29
  %t43 = load i32, ptr %l4, !tbaa !23
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = call ptr @__olang_scope_or(ptr %v1, ptr %t44)
  %t46 = ptrtoint ptr %t45 to i64
  %t48 = inttoptr i64 %t46 to ptr
  %t49 = load ptr, ptr %l22, !tbaa !29
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t48, ptr %t49, i32 %t43)
  store i32 %t51, ptr %l25
  br label %bb7
bb7:
  %t52 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t54 = trunc i64 19 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb8, label %bb9
bb8:
  %t57 = load ptr, ptr %l3, !tbaa !29
  store ptr %t57, ptr %l29, !tbaa !29
  %t58 = load i32, ptr %l5, !tbaa !23
  %t59 = load ptr, ptr %l29, !tbaa !29
  %t60 = call ptr @__olang_scope_or(ptr %v1, ptr %t59)
  %t61 = ptrtoint ptr %t60 to i64
  %t63 = inttoptr i64 %t61 to ptr
  %t64 = load ptr, ptr %l29, !tbaa !29
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t63, ptr %t64, i32 %t58)
  store i32 %t66, ptr %l32
  br label %bb10
bb9:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t67 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t69 = trunc i64 19 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t72 = load i1, ptr %l28, !tbaa !21
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t73 = load ptr, ptr %l3, !tbaa !29
  store ptr %t73, ptr %l35, !tbaa !29
  %t74 = load i32, ptr %l4, !tbaa !23
  %t75 = load ptr, ptr %l35, !tbaa !29
  %t76 = call ptr @__olang_scope_or(ptr %v1, ptr %t75)
  %t77 = ptrtoint ptr %t76 to i64
  %t79 = inttoptr i64 %t77 to ptr
  %t80 = load ptr, ptr %l35, !tbaa !29
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %t79, ptr %t80, i32 %t74)
  store i32 %t82, ptr %l38
  br label %bb14
bb13:
  br label %bb22
bb14:
  %t83 = load ptr, ptr %l3, !tbaa !29
  store ptr %t83, ptr %l39, !tbaa !29
  %t84 = load i32, ptr %l5, !tbaa !23
  %t85 = load ptr, ptr %l39, !tbaa !29
  %t86 = call ptr @__olang_scope_or(ptr %v1, ptr %t85)
  %t87 = ptrtoint ptr %t86 to i64
  %t89 = inttoptr i64 %t87 to ptr
  %t90 = load ptr, ptr %l39, !tbaa !29
  %t92 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %t89, ptr %t90, i32 %t84)
  store i32 %t92, ptr %l42
  br label %bb15
bb15:
  %t93 = load i32, ptr %l38, !tbaa !23
  %t94 = load i32, ptr %l42, !tbaa !23
  %t95 = icmp eq i32 %t93, %t94
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l45, !tbaa !29
  %t98 = load ptr, ptr %l3, !tbaa !29
  store ptr %t98, ptr %l46, !tbaa !29
  %t99 = load i32, ptr %l4, !tbaa !23
  %t100 = load ptr, ptr %l46, !tbaa !29
  %t101 = call ptr @__olang_scope_or(ptr %v1, ptr %t100)
  %t102 = ptrtoint ptr %t101 to i64
  %t104 = inttoptr i64 %t102 to ptr
  %t105 = load ptr, ptr %l46, !tbaa !29
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t104, ptr %t105, i32 %t99)
  store i32 %t107, ptr %l49
  br label %bb18
bb17:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb21
bb18:
  %t108 = load ptr, ptr %l3, !tbaa !29
  store ptr %t108, ptr %l50, !tbaa !29
  %t109 = load i32, ptr %l5, !tbaa !23
  %t110 = load ptr, ptr %l50, !tbaa !29
  %t111 = call ptr @__olang_scope_or(ptr %v1, ptr %t110)
  %t112 = ptrtoint ptr %t111 to i64
  %t114 = inttoptr i64 %t112 to ptr
  %t115 = load ptr, ptr %l50, !tbaa !29
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t114, ptr %t115, i32 %t109)
  store i32 %t117, ptr %l53
  br label %bb19
bb19:
  %t118 = load ptr, ptr %l45, !tbaa !29
  %t119 = load i32, ptr %l49, !tbaa !23
  %t120 = load i32, ptr %l53, !tbaa !23
  %t121 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameRepr(ptr %v0, ptr %v1, ptr %t118, i32 %t119, i32 %t120)
  store i1 %t121, ptr %l54
  br label %bb20
bb20:
  %t122 = load i1, ptr %l54, !tbaa !21
  store i1 %t122, ptr %l44, !tbaa !21
  br label %bb21
bb21:
  %t123 = load i1, ptr %l44, !tbaa !21
  store i1 %t123, ptr %rv
  br label %ret
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eshape(ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/mir:Local"
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca %"compiler/mir:Local"
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca %"compiler/mir:Call"
  %l34 = alloca ptr
  %l35 = alloca i64
  %l36 = alloca %"compiler/mir:Case"
  %l37 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca %"compiler/mir:Task"
  %l40 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i32
  %l43 = alloca i32
  %l44 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i32
  %l50 = alloca i32
  %l52 = alloca %"compiler/mir:TaskClause"
  %l53 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca i64
  %l61 = alloca { i64, [1 x i64] }
  %l62 = alloca i32
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca { i64, [1 x i64] }
  %l70 = alloca %"compiler/mir:Range"
  %l71 = alloca %"compiler/mir:Range"
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l91 = alloca i64
  %l97 = alloca ptr
  %l99 = alloca i64
  %l104 = alloca ptr
  %l108 = alloca i32
  %l115 = alloca ptr
  %l117 = alloca ptr
  %l121 = alloca i32
  %l123 = alloca { i64, ptr }
  %l125 = alloca i64
  %l127 = alloca ptr
  %l129 = alloca i64
  %l131 = alloca ptr
  %l133 = alloca i64
  %l135 = alloca ptr
  %l137 = alloca i64
  %l141 = alloca ptr
  %l143 = alloca i64
  %l147 = alloca i64
  %l150 = alloca i64
  %l168 = alloca ptr
  %l170 = alloca ptr
  %l173 = alloca i32
  %l174 = alloca i1
  %l176 = alloca ptr
  %l178 = alloca ptr
  %l181 = alloca i32
  %l184 = alloca %"compiler/mir:Local"
  %l188 = alloca ptr
  %l189 = alloca i64
  %l191 = alloca ptr
  %l194 = alloca i32
  %l201 = alloca i1
  %l203 = alloca ptr
  %l204 = alloca { i64, ptr }
  %l208 = alloca i1
  %l209 = alloca i1
  %l211 = alloca ptr
  %l214 = alloca i1
  %l215 = alloca i1
  %l217 = alloca ptr
  %l219 = alloca ptr
  %l222 = alloca i32
  %l224 = alloca ptr
  %l225 = alloca { i64, ptr }
  %l229 = alloca i32
  %l231 = alloca i1
  %l236 = alloca i1
  %l238 = alloca ptr
  %l240 = alloca { i64, ptr }
  %l244 = alloca i1
  %l246 = alloca i1
  %l249 = alloca ptr
  %l250 = alloca i64
  %l252 = alloca ptr
  %l256 = alloca { i64, ptr }
  %l258 = alloca ptr
  %l259 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l271 = alloca i64
  %l272 = alloca ptr
  %l274 = alloca i64
  %l277 = alloca ptr
  %l280 = alloca i32
  %l283 = alloca i1
  %l284 = alloca i1
  %l286 = alloca ptr
  %l290 = alloca %"compiler/mir:Local"
  %l301 = alloca ptr
  %l303 = alloca i64
  %l307 = alloca i64
  %l310 = alloca i64
  %l329 = alloca ptr
  %l332 = alloca %"compiler/mir:Local"
  %l345 = alloca ptr
  %l347 = alloca i64
  %l351 = alloca i64
  %l354 = alloca i64
  %l373 = alloca ptr
  %l376 = alloca %"compiler/mir:ScopeInfo"
  %l383 = alloca i1
  %l396 = alloca i64
  %l397 = alloca ptr
  %l399 = alloca i64
  %l402 = alloca ptr
  %l405 = alloca %"compiler/mir:Call"
  %l420 = alloca i1
  %l426 = alloca i1
  %l429 = alloca i1
  %l434 = alloca i64
  %l435 = alloca ptr
  %l437 = alloca i64
  %l440 = alloca ptr
  %l443 = alloca %"compiler/mir:Case"
  %l446 = alloca i1
  %l451 = alloca i64
  %l452 = alloca ptr
  %l454 = alloca i64
  %l457 = alloca ptr
  %l460 = alloca %"compiler/mir:Task"
  %l473 = alloca i1
  %l478 = alloca ptr
  %l479 = alloca %"compiler/mir:Range"
  %l481 = alloca ptr
  %l483 = alloca i64
  %l484 = alloca i1
  %l489 = alloca i32
  %l492 = alloca i32
  %l510 = alloca ptr
  %l512 = alloca ptr
  %l519 = alloca %"compiler/mir:Lvalue"
  %l522 = alloca ptr
  %l523 = alloca %"compiler/mir:Range"
  %l525 = alloca ptr
  %l527 = alloca i64
  %l528 = alloca i1
  %l533 = alloca i32
  %l536 = alloca i32
  %l555 = alloca ptr
  %l562 = alloca %"compiler/mir:TaskClause"
  %l563 = alloca ptr
  %l564 = alloca %"compiler/mir:Range"
  %l566 = alloca ptr
  %l568 = alloca i64
  %l569 = alloca i1
  %l578 = alloca i64
  %l579 = alloca ptr
  %l581 = alloca i64
  %l584 = alloca ptr
  %l587 = alloca { i64, [4 x i64] }
  %l594 = alloca i64
  %l595 = alloca ptr
  %l597 = alloca i64
  %l600 = alloca ptr
  %l603 = alloca { i64, [1 x i64] }
  %l610 = alloca i64
  %l611 = alloca ptr
  %l613 = alloca i64
  %l616 = alloca ptr
  %l619 = alloca { i64, [1 x i64] }
  %l625 = alloca i1
  %l629 = alloca ptr
  %l631 = alloca i64
  %l635 = alloca i64
  %l638 = alloca i64
  %l657 = alloca ptr
  %l660 = alloca { i64, [1 x i64] }
  %l664 = alloca ptr
  %l665 = alloca %"compiler/mir:Range"
  %l667 = alloca ptr
  %l669 = alloca i64
  %l670 = alloca i1
  %l674 = alloca ptr
  %l675 = alloca %"compiler/mir:Range"
  %l677 = alloca ptr
  %l679 = alloca i64
  %l680 = alloca i1
  %l687 = alloca ptr
  %l689 = alloca i64
  %l693 = alloca i64
  %l696 = alloca i64
  %l717 = alloca ptr
  %l720 = alloca ptr
  %l723 = alloca i64
  %l727 = alloca i64
  %l730 = alloca i64
  %l750 = alloca ptr
  %l754 = alloca { i64, [21 x i64] }
  %l770 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s63 = alloca %olang.scope
  %s68 = alloca %olang.scope
  %s70 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/mir:verifier", ptr %t6, i32 0, i32 2
  %t10 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l91
  br label %bb1
bb1:
  %t11 = load i64, ptr %l91, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/mir:verifier", ptr %t12, i32 0, i32 3
  store i64 -1, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/mir:verifier", ptr %t17, i32 0, i32 4
  store i64 -1, ptr %t21, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/mir:Fn", ptr %t22, i32 0, i32 9
  store ptr %t24, ptr %l97, !tbaa !29
  %t25 = load ptr, ptr %l97, !tbaa !29
  %t26 = call ptr @__olang_scope_or(ptr %v1, ptr %t25)
  %t27 = ptrtoint ptr %t26 to i64
  %t29 = inttoptr i64 %t27 to ptr
  %t30 = load ptr, ptr %l97, !tbaa !29
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t29, ptr %t30)
  store i64 %t31, ptr %l99
  br label %bb2
bb2:
  %t32 = load i64, ptr %l99, !tbaa !24
  %t33 = icmp eq i64 %t32, 0
  br i1 %t33, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t35, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/mir:verifier", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l104, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/mir:Fn", ptr %t42, i32 0, i32 1
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = load ptr, ptr %l104, !tbaa !29
  %t47 = call ptr @__olang_scope_or(ptr %v2, ptr %t46)
  %t48 = ptrtoint ptr %t47 to i64
  %t50 = inttoptr i64 %t48 to ptr
  %t51 = load ptr, ptr %l104, !tbaa !29
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t50, ptr %t51, i32 %t45)
  store i32 %t53, ptr %l108
  br label %bb7
bb7:
  %t54 = load i32, ptr %l108, !range !{i32 0, i32 33}
  %t56 = trunc i64 21 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t61 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t61, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/mir:verifier", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l115, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/mir:verifier", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l117, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/mir:Fn", ptr %t72, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t76 = load ptr, ptr %l117, !tbaa !29
  %t77 = call ptr @__olang_scope_or(ptr %v2, ptr %t76)
  %t78 = ptrtoint ptr %t77 to i64
  %t80 = inttoptr i64 %t78 to ptr
  %t81 = load ptr, ptr %l117, !tbaa !29
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %t80, ptr %t81, i32 %t75)
  store i32 %t83, ptr %l121
  br label %bb12
bb12:
  %t84 = load ptr, ptr %l115, !tbaa !29
  %t85 = call ptr @__olang_scope_or(ptr %v2, ptr %t84)
  %t86 = ptrtoint ptr %t85 to i64
  %t88 = inttoptr i64 %t86 to ptr
  %t89 = load ptr, ptr %l115, !tbaa !29
  %t90 = load i32, ptr %l121, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t88, ptr %s0, ptr %t89, i32 %t90)
  store { i64, ptr } %t91, ptr %l123
  br label %bb13
bb13:
  %t92 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t92, ptr %l5, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  store i64 %t95, ptr %l125, !tbaa !24
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/mir:Fn", ptr %t96, i32 0, i32 4
  store ptr %t98, ptr %l127, !tbaa !29
  %t99 = load ptr, ptr %l127, !tbaa !29
  %t100 = call ptr @__olang_scope_or(ptr %v1, ptr %t99)
  %t101 = ptrtoint ptr %t100 to i64
  %t103 = inttoptr i64 %t101 to ptr
  %t104 = load ptr, ptr %l127, !tbaa !29
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %t103, ptr %t104)
  store i64 %t105, ptr %l129
  br label %bb14
bb14:
  %t106 = load i64, ptr %l125, !tbaa !24
  %t107 = load i64, ptr %l129, !tbaa !24
  %t108 = icmp ne i64 %t106, %t107
  br i1 %t108, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l131, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  store i64 %t113, ptr %l133, !tbaa !24
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/mir:Fn", ptr %t114, i32 0, i32 4
  store ptr %t116, ptr %l135, !tbaa !29
  %t117 = load ptr, ptr %l135, !tbaa !29
  %t118 = call ptr @__olang_scope_or(ptr %v1, ptr %t117)
  %t119 = ptrtoint ptr %t118 to i64
  %t121 = inttoptr i64 %t119 to ptr
  %t122 = load ptr, ptr %l135, !tbaa !29
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %t121, ptr %t122)
  store i64 %t123, ptr %l137
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t124 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t126 = load i64, ptr %l133, !tbaa !24
  %t127 = call i64 @__olang_fmt_i64(ptr null, i64 %t126)
  %t128 = add i64 %t125, %t127
  %t129 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t131 = add i64 %t128, %t130
  %t132 = load i64, ptr %l137, !tbaa !24
  %t133 = call i64 @__olang_fmt_i64(ptr null, i64 %t132)
  %t134 = add i64 %t131, %t133
  %t135 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t124, i64 %t125)
  %t136 = getelementptr i8, ptr %t135, i64 %t125
  %t137 = call i64 @__olang_fmt_i64(ptr %t136, i64 %t126)
  %t138 = getelementptr i8, ptr %t136, i64 %t127
  call void @olang_textcopy(ptr %t138, ptr %t129, i64 %t130)
  %t139 = getelementptr i8, ptr %t138, i64 %t130
  %t140 = call i64 @__olang_fmt_i64(ptr %t139, i64 %t132)
  %t141 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t135, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load ptr, ptr %l131, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t150, { i64, ptr } %t149)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  store i64 0, ptr %l6, !tbaa !24
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/mir:Fn", ptr %t152, i32 0, i32 4
  store ptr %t154, ptr %l141, !tbaa !29
  %t155 = load ptr, ptr %l141, !tbaa !29
  %t156 = call ptr @__olang_scope_or(ptr %v1, ptr %t155)
  %t157 = ptrtoint ptr %t156 to i64
  %t159 = inttoptr i64 %t157 to ptr
  %t160 = load ptr, ptr %l141, !tbaa !29
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %t159, ptr %t160)
  store i64 %t161, ptr %l143
  br label %bb20
bb20:
  %t162 = load i64, ptr %l143, !tbaa !24
  store i64 %t162, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t163 = load i64, ptr %l7, !tbaa !24
  %t164 = load i64, ptr %l6, !tbaa !24
  %t167 = icmp sgt i64 %t163, %t164
  br i1 %t167, label %bb21, label %bb22
bb21:
  %t169 = load i64, ptr %l8, !tbaa !24
  %t171 = icmp sgt i64 %t169, 0
  br i1 %t171, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb26
bb23:
  %t173 = load i64, ptr %l7, !tbaa !24
  %t174 = load i64, ptr %l6, !tbaa !24
  %t177 = sub i64 %t173, %t174
  %t178 = load i64, ptr %l8, !tbaa !24
  %t181 = add i64 %t177, %t178
  %t183 = sub i64 %t181, 1
  %t184 = load i64, ptr %l8, !tbaa !24
  %t187 = sdiv i64 %t183, %t184
  store i64 %t187, ptr %l150, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb25
bb25:
  %t189 = load i64, ptr %l150, !tbaa !24
  store i64 %t189, ptr %l147, !tbaa !24
  br label %bb26
bb26:
  %t190 = load i64, ptr %l147, !tbaa !24
  store i64 %t190, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  %t191 = load i64, ptr %l10, !tbaa !24
  %t192 = load i64, ptr %l9, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb28, label %bb29
bb28:
  br label %bb71
bb29:
  br label %bb30
bb30:
  %t199 = load i64, ptr %l6, !tbaa !24
  %t200 = load i64, ptr %l10, !tbaa !24
  %t201 = load i64, ptr %l8, !tbaa !24
  %t204 = mul i64 %t200, %t201
  %t207 = add i64 %t199, %t204
  store i64 %t207, ptr %l11, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l168, !tbaa !29
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t212 = getelementptr %"compiler/mir:Fn", ptr %t210, i32 0, i32 4
  store ptr %t212, ptr %l170, !tbaa !29
  %t213 = load i64, ptr %l11, !tbaa !24
  %t214 = load ptr, ptr %l170, !tbaa !29
  %t215 = call ptr @__olang_scope_or(ptr %v1, ptr %t214)
  %t216 = ptrtoint ptr %t215 to i64
  %t218 = inttoptr i64 %t216 to ptr
  %t219 = load ptr, ptr %l170, !tbaa !29
  %t221 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %t218, ptr %t219, i64 %t213)
  store i32 %t221, ptr %l173
  br label %bb31
bb31:
  %t222 = load ptr, ptr %l168, !tbaa !29
  %t223 = load i32, ptr %l173, !tbaa !23
  %t224 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %t222, i32 %t223)
  store i1 %t224, ptr %l174
  br label %bb32
bb32:
  %t225 = load i1, ptr %l174, !tbaa !21
  br i1 %t225, label %bb33, label %bb34
bb33:
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t228 = getelementptr %"compiler/mir:Fn", ptr %t226, i32 0, i32 7
  store ptr %t228, ptr %l176, !tbaa !29
  %t229 = load ptr, ptr %l1, !tbaa !29
  %t231 = getelementptr %"compiler/mir:Fn", ptr %t229, i32 0, i32 4
  store ptr %t231, ptr %l178, !tbaa !29
  %t232 = load i64, ptr %l11, !tbaa !24
  %t233 = load ptr, ptr %l178, !tbaa !29
  %t234 = call ptr @__olang_scope_or(ptr %v1, ptr %t233)
  %t235 = ptrtoint ptr %t234 to i64
  %t237 = inttoptr i64 %t235 to ptr
  %t238 = load ptr, ptr %l178, !tbaa !29
  %t240 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %t237, ptr %t238, i64 %t232)
  store i32 %t240, ptr %l181
  br label %bb35
bb34:
  br label %bb69
bb35:
  %t241 = load i32, ptr %l181, !tbaa !23
  %t242 = sext i32 %t241 to i64
  %t243 = load ptr, ptr %l176, !tbaa !29
  %t244 = call ptr @__olang_scope_or(ptr %v1, ptr %t243)
  %t245 = ptrtoint ptr %t244 to i64
  %t247 = inttoptr i64 %t245 to ptr
  %t248 = load ptr, ptr %l176, !tbaa !29
  %t250 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t247, ptr %t248, i64 %t242)
  store %"compiler/mir:Local" %t250, ptr %l184
  br label %bb36
bb36:
  %t251 = load %"compiler/mir:Local", ptr %l184
  store %"compiler/mir:Local" %t251, ptr %l12
  %t252 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 3
  %t253 = load i32, ptr %t252, !range !{i32 0, i32 4}
  %t255 = trunc i64 0 to i32
  %t256 = icmp eq i32 %t253, %t255
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s8
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l188, !tbaa !29
  %t261 = load i64, ptr %l11, !tbaa !24
  store i64 %t261, ptr %l189, !tbaa !24
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr %"compiler/mir:Fn", ptr %t262, i32 0, i32 4
  store ptr %t264, ptr %l191, !tbaa !29
  %t265 = load i64, ptr %l11, !tbaa !24
  %t266 = load ptr, ptr %l191, !tbaa !29
  %t267 = call ptr @__olang_scope_or(ptr %v1, ptr %t266)
  %t268 = ptrtoint ptr %t267 to i64
  %t270 = inttoptr i64 %t268 to ptr
  %t271 = load ptr, ptr %l191, !tbaa !29
  %t273 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %t270, ptr %t271, i64 %t265)
  store i32 %t273, ptr %l194
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t274 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t276 = load i64, ptr %l189, !tbaa !24
  %t277 = call i64 @__olang_fmt_i64(ptr null, i64 %t276)
  %t278 = add i64 %t275, %t277
  %t279 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t281 = add i64 %t278, %t280
  %t282 = load i32, ptr %l194, !tbaa !23
  %t283 = sext i32 %t282 to i64
  %t284 = call i64 @__olang_fmt_i64(ptr null, i64 %t283)
  %t285 = add i64 %t281, %t284
  %t286 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t288 = add i64 %t285, %t287
  %t289 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t288)
  call void @olang_textcopy(ptr %t289, ptr %t274, i64 %t275)
  %t290 = getelementptr i8, ptr %t289, i64 %t275
  %t291 = call i64 @__olang_fmt_i64(ptr %t290, i64 %t276)
  %t292 = getelementptr i8, ptr %t290, i64 %t277
  call void @olang_textcopy(ptr %t292, ptr %t279, i64 %t280)
  %t293 = getelementptr i8, ptr %t292, i64 %t280
  %t294 = call i64 @__olang_fmt_i64(ptr %t293, i64 %t283)
  %t295 = getelementptr i8, ptr %t293, i64 %t284
  call void @olang_textcopy(ptr %t295, ptr %t286, i64 %t287)
  %t296 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t289, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = extractvalue { i64, ptr } %t297, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  %t305 = load ptr, ptr %l188, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s8, ptr %t305, { i64, ptr } %t304)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s8)
  br label %bb41
bb41:
  %t307 = load i64, ptr %l11, !tbaa !24
  %t308 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t308, 0
  %t313 = icmp slt i64 %t307, %t310
  br i1 %t313, label %bb42, label %bb43
bb42:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/mir:verifier", ptr %t315, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !29
  store ptr %t318, ptr %l203, !tbaa !29
  %t319 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t319, ptr %l204, !tbaa !27
  %t320 = load i64, ptr %l11, !tbaa !24
  %t322 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr i32, ptr %t323, i64 %t320
  %t325 = load i32, ptr %t324, !tbaa !33
  %t326 = load ptr, ptr %l203, !tbaa !29
  %t327 = call ptr @__olang_scope_or(ptr %v2, ptr %t326)
  %t328 = ptrtoint ptr %t327 to i64
  %t330 = inttoptr i64 %t328 to ptr
  %t331 = load ptr, ptr %l203, !tbaa !29
  %t333 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsSpread(ptr %t330, ptr %t331, i32 %t325)
  store i1 %t333, ptr %l208
  br label %bb44
bb43:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb45
bb44:
  %t334 = load i1, ptr %l208, !tbaa !21
  store i1 %t334, ptr %l201, !tbaa !21
  br label %bb45
bb45:
  %t335 = load i1, ptr %l201, !tbaa !21
  br i1 %t335, label %bb46, label %bb47
bb46:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/mir:verifier", ptr %t336, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !29
  store ptr %t339, ptr %l211, !tbaa !29
  %t340 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 2
  %t341 = load i32, ptr %t340, !tbaa !23
  %t342 = load ptr, ptr %l211, !tbaa !29
  %t343 = call ptr @__olang_scope_or(ptr %v2, ptr %t342)
  %t344 = ptrtoint ptr %t343 to i64
  %t346 = inttoptr i64 %t344 to ptr
  %t347 = load ptr, ptr %l211, !tbaa !29
  %t349 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t346, ptr %t347, i32 %t341)
  store i1 %t349, ptr %l214
  br label %bb48
bb47:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb49
bb48:
  %t350 = load i1, ptr %l214, !tbaa !21
  store i1 %t350, ptr %l209, !tbaa !21
  br label %bb49
bb49:
  %t351 = load i1, ptr %l209, !tbaa !21
  br i1 %t351, label %bb50, label %bb51
bb50:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/mir:verifier", ptr %t352, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !29
  store ptr %t355, ptr %l217, !tbaa !29
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/mir:verifier", ptr %t356, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !29
  store ptr %t359, ptr %l219, !tbaa !29
  %t360 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 2
  %t361 = load i32, ptr %t360, !tbaa !23
  %t362 = load ptr, ptr %l219, !tbaa !29
  %t363 = call ptr @__olang_scope_or(ptr %v2, ptr %t362)
  %t364 = ptrtoint ptr %t363 to i64
  %t366 = inttoptr i64 %t364 to ptr
  %t367 = load ptr, ptr %l219, !tbaa !29
  %t369 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t366, ptr %t367, i32 %t361)
  store i32 %t369, ptr %l222
  br label %bb52
bb51:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb55
bb52:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/mir:verifier", ptr %t370, i32 0, i32 1
  %t373 = load ptr, ptr %t372, !tbaa !29
  store ptr %t373, ptr %l224, !tbaa !29
  %t374 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t374, ptr %l225, !tbaa !27
  %t375 = load i64, ptr %l11, !tbaa !24
  %t377 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr i32, ptr %t378, i64 %t375
  %t380 = load i32, ptr %t379, !tbaa !33
  %t381 = load ptr, ptr %l224, !tbaa !29
  %t382 = call ptr @__olang_scope_or(ptr %v2, ptr %t381)
  %t383 = ptrtoint ptr %t382 to i64
  %t385 = inttoptr i64 %t383 to ptr
  %t386 = load ptr, ptr %l224, !tbaa !29
  %t388 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t385, ptr %t386, i32 %t380)
  store i32 %t388, ptr %l229
  br label %bb53
bb53:
  %t389 = load ptr, ptr %l217, !tbaa !29
  %t390 = call ptr @__olang_scope_or(ptr %v2, ptr %t389)
  %t391 = ptrtoint ptr %t390 to i64
  %t393 = inttoptr i64 %t391 to ptr
  %t394 = load ptr, ptr %l217, !tbaa !29
  %t395 = load i32, ptr %l222, !tbaa !23
  %t396 = load i32, ptr %l229, !tbaa !23
  %t397 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t393, ptr %t394, i32 %t395, i32 %t396)
  store i1 %t397, ptr %l231
  br label %bb54
bb54:
  %t398 = load i1, ptr %l231, !tbaa !21
  store i1 %t398, ptr %l215, !tbaa !21
  br label %bb55
bb55:
  %t399 = load i1, ptr %l215, !tbaa !21
  store i1 %t399, ptr %l13, !tbaa !21
  %t400 = load i64, ptr %l11, !tbaa !24
  %t401 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t403 = extractvalue { i64, ptr } %t401, 0
  %t406 = icmp slt i64 %t400, %t403
  br i1 %t406, label %bb56, label %bb57
bb56:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/mir:verifier", ptr %t408, i32 0, i32 1
  %t411 = load ptr, ptr %t410, !tbaa !29
  store ptr %t411, ptr %l238, !tbaa !29
  %t412 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 2
  %t413 = load i32, ptr %t412, !tbaa !23
  %t414 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t414, ptr %l240, !tbaa !27
  %t415 = load i64, ptr %l11, !tbaa !24
  %t417 = getelementptr { i64, ptr }, ptr %l240, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = getelementptr i32, ptr %t418, i64 %t415
  %t420 = load i32, ptr %t419, !tbaa !33
  %t421 = load ptr, ptr %l238, !tbaa !29
  %t422 = call ptr @__olang_scope_or(ptr %v2, ptr %t421)
  %t423 = ptrtoint ptr %t422 to i64
  %t425 = inttoptr i64 %t423 to ptr
  %t426 = load ptr, ptr %l238, !tbaa !29
  %t429 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t425, ptr %t426, i32 %t413, i32 %t420)
  store i1 %t429, ptr %l244
  br label %bb58
bb57:
  store i1 false, ptr %l236, !tbaa !21
  br label %bb59
bb58:
  %t430 = load i1, ptr %l244, !tbaa !21
  %t431 = xor i1 %t430, true
  store i1 %t431, ptr %l236, !tbaa !21
  br label %bb59
bb59:
  %t433 = load i1, ptr %l236, !tbaa !21
  br i1 %t433, label %bb60, label %bb61
bb60:
  %t434 = load i1, ptr %l13, !tbaa !21
  %t436 = xor i1 %t434, true
  store i1 %t436, ptr %l246, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb62
bb62:
  %t438 = load i1, ptr %l246, !tbaa !21
  br i1 %t438, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s10
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l249, !tbaa !29
  %t440 = load i64, ptr %l11, !tbaa !24
  store i64 %t440, ptr %l250, !tbaa !24
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t443 = getelementptr %"compiler/mir:verifier", ptr %t441, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !29
  store ptr %t444, ptr %l252, !tbaa !29
  %t445 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 2
  %t446 = load i32, ptr %t445, !tbaa !23
  %t447 = load ptr, ptr %l252, !tbaa !29
  %t448 = call ptr @__olang_scope_or(ptr %v2, ptr %t447)
  %t449 = ptrtoint ptr %t448 to i64
  %t451 = inttoptr i64 %t449 to ptr
  %t453 = inttoptr i64 0 to ptr
  %t454 = load ptr, ptr %l252, !tbaa !29
  %t456 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t451, ptr %s10, ptr %t453, ptr %t454, i32 %t446)
  store { i64, ptr } %t456, ptr %l256
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/mir:verifier", ptr %t457, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !29
  store ptr %t460, ptr %l258, !tbaa !29
  %t461 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t461, ptr %l259, !tbaa !27
  %t462 = load i64, ptr %l11, !tbaa !24
  %t464 = getelementptr { i64, ptr }, ptr %l259, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr i32, ptr %t465, i64 %t462
  %t467 = load i32, ptr %t466, !tbaa !33
  %t468 = load ptr, ptr %l258, !tbaa !29
  %t469 = call ptr @__olang_scope_or(ptr %v2, ptr %t468)
  %t470 = ptrtoint ptr %t469 to i64
  %t472 = inttoptr i64 %t470 to ptr
  %t474 = inttoptr i64 0 to ptr
  %t475 = load ptr, ptr %l258, !tbaa !29
  %t477 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t472, ptr %s10, ptr %t474, ptr %t475, i32 %t467)
  store { i64, ptr } %t477, ptr %l264
  br label %bb66
bb66:
  %t478 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t479 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t480 = load i64, ptr %l250, !tbaa !24
  %t481 = call i64 @__olang_fmt_i64(ptr null, i64 %t480)
  %t482 = add i64 %t479, %t481
  %t483 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t484 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t485 = add i64 %t482, %t484
  %t486 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t487 = extractvalue { i64, ptr } %t486, 1
  %t488 = extractvalue { i64, ptr } %t486, 0
  %t489 = add i64 %t485, %t488
  %t490 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t491 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t492 = add i64 %t489, %t491
  %t493 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t494 = extractvalue { i64, ptr } %t493, 1
  %t495 = extractvalue { i64, ptr } %t493, 0
  %t496 = add i64 %t492, %t495
  %t497 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t496)
  call void @olang_textcopy(ptr %t497, ptr %t478, i64 %t479)
  %t498 = getelementptr i8, ptr %t497, i64 %t479
  %t499 = call i64 @__olang_fmt_i64(ptr %t498, i64 %t480)
  %t500 = getelementptr i8, ptr %t498, i64 %t481
  call void @olang_textcopy(ptr %t500, ptr %t483, i64 %t484)
  %t501 = getelementptr i8, ptr %t500, i64 %t484
  call void @olang_textcopy(ptr %t501, ptr %t487, i64 %t488)
  %t502 = getelementptr i8, ptr %t501, i64 %t488
  call void @olang_textcopy(ptr %t502, ptr %t490, i64 %t491)
  %t503 = getelementptr i8, ptr %t502, i64 %t491
  call void @olang_textcopy(ptr %t503, ptr %t494, i64 %t495)
  %t504 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t505 = insertvalue { i64, ptr } %t504, ptr %t497, 1
  %t507 = extractvalue { i64, ptr } %t505, 0
  %t508 = extractvalue { i64, ptr } %t505, 1
  %t509 = mul i64 %t507, 1
  %t510 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t509)
  call void @llvm.memcpy.p0.p0.i64(ptr %t510, ptr %t508, i64 %t509, i1 false)
  %t511 = insertvalue { i64, ptr } undef, i64 %t507, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t510, 1
  %t513 = load ptr, ptr %l249, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s10, ptr %t513, { i64, ptr } %t512)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s10)
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t515 = load i64, ptr %l10, !tbaa !24
  %t517 = add i64 %t515, 1
  store i64 %t517, ptr %l10, !tbaa !24
  br label %bb27
bb71:
  %t519 = load ptr, ptr %l1, !tbaa !29
  %t521 = getelementptr %"compiler/mir:Fn", ptr %t519, i32 0, i32 5
  store ptr %t521, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb72
bb72:
  %t523 = load i64, ptr %l15, !tbaa !24
  store i64 %t523, ptr %l271, !tbaa !24
  %t524 = load ptr, ptr %l14, !tbaa !29
  store ptr %t524, ptr %l272, !tbaa !29
  %t525 = load ptr, ptr %l272, !tbaa !29
  %t526 = call ptr @__olang_scope_or(ptr %v1, ptr %t525)
  %t527 = ptrtoint ptr %t526 to i64
  %t529 = inttoptr i64 %t527 to ptr
  %t530 = load ptr, ptr %l272, !tbaa !29
  %t531 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %t529, ptr %t530)
  store i64 %t531, ptr %l274
  br label %bb73
bb73:
  %t532 = load i64, ptr %l271, !tbaa !24
  %t533 = load i64, ptr %l274, !tbaa !24
  %t534 = icmp slt i64 %t532, %t533
  %t536 = xor i1 %t534, true
  br i1 %t536, label %bb74, label %bb75
bb74:
  br label %bb88
bb75:
  br label %bb76
bb76:
  %t538 = load ptr, ptr %l14, !tbaa !29
  store ptr %t538, ptr %l277, !tbaa !29
  %t539 = load i64, ptr %l15, !tbaa !24
  %t540 = load ptr, ptr %l277, !tbaa !29
  %t541 = call ptr @__olang_scope_or(ptr %v1, ptr %t540)
  %t542 = ptrtoint ptr %t541 to i64
  %t544 = inttoptr i64 %t542 to ptr
  %t545 = load ptr, ptr %l277, !tbaa !29
  %t547 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %t544, ptr %t545, i64 %t539)
  store i32 %t547, ptr %l280
  br label %bb77
bb77:
  %t548 = load i32, ptr %l280, !tbaa !23
  store i32 %t548, ptr %l16, !tbaa !23
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load i32, ptr %l16, !tbaa !23
  %t553 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %t549, i32 %t550)
  store i1 %t553, ptr %l283
  br label %bb78
bb78:
  %t554 = load i1, ptr %l283, !tbaa !21
  br i1 %t554, label %bb79, label %bb80
bb79:
  %t555 = load ptr, ptr %l1, !tbaa !29
  %t557 = getelementptr %"compiler/mir:Fn", ptr %t555, i32 0, i32 7
  store ptr %t557, ptr %l286, !tbaa !29
  %t558 = load i32, ptr %l16, !tbaa !23
  %t560 = sext i32 %t558 to i64
  %t561 = load ptr, ptr %l286, !tbaa !29
  %t562 = call ptr @__olang_scope_or(ptr %v1, ptr %t561)
  %t563 = ptrtoint ptr %t562 to i64
  %t565 = inttoptr i64 %t563 to ptr
  %t566 = load ptr, ptr %l286, !tbaa !29
  %t568 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t565, ptr %t566, i64 %t560)
  store %"compiler/mir:Local" %t568, ptr %l290
  br label %bb81
bb80:
  store i1 false, ptr %l284, !tbaa !21
  br label %bb82
bb81:
  %t569 = getelementptr %"compiler/mir:Local", ptr %l290, i32 0, i32 3
  %t570 = load i32, ptr %t569, !range !{i32 0, i32 4}
  %t572 = trunc i64 1 to i32
  %t573 = icmp eq i32 %t570, %t572
  %t575 = xor i1 %t573, true
  store i1 %t575, ptr %l284, !tbaa !21
  br label %bb82
bb82:
  %t577 = load i1, ptr %l284, !tbaa !21
  br i1 %t577, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s15
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t579 = load i32, ptr %l16, !tbaa !23
  %t580 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t581 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t583 = sext i32 %t579 to i64
  %t584 = call i64 @__olang_fmt_i64(ptr null, i64 %t583)
  %t585 = add i64 %t581, %t584
  %t586 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t587 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t588 = add i64 %t585, %t587
  %t589 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t588)
  call void @olang_textcopy(ptr %t589, ptr %t580, i64 %t581)
  %t590 = getelementptr i8, ptr %t589, i64 %t581
  %t591 = call i64 @__olang_fmt_i64(ptr %t590, i64 %t583)
  %t592 = getelementptr i8, ptr %t590, i64 %t584
  call void @olang_textcopy(ptr %t592, ptr %t586, i64 %t587)
  %t593 = insertvalue { i64, ptr } undef, i64 %t588, 0
  %t594 = insertvalue { i64, ptr } %t593, ptr %t589, 1
  %t596 = extractvalue { i64, ptr } %t594, 0
  %t597 = extractvalue { i64, ptr } %t594, 1
  %t598 = mul i64 %t596, 1
  %t599 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t598)
  call void @llvm.memcpy.p0.p0.i64(ptr %t599, ptr %t597, i64 %t598, i1 false)
  %t600 = insertvalue { i64, ptr } undef, i64 %t596, 0
  %t601 = insertvalue { i64, ptr } %t600, ptr %t599, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s15, ptr %t578, { i64, ptr } %t601)
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t604 = load i64, ptr %l15, !tbaa !24
  %t606 = add i64 %t604, 1
  store i64 %t606, ptr %l15, !tbaa !24
  br label %bb72
bb88:
  store i64 0, ptr %l17, !tbaa !24
  %t608 = load ptr, ptr %l1, !tbaa !29
  %t610 = getelementptr %"compiler/mir:Fn", ptr %t608, i32 0, i32 7
  store ptr %t610, ptr %l301, !tbaa !29
  %t611 = load ptr, ptr %l301, !tbaa !29
  %t612 = call ptr @__olang_scope_or(ptr %v1, ptr %t611)
  %t613 = ptrtoint ptr %t612 to i64
  %t615 = inttoptr i64 %t613 to ptr
  %t616 = load ptr, ptr %l301, !tbaa !29
  %t617 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %t615, ptr %t616)
  store i64 %t617, ptr %l303
  br label %bb89
bb89:
  %t618 = load i64, ptr %l303, !tbaa !24
  store i64 %t618, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t619 = load i64, ptr %l18, !tbaa !24
  %t620 = load i64, ptr %l17, !tbaa !24
  %t623 = icmp sgt i64 %t619, %t620
  br i1 %t623, label %bb90, label %bb91
bb90:
  %t625 = load i64, ptr %l19, !tbaa !24
  %t627 = icmp sgt i64 %t625, 0
  br i1 %t627, label %bb92, label %bb93
bb91:
  store i64 0, ptr %l307, !tbaa !24
  br label %bb95
bb92:
  %t629 = load i64, ptr %l18, !tbaa !24
  %t630 = load i64, ptr %l17, !tbaa !24
  %t633 = sub i64 %t629, %t630
  %t634 = load i64, ptr %l19, !tbaa !24
  %t637 = add i64 %t633, %t634
  %t639 = sub i64 %t637, 1
  %t640 = load i64, ptr %l19, !tbaa !24
  %t643 = sdiv i64 %t639, %t640
  store i64 %t643, ptr %l310, !tbaa !24
  br label %bb94
bb93:
  store i64 0, ptr %l310, !tbaa !24
  br label %bb94
bb94:
  %t645 = load i64, ptr %l310, !tbaa !24
  store i64 %t645, ptr %l307, !tbaa !24
  br label %bb95
bb95:
  %t646 = load i64, ptr %l307, !tbaa !24
  store i64 %t646, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb96
bb96:
  %t647 = load i64, ptr %l21, !tbaa !24
  %t648 = load i64, ptr %l20, !tbaa !24
  %t651 = icmp slt i64 %t647, %t648
  %t653 = xor i1 %t651, true
  br i1 %t653, label %bb97, label %bb98
bb97:
  br label %bb107
bb98:
  br label %bb99
bb99:
  %t655 = load i64, ptr %l17, !tbaa !24
  %t656 = load i64, ptr %l21, !tbaa !24
  %t657 = load i64, ptr %l19, !tbaa !24
  %t660 = mul i64 %t656, %t657
  %t663 = add i64 %t655, %t660
  store i64 %t663, ptr %l22, !tbaa !24
  %t665 = load ptr, ptr %l1, !tbaa !29
  %t667 = getelementptr %"compiler/mir:Fn", ptr %t665, i32 0, i32 7
  store ptr %t667, ptr %l329, !tbaa !29
  %t668 = load i64, ptr %l22, !tbaa !24
  %t669 = load ptr, ptr %l329, !tbaa !29
  %t670 = call ptr @__olang_scope_or(ptr %v1, ptr %t669)
  %t671 = ptrtoint ptr %t670 to i64
  %t673 = inttoptr i64 %t671 to ptr
  %t674 = load ptr, ptr %l329, !tbaa !29
  %t676 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t673, ptr %t674, i64 %t668)
  store %"compiler/mir:Local" %t676, ptr %l332
  br label %bb100
bb100:
  %t677 = load %"compiler/mir:Local", ptr %l332
  store %"compiler/mir:Local" %t677, ptr %l23
  %t678 = getelementptr %"compiler/mir:Local", ptr %l23, i32 0, i32 2
  %t679 = load i32, ptr %t678, !tbaa !23
  %t680 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t683 = icmp eq i32 %t679, %t680
  br i1 %t683, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s20
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t686 = load i64, ptr %l22, !tbaa !24
  %t687 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t688 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t690 = call i64 @__olang_fmt_i64(ptr null, i64 %t686)
  %t691 = add i64 %t688, %t690
  %t692 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t693 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t694 = add i64 %t691, %t693
  %t695 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t694)
  call void @olang_textcopy(ptr %t695, ptr %t687, i64 %t688)
  %t696 = getelementptr i8, ptr %t695, i64 %t688
  %t697 = call i64 @__olang_fmt_i64(ptr %t696, i64 %t686)
  %t698 = getelementptr i8, ptr %t696, i64 %t690
  call void @olang_textcopy(ptr %t698, ptr %t692, i64 %t693)
  %t699 = insertvalue { i64, ptr } undef, i64 %t694, 0
  %t700 = insertvalue { i64, ptr } %t699, ptr %t695, 1
  %t702 = extractvalue { i64, ptr } %t700, 0
  %t703 = extractvalue { i64, ptr } %t700, 1
  %t704 = mul i64 %t702, 1
  %t705 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t704)
  call void @llvm.memcpy.p0.p0.i64(ptr %t705, ptr %t703, i64 %t704, i1 false)
  %t706 = insertvalue { i64, ptr } undef, i64 %t702, 0
  %t707 = insertvalue { i64, ptr } %t706, ptr %t705, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s20, ptr %t685, { i64, ptr } %t707)
  br label %bb103
bb102:
  br label %bb104
bb103:
  call void @__olang_scope_close(ptr %s20)
  br label %bb104
bb104:
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t711 = getelementptr %"compiler/mir:Local", ptr %l23, i32 0, i32 4
  %t712 = load { i64, [1 x i64] }, ptr %t711
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t710, { i64, [1 x i64] } %t712)
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t715 = load i64, ptr %l21, !tbaa !24
  %t717 = add i64 %t715, 1
  store i64 %t717, ptr %l21, !tbaa !24
  br label %bb96
bb107:
  store i64 0, ptr %l24, !tbaa !24
  %t719 = load ptr, ptr %l1, !tbaa !29
  %t721 = getelementptr %"compiler/mir:Fn", ptr %t719, i32 0, i32 8
  store ptr %t721, ptr %l345, !tbaa !29
  %t722 = load ptr, ptr %l345, !tbaa !29
  %t723 = call ptr @__olang_scope_or(ptr %v1, ptr %t722)
  %t724 = ptrtoint ptr %t723 to i64
  %t726 = inttoptr i64 %t724 to ptr
  %t727 = load ptr, ptr %l345, !tbaa !29
  %t728 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t726, ptr %t727)
  store i64 %t728, ptr %l347
  br label %bb108
bb108:
  %t729 = load i64, ptr %l347, !tbaa !24
  store i64 %t729, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t730 = load i64, ptr %l25, !tbaa !24
  %t731 = load i64, ptr %l24, !tbaa !24
  %t734 = icmp sgt i64 %t730, %t731
  br i1 %t734, label %bb109, label %bb110
bb109:
  %t736 = load i64, ptr %l26, !tbaa !24
  %t738 = icmp sgt i64 %t736, 0
  br i1 %t738, label %bb111, label %bb112
bb110:
  store i64 0, ptr %l351, !tbaa !24
  br label %bb114
bb111:
  %t740 = load i64, ptr %l25, !tbaa !24
  %t741 = load i64, ptr %l24, !tbaa !24
  %t744 = sub i64 %t740, %t741
  %t745 = load i64, ptr %l26, !tbaa !24
  %t748 = add i64 %t744, %t745
  %t750 = sub i64 %t748, 1
  %t751 = load i64, ptr %l26, !tbaa !24
  %t754 = sdiv i64 %t750, %t751
  store i64 %t754, ptr %l354, !tbaa !24
  br label %bb113
bb112:
  store i64 0, ptr %l354, !tbaa !24
  br label %bb113
bb113:
  %t756 = load i64, ptr %l354, !tbaa !24
  store i64 %t756, ptr %l351, !tbaa !24
  br label %bb114
bb114:
  %t757 = load i64, ptr %l351, !tbaa !24
  store i64 %t757, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb115
bb115:
  %t758 = load i64, ptr %l28, !tbaa !24
  %t759 = load i64, ptr %l27, !tbaa !24
  %t762 = icmp slt i64 %t758, %t759
  %t764 = xor i1 %t762, true
  br i1 %t764, label %bb116, label %bb117
bb116:
  br label %bb128
bb117:
  br label %bb118
bb118:
  %t766 = load i64, ptr %l24, !tbaa !24
  %t767 = load i64, ptr %l28, !tbaa !24
  %t768 = load i64, ptr %l26, !tbaa !24
  %t771 = mul i64 %t767, %t768
  %t774 = add i64 %t766, %t771
  store i64 %t774, ptr %l29, !tbaa !24
  %t776 = load ptr, ptr %l1, !tbaa !29
  %t778 = getelementptr %"compiler/mir:Fn", ptr %t776, i32 0, i32 8
  store ptr %t778, ptr %l373, !tbaa !29
  %t779 = load i64, ptr %l29, !tbaa !24
  %t780 = load ptr, ptr %l373, !tbaa !29
  %t781 = call ptr @__olang_scope_or(ptr %v1, ptr %t780)
  %t782 = ptrtoint ptr %t781 to i64
  %t784 = inttoptr i64 %t782 to ptr
  %t785 = load ptr, ptr %l373, !tbaa !29
  %t787 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t784, ptr %t785, i64 %t779)
  store %"compiler/mir:ScopeInfo" %t787, ptr %l376
  br label %bb119
bb119:
  %t788 = getelementptr %"compiler/mir:ScopeInfo", ptr %l376, i32 0, i32 1
  %t789 = load i32, ptr %t788, !tbaa !23
  store i32 %t789, ptr %l30, !tbaa !23
  %t791 = load i32, ptr %l30, !tbaa !23
  %t792 = load i64, ptr %l29, !tbaa !24
  %t794 = trunc i64 %t792 to i32
  %t798 = icmp sge i32 %t791, %t794
  br i1 %t798, label %bb120, label %bb121
bb120:
  store i1 true, ptr %l383, !tbaa !21
  br label %bb122
bb121:
  %t800 = load i32, ptr %l30, !tbaa !23
  %t801 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t804 = icmp slt i32 %t800, %t801
  store i1 %t804, ptr %l383, !tbaa !21
  br label %bb122
bb122:
  %t806 = load i1, ptr %l383, !tbaa !21
  br i1 %t806, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s25
  %t807 = load ptr, ptr %l0, !tbaa !29
  %t808 = load i64, ptr %l29, !tbaa !24
  %t809 = load i32, ptr %l30, !tbaa !23
  %t810 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t811 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t813 = call i64 @__olang_fmt_i64(ptr null, i64 %t808)
  %t814 = add i64 %t811, %t813
  %t815 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t816 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t817 = add i64 %t814, %t816
  %t819 = sext i32 %t809 to i64
  %t820 = call i64 @__olang_fmt_i64(ptr null, i64 %t819)
  %t821 = add i64 %t817, %t820
  %t822 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t823 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t824 = add i64 %t821, %t823
  %t825 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t824)
  call void @olang_textcopy(ptr %t825, ptr %t810, i64 %t811)
  %t826 = getelementptr i8, ptr %t825, i64 %t811
  %t827 = call i64 @__olang_fmt_i64(ptr %t826, i64 %t808)
  %t828 = getelementptr i8, ptr %t826, i64 %t813
  call void @olang_textcopy(ptr %t828, ptr %t815, i64 %t816)
  %t829 = getelementptr i8, ptr %t828, i64 %t816
  %t830 = call i64 @__olang_fmt_i64(ptr %t829, i64 %t819)
  %t831 = getelementptr i8, ptr %t829, i64 %t820
  call void @olang_textcopy(ptr %t831, ptr %t822, i64 %t823)
  %t832 = insertvalue { i64, ptr } undef, i64 %t824, 0
  %t833 = insertvalue { i64, ptr } %t832, ptr %t825, 1
  %t835 = extractvalue { i64, ptr } %t833, 0
  %t836 = extractvalue { i64, ptr } %t833, 1
  %t837 = mul i64 %t835, 1
  %t838 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t837)
  call void @llvm.memcpy.p0.p0.i64(ptr %t838, ptr %t836, i64 %t837, i1 false)
  %t839 = insertvalue { i64, ptr } undef, i64 %t835, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t838, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s25, ptr %t807, { i64, ptr } %t840)
  br label %bb125
bb124:
  br label %bb126
bb125:
  call void @__olang_scope_close(ptr %s25)
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t843 = load i64, ptr %l28, !tbaa !24
  %t845 = add i64 %t843, 1
  store i64 %t845, ptr %l28, !tbaa !24
  br label %bb115
bb128:
  %t847 = load ptr, ptr %l1, !tbaa !29
  %t849 = getelementptr %"compiler/mir:Fn", ptr %t847, i32 0, i32 14
  store ptr %t849, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb129
bb129:
  %t851 = load i64, ptr %l32, !tbaa !24
  store i64 %t851, ptr %l396, !tbaa !24
  %t852 = load ptr, ptr %l31, !tbaa !29
  store ptr %t852, ptr %l397, !tbaa !29
  %t853 = load ptr, ptr %l397, !tbaa !29
  %t854 = call ptr @__olang_scope_or(ptr %v1, ptr %t853)
  %t855 = ptrtoint ptr %t854 to i64
  %t857 = inttoptr i64 %t855 to ptr
  %t858 = load ptr, ptr %l397, !tbaa !29
  %t859 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %t857, ptr %t858)
  store i64 %t859, ptr %l399
  br label %bb130
bb130:
  %t860 = load i64, ptr %l396, !tbaa !24
  %t861 = load i64, ptr %l399, !tbaa !24
  %t862 = icmp slt i64 %t860, %t861
  %t864 = xor i1 %t862, true
  br i1 %t864, label %bb131, label %bb132
bb131:
  br label %bb152
bb132:
  br label %bb133
bb133:
  %t866 = load ptr, ptr %l31, !tbaa !29
  store ptr %t866, ptr %l402, !tbaa !29
  %t867 = load i64, ptr %l32, !tbaa !24
  %t868 = load ptr, ptr %l402, !tbaa !29
  %t869 = call ptr @__olang_scope_or(ptr %v1, ptr %t868)
  %t870 = ptrtoint ptr %t869 to i64
  %t872 = inttoptr i64 %t870 to ptr
  %t873 = load ptr, ptr %l402, !tbaa !29
  %t875 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t872, ptr %t873, i64 %t867)
  store %"compiler/mir:Call" %t875, ptr %l405
  br label %bb134
bb134:
  %t876 = load %"compiler/mir:Call", ptr %l405
  store %"compiler/mir:Call" %t876, ptr %l33
  %t877 = load ptr, ptr %l0, !tbaa !29
  %t878 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 0
  %t879 = load { i64, [7 x i64] }, ptr %t878
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecallee(ptr %v0, ptr %v1, ptr %t877, { i64, [7 x i64] } %t879)
  br label %bb135
bb135:
  %t882 = load ptr, ptr %l0, !tbaa !29
  %t883 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 1
  %t884 = load %"compiler/mir:Range", ptr %t883
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eops(ptr %v0, ptr %v1, ptr %t882, %"compiler/mir:Range" %t884)
  br label %bb136
bb136:
  %t887 = load ptr, ptr %l0, !tbaa !29
  %t888 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 2
  %t889 = load %"compiler/mir:Range", ptr %t888
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefs(ptr %v0, ptr %v1, ptr %t887, %"compiler/mir:Range" %t889)
  br label %bb137
bb137:
  %t892 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 4
  %t893 = load i1, ptr %t892, !tbaa !21
  br i1 %t893, label %bb138, label %bb139
bb138:
  %t895 = load ptr, ptr %l0, !tbaa !29
  %t896 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 3
  %t897 = load %"compiler/mir:Lvalue", ptr %t896
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %t895, %"compiler/mir:Lvalue" %t897)
  br label %bb140
bb139:
  br label %bb141
bb140:
  br label %bb141
bb141:
  %t900 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 5
  %t901 = load i32, ptr %t900, !tbaa !23
  %t902 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t905 = icmp ne i32 %t901, %t902
  br i1 %t905, label %bb142, label %bb143
bb142:
  %t907 = load ptr, ptr %l0, !tbaa !29
  %t908 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 5
  %t909 = load i32, ptr %t908, !tbaa !23
  %t912 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t907, i32 %t909)
  store i1 %t912, ptr %l420
  br label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb145
bb145:
  %t913 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 7
  %t914 = load i32, ptr %t913, !tbaa !23
  %t915 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t918 = icmp ne i32 %t914, %t915
  br i1 %t918, label %bb146, label %bb147
bb146:
  %t920 = load ptr, ptr %l0, !tbaa !29
  %t921 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 7
  %t922 = load i32, ptr %t921, !tbaa !23
  %t925 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t920, i32 %t922)
  store i1 %t925, ptr %l426
  br label %bb148
bb147:
  br label %bb150
bb148:
  %t926 = load ptr, ptr %l0, !tbaa !29
  %t927 = getelementptr %"compiler/mir:Call", ptr %l33, i32 0, i32 6
  %t928 = load i32, ptr %t927, !tbaa !23
  %t931 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %t926, i32 %t928)
  store i1 %t931, ptr %l429
  br label %bb149
bb149:
  br label %bb150
bb150:
  br label %bb151
bb151:
  %t932 = load i64, ptr %l32, !tbaa !24
  %t934 = add i64 %t932, 1
  store i64 %t934, ptr %l32, !tbaa !24
  br label %bb129
bb152:
  %t936 = load ptr, ptr %l1, !tbaa !29
  %t938 = getelementptr %"compiler/mir:Fn", ptr %t936, i32 0, i32 15
  store ptr %t938, ptr %l34, !tbaa !29
  store i64 0, ptr %l35, !tbaa !24
  br label %bb153
bb153:
  %t940 = load i64, ptr %l35, !tbaa !24
  store i64 %t940, ptr %l434, !tbaa !24
  %t941 = load ptr, ptr %l34, !tbaa !29
  store ptr %t941, ptr %l435, !tbaa !29
  %t942 = load ptr, ptr %l435, !tbaa !29
  %t943 = call ptr @__olang_scope_or(ptr %v1, ptr %t942)
  %t944 = ptrtoint ptr %t943 to i64
  %t946 = inttoptr i64 %t944 to ptr
  %t947 = load ptr, ptr %l435, !tbaa !29
  %t948 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eLen_3ccompiler_2fmir_3aCase_3e(ptr %t946, ptr %t947)
  store i64 %t948, ptr %l437
  br label %bb154
bb154:
  %t949 = load i64, ptr %l434, !tbaa !24
  %t950 = load i64, ptr %l437, !tbaa !24
  %t951 = icmp slt i64 %t949, %t950
  %t953 = xor i1 %t951, true
  br i1 %t953, label %bb155, label %bb156
bb155:
  br label %bb161
bb156:
  br label %bb157
bb157:
  %t955 = load ptr, ptr %l34, !tbaa !29
  store ptr %t955, ptr %l440, !tbaa !29
  %t956 = load i64, ptr %l35, !tbaa !24
  %t957 = load ptr, ptr %l440, !tbaa !29
  %t958 = call ptr @__olang_scope_or(ptr %v1, ptr %t957)
  %t959 = ptrtoint ptr %t958 to i64
  %t961 = inttoptr i64 %t959 to ptr
  %t962 = load ptr, ptr %l440, !tbaa !29
  %t964 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t961, ptr %t962, i64 %t956)
  store %"compiler/mir:Case" %t964, ptr %l443
  br label %bb158
bb158:
  %t965 = load %"compiler/mir:Case", ptr %l443
  store %"compiler/mir:Case" %t965, ptr %l36
  %t966 = load ptr, ptr %l0, !tbaa !29
  %t967 = getelementptr %"compiler/mir:Case", ptr %l36, i32 0, i32 1
  %t968 = load i32, ptr %t967, !tbaa !23
  %t971 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t966, i32 %t968)
  store i1 %t971, ptr %l446
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t972 = load i64, ptr %l35, !tbaa !24
  %t974 = add i64 %t972, 1
  store i64 %t974, ptr %l35, !tbaa !24
  br label %bb153
bb161:
  %t976 = load ptr, ptr %l1, !tbaa !29
  %t978 = getelementptr %"compiler/mir:Fn", ptr %t976, i32 0, i32 16
  store ptr %t978, ptr %l37, !tbaa !29
  store i64 0, ptr %l38, !tbaa !24
  br label %bb162
bb162:
  store %olang.scope zeroinitializer, ptr %s38
  %t980 = load i64, ptr %l38, !tbaa !24
  store i64 %t980, ptr %l451, !tbaa !24
  %t981 = load ptr, ptr %l37, !tbaa !29
  store ptr %t981, ptr %l452, !tbaa !29
  %t982 = load ptr, ptr %l452, !tbaa !29
  %t983 = call ptr @__olang_scope_or(ptr %v1, ptr %t982)
  %t984 = ptrtoint ptr %t983 to i64
  %t986 = inttoptr i64 %t984 to ptr
  %t987 = load ptr, ptr %l452, !tbaa !29
  %t988 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %t986, ptr %t987)
  store i64 %t988, ptr %l454
  br label %bb163
bb163:
  %t989 = load i64, ptr %l451, !tbaa !24
  %t990 = load i64, ptr %l454, !tbaa !24
  %t991 = icmp slt i64 %t989, %t990
  %t993 = xor i1 %t991, true
  br i1 %t993, label %bb164, label %bb165
bb164:
  call void @__olang_scope_close(ptr %s38)
  br label %bb221
bb165:
  br label %bb166
bb166:
  %t995 = load ptr, ptr %l37, !tbaa !29
  store ptr %t995, ptr %l457, !tbaa !29
  %t996 = load i64, ptr %l38, !tbaa !24
  %t997 = load ptr, ptr %l457, !tbaa !29
  %t998 = call ptr @__olang_scope_or(ptr %v1, ptr %t997)
  %t999 = ptrtoint ptr %t998 to i64
  %t1001 = inttoptr i64 %t999 to ptr
  %t1002 = load ptr, ptr %l457, !tbaa !29
  %t1004 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %t1001, ptr %t1002, i64 %t996)
  store %"compiler/mir:Task" %t1004, ptr %l460
  br label %bb167
bb167:
  %t1005 = load %"compiler/mir:Task", ptr %l460
  store %"compiler/mir:Task" %t1005, ptr %l39
  %t1006 = load ptr, ptr %l0, !tbaa !29
  %t1007 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 0
  %t1008 = load { i64, [7 x i64] }, ptr %t1007
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecallee(ptr %v0, ptr %v1, ptr %t1006, { i64, [7 x i64] } %t1008)
  br label %bb168
bb168:
  %t1011 = load ptr, ptr %l0, !tbaa !29
  %t1012 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 1
  %t1013 = load %"compiler/mir:Range", ptr %t1012
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eops(ptr %v0, ptr %v1, ptr %t1011, %"compiler/mir:Range" %t1013)
  br label %bb169
bb169:
  %t1016 = load ptr, ptr %l0, !tbaa !29
  %t1017 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 5
  %t1018 = load %"compiler/mir:Range", ptr %t1017
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eops(ptr %v0, ptr %v1, ptr %t1016, %"compiler/mir:Range" %t1018)
  br label %bb170
bb170:
  %t1021 = load ptr, ptr %l0, !tbaa !29
  %t1022 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 2
  %t1023 = load %"compiler/mir:Range", ptr %t1022
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefs(ptr %v0, ptr %v1, ptr %t1021, %"compiler/mir:Range" %t1023)
  br label %bb171
bb171:
  %t1026 = load ptr, ptr %l0, !tbaa !29
  %t1027 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 7
  %t1028 = load %"compiler/mir:Range", ptr %t1027
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefs(ptr %v0, ptr %v1, ptr %t1026, %"compiler/mir:Range" %t1028)
  br label %bb172
bb172:
  %t1031 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 7
  %t1032 = getelementptr %"compiler/mir:Range", ptr %t1031, i32 0, i32 1
  %t1033 = load i32, ptr %t1032, !tbaa !23
  %t1035 = icmp ne i32 %t1033, 0
  br i1 %t1035, label %bb173, label %bb174
bb173:
  %t1037 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 7
  %t1038 = getelementptr %"compiler/mir:Range", ptr %t1037, i32 0, i32 1
  %t1039 = load i32, ptr %t1038, !tbaa !23
  %t1040 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 3
  %t1041 = getelementptr %"compiler/mir:Range", ptr %t1040, i32 0, i32 1
  %t1042 = load i32, ptr %t1041, !tbaa !23
  %t1045 = icmp ne i32 %t1039, %t1042
  store i1 %t1045, ptr %l473, !tbaa !21
  br label %bb175
bb174:
  store i1 false, ptr %l473, !tbaa !21
  br label %bb175
bb175:
  %t1047 = load i1, ptr %l473, !tbaa !21
  br i1 %t1047, label %bb176, label %bb177
bb176:
  store %olang.scope zeroinitializer, ptr %s39
  %t1048 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s39, ptr %t1048, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb178
bb177:
  br label %bb179
bb178:
  call void @__olang_scope_close(ptr %s39)
  br label %bb179
bb179:
  %t1050 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1050, ptr %l478, !tbaa !29
  %t1051 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 3
  %t1052 = load %"compiler/mir:Range", ptr %t1051
  store %"compiler/mir:Range" %t1052, ptr %l479
  %t1053 = load ptr, ptr %l1, !tbaa !29
  %t1055 = getelementptr %"compiler/mir:Fn", ptr %t1053, i32 0, i32 13
  store ptr %t1055, ptr %l481, !tbaa !29
  %t1056 = load ptr, ptr %l481, !tbaa !29
  %t1057 = call ptr @__olang_scope_or(ptr %v1, ptr %t1056)
  %t1058 = ptrtoint ptr %t1057 to i64
  %t1060 = inttoptr i64 %t1058 to ptr
  %t1061 = load ptr, ptr %l481, !tbaa !29
  %t1062 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eLen_3ccompiler_2fmir_3aLvalue_3e(ptr %t1060, ptr %t1061)
  store i64 %t1062, ptr %l483
  br label %bb180
bb180:
  %t1063 = load ptr, ptr %l478, !tbaa !29
  %t1064 = load %"compiler/mir:Range", ptr %l479
  %t1065 = load i64, ptr %l483, !tbaa !24
  %t1066 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s38, ptr %t1063, %"compiler/mir:Range" %t1064, i64 %t1065, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t1066, ptr %l484
  br label %bb181
bb181:
  %t1067 = load i1, ptr %l484, !tbaa !21
  br i1 %t1067, label %bb182, label %bb183
bb182:
  store i32 0, ptr %l40, !tbaa !23
  %t1068 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 3
  %t1069 = getelementptr %"compiler/mir:Range", ptr %t1068, i32 0, i32 1
  %t1070 = load i32, ptr %t1069, !tbaa !23
  store i32 %t1070, ptr %l41, !tbaa !23
  store i32 1, ptr %l42, !tbaa !23
  %t1072 = load i32, ptr %l41, !tbaa !23
  %t1073 = load i32, ptr %l40, !tbaa !23
  %t1076 = icmp sgt i32 %t1072, %t1073
  br i1 %t1076, label %bb184, label %bb185
bb183:
  br label %bb198
bb184:
  %t1078 = load i32, ptr %l42, !tbaa !23
  %t1080 = icmp sgt i32 %t1078, 0
  br i1 %t1080, label %bb186, label %bb187
bb185:
  store i32 0, ptr %l489, !tbaa !23
  br label %bb189
bb186:
  %t1082 = load i32, ptr %l41, !tbaa !23
  %t1083 = load i32, ptr %l40, !tbaa !23
  %t1086 = sub i32 %t1082, %t1083
  %t1087 = load i32, ptr %l42, !tbaa !23
  %t1090 = add i32 %t1086, %t1087
  %t1092 = sub i32 %t1090, 1
  %t1093 = load i32, ptr %l42, !tbaa !23
  %t1096 = sdiv i32 %t1092, %t1093
  store i32 %t1096, ptr %l492, !tbaa !23
  br label %bb188
bb187:
  store i32 0, ptr %l492, !tbaa !23
  br label %bb188
bb188:
  %t1098 = load i32, ptr %l492, !tbaa !23
  store i32 %t1098, ptr %l489, !tbaa !23
  br label %bb189
bb189:
  %t1099 = load i32, ptr %l489, !tbaa !23
  store i32 %t1099, ptr %l43, !tbaa !23
  store i32 0, ptr %l44, !tbaa !23
  br label %bb190
bb190:
  %t1100 = load i32, ptr %l44, !tbaa !23
  %t1101 = load i32, ptr %l43, !tbaa !23
  %t1104 = icmp slt i32 %t1100, %t1101
  %t1106 = xor i1 %t1104, true
  br i1 %t1106, label %bb191, label %bb192
bb191:
  br label %bb197
bb192:
  br label %bb193
bb193:
  %t1108 = load i32, ptr %l40, !tbaa !23
  %t1109 = load i32, ptr %l44, !tbaa !23
  %t1110 = load i32, ptr %l42, !tbaa !23
  %t1113 = mul i32 %t1109, %t1110
  %t1116 = add i32 %t1108, %t1113
  %t1118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1118, ptr %l510, !tbaa !29
  %t1119 = load ptr, ptr %l1, !tbaa !29
  %t1121 = getelementptr %"compiler/mir:Fn", ptr %t1119, i32 0, i32 13
  store ptr %t1121, ptr %l512, !tbaa !29
  %t1122 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 3
  %t1123 = getelementptr %"compiler/mir:Range", ptr %t1122, i32 0, i32 0
  %t1124 = load i32, ptr %t1123, !tbaa !23
  %t1126 = sext i32 %t1124 to i64
  %t1129 = sext i32 %t1116 to i64
  %t1132 = add i64 %t1126, %t1129
  %t1133 = load ptr, ptr %l512, !tbaa !29
  %t1134 = call ptr @__olang_scope_or(ptr %v1, ptr %t1133)
  %t1135 = ptrtoint ptr %t1134 to i64
  %t1137 = inttoptr i64 %t1135 to ptr
  %t1138 = load ptr, ptr %l512, !tbaa !29
  %t1140 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %t1137, ptr %t1138, i64 %t1132)
  store %"compiler/mir:Lvalue" %t1140, ptr %l519
  br label %bb194
bb194:
  %t1141 = load ptr, ptr %l510, !tbaa !29
  %t1142 = load %"compiler/mir:Lvalue", ptr %l519
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %t1141, %"compiler/mir:Lvalue" %t1142)
  br label %bb195
bb195:
  br label %bb196
bb196:
  %t1143 = load i32, ptr %l44, !tbaa !23
  %t1145 = add i32 %t1143, 1
  store i32 %t1145, ptr %l44, !tbaa !23
  br label %bb190
bb197:
  br label %bb198
bb198:
  %t1147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1147, ptr %l522, !tbaa !29
  %t1148 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 4
  %t1149 = load %"compiler/mir:Range", ptr %t1148
  store %"compiler/mir:Range" %t1149, ptr %l523
  %t1150 = load ptr, ptr %l1, !tbaa !29
  %t1152 = getelementptr %"compiler/mir:Fn", ptr %t1150, i32 0, i32 17
  store ptr %t1152, ptr %l525, !tbaa !29
  %t1153 = load ptr, ptr %l525, !tbaa !29
  %t1154 = call ptr @__olang_scope_or(ptr %v1, ptr %t1153)
  %t1155 = ptrtoint ptr %t1154 to i64
  %t1157 = inttoptr i64 %t1155 to ptr
  %t1158 = load ptr, ptr %l525, !tbaa !29
  %t1159 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eLen_3ccompiler_2fmir_3aTaskClause_3e(ptr %t1157, ptr %t1158)
  store i64 %t1159, ptr %l527
  br label %bb199
bb199:
  %t1160 = load ptr, ptr %l522, !tbaa !29
  %t1161 = load %"compiler/mir:Range", ptr %l523
  %t1162 = load i64, ptr %l527, !tbaa !24
  %t1163 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s38, ptr %t1160, %"compiler/mir:Range" %t1161, i64 %t1162, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t1163, ptr %l528
  br label %bb200
bb200:
  %t1164 = load i1, ptr %l528, !tbaa !21
  br i1 %t1164, label %bb201, label %bb202
bb201:
  store i32 0, ptr %l46, !tbaa !23
  %t1165 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 4
  %t1166 = getelementptr %"compiler/mir:Range", ptr %t1165, i32 0, i32 1
  %t1167 = load i32, ptr %t1166, !tbaa !23
  store i32 %t1167, ptr %l47, !tbaa !23
  store i32 1, ptr %l48, !tbaa !23
  %t1169 = load i32, ptr %l47, !tbaa !23
  %t1170 = load i32, ptr %l46, !tbaa !23
  %t1173 = icmp sgt i32 %t1169, %t1170
  br i1 %t1173, label %bb203, label %bb204
bb202:
  br label %bb219
bb203:
  %t1175 = load i32, ptr %l48, !tbaa !23
  %t1177 = icmp sgt i32 %t1175, 0
  br i1 %t1177, label %bb205, label %bb206
bb204:
  store i32 0, ptr %l533, !tbaa !23
  br label %bb208
bb205:
  %t1179 = load i32, ptr %l47, !tbaa !23
  %t1180 = load i32, ptr %l46, !tbaa !23
  %t1183 = sub i32 %t1179, %t1180
  %t1184 = load i32, ptr %l48, !tbaa !23
  %t1187 = add i32 %t1183, %t1184
  %t1189 = sub i32 %t1187, 1
  %t1190 = load i32, ptr %l48, !tbaa !23
  %t1193 = sdiv i32 %t1189, %t1190
  store i32 %t1193, ptr %l536, !tbaa !23
  br label %bb207
bb206:
  store i32 0, ptr %l536, !tbaa !23
  br label %bb207
bb207:
  %t1195 = load i32, ptr %l536, !tbaa !23
  store i32 %t1195, ptr %l533, !tbaa !23
  br label %bb208
bb208:
  %t1196 = load i32, ptr %l533, !tbaa !23
  store i32 %t1196, ptr %l49, !tbaa !23
  store i32 0, ptr %l50, !tbaa !23
  br label %bb209
bb209:
  store %olang.scope zeroinitializer, ptr %s46
  %t1197 = load i32, ptr %l50, !tbaa !23
  %t1198 = load i32, ptr %l49, !tbaa !23
  %t1201 = icmp slt i32 %t1197, %t1198
  %t1203 = xor i1 %t1201, true
  br i1 %t1203, label %bb210, label %bb211
bb210:
  call void @__olang_scope_close(ptr %s46)
  br label %bb218
bb211:
  br label %bb212
bb212:
  %t1205 = load i32, ptr %l46, !tbaa !23
  %t1206 = load i32, ptr %l50, !tbaa !23
  %t1207 = load i32, ptr %l48, !tbaa !23
  %t1210 = mul i32 %t1206, %t1207
  %t1213 = add i32 %t1205, %t1210
  %t1215 = load ptr, ptr %l1, !tbaa !29
  %t1217 = getelementptr %"compiler/mir:Fn", ptr %t1215, i32 0, i32 17
  store ptr %t1217, ptr %l555, !tbaa !29
  %t1218 = getelementptr %"compiler/mir:Task", ptr %l39, i32 0, i32 4
  %t1219 = getelementptr %"compiler/mir:Range", ptr %t1218, i32 0, i32 0
  %t1220 = load i32, ptr %t1219, !tbaa !23
  %t1222 = sext i32 %t1220 to i64
  %t1225 = sext i32 %t1213 to i64
  %t1228 = add i64 %t1222, %t1225
  %t1229 = load ptr, ptr %l555, !tbaa !29
  %t1230 = call ptr @__olang_scope_or(ptr %v1, ptr %t1229)
  %t1231 = ptrtoint ptr %t1230 to i64
  %t1233 = inttoptr i64 %t1231 to ptr
  %t1234 = load ptr, ptr %l555, !tbaa !29
  %t1236 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %t1233, ptr %t1234, i64 %t1228)
  store %"compiler/mir:TaskClause" %t1236, ptr %l562
  br label %bb213
bb213:
  %t1237 = load %"compiler/mir:TaskClause", ptr %l562
  store %"compiler/mir:TaskClause" %t1237, ptr %l52
  %t1238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1238, ptr %l563, !tbaa !29
  %t1239 = getelementptr %"compiler/mir:TaskClause", ptr %l52, i32 0, i32 0
  %t1240 = load %"compiler/mir:Range", ptr %t1239
  store %"compiler/mir:Range" %t1240, ptr %l564
  %t1241 = load ptr, ptr %l1, !tbaa !29
  %t1243 = getelementptr %"compiler/mir:Fn", ptr %t1241, i32 0, i32 18
  store ptr %t1243, ptr %l566, !tbaa !29
  %t1244 = load ptr, ptr %l566, !tbaa !29
  %t1245 = call ptr @__olang_scope_or(ptr %v1, ptr %t1244)
  %t1246 = ptrtoint ptr %t1245 to i64
  %t1248 = inttoptr i64 %t1246 to ptr
  %t1249 = load ptr, ptr %l566, !tbaa !29
  %t1250 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eLen_3ccompiler_2ftyped_3aItem_3e(ptr %t1248, ptr %t1249)
  store i64 %t1250, ptr %l568
  br label %bb214
bb214:
  %t1251 = load ptr, ptr %l563, !tbaa !29
  %t1252 = load %"compiler/mir:Range", ptr %l564
  %t1253 = load i64, ptr %l568, !tbaa !24
  %t1254 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s46, ptr %t1251, %"compiler/mir:Range" %t1252, i64 %t1253, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t1254, ptr %l569
  br label %bb215
bb215:
  %t1255 = load ptr, ptr %l0, !tbaa !29
  %t1256 = getelementptr %"compiler/mir:TaskClause", ptr %l52, i32 0, i32 2
  %t1257 = load { i64, [4 x i64] }, ptr %t1256
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t1255, { i64, [4 x i64] } %t1257)
  br label %bb216
bb216:
  call void @__olang_scope_close(ptr %s46)
  br label %bb217
bb217:
  %t1260 = load i32, ptr %l50, !tbaa !23
  %t1262 = add i32 %t1260, 1
  store i32 %t1262, ptr %l50, !tbaa !23
  br label %bb209
bb218:
  br label %bb219
bb219:
  call void @__olang_scope_close(ptr %s38)
  br label %bb220
bb220:
  %t1264 = load i64, ptr %l38, !tbaa !24
  %t1266 = add i64 %t1264, 1
  store i64 %t1266, ptr %l38, !tbaa !24
  br label %bb162
bb221:
  %t1268 = load ptr, ptr %l1, !tbaa !29
  %t1270 = getelementptr %"compiler/mir:Fn", ptr %t1268, i32 0, i32 11
  store ptr %t1270, ptr %l53, !tbaa !29
  store i64 0, ptr %l54, !tbaa !24
  br label %bb222
bb222:
  %t1272 = load i64, ptr %l54, !tbaa !24
  store i64 %t1272, ptr %l578, !tbaa !24
  %t1273 = load ptr, ptr %l53, !tbaa !29
  store ptr %t1273, ptr %l579, !tbaa !29
  %t1274 = load ptr, ptr %l579, !tbaa !29
  %t1275 = call ptr @__olang_scope_or(ptr %v1, ptr %t1274)
  %t1276 = ptrtoint ptr %t1275 to i64
  %t1278 = inttoptr i64 %t1276 to ptr
  %t1279 = load ptr, ptr %l579, !tbaa !29
  %t1280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %t1278, ptr %t1279)
  store i64 %t1280, ptr %l581
  br label %bb223
bb223:
  %t1281 = load i64, ptr %l578, !tbaa !24
  %t1282 = load i64, ptr %l581, !tbaa !24
  %t1283 = icmp slt i64 %t1281, %t1282
  %t1285 = xor i1 %t1283, true
  br i1 %t1285, label %bb224, label %bb225
bb224:
  br label %bb230
bb225:
  br label %bb226
bb226:
  %t1287 = load ptr, ptr %l53, !tbaa !29
  store ptr %t1287, ptr %l584, !tbaa !29
  %t1288 = load i64, ptr %l54, !tbaa !24
  %t1289 = load ptr, ptr %l584, !tbaa !29
  %t1290 = call ptr @__olang_scope_or(ptr %v1, ptr %t1289)
  %t1291 = ptrtoint ptr %t1290 to i64
  %t1293 = inttoptr i64 %t1291 to ptr
  %t1294 = load ptr, ptr %l584, !tbaa !29
  %t1296 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %t1293, ptr %t1294, i64 %t1288)
  store { i64, [4 x i64] } %t1296, ptr %l587
  br label %bb227
bb227:
  %t1297 = load { i64, [4 x i64] }, ptr %l587
  %t1298 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t1298, { i64, [4 x i64] } %t1297)
  br label %bb228
bb228:
  br label %bb229
bb229:
  %t1302 = load i64, ptr %l54, !tbaa !24
  %t1304 = add i64 %t1302, 1
  store i64 %t1304, ptr %l54, !tbaa !24
  br label %bb222
bb230:
  %t1306 = load ptr, ptr %l1, !tbaa !29
  %t1308 = getelementptr %"compiler/mir:Fn", ptr %t1306, i32 0, i32 12
  store ptr %t1308, ptr %l56, !tbaa !29
  store i64 0, ptr %l57, !tbaa !24
  br label %bb231
bb231:
  %t1310 = load i64, ptr %l57, !tbaa !24
  store i64 %t1310, ptr %l594, !tbaa !24
  %t1311 = load ptr, ptr %l56, !tbaa !29
  store ptr %t1311, ptr %l595, !tbaa !29
  %t1312 = load ptr, ptr %l595, !tbaa !29
  %t1313 = call ptr @__olang_scope_or(ptr %v1, ptr %t1312)
  %t1314 = ptrtoint ptr %t1313 to i64
  %t1316 = inttoptr i64 %t1314 to ptr
  %t1317 = load ptr, ptr %l595, !tbaa !29
  %t1318 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %t1316, ptr %t1317)
  store i64 %t1318, ptr %l597
  br label %bb232
bb232:
  %t1319 = load i64, ptr %l594, !tbaa !24
  %t1320 = load i64, ptr %l597, !tbaa !24
  %t1321 = icmp slt i64 %t1319, %t1320
  %t1323 = xor i1 %t1321, true
  br i1 %t1323, label %bb233, label %bb234
bb233:
  br label %bb239
bb234:
  br label %bb235
bb235:
  %t1325 = load ptr, ptr %l56, !tbaa !29
  store ptr %t1325, ptr %l600, !tbaa !29
  %t1326 = load i64, ptr %l57, !tbaa !24
  %t1327 = load ptr, ptr %l600, !tbaa !29
  %t1328 = call ptr @__olang_scope_or(ptr %v1, ptr %t1327)
  %t1329 = ptrtoint ptr %t1328 to i64
  %t1331 = inttoptr i64 %t1329 to ptr
  %t1332 = load ptr, ptr %l600, !tbaa !29
  %t1334 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t1331, ptr %t1332, i64 %t1326)
  store { i64, [1 x i64] } %t1334, ptr %l603
  br label %bb236
bb236:
  %t1335 = load { i64, [1 x i64] }, ptr %l603
  %t1336 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t1336, { i64, [1 x i64] } %t1335)
  br label %bb237
bb237:
  br label %bb238
bb238:
  %t1340 = load i64, ptr %l57, !tbaa !24
  %t1342 = add i64 %t1340, 1
  store i64 %t1342, ptr %l57, !tbaa !24
  br label %bb231
bb239:
  %t1344 = load ptr, ptr %l1, !tbaa !29
  %t1346 = getelementptr %"compiler/mir:Fn", ptr %t1344, i32 0, i32 10
  store ptr %t1346, ptr %l59, !tbaa !29
  store i64 0, ptr %l60, !tbaa !24
  br label %bb240
bb240:
  %t1348 = load i64, ptr %l60, !tbaa !24
  store i64 %t1348, ptr %l610, !tbaa !24
  %t1349 = load ptr, ptr %l59, !tbaa !29
  store ptr %t1349, ptr %l611, !tbaa !29
  %t1350 = load ptr, ptr %l611, !tbaa !29
  %t1351 = call ptr @__olang_scope_or(ptr %v1, ptr %t1350)
  %t1352 = ptrtoint ptr %t1351 to i64
  %t1354 = inttoptr i64 %t1352 to ptr
  %t1355 = load ptr, ptr %l611, !tbaa !29
  %t1356 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %t1354, ptr %t1355)
  store i64 %t1356, ptr %l613
  br label %bb241
bb241:
  %t1357 = load i64, ptr %l610, !tbaa !24
  %t1358 = load i64, ptr %l613, !tbaa !24
  %t1359 = icmp slt i64 %t1357, %t1358
  %t1361 = xor i1 %t1359, true
  br i1 %t1361, label %bb242, label %bb243
bb242:
  br label %bb257
bb243:
  br label %bb244
bb244:
  %t1363 = load ptr, ptr %l59, !tbaa !29
  store ptr %t1363, ptr %l616, !tbaa !29
  %t1364 = load i64, ptr %l60, !tbaa !24
  %t1365 = load ptr, ptr %l616, !tbaa !29
  %t1366 = call ptr @__olang_scope_or(ptr %v1, ptr %t1365)
  %t1367 = ptrtoint ptr %t1366 to i64
  %t1369 = inttoptr i64 %t1367 to ptr
  %t1370 = load ptr, ptr %l616, !tbaa !29
  %t1372 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %t1369, ptr %t1370, i64 %t1364)
  store { i64, [1 x i64] } %t1372, ptr %l619
  br label %bb245
bb245:
  %t1373 = load { i64, [1 x i64] }, ptr %l619
  store { i64, [1 x i64] } %t1373, ptr %l61
  %t1374 = load { i64, [1 x i64] }, ptr %l61
  %t1376 = extractvalue { i64, [1 x i64] } %t1374, 0
  %t1377 = icmp eq i64 %t1376, 1
  br i1 %t1377, label %bb246, label %bb247
bb246:
  %t1379 = getelementptr { i64, [1 x i64] }, ptr %l61, i32 0, i32 1
  %t1380 = getelementptr { i32 }, ptr %t1379, i32 0, i32 0
  %t1381 = load i32, ptr %t1380
  store i32 %t1381, ptr %l62, !tbaa !23
  br label %bb248
bb247:
  br label %bb250
bb248:
  %t1383 = load ptr, ptr %l0, !tbaa !29
  %t1384 = load i32, ptr %l62, !tbaa !23
  %t1387 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %t1383, i32 %t1384)
  store i1 %t1387, ptr %l625
  br label %bb249
bb249:
  br label %bb255
bb250:
  br i1 true, label %bb251, label %bb252
bb251:
  br label %bb253
bb252:
  br label %bb254
bb253:
  br label %bb255
bb254:
  call void @__olang_check_failed(ptr @olang_loc_729af306d1a375bd_3b9d78bce782a851)
  unreachable
bb255:
  br label %bb256
bb256:
  %t1388 = load i64, ptr %l60, !tbaa !24
  %t1390 = add i64 %t1388, 1
  store i64 %t1390, ptr %l60, !tbaa !24
  br label %bb240
bb257:
  store i64 0, ptr %l63, !tbaa !24
  %t1392 = load ptr, ptr %l1, !tbaa !29
  %t1394 = getelementptr %"compiler/mir:Fn", ptr %t1392, i32 0, i32 19
  store ptr %t1394, ptr %l629, !tbaa !29
  %t1395 = load ptr, ptr %l629, !tbaa !29
  %t1396 = call ptr @__olang_scope_or(ptr %v1, ptr %t1395)
  %t1397 = ptrtoint ptr %t1396 to i64
  %t1399 = inttoptr i64 %t1397 to ptr
  %t1400 = load ptr, ptr %l629, !tbaa !29
  %t1401 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eLen_3ccompiler_2fmir_3aConstNode_3e(ptr %t1399, ptr %t1400)
  store i64 %t1401, ptr %l631
  br label %bb258
bb258:
  %t1402 = load i64, ptr %l631, !tbaa !24
  store i64 %t1402, ptr %l64, !tbaa !24
  store i64 1, ptr %l65, !tbaa !24
  %t1403 = load i64, ptr %l64, !tbaa !24
  %t1404 = load i64, ptr %l63, !tbaa !24
  %t1407 = icmp sgt i64 %t1403, %t1404
  br i1 %t1407, label %bb259, label %bb260
bb259:
  %t1409 = load i64, ptr %l65, !tbaa !24
  %t1411 = icmp sgt i64 %t1409, 0
  br i1 %t1411, label %bb261, label %bb262
bb260:
  store i64 0, ptr %l635, !tbaa !24
  br label %bb264
bb261:
  %t1413 = load i64, ptr %l64, !tbaa !24
  %t1414 = load i64, ptr %l63, !tbaa !24
  %t1417 = sub i64 %t1413, %t1414
  %t1418 = load i64, ptr %l65, !tbaa !24
  %t1421 = add i64 %t1417, %t1418
  %t1423 = sub i64 %t1421, 1
  %t1424 = load i64, ptr %l65, !tbaa !24
  %t1427 = sdiv i64 %t1423, %t1424
  store i64 %t1427, ptr %l638, !tbaa !24
  br label %bb263
bb262:
  store i64 0, ptr %l638, !tbaa !24
  br label %bb263
bb263:
  %t1429 = load i64, ptr %l638, !tbaa !24
  store i64 %t1429, ptr %l635, !tbaa !24
  br label %bb264
bb264:
  %t1430 = load i64, ptr %l635, !tbaa !24
  store i64 %t1430, ptr %l66, !tbaa !24
  store i64 0, ptr %l67, !tbaa !24
  br label %bb265
bb265:
  %t1431 = load i64, ptr %l67, !tbaa !24
  %t1432 = load i64, ptr %l66, !tbaa !24
  %t1435 = icmp slt i64 %t1431, %t1432
  %t1437 = xor i1 %t1435, true
  br i1 %t1437, label %bb266, label %bb267
bb266:
  br label %bb292
bb267:
  br label %bb268
bb268:
  %t1439 = load i64, ptr %l63, !tbaa !24
  %t1440 = load i64, ptr %l67, !tbaa !24
  %t1441 = load i64, ptr %l65, !tbaa !24
  %t1444 = mul i64 %t1440, %t1441
  %t1447 = add i64 %t1439, %t1444
  store i64 %t1447, ptr %l68, !tbaa !24
  %t1449 = load ptr, ptr %l1, !tbaa !29
  %t1451 = getelementptr %"compiler/mir:Fn", ptr %t1449, i32 0, i32 19
  store ptr %t1451, ptr %l657, !tbaa !29
  %t1452 = load i64, ptr %l68, !tbaa !24
  %t1453 = load ptr, ptr %l657, !tbaa !29
  %t1454 = call ptr @__olang_scope_or(ptr %v1, ptr %t1453)
  %t1455 = ptrtoint ptr %t1454 to i64
  %t1457 = inttoptr i64 %t1455 to ptr
  %t1458 = load ptr, ptr %l657, !tbaa !29
  %t1460 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %t1457, ptr %t1458, i64 %t1452)
  store { i64, [1 x i64] } %t1460, ptr %l660
  br label %bb269
bb269:
  %t1461 = load { i64, [1 x i64] }, ptr %l660
  store { i64, [1 x i64] } %t1461, ptr %l69
  %t1462 = load { i64, [1 x i64] }, ptr %l69
  %t1464 = extractvalue { i64, [1 x i64] } %t1462, 0
  %t1465 = icmp eq i64 %t1464, 1
  br i1 %t1465, label %bb270, label %bb271
bb270:
  %t1467 = getelementptr { i64, [1 x i64] }, ptr %l69, i32 0, i32 1
  %t1468 = getelementptr { %"compiler/mir:Range" }, ptr %t1467, i32 0, i32 0
  %t1469 = load %"compiler/mir:Range", ptr %t1468
  store %"compiler/mir:Range" %t1469, ptr %l70
  br label %bb272
bb271:
  br label %bb275
bb272:
  store %olang.scope zeroinitializer, ptr %s62
  %t1471 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1471, ptr %l664, !tbaa !29
  %t1472 = load %"compiler/mir:Range", ptr %l70
  store %"compiler/mir:Range" %t1472, ptr %l665
  %t1473 = load ptr, ptr %l1, !tbaa !29
  %t1475 = getelementptr %"compiler/mir:Fn", ptr %t1473, i32 0, i32 21
  store ptr %t1475, ptr %l667, !tbaa !29
  %t1476 = load ptr, ptr %l667, !tbaa !29
  %t1477 = call ptr @__olang_scope_or(ptr %v1, ptr %t1476)
  %t1478 = ptrtoint ptr %t1477 to i64
  %t1480 = inttoptr i64 %t1478 to ptr
  %t1481 = load ptr, ptr %l667, !tbaa !29
  %t1482 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %t1480, ptr %t1481)
  store i64 %t1482, ptr %l669
  br label %bb273
bb273:
  %t1483 = load ptr, ptr %l664, !tbaa !29
  %t1484 = load %"compiler/mir:Range", ptr %l665
  %t1485 = load i64, ptr %l669, !tbaa !24
  %t1486 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s62, ptr %t1483, %"compiler/mir:Range" %t1484, i64 %t1485, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t1486, ptr %l670
  br label %bb274
bb274:
  call void @__olang_scope_close(ptr %s62)
  br label %bb290
bb275:
  %t1487 = load { i64, [1 x i64] }, ptr %l69
  %t1489 = extractvalue { i64, [1 x i64] } %t1487, 0
  %t1490 = icmp eq i64 %t1489, 2
  br i1 %t1490, label %bb276, label %bb277
bb276:
  %t1492 = getelementptr { i64, [1 x i64] }, ptr %l69, i32 0, i32 1
  %t1493 = getelementptr { %"compiler/mir:Range" }, ptr %t1492, i32 0, i32 0
  %t1494 = load %"compiler/mir:Range", ptr %t1493
  store %"compiler/mir:Range" %t1494, ptr %l71
  br label %bb278
bb277:
  br label %bb285
bb278:
  store %olang.scope zeroinitializer, ptr %s63
  %t1496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1496, ptr %l674, !tbaa !29
  %t1497 = load %"compiler/mir:Range", ptr %l71
  store %"compiler/mir:Range" %t1497, ptr %l675
  %t1498 = load ptr, ptr %l1, !tbaa !29
  %t1500 = getelementptr %"compiler/mir:Fn", ptr %t1498, i32 0, i32 20
  store ptr %t1500, ptr %l677, !tbaa !29
  %t1501 = load ptr, ptr %l677, !tbaa !29
  %t1502 = call ptr @__olang_scope_or(ptr %v1, ptr %t1501)
  %t1503 = ptrtoint ptr %t1502 to i64
  %t1505 = inttoptr i64 %t1503 to ptr
  %t1506 = load ptr, ptr %l677, !tbaa !29
  %t1507 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %t1505, ptr %t1506)
  store i64 %t1507, ptr %l679
  br label %bb279
bb279:
  %t1508 = load ptr, ptr %l674, !tbaa !29
  %t1509 = load %"compiler/mir:Range", ptr %l675
  %t1510 = load i64, ptr %l679, !tbaa !24
  %t1511 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s63, ptr %t1508, %"compiler/mir:Range" %t1509, i64 %t1510, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t1511, ptr %l680
  br label %bb280
bb280:
  %t1512 = load i1, ptr %l680, !tbaa !21
  br i1 %t1512, label %bb281, label %bb282
bb281:
  %t1513 = load ptr, ptr %l0, !tbaa !29
  %t1514 = load %"compiler/mir:Range", ptr %l71
  %t1515 = load i64, ptr %l68, !tbaa !24
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eitemsBefore(ptr %v0, ptr %v1, ptr %t1513, %"compiler/mir:Range" %t1514, i64 %t1515)
  br label %bb283
bb282:
  br label %bb284
bb283:
  br label %bb284
bb284:
  call void @__olang_scope_close(ptr %s63)
  br label %bb290
bb285:
  br i1 true, label %bb286, label %bb287
bb286:
  br label %bb288
bb287:
  br label %bb289
bb288:
  br label %bb290
bb289:
  call void @__olang_check_failed(ptr @olang_loc_bce7b6ebde80be8c_35c7d20ece1a3fc0)
  unreachable
bb290:
  br label %bb291
bb291:
  %t1519 = load i64, ptr %l67, !tbaa !24
  %t1521 = add i64 %t1519, 1
  store i64 %t1521, ptr %l67, !tbaa !24
  br label %bb265
bb292:
  store i64 0, ptr %l72, !tbaa !24
  %t1523 = load ptr, ptr %l1, !tbaa !29
  %t1525 = getelementptr %"compiler/mir:Fn", ptr %t1523, i32 0, i32 9
  store ptr %t1525, ptr %l687, !tbaa !29
  %t1526 = load ptr, ptr %l687, !tbaa !29
  %t1527 = call ptr @__olang_scope_or(ptr %v1, ptr %t1526)
  %t1528 = ptrtoint ptr %t1527 to i64
  %t1530 = inttoptr i64 %t1528 to ptr
  %t1531 = load ptr, ptr %l687, !tbaa !29
  %t1532 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t1530, ptr %t1531)
  store i64 %t1532, ptr %l689
  br label %bb293
bb293:
  %t1533 = load i64, ptr %l689, !tbaa !24
  store i64 %t1533, ptr %l73, !tbaa !24
  store i64 1, ptr %l74, !tbaa !24
  %t1534 = load i64, ptr %l73, !tbaa !24
  %t1535 = load i64, ptr %l72, !tbaa !24
  %t1538 = icmp sgt i64 %t1534, %t1535
  br i1 %t1538, label %bb294, label %bb295
bb294:
  %t1540 = load i64, ptr %l74, !tbaa !24
  %t1542 = icmp sgt i64 %t1540, 0
  br i1 %t1542, label %bb296, label %bb297
bb295:
  store i64 0, ptr %l693, !tbaa !24
  br label %bb299
bb296:
  %t1544 = load i64, ptr %l73, !tbaa !24
  %t1545 = load i64, ptr %l72, !tbaa !24
  %t1548 = sub i64 %t1544, %t1545
  %t1549 = load i64, ptr %l74, !tbaa !24
  %t1552 = add i64 %t1548, %t1549
  %t1554 = sub i64 %t1552, 1
  %t1555 = load i64, ptr %l74, !tbaa !24
  %t1558 = sdiv i64 %t1554, %t1555
  store i64 %t1558, ptr %l696, !tbaa !24
  br label %bb298
bb297:
  store i64 0, ptr %l696, !tbaa !24
  br label %bb298
bb298:
  %t1560 = load i64, ptr %l696, !tbaa !24
  store i64 %t1560, ptr %l693, !tbaa !24
  br label %bb299
bb299:
  %t1561 = load i64, ptr %l693, !tbaa !24
  store i64 %t1561, ptr %l75, !tbaa !24
  store i64 0, ptr %l76, !tbaa !24
  br label %bb300
bb300:
  store %olang.scope zeroinitializer, ptr %s68
  %t1562 = load i64, ptr %l76, !tbaa !24
  %t1563 = load i64, ptr %l75, !tbaa !24
  %t1566 = icmp slt i64 %t1562, %t1563
  %t1568 = xor i1 %t1566, true
  br i1 %t1568, label %bb301, label %bb302
bb301:
  call void @__olang_scope_close(ptr %s68)
  br label %bb322
bb302:
  br label %bb303
bb303:
  %t1570 = load i64, ptr %l72, !tbaa !24
  %t1571 = load i64, ptr %l76, !tbaa !24
  %t1572 = load i64, ptr %l74, !tbaa !24
  %t1575 = mul i64 %t1571, %t1572
  %t1578 = add i64 %t1570, %t1575
  store i64 %t1578, ptr %l77, !tbaa !24
  %t1580 = load ptr, ptr %l0, !tbaa !29
  %t1581 = load i64, ptr %l77, !tbaa !24
  %t1584 = getelementptr %"compiler/mir:verifier", ptr %t1580, i32 0, i32 3
  store i64 %t1581, ptr %t1584, !tbaa !24
  %t1585 = load ptr, ptr %l1, !tbaa !29
  %t1587 = getelementptr %"compiler/mir:Fn", ptr %t1585, i32 0, i32 9
  store ptr %t1587, ptr %l717, !tbaa !29
  %t1588 = load i64, ptr %l77, !tbaa !24
  %t1589 = load ptr, ptr %l717, !tbaa !29
  %t1590 = call ptr @__olang_scope_or(ptr %v1, ptr %t1589)
  %t1591 = ptrtoint ptr %t1590 to i64
  %t1593 = inttoptr i64 %t1591 to ptr
  %t1594 = load ptr, ptr %l717, !tbaa !29
  %t1596 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t1593, ptr %s68, ptr %t1594, i64 %t1588)
  store ptr %t1596, ptr %l720
  br label %bb304
bb304:
  %t1597 = load ptr, ptr %l720, !tbaa !29
  store ptr %t1597, ptr %l78, !tbaa !29
  store i64 0, ptr %l79, !tbaa !24
  %t1598 = load ptr, ptr %l78, !tbaa !29
  %t1600 = getelementptr %"compiler/mir:BasicBlock", ptr %t1598, i32 0, i32 0
  %t1602 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s68, ptr %t1600)
  store i64 %t1602, ptr %l723
  br label %bb305
bb305:
  %t1603 = load i64, ptr %l723, !tbaa !24
  store i64 %t1603, ptr %l80, !tbaa !24
  store i64 1, ptr %l81, !tbaa !24
  %t1604 = load i64, ptr %l80, !tbaa !24
  %t1605 = load i64, ptr %l79, !tbaa !24
  %t1608 = icmp sgt i64 %t1604, %t1605
  br i1 %t1608, label %bb306, label %bb307
bb306:
  %t1610 = load i64, ptr %l81, !tbaa !24
  %t1612 = icmp sgt i64 %t1610, 0
  br i1 %t1612, label %bb308, label %bb309
bb307:
  store i64 0, ptr %l727, !tbaa !24
  br label %bb311
bb308:
  %t1614 = load i64, ptr %l80, !tbaa !24
  %t1615 = load i64, ptr %l79, !tbaa !24
  %t1618 = sub i64 %t1614, %t1615
  %t1619 = load i64, ptr %l81, !tbaa !24
  %t1622 = add i64 %t1618, %t1619
  %t1624 = sub i64 %t1622, 1
  %t1625 = load i64, ptr %l81, !tbaa !24
  %t1628 = sdiv i64 %t1624, %t1625
  store i64 %t1628, ptr %l730, !tbaa !24
  br label %bb310
bb309:
  store i64 0, ptr %l730, !tbaa !24
  br label %bb310
bb310:
  %t1630 = load i64, ptr %l730, !tbaa !24
  store i64 %t1630, ptr %l727, !tbaa !24
  br label %bb311
bb311:
  %t1631 = load i64, ptr %l727, !tbaa !24
  store i64 %t1631, ptr %l82, !tbaa !24
  store i64 0, ptr %l83, !tbaa !24
  br label %bb312
bb312:
  store %olang.scope zeroinitializer, ptr %s70
  %t1632 = load i64, ptr %l83, !tbaa !24
  %t1633 = load i64, ptr %l82, !tbaa !24
  %t1636 = icmp slt i64 %t1632, %t1633
  %t1638 = xor i1 %t1636, true
  br i1 %t1638, label %bb313, label %bb314
bb313:
  call void @__olang_scope_close(ptr %s70)
  br label %bb319
bb314:
  br label %bb315
bb315:
  %t1640 = load i64, ptr %l79, !tbaa !24
  %t1641 = load i64, ptr %l83, !tbaa !24
  %t1642 = load i64, ptr %l81, !tbaa !24
  %t1645 = mul i64 %t1641, %t1642
  %t1648 = add i64 %t1640, %t1645
  store i64 %t1648, ptr %l84, !tbaa !24
  %t1650 = load ptr, ptr %l0, !tbaa !29
  %t1651 = load i64, ptr %l84, !tbaa !24
  %t1654 = getelementptr %"compiler/mir:verifier", ptr %t1650, i32 0, i32 4
  store i64 %t1651, ptr %t1654, !tbaa !24
  %t1655 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1655, ptr %l750, !tbaa !29
  %t1656 = load ptr, ptr %l78, !tbaa !29
  %t1658 = getelementptr %"compiler/mir:BasicBlock", ptr %t1656, i32 0, i32 0
  %t1659 = load i64, ptr %l84, !tbaa !24
  %t1662 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s68, ptr %t1658, i64 %t1659)
  store { i64, [21 x i64] } %t1662, ptr %l754
  br label %bb316
bb316:
  %t1663 = load { i64, [21 x i64] }, ptr %l754
  %t1664 = call ptr @__olang_scope_alloc_a(ptr %s70, i64 176, i64 8)
  store { i64, [21 x i64] } %t1663, ptr %t1664
  %t1665 = load ptr, ptr %l750, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtShape(ptr %v0, ptr %s70, ptr %v1, ptr %t1665, ptr %t1664)
  br label %bb317
bb317:
  call void @__olang_scope_close(ptr %s70)
  br label %bb318
bb318:
  %t1667 = load i64, ptr %l83, !tbaa !24
  %t1669 = add i64 %t1667, 1
  store i64 %t1669, ptr %l83, !tbaa !24
  br label %bb312
bb319:
  %t1671 = load ptr, ptr %l0, !tbaa !29
  %t1673 = getelementptr %"compiler/mir:verifier", ptr %t1671, i32 0, i32 4
  store i64 -1, ptr %t1673, !tbaa !24
  %t1674 = load ptr, ptr %l0, !tbaa !29
  %t1675 = load ptr, ptr %l78, !tbaa !29
  %t1677 = getelementptr %"compiler/mir:BasicBlock", ptr %t1675, i32 0, i32 1
  %t1678 = load { i64, [8 x i64] }, ptr %t1677
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermShape(ptr %v0, ptr %v1, ptr %t1674, { i64, [8 x i64] } %t1678)
  br label %bb320
bb320:
  call void @__olang_scope_close(ptr %s68)
  br label %bb321
bb321:
  %t1681 = load i64, ptr %l76, !tbaa !24
  %t1683 = add i64 %t1681, 1
  store i64 %t1683, ptr %l76, !tbaa !24
  br label %bb300
bb322:
  %t1685 = load ptr, ptr %l0, !tbaa !29
  %t1689 = getelementptr %"compiler/mir:verifier", ptr %t1685, i32 0, i32 3
  store i64 -1, ptr %t1689, !tbaa !24
  %t1690 = load ptr, ptr %l0, !tbaa !29
  %t1694 = getelementptr %"compiler/mir:verifier", ptr %t1690, i32 0, i32 4
  store i64 -1, ptr %t1694, !tbaa !24
  %t1695 = load ptr, ptr %l0, !tbaa !29
  %t1697 = getelementptr %"compiler/mir:verifier", ptr %t1695, i32 0, i32 2
  %t1699 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %t1697)
  store i64 %t1699, ptr %l770
  br label %bb323
bb323:
  %t1700 = load i64, ptr %l2, !tbaa !24
  %t1701 = load i64, ptr %l770, !tbaa !24
  %t1703 = icmp eq i64 %t1701, %t1700
  call void @__olang_scope_close(ptr %s0)
  store i1 %t1703, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l53 = alloca i32
  %l60 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l9
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 91)
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/mir:verifier", ptr %t4, i32 0, i32 11
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l12, !tbaa !27
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t12 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i64, ptr %t13, i64 %t10
  %t15 = load i64, ptr %t14, !tbaa !34
  store i64 %t15, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l22, !tbaa !24
  store i64 %t43, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l19, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l8, !tbaa !24
  store ptr %l2, ptr %l40, !tbaa !29
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l43, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l43, !tbaa !27
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/mir:verifier", ptr %t67, i32 0, i32 12
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/mir:verifier", ptr %t70, i32 0, i32 10
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l47, !tbaa !27
  %t74 = load i32, ptr %l1, !tbaa !23
  %t76 = sext i32 %t74 to i64
  %t78 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i64, ptr %t79, i64 %t76
  %t81 = load i64, ptr %t80, !tbaa !34
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = add i64 %t81, %t82
  %t88 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t69, i64 %t85)
  store i32 %t88, ptr %l53
  br label %bb16
bb16:
  %t89 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t95 = load i32, ptr %l53, !tbaa !23
  %t96 = sext i32 %t95 to i64
  %t97 = call i64 @__olang_fmt_i64(ptr null, i64 %t96)
  %t98 = add i64 %t94, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t90, i64 %t91)
  %t100 = getelementptr i8, ptr %t99, i64 %t91
  call void @olang_textcopy(ptr %t100, ptr %t92, i64 %t93)
  %t101 = getelementptr i8, ptr %t100, i64 %t93
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t96)
  %t103 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t99, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } %t104, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t112 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t112, { i64, ptr } %t111)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t114 = load i64, ptr %l7, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l7, !tbaa !24
  br label %bb9
bb19:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 93)
  br label %bb20
bb20:
  %t120 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t120, ptr %l60
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t121 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t121, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etaskTargets(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l38 = alloca i32
  %l39 = alloca ptr
  %l42 = alloca ptr
  %l50 = alloca %"compiler/mir:Lvalue"
  %l51 = alloca i32
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l3, !tbaa !23
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Task", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/mir:Range", ptr %t3, i32 0, i32 1
  %t5 = load i32, ptr %t4, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = icmp sgt i32 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i32, ptr %l5, !tbaa !23
  %t15 = icmp sgt i32 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l14, !tbaa !23
  br label %bb6
bb3:
  %t17 = load i32, ptr %l4, !tbaa !23
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = sub i32 %t17, %t18
  %t22 = load i32, ptr %l5, !tbaa !23
  %t25 = add i32 %t21, %t22
  %t27 = sub i32 %t25, 1
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = sdiv i32 %t27, %t28
  store i32 %t31, ptr %l17, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb5
bb5:
  %t33 = load i32, ptr %l17, !tbaa !23
  store i32 %t33, ptr %l14, !tbaa !23
  br label %bb6
bb6:
  %t34 = load i32, ptr %l14, !tbaa !23
  store i32 %t34, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i32, ptr %l7, !tbaa !23
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = icmp slt i32 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t43 = load i32, ptr %l3, !tbaa !23
  %t44 = load i32, ptr %l7, !tbaa !23
  %t45 = load i32, ptr %l5, !tbaa !23
  %t48 = mul i32 %t44, %t45
  %t51 = add i32 %t43, %t48
  store i32 %t51, ptr %l8, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l35, !tbaa !29
  store { i64, ptr } %a2, ptr %l36, !tbaa !27
  %t55 = load i32, ptr %l8, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t58 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i32, ptr %t59, i64 %t57
  %t61 = load i32, ptr %t60, !tbaa !33
  store i32 %t61, ptr %l38, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l39, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/mir:verifier", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/mir:Fn", ptr %t66, i32 0, i32 13
  store ptr %t68, ptr %l42, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/mir:Task", ptr %t69, i32 0, i32 3
  %t72 = getelementptr %"compiler/mir:Range", ptr %t71, i32 0, i32 0
  %t73 = load i32, ptr %t72, !tbaa !23
  %t75 = sext i32 %t73 to i64
  %t76 = load i32, ptr %l8, !tbaa !23
  %t78 = sext i32 %t76 to i64
  %t81 = add i64 %t75, %t78
  %t82 = load ptr, ptr %l42, !tbaa !29
  %t83 = call ptr @__olang_scope_or(ptr %v3, ptr %t82)
  %t84 = ptrtoint ptr %t83 to i64
  %t86 = inttoptr i64 %t84 to ptr
  %t87 = load ptr, ptr %l42, !tbaa !29
  %t89 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %t86, ptr %t87, i64 %t81)
  store %"compiler/mir:Lvalue" %t89, ptr %l50
  br label %bb11
bb11:
  %t90 = load ptr, ptr %l39, !tbaa !29
  %t91 = load %"compiler/mir:Lvalue", ptr %l50
  %t92 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v3, ptr %v4, ptr %t90, %"compiler/mir:Lvalue" %t91)
  store i32 %t92, ptr %l51
  br label %bb12
bb12:
  %t93 = load i32, ptr %l8, !tbaa !23
  %t94 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t97 = sext i32 %t93 to i64
  %t98 = call i64 @__olang_fmt_i64(ptr null, i64 %t97)
  %t99 = add i64 %t95, %t98
  %t100 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t99)
  call void @olang_textcopy(ptr %t100, ptr %t94, i64 %t95)
  %t101 = getelementptr i8, ptr %t100, i64 %t95
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t97)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t100, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } %t104, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t112 = load ptr, ptr %l35, !tbaa !29
  %t113 = load i32, ptr %l38, !tbaa !23
  %t114 = load i32, ptr %l51, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s2, ptr %v4, ptr %t112, i32 %t113, i32 %t114, { i64, ptr } %t111)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t116 = load i32, ptr %l7, !tbaa !23
  %t118 = add i32 %t116, 1
  store i32 %t118, ptr %l7, !tbaa !23
  br label %bb7
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
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
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l20 = alloca ptr
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l48 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l58 = alloca ptr
  %l61 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l88 = alloca ptr
  %l92 = alloca { i64, [21 x i64] }
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 9
  store ptr %t8, ptr %l20, !tbaa !29
  %t9 = load ptr, ptr %l20, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l20, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t13, ptr %t14)
  store i64 %t15, ptr %l22
  br label %bb1
bb1:
  %t16 = load i64, ptr %l22, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb4:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l29, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l29, !tbaa !24
  store i64 %t43, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l26, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb10:
  br label %bb11
bb11:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l7, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/mir:verifier", ptr %t63, i32 0, i32 13
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l48, !tbaa !27
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i1, ptr %t70, i64 %t67
  %t72 = load i1, ptr %t71, !tbaa !31
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb13:
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = getelementptr %"compiler/mir:verifier", ptr %t76, i32 0, i32 3
  store i64 %t77, ptr %t80, !tbaa !24
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/mir:Fn", ptr %t81, i32 0, i32 9
  store ptr %t83, ptr %l55, !tbaa !29
  %t84 = load i64, ptr %l7, !tbaa !24
  %t85 = load ptr, ptr %l55, !tbaa !29
  %t86 = call ptr @__olang_scope_or(ptr %v1, ptr %t85)
  %t87 = ptrtoint ptr %t86 to i64
  %t89 = inttoptr i64 %t87 to ptr
  %t90 = load ptr, ptr %l55, !tbaa !29
  %t92 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t89, ptr %s2, ptr %t90, i64 %t84)
  store ptr %t92, ptr %l58
  br label %bb15
bb15:
  %t93 = load ptr, ptr %l58, !tbaa !29
  store ptr %t93, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  %t94 = load ptr, ptr %l8, !tbaa !29
  %t96 = getelementptr %"compiler/mir:BasicBlock", ptr %t94, i32 0, i32 0
  %t98 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s2, ptr %t96)
  store i64 %t98, ptr %l61
  br label %bb16
bb16:
  %t99 = load i64, ptr %l61, !tbaa !24
  store i64 %t99, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t100 = load i64, ptr %l10, !tbaa !24
  %t101 = load i64, ptr %l9, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb17, label %bb18
bb17:
  %t106 = load i64, ptr %l11, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb22
bb19:
  %t110 = load i64, ptr %l10, !tbaa !24
  %t111 = load i64, ptr %l9, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l11, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l68, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb21
bb21:
  %t126 = load i64, ptr %l68, !tbaa !24
  store i64 %t126, ptr %l65, !tbaa !24
  br label %bb22
bb22:
  %t127 = load i64, ptr %l65, !tbaa !24
  store i64 %t127, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t128 = load i64, ptr %l13, !tbaa !24
  %t129 = load i64, ptr %l12, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb25:
  br label %bb26
bb26:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t137 = load i64, ptr %l13, !tbaa !24
  %t138 = load i64, ptr %l11, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l14, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i64, ptr %l14, !tbaa !24
  %t150 = getelementptr %"compiler/mir:verifier", ptr %t146, i32 0, i32 4
  store i64 %t147, ptr %t150, !tbaa !24
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l88, !tbaa !29
  %t152 = load ptr, ptr %l8, !tbaa !29
  %t154 = getelementptr %"compiler/mir:BasicBlock", ptr %t152, i32 0, i32 0
  %t155 = load i64, ptr %l14, !tbaa !24
  %t158 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s2, ptr %t154, i64 %t155)
  store { i64, [21 x i64] } %t158, ptr %l92
  br label %bb27
bb27:
  %t159 = load { i64, [21 x i64] }, ptr %l92
  %t160 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 176, i64 8)
  store { i64, [21 x i64] } %t159, ptr %t160
  %t161 = load ptr, ptr %l88, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtTypes(ptr %v0, ptr %s5, ptr %v1, ptr %v2, ptr %t161, ptr %t160)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb29:
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l13, !tbaa !24
  br label %bb23
bb30:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/mir:verifier", ptr %t167, i32 0, i32 4
  store i64 -1, ptr %t169, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l8, !tbaa !29
  %t173 = getelementptr %"compiler/mir:BasicBlock", ptr %t171, i32 0, i32 1
  %t174 = load { i64, [8 x i64] }, ptr %t173
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermTypes(ptr %v0, ptr %v1, ptr %v2, ptr %t170, { i64, [8 x i64] } %t174)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb32:
  %t177 = load i64, ptr %l6, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l6, !tbaa !24
  br label %bb8
bb33:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/mir:verifier", ptr %t181, i32 0, i32 3
  store i64 -1, ptr %t185, !tbaa !24
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/mir:verifier", ptr %t186, i32 0, i32 4
  store i64 -1, ptr %t190, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 14
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t9 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i1, ptr %t10, i64 %t7
  %t12 = load i1, ptr %t11, !tbaa !31
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t21 = sext i32 %t17 to i64
  %t22 = call i64 @__olang_fmt_i64(ptr null, i64 %t21)
  %t23 = add i64 %t19, %t22
  %t24 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t18, i64 %t19)
  %t28 = getelementptr i8, ptr %t27, i64 %t19
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %t21)
  %t30 = getelementptr i8, ptr %t28, i64 %t22
  call void @olang_textcopy(ptr %t30, ptr %t24, i64 %t25)
  %t31 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t27, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t16, { i64, ptr } %t39)
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewalk(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
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
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l34 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca ptr
  %l40 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l69 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l96 = alloca i64
  %l99 = alloca i64
  %l118 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l139 = alloca i64
  %l142 = alloca i64
  %l161 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l170 = alloca i32
  %l176 = alloca ptr
  %l179 = alloca ptr
  %l182 = alloca i64
  %l186 = alloca i64
  %l189 = alloca i64
  %l209 = alloca ptr
  %l213 = alloca { i64, [21 x i64] }
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 7
  store ptr %t8, ptr %l34, !tbaa !29
  %t9 = load ptr, ptr %l34, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l34, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %t13, ptr %t14)
  store i64 %t15, ptr %l36
  br label %bb1
bb1:
  %t16 = load i64, ptr %l36, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 8
  store ptr %t19, ptr %l38, !tbaa !29
  %t20 = load ptr, ptr %l38, !tbaa !29
  %t21 = call ptr @__olang_scope_or(ptr %v1, ptr %t20)
  %t22 = ptrtoint ptr %t21 to i64
  %t24 = inttoptr i64 %t22 to ptr
  %t25 = load ptr, ptr %l38, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t24, ptr %t25)
  store i64 %t26, ptr %l40
  br label %bb2
bb2:
  %t27 = load i64, ptr %l40, !tbaa !24
  store i64 %t27, ptr %l4, !tbaa !24
  %t30 = sext i32 %a1 to i64
  store i64 %t30, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb3, label %bb4
bb3:
  %t40 = load i64, ptr %l8, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb8
bb5:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l50, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb7
bb7:
  %t60 = load i64, ptr %l50, !tbaa !24
  store i64 %t60, ptr %l47, !tbaa !24
  br label %bb8
bb8:
  %t61 = load i64, ptr %l47, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb9
bb9:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l11, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/mir:verifier", ptr %t80, i32 0, i32 14
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  store { i64, ptr } %t83, ptr %l69, !tbaa !27
  %t84 = load i64, ptr %l11, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/mir:verifier", ptr %t85, i32 0, i32 7
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  store { i64, ptr } %t88, ptr %l72, !tbaa !27
  %t89 = load i64, ptr %l5, !tbaa !24
  %t90 = load i64, ptr %l3, !tbaa !24
  %t93 = mul i64 %t89, %t90
  %t94 = load i64, ptr %l11, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t99 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i1, ptr %t100, i64 %t97
  %t102 = load i1, ptr %t101, !tbaa !31
  %t105 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr i1, ptr %t106, i64 %t84
  store i1 %t102, ptr %t107, !tbaa !31
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/mir:verifier", ptr %t108, i32 0, i32 15
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l80, !tbaa !27
  %t112 = load i64, ptr %l11, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/mir:verifier", ptr %t113, i32 0, i32 8
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l83, !tbaa !27
  %t117 = load i64, ptr %l5, !tbaa !24
  %t118 = load i64, ptr %l3, !tbaa !24
  %t121 = mul i64 %t117, %t118
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = add i64 %t121, %t122
  %t127 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i1, ptr %t128, i64 %t125
  %t130 = load i1, ptr %t129, !tbaa !31
  %t133 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i1, ptr %t134, i64 %t112
  store i1 %t130, ptr %t135, !tbaa !31
  br label %bb13
bb13:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l10, !tbaa !24
  br label %bb9
bb14:
  store i64 0, ptr %l12, !tbaa !24
  %t140 = load i64, ptr %l4, !tbaa !24
  store i64 %t140, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t142 = load i64, ptr %l13, !tbaa !24
  %t143 = load i64, ptr %l12, !tbaa !24
  %t146 = icmp sgt i64 %t142, %t143
  br i1 %t146, label %bb15, label %bb16
bb15:
  %t148 = load i64, ptr %l14, !tbaa !24
  %t150 = icmp sgt i64 %t148, 0
  br i1 %t150, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb20
bb17:
  %t152 = load i64, ptr %l13, !tbaa !24
  %t153 = load i64, ptr %l12, !tbaa !24
  %t156 = sub i64 %t152, %t153
  %t157 = load i64, ptr %l14, !tbaa !24
  %t160 = add i64 %t156, %t157
  %t162 = sub i64 %t160, 1
  %t163 = load i64, ptr %l14, !tbaa !24
  %t166 = sdiv i64 %t162, %t163
  store i64 %t166, ptr %l99, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb19
bb19:
  %t168 = load i64, ptr %l99, !tbaa !24
  store i64 %t168, ptr %l96, !tbaa !24
  br label %bb20
bb20:
  %t169 = load i64, ptr %l96, !tbaa !24
  store i64 %t169, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb21
bb21:
  %t170 = load i64, ptr %l16, !tbaa !24
  %t171 = load i64, ptr %l15, !tbaa !24
  %t174 = icmp slt i64 %t170, %t171
  %t176 = xor i1 %t174, true
  br i1 %t176, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t178 = load i64, ptr %l12, !tbaa !24
  %t179 = load i64, ptr %l16, !tbaa !24
  %t180 = load i64, ptr %l14, !tbaa !24
  %t183 = mul i64 %t179, %t180
  %t186 = add i64 %t178, %t183
  store i64 %t186, ptr %l17, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/mir:verifier", ptr %t188, i32 0, i32 16
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %l118, !tbaa !27
  %t192 = load i64, ptr %l17, !tbaa !24
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/mir:verifier", ptr %t193, i32 0, i32 9
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  store { i64, ptr } %t196, ptr %l121, !tbaa !27
  %t197 = load i64, ptr %l5, !tbaa !24
  %t198 = load i64, ptr %l4, !tbaa !24
  %t201 = mul i64 %t197, %t198
  %t202 = load i64, ptr %l17, !tbaa !24
  %t205 = add i64 %t201, %t202
  %t207 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i1, ptr %t208, i64 %t205
  %t210 = load i1, ptr %t209, !tbaa !31
  %t213 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr i1, ptr %t214, i64 %t192
  store i1 %t210, ptr %t215, !tbaa !31
  br label %bb25
bb25:
  %t216 = load i64, ptr %l16, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l16, !tbaa !24
  br label %bb21
bb26:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/mir:verifier", ptr %t220, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eClear_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t222)
  br label %bb27
bb27:
  store i64 0, ptr %l18, !tbaa !24
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/mir:verifier", ptr %t224, i32 0, i32 11
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  store { i64, ptr } %t227, ptr %l133, !tbaa !27
  %t228 = load i64, ptr %l5, !tbaa !24
  %t230 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr i64, ptr %t231, i64 %t228
  %t233 = load i64, ptr %t232, !tbaa !34
  store i64 %t233, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t235 = load i64, ptr %l19, !tbaa !24
  %t236 = load i64, ptr %l18, !tbaa !24
  %t239 = icmp sgt i64 %t235, %t236
  br i1 %t239, label %bb28, label %bb29
bb28:
  %t241 = load i64, ptr %l20, !tbaa !24
  %t243 = icmp sgt i64 %t241, 0
  br i1 %t243, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l139, !tbaa !24
  br label %bb33
bb30:
  %t245 = load i64, ptr %l19, !tbaa !24
  %t246 = load i64, ptr %l18, !tbaa !24
  %t249 = sub i64 %t245, %t246
  %t250 = load i64, ptr %l20, !tbaa !24
  %t253 = add i64 %t249, %t250
  %t255 = sub i64 %t253, 1
  %t256 = load i64, ptr %l20, !tbaa !24
  %t259 = sdiv i64 %t255, %t256
  store i64 %t259, ptr %l142, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb32
bb32:
  %t261 = load i64, ptr %l142, !tbaa !24
  store i64 %t261, ptr %l139, !tbaa !24
  br label %bb33
bb33:
  %t262 = load i64, ptr %l139, !tbaa !24
  store i64 %t262, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb34
bb34:
  %t263 = load i64, ptr %l22, !tbaa !24
  %t264 = load i64, ptr %l21, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  br label %bb37
bb37:
  %t271 = load i64, ptr %l18, !tbaa !24
  %t272 = load i64, ptr %l22, !tbaa !24
  %t273 = load i64, ptr %l20, !tbaa !24
  %t276 = mul i64 %t272, %t273
  %t279 = add i64 %t271, %t276
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/mir:verifier", ptr %t281, i32 0, i32 17
  store ptr %t283, ptr %l161, !tbaa !29
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/mir:verifier", ptr %t284, i32 0, i32 12
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/mir:verifier", ptr %t287, i32 0, i32 10
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  store { i64, ptr } %t290, ptr %l165, !tbaa !27
  %t291 = load i64, ptr %l5, !tbaa !24
  %t293 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = getelementptr i64, ptr %t294, i64 %t291
  %t296 = load i64, ptr %t295, !tbaa !34
  %t300 = add i64 %t296, %t279
  %t303 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t286, i64 %t300)
  store i32 %t303, ptr %l170
  br label %bb38
bb38:
  %t304 = load ptr, ptr %l161, !tbaa !29
  %t305 = load i32, ptr %l170, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t304, i32 %t305)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t306 = load i64, ptr %l22, !tbaa !24
  %t308 = add i64 %t306, 1
  store i64 %t308, ptr %l22, !tbaa !24
  br label %bb34
bb41:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load i64, ptr %l5, !tbaa !24
  %t314 = getelementptr %"compiler/mir:verifier", ptr %t310, i32 0, i32 3
  store i64 %t311, ptr %t314, !tbaa !24
  %t315 = load ptr, ptr %l2, !tbaa !29
  %t317 = getelementptr %"compiler/mir:Fn", ptr %t315, i32 0, i32 9
  store ptr %t317, ptr %l176, !tbaa !29
  %t318 = load i64, ptr %l5, !tbaa !24
  %t319 = load ptr, ptr %l176, !tbaa !29
  %t320 = call ptr @__olang_scope_or(ptr %v1, ptr %t319)
  %t321 = ptrtoint ptr %t320 to i64
  %t323 = inttoptr i64 %t321 to ptr
  %t324 = load ptr, ptr %l176, !tbaa !29
  %t326 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t323, ptr %s0, ptr %t324, i64 %t318)
  store ptr %t326, ptr %l179
  br label %bb42
bb42:
  %t327 = load ptr, ptr %l179, !tbaa !29
  store ptr %t327, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  %t328 = load ptr, ptr %l24, !tbaa !29
  %t330 = getelementptr %"compiler/mir:BasicBlock", ptr %t328, i32 0, i32 0
  %t332 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s0, ptr %t330)
  store i64 %t332, ptr %l182
  br label %bb43
bb43:
  %t333 = load i64, ptr %l182, !tbaa !24
  store i64 %t333, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t334 = load i64, ptr %l26, !tbaa !24
  %t335 = load i64, ptr %l25, !tbaa !24
  %t338 = icmp sgt i64 %t334, %t335
  br i1 %t338, label %bb44, label %bb45
bb44:
  %t340 = load i64, ptr %l27, !tbaa !24
  %t342 = icmp sgt i64 %t340, 0
  br i1 %t342, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l186, !tbaa !24
  br label %bb49
bb46:
  %t344 = load i64, ptr %l26, !tbaa !24
  %t345 = load i64, ptr %l25, !tbaa !24
  %t348 = sub i64 %t344, %t345
  %t349 = load i64, ptr %l27, !tbaa !24
  %t352 = add i64 %t348, %t349
  %t354 = sub i64 %t352, 1
  %t355 = load i64, ptr %l27, !tbaa !24
  %t358 = sdiv i64 %t354, %t355
  store i64 %t358, ptr %l189, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l189, !tbaa !24
  br label %bb48
bb48:
  %t360 = load i64, ptr %l189, !tbaa !24
  store i64 %t360, ptr %l186, !tbaa !24
  br label %bb49
bb49:
  %t361 = load i64, ptr %l186, !tbaa !24
  store i64 %t361, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s11
  %t362 = load i64, ptr %l29, !tbaa !24
  %t363 = load i64, ptr %l28, !tbaa !24
  %t366 = icmp slt i64 %t362, %t363
  %t368 = xor i1 %t366, true
  br i1 %t368, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s11)
  br label %bb57
bb52:
  br label %bb53
bb53:
  %t370 = load i64, ptr %l25, !tbaa !24
  %t371 = load i64, ptr %l29, !tbaa !24
  %t372 = load i64, ptr %l27, !tbaa !24
  %t375 = mul i64 %t371, %t372
  %t378 = add i64 %t370, %t375
  store i64 %t378, ptr %l30, !tbaa !24
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load i64, ptr %l30, !tbaa !24
  %t384 = getelementptr %"compiler/mir:verifier", ptr %t380, i32 0, i32 4
  store i64 %t381, ptr %t384, !tbaa !24
  %t385 = load ptr, ptr %l0, !tbaa !29
  store ptr %t385, ptr %l209, !tbaa !29
  %t386 = load ptr, ptr %l24, !tbaa !29
  %t388 = getelementptr %"compiler/mir:BasicBlock", ptr %t386, i32 0, i32 0
  %t389 = load i64, ptr %l30, !tbaa !24
  %t392 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s0, ptr %t388, i64 %t389)
  store { i64, [21 x i64] } %t392, ptr %l213
  br label %bb54
bb54:
  %t393 = load { i64, [21 x i64] }, ptr %l213
  %t394 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 176, i64 8)
  store { i64, [21 x i64] } %t393, ptr %t394
  %t395 = load ptr, ptr %l209, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtFlow(ptr %v0, ptr %s11, ptr %v1, ptr %t395, ptr %t394)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s11)
  br label %bb56
bb56:
  %t397 = load i64, ptr %l29, !tbaa !24
  %t399 = add i64 %t397, 1
  store i64 %t399, ptr %l29, !tbaa !24
  br label %bb50
bb57:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/mir:verifier", ptr %t401, i32 0, i32 4
  store i64 -1, ptr %t403, !tbaa !24
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load ptr, ptr %l24, !tbaa !29
  %t407 = getelementptr %"compiler/mir:BasicBlock", ptr %t405, i32 0, i32 1
  %t408 = load { i64, [8 x i64] }, ptr %t407
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermFlow(ptr %v0, ptr %v1, ptr %t404, { i64, [8 x i64] } %t408)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fmir_2ewritesInto(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [21 x i64] }
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca { i64, [15 x i64] }
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca i32
  %l7 = alloca %"compiler/mir:Lvalue"
  %l8 = alloca { i64, [21 x i64] }
  %l14 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i64
  %l40 = alloca { i64, [21 x i64] }
  %l45 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [21 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l1, i64 176, i1 false)
  %t1 = load { i64, [21 x i64] }, ptr %l8
  %t2 = extractvalue { i64, [21 x i64] } %t1, 0
  %t3 = icmp eq i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t6 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t5, i32 0, i32 1
  %t7 = load %"compiler/mir:Lvalue", ptr %t6
  store %"compiler/mir:Lvalue" %t7, ptr %l3
  %t9 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t10 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t9, i32 0, i32 2
  %t11 = load { i64, [15 x i64] }, ptr %t10
  store { i64, [15 x i64] } %t11, ptr %l4
  br label %bb3
bb2:
  br label %bb28
bb3:
  %t13 = getelementptr %"compiler/mir:Lvalue", ptr %l3, i32 0, i32 1
  %t14 = getelementptr %"compiler/mir:Range", ptr %t13, i32 0, i32 1
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = icmp sgt i32 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load %"compiler/mir:Lvalue", ptr %l3
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %t19, i32 %t20)
  store i1 %t23, ptr %l17
  br label %bb6
bb5:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb7
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  store i1 %t24, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = load { i64, [15 x i64] }, ptr %l4
  %t29 = extractvalue { i64, [15 x i64] } %t27, 0
  %t30 = icmp eq i64 %t29, 1
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t33 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t32, i32 0, i32 0
  %t34 = load %"compiler/mir:Lvalue", ptr %t33
  store %"compiler/mir:Lvalue" %t34, ptr %l5
  %t36 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t37 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t36, i32 0, i32 1
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l6, !tbaa !23
  br label %bb15
bb12:
  %t40 = load { i64, [15 x i64] }, ptr %l4
  %t42 = extractvalue { i64, [15 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 9
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t46 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t45, i32 0, i32 0
  %t47 = load %"compiler/mir:Lvalue", ptr %t46
  store %"compiler/mir:Lvalue" %t47, ptr %l5
  %t49 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t50 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t49, i32 0, i32 3
  %t51 = load i32, ptr %t50
  store i32 %t51, ptr %l6, !tbaa !23
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t53 = load %"compiler/mir:Lvalue", ptr %l5
  %t54 = load i32, ptr %l2, !tbaa !23
  %t57 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %t53, i32 %t54)
  store i1 %t57, ptr %l30
  br label %bb16
bb16:
  %t58 = load i1, ptr %l30, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l32, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l6, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l35
  br label %bb19
bb18:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb21
bb19:
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load i32, ptr %l35, !tbaa !23
  %t67 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t65, i32 %t66)
  store i64 %t67, ptr %l36
  br label %bb20
bb20:
  %t68 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t69 = load i64, ptr %l36, !tbaa !24
  %t71 = and i64 %t69, %t68
  %t73 = icmp ne i64 %t71, 0
  store i1 %t73, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t75 = load i1, ptr %l31, !tbaa !21
  store i1 %t75, ptr %l19, !tbaa !21
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_3eb640399bd8b02d_f3190a2cda9b9811)
  unreachable
bb27:
  %t76 = load i1, ptr %l19, !tbaa !21
  store i1 %t76, ptr %rv
  br label %ret
bb28:
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %l1, i64 176, i1 false)
  %t77 = load { i64, [21 x i64] }, ptr %l40
  %t78 = extractvalue { i64, [21 x i64] } %t77, 0
  %t79 = icmp eq i64 %t78, 9
  br i1 %t79, label %bb29, label %bb30
bb29:
  %t81 = getelementptr { i64, [21 x i64] }, ptr %l1, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t81, i32 0, i32 1
  %t83 = load %"compiler/mir:Lvalue", ptr %t82
  store %"compiler/mir:Lvalue" %t83, ptr %l7
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t85 = load %"compiler/mir:Lvalue", ptr %l7
  %t86 = load i32, ptr %l2, !tbaa !23
  %t89 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %t85, i32 %t86)
  store i1 %t89, ptr %l45
  br label %bb32
bb32:
  %t90 = load i1, ptr %l45, !tbaa !21
  store i1 %t90, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i1 false, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a9954f8fd49ad07c_7121af0b4200b780)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/mir:BasicBlock" @compiler_2fmir_3aBasicBlock_2ector(ptr %v0) #0 {
entry:
  %l2 = alloca %"compiler/mir:StmtList"
  %rv = alloca %"compiler/mir:BasicBlock"
  %t3 = alloca { i64, [8 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fmir_3aStmtList(ptr %v0)
  store %"compiler/mir:StmtList" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"compiler/mir:StmtList", ptr %l2
  store { i64, [8 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [8 x i64] }, ptr %t3, i32 0, i32 0
  store i64 0, ptr %t4
  %t5 = load { i64, [8 x i64] }, ptr %t3
  %t8 = insertvalue %"compiler/mir:BasicBlock" undef, %"compiler/mir:StmtList" %t2, 0
  %t10 = insertvalue %"compiler/mir:BasicBlock" %t8, { i64, [8 x i64] } %t5, 1
  store %"compiler/mir:BasicBlock" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:BasicBlock", ptr %rv
  ret %"compiler/mir:BasicBlock" %rr
}

define dso_local %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4) #0 {
entry:
  %rv = alloca %"compiler/mir:Local"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/mir:Local" undef, i32 %a0, 0
  %t14 = insertvalue %"compiler/mir:Local" %t12, %"compiler/source:Span" %a1, 1
  %t16 = insertvalue %"compiler/mir:Local" %t14, i32 %a2, 2
  %t18 = insertvalue %"compiler/mir:Local" %t16, i32 %a3, 3
  %t20 = insertvalue %"compiler/mir:Local" %t18, { i64, [1 x i64] } %a4, 4
  store %"compiler/mir:Local" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Local", ptr %rv
  ret %"compiler/mir:Local" %rr
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
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
@.d2 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" [" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" then bb" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" err L" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" bb" }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"text " }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" + " }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"a call of " }>, align 8
@.d14 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c" arguments to a function of " }>, align 8
@.d15 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" parameters" }>, align 8
@.d16 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"argument " }>, align 8
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a call passing " }>, align 8
@.d18 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c" scopes for its callee's " }>, align 8
@.d19 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a call passing the frame for a scope variable" }>, align 8
@.d20 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"no block bb" }>, align 8
@.d21 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"a function value typed " }>, align 8
@.d22 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"no constant " }>, align 8
@.d23 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"no scope variable V" }>, align 8
@.d24 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"a reference typed " }>, align 8
@.d25 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a reference " }>, align 8
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" to a " }>, align 8
@.d27 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"the region of a " }>, align 8
@.d28 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"no blocks" }>, align 8
@.d29 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"its type is no function type" }>, align 8
@.d30 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"its type has " }>, align 8
@.d31 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" parameters, its Params " }>, align 8
@.d32 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"parameter " }>, align 8
@.d33 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" is local L" }>, align 8
@.d34 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", not a Param" }>, align 8
@.d35 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"parameter " }>, align 8
@.d36 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" is a " }>, align 8
@.d37 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", its type says " }>, align 8
@.d38 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"capture L" }>, align 8
@.d39 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c" is no Capture local" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d41 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" has the Unknown type" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d43 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"'s parent S" }>, align 8
@.d44 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" is not opened before it" }>, align 8
@.d45 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a task's copies are not one per target" }>, align 8
@.d46 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"targets" }>, align 8
@.d47 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"clauses" }>, align 8
@.d48 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"items" }>, align 8
@.d49 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"bytes" }>, align 8
@.d50 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"constant items" }>, align 8
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
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d54 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"a task's result " }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d56 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c" read before it is initialized on every path" }>, align 8
define linkonce_odr %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fmir_3aStmtList(ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/mir:StmtList"
  %rv = alloca %"compiler/mir:StmtList"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/mir:StmtList" @compiler_2fmir_3aStmtList_2ector(ptr %v0)
  store %"compiler/mir:StmtList" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"compiler/mir:StmtList", ptr %l0
  store %"compiler/mir:StmtList" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:StmtList", ptr %rv
  ret %"compiler/mir:StmtList" %rr
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
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRefMu_Hfcf461293be5a40629d8d6a3cbc76320(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2ePush(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2ePush_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2ePush_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:BasicBlock" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ePush_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %v0, { i64, [2 x i64] } %a0, %"compiler/mir:Range" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecallee(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [7 x i64] } %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Range" %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1)
@olang_loc_dca1ca4acf899191_a3a5645eac28d4dd = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a40c0fc9d6bbeb91_41b07a29ba18aefd = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2epointerLike(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
@olang_loc_2214b4a83e210b00_93c2dace4d13d4cc = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eLen_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0)
@olang_loc_293fa35c34966465_23dfef653c6d5c71 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_2eacfb98574d9c7d_9d1d6c478850d6e9 = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_a5f83820f05cb9f9_5f257facca4b96a5 = external constant [0 x i8]
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_6be72733009cb689_7eadbfb9b429b955 = external constant [0 x i8]
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereach(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eflow(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsSpread(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecallee(ptr %v0, ptr %v1, ptr %a0, { i64, [7 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eops(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefs(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eLen_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eLen_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2, { i64, ptr } %a3)
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eLen_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eLen_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_729af306d1a375bd_3b9d78bce782a851 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eitemsBefore(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
@olang_loc_bce7b6ebde80be8c_35c7d20ece1a3fc0 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtShape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermShape(ptr %v0, ptr %v1, ptr %a0, { i64, [8 x i64] } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtTypes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [8 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eClear_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtFlow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermFlow(ptr %v0, ptr %v1, ptr %a0, { i64, [8 x i64] } %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %a0, i32 %a1)
@olang_loc_3eb640399bd8b02d_f3190a2cda9b9811 = external constant [0 x i8]
@olang_loc_a9954f8fd49ad07c_7121af0b4200b780 = external constant [0 x i8]
declare %"compiler/mir:StmtList" @compiler_2fmir_3aStmtList_2ector(ptr %v0)

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
