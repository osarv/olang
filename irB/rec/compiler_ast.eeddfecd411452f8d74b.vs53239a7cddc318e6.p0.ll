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
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
@G_2ecompiler_2fast_2eNoYield = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
define dso_local ptr @compiler_2fast_2eDecl_2efindTestIf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l19 = alloca ptr
  %l37 = alloca ptr
  %l46 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/ast:TopIf", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/ast:TopIf", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb6, label %bb7
bb5:
  br label %bb13
bb6:
  call void @__olang_check_failed(ptr @olang_loc_1ac92a474c2693a6_4651bdf04fb37b22)
  unreachable
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/ast:TopIf", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t28 = getelementptr %"compiler/ast:TopBranch", ptr %t25, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t30 = load %"compiler/source:Span", ptr %l1
  %t33 = call ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %t29, %"compiler/source:Span" %t30)
  store ptr %t33, ptr %l19
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l19, !tbaa !29
  store ptr %t34, ptr %l2, !tbaa !29
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l2, !tbaa !29
  store ptr %t41, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TopIf", ptr %t44, i32 0, i32 3
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/ast:TopIf", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb16, label %bb17
bb15:
  br label %bb23
bb16:
  call void @__olang_check_failed(ptr @olang_loc_597bf4a42b3e5d8d_8cb639b8febf8589)
  unreachable
bb17:
  br label %bb18
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/ast:TopIf", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t66 = getelementptr %"compiler/ast:TopBranch", ptr %t63, i32 0, i32 1
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t68 = load %"compiler/source:Span", ptr %l1
  %t71 = call ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %t67, %"compiler/source:Span" %t68)
  store ptr %t71, ptr %l37
  br label %bb19
bb19:
  %t72 = load ptr, ptr %l37, !tbaa !29
  store ptr %t72, ptr %l3, !tbaa !29
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t79 = load ptr, ptr %l3, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/ast:TopIf", ptr %t82, i32 0, i32 2
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  %t89 = call ptr @compiler_2fast_2eDecl_2efindTestIf(ptr %v0, ptr %v1, ptr %t85, %"compiler/source:Span" %t86)
  store ptr %t89, ptr %l46
  br label %bb24
bb24:
  %t90 = load ptr, ptr %l46, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca %"compiler/source:Span"
  %l27 = alloca %"compiler/source:Span"
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca ptr
  %rv = alloca ptr
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb31
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l5, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 6
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t34, i32 0, i32 0
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l6
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t38 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t38, ptr %l25
  %t39 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t39, ptr %l27
  %t42 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l25, ptr %l27)
  store i1 %t42, ptr %l29
  br label %bb10
bb10:
  %t43 = load i1, ptr %l29, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l5, !tbaa !29
  store ptr %t44, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb29
bb14:
  %t47 = load ptr, ptr %l5, !tbaa !29
  store ptr %t47, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t48 = load ptr, ptr %l32, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l32, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 11}
  %t54 = icmp eq i64 %t52, 7
  store i1 %t54, ptr %l33, !tbaa !21
  br label %bb16
bb16:
  %t55 = load i1, ptr %l33, !tbaa !21
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = getelementptr { i64, [8 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l7, !tbaa !29
  br label %bb19
bb18:
  br label %bb24
bb19:
  %t62 = load ptr, ptr %l7, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l1
  %t67 = call ptr @compiler_2fast_2eDecl_2efindTestIf(ptr %v0, ptr %v1, ptr %t62, %"compiler/source:Span" %t64)
  store ptr %t67, ptr %l41
  br label %bb20
bb20:
  %t68 = load ptr, ptr %l41, !tbaa !29
  store ptr %t68, ptr %l8, !tbaa !29
  %t69 = load ptr, ptr %l8, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t75 = load ptr, ptr %l8, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_6009bf035f93ac82_ebd9d8ca8d0ba426)
  unreachable
bb29:
  br label %bb30
bb30:
  %t78 = load i64, ptr %l3, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l3, !tbaa !24
  br label %bb1
bb31:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  %t34 = call %"compiler/source:Span" @compiler_2fast_2eyieldIn(ptr %v0, ptr %t29)
  store %"compiler/source:Span" %t34, ptr %l22
  br label %bb8
bb8:
  %t35 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t35, ptr %l5
  %t36 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t39 = icmp sge i32 %t37, 0
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t41, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l2, !tbaa !24
  br label %bb4
bb13:
  %t47 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fast_2ecompiler_2fast_3aFunc_2eOwnerName(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i32, ptr %l4, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  %t5 = load i32, ptr %l2, !tbaa !23
  %t7 = icmp eq i32 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t9, ptr %l8, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l10, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t23, ptr %l8, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fast_2enameOrConstraint(ptr %v0, ptr %v1, ptr %v2, ptr %t25, i32 %t26, ptr %a1)
  store { i64, ptr } %t31, ptr %l14
  br label %bb5
bb5:
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l46 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t8, ptr %l10, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l11, !tbaa !24
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l12, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l11, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t22, ptr %l10, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Func", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  br i1 %t29, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_b48972784b624f8d_c9cbb43a03c6b3c1)
  unreachable
bb5:
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Func", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t37 = getelementptr %"compiler/ast:Param", ptr %t34, i32 0, i32 2
  %t38 = load ptr, ptr %t37, !tbaa !29
  store ptr %t38, ptr %l2, !tbaa !29
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  %t44 = xor i1 %t42, true
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb8, label %bb9
bb8:
  br label %bb36
bb9:
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l2, !tbaa !29
  store ptr %t48, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t49 = load ptr, ptr %l24, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load ptr, ptr %l24, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 8}
  %t55 = icmp eq i64 %t53, 4
  store i1 %t55, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t56 = load i1, ptr %l25, !tbaa !21
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t59, i32 0, i32 1
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t63 = load ptr, ptr %l3, !tbaa !29
  store ptr %t63, ptr %l2, !tbaa !29
  br label %bb34
bb16:
  %t65 = load ptr, ptr %l2, !tbaa !29
  store ptr %t65, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb17, label %bb18
bb17:
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 8}
  %t72 = icmp eq i64 %t70, 3
  store i1 %t72, ptr %l32, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l32, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t76, i32 0, i32 1
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l4, !tbaa !29
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t80 = load ptr, ptr %l4, !tbaa !29
  store ptr %t80, ptr %l2, !tbaa !29
  br label %bb34
bb22:
  %t83 = load ptr, ptr %l2, !tbaa !29
  store ptr %t83, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t84 = load ptr, ptr %l39, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t87 = load ptr, ptr %l39, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 8}
  %t90 = icmp eq i64 %t88, 0
  store i1 %t90, ptr %l40, !tbaa !21
  br label %bb24
bb24:
  %t91 = load i1, ptr %l40, !tbaa !21
  br i1 %t91, label %bb25, label %bb26
bb25:
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t94 = getelementptr { i64, [5 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t94, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95
  store { i64, ptr } %t96, ptr %l5, !tbaa !27
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t99, ptr %l46, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t104 = sub i64 %t102, 1
  %t106 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i32, ptr %t107, i64 %t104
  %t109 = load i32, ptr %t108, !tbaa !33
  %t114 = call { i64, ptr } @compiler_2fast_2enameOrConstraint(ptr %v0, ptr %v1, ptr %v2, ptr %t98, i32 %t109, ptr %a1)
  store { i64, ptr } %t114, ptr %l52
  br label %bb28
bb28:
  %t115 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t115, ptr %rv
  br label %ret
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l53, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t116, ptr %l54, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l55, !tbaa !24
  %t119 = load i64, ptr %l55, !tbaa !24
  %t120 = mul i64 %t119, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t120)
  %t122 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  store { i64, ptr } %t123, ptr %l56, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = load i64, ptr %l55, !tbaa !24
  %t129 = mul i64 %t128, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t125, ptr %t127, i64 %t129, i1 false)
  %t130 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t130, ptr %l54, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t131, ptr %rv
  br label %ret
bb33:
  call void @__olang_check_failed(ptr @olang_loc_b4544dbf389ded65_192f90fda9e58d19)
  unreachable
bb34:
  br label %bb35
bb35:
  br label %bb7
bb36:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l57, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t132, ptr %l58, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  store i64 %t134, ptr %l59, !tbaa !24
  %t135 = load i64, ptr %l59, !tbaa !24
  %t136 = mul i64 %t135, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t136)
  %t138 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  store { i64, ptr } %t139, ptr %l60, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = load i64, ptr %l59, !tbaa !24
  %t145 = mul i64 %t144, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t141, ptr %t143, i64 %t145, i1 false)
  %t146 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t146, ptr %l58, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t147, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca { i64, ptr }
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 11}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [8 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  br label %bb5
bb4:
  br label %bb24
bb5:
  store { i64, ptr } %a1, ptr %l10, !tbaa !27
  %t17 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  store i64 %t20, ptr %l12, !tbaa !24
  %t21 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t22 = load i32, ptr %t21, !tbaa !23
  %t24 = sext i32 %t22 to i64
  store i64 %t24, ptr %l14, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l15, !tbaa !24
  %t27 = load i64, ptr %l12, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load i64, ptr %l12, !tbaa !24
  %t31 = load i64, ptr %l14, !tbaa !24
  %t32 = icmp sle i64 %t30, %t31
  br i1 %t32, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_979b089e321e434b_1e08588775750037)
  unreachable
bb8:
  %t34 = load i64, ptr %l14, !tbaa !24
  %t35 = load i64, ptr %l15, !tbaa !24
  %t36 = icmp sle i64 %t34, %t35
  br i1 %t36, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_979b089e321e434b_1e08588775750037)
  unreachable
bb10:
  %t38 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l12, !tbaa !24
  %t41 = load i64, ptr %l14, !tbaa !24
  %t42 = getelementptr i8, ptr %t39, i64 %t40
  %t43 = sub i64 %t41, %t40
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  store { i64, ptr } %t45, ptr %l3, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp sge i64 %t49, 2
  br i1 %t51, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_979b089e321e434b_1e08588775750037)
  unreachable
bb12:
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t53, ptr %l24, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 0
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 34
  store i1 %t59, ptr %l23, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t61 = load i1, ptr %l23, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l27, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t67 = sub i64 %t65, 1
  store i64 %t67, ptr %l30, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l31, !tbaa !24
  %t70 = icmp sge i64 1, 0
  br i1 %t70, label %bb17, label %bb18
bb16:
  br label %bb23
bb17:
  %t72 = load i64, ptr %l30, !tbaa !24
  %t73 = icmp sle i64 1, %t72
  br i1 %t73, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_5f7523cb6a9ba54e_dedf50344064deda)
  unreachable
bb19:
  %t75 = load i64, ptr %l30, !tbaa !24
  %t76 = load i64, ptr %l31, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_5f7523cb6a9ba54e_dedf50344064deda)
  unreachable
bb21:
  %t79 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l30, !tbaa !24
  %t82 = getelementptr i8, ptr %t80, i64 1
  %t83 = sub i64 %t81, 1
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = extractvalue { i64, ptr } %t85, 0
  %t89 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t87, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_5f7523cb6a9ba54e_dedf50344064deda)
  unreachable
bb23:
  %t93 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = extractvalue { i64, ptr } %t93, 0
  %t97 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t95, i64 %t96)
  %t98 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t101, ptr %l40, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l41, !tbaa !24
  %t104 = load i64, ptr %l41, !tbaa !24
  %t105 = mul i64 %t104, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t105)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l42, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = load i64, ptr %l41, !tbaa !24
  %t114 = mul i64 %t113, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t110, ptr %t112, i64 %t114, i1 false)
  %t115 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t115, ptr %l40, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
bb28:
  call void @__olang_check_failed(ptr @olang_loc_8fb80eb7feade11e_f76124528cb2593a)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fast_2eTestLabel(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v2, ptr %s0, ptr %t1, ptr %a2)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %v3, ptr %t13, { i64, ptr } %t14)
  store { i64, ptr } %t17, ptr %l12
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb5:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l13, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = call { i64, ptr } @compiler_2fast_2eTestDesc(ptr %v0, ptr %v1, ptr %s0, ptr %t20, { i64, ptr } %t21)
  store { i64, ptr } %t24, ptr %l16
  br label %bb6
bb6:
  %t25 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = add i64 %t30, %t33
  %t35 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t34)
  call void @olang_textcopy(ptr %t35, ptr %t26, i64 %t27)
  %t36 = getelementptr i8, ptr %t35, i64 %t27
  call void @olang_textcopy(ptr %t36, ptr %t28, i64 %t29)
  %t37 = getelementptr i8, ptr %t36, i64 %t29
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t35, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fast_2eTestTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"std/prelude/text:StringBuilder"
  %l31 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 11}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [8 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t12, i32 0, i32 3
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb23
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t20, ptr %l18, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l19, !tbaa !24
  %t23 = load i64, ptr %l19, !tbaa !24
  %t24 = mul i64 %t23, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l20, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l19, !tbaa !24
  %t33 = mul i64 %t32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t34, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t35 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t36 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s1)
  store %"std/prelude/text:StringBuilder" %t36, ptr %l21
  br label %bb9
bb9:
  %t37 = load %"std/prelude/text:StringBuilder", ptr %l21
  store %"std/prelude/text:StringBuilder" %t37, ptr %l3
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Path", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  br label %bb21
bb12:
  br label %bb13
bb13:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t57, ptr %l31, !tbaa !27
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i32, ptr %t61, i64 %t58
  %t63 = load i32, ptr %t62, !tbaa !33
  store i32 %t63, ptr %l8, !tbaa !23
  %t67 = icmp sgt i64 %t55, 0
  br i1 %t67, label %bb14, label %bb15
bb14:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l3, i8 46)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  store ptr %l3, ptr %l37, !tbaa !29
  %t71 = load i32, ptr %l8, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %v1, ptr %a1, i32 %t71)
  store { i64, ptr } %t74, ptr %l40
  br label %bb18
bb18:
  %t75 = load ptr, ptr %l37, !tbaa !29
  %t76 = load { i64, ptr }, ptr %l40, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %v1, ptr %t75, { i64, ptr } %t76)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t77 = load i64, ptr %l5, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l5, !tbaa !24
  br label %bb10
bb21:
  %t82 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s1, ptr %v2, ptr %l3)
  store { i64, ptr } %t82, ptr %l44
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  %t83 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t83, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t84, ptr %l46, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l47, !tbaa !24
  %t87 = load i64, ptr %l47, !tbaa !24
  %t88 = mul i64 %t87, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l48, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l47, !tbaa !24
  %t97 = mul i64 %t96, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t93, ptr %t95, i64 %t97, i1 false)
  %t98 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t98, ptr %l46, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t99, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_7ce36479423dfd7c_a43818d62629ef8)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsGathered(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 28
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 29
  store i1 %t17, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l6, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8f335f8d77efbf3d_ddda87093c4ab7c1)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsNamed(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 26
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_1fa01d266e42debe_d31482a2eb1fbba2)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsSpread(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 28
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_5bf7048436fb0986_d3b94b4259f072c2)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca i1
  %l166 = alloca ptr
  %l167 = alloca i1
  %l173 = alloca ptr
  %l174 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca i1
  %l185 = alloca ptr
  %l186 = alloca i1
  %l191 = alloca ptr
  %l192 = alloca i1
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb21
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t17 = load ptr, ptr %l16, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 30}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32 }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb21
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l1
  br label %bb21
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l28, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 30}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l29, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb21
bb16:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t62 = load ptr, ptr %l34, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 30}
  %t68 = icmp eq i64 %t66, 4
  store i1 %t68, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t69 = load i1, ptr %l35, !tbaa !21
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 0
  %t74 = load %"compiler/source:Span", ptr %t73
  store %"compiler/source:Span" %t74, ptr %l1
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t76 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t76, ptr %l9
  br label %bb137
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t79 = load ptr, ptr %l41, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l41, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 30}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l42, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l42, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb39
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t94 = load ptr, ptr %l47, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l47, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 30}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l48, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l48, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb39
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t109 = load ptr, ptr %l53, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l53, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 30}
  %t115 = icmp eq i64 %t113, 7
  store i1 %t115, ptr %l54, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l54, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l2
  br label %bb39
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t124 = load ptr, ptr %l59, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb35, label %bb36
bb35:
  %t127 = load ptr, ptr %l59, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 30}
  %t130 = icmp eq i64 %t128, 8
  store i1 %t130, ptr %l60, !tbaa !21
  br label %bb36
bb36:
  %t131 = load i1, ptr %l60, !tbaa !21
  br i1 %t131, label %bb37, label %bb38
bb37:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t134, i32 0, i32 0
  %t136 = load %"compiler/source:Span", ptr %t135
  store %"compiler/source:Span" %t136, ptr %l2
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t138 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t138, ptr %l9
  br label %bb137
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t141 = load ptr, ptr %l66, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb41, label %bb42
bb41:
  %t144 = load ptr, ptr %l66, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 30}
  %t147 = icmp eq i64 %t145, 9
  store i1 %t147, ptr %l67, !tbaa !21
  br label %bb42
bb42:
  %t148 = load i1, ptr %l67, !tbaa !21
  br i1 %t148, label %bb43, label %bb44
bb43:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t151, i32 0, i32 0
  %t153 = load %"compiler/source:Span", ptr %t152
  store %"compiler/source:Span" %t153, ptr %l3
  br label %bb57
bb44:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t156 = load ptr, ptr %l72, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t159 = load ptr, ptr %l72, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 30}
  %t162 = icmp eq i64 %t160, 10
  store i1 %t162, ptr %l73, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l73, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t166, i32 0, i32 0
  %t168 = load %"compiler/source:Span", ptr %t167
  store %"compiler/source:Span" %t168, ptr %l3
  br label %bb57
bb48:
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t171 = load ptr, ptr %l78, !tbaa !29
  %t172 = icmp ne ptr %t171, null
  br i1 %t172, label %bb49, label %bb50
bb49:
  %t174 = load ptr, ptr %l78, !tbaa !29
  %t175 = load i64, ptr %t174, !range !{i64 0, i64 30}
  %t177 = icmp eq i64 %t175, 11
  store i1 %t177, ptr %l79, !tbaa !21
  br label %bb50
bb50:
  %t178 = load i1, ptr %l79, !tbaa !21
  br i1 %t178, label %bb51, label %bb52
bb51:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t181, i32 0, i32 0
  %t183 = load %"compiler/source:Span", ptr %t182
  store %"compiler/source:Span" %t183, ptr %l3
  br label %bb57
bb52:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t186 = load ptr, ptr %l84, !tbaa !29
  %t187 = icmp ne ptr %t186, null
  br i1 %t187, label %bb53, label %bb54
bb53:
  %t189 = load ptr, ptr %l84, !tbaa !29
  %t190 = load i64, ptr %t189, !range !{i64 0, i64 30}
  %t192 = icmp eq i64 %t190, 12
  store i1 %t192, ptr %l85, !tbaa !21
  br label %bb54
bb54:
  %t193 = load i1, ptr %l85, !tbaa !21
  br i1 %t193, label %bb55, label %bb56
bb55:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr { i64, [4 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t196, i32 0, i32 0
  %t198 = load %"compiler/source:Span", ptr %t197
  store %"compiler/source:Span" %t198, ptr %l3
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t200 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t200, ptr %l9
  br label %bb137
bb58:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t203 = load ptr, ptr %l91, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb59, label %bb60
bb59:
  %t206 = load ptr, ptr %l91, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 30}
  %t209 = icmp eq i64 %t207, 13
  store i1 %t209, ptr %l92, !tbaa !21
  br label %bb60
bb60:
  %t210 = load i1, ptr %l92, !tbaa !21
  br i1 %t210, label %bb61, label %bb62
bb61:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t213, i32 0, i32 0
  %t215 = load %"compiler/source:Span", ptr %t214
  store %"compiler/source:Span" %t215, ptr %l4
  br label %bb71
bb62:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t218 = load ptr, ptr %l97, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t221 = load ptr, ptr %l97, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 30}
  %t224 = icmp eq i64 %t222, 14
  store i1 %t224, ptr %l98, !tbaa !21
  br label %bb64
bb64:
  %t225 = load i1, ptr %l98, !tbaa !21
  br i1 %t225, label %bb65, label %bb66
bb65:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [4 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/source:Span", ptr %t229
  store %"compiler/source:Span" %t230, ptr %l4
  br label %bb71
bb66:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t233 = load ptr, ptr %l103, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb67, label %bb68
bb67:
  %t236 = load ptr, ptr %l103, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 30}
  %t239 = icmp eq i64 %t237, 15
  store i1 %t239, ptr %l104, !tbaa !21
  br label %bb68
bb68:
  %t240 = load i1, ptr %l104, !tbaa !21
  br i1 %t240, label %bb69, label %bb70
bb69:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t243, i32 0, i32 0
  %t245 = load %"compiler/source:Span", ptr %t244
  store %"compiler/source:Span" %t245, ptr %l4
  br label %bb71
bb70:
  br label %bb72
bb71:
  %t247 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t247, ptr %l9
  br label %bb137
bb72:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t250 = load ptr, ptr %l110, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb73, label %bb74
bb73:
  %t253 = load ptr, ptr %l110, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 30}
  %t256 = icmp eq i64 %t254, 16
  store i1 %t256, ptr %l111, !tbaa !21
  br label %bb74
bb74:
  %t257 = load i1, ptr %l111, !tbaa !21
  br i1 %t257, label %bb75, label %bb76
bb75:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t260, i32 0, i32 0
  %t262 = load %"compiler/source:Span", ptr %t261
  store %"compiler/source:Span" %t262, ptr %l5
  br label %bb89
bb76:
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t265 = load ptr, ptr %l116, !tbaa !29
  %t266 = icmp ne ptr %t265, null
  br i1 %t266, label %bb77, label %bb78
bb77:
  %t268 = load ptr, ptr %l116, !tbaa !29
  %t269 = load i64, ptr %t268, !range !{i64 0, i64 30}
  %t271 = icmp eq i64 %t269, 17
  store i1 %t271, ptr %l117, !tbaa !21
  br label %bb78
bb78:
  %t272 = load i1, ptr %l117, !tbaa !21
  br i1 %t272, label %bb79, label %bb80
bb79:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr { i64, [4 x i64] }, ptr %t273, i32 0, i32 1
  %t276 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t275, i32 0, i32 0
  %t277 = load %"compiler/source:Span", ptr %t276
  store %"compiler/source:Span" %t277, ptr %l5
  br label %bb89
bb80:
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t280 = load ptr, ptr %l122, !tbaa !29
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %bb81, label %bb82
bb81:
  %t283 = load ptr, ptr %l122, !tbaa !29
  %t284 = load i64, ptr %t283, !range !{i64 0, i64 30}
  %t286 = icmp eq i64 %t284, 18
  store i1 %t286, ptr %l123, !tbaa !21
  br label %bb82
bb82:
  %t287 = load i1, ptr %l123, !tbaa !21
  br i1 %t287, label %bb83, label %bb84
bb83:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t290, i32 0, i32 0
  %t292 = load %"compiler/source:Span", ptr %t291
  store %"compiler/source:Span" %t292, ptr %l5
  br label %bb89
bb84:
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t295 = load ptr, ptr %l128, !tbaa !29
  %t296 = icmp ne ptr %t295, null
  br i1 %t296, label %bb85, label %bb86
bb85:
  %t298 = load ptr, ptr %l128, !tbaa !29
  %t299 = load i64, ptr %t298, !range !{i64 0, i64 30}
  %t301 = icmp eq i64 %t299, 19
  store i1 %t301, ptr %l129, !tbaa !21
  br label %bb86
bb86:
  %t302 = load i1, ptr %l129, !tbaa !21
  br i1 %t302, label %bb87, label %bb88
bb87:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr { i64, [4 x i64] }, ptr %t303, i32 0, i32 1
  %t306 = getelementptr { %"compiler/source:Span", ptr }, ptr %t305, i32 0, i32 0
  %t307 = load %"compiler/source:Span", ptr %t306
  store %"compiler/source:Span" %t307, ptr %l5
  br label %bb89
bb88:
  br label %bb90
bb89:
  %t309 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t309, ptr %l9
  br label %bb137
bb90:
  %t311 = load ptr, ptr %l0, !tbaa !29
  store ptr %t311, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t312 = load ptr, ptr %l135, !tbaa !29
  %t313 = icmp ne ptr %t312, null
  br i1 %t313, label %bb91, label %bb92
bb91:
  %t315 = load ptr, ptr %l135, !tbaa !29
  %t316 = load i64, ptr %t315, !range !{i64 0, i64 30}
  %t318 = icmp eq i64 %t316, 20
  store i1 %t318, ptr %l136, !tbaa !21
  br label %bb92
bb92:
  %t319 = load i1, ptr %l136, !tbaa !21
  br i1 %t319, label %bb93, label %bb94
bb93:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr { i64, [4 x i64] }, ptr %t320, i32 0, i32 1
  %t323 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t322, i32 0, i32 0
  %t324 = load %"compiler/source:Span", ptr %t323
  store %"compiler/source:Span" %t324, ptr %l6
  br label %bb111
bb94:
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t327 = load ptr, ptr %l141, !tbaa !29
  %t328 = icmp ne ptr %t327, null
  br i1 %t328, label %bb95, label %bb96
bb95:
  %t330 = load ptr, ptr %l141, !tbaa !29
  %t331 = load i64, ptr %t330, !range !{i64 0, i64 30}
  %t333 = icmp eq i64 %t331, 21
  store i1 %t333, ptr %l142, !tbaa !21
  br label %bb96
bb96:
  %t334 = load i1, ptr %l142, !tbaa !21
  br i1 %t334, label %bb97, label %bb98
bb97:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr { i64, [4 x i64] }, ptr %t335, i32 0, i32 1
  %t338 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t337, i32 0, i32 0
  %t339 = load %"compiler/source:Span", ptr %t338
  store %"compiler/source:Span" %t339, ptr %l6
  br label %bb111
bb98:
  %t341 = load ptr, ptr %l0, !tbaa !29
  store ptr %t341, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t342 = load ptr, ptr %l147, !tbaa !29
  %t343 = icmp ne ptr %t342, null
  br i1 %t343, label %bb99, label %bb100
bb99:
  %t345 = load ptr, ptr %l147, !tbaa !29
  %t346 = load i64, ptr %t345, !range !{i64 0, i64 30}
  %t348 = icmp eq i64 %t346, 22
  store i1 %t348, ptr %l148, !tbaa !21
  br label %bb100
bb100:
  %t349 = load i1, ptr %l148, !tbaa !21
  br i1 %t349, label %bb101, label %bb102
bb101:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr { i64, [4 x i64] }, ptr %t350, i32 0, i32 1
  %t353 = getelementptr { %"compiler/source:Span", ptr }, ptr %t352, i32 0, i32 0
  %t354 = load %"compiler/source:Span", ptr %t353
  store %"compiler/source:Span" %t354, ptr %l6
  br label %bb111
bb102:
  %t356 = load ptr, ptr %l0, !tbaa !29
  store ptr %t356, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t357 = load ptr, ptr %l153, !tbaa !29
  %t358 = icmp ne ptr %t357, null
  br i1 %t358, label %bb103, label %bb104
bb103:
  %t360 = load ptr, ptr %l153, !tbaa !29
  %t361 = load i64, ptr %t360, !range !{i64 0, i64 30}
  %t363 = icmp eq i64 %t361, 23
  store i1 %t363, ptr %l154, !tbaa !21
  br label %bb104
bb104:
  %t364 = load i1, ptr %l154, !tbaa !21
  br i1 %t364, label %bb105, label %bb106
bb105:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", ptr }, ptr %t367, i32 0, i32 0
  %t369 = load %"compiler/source:Span", ptr %t368
  store %"compiler/source:Span" %t369, ptr %l6
  br label %bb111
bb106:
  %t371 = load ptr, ptr %l0, !tbaa !29
  store ptr %t371, ptr %l159, !tbaa !29
  store i1 false, ptr %l160, !tbaa !21
  %t372 = load ptr, ptr %l159, !tbaa !29
  %t373 = icmp ne ptr %t372, null
  br i1 %t373, label %bb107, label %bb108
bb107:
  %t375 = load ptr, ptr %l159, !tbaa !29
  %t376 = load i64, ptr %t375, !range !{i64 0, i64 30}
  %t378 = icmp eq i64 %t376, 24
  store i1 %t378, ptr %l160, !tbaa !21
  br label %bb108
bb108:
  %t379 = load i1, ptr %l160, !tbaa !21
  br i1 %t379, label %bb109, label %bb110
bb109:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr { i64, [4 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t382, i32 0, i32 0
  %t384 = load %"compiler/source:Span", ptr %t383
  store %"compiler/source:Span" %t384, ptr %l6
  br label %bb111
bb110:
  br label %bb112
bb111:
  %t386 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t386, ptr %l9
  br label %bb137
bb112:
  %t388 = load ptr, ptr %l0, !tbaa !29
  store ptr %t388, ptr %l166, !tbaa !29
  store i1 false, ptr %l167, !tbaa !21
  %t389 = load ptr, ptr %l166, !tbaa !29
  %t390 = icmp ne ptr %t389, null
  br i1 %t390, label %bb113, label %bb114
bb113:
  %t392 = load ptr, ptr %l166, !tbaa !29
  %t393 = load i64, ptr %t392, !range !{i64 0, i64 30}
  %t395 = icmp eq i64 %t393, 25
  store i1 %t395, ptr %l167, !tbaa !21
  br label %bb114
bb114:
  %t396 = load i1, ptr %l167, !tbaa !21
  br i1 %t396, label %bb115, label %bb116
bb115:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr { i64, [4 x i64] }, ptr %t397, i32 0, i32 1
  %t400 = getelementptr { %"compiler/source:Span" }, ptr %t399, i32 0, i32 0
  %t401 = load %"compiler/source:Span", ptr %t400
  store %"compiler/source:Span" %t401, ptr %l7
  br label %bb117
bb116:
  br label %bb118
bb117:
  %t403 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t403, ptr %l9
  br label %bb137
bb118:
  %t405 = load ptr, ptr %l0, !tbaa !29
  store ptr %t405, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t406 = load ptr, ptr %l173, !tbaa !29
  %t407 = icmp ne ptr %t406, null
  br i1 %t407, label %bb119, label %bb120
bb119:
  %t409 = load ptr, ptr %l173, !tbaa !29
  %t410 = load i64, ptr %t409, !range !{i64 0, i64 30}
  %t412 = icmp eq i64 %t410, 26
  store i1 %t412, ptr %l174, !tbaa !21
  br label %bb120
bb120:
  %t413 = load i1, ptr %l174, !tbaa !21
  br i1 %t413, label %bb121, label %bb122
bb121:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr { i64, [4 x i64] }, ptr %t414, i32 0, i32 1
  %t417 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t416, i32 0, i32 0
  %t418 = load %"compiler/source:Span", ptr %t417
  store %"compiler/source:Span" %t418, ptr %l8
  br label %bb135
bb122:
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l179, !tbaa !29
  store i1 false, ptr %l180, !tbaa !21
  %t421 = load ptr, ptr %l179, !tbaa !29
  %t422 = icmp ne ptr %t421, null
  br i1 %t422, label %bb123, label %bb124
bb123:
  %t424 = load ptr, ptr %l179, !tbaa !29
  %t425 = load i64, ptr %t424, !range !{i64 0, i64 30}
  %t427 = icmp eq i64 %t425, 27
  store i1 %t427, ptr %l180, !tbaa !21
  br label %bb124
bb124:
  %t428 = load i1, ptr %l180, !tbaa !21
  br i1 %t428, label %bb125, label %bb126
bb125:
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr { i64, [4 x i64] }, ptr %t429, i32 0, i32 1
  %t432 = getelementptr { %"compiler/source:Span", ptr }, ptr %t431, i32 0, i32 0
  %t433 = load %"compiler/source:Span", ptr %t432
  store %"compiler/source:Span" %t433, ptr %l8
  br label %bb135
bb126:
  %t435 = load ptr, ptr %l0, !tbaa !29
  store ptr %t435, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t436 = load ptr, ptr %l185, !tbaa !29
  %t437 = icmp ne ptr %t436, null
  br i1 %t437, label %bb127, label %bb128
bb127:
  %t439 = load ptr, ptr %l185, !tbaa !29
  %t440 = load i64, ptr %t439, !range !{i64 0, i64 30}
  %t442 = icmp eq i64 %t440, 28
  store i1 %t442, ptr %l186, !tbaa !21
  br label %bb128
bb128:
  %t443 = load i1, ptr %l186, !tbaa !21
  br i1 %t443, label %bb129, label %bb130
bb129:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr { i64, [4 x i64] }, ptr %t444, i32 0, i32 1
  %t447 = getelementptr { %"compiler/source:Span", ptr }, ptr %t446, i32 0, i32 0
  %t448 = load %"compiler/source:Span", ptr %t447
  store %"compiler/source:Span" %t448, ptr %l8
  br label %bb135
bb130:
  %t450 = load ptr, ptr %l0, !tbaa !29
  store ptr %t450, ptr %l191, !tbaa !29
  store i1 false, ptr %l192, !tbaa !21
  %t451 = load ptr, ptr %l191, !tbaa !29
  %t452 = icmp ne ptr %t451, null
  br i1 %t452, label %bb131, label %bb132
bb131:
  %t454 = load ptr, ptr %l191, !tbaa !29
  %t455 = load i64, ptr %t454, !range !{i64 0, i64 30}
  %t457 = icmp eq i64 %t455, 29
  store i1 %t457, ptr %l192, !tbaa !21
  br label %bb132
bb132:
  %t458 = load i1, ptr %l192, !tbaa !21
  br i1 %t458, label %bb133, label %bb134
bb133:
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr { i64, [4 x i64] }, ptr %t459, i32 0, i32 1
  %t462 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t461, i32 0, i32 0
  %t463 = load %"compiler/source:Span", ptr %t462
  store %"compiler/source:Span" %t463, ptr %l8
  br label %bb135
bb134:
  br label %bb136
bb135:
  %t465 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t465, ptr %l9
  br label %bb137
bb136:
  call void @__olang_check_failed(ptr @olang_loc_55eca5e8e4fb6f87_b7588236e57371eb)
  unreachable
bb137:
  %t467 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t467, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:Func", ptr %a0, i32 0, i32 9
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fast_2ecompiler_2fast_3aFunc_2eOwnerName(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 9
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Func", ptr %t9, i32 0, i32 9
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_473be92b91ccaf73_d58b0634df97d05f)
  unreachable
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Func", ptr %t16, i32 0, i32 9
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l1, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l12, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 8}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t32, i32 0, i32 1
  %t34 = load { i64, ptr }, ptr %t33
  store { i64, ptr } %t34, ptr %l2, !tbaa !27
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l18, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = sub i64 %t39, 1
  %t43 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i32, ptr %t44, i64 %t41
  %t46 = load i32, ptr %t45, !tbaa !33
  store i32 %t46, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i32 0, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_fc0b9bdae6adb34b_df0abe8d721fde07)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %rv = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span" }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 9}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t32 = load ptr, ptr %l17, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 9}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l1
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l23, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 9}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l24, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32 }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l4
  br label %bb43
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t64 = load ptr, ptr %l30, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l30, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 9}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l31, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr }, ptr %t74, i32 0, i32 0
  %t76 = load %"compiler/source:Span", ptr %t75
  store %"compiler/source:Span" %t76, ptr %l2
  br label %bb35
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t79 = load ptr, ptr %l36, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l36, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 9}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l37, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb35
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t94 = load ptr, ptr %l42, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l42, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 9}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l43, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l43, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb35
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l48, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 9}
  %t115 = icmp eq i64 %t113, 7
  store i1 %t115, ptr %l49, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l49, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32 }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l2
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t123, ptr %l4
  br label %bb43
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t126 = load ptr, ptr %l55, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb37, label %bb38
bb37:
  %t129 = load ptr, ptr %l55, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 9}
  %t132 = icmp eq i64 %t130, 8
  store i1 %t132, ptr %l56, !tbaa !21
  br label %bb38
bb38:
  %t133 = load i1, ptr %l56, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t136, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l3
  br label %bb41
bb40:
  br label %bb42
bb41:
  %t140 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t140, ptr %l4
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8f7e387f76106e1a_528835e8df6db77e)
  unreachable
bb43:
  %t142 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t142, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fast_2ecompiler_2fast_3aSig_2eWithPromises(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l19 = alloca %"compiler/ast:Sig"
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Sig", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Sig", ptr %t9, i32 0, i32 2
  %t12 = load i1, ptr %t11, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Sig", ptr %t13, i32 0, i32 3
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Sig", ptr %t17, i32 0, i32 4
  %t20 = load i1, ptr %t19, !tbaa !21
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Sig", ptr %t21, i32 0, i32 5
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Sig", ptr %t25, i32 0, i32 6
  %t28 = load i1, ptr %t27, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Sig", ptr %t29, i32 0, i32 7
  %t32 = load i1, ptr %t31, !tbaa !21
  %t43 = call %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t4, { i64, ptr } %t8, i1 %t12, { i64, ptr } %t16, i1 %t20, ptr %t24, i1 %t28, i1 %t32, { i64, ptr } %a1)
  store %"compiler/ast:Sig" %t43, ptr %l19
  br label %bb1
bb1:
  %t44 = load %"compiler/ast:Sig", ptr %l19
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 96, i64 8)
  store %"compiler/ast:Sig" %t44, ptr %t45
  store ptr %t45, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0) #0 {
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
  %l56 = alloca ptr
  %l57 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l112 = alloca ptr
  %l113 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 0
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
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 22}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
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
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 22}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
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
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 22}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l6
  br label %bb99
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t64 = load ptr, ptr %l32, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l32, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 22}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l33, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t74, i32 0, i32 0
  %t76 = load %"compiler/source:Span", ptr %t75
  store %"compiler/source:Span" %t76, ptr %l2
  br label %bb39
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t79 = load ptr, ptr %l38, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l38, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 22}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l39, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb39
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l44, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 22}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l45, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb39
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t109 = load ptr, ptr %l50, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l50, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 22}
  %t115 = icmp eq i64 %t113, 7
  store i1 %t115, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l51, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l2
  br label %bb39
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t124 = load ptr, ptr %l56, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb35, label %bb36
bb35:
  %t127 = load ptr, ptr %l56, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 22}
  %t130 = icmp eq i64 %t128, 8
  store i1 %t130, ptr %l57, !tbaa !21
  br label %bb36
bb36:
  %t131 = load i1, ptr %l57, !tbaa !21
  br i1 %t131, label %bb37, label %bb38
bb37:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", ptr }, ptr %t134, i32 0, i32 0
  %t136 = load %"compiler/source:Span", ptr %t135
  store %"compiler/source:Span" %t136, ptr %l2
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t138 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t138, ptr %l6
  br label %bb99
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t141 = load ptr, ptr %l63, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb41, label %bb42
bb41:
  %t144 = load ptr, ptr %l63, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 22}
  %t147 = icmp eq i64 %t145, 9
  store i1 %t147, ptr %l64, !tbaa !21
  br label %bb42
bb42:
  %t148 = load i1, ptr %l64, !tbaa !21
  br i1 %t148, label %bb43, label %bb44
bb43:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", ptr }, ptr %t151, i32 0, i32 0
  %t153 = load %"compiler/source:Span", ptr %t152
  store %"compiler/source:Span" %t153, ptr %l3
  br label %bb61
bb44:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t156 = load ptr, ptr %l69, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t159 = load ptr, ptr %l69, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 22}
  %t162 = icmp eq i64 %t160, 10
  store i1 %t162, ptr %l70, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l70, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t166, i32 0, i32 0
  %t168 = load %"compiler/source:Span", ptr %t167
  store %"compiler/source:Span" %t168, ptr %l3
  br label %bb61
bb48:
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t171 = load ptr, ptr %l75, !tbaa !29
  %t172 = icmp ne ptr %t171, null
  br i1 %t172, label %bb49, label %bb50
bb49:
  %t174 = load ptr, ptr %l75, !tbaa !29
  %t175 = load i64, ptr %t174, !range !{i64 0, i64 22}
  %t177 = icmp eq i64 %t175, 11
  store i1 %t177, ptr %l76, !tbaa !21
  br label %bb50
bb50:
  %t178 = load i1, ptr %l76, !tbaa !21
  br i1 %t178, label %bb51, label %bb52
bb51:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", ptr }, ptr %t181, i32 0, i32 0
  %t183 = load %"compiler/source:Span", ptr %t182
  store %"compiler/source:Span" %t183, ptr %l3
  br label %bb61
bb52:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t186 = load ptr, ptr %l81, !tbaa !29
  %t187 = icmp ne ptr %t186, null
  br i1 %t187, label %bb53, label %bb54
bb53:
  %t189 = load ptr, ptr %l81, !tbaa !29
  %t190 = load i64, ptr %t189, !range !{i64 0, i64 22}
  %t192 = icmp eq i64 %t190, 12
  store i1 %t192, ptr %l82, !tbaa !21
  br label %bb54
bb54:
  %t193 = load i1, ptr %l82, !tbaa !21
  br i1 %t193, label %bb55, label %bb56
bb55:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr { i64, [4 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t196, i32 0, i32 0
  %t198 = load %"compiler/source:Span", ptr %t197
  store %"compiler/source:Span" %t198, ptr %l3
  br label %bb61
bb56:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t201 = load ptr, ptr %l87, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb57, label %bb58
bb57:
  %t204 = load ptr, ptr %l87, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 22}
  %t207 = icmp eq i64 %t205, 13
  store i1 %t207, ptr %l88, !tbaa !21
  br label %bb58
bb58:
  %t208 = load i1, ptr %l88, !tbaa !21
  br i1 %t208, label %bb59, label %bb60
bb59:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t211, i32 0, i32 0
  %t213 = load %"compiler/source:Span", ptr %t212
  store %"compiler/source:Span" %t213, ptr %l3
  br label %bb61
bb60:
  br label %bb62
bb61:
  %t215 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t215, ptr %l6
  br label %bb99
bb62:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t218 = load ptr, ptr %l94, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t221 = load ptr, ptr %l94, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 22}
  %t224 = icmp eq i64 %t222, 14
  store i1 %t224, ptr %l95, !tbaa !21
  br label %bb64
bb64:
  %t225 = load i1, ptr %l95, !tbaa !21
  br i1 %t225, label %bb65, label %bb66
bb65:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [4 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/source:Span", ptr %t229
  store %"compiler/source:Span" %t230, ptr %l4
  br label %bb83
bb66:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t233 = load ptr, ptr %l100, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb67, label %bb68
bb67:
  %t236 = load ptr, ptr %l100, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 22}
  %t239 = icmp eq i64 %t237, 16
  store i1 %t239, ptr %l101, !tbaa !21
  br label %bb68
bb68:
  %t240 = load i1, ptr %l101, !tbaa !21
  br i1 %t240, label %bb69, label %bb70
bb69:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t243, i32 0, i32 0
  %t245 = load %"compiler/source:Span", ptr %t244
  store %"compiler/source:Span" %t245, ptr %l4
  br label %bb83
bb70:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t248 = load ptr, ptr %l106, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb71, label %bb72
bb71:
  %t251 = load ptr, ptr %l106, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 22}
  %t254 = icmp eq i64 %t252, 17
  store i1 %t254, ptr %l107, !tbaa !21
  br label %bb72
bb72:
  %t255 = load i1, ptr %l107, !tbaa !21
  br i1 %t255, label %bb73, label %bb74
bb73:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t258, i32 0, i32 0
  %t260 = load %"compiler/source:Span", ptr %t259
  store %"compiler/source:Span" %t260, ptr %l4
  br label %bb83
bb74:
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t263 = load ptr, ptr %l112, !tbaa !29
  %t264 = icmp ne ptr %t263, null
  br i1 %t264, label %bb75, label %bb76
bb75:
  %t266 = load ptr, ptr %l112, !tbaa !29
  %t267 = load i64, ptr %t266, !range !{i64 0, i64 22}
  %t269 = icmp eq i64 %t267, 18
  store i1 %t269, ptr %l113, !tbaa !21
  br label %bb76
bb76:
  %t270 = load i1, ptr %l113, !tbaa !21
  br i1 %t270, label %bb77, label %bb78
bb77:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr { i64, [4 x i64] }, ptr %t271, i32 0, i32 1
  %t274 = getelementptr { %"compiler/source:Span", ptr }, ptr %t273, i32 0, i32 0
  %t275 = load %"compiler/source:Span", ptr %t274
  store %"compiler/source:Span" %t275, ptr %l4
  br label %bb83
bb78:
  %t277 = load ptr, ptr %l0, !tbaa !29
  store ptr %t277, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t278 = load ptr, ptr %l118, !tbaa !29
  %t279 = icmp ne ptr %t278, null
  br i1 %t279, label %bb79, label %bb80
bb79:
  %t281 = load ptr, ptr %l118, !tbaa !29
  %t282 = load i64, ptr %t281, !range !{i64 0, i64 22}
  %t284 = icmp eq i64 %t282, 19
  store i1 %t284, ptr %l119, !tbaa !21
  br label %bb80
bb80:
  %t285 = load i1, ptr %l119, !tbaa !21
  br i1 %t285, label %bb81, label %bb82
bb81:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr { i64, [4 x i64] }, ptr %t286, i32 0, i32 1
  %t289 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t288, i32 0, i32 0
  %t290 = load %"compiler/source:Span", ptr %t289
  store %"compiler/source:Span" %t290, ptr %l4
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t292 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t292, ptr %l6
  br label %bb99
bb84:
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l125, !tbaa !29
  store i1 false, ptr %l126, !tbaa !21
  %t295 = load ptr, ptr %l125, !tbaa !29
  %t296 = icmp ne ptr %t295, null
  br i1 %t296, label %bb85, label %bb86
bb85:
  %t298 = load ptr, ptr %l125, !tbaa !29
  %t299 = load i64, ptr %t298, !range !{i64 0, i64 22}
  %t301 = icmp eq i64 %t299, 20
  store i1 %t301, ptr %l126, !tbaa !21
  br label %bb86
bb86:
  %t302 = load i1, ptr %l126, !tbaa !21
  br i1 %t302, label %bb87, label %bb88
bb87:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr { i64, [4 x i64] }, ptr %t303, i32 0, i32 1
  %t306 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t305, i32 0, i32 0
  %t307 = load %"compiler/source:Span", ptr %t306
  store %"compiler/source:Span" %t307, ptr %l5
  br label %bb97
bb88:
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t310 = load ptr, ptr %l131, !tbaa !29
  %t311 = icmp ne ptr %t310, null
  br i1 %t311, label %bb89, label %bb90
bb89:
  %t313 = load ptr, ptr %l131, !tbaa !29
  %t314 = load i64, ptr %t313, !range !{i64 0, i64 22}
  %t316 = icmp eq i64 %t314, 21
  store i1 %t316, ptr %l132, !tbaa !21
  br label %bb90
bb90:
  %t317 = load i1, ptr %l132, !tbaa !21
  br i1 %t317, label %bb91, label %bb92
bb91:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr { i64, [4 x i64] }, ptr %t318, i32 0, i32 1
  %t321 = getelementptr { %"compiler/source:Span", ptr }, ptr %t320, i32 0, i32 0
  %t322 = load %"compiler/source:Span", ptr %t321
  store %"compiler/source:Span" %t322, ptr %l5
  br label %bb97
bb92:
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t325 = load ptr, ptr %l137, !tbaa !29
  %t326 = icmp ne ptr %t325, null
  br i1 %t326, label %bb93, label %bb94
bb93:
  %t328 = load ptr, ptr %l137, !tbaa !29
  %t329 = load i64, ptr %t328, !range !{i64 0, i64 22}
  %t331 = icmp eq i64 %t329, 15
  store i1 %t331, ptr %l138, !tbaa !21
  br label %bb94
bb94:
  %t332 = load i1, ptr %l138, !tbaa !21
  br i1 %t332, label %bb95, label %bb96
bb95:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr { i64, [4 x i64] }, ptr %t333, i32 0, i32 1
  %t336 = getelementptr { %"compiler/source:Span", ptr }, ptr %t335, i32 0, i32 0
  %t337 = load %"compiler/source:Span", ptr %t336
  store %"compiler/source:Span" %t337, ptr %l5
  br label %bb97
bb96:
  br label %bb98
bb97:
  %t339 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t339, ptr %l6
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_2231a09e52c8bb46_65bd70f90f09695a)
  unreachable
bb99:
  %t341 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t341, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eFuncSig(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t30, i32 0, i32 1
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb22
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t35 = load ptr, ptr %l18, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load ptr, ptr %l18, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 8}
  %t41 = icmp eq i64 %t39, 1
  store i1 %t41, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t42 = load i1, ptr %l19, !tbaa !21
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", ptr }, ptr %t45, i32 0, i32 1
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t49 = load ptr, ptr %l3, !tbaa !29
  store ptr %t49, ptr %rv
  br label %ret
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store ptr null, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_9e527b51fecfec42_b29c948a5753fe76)
  unreachable
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store ptr null, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_da4f216dca8033c3_9b13f30385b8f717)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eFuncSig(ptr %v0, ptr %s0, ptr %a0)
  store ptr %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t5 = icmp eq ptr %t4, null
  %t7 = xor i1 %t5, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsWeak(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t12, i32 0, i32 3
  %t14 = load i1, ptr %t13
  store i1 %t14, ptr %l1, !tbaa !21
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i1, ptr %l1, !tbaa !21
  store i1 %t16, ptr %l3, !tbaa !21
  br label %bb21
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t20 = icmp ne ptr %t19, null
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t23 = load i64, ptr %t22, !range !{i64 0, i64 8}
  %t25 = icmp eq i64 %t23, 4
  store i1 %t25, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l12, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t29, i32 0, i32 1
  %t31 = load ptr, ptr %t30
  store ptr %t31, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb16
bb11:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsWeak(ptr %v0, ptr %t39)
  store i1 %t41, ptr %l22
  br label %bb14
bb13:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb15
bb14:
  %t42 = load i1, ptr %l22, !tbaa !21
  store i1 %t42, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t43 = load i1, ptr %l20, !tbaa !21
  store i1 %t43, ptr %l3, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_dbcc3c391580e71_31a9fdc6582016ad)
  unreachable
bb21:
  %t44 = load i1, ptr %l3, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %rv = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t31 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t31, ptr %l4
  br label %bb39
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 2
  store i1 %t40, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t41 = load i1, ptr %l19, !tbaa !21
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr { i64, [5 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", ptr }, ptr %t44, i32 0, i32 0
  %t46 = load %"compiler/source:Span", ptr %t45
  store %"compiler/source:Span" %t46, ptr %l2
  br label %bb27
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t49 = load ptr, ptr %l24, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t52 = load ptr, ptr %l24, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 8}
  %t55 = icmp eq i64 %t53, 3
  store i1 %t55, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t56 = load i1, ptr %l25, !tbaa !21
  br i1 %t56, label %bb17, label %bb18
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t59, i32 0, i32 0
  %t61 = load %"compiler/source:Span", ptr %t60
  store %"compiler/source:Span" %t61, ptr %l2
  br label %bb27
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t64 = load ptr, ptr %l30, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l30, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 8}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l31, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t74, i32 0, i32 0
  %t76 = load %"compiler/source:Span", ptr %t75
  store %"compiler/source:Span" %t76, ptr %l2
  br label %bb27
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t79 = load ptr, ptr %l36, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l36, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 8}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l37, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t93 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t93, ptr %l4
  br label %bb39
bb28:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t96 = load ptr, ptr %l43, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb29, label %bb30
bb29:
  %t99 = load ptr, ptr %l43, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 8}
  %t102 = icmp eq i64 %t100, 6
  store i1 %t102, ptr %l44, !tbaa !21
  br label %bb30
bb30:
  %t103 = load i1, ptr %l44, !tbaa !21
  br i1 %t103, label %bb31, label %bb32
bb31:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr { i64, [5 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t106, i32 0, i32 0
  %t108 = load %"compiler/source:Span", ptr %t107
  store %"compiler/source:Span" %t108, ptr %l3
  br label %bb37
bb32:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t111 = load ptr, ptr %l49, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb33, label %bb34
bb33:
  %t114 = load ptr, ptr %l49, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 8}
  %t117 = icmp eq i64 %t115, 7
  store i1 %t117, ptr %l50, !tbaa !21
  br label %bb34
bb34:
  %t118 = load i1, ptr %l50, !tbaa !21
  br i1 %t118, label %bb35, label %bb36
bb35:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr { i64, [5 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", ptr }, ptr %t121, i32 0, i32 0
  %t123 = load %"compiler/source:Span", ptr %t122
  store %"compiler/source:Span" %t123, ptr %l3
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t125 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t125, ptr %l4
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_4ec53bb81943b275_46293089da537299)
  unreachable
bb39:
  %t127 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t127, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eUnweak(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l22 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l45 = alloca ptr
  %rv = alloca ptr
  %t39 = alloca { i64, [5 x i64] }, align 8
  %t97 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t24, i32 0, i32 2
  %t26 = load i1, ptr %t25
  store i1 %t26, ptr %l3, !tbaa !21
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t30, i32 0, i32 3
  %t32 = load i1, ptr %t31
  store i1 %t32, ptr %l4, !tbaa !21
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t34 = load i1, ptr %l4, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = load %"compiler/source:Span", ptr %l1
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t38 = load i1, ptr %l3, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 0
  store i64 3, ptr %t40
  %t42 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } undef, %"compiler/source:Span" %t36, 0
  %t44 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t42, ptr %t37, 1
  %t46 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t44, i1 %t38, 2
  %t47 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t46, i1 false, 3
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1, i1 } %t47, ptr %t48
  %t49 = load { i64, [5 x i64] }, ptr %t39
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t49, ptr %t51
  store ptr %t51, ptr %l22, !tbaa !29
  br label %bb8
bb7:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l22, !tbaa !29
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l22, !tbaa !29
  store ptr %t55, ptr %l8, !tbaa !29
  br label %bb24
bb9:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb10, label %bb11
bb10:
  %t60 = load ptr, ptr %l29, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 8}
  %t63 = icmp eq i64 %t61, 4
  store i1 %t63, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  %t64 = load i1, ptr %l30, !tbaa !21
  br i1 %t64, label %bb12, label %bb13
bb12:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t67, i32 0, i32 0
  %t69 = load %"compiler/source:Span", ptr %t68
  store %"compiler/source:Span" %t69, ptr %l5
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t73, i32 0, i32 1
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l6, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t79, i32 0, i32 2
  %t81 = load i1, ptr %t80
  store i1 %t81, ptr %l7, !tbaa !21
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t83 = load ptr, ptr %l6, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb15, label %bb16
bb15:
  %t89 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t89, ptr %l43
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t92 = call ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eUnweak(ptr %v0, ptr %v0, ptr %t90)
  store ptr %t92, ptr %l45
  br label %bb17
bb16:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l42, !tbaa !29
  br label %bb18
bb17:
  %t95 = load ptr, ptr %l45, !tbaa !29
  %t96 = load i1, ptr %l7, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 0
  store i64 4, ptr %t98
  %t99 = load %"compiler/source:Span", ptr %l43
  %t100 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t99, 0
  %t102 = insertvalue { %"compiler/source:Span", ptr, i1 } %t100, ptr %t95, 1
  %t104 = insertvalue { %"compiler/source:Span", ptr, i1 } %t102, i1 %t96, 2
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t104, ptr %t105
  %t106 = load { i64, [5 x i64] }, ptr %t97
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t106, ptr %t108
  store ptr %t108, ptr %l42, !tbaa !29
  br label %bb18
bb18:
  %t110 = load ptr, ptr %l42, !tbaa !29
  store ptr %t110, ptr %l8, !tbaa !29
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l8, !tbaa !29
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_4cf6df17c728373c_c7de779d9cdccfc8)
  unreachable
bb24:
  %t113 = load ptr, ptr %l8, !tbaa !29
  store ptr %t113, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fast_2enameOrConstraint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l24 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l41 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/ast:Func", ptr %a0, i32 0, i32 5
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb27
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l6, !tbaa !29
  %t26 = load ptr, ptr %l6, !tbaa !29
  %t28 = getelementptr %"compiler/ast:TypeParam", ptr %t26, i32 0, i32 1
  %t29 = load i32, ptr %t28, !tbaa !23
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = icmp ne i32 %t29, %t30
  br i1 %t33, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb7
bb6:
  %t35 = load ptr, ptr %l6, !tbaa !29
  %t37 = getelementptr %"compiler/ast:TypeParam", ptr %t35, i32 0, i32 2
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  store i1 %t40, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb26
bb9:
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l6, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TypeParam", ptr %t43, i32 0, i32 2
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_942c0abc400452d5_c59032115dfc4901)
  unreachable
bb12:
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TypeParam", ptr %t50, i32 0, i32 2
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l7, !tbaa !29
  %t55 = load ptr, ptr %l7, !tbaa !29
  store ptr %t55, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t56 = load ptr, ptr %l34, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load ptr, ptr %l34, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 0
  store i1 %t62, ptr %l35, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l35, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l7, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t66, i32 0, i32 1
  %t68 = load { i64, ptr }, ptr %t67
  store { i64, ptr } %t68, ptr %l8, !tbaa !27
  br label %bb18
bb17:
  br label %bb20
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t71, ptr %l41, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t76 = sub i64 %t74, 1
  %t78 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  %t84 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %s4, ptr %t70, i32 %t81)
  store { i64, ptr } %t84, ptr %l46
  br label %bb19
bb19:
  %t85 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t87)
  call void @olang_textcopy(ptr %t88, ptr %t86, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l33, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t92, ptr %l33, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_6a3f9a3ca9bd243d_1a745edb7622dd59)
  unreachable
bb25:
  %t94 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l50, !tbaa !24
  %t96 = load i64, ptr %l50, !tbaa !24
  %t97 = mul i64 %t96, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l50, !tbaa !24
  %t106 = mul i64 %t105, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t102, ptr %t104, i64 %t106, i1 false)
  %t107 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t107, ptr %l33, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t108 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t108, ptr %rv
  br label %ret
bb26:
  %t109 = load i64, ptr %l4, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l4, !tbaa !24
  br label %bb1
bb27:
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t114 = load i32, ptr %l1, !tbaa !23
  %t117 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %s0, ptr %t113, i32 %t114)
  store { i64, ptr } %t117, ptr %l56
  br label %bb28
bb28:
  %t118 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t121 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t119, i64 %t120)
  %t122 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t123, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldIn(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca ptr
  %l29 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca %"compiler/source:Span"
  %l53 = alloca ptr
  %l54 = alloca i1
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca ptr
  %l63 = alloca i1
  %l72 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca ptr
  %l78 = alloca i1
  %l87 = alloca %"compiler/source:Span"
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca ptr
  %l92 = alloca i1
  %l98 = alloca %"compiler/source:Span"
  %l99 = alloca ptr
  %l100 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l112 = alloca %"compiler/source:Span"
  %l113 = alloca ptr
  %l114 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l131 = alloca %"compiler/source:Span"
  %l133 = alloca %"compiler/source:Span"
  %l134 = alloca %"compiler/source:Span"
  %l135 = alloca ptr
  %l136 = alloca i1
  %l144 = alloca %"compiler/source:Span"
  %l147 = alloca %"compiler/source:Span"
  %l148 = alloca %"compiler/source:Span"
  %l152 = alloca %"compiler/source:Span"
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca %"compiler/source:Span"
  %l157 = alloca %"compiler/source:Span"
  %l158 = alloca ptr
  %l159 = alloca i1
  %l167 = alloca %"compiler/source:Span"
  %l170 = alloca %"compiler/source:Span"
  %l171 = alloca %"compiler/source:Span"
  %l174 = alloca %"compiler/source:Span"
  %l175 = alloca %"compiler/source:Span"
  %l176 = alloca ptr
  %l177 = alloca i1
  %l183 = alloca %"compiler/source:Span"
  %l184 = alloca ptr
  %l185 = alloca i1
  %l191 = alloca %"compiler/source:Span"
  %l192 = alloca ptr
  %l193 = alloca i1
  %l200 = alloca %"compiler/source:Span"
  %l201 = alloca ptr
  %l202 = alloca i1
  %l211 = alloca %"compiler/source:Span"
  %l213 = alloca %"compiler/source:Span"
  %l214 = alloca %"compiler/source:Span"
  %l215 = alloca ptr
  %l216 = alloca i1
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca ptr
  %l224 = alloca i1
  %l231 = alloca %"compiler/source:Span"
  %l232 = alloca ptr
  %l233 = alloca i1
  %l240 = alloca %"compiler/source:Span"
  %l243 = alloca %"compiler/source:Span"
  %l244 = alloca %"compiler/source:Span"
  %l245 = alloca ptr
  %l246 = alloca i1
  %l253 = alloca %"compiler/source:Span"
  %l254 = alloca ptr
  %l255 = alloca i1
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t8 = load ptr, ptr %l28, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l28, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 22}
  %t14 = icmp eq i64 %t12, 21
  store i1 %t14, ptr %l29, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l29, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l1
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t22 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t22, ptr %l27
  br label %bb170
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t25 = load ptr, ptr %l35, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load ptr, ptr %l35, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 22}
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l36, !tbaa !21
  br label %bb11
bb11:
  %t32 = load i1, ptr %l36, !tbaa !21
  br i1 %t32, label %bb12, label %bb13
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", ptr }, ptr %t35, i32 0, i32 1
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l2, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t42 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t39)
  store %"compiler/source:Span" %t42, ptr %l43
  br label %bb15
bb15:
  %t43 = load %"compiler/source:Span", ptr %l43
  store %"compiler/source:Span" %t43, ptr %l27
  br label %bb170
bb16:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t45 = load ptr, ptr %l44, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l44, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 22}
  %t51 = icmp eq i64 %t49, 1
  store i1 %t51, ptr %l45, !tbaa !21
  br label %bb18
bb18:
  %t52 = load i1, ptr %l45, !tbaa !21
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr }, ptr %t55, i32 0, i32 1
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/ast:VarDecl", ptr %t59, i32 0, i32 3
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t64 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %t62)
  store %"compiler/source:Span" %t64, ptr %l52
  br label %bb22
bb22:
  %t65 = load %"compiler/source:Span", ptr %l52
  store %"compiler/source:Span" %t65, ptr %l27
  br label %bb170
bb23:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t67 = load ptr, ptr %l53, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb24, label %bb25
bb24:
  %t70 = load ptr, ptr %l53, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 22}
  %t73 = icmp eq i64 %t71, 2
  store i1 %t73, ptr %l54, !tbaa !21
  br label %bb25
bb25:
  %t74 = load i1, ptr %l54, !tbaa !21
  br i1 %t74, label %bb26, label %bb27
bb26:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", ptr }, ptr %t77, i32 0, i32 1
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l4, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Multi", ptr %t81, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  %t86 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %t84)
  store %"compiler/source:Span" %t86, ptr %l61
  br label %bb29
bb29:
  %t87 = load %"compiler/source:Span", ptr %l61
  store %"compiler/source:Span" %t87, ptr %l27
  br label %bb170
bb30:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t89 = load ptr, ptr %l62, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb31, label %bb32
bb31:
  %t92 = load ptr, ptr %l62, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 22}
  %t95 = icmp eq i64 %t93, 3
  store i1 %t95, ptr %l63, !tbaa !21
  br label %bb32
bb32:
  %t96 = load i1, ptr %l63, !tbaa !21
  br i1 %t96, label %bb33, label %bb34
bb33:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t99, i32 0, i32 2
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l5, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t105, i32 0, i32 3
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l6, !tbaa !29
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t109 = load ptr, ptr %l5, !tbaa !29
  %t112 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t109)
  store %"compiler/source:Span" %t112, ptr %l72
  br label %bb36
bb36:
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t116 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t113)
  store %"compiler/source:Span" %t116, ptr %l75
  br label %bb37
bb37:
  %t117 = load %"compiler/source:Span", ptr %l72
  %t118 = load %"compiler/source:Span", ptr %l75
  %t119 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t117, %"compiler/source:Span" %t118)
  store %"compiler/source:Span" %t119, ptr %l76
  br label %bb38
bb38:
  %t120 = load %"compiler/source:Span", ptr %l76
  store %"compiler/source:Span" %t120, ptr %l27
  br label %bb170
bb39:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t122 = load ptr, ptr %l77, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb40, label %bb41
bb40:
  %t125 = load ptr, ptr %l77, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 22}
  %t128 = icmp eq i64 %t126, 4
  store i1 %t128, ptr %l78, !tbaa !21
  br label %bb41
bb41:
  %t129 = load i1, ptr %l78, !tbaa !21
  br i1 %t129, label %bb42, label %bb43
bb42:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t132, i32 0, i32 1
  %t134 = load ptr, ptr %t133
  store ptr %t134, ptr %l7, !tbaa !29
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t138, i32 0, i32 2
  %t140 = load { i64, ptr }, ptr %t139
  store { i64, ptr } %t140, ptr %l8, !tbaa !27
  br label %bb44
bb43:
  br label %bb48
bb44:
  %t142 = load ptr, ptr %l7, !tbaa !29
  %t145 = call %"compiler/source:Span" @compiler_2fast_2eyieldIn(ptr %v0, ptr %t142)
  store %"compiler/source:Span" %t145, ptr %l87
  br label %bb45
bb45:
  %t146 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t148 = call %"compiler/source:Span" @compiler_2fast_2eyieldInCatches(ptr %v0, { i64, ptr } %t146)
  store %"compiler/source:Span" %t148, ptr %l89
  br label %bb46
bb46:
  %t149 = load %"compiler/source:Span", ptr %l87
  %t150 = load %"compiler/source:Span", ptr %l89
  %t151 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t149, %"compiler/source:Span" %t150)
  store %"compiler/source:Span" %t151, ptr %l90
  br label %bb47
bb47:
  %t152 = load %"compiler/source:Span", ptr %l90
  store %"compiler/source:Span" %t152, ptr %l27
  br label %bb170
bb48:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t154 = load ptr, ptr %l91, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb49, label %bb50
bb49:
  %t157 = load ptr, ptr %l91, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 22}
  %t160 = icmp eq i64 %t158, 5
  store i1 %t160, ptr %l92, !tbaa !21
  br label %bb50
bb50:
  %t161 = load i1, ptr %l92, !tbaa !21
  br i1 %t161, label %bb51, label %bb52
bb51:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr { i64, [4 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", ptr }, ptr %t164, i32 0, i32 1
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l9, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t168 = load ptr, ptr %l9, !tbaa !29
  %t170 = call %"compiler/source:Span" @compiler_2fast_2eyieldInIf(ptr %v0, ptr %t168)
  store %"compiler/source:Span" %t170, ptr %l98
  br label %bb54
bb54:
  %t171 = load %"compiler/source:Span", ptr %l98
  store %"compiler/source:Span" %t171, ptr %l27
  br label %bb170
bb55:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t173 = load ptr, ptr %l99, !tbaa !29
  %t174 = icmp ne ptr %t173, null
  br i1 %t174, label %bb56, label %bb57
bb56:
  %t176 = load ptr, ptr %l99, !tbaa !29
  %t177 = load i64, ptr %t176, !range !{i64 0, i64 22}
  %t179 = icmp eq i64 %t177, 6
  store i1 %t179, ptr %l100, !tbaa !21
  br label %bb57
bb57:
  %t180 = load i1, ptr %l100, !tbaa !21
  br i1 %t180, label %bb58, label %bb59
bb58:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t183, i32 0, i32 1
  %t185 = load { i64, ptr }, ptr %t184
  store { i64, ptr } %t185, ptr %l10, !tbaa !27
  br label %bb64
bb59:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t188 = load ptr, ptr %l105, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb60, label %bb61
bb60:
  %t191 = load ptr, ptr %l105, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 22}
  %t194 = icmp eq i64 %t192, 20
  store i1 %t194, ptr %l106, !tbaa !21
  br label %bb61
bb61:
  %t195 = load i1, ptr %l106, !tbaa !21
  br i1 %t195, label %bb62, label %bb63
bb62:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr { i64, [4 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t198, i32 0, i32 1
  %t200 = load { i64, ptr }, ptr %t199
  store { i64, ptr } %t200, ptr %l10, !tbaa !27
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t202 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t204 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t202)
  store %"compiler/source:Span" %t204, ptr %l112
  br label %bb65
bb65:
  %t205 = load %"compiler/source:Span", ptr %l112
  store %"compiler/source:Span" %t205, ptr %l27
  br label %bb170
bb66:
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t207 = load ptr, ptr %l113, !tbaa !29
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %bb67, label %bb68
bb67:
  %t210 = load ptr, ptr %l113, !tbaa !29
  %t211 = load i64, ptr %t210, !range !{i64 0, i64 22}
  %t213 = icmp eq i64 %t211, 7
  store i1 %t213, ptr %l114, !tbaa !21
  br label %bb68
bb68:
  %t214 = load i1, ptr %l114, !tbaa !21
  br i1 %t214, label %bb69, label %bb70
bb69:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t217, i32 0, i32 1
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l11, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t223, i32 0, i32 2
  %t225 = load { i64, ptr }, ptr %t224
  store { i64, ptr } %t225, ptr %l12, !tbaa !27
  br label %bb75
bb70:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t228 = load ptr, ptr %l121, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb71, label %bb72
bb71:
  %t231 = load ptr, ptr %l121, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 22}
  %t234 = icmp eq i64 %t232, 10
  store i1 %t234, ptr %l122, !tbaa !21
  br label %bb72
bb72:
  %t235 = load i1, ptr %l122, !tbaa !21
  br i1 %t235, label %bb73, label %bb74
bb73:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr { i64, [4 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t238, i32 0, i32 1
  %t240 = load { i64, ptr }, ptr %t239
  store { i64, ptr } %t240, ptr %l12, !tbaa !27
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr { i64, [4 x i64] }, ptr %t242, i32 0, i32 1
  %t245 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t244, i32 0, i32 2
  %t246 = load ptr, ptr %t245
  store ptr %t246, ptr %l11, !tbaa !29
  br label %bb75
bb74:
  br label %bb79
bb75:
  %t248 = load ptr, ptr %l11, !tbaa !29
  %t251 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t248)
  store %"compiler/source:Span" %t251, ptr %l131
  br label %bb76
bb76:
  %t252 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t254 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t252)
  store %"compiler/source:Span" %t254, ptr %l133
  br label %bb77
bb77:
  %t255 = load %"compiler/source:Span", ptr %l131
  %t256 = load %"compiler/source:Span", ptr %l133
  %t257 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t255, %"compiler/source:Span" %t256)
  store %"compiler/source:Span" %t257, ptr %l134
  br label %bb78
bb78:
  %t258 = load %"compiler/source:Span", ptr %l134
  store %"compiler/source:Span" %t258, ptr %l27
  br label %bb170
bb79:
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t260 = load ptr, ptr %l135, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb80, label %bb81
bb80:
  %t263 = load ptr, ptr %l135, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 22}
  %t266 = icmp eq i64 %t264, 8
  store i1 %t266, ptr %l136, !tbaa !21
  br label %bb81
bb81:
  %t267 = load i1, ptr %l136, !tbaa !21
  br i1 %t267, label %bb82, label %bb83
bb82:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr { i64, [4 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", ptr }, ptr %t270, i32 0, i32 1
  %t272 = load ptr, ptr %t271
  store ptr %t272, ptr %l13, !tbaa !29
  br label %bb84
bb83:
  br label %bb92
bb84:
  %t274 = load ptr, ptr %l13, !tbaa !29
  %t276 = getelementptr %"compiler/ast:For3", ptr %t274, i32 0, i32 0
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t280 = call %"compiler/source:Span" @compiler_2fast_2eyieldIn(ptr %v0, ptr %t277)
  store %"compiler/source:Span" %t280, ptr %l144
  br label %bb85
bb85:
  %t281 = load ptr, ptr %l13, !tbaa !29
  %t283 = getelementptr %"compiler/ast:For3", ptr %t281, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t286 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t284)
  store %"compiler/source:Span" %t286, ptr %l147
  br label %bb86
bb86:
  %t287 = load %"compiler/source:Span", ptr %l144
  %t288 = load %"compiler/source:Span", ptr %l147
  %t289 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t287, %"compiler/source:Span" %t288)
  store %"compiler/source:Span" %t289, ptr %l148
  br label %bb87
bb87:
  %t290 = load ptr, ptr %l13, !tbaa !29
  %t292 = getelementptr %"compiler/ast:For3", ptr %t290, i32 0, i32 2
  %t293 = load ptr, ptr %t292, !tbaa !29
  %t296 = call %"compiler/source:Span" @compiler_2fast_2eyieldIn(ptr %v0, ptr %t293)
  store %"compiler/source:Span" %t296, ptr %l152
  br label %bb88
bb88:
  %t297 = load ptr, ptr %l13, !tbaa !29
  %t299 = getelementptr %"compiler/ast:For3", ptr %t297, i32 0, i32 3
  %t300 = load { i64, ptr }, ptr %t299, !tbaa !27
  %t302 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t300)
  store %"compiler/source:Span" %t302, ptr %l155
  br label %bb89
bb89:
  %t303 = load %"compiler/source:Span", ptr %l152
  %t304 = load %"compiler/source:Span", ptr %l155
  %t305 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t303, %"compiler/source:Span" %t304)
  store %"compiler/source:Span" %t305, ptr %l156
  br label %bb90
bb90:
  %t306 = load %"compiler/source:Span", ptr %l148
  %t307 = load %"compiler/source:Span", ptr %l156
  %t308 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t306, %"compiler/source:Span" %t307)
  store %"compiler/source:Span" %t308, ptr %l157
  br label %bb91
bb91:
  %t309 = load %"compiler/source:Span", ptr %l157
  store %"compiler/source:Span" %t309, ptr %l27
  br label %bb170
bb92:
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t311 = load ptr, ptr %l158, !tbaa !29
  %t312 = icmp ne ptr %t311, null
  br i1 %t312, label %bb93, label %bb94
bb93:
  %t314 = load ptr, ptr %l158, !tbaa !29
  %t315 = load i64, ptr %t314, !range !{i64 0, i64 22}
  %t317 = icmp eq i64 %t315, 9
  store i1 %t317, ptr %l159, !tbaa !21
  br label %bb94
bb94:
  %t318 = load i1, ptr %l159, !tbaa !21
  br i1 %t318, label %bb95, label %bb96
bb95:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { %"compiler/source:Span", ptr }, ptr %t321, i32 0, i32 1
  %t323 = load ptr, ptr %t322
  store ptr %t323, ptr %l14, !tbaa !29
  br label %bb97
bb96:
  br label %bb103
bb97:
  %t325 = load ptr, ptr %l14, !tbaa !29
  %t327 = getelementptr %"compiler/ast:ForIn", ptr %t325, i32 0, i32 2
  %t328 = load ptr, ptr %t327, !tbaa !29
  %t331 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t328)
  store %"compiler/source:Span" %t331, ptr %l167
  br label %bb98
bb98:
  %t332 = load ptr, ptr %l14, !tbaa !29
  %t334 = getelementptr %"compiler/ast:ForIn", ptr %t332, i32 0, i32 4
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  %t337 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t335)
  store %"compiler/source:Span" %t337, ptr %l170
  br label %bb99
bb99:
  %t338 = load %"compiler/source:Span", ptr %l167
  %t339 = load %"compiler/source:Span", ptr %l170
  %t340 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t338, %"compiler/source:Span" %t339)
  store %"compiler/source:Span" %t340, ptr %l171
  br label %bb100
bb100:
  %t341 = load ptr, ptr %l14, !tbaa !29
  %t343 = getelementptr %"compiler/ast:ForIn", ptr %t341, i32 0, i32 5
  %t344 = load { i64, ptr }, ptr %t343, !tbaa !27
  %t346 = call %"compiler/source:Span" @compiler_2fast_2eyieldInCatches(ptr %v0, { i64, ptr } %t344)
  store %"compiler/source:Span" %t346, ptr %l174
  br label %bb101
bb101:
  %t347 = load %"compiler/source:Span", ptr %l171
  %t348 = load %"compiler/source:Span", ptr %l174
  %t349 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t347, %"compiler/source:Span" %t348)
  store %"compiler/source:Span" %t349, ptr %l175
  br label %bb102
bb102:
  %t350 = load %"compiler/source:Span", ptr %l175
  store %"compiler/source:Span" %t350, ptr %l27
  br label %bb170
bb103:
  %t351 = load ptr, ptr %l0, !tbaa !29
  store ptr %t351, ptr %l176, !tbaa !29
  store i1 false, ptr %l177, !tbaa !21
  %t352 = load ptr, ptr %l176, !tbaa !29
  %t353 = icmp ne ptr %t352, null
  br i1 %t353, label %bb104, label %bb105
bb104:
  %t355 = load ptr, ptr %l176, !tbaa !29
  %t356 = load i64, ptr %t355, !range !{i64 0, i64 22}
  %t358 = icmp eq i64 %t356, 11
  store i1 %t358, ptr %l177, !tbaa !21
  br label %bb105
bb105:
  %t359 = load i1, ptr %l177, !tbaa !21
  br i1 %t359, label %bb106, label %bb107
bb106:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr { i64, [4 x i64] }, ptr %t360, i32 0, i32 1
  %t363 = getelementptr { %"compiler/source:Span", ptr }, ptr %t362, i32 0, i32 1
  %t364 = load ptr, ptr %t363
  store ptr %t364, ptr %l15, !tbaa !29
  br label %bb108
bb107:
  br label %bb110
bb108:
  %t366 = load ptr, ptr %l15, !tbaa !29
  %t368 = call %"compiler/source:Span" @compiler_2fast_2eyieldInMatch(ptr %v0, ptr %t366)
  store %"compiler/source:Span" %t368, ptr %l183
  br label %bb109
bb109:
  %t369 = load %"compiler/source:Span", ptr %l183
  store %"compiler/source:Span" %t369, ptr %l27
  br label %bb170
bb110:
  %t370 = load ptr, ptr %l0, !tbaa !29
  store ptr %t370, ptr %l184, !tbaa !29
  store i1 false, ptr %l185, !tbaa !21
  %t371 = load ptr, ptr %l184, !tbaa !29
  %t372 = icmp ne ptr %t371, null
  br i1 %t372, label %bb111, label %bb112
bb111:
  %t374 = load ptr, ptr %l184, !tbaa !29
  %t375 = load i64, ptr %t374, !range !{i64 0, i64 22}
  %t377 = icmp eq i64 %t375, 12
  store i1 %t377, ptr %l185, !tbaa !21
  br label %bb112
bb112:
  %t378 = load i1, ptr %l185, !tbaa !21
  br i1 %t378, label %bb113, label %bb114
bb113:
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t381 = getelementptr { i64, [4 x i64] }, ptr %t379, i32 0, i32 1
  %t382 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t381, i32 0, i32 1
  %t383 = load { i64, ptr }, ptr %t382
  store { i64, ptr } %t383, ptr %l16, !tbaa !27
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t385 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t387 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %t385)
  store %"compiler/source:Span" %t387, ptr %l191
  br label %bb116
bb116:
  %t388 = load %"compiler/source:Span", ptr %l191
  store %"compiler/source:Span" %t388, ptr %l27
  br label %bb170
bb117:
  %t389 = load ptr, ptr %l0, !tbaa !29
  store ptr %t389, ptr %l192, !tbaa !29
  store i1 false, ptr %l193, !tbaa !21
  %t390 = load ptr, ptr %l192, !tbaa !29
  %t391 = icmp ne ptr %t390, null
  br i1 %t391, label %bb118, label %bb119
bb118:
  %t393 = load ptr, ptr %l192, !tbaa !29
  %t394 = load i64, ptr %t393, !range !{i64 0, i64 22}
  %t396 = icmp eq i64 %t394, 15
  store i1 %t396, ptr %l193, !tbaa !21
  br label %bb119
bb119:
  %t397 = load i1, ptr %l193, !tbaa !21
  br i1 %t397, label %bb120, label %bb121
bb120:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr { i64, [4 x i64] }, ptr %t398, i32 0, i32 1
  %t401 = getelementptr { %"compiler/source:Span", ptr }, ptr %t400, i32 0, i32 1
  %t402 = load ptr, ptr %t401
  store ptr %t402, ptr %l17, !tbaa !29
  br label %bb122
bb121:
  br label %bb124
bb122:
  %t404 = load ptr, ptr %l17, !tbaa !29
  %t407 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t404)
  store %"compiler/source:Span" %t407, ptr %l200
  br label %bb123
bb123:
  %t408 = load %"compiler/source:Span", ptr %l200
  store %"compiler/source:Span" %t408, ptr %l27
  br label %bb170
bb124:
  %t409 = load ptr, ptr %l0, !tbaa !29
  store ptr %t409, ptr %l201, !tbaa !29
  store i1 false, ptr %l202, !tbaa !21
  %t410 = load ptr, ptr %l201, !tbaa !29
  %t411 = icmp ne ptr %t410, null
  br i1 %t411, label %bb125, label %bb126
bb125:
  %t413 = load ptr, ptr %l201, !tbaa !29
  %t414 = load i64, ptr %t413, !range !{i64 0, i64 22}
  %t416 = icmp eq i64 %t414, 14
  store i1 %t416, ptr %l202, !tbaa !21
  br label %bb126
bb126:
  %t417 = load i1, ptr %l202, !tbaa !21
  br i1 %t417, label %bb127, label %bb128
bb127:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr { i64, [4 x i64] }, ptr %t418, i32 0, i32 1
  %t421 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t420, i32 0, i32 1
  %t422 = load ptr, ptr %t421
  store ptr %t422, ptr %l18, !tbaa !29
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr { i64, [4 x i64] }, ptr %t424, i32 0, i32 1
  %t427 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t426, i32 0, i32 2
  %t428 = load ptr, ptr %t427
  store ptr %t428, ptr %l19, !tbaa !29
  br label %bb129
bb128:
  br label %bb133
bb129:
  %t430 = load ptr, ptr %l18, !tbaa !29
  %t433 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t430)
  store %"compiler/source:Span" %t433, ptr %l211
  br label %bb130
bb130:
  %t434 = load ptr, ptr %l19, !tbaa !29
  %t436 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t434)
  store %"compiler/source:Span" %t436, ptr %l213
  br label %bb131
bb131:
  %t437 = load %"compiler/source:Span", ptr %l211
  %t438 = load %"compiler/source:Span", ptr %l213
  %t439 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t437, %"compiler/source:Span" %t438)
  store %"compiler/source:Span" %t439, ptr %l214
  br label %bb132
bb132:
  %t440 = load %"compiler/source:Span", ptr %l214
  store %"compiler/source:Span" %t440, ptr %l27
  br label %bb170
bb133:
  %t441 = load ptr, ptr %l0, !tbaa !29
  store ptr %t441, ptr %l215, !tbaa !29
  store i1 false, ptr %l216, !tbaa !21
  %t442 = load ptr, ptr %l215, !tbaa !29
  %t443 = icmp ne ptr %t442, null
  br i1 %t443, label %bb134, label %bb135
bb134:
  %t445 = load ptr, ptr %l215, !tbaa !29
  %t446 = load i64, ptr %t445, !range !{i64 0, i64 22}
  %t448 = icmp eq i64 %t446, 13
  store i1 %t448, ptr %l216, !tbaa !21
  br label %bb135
bb135:
  %t449 = load i1, ptr %l216, !tbaa !21
  br i1 %t449, label %bb136, label %bb137
bb136:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr { i64, [4 x i64] }, ptr %t450, i32 0, i32 1
  %t453 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t452, i32 0, i32 2
  %t454 = load ptr, ptr %t453
  store ptr %t454, ptr %l20, !tbaa !29
  br label %bb138
bb137:
  br label %bb140
bb138:
  %t456 = load ptr, ptr %l20, !tbaa !29
  %t458 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t456)
  store %"compiler/source:Span" %t458, ptr %l222
  br label %bb139
bb139:
  %t459 = load %"compiler/source:Span", ptr %l222
  store %"compiler/source:Span" %t459, ptr %l27
  br label %bb170
bb140:
  %t460 = load ptr, ptr %l0, !tbaa !29
  store ptr %t460, ptr %l223, !tbaa !29
  store i1 false, ptr %l224, !tbaa !21
  %t461 = load ptr, ptr %l223, !tbaa !29
  %t462 = icmp ne ptr %t461, null
  br i1 %t462, label %bb141, label %bb142
bb141:
  %t464 = load ptr, ptr %l223, !tbaa !29
  %t465 = load i64, ptr %t464, !range !{i64 0, i64 22}
  %t467 = icmp eq i64 %t465, 17
  store i1 %t467, ptr %l224, !tbaa !21
  br label %bb142
bb142:
  %t468 = load i1, ptr %l224, !tbaa !21
  br i1 %t468, label %bb143, label %bb144
bb143:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr { i64, [4 x i64] }, ptr %t469, i32 0, i32 1
  %t472 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t471, i32 0, i32 2
  %t473 = load ptr, ptr %t472
  store ptr %t473, ptr %l21, !tbaa !29
  br label %bb145
bb144:
  br label %bb147
bb145:
  %t475 = load ptr, ptr %l21, !tbaa !29
  %t478 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t475)
  store %"compiler/source:Span" %t478, ptr %l231
  br label %bb146
bb146:
  %t479 = load %"compiler/source:Span", ptr %l231
  store %"compiler/source:Span" %t479, ptr %l27
  br label %bb170
bb147:
  %t480 = load ptr, ptr %l0, !tbaa !29
  store ptr %t480, ptr %l232, !tbaa !29
  store i1 false, ptr %l233, !tbaa !21
  %t481 = load ptr, ptr %l232, !tbaa !29
  %t482 = icmp ne ptr %t481, null
  br i1 %t482, label %bb148, label %bb149
bb148:
  %t484 = load ptr, ptr %l232, !tbaa !29
  %t485 = load i64, ptr %t484, !range !{i64 0, i64 22}
  %t487 = icmp eq i64 %t485, 18
  store i1 %t487, ptr %l233, !tbaa !21
  br label %bb149
bb149:
  %t488 = load i1, ptr %l233, !tbaa !21
  br i1 %t488, label %bb150, label %bb151
bb150:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = getelementptr { i64, [4 x i64] }, ptr %t489, i32 0, i32 1
  %t492 = getelementptr { %"compiler/source:Span", ptr }, ptr %t491, i32 0, i32 1
  %t493 = load ptr, ptr %t492
  store ptr %t493, ptr %l22, !tbaa !29
  br label %bb152
bb151:
  br label %bb156
bb152:
  %t495 = load ptr, ptr %l22, !tbaa !29
  %t497 = getelementptr %"compiler/ast:JoinS", ptr %t495, i32 0, i32 1
  %t498 = load { i64, ptr }, ptr %t497, !tbaa !27
  %t500 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t498)
  store %"compiler/source:Span" %t500, ptr %l240
  br label %bb153
bb153:
  %t501 = load ptr, ptr %l22, !tbaa !29
  %t503 = getelementptr %"compiler/ast:JoinS", ptr %t501, i32 0, i32 2
  %t504 = load { i64, ptr }, ptr %t503, !tbaa !27
  %t506 = call %"compiler/source:Span" @compiler_2fast_2eyieldInCatches(ptr %v0, { i64, ptr } %t504)
  store %"compiler/source:Span" %t506, ptr %l243
  br label %bb154
bb154:
  %t507 = load %"compiler/source:Span", ptr %l240
  %t508 = load %"compiler/source:Span", ptr %l243
  %t509 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t507, %"compiler/source:Span" %t508)
  store %"compiler/source:Span" %t509, ptr %l244
  br label %bb155
bb155:
  %t510 = load %"compiler/source:Span", ptr %l244
  store %"compiler/source:Span" %t510, ptr %l27
  br label %bb170
bb156:
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l245, !tbaa !29
  store i1 false, ptr %l246, !tbaa !21
  %t512 = load ptr, ptr %l245, !tbaa !29
  %t513 = icmp ne ptr %t512, null
  br i1 %t513, label %bb157, label %bb158
bb157:
  %t515 = load ptr, ptr %l245, !tbaa !29
  %t516 = load i64, ptr %t515, !range !{i64 0, i64 22}
  %t518 = icmp eq i64 %t516, 19
  store i1 %t518, ptr %l246, !tbaa !21
  br label %bb158
bb158:
  %t519 = load i1, ptr %l246, !tbaa !21
  br i1 %t519, label %bb159, label %bb160
bb159:
  %t520 = load ptr, ptr %l0, !tbaa !29
  %t522 = getelementptr { i64, [4 x i64] }, ptr %t520, i32 0, i32 1
  %t523 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t522, i32 0, i32 1
  %t524 = load ptr, ptr %t523
  store ptr %t524, ptr %l23, !tbaa !29
  br label %bb161
bb160:
  br label %bb163
bb161:
  %t526 = load ptr, ptr %l23, !tbaa !29
  %t529 = call %"compiler/source:Span" @compiler_2fast_2eyieldIn(ptr %v0, ptr %t526)
  store %"compiler/source:Span" %t529, ptr %l253
  br label %bb162
bb162:
  %t530 = load %"compiler/source:Span", ptr %l253
  store %"compiler/source:Span" %t530, ptr %l27
  br label %bb170
bb163:
  %t531 = load ptr, ptr %l0, !tbaa !29
  store ptr %t531, ptr %l254, !tbaa !29
  store i1 false, ptr %l255, !tbaa !21
  %t532 = load ptr, ptr %l254, !tbaa !29
  %t533 = icmp ne ptr %t532, null
  br i1 %t533, label %bb164, label %bb165
bb164:
  %t535 = load ptr, ptr %l254, !tbaa !29
  %t536 = load i64, ptr %t535, !range !{i64 0, i64 22}
  %t538 = icmp eq i64 %t536, 16
  store i1 %t538, ptr %l255, !tbaa !21
  br label %bb165
bb165:
  %t539 = load i1, ptr %l255, !tbaa !21
  br i1 %t539, label %bb166, label %bb167
bb166:
  br label %bb168
bb167:
  br label %bb169
bb168:
  %t540 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t540, ptr %l27
  br label %bb170
bb169:
  call void @__olang_check_failed(ptr @olang_loc_cfce0b7e4832e85f_3aa2be1abc8ef6db)
  unreachable
bb170:
  %t542 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t542, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldInCase(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Case", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t4)
  store %"compiler/source:Span" %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Case", ptr %t7, i32 0, i32 4
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t12 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t10)
  store %"compiler/source:Span" %t12, ptr %l6
  br label %bb2
bb2:
  %t13 = load %"compiler/source:Span", ptr %l3
  %t14 = load %"compiler/source:Span", ptr %l6
  %t15 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t13, %"compiler/source:Span" %t14)
  store %"compiler/source:Span" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Case", ptr %t16, i32 0, i32 5
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t19)
  store %"compiler/source:Span" %t21, ptr %l10
  br label %bb4
bb4:
  %t22 = load %"compiler/source:Span", ptr %l7
  %t23 = load %"compiler/source:Span", ptr %l10
  %t24 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t22, %"compiler/source:Span" %t23)
  store %"compiler/source:Span" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t25, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldInCatches(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb15
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l4, !tbaa !29
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Catch", ptr %t31, i32 0, i32 2
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t36 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t34)
  store %"compiler/source:Span" %t36, ptr %l22
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = getelementptr %"compiler/ast:Catch", ptr %t37, i32 0, i32 3
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t42 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %t40)
  store %"compiler/source:Span" %t42, ptr %l25
  br label %bb9
bb9:
  %t43 = load %"compiler/source:Span", ptr %l22
  %t44 = load %"compiler/source:Span", ptr %l25
  %t45 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t43, %"compiler/source:Span" %t44)
  store %"compiler/source:Span" %t45, ptr %l26
  br label %bb10
bb10:
  %t46 = load %"compiler/source:Span", ptr %l26
  store %"compiler/source:Span" %t46, ptr %l5
  %t47 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t48 = load i32, ptr %t47, !tbaa !23
  %t50 = icmp sge i32 %t48, 0
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t52, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l2, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l2, !tbaa !24
  br label %bb4
bb15:
  %t58 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t58, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %a0) #0 {
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
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca ptr
  %l63 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca ptr
  %l84 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l109 = alloca %"compiler/source:Span"
  %l112 = alloca %"compiler/source:Span"
  %l113 = alloca %"compiler/source:Span"
  %l114 = alloca ptr
  %l115 = alloca i1
  %l126 = alloca %"compiler/source:Span"
  %l129 = alloca %"compiler/source:Span"
  %l130 = alloca %"compiler/source:Span"
  %l133 = alloca %"compiler/source:Span"
  %l134 = alloca %"compiler/source:Span"
  %l135 = alloca ptr
  %l136 = alloca i1
  %l143 = alloca %"compiler/source:Span"
  %l144 = alloca ptr
  %l145 = alloca i1
  %l152 = alloca ptr
  %l153 = alloca i1
  %l162 = alloca %"compiler/source:Span"
  %l164 = alloca %"compiler/source:Span"
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca ptr
  %l167 = alloca i1
  %l178 = alloca %"compiler/source:Span"
  %l180 = alloca %"compiler/source:Span"
  %l181 = alloca %"compiler/source:Span"
  %l183 = alloca %"compiler/source:Span"
  %l184 = alloca %"compiler/source:Span"
  %l185 = alloca ptr
  %l186 = alloca i1
  %l191 = alloca ptr
  %l192 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca i1
  %l203 = alloca ptr
  %l204 = alloca i1
  %l209 = alloca ptr
  %l210 = alloca i1
  %l216 = alloca %"compiler/source:Span"
  %l217 = alloca ptr
  %l218 = alloca i1
  %l227 = alloca %"compiler/source:Span"
  %l229 = alloca %"compiler/source:Span"
  %l230 = alloca %"compiler/source:Span"
  %l231 = alloca ptr
  %l232 = alloca i1
  %l238 = alloca %"compiler/source:Span"
  %l239 = alloca ptr
  %l240 = alloca i1
  %l248 = alloca %"compiler/source:Span"
  %l252 = alloca %"compiler/source:Span"
  %l253 = alloca %"compiler/source:Span"
  %l256 = alloca %"compiler/source:Span"
  %l257 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t8 = load ptr, ptr %l23, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l23, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 30}
  %t14 = icmp eq i64 %t12, 2
  store i1 %t14, ptr %l24, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l24, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l1, !tbaa !29
  br label %bb28
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t23 = load ptr, ptr %l29, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l29, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 26
  store i1 %t29, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l30, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l1, !tbaa !29
  br label %bb28
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t38 = load ptr, ptr %l35, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l35, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 30}
  %t44 = icmp eq i64 %t42, 28
  store i1 %t44, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l36, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", ptr }, ptr %t48, i32 0, i32 1
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l1, !tbaa !29
  br label %bb28
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t53 = load ptr, ptr %l41, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb16, label %bb17
bb16:
  %t56 = load ptr, ptr %l41, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 30}
  %t59 = icmp eq i64 %t57, 3
  store i1 %t59, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t60 = load i1, ptr %l42, !tbaa !21
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t63, i32 0, i32 2
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l1, !tbaa !29
  br label %bb28
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t68 = load ptr, ptr %l47, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb20, label %bb21
bb20:
  %t71 = load ptr, ptr %l47, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 30}
  %t74 = icmp eq i64 %t72, 4
  store i1 %t74, ptr %l48, !tbaa !21
  br label %bb21
bb21:
  %t75 = load i1, ptr %l48, !tbaa !21
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l1, !tbaa !29
  br label %bb28
bb23:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t83 = load ptr, ptr %l53, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t86 = load ptr, ptr %l53, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 30}
  %t89 = icmp eq i64 %t87, 14
  store i1 %t89, ptr %l54, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l54, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t93, i32 0, i32 1
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l1, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t100 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t97)
  store %"compiler/source:Span" %t100, ptr %l61
  br label %bb29
bb29:
  %t101 = load %"compiler/source:Span", ptr %l61
  store %"compiler/source:Span" %t101, ptr %l22
  br label %bb159
bb30:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t103 = load ptr, ptr %l62, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb31, label %bb32
bb31:
  %t106 = load ptr, ptr %l62, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 30}
  %t109 = icmp eq i64 %t107, 9
  store i1 %t109, ptr %l63, !tbaa !21
  br label %bb32
bb32:
  %t110 = load i1, ptr %l63, !tbaa !21
  br i1 %t110, label %bb33, label %bb34
bb33:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t113, i32 0, i32 1
  %t115 = load ptr, ptr %t114
  store ptr %t115, ptr %l2, !tbaa !29
  br label %bb43
bb34:
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t118 = load ptr, ptr %l68, !tbaa !29
  %t119 = icmp ne ptr %t118, null
  br i1 %t119, label %bb35, label %bb36
bb35:
  %t121 = load ptr, ptr %l68, !tbaa !29
  %t122 = load i64, ptr %t121, !range !{i64 0, i64 30}
  %t124 = icmp eq i64 %t122, 11
  store i1 %t124, ptr %l69, !tbaa !21
  br label %bb36
bb36:
  %t125 = load i1, ptr %l69, !tbaa !21
  br i1 %t125, label %bb37, label %bb38
bb37:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t128, i32 0, i32 1
  %t130 = load ptr, ptr %t129
  store ptr %t130, ptr %l2, !tbaa !29
  br label %bb43
bb38:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t133 = load ptr, ptr %l74, !tbaa !29
  %t134 = icmp ne ptr %t133, null
  br i1 %t134, label %bb39, label %bb40
bb39:
  %t136 = load ptr, ptr %l74, !tbaa !29
  %t137 = load i64, ptr %t136, !range !{i64 0, i64 30}
  %t139 = icmp eq i64 %t137, 13
  store i1 %t139, ptr %l75, !tbaa !21
  br label %bb40
bb40:
  %t140 = load i1, ptr %l75, !tbaa !21
  br i1 %t140, label %bb41, label %bb42
bb41:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t143, i32 0, i32 1
  %t145 = load ptr, ptr %t144
  store ptr %t145, ptr %l2, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t147 = load ptr, ptr %l2, !tbaa !29
  %t150 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t147)
  store %"compiler/source:Span" %t150, ptr %l82
  br label %bb44
bb44:
  %t151 = load %"compiler/source:Span", ptr %l82
  store %"compiler/source:Span" %t151, ptr %l22
  br label %bb159
bb45:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l83, !tbaa !29
  store i1 false, ptr %l84, !tbaa !21
  %t153 = load ptr, ptr %l83, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb46, label %bb47
bb46:
  %t156 = load ptr, ptr %l83, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 30}
  %t159 = icmp eq i64 %t157, 5
  store i1 %t159, ptr %l84, !tbaa !21
  br label %bb47
bb47:
  %t160 = load i1, ptr %l84, !tbaa !21
  br i1 %t160, label %bb48, label %bb49
bb48:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t163, i32 0, i32 2
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l3, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t169, i32 0, i32 3
  %t171 = load ptr, ptr %t170
  store ptr %t171, ptr %l4, !tbaa !29
  br label %bb58
bb49:
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t174 = load ptr, ptr %l91, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb50, label %bb51
bb50:
  %t177 = load ptr, ptr %l91, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 30}
  %t180 = icmp eq i64 %t178, 6
  store i1 %t180, ptr %l92, !tbaa !21
  br label %bb51
bb51:
  %t181 = load i1, ptr %l92, !tbaa !21
  br i1 %t181, label %bb52, label %bb53
bb52:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t184, i32 0, i32 1
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l3, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t190, i32 0, i32 2
  %t192 = load ptr, ptr %t191
  store ptr %t192, ptr %l4, !tbaa !29
  br label %bb58
bb53:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t195 = load ptr, ptr %l99, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb54, label %bb55
bb54:
  %t198 = load ptr, ptr %l99, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 30}
  %t201 = icmp eq i64 %t199, 10
  store i1 %t201, ptr %l100, !tbaa !21
  br label %bb55
bb55:
  %t202 = load i1, ptr %l100, !tbaa !21
  br i1 %t202, label %bb56, label %bb57
bb56:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t205, i32 0, i32 1
  %t207 = load ptr, ptr %t206
  store ptr %t207, ptr %l3, !tbaa !29
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t211, i32 0, i32 2
  %t213 = load ptr, ptr %t212
  store ptr %t213, ptr %l4, !tbaa !29
  br label %bb58
bb57:
  br label %bb62
bb58:
  %t215 = load ptr, ptr %l3, !tbaa !29
  %t218 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t215)
  store %"compiler/source:Span" %t218, ptr %l109
  br label %bb59
bb59:
  %t219 = load ptr, ptr %l4, !tbaa !29
  %t222 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t219)
  store %"compiler/source:Span" %t222, ptr %l112
  br label %bb60
bb60:
  %t223 = load %"compiler/source:Span", ptr %l109
  %t224 = load %"compiler/source:Span", ptr %l112
  %t225 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t223, %"compiler/source:Span" %t224)
  store %"compiler/source:Span" %t225, ptr %l113
  br label %bb61
bb61:
  %t226 = load %"compiler/source:Span", ptr %l113
  store %"compiler/source:Span" %t226, ptr %l22
  br label %bb159
bb62:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t228 = load ptr, ptr %l114, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb63, label %bb64
bb63:
  %t231 = load ptr, ptr %l114, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 30}
  %t234 = icmp eq i64 %t232, 8
  store i1 %t234, ptr %l115, !tbaa !21
  br label %bb64
bb64:
  %t235 = load i1, ptr %l115, !tbaa !21
  br i1 %t235, label %bb65, label %bb66
bb65:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr { i64, [4 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t238, i32 0, i32 1
  %t240 = load ptr, ptr %t239
  store ptr %t240, ptr %l5, !tbaa !29
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr { i64, [4 x i64] }, ptr %t242, i32 0, i32 1
  %t245 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t244, i32 0, i32 2
  %t246 = load ptr, ptr %t245
  store ptr %t246, ptr %l6, !tbaa !29
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr { i64, [4 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t250, i32 0, i32 3
  %t252 = load ptr, ptr %t251
  store ptr %t252, ptr %l7, !tbaa !29
  br label %bb67
bb66:
  br label %bb73
bb67:
  %t254 = load ptr, ptr %l5, !tbaa !29
  %t257 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t254)
  store %"compiler/source:Span" %t257, ptr %l126
  br label %bb68
bb68:
  %t258 = load ptr, ptr %l6, !tbaa !29
  %t261 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t258)
  store %"compiler/source:Span" %t261, ptr %l129
  br label %bb69
bb69:
  %t262 = load %"compiler/source:Span", ptr %l126
  %t263 = load %"compiler/source:Span", ptr %l129
  %t264 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t262, %"compiler/source:Span" %t263)
  store %"compiler/source:Span" %t264, ptr %l130
  br label %bb70
bb70:
  %t265 = load ptr, ptr %l7, !tbaa !29
  %t268 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t265)
  store %"compiler/source:Span" %t268, ptr %l133
  br label %bb71
bb71:
  %t269 = load %"compiler/source:Span", ptr %l130
  %t270 = load %"compiler/source:Span", ptr %l133
  %t271 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t269, %"compiler/source:Span" %t270)
  store %"compiler/source:Span" %t271, ptr %l134
  br label %bb72
bb72:
  %t272 = load %"compiler/source:Span", ptr %l134
  store %"compiler/source:Span" %t272, ptr %l22
  br label %bb159
bb73:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t274 = load ptr, ptr %l135, !tbaa !29
  %t275 = icmp ne ptr %t274, null
  br i1 %t275, label %bb74, label %bb75
bb74:
  %t277 = load ptr, ptr %l135, !tbaa !29
  %t278 = load i64, ptr %t277, !range !{i64 0, i64 30}
  %t280 = icmp eq i64 %t278, 7
  store i1 %t280, ptr %l136, !tbaa !21
  br label %bb75
bb75:
  %t281 = load i1, ptr %l136, !tbaa !21
  br i1 %t281, label %bb76, label %bb77
bb76:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t282, i32 0, i32 1
  %t285 = getelementptr { %"compiler/source:Span", ptr }, ptr %t284, i32 0, i32 1
  %t286 = load ptr, ptr %t285
  store ptr %t286, ptr %l8, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t288 = load ptr, ptr %l8, !tbaa !29
  %t290 = getelementptr %"compiler/ast:Chain", ptr %t288, i32 0, i32 1
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  %t293 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %t291)
  store %"compiler/source:Span" %t293, ptr %l143
  br label %bb79
bb79:
  %t294 = load %"compiler/source:Span", ptr %l143
  store %"compiler/source:Span" %t294, ptr %l22
  br label %bb159
bb80:
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t296 = load ptr, ptr %l144, !tbaa !29
  %t297 = icmp ne ptr %t296, null
  br i1 %t297, label %bb81, label %bb82
bb81:
  %t299 = load ptr, ptr %l144, !tbaa !29
  %t300 = load i64, ptr %t299, !range !{i64 0, i64 30}
  %t302 = icmp eq i64 %t300, 12
  store i1 %t302, ptr %l145, !tbaa !21
  br label %bb82
bb82:
  %t303 = load i1, ptr %l145, !tbaa !21
  br i1 %t303, label %bb83, label %bb84
bb83:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr { i64, [4 x i64] }, ptr %t304, i32 0, i32 1
  %t307 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t306, i32 0, i32 1
  %t308 = load ptr, ptr %t307
  store ptr %t308, ptr %l9, !tbaa !29
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr { i64, [4 x i64] }, ptr %t310, i32 0, i32 1
  %t313 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t312, i32 0, i32 2
  %t314 = load { i64, ptr }, ptr %t313
  store { i64, ptr } %t314, ptr %l10, !tbaa !27
  br label %bb89
bb84:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t317 = load ptr, ptr %l152, !tbaa !29
  %t318 = icmp ne ptr %t317, null
  br i1 %t318, label %bb85, label %bb86
bb85:
  %t320 = load ptr, ptr %l152, !tbaa !29
  %t321 = load i64, ptr %t320, !range !{i64 0, i64 30}
  %t323 = icmp eq i64 %t321, 15
  store i1 %t323, ptr %l153, !tbaa !21
  br label %bb86
bb86:
  %t324 = load i1, ptr %l153, !tbaa !21
  br i1 %t324, label %bb87, label %bb88
bb87:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr { i64, [4 x i64] }, ptr %t325, i32 0, i32 1
  %t328 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t327, i32 0, i32 1
  %t329 = load ptr, ptr %t328
  store ptr %t329, ptr %l9, !tbaa !29
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr { i64, [4 x i64] }, ptr %t331, i32 0, i32 1
  %t334 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t333, i32 0, i32 2
  %t335 = load { i64, ptr }, ptr %t334
  store { i64, ptr } %t335, ptr %l10, !tbaa !27
  br label %bb89
bb88:
  br label %bb93
bb89:
  %t337 = load ptr, ptr %l9, !tbaa !29
  %t340 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t337)
  store %"compiler/source:Span" %t340, ptr %l162
  br label %bb90
bb90:
  %t341 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t343 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %t341)
  store %"compiler/source:Span" %t343, ptr %l164
  br label %bb91
bb91:
  %t344 = load %"compiler/source:Span", ptr %l162
  %t345 = load %"compiler/source:Span", ptr %l164
  %t346 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t344, %"compiler/source:Span" %t345)
  store %"compiler/source:Span" %t346, ptr %l165
  br label %bb92
bb92:
  %t347 = load %"compiler/source:Span", ptr %l165
  store %"compiler/source:Span" %t347, ptr %l22
  br label %bb159
bb93:
  %t348 = load ptr, ptr %l0, !tbaa !29
  store ptr %t348, ptr %l166, !tbaa !29
  store i1 false, ptr %l167, !tbaa !21
  %t349 = load ptr, ptr %l166, !tbaa !29
  %t350 = icmp ne ptr %t349, null
  br i1 %t350, label %bb94, label %bb95
bb94:
  %t352 = load ptr, ptr %l166, !tbaa !29
  %t353 = load i64, ptr %t352, !range !{i64 0, i64 30}
  %t355 = icmp eq i64 %t353, 16
  store i1 %t355, ptr %l167, !tbaa !21
  br label %bb95
bb95:
  %t356 = load i1, ptr %l167, !tbaa !21
  br i1 %t356, label %bb96, label %bb97
bb96:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 1
  %t360 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t359, i32 0, i32 1
  %t361 = load ptr, ptr %t360
  store ptr %t361, ptr %l11, !tbaa !29
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr { i64, [4 x i64] }, ptr %t363, i32 0, i32 1
  %t366 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t365, i32 0, i32 2
  %t367 = load ptr, ptr %t366
  store ptr %t367, ptr %l12, !tbaa !29
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t371 = getelementptr { i64, [4 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t371, i32 0, i32 3
  %t373 = load ptr, ptr %t372
  store ptr %t373, ptr %l13, !tbaa !29
  br label %bb98
bb97:
  br label %bb104
bb98:
  %t375 = load ptr, ptr %l11, !tbaa !29
  %t378 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t375)
  store %"compiler/source:Span" %t378, ptr %l178
  br label %bb99
bb99:
  %t379 = load ptr, ptr %l12, !tbaa !29
  %t381 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t379)
  store %"compiler/source:Span" %t381, ptr %l180
  br label %bb100
bb100:
  %t382 = load %"compiler/source:Span", ptr %l178
  %t383 = load %"compiler/source:Span", ptr %l180
  %t384 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t382, %"compiler/source:Span" %t383)
  store %"compiler/source:Span" %t384, ptr %l181
  br label %bb101
bb101:
  %t385 = load ptr, ptr %l13, !tbaa !29
  %t387 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t385)
  store %"compiler/source:Span" %t387, ptr %l183
  br label %bb102
bb102:
  %t388 = load %"compiler/source:Span", ptr %l181
  %t389 = load %"compiler/source:Span", ptr %l183
  %t390 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t388, %"compiler/source:Span" %t389)
  store %"compiler/source:Span" %t390, ptr %l184
  br label %bb103
bb103:
  %t391 = load %"compiler/source:Span", ptr %l184
  store %"compiler/source:Span" %t391, ptr %l22
  br label %bb159
bb104:
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t393 = load ptr, ptr %l185, !tbaa !29
  %t394 = icmp ne ptr %t393, null
  br i1 %t394, label %bb105, label %bb106
bb105:
  %t396 = load ptr, ptr %l185, !tbaa !29
  %t397 = load i64, ptr %t396, !range !{i64 0, i64 30}
  %t399 = icmp eq i64 %t397, 17
  store i1 %t399, ptr %l186, !tbaa !21
  br label %bb106
bb106:
  %t400 = load i1, ptr %l186, !tbaa !21
  br i1 %t400, label %bb107, label %bb108
bb107:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr { i64, [4 x i64] }, ptr %t401, i32 0, i32 1
  %t404 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t403, i32 0, i32 2
  %t405 = load { i64, ptr }, ptr %t404
  store { i64, ptr } %t405, ptr %l14, !tbaa !27
  br label %bb125
bb108:
  %t407 = load ptr, ptr %l0, !tbaa !29
  store ptr %t407, ptr %l191, !tbaa !29
  store i1 false, ptr %l192, !tbaa !21
  %t408 = load ptr, ptr %l191, !tbaa !29
  %t409 = icmp ne ptr %t408, null
  br i1 %t409, label %bb109, label %bb110
bb109:
  %t411 = load ptr, ptr %l191, !tbaa !29
  %t412 = load i64, ptr %t411, !range !{i64 0, i64 30}
  %t414 = icmp eq i64 %t412, 18
  store i1 %t414, ptr %l192, !tbaa !21
  br label %bb110
bb110:
  %t415 = load i1, ptr %l192, !tbaa !21
  br i1 %t415, label %bb111, label %bb112
bb111:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t418 = getelementptr { i64, [4 x i64] }, ptr %t416, i32 0, i32 1
  %t419 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t418, i32 0, i32 1
  %t420 = load { i64, ptr }, ptr %t419
  store { i64, ptr } %t420, ptr %l14, !tbaa !27
  br label %bb125
bb112:
  %t422 = load ptr, ptr %l0, !tbaa !29
  store ptr %t422, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t423 = load ptr, ptr %l197, !tbaa !29
  %t424 = icmp ne ptr %t423, null
  br i1 %t424, label %bb113, label %bb114
bb113:
  %t426 = load ptr, ptr %l197, !tbaa !29
  %t427 = load i64, ptr %t426, !range !{i64 0, i64 30}
  %t429 = icmp eq i64 %t427, 29
  store i1 %t429, ptr %l198, !tbaa !21
  br label %bb114
bb114:
  %t430 = load i1, ptr %l198, !tbaa !21
  br i1 %t430, label %bb115, label %bb116
bb115:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = getelementptr { i64, [4 x i64] }, ptr %t431, i32 0, i32 1
  %t434 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t433, i32 0, i32 1
  %t435 = load { i64, ptr }, ptr %t434
  store { i64, ptr } %t435, ptr %l14, !tbaa !27
  br label %bb125
bb116:
  %t437 = load ptr, ptr %l0, !tbaa !29
  store ptr %t437, ptr %l203, !tbaa !29
  store i1 false, ptr %l204, !tbaa !21
  %t438 = load ptr, ptr %l203, !tbaa !29
  %t439 = icmp ne ptr %t438, null
  br i1 %t439, label %bb117, label %bb118
bb117:
  %t441 = load ptr, ptr %l203, !tbaa !29
  %t442 = load i64, ptr %t441, !range !{i64 0, i64 30}
  %t444 = icmp eq i64 %t442, 20
  store i1 %t444, ptr %l204, !tbaa !21
  br label %bb118
bb118:
  %t445 = load i1, ptr %l204, !tbaa !21
  br i1 %t445, label %bb119, label %bb120
bb119:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr { i64, [4 x i64] }, ptr %t446, i32 0, i32 1
  %t449 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t448, i32 0, i32 1
  %t450 = load { i64, ptr }, ptr %t449
  store { i64, ptr } %t450, ptr %l14, !tbaa !27
  br label %bb125
bb120:
  %t452 = load ptr, ptr %l0, !tbaa !29
  store ptr %t452, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t453 = load ptr, ptr %l209, !tbaa !29
  %t454 = icmp ne ptr %t453, null
  br i1 %t454, label %bb121, label %bb122
bb121:
  %t456 = load ptr, ptr %l209, !tbaa !29
  %t457 = load i64, ptr %t456, !range !{i64 0, i64 30}
  %t459 = icmp eq i64 %t457, 24
  store i1 %t459, ptr %l210, !tbaa !21
  br label %bb122
bb122:
  %t460 = load i1, ptr %l210, !tbaa !21
  br i1 %t460, label %bb123, label %bb124
bb123:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr { i64, [4 x i64] }, ptr %t461, i32 0, i32 1
  %t464 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t463, i32 0, i32 1
  %t465 = load { i64, ptr }, ptr %t464
  store { i64, ptr } %t465, ptr %l14, !tbaa !27
  br label %bb125
bb124:
  br label %bb127
bb125:
  %t467 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t469 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %t467)
  store %"compiler/source:Span" %t469, ptr %l216
  br label %bb126
bb126:
  %t470 = load %"compiler/source:Span", ptr %l216
  store %"compiler/source:Span" %t470, ptr %l22
  br label %bb159
bb127:
  %t471 = load ptr, ptr %l0, !tbaa !29
  store ptr %t471, ptr %l217, !tbaa !29
  store i1 false, ptr %l218, !tbaa !21
  %t472 = load ptr, ptr %l217, !tbaa !29
  %t473 = icmp ne ptr %t472, null
  br i1 %t473, label %bb128, label %bb129
bb128:
  %t475 = load ptr, ptr %l217, !tbaa !29
  %t476 = load i64, ptr %t475, !range !{i64 0, i64 30}
  %t478 = icmp eq i64 %t476, 21
  store i1 %t478, ptr %l218, !tbaa !21
  br label %bb129
bb129:
  %t479 = load i1, ptr %l218, !tbaa !21
  br i1 %t479, label %bb130, label %bb131
bb130:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t482 = getelementptr { i64, [4 x i64] }, ptr %t480, i32 0, i32 1
  %t483 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t482, i32 0, i32 1
  %t484 = load ptr, ptr %t483
  store ptr %t484, ptr %l15, !tbaa !29
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = getelementptr { i64, [4 x i64] }, ptr %t486, i32 0, i32 1
  %t489 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t488, i32 0, i32 2
  %t490 = load { i64, ptr }, ptr %t489
  store { i64, ptr } %t490, ptr %l16, !tbaa !27
  br label %bb132
bb131:
  br label %bb136
bb132:
  %t492 = load ptr, ptr %l15, !tbaa !29
  %t495 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t492)
  store %"compiler/source:Span" %t495, ptr %l227
  br label %bb133
bb133:
  %t496 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t498 = call %"compiler/source:Span" @compiler_2fast_2eyieldInCatches(ptr %v0, { i64, ptr } %t496)
  store %"compiler/source:Span" %t498, ptr %l229
  br label %bb134
bb134:
  %t499 = load %"compiler/source:Span", ptr %l227
  %t500 = load %"compiler/source:Span", ptr %l229
  %t501 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t499, %"compiler/source:Span" %t500)
  store %"compiler/source:Span" %t501, ptr %l230
  br label %bb135
bb135:
  %t502 = load %"compiler/source:Span", ptr %l230
  store %"compiler/source:Span" %t502, ptr %l22
  br label %bb159
bb136:
  %t503 = load ptr, ptr %l0, !tbaa !29
  store ptr %t503, ptr %l231, !tbaa !29
  store i1 false, ptr %l232, !tbaa !21
  %t504 = load ptr, ptr %l231, !tbaa !29
  %t505 = icmp ne ptr %t504, null
  br i1 %t505, label %bb137, label %bb138
bb137:
  %t507 = load ptr, ptr %l231, !tbaa !29
  %t508 = load i64, ptr %t507, !range !{i64 0, i64 30}
  %t510 = icmp eq i64 %t508, 23
  store i1 %t510, ptr %l232, !tbaa !21
  br label %bb138
bb138:
  %t511 = load i1, ptr %l232, !tbaa !21
  br i1 %t511, label %bb139, label %bb140
bb139:
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t514 = getelementptr { i64, [4 x i64] }, ptr %t512, i32 0, i32 1
  %t515 = getelementptr { %"compiler/source:Span", ptr }, ptr %t514, i32 0, i32 1
  %t516 = load ptr, ptr %t515
  store ptr %t516, ptr %l17, !tbaa !29
  br label %bb141
bb140:
  br label %bb143
bb141:
  %t518 = load ptr, ptr %l17, !tbaa !29
  %t520 = call %"compiler/source:Span" @compiler_2fast_2eyieldInMatch(ptr %v0, ptr %t518)
  store %"compiler/source:Span" %t520, ptr %l238
  br label %bb142
bb142:
  %t521 = load %"compiler/source:Span", ptr %l238
  store %"compiler/source:Span" %t521, ptr %l22
  br label %bb159
bb143:
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l239, !tbaa !29
  store i1 false, ptr %l240, !tbaa !21
  %t523 = load ptr, ptr %l239, !tbaa !29
  %t524 = icmp ne ptr %t523, null
  br i1 %t524, label %bb144, label %bb145
bb144:
  %t526 = load ptr, ptr %l239, !tbaa !29
  %t527 = load i64, ptr %t526, !range !{i64 0, i64 30}
  %t529 = icmp eq i64 %t527, 19
  store i1 %t529, ptr %l240, !tbaa !21
  br label %bb145
bb145:
  %t530 = load i1, ptr %l240, !tbaa !21
  br i1 %t530, label %bb146, label %bb147
bb146:
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t533 = getelementptr { i64, [4 x i64] }, ptr %t531, i32 0, i32 1
  %t534 = getelementptr { %"compiler/source:Span", ptr }, ptr %t533, i32 0, i32 1
  %t535 = load ptr, ptr %t534
  store ptr %t535, ptr %l18, !tbaa !29
  br label %bb148
bb147:
  br label %bb154
bb148:
  %t537 = load ptr, ptr %l18, !tbaa !29
  %t539 = getelementptr %"compiler/ast:Compr", ptr %t537, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !29
  %t543 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t540)
  store %"compiler/source:Span" %t543, ptr %l248
  br label %bb149
bb149:
  %t544 = load ptr, ptr %l18, !tbaa !29
  %t546 = getelementptr %"compiler/ast:Compr", ptr %t544, i32 0, i32 4
  %t547 = load ptr, ptr %t546, !tbaa !29
  %t550 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t547)
  store %"compiler/source:Span" %t550, ptr %l252
  br label %bb150
bb150:
  %t551 = load %"compiler/source:Span", ptr %l248
  %t552 = load %"compiler/source:Span", ptr %l252
  %t553 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t551, %"compiler/source:Span" %t552)
  store %"compiler/source:Span" %t553, ptr %l253
  br label %bb151
bb151:
  %t554 = load ptr, ptr %l18, !tbaa !29
  %t556 = getelementptr %"compiler/ast:Compr", ptr %t554, i32 0, i32 5
  %t557 = load ptr, ptr %t556, !tbaa !29
  %t559 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t557)
  store %"compiler/source:Span" %t559, ptr %l256
  br label %bb152
bb152:
  %t560 = load %"compiler/source:Span", ptr %l253
  %t561 = load %"compiler/source:Span", ptr %l256
  %t562 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t560, %"compiler/source:Span" %t561)
  store %"compiler/source:Span" %t562, ptr %l257
  br label %bb153
bb153:
  %t563 = load %"compiler/source:Span", ptr %l257
  store %"compiler/source:Span" %t563, ptr %l22
  br label %bb159
bb154:
  br i1 true, label %bb155, label %bb156
bb155:
  br label %bb157
bb156:
  br label %bb158
bb157:
  %t564 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t564, ptr %l22
  br label %bb159
bb158:
  call void @__olang_check_failed(ptr @olang_loc_e10f6dd6d859818a_4a180ff1312c7ade)
  unreachable
bb159:
  %t566 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t566, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldInExprs(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  %t34 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t29)
  store %"compiler/source:Span" %t34, ptr %l22
  br label %bb8
bb8:
  %t35 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t35, ptr %l5
  %t36 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t39 = icmp sge i32 %t37, 0
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t41, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l2, !tbaa !24
  br label %bb4
bb13:
  %t47 = load %"compiler/source:Span", ptr @G_2ecompiler_2fast_2eNoYield
  store %"compiler/source:Span" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldInIf(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l7 = alloca i1
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:If", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t4)
  store %"compiler/source:Span" %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t7, ptr %l1
  %t8 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = icmp slt i32 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/ast:If", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  %t20 = xor i1 %t18, true
  store i1 %t20, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l7, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/ast:If", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb7, label %bb8
bb6:
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f108e027b0d3370b_50be6dc1114317df)
  unreachable
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/ast:If", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t36 = getelementptr %"compiler/ast:Branch", ptr %t33, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = call %"compiler/source:Span" @compiler_2fast_2eFirstYield(ptr %v0, { i64, ptr } %t37)
  store %"compiler/source:Span" %t39, ptr %l19
  br label %bb10
bb10:
  %t40 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t40, ptr %l1
  br label %bb11
bb11:
  %t41 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t41, ptr %l20
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/ast:If", ptr %t42, i32 0, i32 2
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = call %"compiler/source:Span" @compiler_2fast_2eyieldIn(ptr %v0, ptr %t45)
  store %"compiler/source:Span" %t47, ptr %l23
  br label %bb12
bb12:
  %t48 = load %"compiler/source:Span", ptr %l20
  %t49 = load %"compiler/source:Span", ptr %l23
  %t50 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t48, %"compiler/source:Span" %t49)
  store %"compiler/source:Span" %t50, ptr %l24
  br label %bb13
bb13:
  %t51 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldInMatch(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l18 = alloca { i64, ptr }
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Match", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t7 = call %"compiler/source:Span" @compiler_2fast_2eyieldInExpr(ptr %v0, ptr %t4)
  store %"compiler/source:Span" %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t8, ptr %l1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Match", ptr %t9, i32 0, i32 3
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l18, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  %t34 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t34, ptr %l21
  %t37 = call %"compiler/source:Span" @compiler_2fast_2eyieldInCase(ptr %v0, ptr %t32)
  store %"compiler/source:Span" %t37, ptr %l23
  br label %bb6
bb6:
  %t38 = load %"compiler/source:Span", ptr %l21
  %t39 = load %"compiler/source:Span", ptr %l23
  %t40 = call %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %t38, %"compiler/source:Span" %t39)
  store %"compiler/source:Span" %t40, ptr %l24
  br label %bb7
bb7:
  %t41 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t41, ptr %l1
  br label %bb8
bb8:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l3, !tbaa !24
  br label %bb2
bb9:
  %t46 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/source:Span" @compiler_2fast_2eyieldOr(%"compiler/source:Span" %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  store %"compiler/source:Span" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l0, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = icmp sge i32 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load %"compiler/source:Span", ptr %l0
  store %"compiler/source:Span" %t6, ptr %l4
  br label %bb3
bb2:
  store %"compiler/source:Span" %a1, ptr %l4
  br label %bb3
bb3:
  %t10 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/ast:Attr" @compiler_2fast_3aAttr_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, ptr %a1, i32 %a2) #0 {
entry:
  %rv = alloca %"compiler/ast:Attr"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/ast:Attr" undef, %"compiler/source:Span" %a0, 0
  %t10 = insertvalue %"compiler/ast:Attr" %t8, ptr %a1, 1
  %t12 = insertvalue %"compiler/ast:Attr" %t10, i32 %a2, 2
  store %"compiler/ast:Attr" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Attr", ptr %rv
  ret %"compiler/ast:Attr" %rr
}

define dso_local %"compiler/ast:Branch" @compiler_2fast_3aBranch_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/ast:Branch"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/ast:Branch" undef, %"compiler/source:Span" %a0, 0
  %t10 = insertvalue %"compiler/ast:Branch" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"compiler/ast:Branch" %t10, i64 %a2, 2
  store %"compiler/ast:Branch" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Branch", ptr %rv
  ret %"compiler/ast:Branch" %rr
}

define dso_local %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, { i64, ptr } %a5) #0 {
entry:
  %rv = alloca %"compiler/ast:CaseDecl"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/ast:CaseDecl" undef, %"compiler/source:Span" %a0, 0
  %t16 = insertvalue %"compiler/ast:CaseDecl" %t14, i32 %a1, 1
  %t18 = insertvalue %"compiler/ast:CaseDecl" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/ast:CaseDecl" %t18, i1 %a3, 3
  %t22 = insertvalue %"compiler/ast:CaseDecl" %t20, ptr %a4, 4
  %t24 = insertvalue %"compiler/ast:CaseDecl" %t22, { i64, ptr } %a5, 5
  store %"compiler/ast:CaseDecl" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:CaseDecl", ptr %rv
  ret %"compiler/ast:CaseDecl" %rr
}

define dso_local %"compiler/ast:Case" @compiler_2fast_3aCase_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, %"compiler/source:Span" %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, { i64, ptr } %a4, ptr %a5) #0 {
entry:
  %rv = alloca %"compiler/ast:Case"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/ast:Case" undef, %"compiler/source:Span" %a0, 0
  %t16 = insertvalue %"compiler/ast:Case" %t14, { i64, ptr } %a1, 1
  %t18 = insertvalue %"compiler/ast:Case" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/ast:Case" %t18, ptr %a3, 3
  %t22 = insertvalue %"compiler/ast:Case" %t20, { i64, ptr } %a4, 4
  %t24 = insertvalue %"compiler/ast:Case" %t22, ptr %a5, 5
  store %"compiler/ast:Case" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Case", ptr %rv
  ret %"compiler/ast:Case" %rr
}

define dso_local %"compiler/ast:Catch" @compiler_2fast_3aCatch_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4, i32 %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %rv = alloca %"compiler/ast:Catch"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/ast:Catch" undef, %"compiler/source:Span" %a0, 0
  %t18 = insertvalue %"compiler/ast:Catch" %t16, { i64, ptr } %a1, 1
  %t20 = insertvalue %"compiler/ast:Catch" %t18, { i64, ptr } %a2, 2
  %t22 = insertvalue %"compiler/ast:Catch" %t20, { i64, ptr } %a3, 3
  %t24 = insertvalue %"compiler/ast:Catch" %t22, i1 %a4, 4
  %t26 = insertvalue %"compiler/ast:Catch" %t24, i32 %a5, 5
  %t28 = insertvalue %"compiler/ast:Catch" %t26, %"compiler/source:Span" %a6, 6
  store %"compiler/ast:Catch" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Catch", ptr %rv
  ret %"compiler/ast:Catch" %rr
}

define dso_local %"compiler/ast:Chain" @compiler_2fast_3aChain_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/ast:Chain"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/ast:Chain" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/ast:Chain" %t6, { i64, ptr } %a1, 1
  store %"compiler/ast:Chain" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Chain", ptr %rv
  ret %"compiler/ast:Chain" %rr
}

define dso_local %"compiler/ast:Compr" @compiler_2fast_3aCompr_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5, i1 %a6, i64 %a7) #0 {
entry:
  %rv = alloca %"compiler/ast:Compr"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/ast:Compr" undef, ptr %a0, 0
  %t20 = insertvalue %"compiler/ast:Compr" %t18, ptr %a1, 1
  %t22 = insertvalue %"compiler/ast:Compr" %t20, i32 %a2, 2
  %t24 = insertvalue %"compiler/ast:Compr" %t22, i32 %a3, 3
  %t26 = insertvalue %"compiler/ast:Compr" %t24, ptr %a4, 4
  %t28 = insertvalue %"compiler/ast:Compr" %t26, ptr %a5, 5
  %t30 = insertvalue %"compiler/ast:Compr" %t28, i1 %a6, 6
  %t32 = insertvalue %"compiler/ast:Compr" %t30, i64 %a7, 7
  store %"compiler/ast:Compr" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Compr", ptr %rv
  ret %"compiler/ast:Compr" %rr
}

define dso_local %"compiler/ast:ContractBlock" @compiler_2fast_3aContractBlock_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/ast:ContractBlock"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/ast:ContractBlock" undef, %"compiler/source:Span" %a0, 0
  %t8 = insertvalue %"compiler/ast:ContractBlock" %t6, { i64, ptr } %a1, 1
  store %"compiler/ast:ContractBlock" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:ContractBlock", ptr %rv
  ret %"compiler/ast:ContractBlock" %rr
}

define dso_local %"compiler/ast:For3" @compiler_2fast_3aFor3_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/ast:For3"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/ast:For3" undef, ptr %a0, 0
  %t12 = insertvalue %"compiler/ast:For3" %t10, ptr %a1, 1
  %t14 = insertvalue %"compiler/ast:For3" %t12, ptr %a2, 2
  %t16 = insertvalue %"compiler/ast:For3" %t14, { i64, ptr } %a3, 3
  store %"compiler/ast:For3" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:For3", ptr %rv
  ret %"compiler/ast:For3" %rr
}

define dso_local %"compiler/ast:ForIn" @compiler_2fast_3aForIn_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, i32 %a1, ptr %a2, i1 %a3, { i64, ptr } %a4, { i64, ptr } %a5, i1 %a6) #0 {
entry:
  %rv = alloca %"compiler/ast:ForIn"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/ast:ForIn" undef, i32 %a0, 0
  %t18 = insertvalue %"compiler/ast:ForIn" %t16, i32 %a1, 1
  %t20 = insertvalue %"compiler/ast:ForIn" %t18, ptr %a2, 2
  %t22 = insertvalue %"compiler/ast:ForIn" %t20, i1 %a3, 3
  %t24 = insertvalue %"compiler/ast:ForIn" %t22, { i64, ptr } %a4, 4
  %t26 = insertvalue %"compiler/ast:ForIn" %t24, { i64, ptr } %a5, 5
  %t28 = insertvalue %"compiler/ast:ForIn" %t26, i1 %a6, 6
  store %"compiler/ast:ForIn" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:ForIn", ptr %rv
  ret %"compiler/ast:ForIn" %rr
}

define dso_local %"compiler/ast:Func" @compiler_2fast_3aFunc_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, %"compiler/source:Span" %a0, ptr %a1, i32 %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5, i1 %a6, i1 %a7, { i64, ptr } %a8, ptr %a9, i32 %a10) #0 {
entry:
  %rv = alloca %"compiler/ast:Func"
  br label %start
start:
  br label %bb0
bb0:
  %t24 = insertvalue %"compiler/ast:Func" undef, %"compiler/source:Span" %a0, 0
  %t26 = insertvalue %"compiler/ast:Func" %t24, ptr %a1, 1
  %t28 = insertvalue %"compiler/ast:Func" %t26, i32 %a2, 2
  %t30 = insertvalue %"compiler/ast:Func" %t28, ptr %a3, 3
  %t32 = insertvalue %"compiler/ast:Func" %t30, { i64, ptr } %a4, 4
  %t34 = insertvalue %"compiler/ast:Func" %t32, { i64, ptr } %a5, 5
  %t36 = insertvalue %"compiler/ast:Func" %t34, i1 %a6, 6
  %t38 = insertvalue %"compiler/ast:Func" %t36, i1 %a7, 7
  %t40 = insertvalue %"compiler/ast:Func" %t38, { i64, ptr } %a8, 8
  %t42 = insertvalue %"compiler/ast:Func" %t40, ptr %a9, 9
  %t44 = insertvalue %"compiler/ast:Func" %t42, i32 %a10, 10
  store %"compiler/ast:Func" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Func", ptr %rv
  ret %"compiler/ast:Func" %rr
}

define dso_local %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %rv = alloca %"compiler/ast:If"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/ast:If" undef, ptr %a0, 0
  %t10 = insertvalue %"compiler/ast:If" %t8, ptr %a1, 1
  %t12 = insertvalue %"compiler/ast:If" %t10, ptr %a2, 2
  store %"compiler/ast:If" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:If", ptr %rv
  ret %"compiler/ast:If" %rr
}

define dso_local %"compiler/ast:JoinS" @compiler_2fast_3aJoinS_2ector(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/ast:JoinS"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/ast:JoinS" undef, i1 %a0, 0
  %t10 = insertvalue %"compiler/ast:JoinS" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"compiler/ast:JoinS" %t10, { i64, ptr } %a2, 2
  store %"compiler/ast:JoinS" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:JoinS", ptr %rv
  ret %"compiler/ast:JoinS" %rr
}

define dso_local %"compiler/ast:Match" @compiler_2fast_3aMatch_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, ptr %a1, i1 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/ast:Match"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/ast:Match" undef, %"compiler/source:Span" %a0, 0
  %t12 = insertvalue %"compiler/ast:Match" %t10, ptr %a1, 1
  %t14 = insertvalue %"compiler/ast:Match" %t12, i1 %a2, 2
  %t16 = insertvalue %"compiler/ast:Match" %t14, { i64, ptr } %a3, 3
  store %"compiler/ast:Match" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Match", ptr %rv
  ret %"compiler/ast:Match" %rr
}

define dso_local %"compiler/ast:Multi" @compiler_2fast_3aMulti_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i1 %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/ast:Multi"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/ast:Multi" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/ast:Multi" %t8, i1 %a1, 1
  %t12 = insertvalue %"compiler/ast:Multi" %t10, { i64, ptr } %a2, 2
  store %"compiler/ast:Multi" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Multi", ptr %rv
  ret %"compiler/ast:Multi" %rr
}

define dso_local %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %rv = alloca %"compiler/ast:Param"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/ast:Param" undef, %"compiler/source:Span" %a0, 0
  %t14 = insertvalue %"compiler/ast:Param" %t12, i32 %a1, 1
  %t16 = insertvalue %"compiler/ast:Param" %t14, ptr %a2, 2
  %t18 = insertvalue %"compiler/ast:Param" %t16, ptr %a3, 3
  %t20 = insertvalue %"compiler/ast:Param" %t18, { i64, ptr } %a4, 4
  store %"compiler/ast:Param" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Param", ptr %rv
  ret %"compiler/ast:Param" %rr
}

define dso_local %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/ast:Path"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/ast:Path" undef, %"compiler/source:Span" %a0, 0
  %t8 = insertvalue %"compiler/ast:Path" %t6, { i64, ptr } %a1, 1
  store %"compiler/ast:Path" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Path", ptr %rv
  ret %"compiler/ast:Path" %rr
}

define dso_local %"compiler/ast:Promise" @compiler_2fast_3aPromise_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/ast:Promise"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/ast:Promise" undef, %"compiler/source:Span" %a0, 0
  %t10 = insertvalue %"compiler/ast:Promise" %t8, i32 %a1, 1
  %t12 = insertvalue %"compiler/ast:Promise" %t10, { i64, ptr } %a2, 2
  store %"compiler/ast:Promise" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Promise", ptr %rv
  ret %"compiler/ast:Promise" %rr
}

define dso_local %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, i1 %a4, ptr %a5, i1 %a6, i1 %a7, { i64, ptr } %a8) #0 {
entry:
  %rv = alloca %"compiler/ast:Sig"
  br label %start
start:
  br label %bb0
bb0:
  %t20 = insertvalue %"compiler/ast:Sig" undef, { i64, ptr } %a0, 0
  %t22 = insertvalue %"compiler/ast:Sig" %t20, { i64, ptr } %a1, 1
  %t24 = insertvalue %"compiler/ast:Sig" %t22, i1 %a2, 2
  %t26 = insertvalue %"compiler/ast:Sig" %t24, { i64, ptr } %a3, 3
  %t28 = insertvalue %"compiler/ast:Sig" %t26, i1 %a4, 4
  %t30 = insertvalue %"compiler/ast:Sig" %t28, ptr %a5, 5
  %t32 = insertvalue %"compiler/ast:Sig" %t30, i1 %a6, 6
  %t34 = insertvalue %"compiler/ast:Sig" %t32, i1 %a7, 7
  %t36 = insertvalue %"compiler/ast:Sig" %t34, { i64, ptr } %a8, 8
  store %"compiler/ast:Sig" %t36, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:Sig", ptr %rv
  ret %"compiler/ast:Sig" %rr
}

define dso_local %"compiler/ast:StructBody" @compiler_2fast_3aStructBody_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %rv = alloca %"compiler/ast:StructBody"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/ast:StructBody" undef, { i64, ptr } %a0, 0
  %t16 = insertvalue %"compiler/ast:StructBody" %t14, ptr %a1, 1
  %t18 = insertvalue %"compiler/ast:StructBody" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/ast:StructBody" %t18, %"compiler/source:Span" %a3, 3
  %t22 = insertvalue %"compiler/ast:StructBody" %t20, { i64, ptr } %a4, 4
  %t24 = insertvalue %"compiler/ast:StructBody" %t22, { i64, ptr } %a5, 5
  store %"compiler/ast:StructBody" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:StructBody", ptr %rv
  ret %"compiler/ast:StructBody" %rr
}

define dso_local %"compiler/ast:TopBranch" @compiler_2fast_3aTopBranch_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/ast:TopBranch"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/ast:TopBranch" undef, %"compiler/source:Span" %a0, 0
  %t10 = insertvalue %"compiler/ast:TopBranch" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"compiler/ast:TopBranch" %t10, i64 %a2, 2
  store %"compiler/ast:TopBranch" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:TopBranch", ptr %rv
  ret %"compiler/ast:TopBranch" %rr
}

define dso_local %"compiler/ast:TopIf" @compiler_2fast_3aTopIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %rv = alloca %"compiler/ast:TopIf"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/ast:TopIf" undef, ptr %a0, 0
  %t12 = insertvalue %"compiler/ast:TopIf" %t10, ptr %a1, 1
  %t14 = insertvalue %"compiler/ast:TopIf" %t12, ptr %a2, 2
  %t16 = insertvalue %"compiler/ast:TopIf" %t14, ptr %a3, 3
  store %"compiler/ast:TopIf" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:TopIf", ptr %rv
  ret %"compiler/ast:TopIf" %rr
}

define dso_local %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, i1 %a6) #0 {
entry:
  %rv = alloca %"compiler/ast:TypeDecl"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/ast:TypeDecl" undef, i32 %a0, 0
  %t18 = insertvalue %"compiler/ast:TypeDecl" %t16, { i64, ptr } %a1, 1
  %t20 = insertvalue %"compiler/ast:TypeDecl" %t18, i1 %a2, 2
  %t22 = insertvalue %"compiler/ast:TypeDecl" %t20, ptr %a3, 3
  %t24 = insertvalue %"compiler/ast:TypeDecl" %t22, { i64, ptr } %a4, 4
  %t26 = insertvalue %"compiler/ast:TypeDecl" %t24, i32 %a5, 5
  %t28 = insertvalue %"compiler/ast:TypeDecl" %t26, i1 %a6, 6
  store %"compiler/ast:TypeDecl" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:TypeDecl", ptr %rv
  ret %"compiler/ast:TypeDecl" %rr
}

define dso_local %"compiler/ast:TypeParam" @compiler_2fast_3aTypeParam_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/ast:TypeParam"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/ast:TypeParam" undef, %"compiler/source:Span" %a0, 0
  %t14 = insertvalue %"compiler/ast:TypeParam" %t12, i32 %a1, 1
  %t16 = insertvalue %"compiler/ast:TypeParam" %t14, ptr %a2, 2
  %t18 = insertvalue %"compiler/ast:TypeParam" %t16, { i64, ptr } %a3, 3
  %t20 = insertvalue %"compiler/ast:TypeParam" %t18, i1 %a4, 4
  store %"compiler/ast:TypeParam" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:TypeParam", ptr %rv
  ret %"compiler/ast:TypeParam" %rr
}

define dso_local %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7) #0 {
entry:
  %rv = alloca %"compiler/ast:VarDecl"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/ast:VarDecl" undef, { i64, ptr } %a0, 0
  %t20 = insertvalue %"compiler/ast:VarDecl" %t18, { i64, ptr } %a1, 1
  %t22 = insertvalue %"compiler/ast:VarDecl" %t20, ptr %a2, 2
  %t24 = insertvalue %"compiler/ast:VarDecl" %t22, { i64, ptr } %a3, 3
  %t26 = insertvalue %"compiler/ast:VarDecl" %t24, i1 %a4, 4
  %t28 = insertvalue %"compiler/ast:VarDecl" %t26, i1 %a5, 5
  %t30 = insertvalue %"compiler/ast:VarDecl" %t28, { i64, ptr } %a6, 6
  %t32 = insertvalue %"compiler/ast:VarDecl" %t30, i1 %a7, 7
  store %"compiler/ast:VarDecl" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/ast:VarDecl", ptr %rv
  ret %"compiler/ast:VarDecl" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
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

@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
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
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_loc_1ac92a474c2693a6_4651bdf04fb37b22 = external constant [0 x i8]
@olang_loc_597bf4a42b3e5d8d_8cb639b8febf8589 = external constant [0 x i8]
@olang_loc_6009bf035f93ac82_ebd9d8ca8d0ba426 = external constant [0 x i8]
@olang_loc_b48972784b624f8d_c9cbb43a03c6b3c1 = external constant [0 x i8]
@olang_loc_b4544dbf389ded65_192f90fda9e58d19 = external constant [0 x i8]
@olang_loc_979b089e321e434b_1e08588775750037 = external constant [0 x i8]
@olang_loc_5f7523cb6a9ba54e_dedf50344064deda = external constant [0 x i8]
@olang_loc_8fb80eb7feade11e_f76124528cb2593a = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_7ce36479423dfd7c_a43818d62629ef8 = external constant [0 x i8]
@olang_loc_8f335f8d77efbf3d_ddda87093c4ab7c1 = external constant [0 x i8]
@olang_loc_1fa01d266e42debe_d31482a2eb1fbba2 = external constant [0 x i8]
@olang_loc_5bf7048436fb0986_d3b94b4259f072c2 = external constant [0 x i8]
@olang_loc_55eca5e8e4fb6f87_b7588236e57371eb = external constant [0 x i8]
@olang_loc_473be92b91ccaf73_d58b0634df97d05f = external constant [0 x i8]
@olang_loc_fc0b9bdae6adb34b_df0abe8d721fde07 = external constant [0 x i8]
@olang_loc_8f7e387f76106e1a_528835e8df6db77e = external constant [0 x i8]
@olang_loc_2231a09e52c8bb46_65bd70f90f09695a = external constant [0 x i8]
@olang_loc_9e527b51fecfec42_b29c948a5753fe76 = external constant [0 x i8]
@olang_loc_da4f216dca8033c3_9b13f30385b8f717 = external constant [0 x i8]
@olang_loc_dbcc3c391580e71_31a9fdc6582016ad = external constant [0 x i8]
@olang_loc_4ec53bb81943b275_46293089da537299 = external constant [0 x i8]
@olang_loc_4cf6df17c728373c_c7de779d9cdccfc8 = external constant [0 x i8]
@olang_loc_942c0abc400452d5_c59032115dfc4901 = external constant [0 x i8]
@olang_loc_6a3f9a3ca9bd243d_1a745edb7622dd59 = external constant [0 x i8]
@olang_loc_cfce0b7e4832e85f_3aa2be1abc8ef6db = external constant [0 x i8]
@olang_loc_e10f6dd6d859818a_4a180ff1312c7ade = external constant [0 x i8]
@olang_loc_f108e027b0d3370b_50be6dc1114317df = external constant [0 x i8]

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
