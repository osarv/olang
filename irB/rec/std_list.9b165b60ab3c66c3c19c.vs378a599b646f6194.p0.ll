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
@G_2estd_2flist_2efirstChunk = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2flist_2efirstChunkLog = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @std_2flist_2echarLiteral(ptr %v0, i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 10
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load i8, ptr %l0, !tbaa !22
  %t23 = icmp eq i8 %t21, 9
  br i1 %t23, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t25, ptr %l10, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l11, !tbaa !24
  %t28 = load i64, ptr %l11, !tbaa !24
  %t29 = mul i64 %t28, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l12, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = mul i64 %t37, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t34, ptr %t36, i64 %t38, i1 false)
  %t39 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t39, ptr %l10, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t40, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load i8, ptr %l0, !tbaa !22
  %t43 = icmp eq i8 %t41, 13
  br i1 %t43, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t45, ptr %l16, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l17, !tbaa !24
  %t48 = load i64, ptr %l17, !tbaa !24
  %t49 = mul i64 %t48, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t49)
  %t51 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l18, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = load i64, ptr %l17, !tbaa !24
  %t58 = mul i64 %t57, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t54, ptr %t56, i64 %t58, i1 false)
  %t59 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t59, ptr %l16, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t60, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t61 = load i8, ptr %l0, !tbaa !22
  %t63 = icmp eq i8 %t61, 0
  br i1 %t63, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t65, ptr %l22, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l23, !tbaa !24
  %t68 = load i64, ptr %l23, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l24, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l23, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t79, ptr %l22, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t80, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t81 = load i8, ptr %l0, !tbaa !22
  %t83 = icmp eq i8 %t81, 92
  br i1 %t83, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t85, ptr %l28, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  store i64 %t87, ptr %l29, !tbaa !24
  %t88 = load i64, ptr %l29, !tbaa !24
  %t89 = mul i64 %t88, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t89)
  %t91 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l30, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l29, !tbaa !24
  %t98 = mul i64 %t97, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t94, ptr %t96, i64 %t98, i1 false)
  %t99 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t99, ptr %l28, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t100, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t101 = load i8, ptr %l0, !tbaa !22
  %t103 = icmp eq i8 %t101, 39
  br i1 %t103, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t105, ptr %l34, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  store i64 %t107, ptr %l35, !tbaa !24
  %t108 = load i64, ptr %l35, !tbaa !24
  %t109 = mul i64 %t108, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t109)
  %t111 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l36, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = load i64, ptr %l35, !tbaa !24
  %t118 = mul i64 %t117, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t114, ptr %t116, i64 %t118, i1 false)
  %t119 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t119, ptr %l34, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t120, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t121 = load i8, ptr %l0, !tbaa !22
  %t122 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t125 = add i64 %t123, 1
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t128 = add i64 %t125, %t127
  %t129 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t128)
  call void @olang_textcopy(ptr %t129, ptr %t122, i64 %t123)
  %t130 = getelementptr i8, ptr %t129, i64 %t123
  store i8 %t121, ptr %t130
  %t131 = getelementptr i8, ptr %t130, i64 1
  call void @olang_textcopy(ptr %t131, ptr %t126, i64 %t127)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t129, 1
  store { i64, ptr } %t133, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2flist_2ehighBit(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sge i64 %t1, 4294967296
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = ashr i64 %t5, 32
  store i64 %t7, ptr %l0, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = add i64 %t9, 32
  store i64 %t11, ptr %l1, !tbaa !24
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = icmp sge i64 %t13, 65536
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l0, !tbaa !24
  %t19 = ashr i64 %t17, 16
  store i64 %t19, ptr %l0, !tbaa !24
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = add i64 %t21, 16
  store i64 %t23, ptr %l1, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t25 = load i64, ptr %l0, !tbaa !24
  %t27 = icmp sge i64 %t25, 256
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load i64, ptr %l0, !tbaa !24
  %t31 = ashr i64 %t29, 8
  store i64 %t31, ptr %l0, !tbaa !24
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = add i64 %t33, 8
  store i64 %t35, ptr %l1, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t37 = load i64, ptr %l0, !tbaa !24
  %t39 = icmp sge i64 %t37, 16
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load i64, ptr %l0, !tbaa !24
  %t43 = ashr i64 %t41, 4
  store i64 %t43, ptr %l0, !tbaa !24
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = add i64 %t45, 4
  store i64 %t47, ptr %l1, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l0, !tbaa !24
  %t51 = icmp sge i64 %t49, 4
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = load i64, ptr %l0, !tbaa !24
  %t55 = ashr i64 %t53, 2
  store i64 %t55, ptr %l0, !tbaa !24
  %t57 = load i64, ptr %l1, !tbaa !24
  %t59 = add i64 %t57, 2
  store i64 %t59, ptr %l1, !tbaa !24
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t61 = load i64, ptr %l0, !tbaa !24
  %t63 = icmp sge i64 %t61, 2
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t65 = load i64, ptr %l1, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l1, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t69 = load i64, ptr %l1, !tbaa !24
  store i64 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %lp9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l28 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i32
  %l34 = alloca i1
  %l41 = alloca { i64, ptr }
  %l54 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i64
  %l60 = alloca i64
  %l64 = alloca i64
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i32
  %l74 = alloca i1
  %l82 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = call { i32, { i64, ptr } } @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eRunFrom_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l32
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l31
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t12, ptr %l28, !tbaa !27
  br label %bb5
bb3:
  %t13 = load i32, ptr %l32, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  store i1 %t16, ptr %l34, !tbaa !21
  br label %bb4
bb4:
  br label %bb13
bb5:
  %t17 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t17, ptr %l5, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t30, ptr %l41, !tbaa !27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %t34, i64 %t31
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !37
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = extractvalue { i64, ptr } %t36, 0
  %t44 = add i64 %t38, %t41
  store i64 %t44, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l7, !tbaa !24
  br label %bb6
bb11:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = add i64 %t50, %t51
  store i64 %t54, ptr %l4, !tbaa !24
  br label %bb12
bb12:
  br label %bb1
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call i64 @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eLen_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l54
  br label %bb14
bb14:
  %t59 = load i64, ptr %l54, !tbaa !24
  %t60 = icmp sgt i64 %t59, 1
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = load i64, ptr %l2, !tbaa !24
  store i64 %t62, ptr %l56, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l58, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = call i64 @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eLen_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l60
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t69 = load i64, ptr %l60, !tbaa !24
  %t70 = sub i64 %t69, 1
  %t71 = load i64, ptr %l58, !tbaa !24
  %t73 = mul i64 %t71, %t70
  %t74 = load i64, ptr %l56, !tbaa !24
  %t76 = add i64 %t74, %t73
  store i64 %t76, ptr %l2, !tbaa !24
  br label %bb18
bb18:
  %t78 = load i64, ptr %l2, !tbaa !24
  store i64 %t78, ptr %l64, !tbaa !24
  %t79 = load i64, ptr %l64, !tbaa !24
  %t80 = icmp sge i64 %t79, 0
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = load i64, ptr %l64, !tbaa !24
  %t83 = mul i64 %t82, 1
  %t84 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t83)
  %t85 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t87 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t87, ptr %lp9
  %t89 = load ptr, ptr %lp9
  store { i64, ptr } %t86, ptr %t89, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_a154b35e9769f21d_ef2f4c83f49165d1)
  unreachable
bb21:
  %t92 = load ptr, ptr %l11, !tbaa !29
  %t93 = load i64, ptr %l12, !tbaa !24
  %t96 = call { i32, { i64, ptr } } @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eRunFrom_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v0, ptr %t92, i64 %t93)
  %t97 = extractvalue { i32, { i64, ptr } } %t96, 1
  %t98 = extractvalue { i32, { i64, ptr } } %t96, 0
  store i32 %t98, ptr %l72
  %t99 = icmp ne i32 %t98, 0
  br i1 %t99, label %bb23, label %ok.100, !prof !99
ok.100:
  store { i64, ptr } %t97, ptr %l71
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t101, ptr %l68, !tbaa !27
  br label %bb25
bb23:
  %t102 = load i32, ptr %l72, !tbaa !23
  %t103 = ashr i32 %t102, 16
  %t105 = icmp eq i32 %t103, 1
  store i1 %t105, ptr %l74, !tbaa !21
  br label %bb24
bb24:
  br label %bb48
bb25:
  %t106 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t106, ptr %l14, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb26
bb26:
  %t111 = load i64, ptr %l16, !tbaa !24
  %t112 = load i64, ptr %l15, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb27, label %bb28
bb27:
  br label %bb46
bb28:
  br label %bb29
bb29:
  %t119 = load i64, ptr %l13, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t121, ptr %l82, !tbaa !27
  %t122 = load i64, ptr %l16, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %t125, i64 %t122
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !37
  store { i64, ptr } %t127, ptr %l18, !tbaa !27
  %t131 = icmp sgt i64 %t119, 0
  br i1 %t131, label %bb30, label %bb31
bb30:
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t133, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  store i64 %t137, ptr %l21, !tbaa !24
  br label %bb32
bb31:
  br label %bb38
bb32:
  %t139 = load i64, ptr %l20, !tbaa !24
  %t140 = load i64, ptr %l21, !tbaa !24
  %t143 = icmp slt i64 %t139, %t140
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t147 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t147, ptr %l94, !tbaa !27
  %t148 = load i64, ptr %l20, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i8, ptr %t151, i64 %t148
  %t153 = load i8, ptr %t152, !tbaa !32
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = load ptr, ptr %lp9
  %t160 = getelementptr { i64, ptr }, ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr i8, ptr %t161, i64 %t155
  store i8 %t153, ptr %t162, !tbaa !32
  %t163 = load i64, ptr %l10, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l10, !tbaa !24
  br label %bb36
bb36:
  %t167 = load i64, ptr %l20, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l20, !tbaa !24
  br label %bb32
bb37:
  br label %bb38
bb38:
  %t171 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t171, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l25, !tbaa !24
  br label %bb39
bb39:
  %t177 = load i64, ptr %l24, !tbaa !24
  %t178 = load i64, ptr %l25, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  %t185 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t185, ptr %l110, !tbaa !27
  %t186 = load i64, ptr %l24, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i8, ptr %t189, i64 %t186
  %t191 = load i8, ptr %t190, !tbaa !32
  %t193 = load i64, ptr %l10, !tbaa !24
  %t196 = load ptr, ptr %lp9
  %t198 = getelementptr { i64, ptr }, ptr %t196, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr i8, ptr %t199, i64 %t193
  store i8 %t191, ptr %t200, !tbaa !32
  %t201 = load i64, ptr %l10, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l10, !tbaa !24
  br label %bb43
bb43:
  %t205 = load i64, ptr %l24, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l24, !tbaa !24
  br label %bb39
bb44:
  br label %bb45
bb45:
  %t209 = load i64, ptr %l16, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l16, !tbaa !24
  %t213 = load i64, ptr %l13, !tbaa !24
  %t215 = add i64 %t213, 1
  store i64 %t215, ptr %l13, !tbaa !24
  br label %bb26
bb46:
  %t217 = load i64, ptr %l12, !tbaa !24
  %t218 = load i64, ptr %l15, !tbaa !24
  %t221 = add i64 %t217, %t218
  store i64 %t221, ptr %l12, !tbaa !24
  br label %bb47
bb47:
  br label %bb21
bb48:
  %t223 = load ptr, ptr %lp9
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  store { i64, ptr } %t224, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'\5Cn'" }>, align 8
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
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'\5Ct'" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'\5Cr'" }>, align 8
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'\5C0'" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'\5C\5C'" }>, align 8
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'\5C''" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
declare void @__olang_check_failed(ptr) cold noreturn
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare { i32, { i64, ptr } } @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eRunFrom_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2flist_2estd_2flist_3aList_3cstd_2fprelude_2ftext_3aString_26_3e_2eLen_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0)
@olang_loc_a154b35e9769f21d_ef2f4c83f49165d1 = external constant [0 x i8]

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
