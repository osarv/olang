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
%"std/io:Lines" = type { i32, { i64, ptr }, i64, i64 }
%"std/io:Writer" = type { i32, { i64, ptr }, i64, { i32, { i64, [1 x i64] } } }
@G_2estd_2fio_2eStderr = constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2estd_2fio_2eStdin = constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2estd_2fio_2eStdout = constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
define dso_local i32 @std_2fio_2eFormatInt(ptr %v0, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %rv = alloca i32
  store i64 %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  store i1 %t3, ptr %l2, !tbaa !21
  %t5 = load i1, ptr %l2, !tbaa !21
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l0, !tbaa !24
  store i64 %t7, ptr %l11, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = sub i64 0, %t9
  store i64 %t11, ptr %l11, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l11, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  store i32 0, ptr %l4, !tbaa !23
  br label %bb4
bb4:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t14, ptr %l15, !tbaa !27
  %t15 = load i32, ptr %l4, !tbaa !23
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = srem i64 %t16, 10
  %t20 = sub i64 0, %t18
  %t22 = trunc i64 %t20 to i8
  %t25 = add i8 %t22, 48
  %t28 = sext i32 %t15 to i64
  %t29 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr i8, ptr %t30, i64 %t28
  store i8 %t25, ptr %t31, !tbaa !32
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = sdiv i64 %t32, 10
  store i64 %t34, ptr %l3, !tbaa !24
  %t36 = load i32, ptr %l4, !tbaa !23
  %t38 = add i32 %t36, 1
  store i32 %t38, ptr %l4, !tbaa !23
  br label %bb5
bb5:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = icmp slt i64 %t40, 0
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb6, label %bb7
bb6:
  br label %bb9
bb7:
  br label %bb8
bb8:
  br label %bb4
bb9:
  %t46 = load i1, ptr %l2, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t48, ptr %l31, !tbaa !27
  %t49 = load i32, ptr %l4, !tbaa !23
  %t52 = sext i32 %t49 to i64
  %t53 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 %t52
  store i8 45, ptr %t55, !tbaa !32
  %t56 = load i32, ptr %l4, !tbaa !23
  %t58 = add i32 %t56, 1
  store i32 %t58, ptr %l4, !tbaa !23
  br label %bb12
bb11:
  br label %bb12
bb12:
  store i32 0, ptr %l5, !tbaa !23
  %t60 = load i32, ptr %l4, !tbaa !23
  %t62 = sub i32 %t60, 1
  store i32 %t62, ptr %l6, !tbaa !23
  br label %bb13
bb13:
  %t64 = load i32, ptr %l5, !tbaa !23
  %t65 = load i32, ptr %l6, !tbaa !23
  %t68 = icmp slt i32 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t72, ptr %l42, !tbaa !27
  %t73 = load i32, ptr %l5, !tbaa !23
  %t75 = sext i32 %t73 to i64
  %t76 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i8, ptr %t77, i64 %t75
  %t79 = load i8, ptr %t78, !tbaa !32
  %t81 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t81, ptr %l45, !tbaa !27
  %t82 = load i32, ptr %l5, !tbaa !23
  %t83 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t83, ptr %l47, !tbaa !27
  %t84 = load i32, ptr %l6, !tbaa !23
  %t86 = sext i32 %t84 to i64
  %t87 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i8, ptr %t88, i64 %t86
  %t90 = load i8, ptr %t89, !tbaa !32
  %t93 = sext i32 %t82 to i64
  %t94 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i8, ptr %t95, i64 %t93
  store i8 %t90, ptr %t96, !tbaa !32
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t97, ptr %l50, !tbaa !27
  %t98 = load i32, ptr %l6, !tbaa !23
  %t102 = sext i32 %t98 to i64
  %t103 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr i8, ptr %t104, i64 %t102
  store i8 %t79, ptr %t105, !tbaa !32
  %t106 = load i32, ptr %l5, !tbaa !23
  %t108 = add i32 %t106, 1
  store i32 %t108, ptr %l5, !tbaa !23
  %t110 = load i32, ptr %l6, !tbaa !23
  %t112 = sub i32 %t110, 1
  store i32 %t112, ptr %l6, !tbaa !23
  br label %bb17
bb17:
  br label %bb13
bb18:
  %t114 = load i32, ptr %l4, !tbaa !23
  store i32 %t114, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2estd_2fio_2eStdout, !tbaa !23
  %t6 = call i32 @std_2fio_2eWrite(ptr %v0, i32 %t1, { i64, ptr } %a0)
  store i32 %t6, ptr %l4
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
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
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2estd_2fio_2eStderr, !tbaa !23
  %t6 = call i32 @std_2fio_2eWrite(ptr %v0, i32 %t1, { i64, ptr } %a0)
  store i32 %t6, ptr %l4
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
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
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2ePrintErrln(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l6 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2estd_2fio_2eStderr, !tbaa !23
  %t4 = extractvalue { i64, ptr } %a0, 1
  %t5 = extractvalue { i64, ptr } %a0, 0
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t4, i64 %t5)
  %t10 = getelementptr i8, ptr %t9, i64 %t5
  call void @olang_textcopy(ptr %t10, ptr %t6, i64 %t7)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t9, 1
  %t15 = extractvalue { i64, ptr } %t12, 0
  %t16 = extractvalue { i64, ptr } %t12, 1
  %t17 = mul i64 %t15, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  %t23 = call i32 @std_2fio_2eWrite(ptr %s0, i32 %t1, { i64, ptr } %t20)
  store i32 %t23, ptr %l6
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb2, label %ok.25, !prof !99
ok.25:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t26 = load i32, ptr %l6, !tbaa !23
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
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2ePrintln(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l6 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2estd_2fio_2eStdout, !tbaa !23
  %t4 = extractvalue { i64, ptr } %a0, 1
  %t5 = extractvalue { i64, ptr } %a0, 0
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t4, i64 %t5)
  %t10 = getelementptr i8, ptr %t9, i64 %t5
  call void @olang_textcopy(ptr %t10, ptr %t6, i64 %t7)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t9, 1
  %t15 = extractvalue { i64, ptr } %t12, 0
  %t16 = extractvalue { i64, ptr } %t12, 1
  %t17 = mul i64 %t15, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  %t23 = call i32 @std_2fio_2eWrite(ptr %s0, i32 %t1, { i64, ptr } %t20)
  store i32 %t23, ptr %l6
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb2, label %ok.25, !prof !99
ok.25:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t26 = load i32, ptr %l6, !tbaa !23
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
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2eRead(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l8 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %rv = alloca { i32, { i64, ptr } }
  %t18 = alloca { i64, [1 x i64] }, align 8
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t9 = extractvalue { i64, ptr } %t2, 1
  %t10 = extractvalue { i64, ptr } %t2, 0
  %t12 = call i64 @read(i32 %a0, ptr %t9, i64 %t5)
  store i64 %t12, ptr %l8
  br label %bb1
bb1:
  %t13 = load i64, ptr %l8, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  store { i64, [1 x i64] } zeroinitializer, ptr %t18
  %t19 = getelementptr { i64, [1 x i64] }, ptr %t18, i32 0, i32 0
  store i64 0, ptr %t19
  %t20 = load { i64, [1 x i64] }, ptr %t18
  %t21 = call ptr @__olang_errpay_push()
  %t22 = ptrtoint ptr %t21 to i64
  %t25 = inttoptr i64 %t22 to ptr
  %t26 = call ptr @__olang_scope_alloc_a(ptr %t25, i64 16, i64 8)
  store { i64, [1 x i64] } %t20, ptr %t26
  call void @__olang_errpay_set(ptr %t26)
  %t29 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t29, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t30, ptr %l15, !tbaa !27
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %l16, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l17, !tbaa !24
  %t34 = icmp sge i64 0, 0
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t36 = load i64, ptr %l16, !tbaa !24
  %t37 = icmp sle i64 0, %t36
  br i1 %t37, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_e183f6af0815be24_39313b6101d20ca8)
  unreachable
bb7:
  %t39 = load i64, ptr %l16, !tbaa !24
  %t40 = load i64, ptr %l17, !tbaa !24
  %t41 = icmp sle i64 %t39, %t40
  br i1 %t41, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_e183f6af0815be24_39313b6101d20ca8)
  unreachable
bb9:
  %t43 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l16, !tbaa !24
  %t46 = getelementptr i8, ptr %t44, i64 0
  %t47 = sub i64 %t45, 0
  %t48 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  %t51 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t49, 1
  store { i32, { i64, ptr } } %t51, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e183f6af0815be24_39313b6101d20ca8)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @std_2fio_2eWrite(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l25 = alloca i64
  %rv = alloca i32
  %t54 = alloca { i64, [1 x i64] }, align 8
  %t70 = alloca { i64, [1 x i64] }, align 8
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l10, !tbaa !27
  %t10 = load i64, ptr %l3, !tbaa !24
  store i64 %t10, ptr %l11, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t11, 0
  store i64 %t14, ptr %l14, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l15, !tbaa !24
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = icmp sge i64 %t17, 0
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l11, !tbaa !24
  %t21 = load i64, ptr %l14, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_405125a8bfc97357_6687826239f87cdb)
  unreachable
bb7:
  %t24 = load i64, ptr %l14, !tbaa !24
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp sle i64 %t24, %t25
  br i1 %t26, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_405125a8bfc97357_6687826239f87cdb)
  unreachable
bb9:
  %t28 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l11, !tbaa !24
  %t31 = load i64, ptr %l14, !tbaa !24
  %t32 = getelementptr i8, ptr %t29, i64 %t30
  %t33 = sub i64 %t31, %t30
  %t34 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t32, 1
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t45 = extractvalue { i64, ptr } %t38, 1
  %t46 = extractvalue { i64, ptr } %t38, 0
  %t48 = call i64 @write(i32 %a0, ptr %t45, i64 %t41)
  store i64 %t48, ptr %l25
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_405125a8bfc97357_6687826239f87cdb)
  unreachable
bb11:
  %t49 = load i64, ptr %l25, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t52 = icmp slt i64 %t50, 0
  br i1 %t52, label %bb12, label %bb13
bb12:
  store { i64, [1 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [1 x i64] }, ptr %t54, i32 0, i32 0
  store i64 0, ptr %t55
  %t56 = load { i64, [1 x i64] }, ptr %t54
  %t57 = call ptr @__olang_errpay_push()
  %t58 = ptrtoint ptr %t57 to i64
  %t61 = inttoptr i64 %t58 to ptr
  %t62 = call ptr @__olang_scope_alloc_a(ptr %t61, i64 16, i64 8)
  store { i64, [1 x i64] } %t56, ptr %t62
  call void @__olang_errpay_set(ptr %t62)
  store i32 65536, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t67 = icmp eq i64 %t65, 0
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = load i64, ptr %l3, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t70
  %t71 = getelementptr { i64, [1 x i64] }, ptr %t70, i32 0, i32 0
  store i64 1, ptr %t71
  %t73 = insertvalue { i64 } undef, i64 %t69, 0
  %t74 = getelementptr { i64, [1 x i64] }, ptr %t70, i32 0, i32 1
  store { i64 } %t73, ptr %t74
  %t75 = load { i64, [1 x i64] }, ptr %t70
  %t76 = call ptr @__olang_errpay_push()
  %t77 = ptrtoint ptr %t76 to i64
  %t80 = inttoptr i64 %t77 to ptr
  %t81 = call ptr @__olang_scope_alloc_a(ptr %t80, i64 16, i64 8)
  store { i64, [1 x i64] } %t75, ptr %t81
  call void @__olang_errpay_set(ptr %t81)
  store i32 65537, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t84 = load i64, ptr %l3, !tbaa !24
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = add i64 %t84, %t85
  store i64 %t88, ptr %l3, !tbaa !24
  br label %bb18
bb18:
  %t90 = load i64, ptr %l3, !tbaa !24
  %t91 = load i64, ptr %l2, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb19, label %bb20
bb19:
  br label %bb22
bb20:
  br label %bb21
bb21:
  br label %bb4
bb22:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2eafterTheEnd(i32 %a0) #0 {
entry:
  %l1 = alloca %"std/io:Lines"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"std/io:Lines"
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l19 = alloca { i64, ptr }
  %l23 = alloca i1
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.builder
  %s1room = alloca [64 x i8], align 8
  %s3 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"std/io:Lines" @std_2fio_3aLines_2ector(ptr %s0, i32 %a0, i64 2)
  store %"std/io:Lines" %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load %"std/io:Lines", ptr %l10
  store %"std/io:Lines" %t4, ptr %l1
  %t6 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aLines_2eNext(ptr %s0, ptr %s0, ptr %l1)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l14
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb3, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l13
  br label %bb2
bb2:
  %t11 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  br label %bb10
bb3:
  %t12 = load i32, ptr %l14, !tbaa !23
  %t13 = icmp eq i32 %t12, 65536
  br i1 %t13, label %bb4, label %bb5
bb4:
  call void @__olang_bang_failed_plain(ptr @olang_loc_d56021b6e5c3bdfa_44c4511adba970be)
  unreachable
bb5:
  %t15 = load i32, ptr %l14, !tbaa !23
  %t16 = icmp eq i32 %t15, 65537
  br i1 %t16, label %bb6, label %bb7
bb6:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s1
  store ptr %s1room, ptr %s1
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t18, i64 %t19)
  %t20 = call ptr @__olang_errpay_top_get()
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t21, i64 %t22)
  %t24 = getelementptr { i64, [1 x i64] }, ptr %t20, i32 0, i32 1
  %t25 = getelementptr { i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25
  %t28 = call ptr @__olang_sb_room(ptr %s1, i64 24)
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %t26)
  call void @__olang_sb_add(ptr %s1, i64 %t29)
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t30, i64 %t31)
  %t32 = load ptr, ptr %s1
  %t33 = getelementptr %olang.builder, ptr %s1, i32 0, i32 1
  %t34 = load i64, ptr %t33
  %t35 = load ptr, ptr @__olang_prog_scope
  %t36 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t34)
  call void @olang_textcopy(ptr %t36, ptr %t32, i64 %t34)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l19, !tbaa !27
  %t39 = getelementptr %olang.builder, ptr %s1, i32 0, i32 3
  %t40 = load ptr, ptr %t39
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %sbgrew.42, label %sbdone.43
sbgrew.42:
  call void @__olang_sb_done(ptr %s1)
  br label %sbdone.43
sbdone.43:
  %t44 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t45 = load ptr, ptr @__olang_prog_scope
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = extractvalue { i64, ptr } %t51, 0
  %t55 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_cfbfa2371b772a5c_479a03f314fcd8b8, { i64, ptr } %t56, i1 false)
  unreachable
bb7:
  %t57 = load i32, ptr %l14, !tbaa !23
  %t58 = icmp eq i32 %t57, 131072
  br i1 %t58, label %bb8, label %bb9
bb8:
  call void @__olang_bang_failed_plain(ptr @olang_loc_ecfe7bc4e914c155_2facd670f5d599)
  unreachable
bb9:
  call void @__olang_bang_failed_plain(ptr @olang_loc_236626def65966f_f8ee7e95debf0f53)
  unreachable
bb10:
  %t60 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t60, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t63, ptr %l23
  br label %bb11
bb11:
  %t64 = load i1, ptr %l23, !tbaa !21
  br i1 %t64, label %bb12, label %bb13
bb12:
  store i64 0, ptr %l3, !tbaa !24
  store i64 3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr %l3, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8ace81b314be0ed6_98e2c78d06064582)
  unreachable
bb14:
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb19
bb16:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t76 = load i64, ptr %l3, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l5, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l5, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l30, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb18
bb18:
  %t91 = load i64, ptr %l30, !tbaa !24
  store i64 %t91, ptr %l27, !tbaa !24
  br label %bb19
bb19:
  %t92 = load i64, ptr %l27, !tbaa !24
  store i64 %t92, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t93 = load i64, ptr %l7, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb22:
  br label %bb23
bb23:
  %t101 = load i64, ptr %l3, !tbaa !24
  %t102 = load i64, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l5, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l8, !tbaa !24
  %t112 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aLines_2eNext(ptr %s0, ptr %s3, ptr %l1)
  %t113 = extractvalue { i32, { i64, ptr } } %t112, 1
  %t114 = extractvalue { i32, { i64, ptr } } %t112, 0
  store i32 %t114, ptr %l51
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb25, label %ok.116, !prof !99
ok.116:
  store { i64, ptr } %t113, ptr %l50
  br label %bb24
bb24:
  %t117 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t117, ptr %l48, !tbaa !27
  br label %bb31
bb25:
  %t118 = load i32, ptr %l51, !tbaa !23
  %t119 = ashr i32 %t118, 16
  %t121 = icmp eq i32 %t119, 2
  br i1 %t121, label %bb26, label %bb27
bb26:
  %t123 = load i32, ptr %l51, !tbaa !23
  %t124 = ashr i32 %t123, 16
  %t126 = icmp eq i32 %t124, 1
  br i1 %t126, label %bb28, label %bb29
bb27:
  %t128 = load i32, ptr %l51, !tbaa !23
  %t129 = lshr i32 %t128, 16
  %t130 = and i32 %t128, 65535
  %t131 = icmp eq i32 %t129, 1
  %t132 = select i1 %t131, i32 1, i32 0
  %t133 = icmp eq i32 %t129, 2
  %t134 = select i1 %t133, i32 0, i32 %t132
  %t135 = icmp eq i32 %t128, 0
  %t136 = shl i32 %t134, 16
  %t137 = or i32 %t136, %t130
  %t138 = select i1 %t135, i32 0, i32 %t137
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t138, ptr %rv
  br label %ret
bb28:
  call void @__olang_errpay_pop()
  br label %bb29
bb29:
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_cdec8918cbf67d26_bc226afea482d74a)
  unreachable
bb32:
  %t140 = load i64, ptr %l7, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l7, !tbaa !24
  br label %bb20
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @std_2fio_2ebracketed(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/io:Lines"
  %l7 = alloca i32
  %l10 = alloca %"std/io:Lines"
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l20 = alloca i1
  %l28 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ereading(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i32, ptr %l7, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load i32, ptr %l2, !tbaa !23
  %t9 = call %"std/io:Lines" @std_2fio_3aLines_2ector(ptr %s1, i32 %t5, i64 %a1)
  store %"std/io:Lines" %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load %"std/io:Lines", ptr %l10
  store %"std/io:Lines" %t10, ptr %l4
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aLines_2eNext(ptr %s1, ptr %s2, ptr %l4)
  %t13 = extractvalue { i32, { i64, ptr } } %t12, 1
  %t14 = extractvalue { i32, { i64, ptr } } %t12, 0
  store i32 %t14, ptr %l14
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  store { i64, ptr } %t13, ptr %l13
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t17, ptr %l11, !tbaa !27
  br label %bb14
bb5:
  %t18 = load i32, ptr %l14, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 2
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  br i1 %t26, label %bb8, label %bb9
bb7:
  %t28 = load i32, ptr %l14, !tbaa !23
  %t29 = ashr i32 %t28, 16
  %t31 = icmp eq i32 %t29, 1
  store i1 %t31, ptr %l20, !tbaa !21
  %t32 = load i32, ptr %l14, !tbaa !23
  %t33 = ashr i32 %t32, 16
  %t35 = icmp eq i32 %t33, 1
  br i1 %t35, label %bb11, label %bb12
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb13:
  call void @__olang_check_failed(ptr @olang_loc_19a3a555e0bc0672_a80c148e75e56d4e)
  unreachable
bb14:
  %t37 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t47 = extractvalue { i64, ptr } %t37, 1
  %t48 = extractvalue { i64, ptr } %t37, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t41, i64 %t42)
  %t54 = getelementptr i8, ptr %t53, i64 %t42
  call void @olang_textcopy(ptr %t54, ptr %t43, i64 %t44)
  %t55 = getelementptr i8, ptr %t54, i64 %t44
  call void @olang_textcopy(ptr %t55, ptr %t47, i64 %t48)
  %t56 = getelementptr i8, ptr %t55, i64 %t48
  call void @olang_textcopy(ptr %t56, ptr %t50, i64 %t51)
  %t57 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t53, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } %t58, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l3, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  br label %bb3
bb16:
  call void @__olang_scope_close(ptr %s1)
  br label %bb17
bb17:
  %t67 = load i32, ptr %l2, !tbaa !23
  %t69 = call i32 @close(i32 %t67)
  store i32 %t69, ptr %l28
  br label %bb18
bb18:
  %t70 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @std_2fio_2echeckReadIsEmpty(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, { i64, ptr } } @std_2fio_2eRead(ptr %v0, ptr %v0, i32 %a0, { i64, ptr } %a1)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %l3, !tbaa !27
  br label %bb3
bb2:
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
bb3:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t26 = icmp eq i64 %t24, 0
  br i1 %t26, label %bb4, label %bb5
bb4:
  store i32 0, ptr %rv
  br label %ret
bb5:
  call void @__olang_check_failed(ptr @olang_loc_5d46b41c36e8feff_84fddb7c6ef404db)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2ecloseFd(i32 %a0) #0 {
entry:
  %l2 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @close(i32 %a0)
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i32, ptr %l2, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @std_2fio_2edrained(ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/io:Lines"
  %l5 = alloca %"std/io:Lines"
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l15 = alloca i1
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l1, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = call %"std/io:Lines" @std_2fio_3aLines_2ector(ptr %s1, i32 %a0, i64 65536)
  store %"std/io:Lines" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/io:Lines", ptr %l5
  store %"std/io:Lines" %t4, ptr %l2
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aLines_2eNext(ptr %s1, ptr %s2, ptr %l2)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l9
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb4, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l8
  br label %bb3
bb3:
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l6, !tbaa !27
  br label %bb13
bb4:
  %t12 = load i32, ptr %l9, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 2
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i32, ptr %l9, !tbaa !23
  %t18 = ashr i32 %t17, 16
  %t20 = icmp eq i32 %t18, 1
  br i1 %t20, label %bb7, label %bb8
bb6:
  %t22 = load i32, ptr %l9, !tbaa !23
  %t23 = ashr i32 %t22, 16
  %t25 = icmp eq i32 %t23, 1
  store i1 %t25, ptr %l15, !tbaa !21
  %t26 = load i32, ptr %l9, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  br i1 %t29, label %bb10, label %bb11
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb10:
  call void @__olang_errpay_pop()
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  br label %bb12
bb12:
  call void @__olang_check_failed(ptr @olang_loc_65126f5b67a1f66c_44d990074c227388)
  unreachable
bb13:
  %t31 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t38 = extractvalue { i64, ptr } %t31, 1
  %t39 = extractvalue { i64, ptr } %t31, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t35, i64 %t36)
  %t45 = getelementptr i8, ptr %t44, i64 %t36
  call void @olang_textcopy(ptr %t45, ptr %t38, i64 %t39)
  %t46 = getelementptr i8, ptr %t45, i64 %t39
  call void @olang_textcopy(ptr %t46, ptr %t41, i64 %t42)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t44, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = extractvalue { i64, ptr } %t48, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l1, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  br label %bb2
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb16:
  %t57 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fio_2efailedFlushes(i32 %a0) #0 {
entry:
  %l1 = alloca %"std/io:Writer"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"std/io:Writer"
  %l12 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca i64
  %l39 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 %a0, i64 4)
  store %"std/io:Writer" %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load %"std/io:Writer", ptr %l10
  store %"std/io:Writer" %t4, ptr %l1
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t6)
  br label %bb2
bb2:
  call void @std_2fio_2estd_2fio_3aWriter_2eWriteChar(ptr %s0, ptr %l1, i8 33)
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb9
bb6:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l20, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l20, !tbaa !24
  store i64 %t34, ptr %l17, !tbaa !24
  br label %bb9
bb9:
  %t35 = load i64, ptr %l17, !tbaa !24
  store i64 %t35, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l8, !tbaa !24
  %t55 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l1)
  store i32 %t55, ptr %l39
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb15, label %ok.57, !prof !99
ok.57:
  br label %bb14
bb14:
  br label %bb26
bb15:
  %t58 = load i32, ptr %l39, !tbaa !23
  %t59 = icmp eq i32 %t58, 65536
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t61 = load i32, ptr %l39, !tbaa !23
  %t62 = ashr i32 %t61, 16
  %t64 = icmp eq i32 %t62, 1
  br i1 %t64, label %bb18, label %bb19
bb17:
  %t66 = load i32, ptr %l39, !tbaa !23
  %t67 = icmp eq i32 %t66, 65537
  br i1 %t67, label %bb21, label %bb22
bb18:
  call void @__olang_errpay_pop()
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t69 = load i64, ptr %l2, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l2, !tbaa !24
  br label %bb26
bb21:
  %t73 = load i32, ptr %l39, !tbaa !23
  %t74 = ashr i32 %t73, 16
  %t76 = icmp eq i32 %t74, 1
  br i1 %t76, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_e6fc1695886d91da_b063287e95dbbab6)
  unreachable
bb23:
  call void @__olang_errpay_pop()
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l7, !tbaa !24
  br label %bb10
bb28:
  %t82 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fio_2eioChurn() #0 {
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
  %t50 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
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

define dso_local i32 @std_2fio_2eopenReadOnly(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t4 = extractvalue { i64, ptr } %a0, 1
  %t5 = extractvalue { i64, ptr } %a0, 0
  %t6 = call i32 (ptr, i32, ...) @open(ptr %t4, i32 0)
  store i32 %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load i32, ptr %l3, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2ereading(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca [2 x i32]
  %l5 = alloca i32
  %l10 = alloca i32
  %l15 = alloca { i64, ptr }
  %l18 = alloca i32
  %s1 = alloca %olang.builder
  %s1room = alloca [64 x i8], align 8
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t1 = insertvalue [2 x i32] undef, i32 0, 0
  %t2 = insertvalue [2 x i32] %t1, i32 0, 1
  store [2 x i32] %t2, ptr %l1
  %t5 = insertvalue { i64, ptr } undef, i64 2, 0
  %t6 = insertvalue { i64, ptr } %t5, ptr %l1, 1
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = call i32 @pipe(ptr %t8)
  store i32 %t10, ptr %l5
  br label %bb1
bb1:
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = icmp eq i32 %t11, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr [2 x i32], ptr %l1, i64 0, i64 1
  %t15 = load i32, ptr %t14, !tbaa !33
  %t20 = call i32 @std_2fio_2eWrite(ptr %v0, i32 %t15, { i64, ptr } %a0)
  store i32 %t20, ptr %l10
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb5, label %ok.22, !prof !99
ok.22:
  br label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_48f9082997753888_a240ae8e5e29a0c)
  unreachable
bb4:
  br label %bb10
bb5:
  %t23 = load i32, ptr %l10, !tbaa !23
  %t24 = icmp eq i32 %t23, 65536
  br i1 %t24, label %bb6, label %bb7
bb6:
  call void @__olang_bang_failed_plain(ptr @olang_loc_6ee02aeeb4b82e91_bbd4c13499124615)
  unreachable
bb7:
  %t26 = load i32, ptr %l10, !tbaa !23
  %t27 = icmp eq i32 %t26, 65537
  br i1 %t27, label %bb8, label %bb9
bb8:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s1
  store ptr %s1room, ptr %s1
  %t29 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t29, i64 %t30)
  %t31 = call ptr @__olang_errpay_top_get()
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t32, i64 %t33)
  %t35 = getelementptr { i64, [1 x i64] }, ptr %t31, i32 0, i32 1
  %t36 = getelementptr { i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t39 = call ptr @__olang_sb_room(ptr %s1, i64 24)
  %t40 = call i64 @__olang_fmt_i64(ptr %t39, i64 %t37)
  call void @__olang_sb_add(ptr %s1, i64 %t40)
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t41, i64 %t42)
  %t43 = load ptr, ptr %s1
  %t44 = getelementptr %olang.builder, ptr %s1, i32 0, i32 1
  %t45 = load i64, ptr %t44
  %t46 = load ptr, ptr @__olang_prog_scope
  %t47 = call ptr @__olang_scope_alloc(ptr %t46, i64 %t45)
  call void @olang_textcopy(ptr %t47, ptr %t43, i64 %t45)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %l15, !tbaa !27
  %t50 = getelementptr %olang.builder, ptr %s1, i32 0, i32 3
  %t51 = load ptr, ptr %t50
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %sbgrew.53, label %sbdone.54
sbgrew.53:
  call void @__olang_sb_done(ptr %s1)
  br label %sbdone.54
sbdone.54:
  %t55 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t56 = load ptr, ptr @__olang_prog_scope
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t58 = extractvalue { i64, ptr } %t55, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = extractvalue { i64, ptr } %t62, 0
  %t66 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_d370e8755f65b4b1_c6fa620c8a8d5d7d, { i64, ptr } %t67, i1 false)
  unreachable
bb9:
  call void @__olang_bang_failed_plain(ptr @olang_loc_6b542447dc4d89ad_116b4d1aefb73901)
  unreachable
bb10:
  %t68 = getelementptr [2 x i32], ptr %l1, i64 0, i64 1
  %t69 = load i32, ptr %t68, !tbaa !33
  %t71 = call i32 @close(i32 %t69)
  store i32 %t71, ptr %l18
  br label %bb11
bb11:
  %t72 = getelementptr [2 x i32], ptr %l1, i64 0, i64 0
  %t73 = load i32, ptr %t72, !tbaa !33
  store i32 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fio_2ereportTo(i32 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"std/io:Writer"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"std/io:Writer"
  %l15 = alloca i64
  %l18 = alloca i64
  %l42 = alloca i32
  %l44 = alloca i32
  %l49 = alloca { i64, ptr }
  %l59 = alloca i32
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s9 = alloca %olang.builder
  %s9room = alloca [64 x i8], align 8
  %rv = alloca i32
  %t58 = alloca { i64, [1 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 %a0, i64 65536)
  store %"std/io:Writer" %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load %"std/io:Writer", ptr %l10
  store %"std/io:Writer" %t4, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  store i64 %a1, ptr %l4, !tbaa !24
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
  store i64 0, ptr %l15, !tbaa !24
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
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l15, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp eq i64 %t53, 3
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load i64, ptr %l8, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t58
  %t59 = getelementptr { i64, [1 x i64] }, ptr %t58, i32 0, i32 0
  store i64 1, ptr %t59
  %t61 = insertvalue { i64 } undef, i64 %t57, 0
  %t62 = getelementptr { i64, [1 x i64] }, ptr %t58, i32 0, i32 1
  store { i64 } %t61, ptr %t62
  %t63 = load { i64, [1 x i64] }, ptr %t58
  %t64 = call ptr @__olang_errpay_push()
  %t65 = ptrtoint ptr %t64 to i64
  %t68 = inttoptr i64 %t65 to ptr
  %t69 = call ptr @__olang_scope_alloc_a(ptr %t68, i64 16, i64 8)
  store { i64, [1 x i64] } %t63, ptr %t69
  call void @__olang_errpay_set(ptr %t69)
  store i32 65537, ptr %l42, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  %t72 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l2)
  store i32 %t72, ptr %l44
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb15, label %ok.74, !prof !99
ok.74:
  br label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb20
bb15:
  %t75 = load i32, ptr %l44, !tbaa !23
  %t76 = icmp eq i32 %t75, 65536
  br i1 %t76, label %bb16, label %bb17
bb16:
  call void @__olang_bang_failed_plain(ptr @olang_loc_82463fd07313b343_899050d6bae42837)
  unreachable
bb17:
  %t78 = load i32, ptr %l44, !tbaa !23
  %t79 = icmp eq i32 %t78, 65537
  br i1 %t79, label %bb18, label %bb19
bb18:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t81 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t81, i64 %t82)
  %t83 = call ptr @__olang_errpay_top_get()
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t84, i64 %t85)
  %t87 = getelementptr { i64, [1 x i64] }, ptr %t83, i32 0, i32 1
  %t88 = getelementptr { i64 }, ptr %t87, i32 0, i32 0
  %t89 = load i64, ptr %t88
  %t91 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t92 = call i64 @__olang_fmt_i64(ptr %t91, i64 %t89)
  call void @__olang_sb_add(ptr %s5, i64 %t92)
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t93, i64 %t94)
  %t95 = load ptr, ptr %s5
  %t96 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t97 = load i64, ptr %t96
  %t98 = load ptr, ptr @__olang_prog_scope
  %t99 = call ptr @__olang_scope_alloc(ptr %t98, i64 %t97)
  call void @olang_textcopy(ptr %t99, ptr %t95, i64 %t97)
  %t100 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  store { i64, ptr } %t101, ptr %l49, !tbaa !27
  %t102 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t103 = load ptr, ptr %t102
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %sbgrew.105, label %sbdone.106
sbgrew.105:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.106
sbdone.106:
  %t107 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t108 = load ptr, ptr @__olang_prog_scope
  %t109 = extractvalue { i64, ptr } %t107, 0
  %t110 = extractvalue { i64, ptr } %t107, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t116 = extractvalue { i64, ptr } %t114, 1
  %t117 = extractvalue { i64, ptr } %t114, 0
  %t118 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t116, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f4311b0505de9da9_3272b36637f70495, { i64, ptr } %t119, i1 false)
  unreachable
bb19:
  call void @__olang_bang_failed_plain(ptr @olang_loc_b6949e6a237530b_4c14899758e8fd2f)
  unreachable
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t120 = load i32, ptr %l42, !tbaa !23
  store i32 %t120, ptr %rv
  br label %ret
bb21:
  %t121 = load i64, ptr %l8, !tbaa !24
  %t122 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t125 = call i64 @__olang_fmt_i64(ptr null, i64 %t121)
  %t126 = add i64 %t123, %t125
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t129 = add i64 %t126, %t128
  %t130 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t129)
  call void @olang_textcopy(ptr %t130, ptr %t122, i64 %t123)
  %t131 = getelementptr i8, ptr %t130, i64 %t123
  %t132 = call i64 @__olang_fmt_i64(ptr %t131, i64 %t121)
  %t133 = getelementptr i8, ptr %t131, i64 %t125
  call void @olang_textcopy(ptr %t133, ptr %t127, i64 %t128)
  %t134 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t130, 1
  %t138 = extractvalue { i64, ptr } %t135, 0
  %t139 = extractvalue { i64, ptr } %t135, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } %t143)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb23:
  %t146 = load i64, ptr %l7, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l7, !tbaa !24
  br label %bb8
bb24:
  %t151 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l2)
  store i32 %t151, ptr %l59
  %t152 = icmp ne i32 %t151, 0
  br i1 %t152, label %bb26, label %ok.153, !prof !99
ok.153:
  br label %bb25
bb25:
  br label %bb31
bb26:
  %t154 = load i32, ptr %l59, !tbaa !23
  %t155 = icmp eq i32 %t154, 65536
  br i1 %t155, label %bb27, label %bb28
bb27:
  call void @__olang_bang_failed_plain(ptr @olang_loc_82463fd07313b343_899050d6bae42837)
  unreachable
bb28:
  %t157 = load i32, ptr %l59, !tbaa !23
  %t158 = icmp eq i32 %t157, 65537
  br i1 %t158, label %bb29, label %bb30
bb29:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s9
  store ptr %s9room, ptr %s9
  %t160 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t160, i64 %t161)
  %t162 = call ptr @__olang_errpay_top_get()
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t163, i64 %t164)
  %t166 = getelementptr { i64, [1 x i64] }, ptr %t162, i32 0, i32 1
  %t167 = getelementptr { i64 }, ptr %t166, i32 0, i32 0
  %t168 = load i64, ptr %t167
  %t170 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t171 = call i64 @__olang_fmt_i64(ptr %t170, i64 %t168)
  call void @__olang_sb_add(ptr %s9, i64 %t171)
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t172, i64 %t173)
  %t174 = load ptr, ptr %s9
  %t175 = getelementptr %olang.builder, ptr %s9, i32 0, i32 1
  %t176 = load i64, ptr %t175
  %t177 = load ptr, ptr @__olang_prog_scope
  %t178 = call ptr @__olang_scope_alloc(ptr %t177, i64 %t176)
  call void @olang_textcopy(ptr %t178, ptr %t174, i64 %t176)
  %t179 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t178, 1
  store { i64, ptr } %t180, ptr %l64, !tbaa !27
  %t181 = getelementptr %olang.builder, ptr %s9, i32 0, i32 3
  %t182 = load ptr, ptr %t181
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %sbgrew.184, label %sbdone.185
sbgrew.184:
  call void @__olang_sb_done(ptr %s9)
  br label %sbdone.185
sbdone.185:
  %t186 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t187 = load ptr, ptr @__olang_prog_scope
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = extractvalue { i64, ptr } %t186, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  %t195 = extractvalue { i64, ptr } %t193, 1
  %t196 = extractvalue { i64, ptr } %t193, 0
  %t197 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t195, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_f4311b0505de9da9_3272b36637f70495, { i64, ptr } %t198, i1 false)
  unreachable
bb30:
  call void @__olang_bang_failed_plain(ptr @olang_loc_b6949e6a237530b_4c14899758e8fd2f)
  unreachable
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aLines_2eNext(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l66 = alloca { i64, ptr }
  %l81 = alloca i64
  %l84 = alloca i64
  %l122 = alloca { i64, ptr }
  %l123 = alloca i64
  %l124 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l128 = alloca i64
  %l133 = alloca { i64, ptr }
  %l140 = alloca i64
  %l143 = alloca i64
  %l168 = alloca i32
  %l169 = alloca ptr
  %l171 = alloca i64
  %l174 = alloca i64
  %l175 = alloca i64
  %l187 = alloca i64
  %l211 = alloca { i64, ptr }
  %l212 = alloca ptr
  %s10 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t394 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:Lines", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t6 = load i64, ptr %l1, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/io:Lines", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l35, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l35, !tbaa !24
  store i64 %t39, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l32, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = getelementptr %"std/io:Lines", ptr %t59, i32 0, i32 1
  %t64 = getelementptr { i64, ptr }, ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i8, ptr %t65, i64 %t60
  %t67 = load i8, ptr %t66, !tbaa !32
  %t70 = icmp eq i8 %t67, 10
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"std/io:Lines", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = add i64 %t78, 1
  %t83 = getelementptr %"std/io:Lines", ptr %t77, i32 0, i32 2
  store i64 %t80, ptr %t83, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l7, !tbaa !24
  %t90 = call { i64, ptr } @std_2fio_2estd_2fio_3aLines_2eline(ptr %v0, ptr %v1, ptr %t84, i64 %t75, i64 %t86)
  store { i64, ptr } %t90, ptr %l66
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t91 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t92 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t91, 1
  store { i32, { i64, ptr } } %t92, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"std/io:Lines", ptr %t97, i32 0, i32 3
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"std/io:Lines", ptr %t101, i32 0, i32 2
  %t104 = load i64, ptr %t103, !tbaa !24
  %t107 = sub i64 %t100, %t104
  store i64 %t107, ptr %l1, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"std/io:Lines", ptr %t109, i32 0, i32 2
  %t112 = load i64, ptr %t111, !tbaa !24
  %t114 = icmp sgt i64 %t112, 0
  br i1 %t114, label %bb18, label %bb19
bb18:
  store i64 0, ptr %l9, !tbaa !24
  %t116 = load i64, ptr %l1, !tbaa !24
  store i64 %t116, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l10, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = icmp sgt i64 %t118, %t119
  br i1 %t122, label %bb20, label %bb21
bb19:
  br label %bb32
bb20:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb25
bb22:
  %t128 = load i64, ptr %l10, !tbaa !24
  %t129 = load i64, ptr %l9, !tbaa !24
  %t132 = sub i64 %t128, %t129
  %t133 = load i64, ptr %l11, !tbaa !24
  %t136 = add i64 %t132, %t133
  %t138 = sub i64 %t136, 1
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = sdiv i64 %t138, %t139
  store i64 %t142, ptr %l84, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb24
bb24:
  %t144 = load i64, ptr %l84, !tbaa !24
  store i64 %t144, ptr %l81, !tbaa !24
  br label %bb25
bb25:
  %t145 = load i64, ptr %l81, !tbaa !24
  store i64 %t145, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb26
bb26:
  %t146 = load i64, ptr %l13, !tbaa !24
  %t147 = load i64, ptr %l12, !tbaa !24
  %t150 = icmp slt i64 %t146, %t147
  %t152 = xor i1 %t150, true
  br i1 %t152, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  br label %bb29
bb29:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t155 = load i64, ptr %l13, !tbaa !24
  %t156 = load i64, ptr %l11, !tbaa !24
  %t159 = mul i64 %t155, %t156
  %t162 = add i64 %t154, %t159
  store i64 %t162, ptr %l14, !tbaa !24
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i64, ptr %l14, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"std/io:Lines", ptr %t167, i32 0, i32 2
  %t170 = load i64, ptr %t169, !tbaa !24
  %t171 = load i64, ptr %l14, !tbaa !24
  %t174 = add i64 %t170, %t171
  %t176 = getelementptr %"std/io:Lines", ptr %t166, i32 0, i32 1
  %t178 = getelementptr { i64, ptr }, ptr %t176, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i8, ptr %t179, i64 %t174
  %t181 = load i8, ptr %t180, !tbaa !32
  %t184 = getelementptr %"std/io:Lines", ptr %t164, i32 0, i32 1
  %t186 = getelementptr { i64, ptr }, ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr i8, ptr %t187, i64 %t165
  store i8 %t181, ptr %t188, !tbaa !32
  br label %bb30
bb30:
  %t189 = load i64, ptr %l13, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l13, !tbaa !24
  br label %bb26
bb31:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"std/io:Lines", ptr %t193, i32 0, i32 2
  store i64 0, ptr %t195, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load i64, ptr %l1, !tbaa !24
  %t200 = getelementptr %"std/io:Lines", ptr %t196, i32 0, i32 3
  store i64 %t197, ptr %t200, !tbaa !24
  br label %bb32
bb32:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"std/io:Lines", ptr %t201, i32 0, i32 3
  %t204 = load i64, ptr %t203, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"std/io:Lines", ptr %t205, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t213 = icmp eq i64 %t204, %t210
  br i1 %t213, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s10
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"std/io:Lines", ptr %t215, i32 0, i32 1
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  store { i64, ptr } %t218, ptr %l122, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  store i64 %t220, ptr %l123, !tbaa !24
  %t221 = load i64, ptr %l123, !tbaa !24
  %t222 = mul i64 %t221, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t222)
  %t224 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  store { i64, ptr } %t225, ptr %l124, !tbaa !27
  %t226 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = load i64, ptr %l123, !tbaa !24
  %t231 = mul i64 %t230, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t227, ptr %t229, i64 %t231, i1 false)
  %t232 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t232, ptr %l15, !tbaa !27
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l125, !tbaa !29
  %t234 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t238 = mul i64 %t236, 2
  store i64 %t238, ptr %l128, !tbaa !24
  %t239 = load i64, ptr %l128, !tbaa !24
  %t240 = icmp sge i64 %t239, 0
  br i1 %t240, label %bb35, label %bb36
bb34:
  br label %bb51
bb35:
  %t242 = load i64, ptr %l128, !tbaa !24
  %t243 = mul i64 %t242, 1
  %t244 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t243)
  %t245 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  %t249 = load ptr, ptr %l125, !tbaa !29
  %t250 = getelementptr %"std/io:Lines", ptr %t249, i32 0, i32 1
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  store { i64, ptr } %t251, ptr %l133, !tbaa !27
  %t253 = load ptr, ptr %l125, !tbaa !29
  %t254 = getelementptr %"std/io:Lines", ptr %t253, i32 0, i32 1
  store { i64, ptr } %t246, ptr %t254, !tbaa !27
  %t255 = load i1, ptr @olang_2esole_2estd_2fio_3aLines_2e1
  br i1 %t255, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_5f2b8b2f6326e81f_f1c47ff7019f64c3)
  unreachable
bb37:
  %t257 = load { i64, ptr }, ptr %l133
  %t258 = extractvalue { i64, ptr } %t257, 1
  call void @__olang_region_release(ptr %t258)
  store { i64, ptr } zeroinitializer, ptr %l133
  br label %bb38
bb38:
  store i64 0, ptr %l16, !tbaa !24
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"std/io:Lines", ptr %t259, i32 0, i32 3
  %t262 = load i64, ptr %t261, !tbaa !24
  store i64 %t262, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t264 = load i64, ptr %l17, !tbaa !24
  %t265 = load i64, ptr %l16, !tbaa !24
  %t268 = icmp sgt i64 %t264, %t265
  br i1 %t268, label %bb39, label %bb40
bb39:
  %t270 = load i64, ptr %l18, !tbaa !24
  %t272 = icmp sgt i64 %t270, 0
  br i1 %t272, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb44
bb41:
  %t274 = load i64, ptr %l17, !tbaa !24
  %t275 = load i64, ptr %l16, !tbaa !24
  %t278 = sub i64 %t274, %t275
  %t279 = load i64, ptr %l18, !tbaa !24
  %t282 = add i64 %t278, %t279
  %t284 = sub i64 %t282, 1
  %t285 = load i64, ptr %l18, !tbaa !24
  %t288 = sdiv i64 %t284, %t285
  store i64 %t288, ptr %l143, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb43
bb43:
  %t290 = load i64, ptr %l143, !tbaa !24
  store i64 %t290, ptr %l140, !tbaa !24
  br label %bb44
bb44:
  %t291 = load i64, ptr %l140, !tbaa !24
  store i64 %t291, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb45
bb45:
  %t292 = load i64, ptr %l20, !tbaa !24
  %t293 = load i64, ptr %l19, !tbaa !24
  %t296 = icmp slt i64 %t292, %t293
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb46, label %bb47
bb46:
  br label %bb50
bb47:
  br label %bb48
bb48:
  %t300 = load i64, ptr %l16, !tbaa !24
  %t301 = load i64, ptr %l20, !tbaa !24
  %t302 = load i64, ptr %l18, !tbaa !24
  %t305 = mul i64 %t301, %t302
  %t308 = add i64 %t300, %t305
  store i64 %t308, ptr %l21, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load i64, ptr %l21, !tbaa !24
  %t312 = load i64, ptr %l21, !tbaa !24
  %t314 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !27
  %t316 = getelementptr i8, ptr %t315, i64 %t312
  %t317 = load i8, ptr %t316, !tbaa !32
  %t320 = getelementptr %"std/io:Lines", ptr %t310, i32 0, i32 1
  %t322 = getelementptr { i64, ptr }, ptr %t320, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr i8, ptr %t323, i64 %t311
  store i8 %t317, ptr %t324, !tbaa !32
  br label %bb49
bb49:
  %t325 = load i64, ptr %l20, !tbaa !24
  %t327 = add i64 %t325, 1
  store i64 %t327, ptr %l20, !tbaa !24
  br label %bb45
bb50:
  call void @__olang_scope_close(ptr %s10)
  br label %bb51
bb51:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"std/io:Lines", ptr %t329, i32 0, i32 0
  %t332 = load i32, ptr %t331, !tbaa !23
  store i32 %t332, ptr %l168, !tbaa !23
  %t333 = load ptr, ptr %l0, !tbaa !29
  store ptr %t333, ptr %l169, !tbaa !29
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr %"std/io:Lines", ptr %t334, i32 0, i32 3
  %t337 = load i64, ptr %t336, !tbaa !24
  store i64 %t337, ptr %l171, !tbaa !24
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"std/io:Lines", ptr %t338, i32 0, i32 1
  %t341 = load { i64, ptr }, ptr %t340, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t341, 0
  store i64 %t343, ptr %l174, !tbaa !24
  %t344 = load ptr, ptr %l169, !tbaa !29
  %t345 = getelementptr %"std/io:Lines", ptr %t344, i32 0, i32 1
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 0
  store i64 %t347, ptr %l175, !tbaa !24
  %t348 = load i64, ptr %l171, !tbaa !24
  %t349 = icmp sge i64 %t348, 0
  br i1 %t349, label %bb52, label %bb53
bb52:
  %t351 = load i64, ptr %l171, !tbaa !24
  %t352 = load i64, ptr %l174, !tbaa !24
  %t353 = icmp sle i64 %t351, %t352
  br i1 %t353, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_3da5c997e7d4ef62_ab09d2a305b27bce)
  unreachable
bb54:
  %t355 = load i64, ptr %l174, !tbaa !24
  %t356 = load i64, ptr %l175, !tbaa !24
  %t357 = icmp sle i64 %t355, %t356
  br i1 %t357, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_3da5c997e7d4ef62_ab09d2a305b27bce)
  unreachable
bb56:
  %t359 = load ptr, ptr %l169, !tbaa !29
  %t360 = getelementptr %"std/io:Lines", ptr %t359, i32 0, i32 1
  %t361 = getelementptr { i64, ptr }, ptr %t360, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = load i64, ptr %l171, !tbaa !24
  %t364 = load i64, ptr %l174, !tbaa !24
  %t365 = getelementptr i8, ptr %t362, i64 %t363
  %t366 = sub i64 %t364, %t363
  %t367 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t365, 1
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t371 = getelementptr %"std/io:Lines", ptr %t369, i32 0, i32 1
  %t372 = load { i64, ptr }, ptr %t371, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t372, 0
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"std/io:Lines", ptr %t375, i32 0, i32 3
  %t378 = load i64, ptr %t377, !tbaa !24
  %t381 = sub i64 %t374, %t378
  %t383 = load i32, ptr %l168, !tbaa !23
  %t385 = extractvalue { i64, ptr } %t368, 1
  %t386 = extractvalue { i64, ptr } %t368, 0
  %t388 = call i64 @read(i32 %t383, ptr %t385, i64 %t381)
  store i64 %t388, ptr %l187
  br label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_3da5c997e7d4ef62_ab09d2a305b27bce)
  unreachable
bb58:
  %t389 = load i64, ptr %l187, !tbaa !24
  store i64 %t389, ptr %l22, !tbaa !24
  %t390 = load i64, ptr %l22, !tbaa !24
  %t392 = icmp slt i64 %t390, 0
  br i1 %t392, label %bb59, label %bb60
bb59:
  store { i64, [1 x i64] } zeroinitializer, ptr %t394
  %t395 = getelementptr { i64, [1 x i64] }, ptr %t394, i32 0, i32 0
  store i64 0, ptr %t395
  %t396 = load { i64, [1 x i64] }, ptr %t394
  %t397 = call ptr @__olang_errpay_push()
  %t398 = ptrtoint ptr %t397 to i64
  %t401 = inttoptr i64 %t398 to ptr
  %t402 = call ptr @__olang_scope_alloc_a(ptr %t401, i64 16, i64 8)
  store { i64, [1 x i64] } %t396, ptr %t402
  call void @__olang_errpay_set(ptr %t402)
  %t405 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t405, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t406 = load i64, ptr %l22, !tbaa !24
  %t408 = icmp eq i64 %t406, 0
  br i1 %t408, label %bb62, label %bb63
bb62:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"std/io:Lines", ptr %t410, i32 0, i32 2
  %t413 = load i64, ptr %t412, !tbaa !24
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"std/io:Lines", ptr %t414, i32 0, i32 3
  %t417 = load i64, ptr %t416, !tbaa !24
  %t420 = icmp eq i64 %t413, %t417
  br i1 %t420, label %bb64, label %bb65
bb63:
  br label %bb68
bb64:
  %t423 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 131072, 0
  store { i32, { i64, ptr } } %t423, ptr %rv
  br label %ret
bb65:
  br label %bb66
bb66:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr %"std/io:Lines", ptr %t424, i32 0, i32 2
  %t427 = load i64, ptr %t426, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"std/io:Lines", ptr %t430, i32 0, i32 3
  %t433 = load i64, ptr %t432, !tbaa !24
  %t436 = getelementptr %"std/io:Lines", ptr %t429, i32 0, i32 2
  store i64 %t433, ptr %t436, !tbaa !24
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"std/io:Lines", ptr %t439, i32 0, i32 3
  %t442 = load i64, ptr %t441, !tbaa !24
  %t446 = call { i64, ptr } @std_2fio_2estd_2fio_3aLines_2eline(ptr %v0, ptr %v1, ptr %t437, i64 %t427, i64 %t442)
  store { i64, ptr } %t446, ptr %l211
  br label %bb67
bb67:
  %t447 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t448 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t447, 1
  store { i32, { i64, ptr } } %t448, ptr %rv
  br label %ret
bb68:
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l212, !tbaa !29
  %t450 = load ptr, ptr %l212, !tbaa !29
  %t451 = getelementptr %"std/io:Lines", ptr %t450, i32 0, i32 3
  %t452 = load i64, ptr %t451, !tbaa !24
  %t453 = load i64, ptr %l22, !tbaa !24
  %t456 = add i64 %t452, %t453
  %t458 = load ptr, ptr %l212, !tbaa !29
  %t459 = getelementptr %"std/io:Lines", ptr %t458, i32 0, i32 3
  store i64 %t456, ptr %t459, !tbaa !24
  br label %bb69
bb69:
  br label %bb1
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @std_2fio_2estd_2fio_3aLines_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i1
  %l24 = alloca i64
  %l26 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l13, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = sub i64 %t13, 1
  %t17 = getelementptr %"std/io:Lines", ptr %t12, i32 0, i32 1
  %t19 = getelementptr { i64, ptr }, ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t15
  %t22 = load i8, ptr %t21, !tbaa !32
  %t25 = icmp eq i8 %t22, 13
  store i1 %t25, ptr %l17, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb4, label %bb5
bb4:
  store i64 1, ptr %l24, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = load i64, ptr %l24, !tbaa !24
  %t30 = sub i64 %t28, %t29
  store i64 %t30, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  store i64 %t32, ptr %l26, !tbaa !24
  %t33 = load i64, ptr %l26, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load i64, ptr %l26, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t41 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t41, ptr %lp4
  %t43 = load ptr, ptr %lp4
  store { i64, ptr } %t40, ptr %t43, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l3, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_56fdf4dcd8eda50e_44906f9ee22a8e92)
  unreachable
bb9:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb14
bb11:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l36, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb13
bb13:
  %t72 = load i64, ptr %l36, !tbaa !24
  store i64 %t72, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t73 = load i64, ptr %l33, !tbaa !24
  store i64 %t73, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t83 = load i64, ptr %l9, !tbaa !24
  %t84 = load i64, ptr %l7, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l10, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l1, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = add i64 %t94, %t95
  %t100 = getelementptr %"std/io:Lines", ptr %t93, i32 0, i32 1
  %t102 = getelementptr { i64, ptr }, ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i8, ptr %t103, i64 %t98
  %t105 = load i8, ptr %t104, !tbaa !32
  %t107 = load ptr, ptr %lp4
  %t109 = getelementptr { i64, ptr }, ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i8, ptr %t110, i64 %t92
  store i8 %t105, ptr %t111, !tbaa !32
  br label %bb19
bb19:
  %t112 = load i64, ptr %l9, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l9, !tbaa !24
  br label %bb15
bb20:
  %t116 = load ptr, ptr %lp4
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i32, { i64, [1 x i64] } }
  %l5 = alloca { i32, { i64, [1 x i64] } }
  %l6 = alloca { i32, { i64, [1 x i64] } }
  %l9 = alloca i1
  %l11 = alloca { i32, { i64, [1 x i64] } }
  %l12 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2edrain(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"std/io:Writer", ptr %t3, i32 0, i32 3
  %t6 = load { i32, { i64, [1 x i64] } }, ptr %t5
  store { i32, { i64, [1 x i64] } } %t6, ptr %l1
  %t8 = load { i32, { i64, [1 x i64] } }, ptr %l1
  store { i32, { i64, [1 x i64] } } %t8, ptr %l5
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l6
  %t11 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eerror_7bstd_2fio_3aError_7d(ptr %l5, ptr %l6)
  store i1 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i1, ptr %l9, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load { i32, { i64, [1 x i64] } }, ptr %l1
  store { i32, { i64, [1 x i64] } } %t15, ptr %l11
  %t16 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l11, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  store i32 %t17, ptr %l12, !tbaa !23
  %t18 = load i32, ptr %l12, !tbaa !23
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  br label %bb9
bb5:
  %t21 = load i32, ptr %l12, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  br i1 %t24, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d49434c98a69e919_d3631f4f1bfca5d5)
  unreachable
bb7:
  %t26 = call ptr @__olang_errpay_push()
  %t27 = ptrtoint ptr %t26 to i64
  %t28 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l11, i32 0, i32 1
  %t29 = load { i64, [1 x i64] }, ptr %t28
  %t31 = inttoptr i64 %t27 to ptr
  %t32 = call ptr @__olang_scope_alloc_a(ptr %t31, i64 16, i64 8)
  store { i64, [1 x i64] } %t29, ptr %t32
  call void @__olang_errpay_set(ptr %t32)
  br label %bb8
bb8:
  %t34 = load i32, ptr %l12, !tbaa !23
  %t35 = lshr i32 %t34, 16
  %t36 = and i32 %t34, 65535
  %t37 = icmp eq i32 %t35, 1
  %t38 = select i1 %t37, i32 1, i32 0
  %t39 = icmp eq i32 %t34, 0
  %t40 = shl i32 %t38, 16
  %t41 = or i32 %t40, %t36
  %t42 = select i1 %t39, i32 0, i32 %t41
  store i32 %t42, ptr %rv
  br label %ret
bb9:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca { i32, { i64, [1 x i64] } }
  %l12 = alloca { i32, { i64, [1 x i64] } }
  %l15 = alloca i1
  %l41 = alloca i64
  %l44 = alloca i64
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:Writer", ptr %t1, i32 0, i32 3
  %t4 = load { i32, { i64, [1 x i64] } }, ptr %t3
  store { i32, { i64, [1 x i64] } } %t4, ptr %l11
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l12
  %t7 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eerror_7bstd_2fio_3aError_7d(ptr %l11, ptr %l12)
  store i1 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i1, ptr %l15, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/io:Writer", ptr %t16, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/io:Writer", ptr %t22, i32 0, i32 2
  %t25 = load i64, ptr %t24, !tbaa !24
  %t28 = sub i64 %t21, %t25
  %t31 = icmp sgt i64 %t15, %t28
  br i1 %t31, label %bb5, label %bb6
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2edrain(ptr %v0, ptr %t33)
  br label %bb7
bb6:
  br label %bb12
bb7:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"std/io:Writer", ptr %t36, i32 0, i32 1
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t44 = icmp sge i64 %t35, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2esend(ptr %v0, ptr %v1, ptr %t46, { i64, ptr } %t47)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"std/io:Writer", ptr %t50, i32 0, i32 2
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l2, !tbaa !24
  store i64 %t55, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l5, !tbaa !24
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb13, label %bb14
bb13:
  %t63 = load i64, ptr %l6, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb18
bb15:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l6, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l44, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb17
bb17:
  %t83 = load i64, ptr %l44, !tbaa !24
  store i64 %t83, ptr %l41, !tbaa !24
  br label %bb18
bb18:
  %t84 = load i64, ptr %l41, !tbaa !24
  store i64 %t84, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  %t85 = load i64, ptr %l8, !tbaa !24
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t93 = load i64, ptr %l4, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l9, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"std/io:Writer", ptr %t103, i32 0, i32 1
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l63, !tbaa !27
  %t107 = load i64, ptr %l3, !tbaa !24
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t112 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t112, ptr %l67, !tbaa !27
  %t113 = load i64, ptr %l9, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i8, ptr %t116, i64 %t113
  %t118 = load i8, ptr %t117, !tbaa !32
  %t121 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i8, ptr %t122, i64 %t111
  store i8 %t118, ptr %t123, !tbaa !32
  br label %bb23
bb23:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l8, !tbaa !24
  br label %bb19
bb24:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l3, !tbaa !24
  %t130 = load i64, ptr %l2, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t136 = getelementptr %"std/io:Writer", ptr %t128, i32 0, i32 2
  store i64 %t133, ptr %t136, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fio_2estd_2fio_3aWriter_2eWriteChar(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l10 = alloca { i32, { i64, [1 x i64] } }
  %l11 = alloca { i32, { i64, [1 x i64] } }
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l22 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:Writer", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/io:Writer", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2edrain(ptr %v0, ptr %t15)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/io:Writer", ptr %t17, i32 0, i32 3
  %t20 = load { i32, { i64, [1 x i64] } }, ptr %t19
  store { i32, { i64, [1 x i64] } } %t20, ptr %l10
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l11
  %t23 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eerror_7bstd_2fio_3aError_7d(ptr %l10, ptr %l11)
  store i1 %t23, ptr %l14
  br label %bb5
bb5:
  %t24 = load i1, ptr %l14, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/io:Writer", ptr %t27, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l17, !tbaa !27
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"std/io:Writer", ptr %t31, i32 0, i32 2
  %t34 = load i64, ptr %t33, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i8, ptr %t40, i64 %t34
  store i8 %a1, ptr %t41, !tbaa !32
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l22, !tbaa !29
  %t43 = load ptr, ptr %l22, !tbaa !29
  %t44 = getelementptr %"std/io:Writer", ptr %t43, i32 0, i32 2
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = add i64 %t45, 1
  %t49 = load ptr, ptr %l22, !tbaa !29
  %t50 = getelementptr %"std/io:Writer", ptr %t49, i32 0, i32 2
  store i64 %t47, ptr %t50, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fio_2estd_2fio_3aWriter_2edrain(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i1
  %l6 = alloca { i32, { i64, [1 x i64] } }
  %l7 = alloca { i32, { i64, [1 x i64] } }
  %l10 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:Writer", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/io:Writer", ptr %t8, i32 0, i32 3
  %t11 = load { i32, { i64, [1 x i64] } }, ptr %t10
  store { i32, { i64, [1 x i64] } } %t11, ptr %l6
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l7
  %t14 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eerror_7bstd_2fio_3aError_7d(ptr %l6, ptr %l7)
  store i1 %t14, ptr %l10
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l4, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l11, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/io:Writer", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l13, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/io:Writer", ptr %t22, i32 0, i32 2
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l15, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l16, !tbaa !24
  %t28 = icmp sge i64 0, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  br label %bb14
bb7:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 0, %t30
  br i1 %t31, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_2286ff1fbe683020_e6ca3016afdcd184)
  unreachable
bb9:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = load i64, ptr %l16, !tbaa !24
  %t35 = icmp sle i64 %t33, %t34
  br i1 %t35, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_2286ff1fbe683020_e6ca3016afdcd184)
  unreachable
bb11:
  %t37 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l15, !tbaa !24
  %t40 = getelementptr i8, ptr %t38, i64 0
  %t41 = sub i64 %t39, 0
  %t42 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t40, 1
  %t44 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2esend(ptr %v0, ptr %v0, ptr %t44, { i64, ptr } %t43)
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_2286ff1fbe683020_e6ca3016afdcd184)
  unreachable
bb13:
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"std/io:Writer", ptr %t46, i32 0, i32 2
  store i64 0, ptr %t48, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fio_2estd_2fio_3aWriter_2esend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i32, { i64, [1 x i64] } }
  %l6 = alloca i32
  %l8 = alloca i1
  %l9 = alloca { i32, { i64, [1 x i64] } }
  %l10 = alloca { i32, { i64, [1 x i64] } }
  %l11 = alloca i32
  %l15 = alloca { i32, { i64, [1 x i64] } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:Writer", ptr %t1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t8 = call i32 @std_2fio_2eWrite(ptr %v1, i32 %t4, { i64, ptr } %a1)
  store i32 %t8, ptr %l6
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  br label %bb1
bb1:
  br label %bb8
bb2:
  %t11 = load i32, ptr %l6, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l8, !tbaa !21
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l2
  %t15 = load i32, ptr %l6, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  %t24 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l2, i32 0, i32 0
  store i32 %t23, ptr %t24, !tbaa !23
  br label %bb3
bb3:
  %t25 = load { i32, { i64, [1 x i64] } }, ptr %l2
  store { i32, { i64, [1 x i64] } } %t25, ptr %l9
  store { i32, { i64, [1 x i64] } } zeroinitializer, ptr %l10
  %t26 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l9, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  store i32 %t27, ptr %l11, !tbaa !23
  %t28 = load i32, ptr %l11, !tbaa !23
  %t29 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l10, i32 0, i32 0
  store i32 %t28, ptr %t29, !tbaa !23
  %t30 = load i32, ptr %l11, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = call ptr @__olang_errpay_top_get()
  %t37 = load { i64, [1 x i64] }, ptr %t35
  %t38 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l10, i32 0, i32 1
  store { i64, [1 x i64] } %t37, ptr %t38
  br label %bb5
bb5:
  %t39 = load { i32, { i64, [1 x i64] } }, ptr %l10
  store { i32, { i64, [1 x i64] } } %t39, ptr %l2
  %t40 = load { i32, { i64, [1 x i64] } }, ptr %l2
  store { i32, { i64, [1 x i64] } } %t40, ptr %l15
  %t41 = getelementptr { i32, { i64, [1 x i64] } }, ptr %l15, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  br i1 %t45, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i32, { i64, [1 x i64] } }, ptr %l2
  %t51 = getelementptr %"std/io:Writer", ptr %t47, i32 0, i32 3
  store { i32, { i64, [1 x i64] } } %t48, ptr %t51
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local %"std/io:Lines" @std_2fio_3aLines_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i32
  %l7 = alloca i64
  %l11 = alloca i64
  %l14 = alloca { i64, ptr }
  %rv = alloca %"std/io:Lines"
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l2, !tbaa !23
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fio_3aLines_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp sgt i64 %t8, 0
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = load i64, ptr %l1, !tbaa !24
  store i64 %t12, ptr %l11, !tbaa !24
  br label %bb5
bb4:
  store i64 1, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = icmp sge i64 %t14, 0
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = load i64, ptr %l7
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %t20, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l14, !tbaa !27
  %t24 = load i1, ptr @olang_2esole_2estd_2fio_3aLines_2e1
  br i1 %t24, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_85198735f567fdd6_a81bd0a72fe385a2)
  unreachable
bb8:
  %t26 = load i64, ptr %l7
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = load { i64, ptr }, ptr %l14
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr null
  %t33 = icmp eq ptr %t32, %t27
  call void @__olang_region_settle(ptr %t27, i1 %t33)
  br label %bb9
bb9:
  %t34 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t35 = load i32, ptr %l2, !tbaa !23
  %t36 = insertvalue %"std/io:Lines" undef, i32 %t35, 0
  %t38 = insertvalue %"std/io:Lines" %t36, { i64, ptr } %t34, 1
  %t40 = insertvalue %"std/io:Lines" %t38, i64 0, 2
  %t42 = insertvalue %"std/io:Lines" %t40, i64 0, 3
  store %"std/io:Lines" %t42, ptr %rv
  br label %ret
ret:
  %rr = load %"std/io:Lines", ptr %rv
  ret %"std/io:Lines" %rr
}

define dso_local %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i32
  %l7 = alloca i64
  %l11 = alloca i64
  %rv = alloca %"std/io:Writer"
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l2, !tbaa !23
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fio_3aWriter_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp sgt i64 %t8, 0
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = load i64, ptr %l1, !tbaa !24
  store i64 %t12, ptr %l11, !tbaa !24
  br label %bb5
bb4:
  store i64 1, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = icmp sge i64 %t14, 0
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = load i64, ptr %l7
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %t20, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t25 = load i32, ptr %l2, !tbaa !23
  %t26 = insertvalue %"std/io:Writer" undef, i32 %t25, 0
  %t28 = insertvalue %"std/io:Writer" %t26, { i64, ptr } %t23, 1
  %t30 = insertvalue %"std/io:Writer" %t28, i64 0, 2
  %t32 = insertvalue %"std/io:Writer" %t30, { i32, { i64, [1 x i64] } } zeroinitializer, 3
  store %"std/io:Writer" %t32, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_6cd41157f4fd8842_c8d3cc71cb27ad56)
  unreachable
ret:
  %rr = load %"std/io:Writer", ptr %rv
  ret %"std/io:Writer" %rr
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare i64 @read(i32, ptr, i64)
declare ptr @__olang_errpay_push() cold
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
declare void @__olang_errpay_set(ptr) cold
declare void @__olang_check_failed(ptr) cold noreturn
declare i64 @write(i32, ptr, i64)
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d2 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
declare ptr @__olang_errpay_top_get()
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
declare void @__olang_sb_done(ptr)
declare void @__olang_bang_failed_text(ptr, { i64, ptr }, i1) cold noreturn
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"only" }>, align 8
declare void @__olang_errpay_pop()
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
declare i32 @close(i32)
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d11 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"more than four bytes" }>, align 8
@.d12 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"-------------------------------------------------------------" }>, align 8
declare i32 @open(ptr, i32, ...)
declare i32 @pipe(ptr)
@.d13 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d16 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d19 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"line " }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2estd_2fio_3aLines_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eerror_7bstd_2fio_3aError_7d(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0
  %t2 = getelementptr { i32, { i64, [1 x i64] } }, ptr %t1, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t4 = load ptr, ptr %l1
  %t5 = getelementptr { i32, { i64, [1 x i64] } }, ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = icmp eq i32 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb5
bb2:
  %t11 = load ptr, ptr %l0
  %t12 = getelementptr { i32, { i64, [1 x i64] } }, ptr %t11, i32 0, i32 1
  %t13 = load ptr, ptr %l1
  %t14 = getelementptr { i32, { i64, [1 x i64] } }, ptr %t13, i32 0, i32 1
  %t17 = call i1 @olang_2emir_2eHelperKind_2eEqual_2estd_2fio_3aError_24payload(ptr %t12, ptr %t14)
  store i1 %t17, ptr %l8
  br label %bb3
bb3:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb4, label %bb1
bb4:
  br label %bb5
bb5:
  %t19 = load i1, ptr %l2, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2estd_2fio_3aWriter_2e1 = weak hidden constant i1 false
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2estd_2fio_3aError_24payload(ptr %a0, ptr %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 2}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 2}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb6
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 ]
bb3:
  br label %bb6
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [1 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [1 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i64 }, ptr %t15, i32 0, i32 0
  %t17 = load i64, ptr %t16
  %t20 = icmp eq i64 %t13, %t17
  br i1 %t20, label %bb5, label %bb1
bb5:
  br label %bb3
bb6:
  %t22 = load i1, ptr %l2, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_loc_e183f6af0815be24_39313b6101d20ca8 = external constant [0 x i8]
@olang_loc_405125a8bfc97357_6687826239f87cdb = external constant [0 x i8]
@olang_loc_d56021b6e5c3bdfa_44c4511adba970be = external constant [0 x i8]
@olang_loc_cfbfa2371b772a5c_479a03f314fcd8b8 = external constant [0 x i8]
@olang_loc_ecfe7bc4e914c155_2facd670f5d599 = external constant [0 x i8]
@olang_loc_236626def65966f_f8ee7e95debf0f53 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8ace81b314be0ed6_98e2c78d06064582 = external constant [0 x i8]
@olang_loc_cdec8918cbf67d26_bc226afea482d74a = external constant [0 x i8]
@olang_loc_19a3a555e0bc0672_a80c148e75e56d4e = external constant [0 x i8]
@olang_loc_5d46b41c36e8feff_84fddb7c6ef404db = external constant [0 x i8]
@olang_loc_65126f5b67a1f66c_44d990074c227388 = external constant [0 x i8]
@olang_loc_e6fc1695886d91da_b063287e95dbbab6 = external constant [0 x i8]
@olang_loc_48f9082997753888_a240ae8e5e29a0c = external constant [0 x i8]
@olang_loc_6ee02aeeb4b82e91_bbd4c13499124615 = external constant [0 x i8]
@olang_loc_d370e8755f65b4b1_c6fa620c8a8d5d7d = external constant [0 x i8]
@olang_loc_6b542447dc4d89ad_116b4d1aefb73901 = external constant [0 x i8]
@olang_loc_82463fd07313b343_899050d6bae42837 = external constant [0 x i8]
@olang_loc_f4311b0505de9da9_3272b36637f70495 = external constant [0 x i8]
@olang_loc_b6949e6a237530b_4c14899758e8fd2f = external constant [0 x i8]
@olang_loc_5f2b8b2f6326e81f_f1c47ff7019f64c3 = external constant [0 x i8]
@olang_loc_3da5c997e7d4ef62_ab09d2a305b27bce = external constant [0 x i8]
@olang_loc_56fdf4dcd8eda50e_44906f9ee22a8e92 = external constant [0 x i8]
@olang_loc_d49434c98a69e919_d3631f4f1bfca5d5 = external constant [0 x i8]
@olang_loc_2286ff1fbe683020_e6ca3016afdcd184 = external constant [0 x i8]
@olang_loc_85198735f567fdd6_a81bd0a72fe385a2 = external constant [0 x i8]
@olang_loc_6cd41157f4fd8842_c8d3cc71cb27ad56 = external constant [0 x i8]

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
