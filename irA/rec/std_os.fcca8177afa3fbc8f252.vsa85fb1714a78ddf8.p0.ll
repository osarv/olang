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
%"std/os:FileInfo" = type { i32, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/os:Process" = type { i32, i32, i32, i1, i1 }
%"<time.h>:timespec" = type { i64, i64 }
define dso_local { i64, ptr } @std_2fos_2eArgs(ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t13 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @__olang_arg_count()
  store i64 %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load i64, ptr %l9, !tbaa !24
  store i64 %t2, ptr %l0, !tbaa !24
  %t3 = load i64, ptr %l0, !tbaa !24
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load i64, ptr %l10, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load i64, ptr %l10, !tbaa !24
  %t8 = icmp sle i64 %t7, 576460752303423487
  br i1 %t8, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_2e089b9dcc6d7cfd_6f26744b60ea9b91)
  unreachable
bb4:
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = mul i64 %t10, 16
  %t12 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t11)
  store i64 0, ptr %t13
  br label %fill.14
fill.14:
  %t17 = load i64, ptr %t13
  %t18 = icmp slt i64 %t17, %t10
  br i1 %t18, label %fillb.15, label %filld.16
fillb.15:
  %t19 = getelementptr { i64, ptr }, ptr %t12, i64 %t17
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %t19
  %t20 = add i64 %t17, 1
  store i64 %t20, ptr %t13
  br label %fill.14
filld.16:
  %t21 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t12, 1
  store { i64, ptr } %t22, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t24 = load i64, ptr %l0, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_2e089b9dcc6d7cfd_6f26744b60ea9b91)
  unreachable
bb6:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb11
bb8:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l21, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t52 = load i64, ptr %l21, !tbaa !24
  store i64 %t52, ptr %l18, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l18, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb14:
  br label %bb15
bb15:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  store i64 %t72, ptr %l39, !tbaa !24
  %t73 = icmp sge i64 0, 0
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = mul i64 0, 1
  %t76 = insertvalue { i64, ptr } undef, i64 0, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t78 = load i64, ptr %l39, !tbaa !24
  %t80 = extractvalue { i64, ptr } %t77, 1
  %t81 = extractvalue { i64, ptr } %t77, 0
  %t82 = call i64 @__olang_arg(i64 %t78, ptr %t80, i64 0)
  store i64 %t82, ptr %l42
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_722c60a9fee6cfd0_5c8c3a8aa9ab1a84)
  unreachable
bb18:
  %t83 = load i64, ptr %l42, !tbaa !24
  %t84 = icmp sge i64 %t83, 0
  br i1 %t84, label %bb19, label %bb20
bb19:
  %t86 = load i64, ptr %l42, !tbaa !24
  %t87 = mul i64 %t86, 1
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t91, ptr %lp8
  %t93 = load ptr, ptr %lp8
  store { i64, ptr } %t90, ptr %t93, !tbaa !27
  %t94 = load i64, ptr %l7, !tbaa !24
  %t95 = load ptr, ptr %lp8
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t97 = load ptr, ptr %lp8
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t103 = extractvalue { i64, ptr } %t96, 1
  %t104 = extractvalue { i64, ptr } %t96, 0
  %t106 = call i64 @__olang_arg(i64 %t94, ptr %t103, i64 %t100)
  store i64 %t106, ptr %l49
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_722c60a9fee6cfd0_5c8c3a8aa9ab1a84)
  unreachable
bb21:
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t107, ptr %l50, !tbaa !27
  %t108 = load i64, ptr %l7, !tbaa !24
  store i64 %t108, ptr %l51, !tbaa !24
  %t109 = ptrtoint ptr %v0 to i64
  store i64 %t109, ptr %l52, !tbaa !24
  %t110 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t110, label %bb22, label %bb23
bb22:
  %t112 = call ptr @__olang_region_make(ptr %v0)
  %t113 = ptrtoint ptr %t112 to i64
  store i64 %t113, ptr %l52, !tbaa !24
  br label %bb23
bb23:
  %t114 = load ptr, ptr %lp8
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t118 = load i64, ptr %l52
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = extractvalue { i64, ptr } %t115, 0
  %t121 = extractvalue { i64, ptr } %t115, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %t119, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t127 = load i64, ptr %l51, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %t129, i64 %t127
  store { i64, ptr } %t125, ptr %t130, !tbaa !37
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t131 = load i64, ptr %l6, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l6, !tbaa !24
  br label %bb12
bb25:
  %t135 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t135, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @std_2fos_2eClose(i32 %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @close(i32 %a0)
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i32, ptr %l2, !tbaa !23
  %t5 = sext i32 %t4 to i64
  %t7 = call i32 @std_2fos_2echeck(ptr %s0, i64 %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t7, ptr %l4
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %ok.9, !prof !99
ok.9:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t10 = load i32, ptr %l4, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  call void @__olang_scope_close(ptr %s0)
  store i32 %t18, ptr %rv
  br label %ret
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @std_2fos_2eCreate(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = extractvalue { i64, ptr } %t11, 0
  %t16 = call i32 @creat(ptr %t14, i32 438)
  store i32 %t16, ptr %l5
  br label %bb1
bb1:
  %t17 = load i32, ptr %l5, !tbaa !23
  store i32 %t17, ptr %l1, !tbaa !23
  %t18 = load i32, ptr %l1, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t20, { i64, ptr } %t21)
  store i32 %t24, ptr %l9
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb3, label %ok.26, !prof !99
ok.26:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t27 = load i32, ptr %l9, !tbaa !23
  %t28 = lshr i32 %t27, 16
  %t29 = and i32 %t27, 65535
  %t30 = icmp eq i32 %t28, 1
  %t31 = select i1 %t30, i32 1, i32 0
  %t32 = icmp eq i32 %t27, 0
  %t33 = shl i32 %t31, 16
  %t34 = or i32 %t33, %t29
  %t35 = select i1 %t32, i32 0, i32 %t34
  call void @__olang_scope_close(ptr %s0)
  %t37 = insertvalue { i32, i32 } zeroinitializer, i32 %t35, 0
  store { i32, i32 } %t37, ptr %rv
  br label %ret
bb4:
  %t38 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t40 = insertvalue { i32, i32 } zeroinitializer, i32 %t38, 1
  store { i32, i32 } %t40, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v0, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l1
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t6, ptr %l0, !tbaa !27
  br label %bb3
bb2:
  %t7 = load i32, ptr %l2, !tbaa !23
  %t8 = lshr i32 %t7, 16
  %t9 = and i32 %t7, 65535
  %t10 = icmp eq i32 %t8, 1
  %t11 = select i1 %t10, i32 1, i32 0
  %t12 = icmp eq i32 %t7, 0
  %t13 = shl i32 %t11, 16
  %t14 = or i32 %t13, %t9
  %t15 = select i1 %t12, i32 0, i32 %t14
  %t17 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t15, 0
  store { i32, { i64, ptr } } %t17, ptr %rv
  br label %ret
bb3:
  %t18 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t18, 1
  store { i32, { i64, ptr } } %t19, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l10 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, [2 x i64] }
  %l18 = alloca i64
  %l20 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t16 = alloca { { i64, ptr }, ptr }, align 8
  %t55 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t15 = ptrtoint ptr %t14 to i64
  %t17 = getelementptr { { i64, ptr }, ptr }, ptr %t16, i32 0, i32 0
  store { i64, ptr } %t11, ptr %t17, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t19 = getelementptr { { i64, ptr }, ptr }, ptr %t16, i32 0, i32 1
  store ptr %s0, ptr %t19, !tbaa !28
  %t20 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_5, 0
  %t21 = insertvalue { ptr, ptr } %t20, ptr %t16, 1
  %t23 = extractvalue { ptr, ptr } %t21, 0
  %t24 = extractvalue { ptr, ptr } %t21, 1
  %t25 = call { i32, { i64, ptr } } @std_2fos_2ecopyOut(ptr %s0, ptr %v1, ptr %v1, ptr %t23, ptr %t24, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
  %t26 = extractvalue { i32, { i64, ptr } } %t25, 1
  %t27 = extractvalue { i32, { i64, ptr } } %t25, 0
  store i32 %t27, ptr %l8
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb2, label %ok.29, !prof !99
ok.29:
  store { i64, ptr } %t26, ptr %l7
  br label %bb1
bb1:
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t30, ptr %l4, !tbaa !27
  br label %bb7
bb2:
  %t31 = load i32, ptr %l8, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  store i1 %t34, ptr %l10, !tbaa !21
  %t35 = load i32, ptr %l8, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  br i1 %t38, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t40, ptr %l14, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l15, !tbaa !24
  %t44 = load i64, ptr %l15, !tbaa !24
  %t45 = mul i64 %t44, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l16, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l15, !tbaa !24
  %t54 = mul i64 %t53, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 0
  store i64 0, ptr %t56
  %t57 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t58 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t57, 0
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  store { { i64, ptr } } %t58, ptr %t59
  %t60 = load { i64, [2 x i64] }, ptr %t55
  store { i64, [2 x i64] } %t60, ptr %l17
  %t61 = call ptr @__olang_errpay_push()
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l18, !tbaa !24
  %t63 = load i64, ptr %l18
  %t64 = inttoptr i64 %t63 to ptr
  %t66 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t64, ptr %l17)
  store { i64, [2 x i64] } %t66, ptr %l20
  br label %bb6
bb6:
  %t67 = load { i64, [2 x i64] }, ptr %l20
  %t68 = load i64, ptr %l18
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call ptr @__olang_scope_alloc_a(ptr %t69, i64 24, i64 8)
  store { i64, [2 x i64] } %t67, ptr %t70
  call void @__olang_errpay_set(ptr %t70)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t73 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t73, ptr %rv
  br label %ret
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t75 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t74, 1
  store { i32, { i64, ptr } } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @std_2fos_2eExecInPlace(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, [2 x i64] }
  %l27 = alloca i64
  %l29 = alloca { i64, [2 x i64] }
  %l39 = alloca { i64, ptr }
  %l42 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i32
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, [2 x i64] }
  %l52 = alloca i64
  %l54 = alloca { i64, [2 x i64] }
  %l64 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, [2 x i64] }
  %l74 = alloca i64
  %l76 = alloca { i64, [2 x i64] }
  %l79 = alloca i64
  %l89 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l119 = alloca i32
  %l120 = alloca i32
  %l122 = alloca i32
  %l125 = alloca { i64, ptr }
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l128 = alloca { i64, [2 x i64] }
  %l129 = alloca i64
  %l131 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i32
  %t22 = alloca { i64, [2 x i64] }, align 8
  %t87 = alloca { i64, [2 x i64] }, align 8
  %t144 = alloca { i64, [2 x i64] }, align 8
  %t296 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l23, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l24, !tbaa !24
  %t11 = load i64, ptr %l24, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l25, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l24, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 0
  store i64 6, ptr %t23
  %t24 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t25 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t24, 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  store { { i64, ptr } } %t25, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t22
  store { i64, [2 x i64] } %t27, ptr %l26
  %t28 = call ptr @__olang_errpay_push()
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l27, !tbaa !24
  %t30 = load i64, ptr %l27
  %t31 = inttoptr i64 %t30 to ptr
  %t33 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t31, ptr %l26)
  store { i64, [2 x i64] } %t33, ptr %l29
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t34 = load { i64, [2 x i64] }, ptr %l29
  %t35 = load i64, ptr %l27
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = call ptr @__olang_scope_alloc_a(ptr %t36, i64 24, i64 8)
  store { i64, [2 x i64] } %t34, ptr %t37
  call void @__olang_errpay_set(ptr %t37)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 65542, ptr %rv
  br label %ret
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t40, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb6, label %bb7
bb6:
  br label %bb18
bb7:
  br label %bb8
bb8:
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t54, ptr %l39, !tbaa !27
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %t58, i64 %t55
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !37
  store { i64, ptr } %t60, ptr %l6, !tbaa !27
  store i1 true, ptr %l7, !tbaa !21
  %t62 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t64 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t62, i8 0)
  %t65 = extractvalue { i32, i64 } %t64, 1
  %t66 = extractvalue { i32, i64 } %t64, 0
  store i32 %t66, ptr %l45
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb10, label %ok.68, !prof !99
ok.68:
  store i64 %t65, ptr %l44
  br label %bb9
bb9:
  %t69 = load i64, ptr %l44, !tbaa !24
  store i64 %t69, ptr %l42, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb12
bb12:
  %t70 = load i1, ptr %l7, !tbaa !21
  br i1 %t70, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t72 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t72, ptr %l48, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l49, !tbaa !24
  %t76 = load i64, ptr %l49, !tbaa !24
  %t77 = mul i64 %t76, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t77)
  %t79 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l50, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = load i64, ptr %l49, !tbaa !24
  %t86 = mul i64 %t85, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t82, ptr %t84, i64 %t86, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [2 x i64] }, ptr %t87, i32 0, i32 0
  store i64 6, ptr %t88
  %t89 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t90 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t89, 0
  %t91 = getelementptr { i64, [2 x i64] }, ptr %t87, i32 0, i32 1
  store { { i64, ptr } } %t90, ptr %t91
  %t92 = load { i64, [2 x i64] }, ptr %t87
  store { i64, [2 x i64] } %t92, ptr %l51
  %t93 = call ptr @__olang_errpay_push()
  %t94 = ptrtoint ptr %t93 to i64
  store i64 %t94, ptr %l52, !tbaa !24
  %t95 = load i64, ptr %l52
  %t96 = inttoptr i64 %t95 to ptr
  %t98 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t96, ptr %l51)
  store { i64, [2 x i64] } %t98, ptr %l54
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t99 = load { i64, [2 x i64] }, ptr %l54
  %t100 = load i64, ptr %l52
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = call ptr @__olang_scope_alloc_a(ptr %t101, i64 24, i64 8)
  store { i64, [2 x i64] } %t99, ptr %t102
  call void @__olang_errpay_set(ptr %t102)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i32 65542, ptr %rv
  br label %ret
bb16:
  %t105 = load i64, ptr %l2, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t110 = add i64 %t108, 1
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l2, !tbaa !24
  br label %bb17
bb17:
  %t115 = load i64, ptr %l4, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l4, !tbaa !24
  br label %bb5
bb18:
  store i1 true, ptr %l8, !tbaa !21
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t121 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t119, i8 0)
  %t122 = extractvalue { i32, i64 } %t121, 1
  %t123 = extractvalue { i32, i64 } %t121, 0
  store i32 %t123, ptr %l67
  %t124 = icmp ne i32 %t123, 0
  br i1 %t124, label %bb20, label %ok.125, !prof !99
ok.125:
  store i64 %t122, ptr %l66
  br label %bb19
bb19:
  %t126 = load i64, ptr %l66, !tbaa !24
  store i64 %t126, ptr %l64, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb22
bb22:
  %t127 = load i1, ptr %l8, !tbaa !21
  br i1 %t127, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s8
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t129, ptr %l70, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l71, !tbaa !24
  %t133 = load i64, ptr %l71, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l72, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l71, !tbaa !24
  %t143 = mul i64 %t142, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %t141, i64 %t143, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [2 x i64] }, ptr %t144, i32 0, i32 0
  store i64 6, ptr %t145
  %t146 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t147 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t146, 0
  %t148 = getelementptr { i64, [2 x i64] }, ptr %t144, i32 0, i32 1
  store { { i64, ptr } } %t147, ptr %t148
  %t149 = load { i64, [2 x i64] }, ptr %t144
  store { i64, [2 x i64] } %t149, ptr %l73
  %t150 = call ptr @__olang_errpay_push()
  %t151 = ptrtoint ptr %t150 to i64
  store i64 %t151, ptr %l74, !tbaa !24
  %t152 = load i64, ptr %l74
  %t153 = inttoptr i64 %t152 to ptr
  %t155 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t153, ptr %l73)
  store { i64, [2 x i64] } %t155, ptr %l76
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t156 = load { i64, [2 x i64] }, ptr %l76
  %t157 = load i64, ptr %l74
  %t158 = inttoptr i64 %t157 to ptr
  %t159 = call ptr @__olang_scope_alloc_a(ptr %t158, i64 24, i64 8)
  store { i64, [2 x i64] } %t156, ptr %t159
  call void @__olang_errpay_set(ptr %t159)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i32 65542, ptr %rv
  br label %ret
bb26:
  %t162 = load i64, ptr %l2, !tbaa !24
  store i64 %t162, ptr %l79, !tbaa !24
  %t163 = load i64, ptr %l79, !tbaa !24
  %t164 = icmp sge i64 %t163, 0
  br i1 %t164, label %bb27, label %bb28
bb27:
  %t166 = load i64, ptr %l79, !tbaa !24
  %t167 = mul i64 %t166, 1
  %t168 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t167)
  %t169 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, ptr } %t170, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t172 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t172, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  store i64 %t176, ptr %l13, !tbaa !24
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c6732c6b36ef1233_192580cd7896553f)
  unreachable
bb29:
  %t178 = load i64, ptr %l12, !tbaa !24
  %t179 = load i64, ptr %l13, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb30, label %bb31
bb30:
  br label %bb40
bb31:
  br label %bb32
bb32:
  %t186 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t186, ptr %l89, !tbaa !27
  %t187 = load i64, ptr %l12, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr { i64, ptr }, ptr %t190, i64 %t187
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !37
  store { i64, ptr } %t192, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t196, 0
  store i64 %t198, ptr %l17, !tbaa !24
  br label %bb33
bb33:
  %t200 = load i64, ptr %l16, !tbaa !24
  %t201 = load i64, ptr %l17, !tbaa !24
  %t204 = icmp slt i64 %t200, %t201
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  %t208 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t208, ptr %l99, !tbaa !27
  %t209 = load i64, ptr %l16, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i8, ptr %t212, i64 %t209
  %t214 = load i8, ptr %t213, !tbaa !32
  %t216 = load i64, ptr %l10, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr i8, ptr %t222, i64 %t216
  store i8 %t214, ptr %t223, !tbaa !32
  %t224 = load i64, ptr %l10, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l10, !tbaa !24
  br label %bb37
bb37:
  %t228 = load i64, ptr %l16, !tbaa !24
  %t230 = add i64 %t228, 1
  store i64 %t230, ptr %l16, !tbaa !24
  br label %bb33
bb38:
  %t232 = load i64, ptr %l10, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l10, !tbaa !24
  br label %bb39
bb39:
  %t236 = load i64, ptr %l12, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l12, !tbaa !24
  br label %bb29
bb40:
  %t240 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 1
  %t243 = extractvalue { i64, ptr } %t240, 0
  %t244 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t247 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t246)
  call void @olang_textcopy(ptr %t247, ptr %t242, i64 %t243)
  %t248 = getelementptr i8, ptr %t247, i64 %t243
  call void @olang_textcopy(ptr %t248, ptr %t244, i64 %t245)
  %t249 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t247, 1
  %t252 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t257 = extractvalue { i64, ptr } %t250, 1
  %t258 = extractvalue { i64, ptr } %t250, 0
  %t260 = extractvalue { i64, ptr } %t252, 1
  %t261 = extractvalue { i64, ptr } %t252, 0
  %t263 = call i32 @__olang_exec(ptr %t257, ptr %t260, i64 %t255)
  store i32 %t263, ptr %l119
  br label %bb41
bb41:
  %t264 = call i32 @__olang_err()
  store i32 %t264, ptr %l120
  br label %bb42
bb42:
  %t265 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t266 = load i32, ptr %l120, !tbaa !23
  %t268 = call i32 @std_2fos_2eraise(ptr %v0, i32 %t266, { i64, ptr } %t265)
  store i32 %t268, ptr %l122
  %t269 = icmp ne i32 %t268, 0
  br i1 %t269, label %bb44, label %ok.270, !prof !99
ok.270:
  br label %bb43
bb43:
  br label %bb45
bb44:
  %t271 = load i32, ptr %l122, !tbaa !23
  %t272 = lshr i32 %t271, 16
  %t273 = and i32 %t271, 65535
  %t274 = icmp eq i32 %t272, 1
  %t275 = select i1 %t274, i32 1, i32 0
  %t276 = icmp eq i32 %t271, 0
  %t277 = shl i32 %t275, 16
  %t278 = or i32 %t277, %t273
  %t279 = select i1 %t276, i32 0, i32 %t278
  call void @__olang_scope_close(ptr %s0)
  store i32 %t279, ptr %rv
  br label %ret
bb45:
  %t281 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t281, ptr %l125, !tbaa !27
  %t283 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t284 = extractvalue { i64, ptr } %t283, 0
  store i64 %t284, ptr %l126, !tbaa !24
  %t285 = load i64, ptr %l126, !tbaa !24
  %t286 = mul i64 %t285, 1
  %t287 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t286)
  %t288 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  store { i64, ptr } %t289, ptr %l127, !tbaa !27
  %t290 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = load i64, ptr %l126, !tbaa !24
  %t295 = mul i64 %t294, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t291, ptr %t293, i64 %t295, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t296
  %t297 = getelementptr { i64, [2 x i64] }, ptr %t296, i32 0, i32 0
  store i64 6, ptr %t297
  %t298 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t299 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t298, 0
  %t300 = getelementptr { i64, [2 x i64] }, ptr %t296, i32 0, i32 1
  store { { i64, ptr } } %t299, ptr %t300
  %t301 = load { i64, [2 x i64] }, ptr %t296
  store { i64, [2 x i64] } %t301, ptr %l128
  %t302 = call ptr @__olang_errpay_push()
  %t303 = ptrtoint ptr %t302 to i64
  store i64 %t303, ptr %l129, !tbaa !24
  %t304 = load i64, ptr %l129
  %t305 = inttoptr i64 %t304 to ptr
  %t307 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t305, ptr %l128)
  store { i64, [2 x i64] } %t307, ptr %l131
  br label %bb46
bb46:
  %t308 = load { i64, [2 x i64] }, ptr %l131
  %t309 = load i64, ptr %l129
  %t310 = inttoptr i64 %t309 to ptr
  %t311 = call ptr @__olang_scope_alloc_a(ptr %t310, i64 24, i64 8)
  store { i64, [2 x i64] } %t308, ptr %t311
  call void @__olang_errpay_set(ptr %t311)
  call void @__olang_scope_close(ptr %s0)
  store i32 65542, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca [3 x i64]
  %l9 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue [3 x i64] undef, i64 0, 0
  %t2 = insertvalue [3 x i64] %t1, i64 0, 1
  %t3 = insertvalue [3 x i64] %t2, i64 0, 2
  store [3 x i64] %t3, ptr %l1
  %t7 = extractvalue { i64, ptr } %a0, 1
  %t8 = extractvalue { i64, ptr } %a0, 0
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t7, i64 %t8)
  %t13 = getelementptr i8, ptr %t12, i64 %t8
  call void @olang_textcopy(ptr %t13, ptr %t9, i64 %t10)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t12, 1
  %t18 = insertvalue { i64, ptr } undef, i64 3, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %l1, 1
  %t22 = extractvalue { i64, ptr } %t15, 1
  %t23 = extractvalue { i64, ptr } %t15, 0
  %t25 = extractvalue { i64, ptr } %t19, 1
  %t26 = extractvalue { i64, ptr } %t19, 0
  %t27 = call i32 @__olang_stat(ptr %t22, ptr %t25)
  store i32 %t27, ptr %l9
  br label %bb1
bb1:
  %t28 = load i32, ptr %l9, !tbaa !23
  %t29 = icmp eq i32 %t28, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fos_2eExit(i32 %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @exit(i32 %a0)
  unreachable
bb1:
  call void @__olang_check_failed(ptr @olang_loc_bf01453b0cfded25_a369431636c6fdd9)
  unreachable
ret:
  ret void
}

define dso_local { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca [3 x i64]
  %l2 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i32
  %l25 = alloca %"std/os:FileInfo"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:FileInfo" }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue [3 x i64] undef, i64 0, 0
  %t2 = insertvalue [3 x i64] %t1, i64 0, 1
  %t3 = insertvalue [3 x i64] %t2, i64 0, 2
  store [3 x i64] %t3, ptr %l1
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = extractvalue { i64, ptr } %t5, 0
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t7, i64 %t8)
  %t13 = getelementptr i8, ptr %t12, i64 %t8
  call void @olang_textcopy(ptr %t13, ptr %t9, i64 %t10)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t12, 1
  %t18 = insertvalue { i64, ptr } undef, i64 3, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %l1, 1
  %t22 = extractvalue { i64, ptr } %t15, 1
  %t23 = extractvalue { i64, ptr } %t15, 0
  %t25 = extractvalue { i64, ptr } %t19, 1
  %t26 = extractvalue { i64, ptr } %t19, 0
  %t27 = call i32 @__olang_stat(ptr %t22, ptr %t25)
  store i32 %t27, ptr %l10
  br label %bb1
bb1:
  %t28 = load i32, ptr %l10, !tbaa !23
  %t29 = sext i32 %t28 to i64
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t29, { i64, ptr } %t30)
  store i32 %t33, ptr %l13
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb3, label %ok.35, !prof !99
ok.35:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t36 = load i32, ptr %l13, !tbaa !23
  %t37 = lshr i32 %t36, 16
  %t38 = and i32 %t36, 65535
  %t39 = icmp eq i32 %t37, 1
  %t40 = select i1 %t39, i32 1, i32 0
  %t41 = icmp eq i32 %t36, 0
  %t42 = shl i32 %t40, 16
  %t43 = or i32 %t42, %t38
  %t44 = select i1 %t41, i32 0, i32 %t43
  call void @__olang_scope_close(ptr %s0)
  %t46 = insertvalue { i32, %"std/os:FileInfo" } zeroinitializer, i32 %t44, 0
  store { i32, %"std/os:FileInfo" } %t46, ptr %rv
  br label %ret
bb4:
  store i32 2, ptr %l2
  %t48 = getelementptr [3 x i64], ptr %l1, i64 0, i64 0
  %t49 = load i64, ptr %t48, !tbaa !34
  %t51 = icmp eq i64 %t49, 1
  br i1 %t51, label %bb5, label %bb6
bb5:
  store i32 0, ptr %l2
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t54 = getelementptr [3 x i64], ptr %l1, i64 0, i64 0
  %t55 = load i64, ptr %t54, !tbaa !34
  %t57 = icmp eq i64 %t55, 2
  br i1 %t57, label %bb8, label %bb9
bb8:
  store i32 1, ptr %l2
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t60 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t61 = getelementptr [3 x i64], ptr %l1, i64 0, i64 1
  %t62 = load i64, ptr %t61, !tbaa !34
  %t63 = getelementptr [3 x i64], ptr %l1, i64 0, i64 2
  %t64 = load i64, ptr %t63, !tbaa !34
  %t68 = call %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %s0, i32 %t60, i64 %t62, i64 %t64)
  store %"std/os:FileInfo" %t68, ptr %l25
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t69 = load %"std/os:FileInfo", ptr %l25
  %t70 = insertvalue { i32, %"std/os:FileInfo" } zeroinitializer, %"std/os:FileInfo" %t69, 1
  store { i32, %"std/os:FileInfo" } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:FileInfo" }, ptr %rv
  ret { i32, %"std/os:FileInfo" } %rr
}

define dso_local i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca [3 x i64]
  %l9 = alloca i32
  %l11 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = insertvalue [3 x i64] undef, i64 0, 0
  %t2 = insertvalue [3 x i64] %t1, i64 0, 1
  %t3 = insertvalue [3 x i64] %t2, i64 0, 2
  store [3 x i64] %t3, ptr %l1
  %t7 = extractvalue { i64, ptr } %a0, 1
  %t8 = extractvalue { i64, ptr } %a0, 0
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t7, i64 %t8)
  %t13 = getelementptr i8, ptr %t12, i64 %t8
  call void @olang_textcopy(ptr %t13, ptr %t9, i64 %t10)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t12, 1
  %t18 = insertvalue { i64, ptr } undef, i64 3, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %l1, 1
  %t22 = extractvalue { i64, ptr } %t15, 1
  %t23 = extractvalue { i64, ptr } %t15, 0
  %t25 = extractvalue { i64, ptr } %t19, 1
  %t26 = extractvalue { i64, ptr } %t19, 0
  %t27 = call i32 @__olang_stat(ptr %t22, ptr %t25)
  store i32 %t27, ptr %l9
  br label %bb1
bb1:
  %t28 = load i32, ptr %l9, !tbaa !23
  %t29 = icmp eq i32 %t28, 0
  br i1 %t29, label %bb2, label %bb3
bb2:
  %t31 = getelementptr [3 x i64], ptr %l1, i64 0, i64 0
  %t32 = load i64, ptr %t31, !tbaa !34
  %t34 = icmp eq i64 %t32, 2
  store i1 %t34, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load i1, ptr %l11, !tbaa !21
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @std_2fos_2eIsTerminal(i32 %a0) #0 {
entry:
  %l2 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @isatty(i32 %a0)
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i32, ptr %l2, !tbaa !23
  %t5 = icmp eq i32 %t4, 1
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @std_2fos_2eLink(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l8 = alloca i32
  %l11 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t15, i64 %t16)
  %t21 = getelementptr i8, ptr %t20, i64 %t16
  call void @olang_textcopy(ptr %t21, ptr %t17, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t26 = extractvalue { i64, ptr } %t11, 1
  %t27 = extractvalue { i64, ptr } %t11, 0
  %t29 = extractvalue { i64, ptr } %t23, 1
  %t30 = extractvalue { i64, ptr } %t23, 0
  %t31 = call i32 @link(ptr %t26, ptr %t29)
  store i32 %t31, ptr %l8
  br label %bb1
bb1:
  %t32 = load i32, ptr %l8, !tbaa !23
  %t33 = sext i32 %t32 to i64
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t33, { i64, ptr } %t34)
  store i32 %t37, ptr %l11
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb3, label %ok.39, !prof !99
ok.39:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t40 = load i32, ptr %l11, !tbaa !23
  %t41 = lshr i32 %t40, 16
  %t42 = and i32 %t40, 65535
  %t43 = icmp eq i32 %t41, 1
  %t44 = select i1 %t43, i32 1, i32 0
  %t45 = icmp eq i32 %t40, 0
  %t46 = shl i32 %t44, 16
  %t47 = or i32 %t46, %t42
  %t48 = select i1 %t45, i32 0, i32 %t47
  call void @__olang_scope_close(ptr %s0)
  store i32 %t48, ptr %rv
  br label %ret
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fos_2eMkDir(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = extractvalue { i64, ptr } %t11, 0
  %t16 = call i32 @mkdir(ptr %t14, i32 511)
  store i32 %t16, ptr %l4
  br label %bb1
bb1:
  %t17 = load i32, ptr %l4, !tbaa !23
  %t18 = sext i32 %t17 to i64
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t18, { i64, ptr } %t19)
  store i32 %t22, ptr %l7
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb3, label %ok.24, !prof !99
ok.24:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t25 = load i32, ptr %l7, !tbaa !23
  %t26 = lshr i32 %t25, 16
  %t27 = and i32 %t25, 65535
  %t28 = icmp eq i32 %t26, 1
  %t29 = select i1 %t28, i32 1, i32 0
  %t30 = icmp eq i32 %t25, 0
  %t31 = shl i32 %t29, 16
  %t32 = or i32 %t31, %t27
  %t33 = select i1 %t30, i32 0, i32 %t32
  call void @__olang_scope_close(ptr %s0)
  store i32 %t33, ptr %rv
  br label %ret
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l10 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i64
  %l42 = alloca i1
  %l43 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l57 = alloca i32
  %l59 = alloca i32
  %l64 = alloca i32
  %l67 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, [2 x i64] }
  %l74 = alloca i64
  %l76 = alloca { i64, [2 x i64] }
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i32
  %t160 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %t1)
  store i1 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i1, ptr %l10, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 1, ptr %l1, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = add i64 %t7, 1
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb10
bb7:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l20, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l20, !tbaa !24
  store i64 %t37, ptr %l17, !tbaa !24
  br label %bb10
bb10:
  %t38 = load i64, ptr %l17, !tbaa !24
  store i64 %t38, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l1, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t63 = icmp slt i64 %t57, %t60
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t65, ptr %l43, !tbaa !27
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i8, ptr %t69, i64 %t66
  %t71 = load i8, ptr %t70, !tbaa !32
  %t73 = icmp ne i8 %t71, 47
  store i1 %t73, ptr %l42, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t75 = load i1, ptr %l42, !tbaa !21
  br i1 %t75, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb19:
  br label %bb20
bb20:
  %t76 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t76, ptr %l47, !tbaa !27
  %t77 = load i64, ptr %l6, !tbaa !24
  store i64 %t77, ptr %l48, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l49, !tbaa !24
  %t80 = icmp sge i64 0, 0
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t82 = load i64, ptr %l48, !tbaa !24
  %t83 = icmp sle i64 0, %t82
  br i1 %t83, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_1b39f3aec8a2d100_9d79a3da2d056474)
  unreachable
bb23:
  %t85 = load i64, ptr %l48, !tbaa !24
  %t86 = load i64, ptr %l49, !tbaa !24
  %t87 = icmp sle i64 %t85, %t86
  br i1 %t87, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_1b39f3aec8a2d100_9d79a3da2d056474)
  unreachable
bb25:
  %t89 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = load i64, ptr %l48, !tbaa !24
  %t92 = getelementptr i8, ptr %t90, i64 0
  %t93 = sub i64 %t91, 0
  %t94 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  store { i64, ptr } %t95, ptr %l7, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = extractvalue { i64, ptr } %t97, 0
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t103 = add i64 %t100, %t102
  %t104 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t103)
  call void @olang_textcopy(ptr %t104, ptr %t99, i64 %t100)
  %t105 = getelementptr i8, ptr %t104, i64 %t100
  call void @olang_textcopy(ptr %t105, ptr %t101, i64 %t102)
  %t106 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t104, 1
  %t110 = extractvalue { i64, ptr } %t107, 1
  %t111 = extractvalue { i64, ptr } %t107, 0
  %t112 = call i32 @mkdir(ptr %t110, i32 511)
  store i32 %t112, ptr %l57
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_1b39f3aec8a2d100_9d79a3da2d056474)
  unreachable
bb27:
  %t113 = load i32, ptr %l57, !tbaa !23
  %t114 = icmp ne i32 %t113, 0
  br i1 %t114, label %bb28, label %bb29
bb28:
  %t116 = call i32 @__olang_err()
  store i32 %t116, ptr %l59
  br label %bb30
bb29:
  br label %bb42
bb30:
  %t117 = load i32, ptr %l59, !tbaa !23
  store i32 %t117, ptr %l8, !tbaa !23
  %t118 = load i32, ptr %l8, !tbaa !23
  %t120 = icmp ne i32 %t118, 2
  br i1 %t120, label %bb31, label %bb32
bb31:
  %t122 = load i32, ptr %l8, !tbaa !23
  %t123 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t126 = call i32 @std_2fos_2eraise(ptr %v0, i32 %t122, { i64, ptr } %t123)
  store i32 %t126, ptr %l64
  %t127 = icmp ne i32 %t126, 0
  br i1 %t127, label %bb34, label %ok.128, !prof !99
ok.128:
  br label %bb33
bb32:
  br label %bb36
bb33:
  br label %bb35
bb34:
  %t129 = load i32, ptr %l64, !tbaa !23
  %t130 = lshr i32 %t129, 16
  %t131 = and i32 %t129, 65535
  %t132 = icmp eq i32 %t130, 1
  %t133 = select i1 %t132, i32 1, i32 0
  %t134 = icmp eq i32 %t129, 0
  %t135 = shl i32 %t133, 16
  %t136 = or i32 %t135, %t131
  %t137 = select i1 %t134, i32 0, i32 %t136
  call void @__olang_scope_close(ptr %s3)
  store i32 %t137, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t139 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t141 = call i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %t139)
  store i1 %t141, ptr %l67
  br label %bb37
bb37:
  %t142 = load i1, ptr %l67, !tbaa !21
  %t143 = xor i1 %t142, true
  br i1 %t143, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s8
  %t145 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t145, ptr %l70, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l71, !tbaa !24
  %t149 = load i64, ptr %l71, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l72, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l71, !tbaa !24
  %t159 = mul i64 %t158, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %t157, i64 %t159, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [2 x i64] }, ptr %t160, i32 0, i32 0
  store i64 3, ptr %t161
  %t162 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t163 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t162, 0
  %t164 = getelementptr { i64, [2 x i64] }, ptr %t160, i32 0, i32 1
  store { { i64, ptr } } %t163, ptr %t164
  %t165 = load { i64, [2 x i64] }, ptr %t160
  store { i64, [2 x i64] } %t165, ptr %l73
  %t166 = call ptr @__olang_errpay_push()
  %t167 = ptrtoint ptr %t166 to i64
  store i64 %t167, ptr %l74, !tbaa !24
  %t168 = load i64, ptr %l74
  %t169 = inttoptr i64 %t168 to ptr
  %t171 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t169, ptr %l73)
  store { i64, [2 x i64] } %t171, ptr %l76
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t172 = load { i64, [2 x i64] }, ptr %l76
  %t173 = load i64, ptr %l74
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = call ptr @__olang_scope_alloc_a(ptr %t174, i64 24, i64 8)
  store { i64, [2 x i64] } %t172, ptr %t175
  call void @__olang_errpay_set(ptr %t175)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s3)
  store i32 65539, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t178 = load i64, ptr %l5, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l5, !tbaa !24
  br label %bb11
bb44:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca i64
  %l16 = alloca { i64, [2 x i64] }
  %l20 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l31 = alloca i32
  %l33 = alloca i32
  %l35 = alloca i32
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t22 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i1, ptr %l8, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l10, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l11, !tbaa !24
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t12)
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
  store { i64, [2 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 0
  store i64 6, ptr %t23
  %t24 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t25 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t24, 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  store { { i64, ptr } } %t25, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t22
  store { i64, [2 x i64] } %t27, ptr %l13
  %t28 = call ptr @__olang_errpay_push()
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l14, !tbaa !24
  %t30 = load i64, ptr %l14
  %t31 = inttoptr i64 %t30 to ptr
  %t33 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t31, ptr %l13)
  store { i64, [2 x i64] } %t33, ptr %l16
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t34 = load { i64, [2 x i64] }, ptr %l16
  %t35 = load i64, ptr %l14
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = call ptr @__olang_scope_alloc_a(ptr %t36, i64 24, i64 8)
  store { i64, [2 x i64] } %t34, ptr %t37
  call void @__olang_errpay_set(ptr %t37)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t40 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65542, 0
  store { i32, { i64, ptr } } %t40, ptr %rv
  br label %ret
bb5:
  %t43 = call { i64, ptr } @std_2fos_2etempDir(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t43, ptr %l20
  br label %bb6
bb6:
  %t44 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t44, ptr %l2, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t47, ptr %l22
  br label %bb7
bb7:
  %t48 = load i1, ptr %l22, !tbaa !21
  br i1 %t48, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb10
bb10:
  %t49 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t50, 1
  %t55 = extractvalue { i64, ptr } %t50, 0
  %t57 = extractvalue { i64, ptr } %t49, 1
  %t58 = extractvalue { i64, ptr } %t49, 0
  %t59 = add i64 %t55, %t58
  %t61 = extractvalue { i64, ptr } %t52, 1
  %t62 = extractvalue { i64, ptr } %t52, 0
  %t63 = add i64 %t59, %t62
  %t64 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t66 = add i64 %t63, %t65
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t54, i64 %t55)
  %t68 = getelementptr i8, ptr %t67, i64 %t55
  call void @olang_textcopy(ptr %t68, ptr %t57, i64 %t58)
  %t69 = getelementptr i8, ptr %t68, i64 %t58
  call void @olang_textcopy(ptr %t69, ptr %t61, i64 %t62)
  %t70 = getelementptr i8, ptr %t69, i64 %t62
  call void @olang_textcopy(ptr %t70, ptr %t64, i64 %t65)
  %t71 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t67, 1
  store { i64, ptr } %t72, ptr %l4, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t75, 1
  %t79 = extractvalue { i64, ptr } %t75, 0
  %t80 = call i32 @__olang_mkdtemp(ptr %t78)
  store i32 %t80, ptr %l31
  br label %bb11
bb11:
  %t81 = load i32, ptr %l31, !tbaa !23
  %t82 = icmp ne i32 %t81, 0
  br i1 %t82, label %bb12, label %bb13
bb12:
  %t84 = call i32 @__olang_err()
  store i32 %t84, ptr %l33
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = load i32, ptr %l33, !tbaa !23
  %t88 = call i32 @std_2fos_2eraise(ptr %s0, i32 %t86, { i64, ptr } %t85)
  store i32 %t88, ptr %l35
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb16, label %ok.90, !prof !99
ok.90:
  br label %bb15
bb15:
  br label %bb17
bb16:
  %t91 = load i32, ptr %l35, !tbaa !23
  %t92 = lshr i32 %t91, 16
  %t93 = and i32 %t91, 65535
  %t94 = icmp eq i32 %t92, 1
  %t95 = select i1 %t94, i32 1, i32 0
  %t96 = icmp eq i32 %t91, 0
  %t97 = shl i32 %t95, 16
  %t98 = or i32 %t97, %t93
  %t99 = select i1 %t96, i32 0, i32 %t98
  call void @__olang_scope_close(ptr %s0)
  %t101 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t99, 0
  store { i32, { i64, ptr } } %t101, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t102 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t106 = sub i64 %t104, 1
  store i64 %t106, ptr %l39, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  store i64 %t108, ptr %l40, !tbaa !24
  %t109 = icmp sge i64 0, 0
  br i1 %t109, label %bb19, label %bb20
bb19:
  %t111 = load i64, ptr %l39, !tbaa !24
  %t112 = icmp sle i64 0, %t111
  br i1 %t112, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_93142f54c4ba4464_592b0bc010c9eac8)
  unreachable
bb21:
  %t114 = load i64, ptr %l39, !tbaa !24
  %t115 = load i64, ptr %l40, !tbaa !24
  %t116 = icmp sle i64 %t114, %t115
  br i1 %t116, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_93142f54c4ba4464_592b0bc010c9eac8)
  unreachable
bb23:
  %t118 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = load i64, ptr %l39, !tbaa !24
  %t121 = getelementptr i8, ptr %t119, i64 0
  %t122 = sub i64 %t120, 0
  %t123 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  store { i64, ptr } %t124, ptr %l45, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l46, !tbaa !24
  %t128 = load i64, ptr %l46, !tbaa !24
  %t129 = mul i64 %t128, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t129)
  %t131 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l47, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l46, !tbaa !24
  %t138 = mul i64 %t137, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %t136, i64 %t138, i1 false)
  %t139 = load { i64, ptr }, ptr %l47, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t142 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t139, 1
  store { i32, { i64, ptr } } %t142, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_93142f54c4ba4464_592b0bc010c9eac8)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local void @std_2fos_2eOnCrash(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = extractvalue { i64, ptr } %t1, 1
  %t9 = extractvalue { i64, ptr } %t1, 0
  call void @__olang_on_crash(ptr %t8, i64 %t6)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i32 } @std_2fos_2eOpen(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = extractvalue { i64, ptr } %t11, 0
  %t16 = call i32 (ptr, i32, ...) @open(ptr %t14, i32 0)
  store i32 %t16, ptr %l5
  br label %bb1
bb1:
  %t17 = load i32, ptr %l5, !tbaa !23
  store i32 %t17, ptr %l1, !tbaa !23
  %t18 = load i32, ptr %l1, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t20, { i64, ptr } %t21)
  store i32 %t24, ptr %l9
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb3, label %ok.26, !prof !99
ok.26:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t27 = load i32, ptr %l9, !tbaa !23
  %t28 = lshr i32 %t27, 16
  %t29 = and i32 %t27, 65535
  %t30 = icmp eq i32 %t28, 1
  %t31 = select i1 %t30, i32 1, i32 0
  %t32 = icmp eq i32 %t27, 0
  %t33 = shl i32 %t31, 16
  %t34 = or i32 %t33, %t29
  %t35 = select i1 %t32, i32 0, i32 %t34
  call void @__olang_scope_close(ptr %s0)
  %t37 = insertvalue { i32, i32 } zeroinitializer, i32 %t35, 0
  store { i32, i32 } %t37, ptr %rv
  br label %ret
bb4:
  %t38 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t40 = insertvalue { i32, i32 } zeroinitializer, i32 %t38, 1
  store { i32, i32 } %t40, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3) #0 {
entry:
  %l4 = alloca %"std/os:Process"
  %l5 = alloca %"std/os:Process"
  %l10 = alloca %"std/os:Process"
  %l11 = alloca i32
  %l13 = alloca %"std/os:Output"
  %l15 = alloca %"std/os:Output"
  %l16 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:Output" }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t9 = call { i32, %"std/os:Process" } @std_2fos_2eProcess_2eStart(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
  %t10 = extractvalue { i32, %"std/os:Process" } %t9, 1
  %t11 = extractvalue { i32, %"std/os:Process" } %t9, 0
  store i32 %t11, ptr %l11
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store %"std/os:Process" %t10, ptr %l10
  br label %bb1
bb1:
  %t14 = load %"std/os:Process", ptr %l10
  store %"std/os:Process" %t14, ptr %l5
  br label %bb3
bb2:
  %t15 = load i32, ptr %l11, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t23, 0
  store { i32, %"std/os:Output" } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = load %"std/os:Process", ptr %l5
  store %"std/os:Process" %t26, ptr %l4
  %t28 = call { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eWait(ptr %s0, ptr %v3, ptr %l4)
  %t29 = extractvalue { i32, %"std/os:Output" } %t28, 1
  %t30 = extractvalue { i32, %"std/os:Output" } %t28, 0
  store i32 %t30, ptr %l16
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb5, label %ok.32, !prof !99
ok.32:
  store %"std/os:Output" %t29, ptr %l15
  br label %bb4
bb4:
  %t33 = load %"std/os:Output", ptr %l15
  store %"std/os:Output" %t33, ptr %l13
  br label %bb6
bb5:
  %t34 = load i32, ptr %l16, !tbaa !23
  %t35 = lshr i32 %t34, 16
  %t36 = and i32 %t34, 65535
  %t37 = icmp eq i32 %t35, 1
  %t38 = select i1 %t37, i32 1, i32 0
  %t39 = icmp eq i32 %t34, 0
  %t40 = shl i32 %t38, 16
  %t41 = or i32 %t40, %t36
  %t42 = select i1 %t39, i32 0, i32 %t41
  call void @__olang_scope_close(ptr %s0)
  %t44 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t42, 0
  store { i32, %"std/os:Output" } %t44, ptr %rv
  br label %ret
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load %"std/os:Output", ptr %l13
  %t46 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t45, 1
  store { i32, %"std/os:Output" } %t46, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExecUntil(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, { i64, ptr } %a4) #0 {
entry:
  %l5 = alloca %"std/os:Process"
  %l6 = alloca %"std/os:Process"
  %l11 = alloca %"std/os:Process"
  %l12 = alloca i32
  %l14 = alloca %"std/os:Output"
  %l17 = alloca %"std/os:Output"
  %l18 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:Output" }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t9 = call { i32, %"std/os:Process" } @std_2fos_2eProcess_2eStart(ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, { i64, ptr } %a4)
  %t10 = extractvalue { i32, %"std/os:Process" } %t9, 1
  %t11 = extractvalue { i32, %"std/os:Process" } %t9, 0
  store i32 %t11, ptr %l12
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store %"std/os:Process" %t10, ptr %l11
  br label %bb1
bb1:
  %t14 = load %"std/os:Process", ptr %l11
  store %"std/os:Process" %t14, ptr %l6
  br label %bb3
bb2:
  %t15 = load i32, ptr %l12, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t23, 0
  store { i32, %"std/os:Output" } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = load %"std/os:Process", ptr %l6
  store %"std/os:Process" %t26, ptr %l5
  %t30 = call { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eWaitUntil(ptr %s0, ptr %v0, ptr %v4, ptr %l5, ptr %a0)
  %t31 = extractvalue { i32, %"std/os:Output" } %t30, 1
  %t32 = extractvalue { i32, %"std/os:Output" } %t30, 0
  store i32 %t32, ptr %l18
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb5, label %ok.34, !prof !99
ok.34:
  store %"std/os:Output" %t31, ptr %l17
  br label %bb4
bb4:
  %t35 = load %"std/os:Output", ptr %l17
  store %"std/os:Output" %t35, ptr %l14
  br label %bb6
bb5:
  %t36 = load i32, ptr %l18, !tbaa !23
  %t37 = lshr i32 %t36, 16
  %t38 = and i32 %t36, 65535
  %t39 = icmp eq i32 %t37, 1
  %t40 = select i1 %t39, i32 1, i32 0
  %t41 = icmp eq i32 %t37, 2
  %t42 = select i1 %t41, i32 2, i32 %t40
  %t43 = icmp eq i32 %t36, 0
  %t44 = shl i32 %t42, 16
  %t45 = or i32 %t44, %t38
  %t46 = select i1 %t43, i32 0, i32 %t45
  call void @__olang_scope_close(ptr %s0)
  %t48 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t46, 0
  store { i32, %"std/os:Output" } %t48, ptr %rv
  br label %ret
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t49 = load %"std/os:Output", ptr %l14
  %t50 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t49, 1
  store { i32, %"std/os:Output" } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local %"std/os:Output" @std_2fos_2eOutput_2eechoed(ptr %v0, i64 %a0) #0 {
entry:
  %l1 = alloca [2 x { i64, ptr }]
  %l2 = alloca %"std/os:Output"
  %l3 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/os:Output"
  %l13 = alloca i32
  %l17 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %s7 = alloca %olang.builder
  %s7room = alloca [64 x i8], align 8
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %rv = alloca %"std/os:Output"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t10 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t11 = add i64 %t8, %t10
  %t12 = load i64, ptr %l3
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t11)
  call void @olang_textcopy(ptr %t14, ptr %t7, i64 %t8)
  %t15 = getelementptr i8, ptr %t14, i64 %t8
  %t16 = call i64 @__olang_fmt_i64(ptr %t15, i64 %a0)
  %t17 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t14, 1
  %t20 = load i64, ptr %l3
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t30 = insertvalue [2 x { i64, ptr }] %t28, { i64, ptr } %t27, 1
  store [2 x { i64, ptr }] %t30, ptr %l1
  %t33 = insertvalue { i64, ptr } undef, i64 2, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %l1, 1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t37 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t34, { i64, ptr } %t36, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) })
  %t38 = extractvalue { i32, %"std/os:Output" } %t37, 1
  %t39 = extractvalue { i32, %"std/os:Output" } %t37, 0
  store i32 %t39, ptr %l13
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb4, label %ok.41, !prof !99
ok.41:
  store %"std/os:Output" %t38, ptr %l12
  br label %bb3
bb3:
  %t42 = load %"std/os:Output", ptr %l12
  store %"std/os:Output" %t42, ptr %l2
  br label %bb19
bb4:
  %t43 = load i32, ptr %l13, !tbaa !23
  %t44 = icmp eq i32 %t43, 65536
  br i1 %t44, label %bb5, label %bb6
bb5:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t46 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t46, i64 %t47)
  %t48 = call ptr @__olang_errpay_top_get()
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t49, i64 %t50)
  %t52 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t53 = getelementptr { { i64, ptr } }, ptr %t52, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = extractvalue { i64, ptr } %t54, 0
  %t58 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t56, i64 %t57, i8 34)
  %t59 = call ptr @__olang_sb_room(ptr %s2, i64 %t58)
  %t60 = call i64 @__olang_rd_quote(ptr %t59, i64 0, ptr %t56, i64 %t57, i8 34)
  call void @__olang_sb_add(ptr %s2, i64 %t58)
  %t61 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t61, i64 %t62)
  %t63 = load ptr, ptr %s2
  %t64 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t65 = load i64, ptr %t64
  %t66 = load ptr, ptr @__olang_prog_scope
  %t67 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t65)
  call void @olang_textcopy(ptr %t67, ptr %t63, i64 %t65)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l17, !tbaa !27
  %t70 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t71 = load ptr, ptr %t70
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %sbgrew.73, label %sbdone.74
sbgrew.73:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.74
sbdone.74:
  %t75 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t76 = load ptr, ptr @__olang_prog_scope
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = extractvalue { i64, ptr } %t75, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = extractvalue { i64, ptr } %t82, 0
  %t86 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t84, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68, { i64, ptr } %t87, i1 false)
  unreachable
bb6:
  %t88 = load i32, ptr %l13, !tbaa !23
  %t89 = icmp eq i32 %t88, 65537
  br i1 %t89, label %bb7, label %bb8
bb7:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t91 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t91, i64 %t92)
  %t93 = call ptr @__olang_errpay_top_get()
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t94, i64 %t95)
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t93, i32 0, i32 1
  %t98 = getelementptr { { i64, ptr } }, ptr %t97, i32 0, i32 0
  %t99 = load { i64, ptr }, ptr %t98
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = extractvalue { i64, ptr } %t99, 0
  %t103 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t101, i64 %t102, i8 34)
  %t104 = call ptr @__olang_sb_room(ptr %s3, i64 %t103)
  %t105 = call i64 @__olang_rd_quote(ptr %t104, i64 0, ptr %t101, i64 %t102, i8 34)
  call void @__olang_sb_add(ptr %s3, i64 %t103)
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t106, i64 %t107)
  %t108 = load ptr, ptr %s3
  %t109 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t110 = load i64, ptr %t109
  %t111 = load ptr, ptr @__olang_prog_scope
  %t112 = call ptr @__olang_scope_alloc(ptr %t111, i64 %t110)
  call void @olang_textcopy(ptr %t112, ptr %t108, i64 %t110)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l22, !tbaa !27
  %t115 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t116 = load ptr, ptr %t115
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %sbgrew.118, label %sbdone.119
sbgrew.118:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.119
sbdone.119:
  %t120 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t121 = load ptr, ptr @__olang_prog_scope
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = extractvalue { i64, ptr } %t120, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %t121, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t129 = extractvalue { i64, ptr } %t127, 1
  %t130 = extractvalue { i64, ptr } %t127, 0
  %t131 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t129, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68, { i64, ptr } %t132, i1 false)
  unreachable
bb8:
  %t133 = load i32, ptr %l13, !tbaa !23
  %t134 = icmp eq i32 %t133, 65538
  br i1 %t134, label %bb9, label %bb10
bb9:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t136 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t136, i64 %t137)
  %t138 = call ptr @__olang_errpay_top_get()
  %t139 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t139, i64 %t140)
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t138, i32 0, i32 1
  %t143 = getelementptr { { i64, ptr } }, ptr %t142, i32 0, i32 0
  %t144 = load { i64, ptr }, ptr %t143
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = extractvalue { i64, ptr } %t144, 0
  %t148 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t146, i64 %t147, i8 34)
  %t149 = call ptr @__olang_sb_room(ptr %s4, i64 %t148)
  %t150 = call i64 @__olang_rd_quote(ptr %t149, i64 0, ptr %t146, i64 %t147, i8 34)
  call void @__olang_sb_add(ptr %s4, i64 %t148)
  %t151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t151, i64 %t152)
  %t153 = load ptr, ptr %s4
  %t154 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t155 = load i64, ptr %t154
  %t156 = load ptr, ptr @__olang_prog_scope
  %t157 = call ptr @__olang_scope_alloc(ptr %t156, i64 %t155)
  call void @olang_textcopy(ptr %t157, ptr %t153, i64 %t155)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l27, !tbaa !27
  %t160 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t161 = load ptr, ptr %t160
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %sbgrew.163, label %sbdone.164
sbgrew.163:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.164
sbdone.164:
  %t165 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t166 = load ptr, ptr @__olang_prog_scope
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t168 = extractvalue { i64, ptr } %t165, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %t166, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  %t174 = extractvalue { i64, ptr } %t172, 1
  %t175 = extractvalue { i64, ptr } %t172, 0
  %t176 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t174, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68, { i64, ptr } %t177, i1 false)
  unreachable
bb10:
  %t178 = load i32, ptr %l13, !tbaa !23
  %t179 = icmp eq i32 %t178, 65539
  br i1 %t179, label %bb11, label %bb12
bb11:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t181 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t181, i64 %t182)
  %t183 = call ptr @__olang_errpay_top_get()
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t184, i64 %t185)
  %t187 = getelementptr { i64, [2 x i64] }, ptr %t183, i32 0, i32 1
  %t188 = getelementptr { { i64, ptr } }, ptr %t187, i32 0, i32 0
  %t189 = load { i64, ptr }, ptr %t188
  %t191 = extractvalue { i64, ptr } %t189, 1
  %t192 = extractvalue { i64, ptr } %t189, 0
  %t193 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t191, i64 %t192, i8 34)
  %t194 = call ptr @__olang_sb_room(ptr %s5, i64 %t193)
  %t195 = call i64 @__olang_rd_quote(ptr %t194, i64 0, ptr %t191, i64 %t192, i8 34)
  call void @__olang_sb_add(ptr %s5, i64 %t193)
  %t196 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t196, i64 %t197)
  %t198 = load ptr, ptr %s5
  %t199 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t200 = load i64, ptr %t199
  %t201 = load ptr, ptr @__olang_prog_scope
  %t202 = call ptr @__olang_scope_alloc(ptr %t201, i64 %t200)
  call void @olang_textcopy(ptr %t202, ptr %t198, i64 %t200)
  %t203 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  store { i64, ptr } %t204, ptr %l32, !tbaa !27
  %t205 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t206 = load ptr, ptr %t205
  %t207 = icmp ne ptr %t206, null
  br i1 %t207, label %sbgrew.208, label %sbdone.209
sbgrew.208:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.209
sbdone.209:
  %t210 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t211 = load ptr, ptr @__olang_prog_scope
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t213 = extractvalue { i64, ptr } %t210, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %t211, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t219 = extractvalue { i64, ptr } %t217, 1
  %t220 = extractvalue { i64, ptr } %t217, 0
  %t221 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t219, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68, { i64, ptr } %t222, i1 false)
  unreachable
bb12:
  %t223 = load i32, ptr %l13, !tbaa !23
  %t224 = icmp eq i32 %t223, 65540
  br i1 %t224, label %bb13, label %bb14
bb13:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t226 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t227 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t226, i64 %t227)
  %t228 = call ptr @__olang_errpay_top_get()
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t229, i64 %t230)
  %t232 = getelementptr { i64, [2 x i64] }, ptr %t228, i32 0, i32 1
  %t233 = getelementptr { { i64, ptr } }, ptr %t232, i32 0, i32 0
  %t234 = load { i64, ptr }, ptr %t233
  %t236 = extractvalue { i64, ptr } %t234, 1
  %t237 = extractvalue { i64, ptr } %t234, 0
  %t238 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t236, i64 %t237, i8 34)
  %t239 = call ptr @__olang_sb_room(ptr %s6, i64 %t238)
  %t240 = call i64 @__olang_rd_quote(ptr %t239, i64 0, ptr %t236, i64 %t237, i8 34)
  call void @__olang_sb_add(ptr %s6, i64 %t238)
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t241, i64 %t242)
  %t243 = load ptr, ptr %s6
  %t244 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t245 = load i64, ptr %t244
  %t246 = load ptr, ptr @__olang_prog_scope
  %t247 = call ptr @__olang_scope_alloc(ptr %t246, i64 %t245)
  call void @olang_textcopy(ptr %t247, ptr %t243, i64 %t245)
  %t248 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  store { i64, ptr } %t249, ptr %l37, !tbaa !27
  %t250 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t251 = load ptr, ptr %t250
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %sbgrew.253, label %sbdone.254
sbgrew.253:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.254
sbdone.254:
  %t255 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t256 = load ptr, ptr @__olang_prog_scope
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = extractvalue { i64, ptr } %t255, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %t256, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t264 = extractvalue { i64, ptr } %t262, 1
  %t265 = extractvalue { i64, ptr } %t262, 0
  %t266 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t264, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68, { i64, ptr } %t267, i1 false)
  unreachable
bb14:
  %t268 = load i32, ptr %l13, !tbaa !23
  %t269 = icmp eq i32 %t268, 65541
  br i1 %t269, label %bb15, label %bb16
bb15:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s7
  store ptr %s7room, ptr %s7
  %t271 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s7, ptr %t271, i64 %t272)
  %t273 = call ptr @__olang_errpay_top_get()
  %t274 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s7, ptr %t274, i64 %t275)
  %t277 = getelementptr { i64, [2 x i64] }, ptr %t273, i32 0, i32 1
  %t278 = getelementptr { { i64, ptr } }, ptr %t277, i32 0, i32 0
  %t279 = load { i64, ptr }, ptr %t278
  %t281 = extractvalue { i64, ptr } %t279, 1
  %t282 = extractvalue { i64, ptr } %t279, 0
  %t283 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t281, i64 %t282, i8 34)
  %t284 = call ptr @__olang_sb_room(ptr %s7, i64 %t283)
  %t285 = call i64 @__olang_rd_quote(ptr %t284, i64 0, ptr %t281, i64 %t282, i8 34)
  call void @__olang_sb_add(ptr %s7, i64 %t283)
  %t286 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t287 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s7, ptr %t286, i64 %t287)
  %t288 = load ptr, ptr %s7
  %t289 = getelementptr %olang.builder, ptr %s7, i32 0, i32 1
  %t290 = load i64, ptr %t289
  %t291 = load ptr, ptr @__olang_prog_scope
  %t292 = call ptr @__olang_scope_alloc(ptr %t291, i64 %t290)
  call void @olang_textcopy(ptr %t292, ptr %t288, i64 %t290)
  %t293 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t292, 1
  store { i64, ptr } %t294, ptr %l42, !tbaa !27
  %t295 = getelementptr %olang.builder, ptr %s7, i32 0, i32 3
  %t296 = load ptr, ptr %t295
  %t297 = icmp ne ptr %t296, null
  br i1 %t297, label %sbgrew.298, label %sbdone.299
sbgrew.298:
  call void @__olang_sb_done(ptr %s7)
  br label %sbdone.299
sbdone.299:
  %t300 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t301 = load ptr, ptr @__olang_prog_scope
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = extractvalue { i64, ptr } %t300, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %t301, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t309 = extractvalue { i64, ptr } %t307, 1
  %t310 = extractvalue { i64, ptr } %t307, 0
  %t311 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t312 = insertvalue { i64, ptr } %t311, ptr %t309, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68, { i64, ptr } %t312, i1 false)
  unreachable
bb16:
  %t313 = load i32, ptr %l13, !tbaa !23
  %t314 = icmp eq i32 %t313, 65542
  br i1 %t314, label %bb17, label %bb18
bb17:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  %t316 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t316, i64 %t317)
  %t318 = call ptr @__olang_errpay_top_get()
  %t319 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t319, i64 %t320)
  %t322 = getelementptr { i64, [2 x i64] }, ptr %t318, i32 0, i32 1
  %t323 = getelementptr { { i64, ptr } }, ptr %t322, i32 0, i32 0
  %t324 = load { i64, ptr }, ptr %t323
  %t326 = extractvalue { i64, ptr } %t324, 1
  %t327 = extractvalue { i64, ptr } %t324, 0
  %t328 = call i64 @__olang_rd_quote(ptr null, i64 0, ptr %t326, i64 %t327, i8 34)
  %t329 = call ptr @__olang_sb_room(ptr %s8, i64 %t328)
  %t330 = call i64 @__olang_rd_quote(ptr %t329, i64 0, ptr %t326, i64 %t327, i8 34)
  call void @__olang_sb_add(ptr %s8, i64 %t328)
  %t331 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t331, i64 %t332)
  %t333 = load ptr, ptr %s8
  %t334 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t335 = load i64, ptr %t334
  %t336 = load ptr, ptr @__olang_prog_scope
  %t337 = call ptr @__olang_scope_alloc(ptr %t336, i64 %t335)
  call void @olang_textcopy(ptr %t337, ptr %t333, i64 %t335)
  %t338 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  store { i64, ptr } %t339, ptr %l47, !tbaa !27
  %t340 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t341 = load ptr, ptr %t340
  %t342 = icmp ne ptr %t341, null
  br i1 %t342, label %sbgrew.343, label %sbdone.344
sbgrew.343:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.344
sbdone.344:
  %t345 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t346 = load ptr, ptr @__olang_prog_scope
  %t347 = extractvalue { i64, ptr } %t345, 0
  %t348 = extractvalue { i64, ptr } %t345, 1
  %t349 = mul i64 %t347, 1
  %t350 = call ptr @__olang_scope_alloc(ptr %t346, i64 %t349)
  call void @llvm.memcpy.p0.p0.i64(ptr %t350, ptr %t348, i64 %t349, i1 false)
  %t351 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  %t354 = extractvalue { i64, ptr } %t352, 1
  %t355 = extractvalue { i64, ptr } %t352, 0
  %t356 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t357 = insertvalue { i64, ptr } %t356, ptr %t354, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68, { i64, ptr } %t357, i1 false)
  unreachable
bb18:
  call void @__olang_bang_failed_plain(ptr @olang_loc_1a596f16b0c0d4cc_1848fbd7ff01a1d8)
  unreachable
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t358 = load %"std/os:Output", ptr %l2
  store %"std/os:Output" %t358, ptr %rv
  br label %ret
ret:
  %rr = load %"std/os:Output", ptr %rv
  ret %"std/os:Output" %rr
}

define dso_local { i32, %"std/os:Process" } @std_2fos_2eProcess_2eStart(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca %"std/os:FileInfo"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, [2 x i64] }
  %l36 = alloca i64
  %l38 = alloca { i64, [2 x i64] }
  %l48 = alloca { i64, ptr }
  %l51 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, [2 x i64] }
  %l61 = alloca i64
  %l63 = alloca { i64, [2 x i64] }
  %l73 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i32
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, [2 x i64] }
  %l83 = alloca i64
  %l85 = alloca { i64, [2 x i64] }
  %l91 = alloca %"std/os:FileInfo"
  %l93 = alloca %"std/os:FileInfo"
  %l94 = alloca i32
  %l100 = alloca { i64, ptr }
  %l101 = alloca i64
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, [2 x i64] }
  %l104 = alloca i64
  %l106 = alloca { i64, [2 x i64] }
  %l109 = alloca i64
  %l119 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l143 = alloca i32
  %l144 = alloca i32
  %l145 = alloca i32
  %l149 = alloca i32
  %l151 = alloca i1
  %l154 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l157 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca { i64, [2 x i64] }
  %l160 = alloca i64
  %l162 = alloca { i64, [2 x i64] }
  %l164 = alloca i32
  %l166 = alloca i32
  %l168 = alloca i64
  %l170 = alloca i32
  %l171 = alloca i32
  %l172 = alloca i32
  %l173 = alloca i32
  %l175 = alloca i32
  %l176 = alloca { i64, ptr }
  %l178 = alloca i32
  %l181 = alloca i32
  %l182 = alloca i32
  %l183 = alloca i32
  %l184 = alloca i32
  %l186 = alloca i32
  %l197 = alloca i32
  %l200 = alloca i32
  %l203 = alloca i32
  %l205 = alloca i32
  %l207 = alloca { i64, ptr }
  %l209 = alloca i32
  %l210 = alloca i32
  %l212 = alloca i32
  %l217 = alloca %"std/os:Process"
  %l219 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:Process" }
  %t21 = alloca { i64, [2 x i64] }, align 8
  %t87 = alloca { i64, [2 x i64] }, align 8
  %t145 = alloca { i64, [2 x i64] }, align 8
  %t213 = alloca { i64, [2 x i64] }, align 8
  %t363 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store i1 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t7, ptr %l32, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l33, !tbaa !24
  %t10 = load i64, ptr %l33, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l34, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l33, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 0
  store i64 6, ptr %t22
  %t23 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t24 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t23, 0
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  store { { i64, ptr } } %t24, ptr %t25
  %t26 = load { i64, [2 x i64] }, ptr %t21
  store { i64, [2 x i64] } %t26, ptr %l35
  %t27 = call ptr @__olang_errpay_push()
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l36, !tbaa !24
  %t29 = load i64, ptr %l36
  %t30 = inttoptr i64 %t29 to ptr
  %t32 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t30, ptr %l35)
  store { i64, [2 x i64] } %t32, ptr %l38
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t33 = load { i64, [2 x i64] }, ptr %l38
  %t34 = load i64, ptr %l36
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call ptr @__olang_scope_alloc_a(ptr %t35, i64 24, i64 8)
  store { i64, [2 x i64] } %t33, ptr %t36
  call void @__olang_errpay_set(ptr %t36)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t39 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 65542, 0
  store { i32, %"std/os:Process" } %t39, ptr %rv
  br label %ret
bb4:
  store i64 0, ptr %l4, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb6, label %bb7
bb6:
  br label %bb18
bb7:
  br label %bb8
bb8:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l48, !tbaa !27
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %t58, i64 %t55
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !37
  store { i64, ptr } %t60, ptr %l8, !tbaa !27
  store i1 true, ptr %l9, !tbaa !21
  %t62 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t64 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t62, i8 0)
  %t65 = extractvalue { i32, i64 } %t64, 1
  %t66 = extractvalue { i32, i64 } %t64, 0
  store i32 %t66, ptr %l54
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb10, label %ok.68, !prof !99
ok.68:
  store i64 %t65, ptr %l53
  br label %bb9
bb9:
  %t69 = load i64, ptr %l53, !tbaa !24
  store i64 %t69, ptr %l51, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb12
bb12:
  %t70 = load i1, ptr %l9, !tbaa !21
  br i1 %t70, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t72 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t72, ptr %l57, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l58, !tbaa !24
  %t76 = load i64, ptr %l58, !tbaa !24
  %t77 = mul i64 %t76, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t77)
  %t79 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l59, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = load i64, ptr %l58, !tbaa !24
  %t86 = mul i64 %t85, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t82, ptr %t84, i64 %t86, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [2 x i64] }, ptr %t87, i32 0, i32 0
  store i64 6, ptr %t88
  %t89 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t90 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t89, 0
  %t91 = getelementptr { i64, [2 x i64] }, ptr %t87, i32 0, i32 1
  store { { i64, ptr } } %t90, ptr %t91
  %t92 = load { i64, [2 x i64] }, ptr %t87
  store { i64, [2 x i64] } %t92, ptr %l60
  %t93 = call ptr @__olang_errpay_push()
  %t94 = ptrtoint ptr %t93 to i64
  store i64 %t94, ptr %l61, !tbaa !24
  %t95 = load i64, ptr %l61
  %t96 = inttoptr i64 %t95 to ptr
  %t98 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t96, ptr %l60)
  store { i64, [2 x i64] } %t98, ptr %l63
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t99 = load { i64, [2 x i64] }, ptr %l63
  %t100 = load i64, ptr %l61
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = call ptr @__olang_scope_alloc_a(ptr %t101, i64 24, i64 8)
  store { i64, [2 x i64] } %t99, ptr %t102
  call void @__olang_errpay_set(ptr %t102)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t105 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 65542, 0
  store { i32, %"std/os:Process" } %t105, ptr %rv
  br label %ret
bb16:
  %t106 = load i64, ptr %l4, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t111 = add i64 %t109, 1
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l6, !tbaa !24
  br label %bb5
bb18:
  store i1 true, ptr %l10, !tbaa !21
  %t120 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t122 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v2, { i64, ptr } %t120, i8 0)
  %t123 = extractvalue { i32, i64 } %t122, 1
  %t124 = extractvalue { i32, i64 } %t122, 0
  store i32 %t124, ptr %l76
  %t125 = icmp ne i32 %t124, 0
  br i1 %t125, label %bb20, label %ok.126, !prof !99
ok.126:
  store i64 %t123, ptr %l75
  br label %bb19
bb19:
  %t127 = load i64, ptr %l75, !tbaa !24
  store i64 %t127, ptr %l73, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb22
bb22:
  %t128 = load i1, ptr %l10, !tbaa !21
  br i1 %t128, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s8
  %t130 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t130, ptr %l79, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  store i64 %t133, ptr %l80, !tbaa !24
  %t134 = load i64, ptr %l80, !tbaa !24
  %t135 = mul i64 %t134, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t135)
  %t137 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l81, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l80, !tbaa !24
  %t144 = mul i64 %t143, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %t142, i64 %t144, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [2 x i64] }, ptr %t145, i32 0, i32 0
  store i64 6, ptr %t146
  %t147 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t148 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t147, 0
  %t149 = getelementptr { i64, [2 x i64] }, ptr %t145, i32 0, i32 1
  store { { i64, ptr } } %t148, ptr %t149
  %t150 = load { i64, [2 x i64] }, ptr %t145
  store { i64, [2 x i64] } %t150, ptr %l82
  %t151 = call ptr @__olang_errpay_push()
  %t152 = ptrtoint ptr %t151 to i64
  store i64 %t152, ptr %l83, !tbaa !24
  %t153 = load i64, ptr %l83
  %t154 = inttoptr i64 %t153 to ptr
  %t156 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t154, ptr %l82)
  store { i64, [2 x i64] } %t156, ptr %l85
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t157 = load { i64, [2 x i64] }, ptr %l85
  %t158 = load i64, ptr %l83
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = call ptr @__olang_scope_alloc_a(ptr %t159, i64 24, i64 8)
  store { i64, [2 x i64] } %t157, ptr %t160
  call void @__olang_errpay_set(ptr %t160)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t163 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 65542, 0
  store { i32, %"std/os:Process" } %t163, ptr %rv
  br label %ret
bb26:
  %t164 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t168 = icmp sgt i64 %t166, 0
  br i1 %t168, label %bb27, label %bb28
bb27:
  %t170 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t172 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v2, { i64, ptr } %t170)
  %t173 = extractvalue { i32, %"std/os:FileInfo" } %t172, 1
  %t174 = extractvalue { i32, %"std/os:FileInfo" } %t172, 0
  store i32 %t174, ptr %l94
  %t175 = icmp ne i32 %t174, 0
  br i1 %t175, label %bb30, label %ok.176, !prof !99
ok.176:
  store %"std/os:FileInfo" %t173, ptr %l93
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t177 = load %"std/os:FileInfo", ptr %l93
  store %"std/os:FileInfo" %t177, ptr %l91
  br label %bb31
bb30:
  %t178 = load i32, ptr %l94, !tbaa !23
  %t179 = lshr i32 %t178, 16
  %t180 = and i32 %t178, 65535
  %t181 = icmp eq i32 %t179, 1
  %t182 = select i1 %t181, i32 1, i32 0
  %t183 = icmp eq i32 %t178, 0
  %t184 = shl i32 %t182, 16
  %t185 = or i32 %t184, %t180
  %t186 = select i1 %t183, i32 0, i32 %t185
  call void @__olang_scope_close(ptr %s0)
  %t188 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 %t186, 0
  store { i32, %"std/os:Process" } %t188, ptr %rv
  br label %ret
bb31:
  %t189 = load %"std/os:FileInfo", ptr %l91
  store %"std/os:FileInfo" %t189, ptr %l11
  %t190 = getelementptr %"std/os:FileInfo", ptr %l11, i32 0, i32 0
  %t191 = load i32, ptr %t190, !range !{i32 0, i32 3}
  %t193 = trunc i64 1 to i32
  %t194 = icmp eq i32 %t191, %t193
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s10
  %t198 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t198, ptr %l100, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  store i64 %t201, ptr %l101, !tbaa !24
  %t202 = load i64, ptr %l101, !tbaa !24
  %t203 = mul i64 %t202, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t203)
  %t205 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l102, !tbaa !27
  %t207 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = load i64, ptr %l101, !tbaa !24
  %t212 = mul i64 %t211, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t208, ptr %t210, i64 %t212, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t213
  %t214 = getelementptr { i64, [2 x i64] }, ptr %t213, i32 0, i32 0
  store i64 3, ptr %t214
  %t215 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t216 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t215, 0
  %t217 = getelementptr { i64, [2 x i64] }, ptr %t213, i32 0, i32 1
  store { { i64, ptr } } %t216, ptr %t217
  %t218 = load { i64, [2 x i64] }, ptr %t213
  store { i64, [2 x i64] } %t218, ptr %l103
  %t219 = call ptr @__olang_errpay_push()
  %t220 = ptrtoint ptr %t219 to i64
  store i64 %t220, ptr %l104, !tbaa !24
  %t221 = load i64, ptr %l104
  %t222 = inttoptr i64 %t221 to ptr
  %t224 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t222, ptr %l103)
  store { i64, [2 x i64] } %t224, ptr %l106
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t225 = load { i64, [2 x i64] }, ptr %l106
  %t226 = load i64, ptr %l104
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call ptr @__olang_scope_alloc_a(ptr %t227, i64 24, i64 8)
  store { i64, [2 x i64] } %t225, ptr %t228
  call void @__olang_errpay_set(ptr %t228)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t231 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 65539, 0
  store { i32, %"std/os:Process" } %t231, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t232 = load i64, ptr %l4, !tbaa !24
  store i64 %t232, ptr %l109, !tbaa !24
  %t233 = load i64, ptr %l109, !tbaa !24
  %t234 = icmp sge i64 %t233, 0
  br i1 %t234, label %bb37, label %bb38
bb37:
  %t236 = load i64, ptr %l109, !tbaa !24
  %t237 = mul i64 %t236, 1
  %t238 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t237)
  %t239 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  store { i64, ptr } %t240, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t242 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t242, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t244, 0
  store i64 %t246, ptr %l16, !tbaa !24
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_ae615ff442418127_414de4f669869a8b)
  unreachable
bb39:
  %t248 = load i64, ptr %l15, !tbaa !24
  %t249 = load i64, ptr %l16, !tbaa !24
  %t252 = icmp slt i64 %t248, %t249
  %t254 = xor i1 %t252, true
  br i1 %t254, label %bb40, label %bb41
bb40:
  br label %bb50
bb41:
  br label %bb42
bb42:
  %t256 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t256, ptr %l119, !tbaa !27
  %t257 = load i64, ptr %l15, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr { i64, ptr }, ptr %t260, i64 %t257
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !37
  store { i64, ptr } %t262, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t266 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t266, 0
  store i64 %t268, ptr %l20, !tbaa !24
  br label %bb43
bb43:
  %t270 = load i64, ptr %l19, !tbaa !24
  %t271 = load i64, ptr %l20, !tbaa !24
  %t274 = icmp slt i64 %t270, %t271
  %t276 = xor i1 %t274, true
  br i1 %t276, label %bb44, label %bb45
bb44:
  br label %bb48
bb45:
  br label %bb46
bb46:
  %t278 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t278, ptr %l129, !tbaa !27
  %t279 = load i64, ptr %l19, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i8, ptr %t282, i64 %t279
  %t284 = load i8, ptr %t283, !tbaa !32
  %t286 = load i64, ptr %l13, !tbaa !24
  %t291 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr i8, ptr %t292, i64 %t286
  store i8 %t284, ptr %t293, !tbaa !32
  %t294 = load i64, ptr %l13, !tbaa !24
  %t296 = add i64 %t294, 1
  store i64 %t296, ptr %l13, !tbaa !24
  br label %bb47
bb47:
  %t298 = load i64, ptr %l19, !tbaa !24
  %t300 = add i64 %t298, 1
  store i64 %t300, ptr %l19, !tbaa !24
  br label %bb43
bb48:
  %t302 = load i64, ptr %l13, !tbaa !24
  %t304 = add i64 %t302, 1
  store i64 %t304, ptr %l13, !tbaa !24
  br label %bb49
bb49:
  %t306 = load i64, ptr %l15, !tbaa !24
  %t308 = add i64 %t306, 1
  store i64 %t308, ptr %l15, !tbaa !24
  br label %bb39
bb50:
  %t310 = call { i32, i32 } @std_2fos_2ememFile()
  %t311 = extractvalue { i32, i32 } %t310, 1
  %t312 = extractvalue { i32, i32 } %t310, 0
  store i32 %t312, ptr %l145
  %t313 = icmp ne i32 %t312, 0
  br i1 %t313, label %bb52, label %ok.314, !prof !99
ok.314:
  store i32 %t311, ptr %l144
  br label %bb51
bb51:
  %t315 = load i32, ptr %l144, !tbaa !23
  store i32 %t315, ptr %l143, !tbaa !23
  br label %bb53
bb52:
  %t316 = load i32, ptr %l145, !tbaa !23
  %t317 = lshr i32 %t316, 16
  %t318 = and i32 %t316, 65535
  %t319 = icmp eq i32 %t317, 1
  %t320 = select i1 %t319, i32 1, i32 0
  %t321 = icmp eq i32 %t316, 0
  %t322 = shl i32 %t320, 16
  %t323 = or i32 %t322, %t318
  %t324 = select i1 %t321, i32 0, i32 %t323
  call void @__olang_scope_close(ptr %s0)
  %t326 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 %t324, 0
  store { i32, %"std/os:Process" } %t326, ptr %rv
  br label %ret
bb53:
  %t327 = load i32, ptr %l143, !tbaa !23
  store i32 %t327, ptr %l22, !tbaa !23
  %t328 = load i32, ptr %l22, !tbaa !23
  %t332 = call i32 @std_2fio_2eWrite(ptr %v1, i32 %t328, { i64, ptr } %a1)
  store i32 %t332, ptr %l149
  %t333 = icmp ne i32 %t332, 0
  br i1 %t333, label %bb55, label %ok.334, !prof !99
ok.334:
  br label %bb54
bb54:
  br label %bb61
bb55:
  %t335 = load i32, ptr %l149, !tbaa !23
  %t336 = ashr i32 %t335, 16
  %t338 = icmp eq i32 %t336, 1
  store i1 %t338, ptr %l151, !tbaa !21
  %t339 = load i32, ptr %l149, !tbaa !23
  %t340 = ashr i32 %t339, 16
  %t342 = icmp eq i32 %t340, 1
  br i1 %t342, label %bb56, label %bb57
bb56:
  call void @__olang_errpay_pop()
  br label %bb57
bb57:
  br label %bb58
bb58:
  store %olang.scope zeroinitializer, ptr %s17
  %t344 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t344, ptr %l154, !tbaa !27
  %t345 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = getelementptr { i64, ptr }, ptr %t346, i64 0
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !37
  store { i64, ptr } %t348, ptr %l156, !tbaa !27
  %t350 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t351 = extractvalue { i64, ptr } %t350, 0
  store i64 %t351, ptr %l157, !tbaa !24
  %t352 = load i64, ptr %l157, !tbaa !24
  %t353 = mul i64 %t352, 1
  %t354 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t353)
  %t355 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t356 = insertvalue { i64, ptr } %t355, ptr %t354, 1
  store { i64, ptr } %t356, ptr %l158, !tbaa !27
  %t357 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = load i64, ptr %l157, !tbaa !24
  %t362 = mul i64 %t361, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t358, ptr %t360, i64 %t362, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t363
  %t364 = getelementptr { i64, [2 x i64] }, ptr %t363, i32 0, i32 0
  store i64 6, ptr %t364
  %t365 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t366 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t365, 0
  %t367 = getelementptr { i64, [2 x i64] }, ptr %t363, i32 0, i32 1
  store { { i64, ptr } } %t366, ptr %t367
  %t368 = load { i64, [2 x i64] }, ptr %t363
  store { i64, [2 x i64] } %t368, ptr %l159
  %t369 = call ptr @__olang_errpay_push()
  %t370 = ptrtoint ptr %t369 to i64
  store i64 %t370, ptr %l160, !tbaa !24
  %t371 = load i64, ptr %l160
  %t372 = inttoptr i64 %t371 to ptr
  %t374 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t372, ptr %l159)
  store { i64, [2 x i64] } %t374, ptr %l162
  br label %bb59
bb59:
  %t375 = load { i64, [2 x i64] }, ptr %l162
  %t376 = load i64, ptr %l160
  %t377 = inttoptr i64 %t376 to ptr
  %t378 = call ptr @__olang_scope_alloc_a(ptr %t377, i64 24, i64 8)
  store { i64, [2 x i64] } %t375, ptr %t378
  call void @__olang_errpay_set(ptr %t378)
  store i32 65542, ptr %l164, !tbaa !23
  call void @__olang_scope_close(ptr %s17)
  %t380 = load i32, ptr %l22, !tbaa !23
  %t382 = call i32 @close(i32 %t380)
  store i32 %t382, ptr %l166
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t383 = load i32, ptr %l164, !tbaa !23
  %t384 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 %t383, 0
  store { i32, %"std/os:Process" } %t384, ptr %rv
  br label %ret
bb61:
  %t385 = load i32, ptr %l22, !tbaa !23
  %t387 = call i64 @lseek(i32 %t385, i64 0, i32 0)
  store i64 %t387, ptr %l168
  br label %bb62
bb62:
  store i32 -1, ptr %l23, !tbaa !23
  store i32 -1, ptr %l24, !tbaa !23
  %t388 = load i1, ptr %l2, !tbaa !21
  br i1 %t388, label %bb63, label %bb64
bb63:
  %t390 = call { i32, i32 } @std_2fos_2ememFile()
  %t391 = extractvalue { i32, i32 } %t390, 1
  %t392 = extractvalue { i32, i32 } %t390, 0
  store i32 %t392, ptr %l172
  %t393 = icmp ne i32 %t392, 0
  br i1 %t393, label %bb66, label %ok.394, !prof !99
ok.394:
  store i32 %t391, ptr %l171
  br label %bb65
bb64:
  br label %bb78
bb65:
  %t395 = load i32, ptr %l171, !tbaa !23
  store i32 %t395, ptr %l170, !tbaa !23
  br label %bb68
bb66:
  %t396 = load i32, ptr %l172, !tbaa !23
  %t397 = lshr i32 %t396, 16
  %t398 = and i32 %t396, 65535
  %t399 = icmp eq i32 %t397, 1
  %t400 = select i1 %t399, i32 1, i32 0
  %t401 = icmp eq i32 %t396, 0
  %t402 = shl i32 %t400, 16
  %t403 = or i32 %t402, %t398
  %t404 = select i1 %t401, i32 0, i32 %t403
  store i32 %t404, ptr %l173, !tbaa !23
  %t405 = load i32, ptr %l22, !tbaa !23
  %t407 = call i32 @close(i32 %t405)
  store i32 %t407, ptr %l175
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t408 = load i32, ptr %l173, !tbaa !23
  %t409 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 %t408, 0
  store { i32, %"std/os:Process" } %t409, ptr %rv
  br label %ret
bb68:
  %t410 = load i32, ptr %l170, !tbaa !23
  store i32 %t410, ptr %l23, !tbaa !23
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l176, !tbaa !27
  %t411 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t411, 1
  %t414 = extractvalue { i64, ptr } %t411, 0
  %t415 = call i32 @memfd_create(ptr %t413, i32 1)
  store i32 %t415, ptr %l178
  br label %bb69
bb69:
  %t416 = load i32, ptr %l178, !tbaa !23
  store i32 %t416, ptr %l25, !tbaa !23
  %t417 = load i32, ptr %l25, !tbaa !23
  %t419 = icmp slt i32 %t417, 0
  br i1 %t419, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s21
  %t421 = load i32, ptr %l23, !tbaa !23
  store i32 %t421, ptr %l181, !tbaa !23
  %t422 = call i32 @__olang_err()
  store i32 %t422, ptr %l182
  br label %bb72
bb71:
  br label %bb77
bb72:
  %t423 = load i32, ptr %l181, !tbaa !23
  %t424 = load i32, ptr %l182, !tbaa !23
  %t425 = call i32 @std_2fos_2ecloseAndRaise(ptr %s21, i32 %t423, i32 %t424, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i32 %t425, ptr %l183
  %t426 = icmp ne i32 %t425, 0
  br i1 %t426, label %bb74, label %ok.427, !prof !99
ok.427:
  br label %bb73
bb73:
  br label %bb76
bb74:
  %t428 = load i32, ptr %l183, !tbaa !23
  %t429 = lshr i32 %t428, 16
  %t430 = and i32 %t428, 65535
  %t431 = icmp eq i32 %t429, 1
  %t432 = select i1 %t431, i32 1, i32 0
  %t433 = icmp eq i32 %t428, 0
  %t434 = shl i32 %t432, 16
  %t435 = or i32 %t434, %t430
  %t436 = select i1 %t433, i32 0, i32 %t435
  store i32 %t436, ptr %l184, !tbaa !23
  call void @__olang_scope_close(ptr %s21)
  %t437 = load i32, ptr %l22, !tbaa !23
  %t439 = call i32 @close(i32 %t437)
  store i32 %t439, ptr %l186
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s0)
  %t440 = load i32, ptr %l184, !tbaa !23
  %t441 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 %t440, 0
  store { i32, %"std/os:Process" } %t441, ptr %rv
  br label %ret
bb76:
  call void @__olang_scope_close(ptr %s21)
  br label %bb77
bb77:
  %t442 = load i32, ptr %l25, !tbaa !23
  store i32 %t442, ptr %l24, !tbaa !23
  br label %bb78
bb78:
  %t444 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t445 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t445, 0
  %t448 = load i32, ptr %l22, !tbaa !23
  %t449 = load i32, ptr %l23, !tbaa !23
  %t450 = load i32, ptr %l24, !tbaa !23
  %t451 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t451, 1
  %t454 = extractvalue { i64, ptr } %t451, 0
  %t455 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t456 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t457 = add i64 %t454, %t456
  %t458 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t457)
  call void @olang_textcopy(ptr %t458, ptr %t453, i64 %t454)
  %t459 = getelementptr i8, ptr %t458, i64 %t454
  call void @olang_textcopy(ptr %t459, ptr %t455, i64 %t456)
  %t460 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t461 = insertvalue { i64, ptr } %t460, ptr %t458, 1
  %t464 = extractvalue { i64, ptr } %t444, 1
  %t465 = extractvalue { i64, ptr } %t444, 0
  %t471 = extractvalue { i64, ptr } %t461, 1
  %t472 = extractvalue { i64, ptr } %t461, 0
  %t473 = call i32 @__olang_spawn(ptr %t464, i64 %t447, i32 %t448, i32 %t449, i32 %t450, ptr %t471)
  store i32 %t473, ptr %l197
  br label %bb79
bb79:
  %t474 = load i32, ptr %l197, !tbaa !23
  store i32 %t474, ptr %l26, !tbaa !23
  %t475 = load i32, ptr %l26, !tbaa !23
  %t477 = icmp slt i32 %t475, 0
  br i1 %t477, label %bb80, label %bb81
bb80:
  %t479 = call i32 @__olang_err()
  store i32 %t479, ptr %l200
  br label %bb82
bb81:
  br label %bb92
bb82:
  %t480 = load i32, ptr %l200, !tbaa !23
  store i32 %t480, ptr %l27, !tbaa !23
  %t481 = load i1, ptr %l2, !tbaa !21
  br i1 %t481, label %bb83, label %bb84
bb83:
  %t483 = load i32, ptr %l23, !tbaa !23
  %t485 = call i32 @close(i32 %t483)
  store i32 %t485, ptr %l203
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t486 = load i32, ptr %l24, !tbaa !23
  %t488 = call i32 @close(i32 %t486)
  store i32 %t488, ptr %l205
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t489 = load i32, ptr %l27, !tbaa !23
  %t490 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t490, ptr %l207, !tbaa !27
  %t491 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t492 = load ptr, ptr %t491, !tbaa !27
  %t493 = getelementptr { i64, ptr }, ptr %t492, i64 0
  %t494 = load { i64, ptr }, ptr %t493, !tbaa !37
  %t497 = call i32 @std_2fos_2eraise(ptr %v0, i32 %t489, { i64, ptr } %t494)
  store i32 %t497, ptr %l209
  %t498 = icmp ne i32 %t497, 0
  br i1 %t498, label %bb89, label %ok.499, !prof !99
ok.499:
  br label %bb88
bb88:
  br label %bb91
bb89:
  %t500 = load i32, ptr %l209, !tbaa !23
  %t501 = lshr i32 %t500, 16
  %t502 = and i32 %t500, 65535
  %t503 = icmp eq i32 %t501, 1
  %t504 = select i1 %t503, i32 1, i32 0
  %t505 = icmp eq i32 %t500, 0
  %t506 = shl i32 %t504, 16
  %t507 = or i32 %t506, %t502
  %t508 = select i1 %t505, i32 0, i32 %t507
  store i32 %t508, ptr %l210, !tbaa !23
  %t509 = load i32, ptr %l22, !tbaa !23
  %t511 = call i32 @close(i32 %t509)
  store i32 %t511, ptr %l212
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t512 = load i32, ptr %l210, !tbaa !23
  %t513 = insertvalue { i32, %"std/os:Process" } zeroinitializer, i32 %t512, 0
  store { i32, %"std/os:Process" } %t513, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  %t514 = load i32, ptr %l26, !tbaa !23
  %t515 = load i32, ptr %l23, !tbaa !23
  %t516 = load i32, ptr %l24, !tbaa !23
  %t517 = load i1, ptr %l2, !tbaa !21
  %t522 = call %"std/os:Process" @std_2fos_3aProcess_2ector(ptr %s0, i32 %t514, i32 %t515, i32 %t516, i1 %t517)
  store %"std/os:Process" %t522, ptr %l217
  br label %bb93
bb93:
  %t523 = load i32, ptr %l22, !tbaa !23
  %t525 = call i32 @close(i32 %t523)
  store i32 %t525, ptr %l219
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s0)
  %t526 = load %"std/os:Process", ptr %l217
  %t527 = insertvalue { i32, %"std/os:Process" } zeroinitializer, %"std/os:Process" %t526, 1
  store { i32, %"std/os:Process" } %t527, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Process" }, ptr %rv
  ret { i32, %"std/os:Process" } %rr
}

define dso_local { i64, ptr } @std_2fos_2eQuote(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 39
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t61, ptr %l39, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t62, ptr %l40, !tbaa !27
  %t63 = load i64, ptr %l2, !tbaa !24
  store i64 %t63, ptr %l41, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  store i64 %t64, ptr %l42, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l43, !tbaa !24
  %t67 = load i64, ptr %l41, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb13, label %bb14
bb12:
  br label %bb19
bb13:
  %t70 = load i64, ptr %l41, !tbaa !24
  %t71 = load i64, ptr %l42, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_3ae06a7cd351f714_4bcb8792cbdf34a0)
  unreachable
bb15:
  %t74 = load i64, ptr %l42, !tbaa !24
  %t75 = load i64, ptr %l43, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_3ae06a7cd351f714_4bcb8792cbdf34a0)
  unreachable
bb17:
  %t78 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l41, !tbaa !24
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = getelementptr i8, ptr %t79, i64 %t80
  %t83 = sub i64 %t81, %t80
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  %t86 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t90 = extractvalue { i64, ptr } %t85, 1
  %t91 = extractvalue { i64, ptr } %t85, 0
  %t92 = add i64 %t88, %t91
  %t93 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t95)
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
  %t105 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  store { i64, ptr } %t107, ptr %l1, !tbaa !27
  %t109 = load i64, ptr %l8, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l2, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_3ae06a7cd351f714_4bcb8792cbdf34a0)
  unreachable
bb19:
  br label %bb20
bb20:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l7, !tbaa !24
  br label %bb7
bb21:
  %t117 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t117, ptr %l54, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t118, ptr %l55, !tbaa !27
  %t119 = load i64, ptr %l2, !tbaa !24
  store i64 %t119, ptr %l56, !tbaa !24
  %t120 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t120, 0
  store i64 %t123, ptr %l59, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  store i64 %t125, ptr %l60, !tbaa !24
  %t126 = load i64, ptr %l56, !tbaa !24
  %t127 = icmp sge i64 %t126, 0
  br i1 %t127, label %bb22, label %bb23
bb22:
  %t129 = load i64, ptr %l56, !tbaa !24
  %t130 = load i64, ptr %l59, !tbaa !24
  %t131 = icmp sle i64 %t129, %t130
  br i1 %t131, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_63ca89910fe1f481_50e57e01f8d90efd)
  unreachable
bb24:
  %t133 = load i64, ptr %l59, !tbaa !24
  %t134 = load i64, ptr %l60, !tbaa !24
  %t135 = icmp sle i64 %t133, %t134
  br i1 %t135, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_63ca89910fe1f481_50e57e01f8d90efd)
  unreachable
bb26:
  %t137 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = load i64, ptr %l56, !tbaa !24
  %t140 = load i64, ptr %l59, !tbaa !24
  %t141 = getelementptr i8, ptr %t138, i64 %t139
  %t142 = sub i64 %t140, %t139
  %t143 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  %t145 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t149 = extractvalue { i64, ptr } %t144, 1
  %t150 = extractvalue { i64, ptr } %t144, 0
  %t151 = add i64 %t147, %t150
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t155 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t154)
  call void @olang_textcopy(ptr %t155, ptr %t146, i64 %t147)
  %t156 = getelementptr i8, ptr %t155, i64 %t147
  call void @olang_textcopy(ptr %t156, ptr %t149, i64 %t150)
  %t157 = getelementptr i8, ptr %t156, i64 %t150
  call void @olang_textcopy(ptr %t157, ptr %t152, i64 %t153)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t155, 1
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t162 = extractvalue { i64, ptr } %t159, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t166, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_63ca89910fe1f481_50e57e01f8d90efd)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l28 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t16 = alloca { { i64, ptr }, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t15 = ptrtoint ptr %t14 to i64
  %t17 = getelementptr { { i64, ptr }, ptr }, ptr %t16, i32 0, i32 0
  store { i64, ptr } %t11, ptr %t17, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t19 = getelementptr { { i64, ptr }, ptr }, ptr %t16, i32 0, i32 1
  store ptr %s0, ptr %t19, !tbaa !28
  %t20 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_42, 0
  %t21 = insertvalue { ptr, ptr } %t20, ptr %t16, 1
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = extractvalue { ptr, ptr } %t21, 0
  %t25 = extractvalue { ptr, ptr } %t21, 1
  %t27 = call { i32, { i64, ptr } } @std_2fos_2ecopyOut(ptr %s0, ptr %v0, ptr %v1, ptr %t24, ptr %t25, { i64, ptr } %t22)
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l11
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb2, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l10
  br label %bb1
bb1:
  %t32 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t32, ptr %l6, !tbaa !27
  br label %bb3
bb2:
  %t33 = load i32, ptr %l11, !tbaa !23
  %t34 = lshr i32 %t33, 16
  %t35 = and i32 %t33, 65535
  %t36 = icmp eq i32 %t34, 1
  %t37 = select i1 %t36, i32 1, i32 0
  %t38 = icmp eq i32 %t33, 0
  %t39 = shl i32 %t37, 16
  %t40 = or i32 %t39, %t35
  %t41 = select i1 %t38, i32 0, i32 %t40
  call void @__olang_scope_close(ptr %s0)
  %t43 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t41, 0
  store { i32, { i64, ptr } } %t43, ptr %rv
  br label %ret
bb3:
  %t44 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t44, ptr %l2, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = icmp eq i64 %t47, 0
  br i1 %t49, label %bb4, label %bb5
bb4:
  %t51 = icmp sge i64 0, 0
  br i1 %t51, label %bb6, label %bb7
bb5:
  br label %bb10
bb6:
  %t53 = icmp sle i64 0, 576460752303423487
  br i1 %t53, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_879ad2febb339b7d_10a4c06fe5c76379)
  unreachable
bb8:
  %t55 = mul i64 0, 16
  %t56 = insertvalue { i64, ptr } undef, i64 0, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  %t59 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t57, 1
  store { i32, { i64, ptr } } %t59, ptr %rv
  br label %ret
bb9:
  call void @__olang_check_failed(ptr @olang_loc_879ad2febb339b7d_10a4c06fe5c76379)
  unreachable
bb10:
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t60, ptr %l19, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t65 = sub i64 %t63, 1
  store i64 %t65, ptr %l22, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l23, !tbaa !24
  %t68 = icmp sge i64 0, 0
  br i1 %t68, label %bb11, label %bb12
bb11:
  %t70 = load i64, ptr %l22, !tbaa !24
  %t71 = icmp sle i64 0, %t70
  br i1 %t71, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_2b89142fbf8fc460_df42bdef933d62c4)
  unreachable
bb13:
  %t73 = load i64, ptr %l22, !tbaa !24
  %t74 = load i64, ptr %l23, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  br i1 %t75, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_2b89142fbf8fc460_df42bdef933d62c4)
  unreachable
bb15:
  %t77 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l22, !tbaa !24
  %t80 = getelementptr i8, ptr %t78, i64 0
  %t81 = sub i64 %t79, 0
  %t82 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  %t85 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t83, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store { i64, ptr } %t85, ptr %l28
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2b89142fbf8fc460_df42bdef933d62c4)
  unreachable
bb17:
  %t86 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t86, ptr %l3, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t88 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_44, 0
  %t89 = insertvalue { ptr, ptr } %t88, ptr null, 1
  %t92 = extractvalue { ptr, ptr } %t89, 0
  %t93 = extractvalue { ptr, ptr } %t89, 1
  call void @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSort_3cstd_2fprelu_H425a408f665c1f34766f6a10dd38435a(ptr %v1, ptr %s0, { i64, ptr } %t87, ptr %t92, ptr %t93)
  br label %bb18
bb18:
  %t94 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t96 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t94, 1
  store { i32, { i64, ptr } } %t96, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca i64
  %l22 = alloca { i64, [2 x i64] }
  %l28 = alloca i32
  %l32 = alloca i32
  %l35 = alloca i64
  %l39 = alloca i64
  %l41 = alloca i64
  %l50 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca i64
  %l87 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i32
  %l90 = alloca i64
  %l92 = alloca i64
  %l93 = alloca i64
  %l103 = alloca i64
  %l106 = alloca i32
  %l107 = alloca i32
  %l109 = alloca i32
  %l117 = alloca i32
  %l118 = alloca i64
  %l119 = alloca i64
  %l124 = alloca { i64, ptr }
  %l125 = alloca i64
  %l126 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t20 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %t1)
  store i1 %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load i1, ptr %l14, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l16, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l17, !tbaa !24
  %t9 = load i64, ptr %l17, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l18, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l17, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 4, ptr %t21
  %t22 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t23 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t22, 0
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  store { { i64, ptr } } %t23, ptr %t24
  %t25 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t25, ptr %l19
  %t26 = call ptr @__olang_errpay_push()
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l20, !tbaa !24
  %t28 = load i64, ptr %l20
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t29, ptr %l19)
  store { i64, [2 x i64] } %t31, ptr %l22
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t32 = load { i64, [2 x i64] }, ptr %l22
  %t33 = load i64, ptr %l20
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_a(ptr %t34, i64 24, i64 8)
  store { i64, [2 x i64] } %t32, ptr %t35
  call void @__olang_errpay_set(ptr %t35)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t38 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65540, 0
  store { i32, { i64, ptr } } %t38, ptr %rv
  br label %ret
bb5:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = extractvalue { i64, ptr } %t39, 0
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = getelementptr i8, ptr %t46, i64 %t42
  call void @olang_textcopy(ptr %t47, ptr %t43, i64 %t44)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  %t52 = extractvalue { i64, ptr } %t49, 1
  %t53 = extractvalue { i64, ptr } %t49, 0
  %t54 = call i32 (ptr, i32, ...) @open(ptr %t52, i32 0)
  store i32 %t54, ptr %l28
  br label %bb6
bb6:
  %t55 = load i32, ptr %l28, !tbaa !23
  store i32 %t55, ptr %l1, !tbaa !23
  %t56 = load i32, ptr %l1, !tbaa !23
  %t58 = sext i32 %t56 to i64
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t58, { i64, ptr } %t59)
  store i32 %t62, ptr %l32
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb8, label %ok.64, !prof !99
ok.64:
  br label %bb7
bb7:
  br label %bb9
bb8:
  %t65 = load i32, ptr %l32, !tbaa !23
  %t66 = lshr i32 %t65, 16
  %t67 = and i32 %t65, 65535
  %t68 = icmp eq i32 %t66, 1
  %t69 = select i1 %t68, i32 1, i32 0
  %t70 = icmp eq i32 %t65, 0
  %t71 = shl i32 %t69, 16
  %t72 = or i32 %t71, %t67
  %t73 = select i1 %t70, i32 0, i32 %t72
  call void @__olang_scope_close(ptr %s0)
  %t75 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t73, 0
  store { i32, { i64, ptr } } %t75, ptr %rv
  br label %ret
bb9:
  %t76 = load i32, ptr %l1, !tbaa !23
  %t78 = call i64 @lseek(i32 %t76, i64 0, i32 2)
  store i64 %t78, ptr %l35
  br label %bb10
bb10:
  %t79 = load i64, ptr %l35, !tbaa !24
  store i64 %t79, ptr %l2, !tbaa !24
  %t80 = load i64, ptr %l2, !tbaa !24
  %t82 = icmp slt i64 %t80, 0
  br i1 %t82, label %bb11, label %bb12
bb11:
  store i64 0, ptr %l2, !tbaa !24
  br label %bb14
bb12:
  %t84 = load i32, ptr %l1, !tbaa !23
  %t86 = call i64 @lseek(i32 %t84, i64 0, i32 0)
  store i64 %t86, ptr %l39
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l41, !tbaa !24
  %t90 = load i64, ptr %l41, !tbaa !24
  %t91 = icmp sge i64 %t90, 0
  br i1 %t91, label %bb15, label %bb16
bb15:
  %t93 = load i64, ptr %l41, !tbaa !24
  %t94 = mul i64 %t93, 1
  %t95 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_587e358192386240_8b720e6e0da4b04)
  unreachable
bb17:
  %t99 = load i64, ptr %l4, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t105 = icmp eq i64 %t99, %t102
  br i1 %t105, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s6
  %t107 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t111 = mul i64 %t109, 2
  store i64 %t111, ptr %l50, !tbaa !24
  %t112 = load i64, ptr %l50, !tbaa !24
  %t113 = icmp sge i64 %t112, 0
  br i1 %t113, label %bb20, label %bb21
bb19:
  br label %bb37
bb20:
  %t115 = load i64, ptr %l50, !tbaa !24
  %t116 = mul i64 %t115, 1
  %t117 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t116)
  %t118 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t121 = load i64, ptr %l4, !tbaa !24
  store i64 %t121, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t123 = load i64, ptr %l7, !tbaa !24
  %t124 = load i64, ptr %l6, !tbaa !24
  %t127 = icmp sgt i64 %t123, %t124
  br i1 %t127, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_79e8bbcf109c76d_1b515aa79819cc11)
  unreachable
bb22:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = icmp sgt i64 %t129, 0
  br i1 %t131, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb27
bb24:
  %t133 = load i64, ptr %l7, !tbaa !24
  %t134 = load i64, ptr %l6, !tbaa !24
  %t137 = sub i64 %t133, %t134
  %t138 = load i64, ptr %l8, !tbaa !24
  %t141 = add i64 %t137, %t138
  %t143 = sub i64 %t141, 1
  %t144 = load i64, ptr %l8, !tbaa !24
  %t147 = sdiv i64 %t143, %t144
  store i64 %t147, ptr %l60, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb26
bb26:
  %t149 = load i64, ptr %l60, !tbaa !24
  store i64 %t149, ptr %l57, !tbaa !24
  br label %bb27
bb27:
  %t150 = load i64, ptr %l57, !tbaa !24
  store i64 %t150, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb28
bb28:
  %t151 = load i64, ptr %l10, !tbaa !24
  %t152 = load i64, ptr %l9, !tbaa !24
  %t155 = icmp slt i64 %t151, %t152
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t159 = load i64, ptr %l6, !tbaa !24
  %t160 = load i64, ptr %l10, !tbaa !24
  %t161 = load i64, ptr %l8, !tbaa !24
  %t164 = mul i64 %t160, %t161
  %t167 = add i64 %t159, %t164
  store i64 %t167, ptr %l11, !tbaa !24
  %t169 = load i64, ptr %l11, !tbaa !24
  %t170 = load i64, ptr %l11, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i8, ptr %t173, i64 %t170
  %t175 = load i8, ptr %t174, !tbaa !32
  %t178 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i8, ptr %t179, i64 %t169
  store i8 %t175, ptr %t180, !tbaa !32
  br label %bb32
bb32:
  %t181 = load i64, ptr %l10, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l10, !tbaa !24
  br label %bb28
bb33:
  %t185 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t185, ptr %l83, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 0
  %t188 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  store i64 %t189, ptr %l85, !tbaa !24
  %t191 = load i64, ptr %l85, !tbaa !24
  %t192 = icmp eq i64 %t187, %t191
  br i1 %t192, label %bb34, label %bb35
bb34:
  %t194 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = load i64, ptr %l85, !tbaa !24
  %t199 = mul i64 %t198, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t195, ptr %t197, i64 %t199, i1 false)
  br label %bb36
bb35:
  %t200 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  store i64 %t201, ptr %l87, !tbaa !24
  %t202 = load i64, ptr %l87, !tbaa !24
  %t203 = mul i64 %t202, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t203)
  %t205 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l88, !tbaa !27
  %t207 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = load i64, ptr %l87, !tbaa !24
  %t212 = mul i64 %t211, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t208, ptr %t210, i64 %t212, i1 false)
  %t213 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t213, ptr %l3, !tbaa !27
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb37:
  %t214 = load i32, ptr %l1, !tbaa !23
  store i32 %t214, ptr %l89, !tbaa !23
  %t215 = load i64, ptr %l4, !tbaa !24
  store i64 %t215, ptr %l90, !tbaa !24
  %t216 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t216, 0
  store i64 %t218, ptr %l92, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  store i64 %t220, ptr %l93, !tbaa !24
  %t221 = load i64, ptr %l90, !tbaa !24
  %t222 = icmp sge i64 %t221, 0
  br i1 %t222, label %bb38, label %bb39
bb38:
  %t224 = load i64, ptr %l90, !tbaa !24
  %t225 = load i64, ptr %l92, !tbaa !24
  %t226 = icmp sle i64 %t224, %t225
  br i1 %t226, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_b2d60bcaef35f8ee_ec573b413169e46a)
  unreachable
bb40:
  %t228 = load i64, ptr %l92, !tbaa !24
  %t229 = load i64, ptr %l93, !tbaa !24
  %t230 = icmp sle i64 %t228, %t229
  br i1 %t230, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_b2d60bcaef35f8ee_ec573b413169e46a)
  unreachable
bb42:
  %t232 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = load i64, ptr %l90, !tbaa !24
  %t235 = load i64, ptr %l92, !tbaa !24
  %t236 = getelementptr i8, ptr %t233, i64 %t234
  %t237 = sub i64 %t235, %t234
  %t238 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t236, 1
  %t240 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 0
  %t243 = load i64, ptr %l4, !tbaa !24
  %t246 = sub i64 %t242, %t243
  %t248 = load i32, ptr %l89, !tbaa !23
  %t250 = extractvalue { i64, ptr } %t239, 1
  %t251 = extractvalue { i64, ptr } %t239, 0
  %t253 = call i64 @read(i32 %t248, ptr %t250, i64 %t246)
  store i64 %t253, ptr %l103
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_b2d60bcaef35f8ee_ec573b413169e46a)
  unreachable
bb44:
  %t254 = load i64, ptr %l103, !tbaa !24
  store i64 %t254, ptr %l12, !tbaa !24
  %t255 = load i64, ptr %l12, !tbaa !24
  %t257 = icmp slt i64 %t255, 0
  br i1 %t257, label %bb45, label %bb46
bb45:
  %t259 = load i32, ptr %l1, !tbaa !23
  store i32 %t259, ptr %l106, !tbaa !23
  %t260 = call i32 @__olang_err()
  store i32 %t260, ptr %l107
  br label %bb47
bb46:
  br label %bb51
bb47:
  %t261 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t262 = load i32, ptr %l106, !tbaa !23
  %t263 = load i32, ptr %l107, !tbaa !23
  %t265 = call i32 @std_2fos_2ecloseAndRaise(ptr %v0, i32 %t262, i32 %t263, { i64, ptr } %t261)
  store i32 %t265, ptr %l109
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb49, label %ok.267, !prof !99
ok.267:
  br label %bb48
bb48:
  br label %bb50
bb49:
  %t268 = load i32, ptr %l109, !tbaa !23
  %t269 = lshr i32 %t268, 16
  %t270 = and i32 %t268, 65535
  %t271 = icmp eq i32 %t269, 1
  %t272 = select i1 %t271, i32 1, i32 0
  %t273 = icmp eq i32 %t268, 0
  %t274 = shl i32 %t272, 16
  %t275 = or i32 %t274, %t270
  %t276 = select i1 %t273, i32 0, i32 %t275
  call void @__olang_scope_close(ptr %s0)
  %t278 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t276, 0
  store { i32, { i64, ptr } } %t278, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t279 = load i64, ptr %l12, !tbaa !24
  %t281 = icmp eq i64 %t279, 0
  br i1 %t281, label %bb52, label %bb53
bb52:
  br label %bb56
bb53:
  br label %bb54
bb54:
  %t283 = load i64, ptr %l4, !tbaa !24
  %t284 = load i64, ptr %l12, !tbaa !24
  %t287 = add i64 %t283, %t284
  store i64 %t287, ptr %l4, !tbaa !24
  br label %bb55
bb55:
  br label %bb17
bb56:
  %t289 = load i32, ptr %l1, !tbaa !23
  %t291 = call i32 @close(i32 %t289)
  store i32 %t291, ptr %l117
  br label %bb57
bb57:
  %t292 = load i64, ptr %l4, !tbaa !24
  store i64 %t292, ptr %l118, !tbaa !24
  %t293 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  store i64 %t294, ptr %l119, !tbaa !24
  %t295 = icmp sge i64 0, 0
  br i1 %t295, label %bb58, label %bb59
bb58:
  %t297 = load i64, ptr %l118, !tbaa !24
  %t298 = icmp sle i64 0, %t297
  br i1 %t298, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_870dc790e95aa6eb_a67bfaf9489a2847)
  unreachable
bb60:
  %t300 = load i64, ptr %l118, !tbaa !24
  %t301 = load i64, ptr %l119, !tbaa !24
  %t302 = icmp sle i64 %t300, %t301
  br i1 %t302, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_870dc790e95aa6eb_a67bfaf9489a2847)
  unreachable
bb62:
  %t304 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = load i64, ptr %l118, !tbaa !24
  %t307 = getelementptr i8, ptr %t305, i64 0
  %t308 = sub i64 %t306, 0
  %t309 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t307, 1
  store { i64, ptr } %t310, ptr %l124, !tbaa !27
  %t312 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  store i64 %t313, ptr %l125, !tbaa !24
  %t314 = load i64, ptr %l125, !tbaa !24
  %t315 = mul i64 %t314, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t315)
  %t317 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  store { i64, ptr } %t318, ptr %l126, !tbaa !27
  %t319 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !27
  %t321 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = load i64, ptr %l125, !tbaa !24
  %t324 = mul i64 %t323, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t320, ptr %t322, i64 %t324, i1 false)
  %t325 = load { i64, ptr }, ptr %l126, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t328 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t325, 1
  store { i32, { i64, ptr } } %t328, ptr %rv
  br label %ret
bb63:
  call void @__olang_check_failed(ptr @olang_loc_870dc790e95aa6eb_a67bfaf9489a2847)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l22 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i32
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  store { i64, ptr } %t11, ptr %l1, !tbaa !27
  store i64 256, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l7, !tbaa !24
  %t14 = load i64, ptr %l7, !tbaa !24
  %t15 = icmp sge i64 %t14, 0
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l3, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = extractvalue { i64, ptr } %t23, 1
  %t30 = extractvalue { i64, ptr } %t23, 0
  %t32 = extractvalue { i64, ptr } %t25, 1
  %t33 = extractvalue { i64, ptr } %t25, 0
  %t35 = call i64 @readlink(ptr %t29, ptr %t32, i64 %t26)
  store i64 %t35, ptr %l15
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_3bbcea0c000efd36_21b55d08ecf81e22)
  unreachable
bb3:
  %t36 = load i64, ptr %l15, !tbaa !24
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = icmp eq i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb5, label %bb6
bb5:
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = mul i64 %t45, 2
  store i64 %t47, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l2, !tbaa !24
  store i64 %t49, ptr %l22, !tbaa !24
  %t50 = load i64, ptr %l22, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb8, label %bb9
bb8:
  %t53 = load i64, ptr %l22, !tbaa !24
  %t54 = mul i64 %t53, 1
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l3, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t62 = load i64, ptr %l2, !tbaa !24
  %t65 = extractvalue { i64, ptr } %t59, 1
  %t66 = extractvalue { i64, ptr } %t59, 0
  %t68 = extractvalue { i64, ptr } %t61, 1
  %t69 = extractvalue { i64, ptr } %t61, 0
  %t71 = call i64 @readlink(ptr %t65, ptr %t68, i64 %t62)
  store i64 %t71, ptr %l30
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_ff17d2e56a811dcb_410ea2db80d8aad7)
  unreachable
bb10:
  %t72 = load i64, ptr %l30, !tbaa !24
  store i64 %t72, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  br label %bb4
bb12:
  %t73 = load i64, ptr %l4, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t77 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t73, { i64, ptr } %t74)
  store i32 %t77, ptr %l33
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb14, label %ok.79, !prof !99
ok.79:
  br label %bb13
bb13:
  br label %bb15
bb14:
  %t80 = load i32, ptr %l33, !tbaa !23
  %t81 = lshr i32 %t80, 16
  %t82 = and i32 %t80, 65535
  %t83 = icmp eq i32 %t81, 1
  %t84 = select i1 %t83, i32 1, i32 0
  %t85 = icmp eq i32 %t80, 0
  %t86 = shl i32 %t84, 16
  %t87 = or i32 %t86, %t82
  %t88 = select i1 %t85, i32 0, i32 %t87
  call void @__olang_scope_close(ptr %s0)
  %t90 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t88, 0
  store { i32, { i64, ptr } } %t90, ptr %rv
  br label %ret
bb15:
  %t91 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t91, ptr %l35, !tbaa !27
  %t92 = load i64, ptr %l4, !tbaa !24
  store i64 %t92, ptr %l36, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  store i64 %t94, ptr %l37, !tbaa !24
  %t95 = icmp sge i64 0, 0
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t97 = load i64, ptr %l36, !tbaa !24
  %t98 = icmp sle i64 0, %t97
  br i1 %t98, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_d7f228265709f418_7e9f802c53b666ac)
  unreachable
bb18:
  %t100 = load i64, ptr %l36, !tbaa !24
  %t101 = load i64, ptr %l37, !tbaa !24
  %t102 = icmp sle i64 %t100, %t101
  br i1 %t102, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d7f228265709f418_7e9f802c53b666ac)
  unreachable
bb20:
  %t104 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = load i64, ptr %l36, !tbaa !24
  %t107 = getelementptr i8, ptr %t105, i64 0
  %t108 = sub i64 %t106, 0
  %t109 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t107, 1
  store { i64, ptr } %t110, ptr %l42, !tbaa !27
  %t112 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  store i64 %t113, ptr %l43, !tbaa !24
  %t114 = load i64, ptr %l43, !tbaa !24
  %t115 = mul i64 %t114, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t115)
  %t117 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l44, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = load i64, ptr %l43, !tbaa !24
  %t124 = mul i64 %t123, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t120, ptr %t122, i64 %t124, i1 false)
  %t125 = load { i64, ptr }, ptr %l44, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t128 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t125, 1
  store { i32, { i64, ptr } } %t128, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d7f228265709f418_7e9f802c53b666ac)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t16 = alloca { { i64, ptr }, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t15 = ptrtoint ptr %t14 to i64
  %t17 = getelementptr { { i64, ptr }, ptr }, ptr %t16, i32 0, i32 0
  store { i64, ptr } %t11, ptr %t17, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t19 = getelementptr { { i64, ptr }, ptr }, ptr %t16, i32 0, i32 1
  store ptr %s0, ptr %t19, !tbaa !28
  %t20 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_48, 0
  %t21 = insertvalue { ptr, ptr } %t20, ptr %t16, 1
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = extractvalue { ptr, ptr } %t21, 0
  %t25 = extractvalue { ptr, ptr } %t21, 1
  %t27 = call { i32, { i64, ptr } } @std_2fos_2ecopyOut(ptr %s0, ptr %v0, ptr %v1, ptr %t24, ptr %t25, { i64, ptr } %t22)
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l9
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb2, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l8
  br label %bb1
bb1:
  %t32 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t32, ptr %l4, !tbaa !27
  br label %bb3
bb2:
  %t33 = load i32, ptr %l9, !tbaa !23
  %t34 = lshr i32 %t33, 16
  %t35 = and i32 %t33, 65535
  %t36 = icmp eq i32 %t34, 1
  %t37 = select i1 %t36, i32 1, i32 0
  %t38 = icmp eq i32 %t33, 0
  %t39 = shl i32 %t37, 16
  %t40 = or i32 %t39, %t35
  %t41 = select i1 %t38, i32 0, i32 %t40
  call void @__olang_scope_close(ptr %s0)
  %t43 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t41, 0
  store { i32, { i64, ptr } } %t43, ptr %rv
  br label %ret
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t45 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t44, 1
  store { i32, { i64, ptr } } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = extractvalue { i64, ptr } %t11, 0
  %t16 = call i32 @remove(ptr %t14)
  store i32 %t16, ptr %l4
  br label %bb1
bb1:
  %t17 = load i32, ptr %l4, !tbaa !23
  %t18 = sext i32 %t17 to i64
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t18, { i64, ptr } %t19)
  store i32 %t22, ptr %l7
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb3, label %ok.24, !prof !99
ok.24:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t25 = load i32, ptr %l7, !tbaa !23
  %t26 = lshr i32 %t25, 16
  %t27 = and i32 %t25, 65535
  %t28 = icmp eq i32 %t26, 1
  %t29 = select i1 %t28, i32 1, i32 0
  %t30 = icmp eq i32 %t25, 0
  %t31 = shl i32 %t29, 16
  %t32 = or i32 %t31, %t27
  %t33 = select i1 %t30, i32 0, i32 %t32
  call void @__olang_scope_close(ptr %s0)
  store i32 %t33, ptr %rv
  br label %ret
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, [2 x i64] }
  %l47 = alloca i64
  %l49 = alloca { i64, [2 x i64] }
  %l53 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  %t102 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sgt i64 %t5, 1
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp eq i8 %t17, 47
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = sub i64 %t24, 1
  store i64 %t26, ptr %l1, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t28 = load i64, ptr %l1, !tbaa !24
  store i64 %t28, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t34, ptr %l21, !tbaa !27
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = sub i64 %t35, 1
  %t39 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i8, ptr %t40, i64 %t37
  %t42 = load i8, ptr %t41, !tbaa !32
  %t44 = icmp ne i8 %t42, 47
  store i1 %t44, ptr %l20, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l20, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = sub i64 %t49, 1
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb17
bb17:
  br label %bb10
bb18:
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t53, ptr %l29, !tbaa !27
  %t54 = load i64, ptr %l2, !tbaa !24
  store i64 %t54, ptr %l30, !tbaa !24
  %t55 = load i64, ptr %l1, !tbaa !24
  store i64 %t55, ptr %l31, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  store i64 %t57, ptr %l32, !tbaa !24
  %t58 = load i64, ptr %l30, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load i64, ptr %l30, !tbaa !24
  %t62 = load i64, ptr %l31, !tbaa !24
  %t63 = icmp sle i64 %t61, %t62
  br i1 %t63, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_9d6ebd177b1045e9_d85719897e835afd)
  unreachable
bb21:
  %t65 = load i64, ptr %l31, !tbaa !24
  %t66 = load i64, ptr %l32, !tbaa !24
  %t67 = icmp sle i64 %t65, %t66
  br i1 %t67, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_9d6ebd177b1045e9_d85719897e835afd)
  unreachable
bb23:
  %t69 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = load i64, ptr %l30, !tbaa !24
  %t72 = load i64, ptr %l31, !tbaa !24
  %t73 = getelementptr i8, ptr %t70, i64 %t71
  %t74 = sub i64 %t72, %t71
  %t75 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  store { i64, ptr } %t76, ptr %l3, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t80 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t78, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t80, ptr %l38
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_9d6ebd177b1045e9_d85719897e835afd)
  unreachable
bb25:
  %t81 = load i1, ptr %l38, !tbaa !21
  br i1 %t81, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb29
bb27:
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t82, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t84, ptr %l41
  br label %bb28
bb28:
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %l39, !tbaa !21
  br label %bb29
bb29:
  %t86 = load i1, ptr %l39, !tbaa !21
  br i1 %t86, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s3
  %t87 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t87, ptr %l43, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l44, !tbaa !24
  %t91 = load i64, ptr %l44, !tbaa !24
  %t92 = mul i64 %t91, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t92)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l45, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l44, !tbaa !24
  %t101 = mul i64 %t100, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %t99, i64 %t101, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [2 x i64] }, ptr %t102, i32 0, i32 0
  store i64 6, ptr %t103
  %t104 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t105 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t104, 0
  %t106 = getelementptr { i64, [2 x i64] }, ptr %t102, i32 0, i32 1
  store { { i64, ptr } } %t105, ptr %t106
  %t107 = load { i64, [2 x i64] }, ptr %t102
  store { i64, [2 x i64] } %t107, ptr %l46
  %t108 = call ptr @__olang_errpay_push()
  %t109 = ptrtoint ptr %t108 to i64
  store i64 %t109, ptr %l47, !tbaa !24
  %t110 = load i64, ptr %l47
  %t111 = inttoptr i64 %t110 to ptr
  %t113 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t111, ptr %l46)
  store { i64, [2 x i64] } %t113, ptr %l49
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t114 = load { i64, [2 x i64] }, ptr %l49
  %t115 = load i64, ptr %l47
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = call ptr @__olang_scope_alloc_a(ptr %t116, i64 24, i64 8)
  store { i64, [2 x i64] } %t114, ptr %t117
  call void @__olang_errpay_set(ptr %t117)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 65542, ptr %rv
  br label %ret
bb33:
  %t120 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t122 = call i32 @std_2fos_2eremoveTree(ptr %v0, { i64, ptr } %t120)
  store i32 %t122, ptr %l53
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb35, label %ok.124, !prof !99
ok.124:
  br label %bb34
bb34:
  br label %bb36
bb35:
  %t125 = load i32, ptr %l53, !tbaa !23
  %t126 = lshr i32 %t125, 16
  %t127 = and i32 %t125, 65535
  %t128 = icmp eq i32 %t126, 1
  %t129 = select i1 %t128, i32 1, i32 0
  %t130 = icmp eq i32 %t125, 0
  %t131 = shl i32 %t129, 16
  %t132 = or i32 %t131, %t127
  %t133 = select i1 %t130, i32 0, i32 %t132
  call void @__olang_scope_close(ptr %s0)
  store i32 %t133, ptr %rv
  br label %ret
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l8 = alloca i32
  %l11 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t15 = extractvalue { i64, ptr } %a1, 1
  %t16 = extractvalue { i64, ptr } %a1, 0
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t15, i64 %t16)
  %t21 = getelementptr i8, ptr %t20, i64 %t16
  call void @olang_textcopy(ptr %t21, ptr %t17, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t26 = extractvalue { i64, ptr } %t11, 1
  %t27 = extractvalue { i64, ptr } %t11, 0
  %t29 = extractvalue { i64, ptr } %t23, 1
  %t30 = extractvalue { i64, ptr } %t23, 0
  %t31 = call i32 @rename(ptr %t26, ptr %t29)
  store i32 %t31, ptr %l8
  br label %bb1
bb1:
  %t32 = load i32, ptr %l8, !tbaa !23
  %t33 = sext i32 %t32 to i64
  %t34 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t33, { i64, ptr } %t34)
  store i32 %t37, ptr %l11
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb3, label %ok.39, !prof !99
ok.39:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t40 = load i32, ptr %l11, !tbaa !23
  %t41 = lshr i32 %t40, 16
  %t42 = and i32 %t40, 65535
  %t43 = icmp eq i32 %t41, 1
  %t44 = select i1 %t43, i32 1, i32 0
  %t45 = icmp eq i32 %t40, 0
  %t46 = shl i32 %t44, 16
  %t47 = or i32 %t46, %t42
  %t48 = select i1 %t45, i32 0, i32 %t47
  call void @__olang_scope_close(ptr %s0)
  store i32 %t48, ptr %rv
  br label %ret
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fos_2eRun(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i32
  %l5 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a0, 1
  %t4 = extractvalue { i64, ptr } %a0, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = extractvalue { i64, ptr } %t11, 0
  %t16 = call i32 @system(ptr %t14)
  store i32 %t16, ptr %l5
  br label %bb1
bb1:
  %t17 = load i32, ptr %l5, !tbaa !23
  store i32 %t17, ptr %l1, !tbaa !23
  %t18 = load i32, ptr %l1, !tbaa !23
  %t20 = icmp slt i32 %t18, 0
  br i1 %t20, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i32 127, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = srem i32 %t23, 256
  %t27 = icmp ne i32 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i32, ptr %l1, !tbaa !23
  %t31 = srem i32 %t29, 128
  %t33 = add i32 128, %t31
  call void @__olang_scope_close(ptr %s0)
  store i32 %t33, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t35 = load i32, ptr %l1, !tbaa !23
  %t37 = sdiv i32 %t35, 256
  call void @__olang_scope_close(ptr %s0)
  store i32 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fos_2eRunOnStack(ptr %v0, i64 %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = extractvalue { ptr, ptr } %pg1, 0
  %t6 = extractvalue { ptr, ptr } %pg1, 1
  call void @__olang_run_on_stack(i64 %a0, ptr %t5, ptr %t6)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i1
  %l15 = alloca i32
  %l16 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i32
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i32 } @std_2fos_2eCreate(ptr %v0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, i32 } %t3, 1
  %t5 = extractvalue { i32, i32 } %t3, 0
  store i32 %t5, ptr %l6
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i32 %t4, ptr %l5
  br label %bb1
bb1:
  %t8 = load i32, ptr %l5, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  %t9 = load i32, ptr %l6, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  store i32 %t17, ptr %rv
  br label %ret
bb3:
  %t19 = load i32, ptr %l3, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @std_2fio_2eWrite(ptr %v1, i32 %t20, { i64, ptr } %a1)
  store i32 %t24, ptr %l10
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb5, label %ok.26, !prof !99
ok.26:
  br label %bb4
bb4:
  br label %bb13
bb5:
  %t27 = load i32, ptr %l10, !tbaa !23
  %t28 = ashr i32 %t27, 16
  %t30 = icmp eq i32 %t28, 1
  store i1 %t30, ptr %l12, !tbaa !21
  %t31 = load i32, ptr %l10, !tbaa !23
  %t32 = ashr i32 %t31, 16
  %t34 = icmp eq i32 %t32, 1
  br i1 %t34, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t36 = load i32, ptr %l2, !tbaa !23
  store i32 %t36, ptr %l15, !tbaa !23
  %t37 = call i32 @__olang_err()
  store i32 %t37, ptr %l16
  br label %bb9
bb9:
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = load i32, ptr %l15, !tbaa !23
  %t40 = load i32, ptr %l16, !tbaa !23
  %t42 = call i32 @std_2fos_2ecloseAndRaise(ptr %v0, i32 %t39, i32 %t40, { i64, ptr } %t38)
  store i32 %t42, ptr %l18
  %t43 = icmp ne i32 %t42, 0
  br i1 %t43, label %bb11, label %ok.44, !prof !99
ok.44:
  br label %bb10
bb10:
  br label %bb12
bb11:
  %t45 = load i32, ptr %l18, !tbaa !23
  %t46 = lshr i32 %t45, 16
  %t47 = and i32 %t45, 65535
  %t48 = icmp eq i32 %t46, 1
  %t49 = select i1 %t48, i32 1, i32 0
  %t50 = icmp eq i32 %t45, 0
  %t51 = shl i32 %t49, 16
  %t52 = or i32 %t51, %t47
  %t53 = select i1 %t50, i32 0, i32 %t52
  store i32 %t53, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t55 = load i32, ptr %l2, !tbaa !23
  %t57 = call i32 @std_2fos_2eClose(i32 %t55)
  store i32 %t57, ptr %l21
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb15, label %ok.59, !prof !99
ok.59:
  br label %bb14
bb14:
  br label %bb16
bb15:
  %t60 = load i32, ptr %l21, !tbaa !23
  %t61 = lshr i32 %t60, 16
  %t62 = and i32 %t60, 65535
  %t63 = icmp eq i32 %t61, 1
  %t64 = select i1 %t63, i32 1, i32 0
  %t65 = icmp eq i32 %t60, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t62
  %t68 = select i1 %t65, i32 0, i32 %t67
  store i32 %t68, ptr %rv
  br label %ret
bb16:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fos_2echeck(ptr %v0, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i32
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = icmp slt i64 %a0, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call i32 @__olang_err()
  store i32 %t5, ptr %l4
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t7 = load i32, ptr %l4, !tbaa !23
  %t9 = call i32 @std_2fos_2eraise(ptr %v0, i32 %t7, { i64, ptr } %a1)
  store i32 %t9, ptr %l6
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb5, label %ok.11, !prof !99
ok.11:
  br label %bb4
bb4:
  br label %bb6
bb5:
  %t12 = load i32, ptr %l6, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  store i32 %t20, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @std_2fos_2echurn() #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !24
  store i64 0, ptr %l1, !tbaa !24
  store i64 300, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = sdiv i64 %t21, %t22
  store i64 %t25, ptr %l14, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l14, !tbaa !24
  store i64 %t27, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l11, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  %t49 = call i64 @__olang_fmt_i64(ptr null, i64 %t45)
  %t50 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t52)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t45)
  %t55 = getelementptr i8, ptr %t53, i64 %t49
  call void @olang_textcopy(ptr %t55, ptr %t50, i64 %t51)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t53, 1
  %t59 = load i64, ptr %l0, !tbaa !24
  %t62 = extractvalue { i64, ptr } %t57, 0
  %t65 = add i64 %t59, %t62
  store i64 %t65, ptr %l0, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l5, !tbaa !24
  br label %bb7
bb12:
  %t71 = load i64, ptr %l0, !tbaa !24
  store i64 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @std_2fos_2ecloseAndRaise(ptr %v0, i32 %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l4 = alloca i32
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @close(i32 %a0)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t8 = call i32 @std_2fos_2eraise(ptr %v0, i32 %a1, { i64, ptr } %a2)
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb3, label %ok.10, !prof !99
ok.10:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t11 = load i32, ptr %l7, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  store i32 %t19, ptr %rv
  br label %ret
bb4:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2ecopyOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0c, ptr %a0e, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { ptr, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { ptr, ptr }
  %l8 = alloca i64
  %l11 = alloca i32
  %l13 = alloca i64
  %l18 = alloca i64
  %l24 = alloca i32
  %l26 = alloca i64
  %l27 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %pf0 = insertvalue { ptr, ptr } undef, ptr %a0c, 0
  %pg0 = insertvalue { ptr, ptr } %pf0, ptr %a0e, 1
  store { ptr, ptr } %pg0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { ptr, ptr }, ptr %l0
  store { ptr, ptr } %t1, ptr %l5
  %t2 = icmp sge i64 0, 0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = mul i64 0, 1
  %t5 = insertvalue { i64, ptr } undef, i64 0, 0
  %t6 = insertvalue { i64, ptr } %t5, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t7 = load { ptr, ptr }, ptr %l5
  %t8 = extractvalue { ptr, ptr } %t7, 0
  %t9 = extractvalue { ptr, ptr } %t7, 1
  %t11 = call i64 %t8(ptr %t9, ptr %s0, { i64, ptr } %t6)
  store i64 %t11, ptr %l8
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_7455114053b9a685_f9a96b9bd4adb589)
  unreachable
bb3:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call i32 @std_2fos_2echeck(ptr %v1, i64 %t13, { i64, ptr } %t14)
  store i32 %t17, ptr %l11
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb6, label %ok.19, !prof !99
ok.19:
  br label %bb5
bb5:
  br label %bb7
bb6:
  %t20 = load i32, ptr %l11, !tbaa !23
  %t21 = lshr i32 %t20, 16
  %t22 = and i32 %t20, 65535
  %t23 = icmp eq i32 %t21, 1
  %t24 = select i1 %t23, i32 1, i32 0
  %t25 = icmp eq i32 %t20, 0
  %t26 = shl i32 %t24, 16
  %t27 = or i32 %t26, %t22
  %t28 = select i1 %t25, i32 0, i32 %t27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t30 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t28, 0
  store { i32, { i64, ptr } } %t30, ptr %rv
  br label %ret
bb7:
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %l13, !tbaa !24
  %t32 = load i64, ptr %l13, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load i64, ptr %l13, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  %t41 = load { ptr, ptr }, ptr %l0
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = extractvalue { ptr, ptr } %t41, 0
  %t45 = extractvalue { ptr, ptr } %t41, 1
  %t47 = call i64 %t44(ptr %t45, ptr %s1, { i64, ptr } %t42)
  store i64 %t47, ptr %l18
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_d680568c47c09218_ee59193b16d39a3c)
  unreachable
bb10:
  %t48 = load i64, ptr %l18, !tbaa !24
  store i64 %t48, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l2, !tbaa !24
  %t53 = icmp sle i64 %t49, %t50
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t59 = call i32 @std_2fos_2echeck(ptr %v1, i64 %t55, { i64, ptr } %t56)
  store i32 %t59, ptr %l24
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb14, label %ok.61, !prof !99
ok.61:
  br label %bb13
bb12:
  br label %bb22
bb13:
  br label %bb15
bb14:
  %t62 = load i32, ptr %l24, !tbaa !23
  %t63 = lshr i32 %t62, 16
  %t64 = and i32 %t62, 65535
  %t65 = icmp eq i32 %t63, 1
  %t66 = select i1 %t65, i32 1, i32 0
  %t67 = icmp eq i32 %t62, 0
  %t68 = shl i32 %t66, 16
  %t69 = or i32 %t68, %t64
  %t70 = select i1 %t67, i32 0, i32 %t69
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t72 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t70, 0
  store { i32, { i64, ptr } } %t72, ptr %rv
  br label %ret
bb15:
  %t73 = load i64, ptr %l4, !tbaa !24
  store i64 %t73, ptr %l26, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l27, !tbaa !24
  %t76 = icmp sge i64 0, 0
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t78 = load i64, ptr %l26, !tbaa !24
  %t79 = icmp sle i64 0, %t78
  br i1 %t79, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_a97aa98585cf6243_3a57acf5b7e1165f)
  unreachable
bb18:
  %t81 = load i64, ptr %l26, !tbaa !24
  %t82 = load i64, ptr %l27, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_a97aa98585cf6243_3a57acf5b7e1165f)
  unreachable
bb20:
  %t85 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l26, !tbaa !24
  %t88 = getelementptr i8, ptr %t86, i64 0
  %t89 = sub i64 %t87, 0
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  store { i64, ptr } %t91, ptr %l32, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  store i64 %t94, ptr %l33, !tbaa !24
  %t95 = load i64, ptr %l33, !tbaa !24
  %t96 = mul i64 %t95, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t96)
  %t98 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %l34, !tbaa !27
  %t100 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = load i64, ptr %l33, !tbaa !24
  %t105 = mul i64 %t104, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t101, ptr %t103, i64 %t105, i1 false)
  %t106 = load { i64, ptr }, ptr %l34, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t109 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t106, 1
  store { i32, { i64, ptr } } %t109, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_a97aa98585cf6243_3a57acf5b7e1165f)
  unreachable
bb22:
  %t110 = load i64, ptr %l4, !tbaa !24
  store i64 %t110, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb23
bb23:
  br label %bb4
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i32 } @std_2fos_2ememFile() #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l3 = alloca i32
  %l6 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l1, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = call i32 @memfd_create(ptr %t3, i32 1)
  store i32 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i32, ptr %l3, !tbaa !23
  store i32 %t6, ptr %l0, !tbaa !23
  %t7 = load i32, ptr %l0, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t11 = call i32 @std_2fos_2echeck(ptr %s0, i64 %t9, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t11, ptr %l6
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb3, label %ok.13, !prof !99
ok.13:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t14 = load i32, ptr %l6, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t14, 0
  %t20 = shl i32 %t18, 16
  %t21 = or i32 %t20, %t16
  %t22 = select i1 %t19, i32 0, i32 %t21
  call void @__olang_scope_close(ptr %s0)
  %t24 = insertvalue { i32, i32 } zeroinitializer, i32 %t22, 0
  store { i32, i32 } %t24, ptr %rv
  br label %ret
bb4:
  %t25 = load i32, ptr %l0, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t27 = insertvalue { i32, i32 } zeroinitializer, i32 %t25, 1
  store { i32, i32 } %t27, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @std_2fos_2eraise(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l23 = alloca { i64, [2 x i64] }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, [2 x i64] }
  %l33 = alloca i64
  %l35 = alloca { i64, [2 x i64] }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, [2 x i64] }
  %l45 = alloca i64
  %l47 = alloca { i64, [2 x i64] }
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, [2 x i64] }
  %l57 = alloca i64
  %l59 = alloca { i64, [2 x i64] }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, [2 x i64] }
  %l69 = alloca i64
  %l71 = alloca { i64, [2 x i64] }
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, [2 x i64] }
  %l79 = alloca i64
  %l81 = alloca { i64, [2 x i64] }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i32
  %t20 = alloca { i64, [2 x i64] }, align 8
  %t57 = alloca { i64, [2 x i64] }, align 8
  %t94 = alloca { i64, [2 x i64] }, align 8
  %t131 = alloca { i64, [2 x i64] }, align 8
  %t168 = alloca { i64, [2 x i64] }, align 8
  %t205 = alloca { i64, [2 x i64] }, align 8
  %t238 = alloca { i64, [2 x i64] }, align 8
  store i32 %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp eq i32 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t5, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l7, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 0, ptr %t21
  %t22 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t23 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t22, 0
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  store { { i64, ptr } } %t23, ptr %t24
  %t25 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t25, ptr %l8
  %t26 = call ptr @__olang_errpay_push()
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l9, !tbaa !24
  %t28 = load i64, ptr %l9
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t29, ptr %l8)
  store { i64, [2 x i64] } %t31, ptr %l11
  br label %bb4
bb4:
  %t32 = load { i64, [2 x i64] }, ptr %l11
  %t33 = load i64, ptr %l9
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_a(ptr %t34, i64 24, i64 8)
  store { i64, [2 x i64] } %t32, ptr %t35
  call void @__olang_errpay_set(ptr %t35)
  call void @__olang_scope_close(ptr %s1)
  store i32 65536, ptr %rv
  br label %ret
bb5:
  %t38 = load i32, ptr %l0, !tbaa !23
  %t40 = icmp eq i32 %t38, 2
  br i1 %t40, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb10
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t42, ptr %l17, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l18, !tbaa !24
  %t46 = load i64, ptr %l18, !tbaa !24
  %t47 = mul i64 %t46, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l19, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l18, !tbaa !24
  %t56 = mul i64 %t55, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t52, ptr %t54, i64 %t56, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 0
  store i64 1, ptr %t58
  %t59 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t60 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t59, 0
  %t61 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 1
  store { { i64, ptr } } %t60, ptr %t61
  %t62 = load { i64, [2 x i64] }, ptr %t57
  store { i64, [2 x i64] } %t62, ptr %l20
  %t63 = call ptr @__olang_errpay_push()
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l21, !tbaa !24
  %t65 = load i64, ptr %l21
  %t66 = inttoptr i64 %t65 to ptr
  %t68 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t66, ptr %l20)
  store { i64, [2 x i64] } %t68, ptr %l23
  br label %bb9
bb9:
  %t69 = load { i64, [2 x i64] }, ptr %l23
  %t70 = load i64, ptr %l21
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call ptr @__olang_scope_alloc_a(ptr %t71, i64 24, i64 8)
  store { i64, [2 x i64] } %t69, ptr %t72
  call void @__olang_errpay_set(ptr %t72)
  call void @__olang_scope_close(ptr %s2)
  store i32 65537, ptr %rv
  br label %ret
bb10:
  %t75 = load i32, ptr %l0, !tbaa !23
  %t77 = icmp eq i32 %t75, 3
  br i1 %t77, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb15
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t79, ptr %l29, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l30, !tbaa !24
  %t83 = load i64, ptr %l30, !tbaa !24
  %t84 = mul i64 %t83, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t84)
  %t86 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  store { i64, ptr } %t87, ptr %l31, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l30, !tbaa !24
  %t93 = mul i64 %t92, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t89, ptr %t91, i64 %t93, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 0
  store i64 2, ptr %t95
  %t96 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t97 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t96, 0
  %t98 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 1
  store { { i64, ptr } } %t97, ptr %t98
  %t99 = load { i64, [2 x i64] }, ptr %t94
  store { i64, [2 x i64] } %t99, ptr %l32
  %t100 = call ptr @__olang_errpay_push()
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l33, !tbaa !24
  %t102 = load i64, ptr %l33
  %t103 = inttoptr i64 %t102 to ptr
  %t105 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t103, ptr %l32)
  store { i64, [2 x i64] } %t105, ptr %l35
  br label %bb14
bb14:
  %t106 = load { i64, [2 x i64] }, ptr %l35
  %t107 = load i64, ptr %l33
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = call ptr @__olang_scope_alloc_a(ptr %t108, i64 24, i64 8)
  store { i64, [2 x i64] } %t106, ptr %t109
  call void @__olang_errpay_set(ptr %t109)
  call void @__olang_scope_close(ptr %s3)
  store i32 65538, ptr %rv
  br label %ret
bb15:
  %t112 = load i32, ptr %l0, !tbaa !23
  %t114 = icmp eq i32 %t112, 4
  br i1 %t114, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb20
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t116 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t116, ptr %l41, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  store i64 %t119, ptr %l42, !tbaa !24
  %t120 = load i64, ptr %l42, !tbaa !24
  %t121 = mul i64 %t120, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t121)
  %t123 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  store { i64, ptr } %t124, ptr %l43, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = load i64, ptr %l42, !tbaa !24
  %t130 = mul i64 %t129, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t126, ptr %t128, i64 %t130, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t131
  %t132 = getelementptr { i64, [2 x i64] }, ptr %t131, i32 0, i32 0
  store i64 3, ptr %t132
  %t133 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t134 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t133, 0
  %t135 = getelementptr { i64, [2 x i64] }, ptr %t131, i32 0, i32 1
  store { { i64, ptr } } %t134, ptr %t135
  %t136 = load { i64, [2 x i64] }, ptr %t131
  store { i64, [2 x i64] } %t136, ptr %l44
  %t137 = call ptr @__olang_errpay_push()
  %t138 = ptrtoint ptr %t137 to i64
  store i64 %t138, ptr %l45, !tbaa !24
  %t139 = load i64, ptr %l45
  %t140 = inttoptr i64 %t139 to ptr
  %t142 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t140, ptr %l44)
  store { i64, [2 x i64] } %t142, ptr %l47
  br label %bb19
bb19:
  %t143 = load { i64, [2 x i64] }, ptr %l47
  %t144 = load i64, ptr %l45
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call ptr @__olang_scope_alloc_a(ptr %t145, i64 24, i64 8)
  store { i64, [2 x i64] } %t143, ptr %t146
  call void @__olang_errpay_set(ptr %t146)
  call void @__olang_scope_close(ptr %s4)
  store i32 65539, ptr %rv
  br label %ret
bb20:
  %t149 = load i32, ptr %l0, !tbaa !23
  %t151 = icmp eq i32 %t149, 5
  br i1 %t151, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb25
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t153 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t153, ptr %l53, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 0
  store i64 %t156, ptr %l54, !tbaa !24
  %t157 = load i64, ptr %l54, !tbaa !24
  %t158 = mul i64 %t157, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t158)
  %t160 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  store { i64, ptr } %t161, ptr %l55, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = load i64, ptr %l54, !tbaa !24
  %t167 = mul i64 %t166, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t163, ptr %t165, i64 %t167, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t168
  %t169 = getelementptr { i64, [2 x i64] }, ptr %t168, i32 0, i32 0
  store i64 4, ptr %t169
  %t170 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t171 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t170, 0
  %t172 = getelementptr { i64, [2 x i64] }, ptr %t168, i32 0, i32 1
  store { { i64, ptr } } %t171, ptr %t172
  %t173 = load { i64, [2 x i64] }, ptr %t168
  store { i64, [2 x i64] } %t173, ptr %l56
  %t174 = call ptr @__olang_errpay_push()
  %t175 = ptrtoint ptr %t174 to i64
  store i64 %t175, ptr %l57, !tbaa !24
  %t176 = load i64, ptr %l57
  %t177 = inttoptr i64 %t176 to ptr
  %t179 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t177, ptr %l56)
  store { i64, [2 x i64] } %t179, ptr %l59
  br label %bb24
bb24:
  %t180 = load { i64, [2 x i64] }, ptr %l59
  %t181 = load i64, ptr %l57
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = call ptr @__olang_scope_alloc_a(ptr %t182, i64 24, i64 8)
  store { i64, [2 x i64] } %t180, ptr %t183
  call void @__olang_errpay_set(ptr %t183)
  call void @__olang_scope_close(ptr %s5)
  store i32 65540, ptr %rv
  br label %ret
bb25:
  %t186 = load i32, ptr %l0, !tbaa !23
  %t188 = icmp eq i32 %t186, 6
  br i1 %t188, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb30
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t190 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t190, ptr %l65, !tbaa !27
  %t192 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  store i64 %t193, ptr %l66, !tbaa !24
  %t194 = load i64, ptr %l66, !tbaa !24
  %t195 = mul i64 %t194, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t195)
  %t197 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  store { i64, ptr } %t198, ptr %l67, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = load i64, ptr %l66, !tbaa !24
  %t204 = mul i64 %t203, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t200, ptr %t202, i64 %t204, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t205
  %t206 = getelementptr { i64, [2 x i64] }, ptr %t205, i32 0, i32 0
  store i64 5, ptr %t206
  %t207 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t208 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t207, 0
  %t209 = getelementptr { i64, [2 x i64] }, ptr %t205, i32 0, i32 1
  store { { i64, ptr } } %t208, ptr %t209
  %t210 = load { i64, [2 x i64] }, ptr %t205
  store { i64, [2 x i64] } %t210, ptr %l68
  %t211 = call ptr @__olang_errpay_push()
  %t212 = ptrtoint ptr %t211 to i64
  store i64 %t212, ptr %l69, !tbaa !24
  %t213 = load i64, ptr %l69
  %t214 = inttoptr i64 %t213 to ptr
  %t216 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t214, ptr %l68)
  store { i64, [2 x i64] } %t216, ptr %l71
  br label %bb29
bb29:
  %t217 = load { i64, [2 x i64] }, ptr %l71
  %t218 = load i64, ptr %l69
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = call ptr @__olang_scope_alloc_a(ptr %t219, i64 24, i64 8)
  store { i64, [2 x i64] } %t217, ptr %t220
  call void @__olang_errpay_set(ptr %t220)
  call void @__olang_scope_close(ptr %s6)
  store i32 65541, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t223 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t223, ptr %l75, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  store i64 %t226, ptr %l76, !tbaa !24
  %t227 = load i64, ptr %l76, !tbaa !24
  %t228 = mul i64 %t227, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t228)
  %t230 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  store { i64, ptr } %t231, ptr %l77, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = load i64, ptr %l76, !tbaa !24
  %t237 = mul i64 %t236, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t233, ptr %t235, i64 %t237, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [2 x i64] }, ptr %t238, i32 0, i32 0
  store i64 6, ptr %t239
  %t240 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t241 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t240, 0
  %t242 = getelementptr { i64, [2 x i64] }, ptr %t238, i32 0, i32 1
  store { { i64, ptr } } %t241, ptr %t242
  %t243 = load { i64, [2 x i64] }, ptr %t238
  store { i64, [2 x i64] } %t243, ptr %l78
  %t244 = call ptr @__olang_errpay_push()
  %t245 = ptrtoint ptr %t244 to i64
  store i64 %t245, ptr %l79, !tbaa !24
  %t246 = load i64, ptr %l79
  %t247 = inttoptr i64 %t246 to ptr
  %t249 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t247, ptr %l78)
  store { i64, [2 x i64] } %t249, ptr %l81
  br label %bb34
bb34:
  %t250 = load { i64, [2 x i64] }, ptr %l81
  %t251 = load i64, ptr %l79
  %t252 = inttoptr i64 %t251 to ptr
  %t253 = call ptr @__olang_scope_alloc_a(ptr %t252, i64 24, i64 8)
  store { i64, [2 x i64] } %t250, ptr %t253
  call void @__olang_errpay_set(ptr %t253)
  call void @__olang_scope_close(ptr %s7)
  store i32 65542, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_6e884a0c8190443b_54808bbd727a9dff)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fos_2ereadBack(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l21 = alloca i32
  %l22 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i32
  %l38 = alloca i32
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, [2 x i64] }
  %l47 = alloca i64
  %l49 = alloca { i64, [2 x i64] }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t123 = alloca { i64, [2 x i64] }, align 8
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = call i64 @lseek(i32 %t1, i64 0, i32 2)
  store i64 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i64, ptr %l6, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = call i32 @__olang_err()
  store i32 %t9, ptr %l9
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t10 = load i32, ptr %l9, !tbaa !23
  %t11 = call i32 @std_2fos_2eraise(ptr %s1, i32 %t10, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i32 %t11, ptr %l10
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb6, label %ok.13, !prof !99
ok.13:
  br label %bb5
bb5:
  br label %bb7
bb6:
  %t14 = load i32, ptr %l10, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t14, 0
  %t20 = shl i32 %t18, 16
  %t21 = or i32 %t20, %t16
  %t22 = select i1 %t19, i32 0, i32 %t21
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t24 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t22, 0
  store { i32, { i64, ptr } } %t24, ptr %rv
  br label %ret
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb8
bb8:
  %t25 = load i32, ptr %l0, !tbaa !23
  %t27 = call i64 @lseek(i32 %t25, i64 0, i32 0)
  store i64 %t27, ptr %l13
  br label %bb9
bb9:
  %t28 = load i64, ptr %l1, !tbaa !24
  store i64 %t28, ptr %l14, !tbaa !24
  %t29 = load i64, ptr %l14, !tbaa !24
  %t30 = icmp sge i64 %t29, 0
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t32 = load i64, ptr %l14, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_63206310f1419a1b_2cb9bc5fa11cb777)
  unreachable
bb12:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb13, label %bb14
bb13:
  br label %bb35
bb14:
  br label %bb15
bb15:
  %t46 = load i32, ptr %l0, !tbaa !23
  store i32 %t46, ptr %l21, !tbaa !23
  %t47 = load i64, ptr %l3, !tbaa !24
  store i64 %t47, ptr %l22, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l24, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  store i64 %t52, ptr %l25, !tbaa !24
  %t53 = load i64, ptr %l22, !tbaa !24
  %t54 = icmp sge i64 %t53, 0
  br i1 %t54, label %bb16, label %bb17
bb16:
  %t56 = load i64, ptr %l22, !tbaa !24
  %t57 = load i64, ptr %l24, !tbaa !24
  %t58 = icmp sle i64 %t56, %t57
  br i1 %t58, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_57657329f9419e06_2a1a8642ca70aa5a)
  unreachable
bb18:
  %t60 = load i64, ptr %l24, !tbaa !24
  %t61 = load i64, ptr %l25, !tbaa !24
  %t62 = icmp sle i64 %t60, %t61
  br i1 %t62, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_57657329f9419e06_2a1a8642ca70aa5a)
  unreachable
bb20:
  %t64 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l22, !tbaa !24
  %t67 = load i64, ptr %l24, !tbaa !24
  %t68 = getelementptr i8, ptr %t65, i64 %t66
  %t69 = sub i64 %t67, %t66
  %t70 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  %t72 = load i64, ptr %l1, !tbaa !24
  %t73 = load i64, ptr %l3, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t78 = load i32, ptr %l21, !tbaa !23
  %t80 = extractvalue { i64, ptr } %t71, 1
  %t81 = extractvalue { i64, ptr } %t71, 0
  %t83 = call i64 @read(i32 %t78, ptr %t80, i64 %t76)
  store i64 %t83, ptr %l34
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_57657329f9419e06_2a1a8642ca70aa5a)
  unreachable
bb22:
  %t84 = load i64, ptr %l34, !tbaa !24
  store i64 %t84, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l4, !tbaa !24
  %t87 = icmp slt i64 %t85, 0
  br i1 %t87, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t89 = call i32 @__olang_err()
  store i32 %t89, ptr %l37
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t90 = load i32, ptr %l37, !tbaa !23
  %t91 = call i32 @std_2fos_2eraise(ptr %s3, i32 %t90, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i32 %t91, ptr %l38
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb27, label %ok.93, !prof !99
ok.93:
  br label %bb26
bb26:
  br label %bb28
bb27:
  %t94 = load i32, ptr %l38, !tbaa !23
  %t95 = lshr i32 %t94, 16
  %t96 = and i32 %t94, 65535
  %t97 = icmp eq i32 %t95, 1
  %t98 = select i1 %t97, i32 1, i32 0
  %t99 = icmp eq i32 %t94, 0
  %t100 = shl i32 %t98, 16
  %t101 = or i32 %t100, %t96
  %t102 = select i1 %t99, i32 0, i32 %t101
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t104 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t102, 0
  store { i32, { i64, ptr } } %t104, ptr %rv
  br label %ret
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb29:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t107 = icmp eq i64 %t105, 0
  br i1 %t107, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l42, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t109, ptr %l43, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  store i64 %t111, ptr %l44, !tbaa !24
  %t112 = load i64, ptr %l44, !tbaa !24
  %t113 = mul i64 %t112, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l45, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l44, !tbaa !24
  %t122 = mul i64 %t121, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t118, ptr %t120, i64 %t122, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [2 x i64] }, ptr %t123, i32 0, i32 0
  store i64 6, ptr %t124
  %t125 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t126 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t125, 0
  %t127 = getelementptr { i64, [2 x i64] }, ptr %t123, i32 0, i32 1
  store { { i64, ptr } } %t126, ptr %t127
  %t128 = load { i64, [2 x i64] }, ptr %t123
  store { i64, [2 x i64] } %t128, ptr %l46
  %t129 = call ptr @__olang_errpay_push()
  %t130 = ptrtoint ptr %t129 to i64
  store i64 %t130, ptr %l47, !tbaa !24
  %t131 = load i64, ptr %l47
  %t132 = inttoptr i64 %t131 to ptr
  %t134 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t132, ptr %l46)
  store { i64, [2 x i64] } %t134, ptr %l49
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t135 = load { i64, [2 x i64] }, ptr %l49
  %t136 = load i64, ptr %l47
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = call ptr @__olang_scope_alloc_a(ptr %t137, i64 24, i64 8)
  store { i64, [2 x i64] } %t135, ptr %t138
  call void @__olang_errpay_set(ptr %t138)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t141 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65542, 0
  store { i32, { i64, ptr } } %t141, ptr %rv
  br label %ret
bb33:
  %t142 = load i64, ptr %l3, !tbaa !24
  %t143 = load i64, ptr %l4, !tbaa !24
  %t146 = add i64 %t142, %t143
  store i64 %t146, ptr %l3, !tbaa !24
  br label %bb34
bb34:
  br label %bb12
bb35:
  %t148 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t148, ptr %l55, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l56, !tbaa !24
  %t151 = load i64, ptr %l56, !tbaa !24
  %t152 = mul i64 %t151, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t152)
  %t154 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l57, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l56, !tbaa !24
  %t161 = mul i64 %t160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %t159, i64 %t161, i1 false)
  %t162 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t165 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t162, 1
  store { i32, { i64, ptr } } %t165, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @std_2fos_2eremoveTree(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca i32
  %l16 = alloca i32
  %l21 = alloca i1
  %l26 = alloca i32
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l38 = alloca { i64, ptr }
  %l45 = alloca i32
  %l51 = alloca i32
  %l54 = alloca i32
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = getelementptr i8, ptr %t14, i64 %t10
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t14, 1
  store { i64, ptr } %t17, ptr %l1, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t19, 1
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = call i32 @remove(ptr %t22)
  store i32 %t24, ptr %l14
  br label %bb4
bb4:
  %t25 = load i32, ptr %l14, !tbaa !23
  %t26 = icmp eq i32 %t25, 0
  br i1 %t26, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t28 = call i32 @__olang_err()
  store i32 %t28, ptr %l16
  br label %bb8
bb8:
  %t29 = load i32, ptr %l16, !tbaa !23
  store i32 %t29, ptr %l2, !tbaa !23
  %t30 = load i32, ptr %l2, !tbaa !23
  %t32 = icmp eq i32 %t30, 1
  br i1 %t32, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t34 = load i32, ptr %l2, !tbaa !23
  %t36 = icmp ne i32 %t34, 6
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load i32, ptr %l2, !tbaa !23
  %t40 = icmp ne i32 %t38, 2
  store i1 %t40, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb15, label %bb16
bb15:
  %t43 = load i32, ptr %l2, !tbaa !23
  %t44 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call i32 @std_2fos_2eraise(ptr %v0, i32 %t43, { i64, ptr } %t44)
  store i32 %t47, ptr %l26
  %t48 = icmp ne i32 %t47, 0
  br i1 %t48, label %bb18, label %ok.49, !prof !99
ok.49:
  br label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb19
bb18:
  %t50 = load i32, ptr %l26, !tbaa !23
  %t51 = lshr i32 %t50, 16
  %t52 = and i32 %t50, 65535
  %t53 = icmp eq i32 %t51, 1
  %t54 = select i1 %t53, i32 1, i32 0
  %t55 = icmp eq i32 %t50, 0
  %t56 = shl i32 %t54, 16
  %t57 = or i32 %t56, %t52
  %t58 = select i1 %t55, i32 0, i32 %t57
  call void @__olang_scope_close(ptr %s0)
  store i32 %t58, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s6
  %t60 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %s6, { i64, ptr } %t60)
  %t63 = extractvalue { i32, { i64, ptr } } %t62, 1
  %t64 = extractvalue { i32, { i64, ptr } } %t62, 0
  store i32 %t64, ptr %l30
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb22, label %ok.66, !prof !99
ok.66:
  store { i64, ptr } %t63, ptr %l29
  br label %bb21
bb21:
  %t67 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t67, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  store i64 %t70, ptr %l5, !tbaa !24
  br label %bb23
bb22:
  %t72 = load i32, ptr %l30, !tbaa !23
  %t73 = lshr i32 %t72, 16
  %t74 = and i32 %t72, 65535
  %t75 = icmp eq i32 %t73, 1
  %t76 = select i1 %t75, i32 1, i32 0
  %t77 = icmp eq i32 %t72, 0
  %t78 = shl i32 %t76, 16
  %t79 = or i32 %t78, %t74
  %t80 = select i1 %t77, i32 0, i32 %t79
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t80, ptr %rv
  br label %ret
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t82 = load i64, ptr %l4, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb25:
  br label %bb26
bb26:
  %t90 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t90, ptr %l38, !tbaa !27
  %t91 = load i64, ptr %l4, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %t94, i64 %t91
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !37
  %t98 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t98, 1
  %t102 = extractvalue { i64, ptr } %t98, 0
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t105 = add i64 %t102, %t104
  %t107 = extractvalue { i64, ptr } %t96, 1
  %t108 = extractvalue { i64, ptr } %t96, 0
  %t109 = add i64 %t105, %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t101, i64 %t102)
  %t111 = getelementptr i8, ptr %t110, i64 %t102
  call void @olang_textcopy(ptr %t111, ptr %t103, i64 %t104)
  %t112 = getelementptr i8, ptr %t111, i64 %t104
  call void @olang_textcopy(ptr %t112, ptr %t107, i64 %t108)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t110, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } %t114, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t123 = call i32 @std_2fos_2eremoveTree(ptr %s7, { i64, ptr } %t121)
  store i32 %t123, ptr %l45
  %t124 = icmp ne i32 %t123, 0
  br i1 %t124, label %bb28, label %ok.125, !prof !99
ok.125:
  br label %bb27
bb27:
  br label %bb29
bb28:
  %t126 = load i32, ptr %l45, !tbaa !23
  %t127 = lshr i32 %t126, 16
  %t128 = and i32 %t126, 65535
  %t129 = icmp eq i32 %t127, 1
  %t130 = select i1 %t129, i32 1, i32 0
  %t131 = icmp eq i32 %t126, 0
  %t132 = shl i32 %t130, 16
  %t133 = or i32 %t132, %t128
  %t134 = select i1 %t131, i32 0, i32 %t133
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t134, ptr %rv
  br label %ret
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb30
bb30:
  %t136 = load i64, ptr %l4, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l4, !tbaa !24
  br label %bb23
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb32:
  %t140 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t140, 1
  %t144 = extractvalue { i64, ptr } %t140, 0
  %t145 = call i32 @remove(ptr %t143)
  store i32 %t145, ptr %l51
  br label %bb33
bb33:
  %t146 = load i32, ptr %l51, !tbaa !23
  %t147 = sext i32 %t146 to i64
  %t148 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t151 = call i32 @std_2fos_2echeck(ptr %v0, i64 %t147, { i64, ptr } %t148)
  store i32 %t151, ptr %l54
  %t152 = icmp ne i32 %t151, 0
  br i1 %t152, label %bb35, label %ok.153, !prof !99
ok.153:
  br label %bb34
bb34:
  br label %bb36
bb35:
  %t154 = load i32, ptr %l54, !tbaa !23
  %t155 = lshr i32 %t154, 16
  %t156 = and i32 %t154, 65535
  %t157 = icmp eq i32 %t155, 1
  %t158 = select i1 %t157, i32 1, i32 0
  %t159 = icmp eq i32 %t154, 0
  %t160 = shl i32 %t158, 16
  %t161 = or i32 %t160, %t156
  %t162 = select i1 %t159, i32 0, i32 %t161
  call void @__olang_scope_close(ptr %s0)
  store i32 %t162, ptr %rv
  br label %ret
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fos_2estd_2fos_3aProcess_2eKill(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/os:Process", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/os:Process", ptr %t8, i32 0, i32 0
  %t11 = load i32, ptr %t10, !tbaa !23
  %t13 = call i32 @kill(i32 %t11, i32 9)
  store i32 %t13, ptr %l6
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local i32 @std_2fos_2estd_2fos_3aProcess_2ePid(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/os:Process", ptr %a0, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eWait(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca [1 x i32]
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
  %l19 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l25 = alloca %"std/os:Output"
  %l28 = alloca %"std/os:Output"
  %l29 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:Output" }
  %t20 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/os:Process", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l7, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 6, ptr %t21
  %t22 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t23 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t22, 0
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  store { { i64, ptr } } %t23, ptr %t24
  %t25 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t25, ptr %l8
  %t26 = call ptr @__olang_errpay_push()
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l9, !tbaa !24
  %t28 = load i64, ptr %l9
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t29, ptr %l8)
  store { i64, [2 x i64] } %t31, ptr %l11
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t32 = load { i64, [2 x i64] }, ptr %l11
  %t33 = load i64, ptr %l9
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_a(ptr %t34, i64 24, i64 8)
  store { i64, [2 x i64] } %t32, ptr %t35
  call void @__olang_errpay_set(ptr %t35)
  call void @__olang_scope_close(ptr %s1)
  %t38 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 65542, 0
  store { i32, %"std/os:Output" } %t38, ptr %rv
  br label %ret
bb4:
  %t39 = insertvalue [1 x i32] undef, i32 0, 0
  store [1 x i32] %t39, ptr %l1
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/os:Process", ptr %t41, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = insertvalue { i64, ptr } undef, i64 1, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %l1, 1
  %t50 = extractvalue { i64, ptr } %t47, 1
  %t51 = extractvalue { i64, ptr } %t47, 0
  %t52 = call i32 @waitpid(i32 %t44, ptr %t50, i32 0)
  store i32 %t52, ptr %l19
  br label %bb5
bb5:
  %t53 = load i32, ptr %l19, !tbaa !23
  %t54 = icmp slt i32 %t53, 0
  br i1 %t54, label %bb6, label %bb7
bb6:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l21, !tbaa !29
  %t57 = call i32 @__olang_err()
  store i32 %t57, ptr %l22
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t58 = load ptr, ptr %l21, !tbaa !29
  %t59 = load i32, ptr %l22, !tbaa !23
  %t60 = call i32 @std_2fos_2estd_2fos_3aProcess_2elost(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t60, ptr %l23
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb10, label %ok.62, !prof !99
ok.62:
  br label %bb9
bb9:
  br label %bb11
bb10:
  %t63 = load i32, ptr %l23, !tbaa !23
  %t64 = lshr i32 %t63, 16
  %t65 = and i32 %t63, 65535
  %t66 = icmp eq i32 %t64, 1
  %t67 = select i1 %t66, i32 1, i32 0
  %t68 = icmp eq i32 %t63, 0
  %t69 = shl i32 %t67, 16
  %t70 = or i32 %t69, %t65
  %t71 = select i1 %t68, i32 0, i32 %t70
  %t73 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t71, 0
  store { i32, %"std/os:Output" } %t73, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr [1 x i32], ptr %l1, i64 0, i64 0
  %t76 = load i32, ptr %t75, !tbaa !33
  %t79 = call { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eended(ptr %v0, ptr %v1, ptr %t74, i32 %t76)
  %t80 = extractvalue { i32, %"std/os:Output" } %t79, 1
  %t81 = extractvalue { i32, %"std/os:Output" } %t79, 0
  store i32 %t81, ptr %l29
  %t82 = icmp ne i32 %t81, 0
  br i1 %t82, label %bb14, label %ok.83, !prof !99
ok.83:
  store %"std/os:Output" %t80, ptr %l28
  br label %bb13
bb13:
  %t84 = load %"std/os:Output", ptr %l28
  store %"std/os:Output" %t84, ptr %l25
  br label %bb15
bb14:
  %t85 = load i32, ptr %l29, !tbaa !23
  %t86 = lshr i32 %t85, 16
  %t87 = and i32 %t85, 65535
  %t88 = icmp eq i32 %t86, 1
  %t89 = select i1 %t88, i32 1, i32 0
  %t90 = icmp eq i32 %t85, 0
  %t91 = shl i32 %t89, 16
  %t92 = or i32 %t91, %t87
  %t93 = select i1 %t90, i32 0, i32 %t92
  %t95 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t93, 0
  store { i32, %"std/os:Output" } %t95, ptr %rv
  br label %ret
bb15:
  %t96 = load %"std/os:Output", ptr %l25
  %t97 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t96, 1
  store { i32, %"std/os:Output" } %t97, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eWaitUntil(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca [1 x i32]
  %l3 = alloca %"<time.h>:timespec"
  %l4 = alloca %"<time.h>:timespec"
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca i64
  %l16 = alloca { i64, [2 x i64] }
  %l20 = alloca %"<time.h>:timespec"
  %l21 = alloca %"<time.h>:timespec"
  %l26 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i32
  %l37 = alloca %"std/os:Output"
  %l40 = alloca %"std/os:Output"
  %l41 = alloca i32
  %l44 = alloca i1
  %l50 = alloca i32
  %l52 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i32
  %l56 = alloca %"std/os:Output"
  %l59 = alloca %"std/os:Output"
  %l60 = alloca i32
  %l62 = alloca i1
  %l66 = alloca i32
  %l71 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, %"std/os:Output" }
  %t20 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/os:Process", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t6, ptr %l10, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l11, !tbaa !24
  %t9 = load i64, ptr %l11, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l11, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t20
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 0
  store i64 6, ptr %t21
  %t22 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t23 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t22, 0
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  store { { i64, ptr } } %t23, ptr %t24
  %t25 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t25, ptr %l13
  %t26 = call ptr @__olang_errpay_push()
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l14, !tbaa !24
  %t28 = load i64, ptr %l14
  %t29 = inttoptr i64 %t28 to ptr
  %t31 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %t29, ptr %l13)
  store { i64, [2 x i64] } %t31, ptr %l16
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t32 = load { i64, [2 x i64] }, ptr %l16
  %t33 = load i64, ptr %l14
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call ptr @__olang_scope_alloc_a(ptr %t34, i64 24, i64 8)
  store { i64, [2 x i64] } %t32, ptr %t35
  call void @__olang_errpay_set(ptr %t35)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t38 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 65542, 0
  store { i32, %"std/os:Output" } %t38, ptr %rv
  br label %ret
bb4:
  %t39 = insertvalue [1 x i32] undef, i32 0, 0
  store [1 x i32] %t39, ptr %l2
  %t41 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %s0)
  store %"<time.h>:timespec" %t41, ptr %l20
  br label %bb5
bb5:
  %t42 = load %"<time.h>:timespec", ptr %l20
  store %"<time.h>:timespec" %t42, ptr %l3
  %t43 = call %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %s0)
  store %"<time.h>:timespec" %t43, ptr %l21
  br label %bb6
bb6:
  %t44 = load %"<time.h>:timespec", ptr %l21
  store %"<time.h>:timespec" %t44, ptr %l4
  store i64 50000, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"std/os:Process", ptr %t45, i32 0, i32 0
  %t48 = load i32, ptr %t47, !tbaa !23
  %t50 = insertvalue { i64, ptr } undef, i64 1, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %l2, 1
  %t54 = extractvalue { i64, ptr } %t51, 1
  %t55 = extractvalue { i64, ptr } %t51, 0
  %t56 = call i32 @waitpid(i32 %t48, ptr %t54, i32 1)
  store i32 %t56, ptr %l26
  br label %bb8
bb8:
  %t57 = load i32, ptr %l26, !tbaa !23
  store i32 %t57, ptr %l6, !tbaa !23
  %t58 = load i32, ptr %l6, !tbaa !23
  %t60 = icmp slt i32 %t58, 0
  br i1 %t60, label %bb9, label %bb10
bb9:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l29, !tbaa !29
  %t63 = call i32 @__olang_err()
  store i32 %t63, ptr %l30
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t64 = load ptr, ptr %l29, !tbaa !29
  %t65 = load i32, ptr %l30, !tbaa !23
  %t66 = call i32 @std_2fos_2estd_2fos_3aProcess_2elost(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t66, ptr %l31
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb13, label %ok.68, !prof !99
ok.68:
  br label %bb12
bb12:
  br label %bb14
bb13:
  %t69 = load i32, ptr %l31, !tbaa !23
  %t70 = lshr i32 %t69, 16
  %t71 = and i32 %t69, 65535
  %t72 = icmp eq i32 %t70, 1
  %t73 = select i1 %t72, i32 1, i32 0
  %t74 = icmp eq i32 %t69, 0
  %t75 = shl i32 %t73, 16
  %t76 = or i32 %t75, %t71
  %t77 = select i1 %t74, i32 0, i32 %t76
  call void @__olang_scope_close(ptr %s0)
  %t79 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t77, 0
  store { i32, %"std/os:Output" } %t79, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t80 = load i32, ptr %l6, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"std/os:Process", ptr %t81, i32 0, i32 0
  %t84 = load i32, ptr %t83, !tbaa !23
  %t87 = icmp eq i32 %t80, %t84
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr [1 x i32], ptr %l2, i64 0, i64 0
  %t91 = load i32, ptr %t90, !tbaa !33
  %t94 = call { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eended(ptr %v0, ptr %v2, ptr %t89, i32 %t91)
  %t95 = extractvalue { i32, %"std/os:Output" } %t94, 1
  %t96 = extractvalue { i32, %"std/os:Output" } %t94, 0
  store i32 %t96, ptr %l41
  %t97 = icmp ne i32 %t96, 0
  br i1 %t97, label %bb19, label %ok.98, !prof !99
ok.98:
  store %"std/os:Output" %t95, ptr %l40
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t99 = load %"std/os:Output", ptr %l40
  store %"std/os:Output" %t99, ptr %l37
  br label %bb20
bb19:
  %t100 = load i32, ptr %l41, !tbaa !23
  %t101 = lshr i32 %t100, 16
  %t102 = and i32 %t100, 65535
  %t103 = icmp eq i32 %t101, 1
  %t104 = select i1 %t103, i32 1, i32 0
  %t105 = icmp eq i32 %t100, 0
  %t106 = shl i32 %t104, 16
  %t107 = or i32 %t106, %t102
  %t108 = select i1 %t105, i32 0, i32 %t107
  call void @__olang_scope_close(ptr %s0)
  %t110 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t108, 0
  store { i32, %"std/os:Output" } %t110, ptr %rv
  br label %ret
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load %"std/os:Output", ptr %l37
  %t112 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t111, 1
  store { i32, %"std/os:Output" } %t112, ptr %rv
  br label %ret
bb21:
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = call i1 @std_2fcancel_2estd_2fcancel_3aToken_2eCancelled(ptr %v1, ptr %t113)
  store i1 %t115, ptr %l44
  br label %bb22
bb22:
  %t116 = load i1, ptr %l44, !tbaa !21
  br i1 %t116, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t117 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fos_2estd_2fos_3aProcess_2eKill(ptr %v0, ptr %t117)
  br label %bb25
bb24:
  br label %bb43
bb25:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"std/os:Process", ptr %t119, i32 0, i32 0
  %t122 = load i32, ptr %t121, !tbaa !23
  %t124 = insertvalue { i64, ptr } undef, i64 1, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %l2, 1
  %t128 = extractvalue { i64, ptr } %t125, 1
  %t129 = extractvalue { i64, ptr } %t125, 0
  %t130 = call i32 @waitpid(i32 %t122, ptr %t128, i32 0)
  store i32 %t130, ptr %l50
  br label %bb26
bb26:
  %t131 = load i32, ptr %l50, !tbaa !23
  %t132 = icmp slt i32 %t131, 0
  br i1 %t132, label %bb27, label %bb28
bb27:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l52, !tbaa !29
  %t135 = call i32 @__olang_err()
  store i32 %t135, ptr %l53
  br label %bb29
bb28:
  br label %bb33
bb29:
  %t136 = load ptr, ptr %l52, !tbaa !29
  %t137 = load i32, ptr %l53, !tbaa !23
  %t138 = call i32 @std_2fos_2estd_2fos_3aProcess_2elost(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t138, ptr %l54
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb31, label %ok.140, !prof !99
ok.140:
  br label %bb30
bb30:
  br label %bb32
bb31:
  %t141 = load i32, ptr %l54, !tbaa !23
  %t142 = lshr i32 %t141, 16
  %t143 = and i32 %t141, 65535
  %t144 = icmp eq i32 %t142, 1
  %t145 = select i1 %t144, i32 1, i32 0
  %t146 = icmp eq i32 %t141, 0
  %t147 = shl i32 %t145, 16
  %t148 = or i32 %t147, %t143
  %t149 = select i1 %t146, i32 0, i32 %t148
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t151 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t149, 0
  store { i32, %"std/os:Output" } %t151, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr [1 x i32], ptr %l2, i64 0, i64 0
  %t154 = load i32, ptr %t153, !tbaa !33
  %t157 = call { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eended(ptr %v0, ptr %s5, ptr %t152, i32 %t154)
  %t158 = extractvalue { i32, %"std/os:Output" } %t157, 1
  %t159 = extractvalue { i32, %"std/os:Output" } %t157, 0
  store i32 %t159, ptr %l60
  %t160 = icmp ne i32 %t159, 0
  br i1 %t160, label %bb35, label %ok.161, !prof !99
ok.161:
  store %"std/os:Output" %t158, ptr %l59
  br label %bb34
bb34:
  %t162 = load %"std/os:Output", ptr %l59
  store %"std/os:Output" %t162, ptr %l56
  br label %bb39
bb35:
  %t163 = load i32, ptr %l60, !tbaa !23
  %t164 = ashr i32 %t163, 16
  %t166 = icmp eq i32 %t164, 1
  store i1 %t166, ptr %l62, !tbaa !21
  %t167 = load i32, ptr %l60, !tbaa !23
  %t168 = ashr i32 %t167, 16
  %t170 = icmp eq i32 %t168, 1
  br i1 %t170, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = call i32 @std_2fcancel_2estd_2fcancel_3aToken_2eReason(ptr %v1, ptr %t172)
  store i32 %t174, ptr %l66
  %t175 = icmp ne i32 %t174, 0
  br i1 %t175, label %bb41, label %ok.176, !prof !99
ok.176:
  br label %bb40
bb40:
  br label %bb42
bb41:
  %t177 = load i32, ptr %l66, !tbaa !23
  %t178 = lshr i32 %t177, 16
  %t179 = and i32 %t177, 65535
  %t180 = icmp eq i32 %t178, 1
  %t181 = select i1 %t180, i32 2, i32 0
  %t182 = icmp eq i32 %t177, 0
  %t183 = shl i32 %t181, 16
  %t184 = or i32 %t183, %t179
  %t185 = select i1 %t182, i32 0, i32 %t184
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t187 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t185, 0
  store { i32, %"std/os:Output" } %t187, ptr %rv
  br label %ret
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb43:
  %t188 = load i64, ptr %l5, !tbaa !24
  %t190 = getelementptr %"<time.h>:timespec", ptr %l3, i32 0, i32 1
  store i64 %t188, ptr %t190, !tbaa !24
  %t193 = call i32 @nanosleep(ptr %l3, ptr %l4)
  store i32 %t193, ptr %l71
  br label %bb44
bb44:
  %t194 = load i64, ptr %l5, !tbaa !24
  %t195 = load i64, ptr @G_2estd_2fcancel_2ePollNs, !tbaa !24
  %t198 = icmp slt i64 %t194, %t195
  br i1 %t198, label %bb45, label %bb46
bb45:
  %t200 = load i64, ptr %l5, !tbaa !24
  %t202 = mul i64 %t200, 2
  store i64 %t202, ptr %l5, !tbaa !24
  br label %bb47
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb7
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local { i32, %"std/os:Output" } @std_2fos_2estd_2fos_3aProcess_2eended(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l17 = alloca %"std/os:Output"
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i32
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i32
  %l40 = alloca i32
  %l43 = alloca i32
  %l46 = alloca i32
  %l47 = alloca %"std/os:Output"
  %l50 = alloca i32
  %l53 = alloca i32
  %rv = alloca { i32, %"std/os:Output" }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/os:Process", ptr %t1, i32 0, i32 4
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = ashr i32 %t4, 8
  %t8 = and i32 %t6, 255
  store i32 %t8, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l1, !tbaa !23
  %t12 = and i32 %t10, 127
  %t14 = icmp ne i32 %t12, 0
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = and i32 %t16, 127
  %t20 = add i32 128, %t18
  store i32 %t20, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/os:Process", ptr %t22, i32 0, i32 3
  %t25 = load i1, ptr %t24, !tbaa !21
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = load i32, ptr %l2, !tbaa !23
  %t31 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t29, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store %"std/os:Output" %t31, ptr %l17
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t32 = load %"std/os:Output", ptr %l17
  %t33 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t32, 1
  store { i32, %"std/os:Output" } %t33, ptr %rv
  br label %ret
bb7:
  %t34 = load i32, ptr %l2, !tbaa !23
  store i32 %t34, ptr %l18, !tbaa !23
  %t35 = ptrtoint ptr %v1 to i64
  store i64 %t35, ptr %l20, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2estd_2fos_3aOutput_2e1
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = call ptr @__olang_region_make(ptr %v1)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/os:Process", ptr %t40, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load i64, ptr %l20
  %t45 = inttoptr i64 %t44 to ptr
  %t47 = call { i32, { i64, ptr } } @std_2fos_2ereadBack(ptr %t45, i32 %t43)
  %t48 = extractvalue { i32, { i64, ptr } } %t47, 1
  %t49 = extractvalue { i32, { i64, ptr } } %t47, 0
  store i32 %t49, ptr %l25
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb11, label %ok.51, !prof !99
ok.51:
  store { i64, ptr } %t48, ptr %l24
  br label %bb10
bb10:
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t52, ptr %l19, !tbaa !27
  br label %bb14
bb11:
  %t53 = load i32, ptr %l25, !tbaa !23
  %t54 = lshr i32 %t53, 16
  %t55 = and i32 %t53, 65535
  %t56 = icmp eq i32 %t54, 1
  %t57 = select i1 %t56, i32 1, i32 0
  %t58 = icmp eq i32 %t53, 0
  %t59 = shl i32 %t57, 16
  %t60 = or i32 %t59, %t55
  %t61 = select i1 %t58, i32 0, i32 %t60
  store i32 %t61, ptr %l26, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"std/os:Process", ptr %t62, i32 0, i32 1
  %t65 = load i32, ptr %t64, !tbaa !23
  %t67 = call i32 @close(i32 %t65)
  store i32 %t67, ptr %l29
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"std/os:Process", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = call i32 @close(i32 %t71)
  store i32 %t73, ptr %l32
  br label %bb13
bb13:
  %t74 = load i32, ptr %l26, !tbaa !23
  %t75 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t74, 0
  store { i32, %"std/os:Output" } %t75, ptr %rv
  br label %ret
bb14:
  %t76 = ptrtoint ptr %v1 to i64
  store i64 %t76, ptr %l34, !tbaa !24
  %t77 = load i1, ptr @olang_2esole_2estd_2fos_3aOutput_2e2
  br i1 %t77, label %bb15, label %bb16
bb15:
  %t79 = call ptr @__olang_region_make(ptr %v1)
  %t80 = ptrtoint ptr %t79 to i64
  store i64 %t80, ptr %l34, !tbaa !24
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"std/os:Process", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %t83, !tbaa !23
  %t85 = load i64, ptr %l34
  %t86 = inttoptr i64 %t85 to ptr
  %t88 = call { i32, { i64, ptr } } @std_2fos_2ereadBack(ptr %t86, i32 %t84)
  %t89 = extractvalue { i32, { i64, ptr } } %t88, 1
  %t90 = extractvalue { i32, { i64, ptr } } %t88, 0
  store i32 %t90, ptr %l39
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb18, label %ok.92, !prof !99
ok.92:
  store { i64, ptr } %t89, ptr %l38
  br label %bb17
bb17:
  %t93 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t93, ptr %l33, !tbaa !27
  br label %bb21
bb18:
  %t94 = load i32, ptr %l39, !tbaa !23
  %t95 = lshr i32 %t94, 16
  %t96 = and i32 %t94, 65535
  %t97 = icmp eq i32 %t95, 1
  %t98 = select i1 %t97, i32 1, i32 0
  %t99 = icmp eq i32 %t94, 0
  %t100 = shl i32 %t98, 16
  %t101 = or i32 %t100, %t96
  %t102 = select i1 %t99, i32 0, i32 %t101
  store i32 %t102, ptr %l40, !tbaa !23
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"std/os:Process", ptr %t103, i32 0, i32 1
  %t106 = load i32, ptr %t105, !tbaa !23
  %t108 = call i32 @close(i32 %t106)
  store i32 %t108, ptr %l43
  br label %bb19
bb19:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"std/os:Process", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = call i32 @close(i32 %t112)
  store i32 %t114, ptr %l46
  br label %bb20
bb20:
  %t115 = load i32, ptr %l40, !tbaa !23
  %t116 = insertvalue { i32, %"std/os:Output" } zeroinitializer, i32 %t115, 0
  store { i32, %"std/os:Output" } %t116, ptr %rv
  br label %ret
bb21:
  %t117 = load i32, ptr %l18, !tbaa !23
  %t118 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t120 = call %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v1, ptr %v1, ptr %v1, i32 %t117, { i64, ptr } %t118, { i64, ptr } %t119)
  store %"std/os:Output" %t120, ptr %l47
  br label %bb22
bb22:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"std/os:Process", ptr %t121, i32 0, i32 1
  %t124 = load i32, ptr %t123, !tbaa !23
  %t126 = call i32 @close(i32 %t124)
  store i32 %t126, ptr %l50
  br label %bb23
bb23:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"std/os:Process", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %t129, !tbaa !23
  %t132 = call i32 @close(i32 %t130)
  store i32 %t132, ptr %l53
  br label %bb24
bb24:
  %t133 = load %"std/os:Output", ptr %l47
  %t134 = insertvalue { i32, %"std/os:Output" } zeroinitializer, %"std/os:Output" %t133, 1
  store { i32, %"std/os:Output" } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/os:Output" }, ptr %rv
  ret { i32, %"std/os:Output" } %rr
}

define dso_local i32 @std_2fos_2estd_2fos_3aProcess_2elost(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/os:Process", ptr %t1, i32 0, i32 4
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"std/os:Process", ptr %t4, i32 0, i32 3
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/os:Process", ptr %t9, i32 0, i32 1
  %t12 = load i32, ptr %t11, !tbaa !23
  %t14 = call i32 @close(i32 %t12)
  store i32 %t14, ptr %l7
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"std/os:Process", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = call i32 @close(i32 %t18)
  store i32 %t20, ptr %l10
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t23 = call i32 @std_2fos_2eraise(ptr %s0, i32 %a1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i32 %t23, ptr %l12
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb7, label %ok.25, !prof !99
ok.25:
  br label %bb6
bb6:
  br label %bb8
bb7:
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 1, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  call void @__olang_scope_close(ptr %s0)
  store i32 %t34, ptr %rv
  br label %ret
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @std_2fos_2etempDir(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t9, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t13, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t15 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) })
  %t16 = extractvalue { i32, { i64, ptr } } %t15, 1
  %t17 = extractvalue { i32, { i64, ptr } } %t15, 0
  store i32 %t17, ptr %l9
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb5, label %ok.19, !prof !99
ok.19:
  store { i64, ptr } %t16, ptr %l8
  br label %bb4
bb4:
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %l7, !tbaa !27
  br label %bb9
bb5:
  %t21 = load i32, ptr %l9, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  br i1 %t24, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb9
bb9:
  %t26 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t26, ptr %l1, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = extractvalue { i64, ptr } %t33, 0
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t35, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t41, ptr %l18, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l19, !tbaa !24
  %t44 = load i64, ptr %l19, !tbaa !24
  %t45 = mul i64 %t44, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l20, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l19, !tbaa !24
  %t54 = mul i64 %t53, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  %t55 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t55, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t56 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"std/os:FileInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"std/os:FileInfo" undef, i32 %a0, 0
  %t10 = insertvalue %"std/os:FileInfo" %t8, i64 %a1, 1
  %t12 = insertvalue %"std/os:FileInfo" %t10, i64 %a2, 2
  store %"std/os:FileInfo" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/os:FileInfo", ptr %rv
  ret %"std/os:FileInfo" %rr
}

define dso_local %"std/os:Output" @std_2fos_3aOutput_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"std/os:Output"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"std/os:Output" undef, i32 %a0, 0
  %t10 = insertvalue %"std/os:Output" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"std/os:Output" %t10, { i64, ptr } %a2, 2
  store %"std/os:Output" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/os:Output", ptr %rv
  ret %"std/os:Output" %rr
}

define dso_local %"std/os:Process" @std_2fos_3aProcess_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"std/os:Process"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"std/os:Process" undef, i32 %a0, 0
  %t12 = insertvalue %"std/os:Process" %t10, i32 %a1, 1
  %t14 = insertvalue %"std/os:Process" %t12, i32 %a2, 2
  %t16 = insertvalue %"std/os:Process" %t14, i1 %a3, 3
  %t18 = insertvalue %"std/os:Process" %t16, i1 false, 4
  store %"std/os:Process" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/os:Process", ptr %rv
  ret %"std/os:Process" %rr
}

declare i64 @__olang_arg_count()
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@__olang_empty_array = external constant [16 x i64]
declare i64 @__olang_arg(i64, ptr, i64)
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare i32 @close(i32)
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
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
declare i32 @creat(ptr, i32)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
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
define internal i64 @olang_lambda_5(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l9 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t10 = extractvalue { i64, ptr } %cv0, 1
  %t11 = extractvalue { i64, ptr } %cv0, 0
  %t13 = extractvalue { i64, ptr } %t4, 1
  %t14 = extractvalue { i64, ptr } %t4, 0
  %t16 = call i64 @__olang_env(ptr %t10, ptr %t13, i64 %t8)
  store i64 %t16, ptr %l9
  br label %bb1
bb1:
  %t17 = load i64, ptr %l9, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_errpay_push() cold
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fos_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 7}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
bb3:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t26 = getelementptr { { i64, ptr } }, ptr %t25, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l8, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { { i64, ptr } }, ptr %t42, i32 0, i32 0
  store { i64, ptr } %t41, ptr %t43
  br label %bb1
bb4:
  %t44 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t45 = getelementptr { { i64, ptr } }, ptr %t44, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  store { i64, ptr } %t46, ptr %l9, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  store i64 %t48, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t50 = mul i64 %t49, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l11, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = load i64, ptr %l10, !tbaa !24
  %t59 = mul i64 %t58, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t55, ptr %t57, i64 %t59, i1 false)
  %t60 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t61 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t62 = getelementptr { { i64, ptr } }, ptr %t61, i32 0, i32 0
  store { i64, ptr } %t60, ptr %t62
  br label %bb1
bb5:
  %t63 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t64 = getelementptr { { i64, ptr } }, ptr %t63, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64
  store { i64, ptr } %t65, ptr %l12, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l13, !tbaa !24
  %t68 = load i64, ptr %l13, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l14, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l13, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t80 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t81 = getelementptr { { i64, ptr } }, ptr %t80, i32 0, i32 0
  store { i64, ptr } %t79, ptr %t81
  br label %bb1
bb6:
  %t82 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t83 = getelementptr { { i64, ptr } }, ptr %t82, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  store { i64, ptr } %t84, ptr %l15, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  store i64 %t86, ptr %l16, !tbaa !24
  %t87 = load i64, ptr %l16, !tbaa !24
  %t88 = mul i64 %t87, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l17, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l16, !tbaa !24
  %t97 = mul i64 %t96, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t93, ptr %t95, i64 %t97, i1 false)
  %t98 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t99 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t100 = getelementptr { { i64, ptr } }, ptr %t99, i32 0, i32 0
  store { i64, ptr } %t98, ptr %t100
  br label %bb1
bb7:
  %t101 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t102 = getelementptr { { i64, ptr } }, ptr %t101, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  store { i64, ptr } %t103, ptr %l18, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l19, !tbaa !24
  %t106 = load i64, ptr %l19, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l20, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l19, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t118 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t119 = getelementptr { { i64, ptr } }, ptr %t118, i32 0, i32 0
  store { i64, ptr } %t117, ptr %t119
  br label %bb1
bb8:
  %t120 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t121 = getelementptr { { i64, ptr } }, ptr %t120, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  store { i64, ptr } %t122, ptr %l21, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l22, !tbaa !24
  %t125 = load i64, ptr %l22, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l23, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l22, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t137 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t138 = getelementptr { { i64, ptr } }, ptr %t137, i32 0, i32 0
  store { i64, ptr } %t136, ptr %t138
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare void @__olang_errpay_set(ptr) cold
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @__olang_exec(ptr, ptr, i64)
declare i32 @__olang_err()
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @__olang_stat(ptr, ptr)
declare void @exit(i32) noreturn
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @isatty(i32)
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @link(ptr, ptr)
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @mkdir(ptr, i32)
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d19 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"XXXXXX\00" }>, align 8
declare i32 @__olang_mkdtemp(ptr)
declare void @__olang_on_crash(ptr, i64)
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @open(ptr, i32, ...)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_202_3e_2e_2d1 = weak hidden constant i1 false
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"run " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"echo" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotFound" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
declare ptr @__olang_errpay_top_get()
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
declare i64 @__olang_rd_quote(ptr, i64, ptr, i64, i8)
define available_externally ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %want = add i64 %len, %need
  %fits = icmp ule i64 %want, %cap
  br i1 %fits, label %ok, label %grow
ok:
  %data = load ptr, ptr %sb
  %p = getelementptr i8, ptr %data, i64 %len
  ret ptr %p
grow:
  %g = call ptr @__olang_sb_grow(ptr %sb, i64 %need)
  ret ptr %g
}
declare void @__olang_sb_add(ptr, i64)
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
declare void @__olang_sb_done(ptr)
declare void @__olang_bang_failed_text(ptr, { i64, ptr }, i1) cold noreturn
@.d28 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Exists" }>, align 8
@.d29 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Denied" }>, align 8
@.d30 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.NotDir" }>, align 8
@.d31 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"os.Error.IsDir" }>, align 8
@.d32 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"os.Error.NotEmpty" }>, align 8
@.d33 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"os.Error.Failed" }>, align 8
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @lseek(i32, i64, i32)
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"olang\00" }>, align 8
declare i32 @memfd_create(ptr, i32)
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @__olang_spawn(ptr, i64, i32, i32, i32, ptr)
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'\5C''" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
define internal i64 @olang_lambda_42(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l9 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t10 = extractvalue { i64, ptr } %cv0, 1
  %t11 = extractvalue { i64, ptr } %cv0, 0
  %t13 = extractvalue { i64, ptr } %t4, 1
  %t14 = extractvalue { i64, ptr } %t4, 0
  %t16 = call i64 @__olang_dir(ptr %t10, ptr %t13, i64 %t8)
  store i64 %t16, ptr %l9
  br label %bb1
bb1:
  %t17 = load i64, ptr %l9, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
define internal i1 @olang_lambda_44(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eCompare(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = icmp slt i32 %t6, 0
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i64 @read(i32, ptr, i64)
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i64 @readlink(ptr, ptr, i64)
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
define internal i64 @olang_lambda_48(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l9 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t10 = extractvalue { i64, ptr } %cv0, 1
  %t11 = extractvalue { i64, ptr } %cv0, 0
  %t13 = extractvalue { i64, ptr } %t4, 1
  %t14 = extractvalue { i64, ptr } %t4, 0
  %t16 = call i64 @__olang_realpath(ptr %t10, ptr %t13, i64 %t8)
  store i64 %t16, ptr %l9
  br label %bb1
bb1:
  %t17 = load i64, ptr %l9, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @remove(ptr)
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @rename(ptr, ptr)
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @system(ptr)
declare void @__olang_run_on_stack(i64, ptr, ptr)
@.d55 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"-------------------------------------------------------------" }>, align 8
@.d56 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"olang\00" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
declare i32 @kill(i32, i32)
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i32 @waitpid(i32, ptr, i32)
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i32 @nanosleep(ptr, ptr)
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fos_3aOutput_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fos_3aOutput_2e2 = weak hidden constant i1 false
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d67 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"TMPDIR" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/tmp" }>, align 8
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
declare i64 @__olang_env(ptr, ptr, i64)
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare i64 @__olang_dir(ptr, ptr, i64)
declare i64 @__olang_realpath(ptr, ptr, i64)
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
@olang_loc_2e089b9dcc6d7cfd_6f26744b60ea9b91 = external constant [0 x i8]
@olang_loc_722c60a9fee6cfd0_5c8c3a8aa9ab1a84 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_c6732c6b36ef1233_192580cd7896553f = external constant [0 x i8]
@olang_loc_bf01453b0cfded25_a369431636c6fdd9 = external constant [0 x i8]
@olang_loc_1b39f3aec8a2d100_9d79a3da2d056474 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_93142f54c4ba4464_592b0bc010c9eac8 = external constant [0 x i8]
@olang_loc_f119a7c9f27c98b4_8ee77fd34027ef68 = external constant [0 x i8]
@olang_loc_1a596f16b0c0d4cc_1848fbd7ff01a1d8 = external constant [0 x i8]
@olang_loc_ae615ff442418127_414de4f669869a8b = external constant [0 x i8]
declare i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1)
@olang_loc_3ae06a7cd351f714_4bcb8792cbdf34a0 = external constant [0 x i8]
@olang_loc_63ca89910fe1f481_50e57e01f8d90efd = external constant [0 x i8]
@olang_loc_879ad2febb339b7d_10a4c06fe5c76379 = external constant [0 x i8]
@olang_loc_2b89142fbf8fc460_df42bdef933d62c4 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSort_3cstd_2fprelu_H425a408f665c1f34766f6a10dd38435a(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
@olang_loc_587e358192386240_8b720e6e0da4b04 = external constant [0 x i8]
@olang_loc_79e8bbcf109c76d_1b515aa79819cc11 = external constant [0 x i8]
@olang_loc_b2d60bcaef35f8ee_ec573b413169e46a = external constant [0 x i8]
@olang_loc_870dc790e95aa6eb_a67bfaf9489a2847 = external constant [0 x i8]
@olang_loc_3bbcea0c000efd36_21b55d08ecf81e22 = external constant [0 x i8]
@olang_loc_ff17d2e56a811dcb_410ea2db80d8aad7 = external constant [0 x i8]
@olang_loc_d7f228265709f418_7e9f802c53b666ac = external constant [0 x i8]
@olang_loc_9d6ebd177b1045e9_d85719897e835afd = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7455114053b9a685_f9a96b9bd4adb589 = external constant [0 x i8]
@olang_loc_d680568c47c09218_ee59193b16d39a3c = external constant [0 x i8]
@olang_loc_a97aa98585cf6243_3a57acf5b7e1165f = external constant [0 x i8]
@olang_loc_6e884a0c8190443b_54808bbd727a9dff = external constant [0 x i8]
@olang_loc_63206310f1419a1b_2cb9bc5fa11cb777 = external constant [0 x i8]
@olang_loc_57657329f9419e06_2a1a8642ca70aa5a = external constant [0 x i8]
declare %"<time.h>:timespec" @_3ctime_2eh_3e_3atimespec_2ector(ptr %v0)
declare i1 @std_2fcancel_2estd_2fcancel_3aToken_2eCancelled(ptr %v0, ptr %a0)
declare i32 @std_2fcancel_2estd_2fcancel_3aToken_2eReason(ptr %v0, ptr %a0)
@G_2estd_2fcancel_2ePollNs = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\80\96\98\00\00\00\00\00" }>, align 8
declare i32 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eCompare(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)

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
