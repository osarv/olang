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
%"std/io:Lines" = type { i32, %"std/io:source" }
%"std/io:source" = type { i32, { i64, ptr }, i64, i64 }
%"std/io:Writer" = type { i32, { i64, ptr }, i64, { i32, { i64, [1 x i64] } } }
%"std/io:Reader" = type { i32, %"std/io:source" }
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
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t18, i64 %t19)
  %t20 = call ptr @__olang_errpay_top_get()
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t21, i64 %t22)
  %t24 = getelementptr { i64, [1 x i64] }, ptr %t20, i32 0, i32 1
  %t25 = getelementptr { i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25
  %t28 = call ptr @__olang_sb_room(ptr %s1, i64 24)
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %t26)
  call void @__olang_sb_add(ptr %s1, i64 %t29)
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
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
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t60, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l3, !tbaa !27
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
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t47 = extractvalue { i64, ptr } %t37, 1
  %t48 = extractvalue { i64, ptr } %t37, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l1, !tbaa !27
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
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l12, !tbaa !27
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
  %t50 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
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

define dso_local i32 @std_2fio_2enumbers(i32 %a0) #0 {
entry:
  %l1 = alloca %"std/io:Reader"
  %l3 = alloca %"std/io:Reader"
  %l4 = alloca i1
  %l6 = alloca i8
  %l7 = alloca i32
  %l10 = alloca i1
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i1
  %l18 = alloca i128
  %l19 = alloca i32
  %l22 = alloca i1
  %l24 = alloca double
  %l25 = alloca i32
  %l28 = alloca i1
  %l30 = alloca float
  %l31 = alloca i32
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i32
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"std/io:Reader" @std_2fio_3aReader_2ector(ptr %s0, i32 %a0, i64 4)
  store %"std/io:Reader" %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load %"std/io:Reader", ptr %l3
  store %"std/io:Reader" %t4, ptr %l1
  %t6 = call { i32, i8 } @std_2fio_2estd_2fio_3aReader_2eNext_3cU8_3e(ptr %s0, ptr %l1)
  %t7 = extractvalue { i32, i8 } %t6, 1
  %t8 = extractvalue { i32, i8 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb3, label %ok.10, !prof !99
ok.10:
  store i8 %t7, ptr %l6
  br label %bb2
bb2:
  %t11 = load i8, ptr %l6, !tbaa !22
  %t12 = icmp eq i8 %t11, -1
  store i1 %t12, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t14 = load i32, ptr %l7, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t15, 2
  %t20 = select i1 %t19, i32 2, i32 %t18
  %t21 = icmp eq i32 %t15, 3
  %t22 = select i1 %t21, i32 3, i32 %t20
  %t23 = icmp eq i32 %t14, 0
  %t24 = shl i32 %t22, 16
  %t25 = or i32 %t24, %t16
  %t26 = select i1 %t23, i32 0, i32 %t25
  call void @__olang_scope_close(ptr %s0)
  store i32 %t26, ptr %rv
  br label %ret
bb4:
  %t28 = load i1, ptr %l4, !tbaa !21
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = call { i32, i32 } @std_2fio_2estd_2fio_3aReader_2eNext_3cI32_3e(ptr %s0, ptr %l1)
  %t31 = extractvalue { i32, i32 } %t30, 1
  %t32 = extractvalue { i32, i32 } %t30, 0
  store i32 %t32, ptr %l13
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb8, label %ok.34, !prof !99
ok.34:
  store i32 %t31, ptr %l12
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_612705f1948f190e_71b8b9d16e0467f2)
  unreachable
bb7:
  %t35 = load i32, ptr %l12, !tbaa !23
  %t36 = icmp eq i32 %t35, -17
  store i1 %t36, ptr %l10, !tbaa !21
  br label %bb9
bb8:
  %t38 = load i32, ptr %l13, !tbaa !23
  %t39 = lshr i32 %t38, 16
  %t40 = and i32 %t38, 65535
  %t41 = icmp eq i32 %t39, 1
  %t42 = select i1 %t41, i32 1, i32 0
  %t43 = icmp eq i32 %t39, 2
  %t44 = select i1 %t43, i32 2, i32 %t42
  %t45 = icmp eq i32 %t39, 3
  %t46 = select i1 %t45, i32 3, i32 %t44
  %t47 = icmp eq i32 %t38, 0
  %t48 = shl i32 %t46, 16
  %t49 = or i32 %t48, %t40
  %t50 = select i1 %t47, i32 0, i32 %t49
  call void @__olang_scope_close(ptr %s0)
  store i32 %t50, ptr %rv
  br label %ret
bb9:
  %t52 = load i1, ptr %l10, !tbaa !21
  br i1 %t52, label %bb10, label %bb11
bb10:
  %t54 = call { i32, i128 } @std_2fio_2estd_2fio_3aReader_2eNext_3cI128_3e(ptr %s0, ptr %l1)
  %t55 = extractvalue { i32, i128 } %t54, 1
  %t56 = extractvalue { i32, i128 } %t54, 0
  store i32 %t56, ptr %l19
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb13, label %ok.58, !prof !99
ok.58:
  store i128 %t55, ptr %l18
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_4a594c2f681aabb9_bd69a22d92cb3bcd)
  unreachable
bb12:
  %t59 = load i128, ptr %l18
  %t60 = icmp eq i128 %t59, -5
  store i1 %t60, ptr %l16, !tbaa !21
  br label %bb14
bb13:
  %t62 = load i32, ptr %l19, !tbaa !23
  %t63 = lshr i32 %t62, 16
  %t64 = and i32 %t62, 65535
  %t65 = icmp eq i32 %t63, 1
  %t66 = select i1 %t65, i32 1, i32 0
  %t67 = icmp eq i32 %t63, 2
  %t68 = select i1 %t67, i32 2, i32 %t66
  %t69 = icmp eq i32 %t63, 3
  %t70 = select i1 %t69, i32 3, i32 %t68
  %t71 = icmp eq i32 %t62, 0
  %t72 = shl i32 %t70, 16
  %t73 = or i32 %t72, %t64
  %t74 = select i1 %t71, i32 0, i32 %t73
  call void @__olang_scope_close(ptr %s0)
  store i32 %t74, ptr %rv
  br label %ret
bb14:
  %t76 = load i1, ptr %l16, !tbaa !21
  br i1 %t76, label %bb15, label %bb16
bb15:
  %t78 = call { i32, double } @std_2fio_2estd_2fio_3aReader_2eNext_3cF64_3e(ptr %s0, ptr %l1)
  %t79 = extractvalue { i32, double } %t78, 1
  %t80 = extractvalue { i32, double } %t78, 0
  store i32 %t80, ptr %l25
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb18, label %ok.82, !prof !99
ok.82:
  store double %t79, ptr %l24
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_3d43254fa316b040_4a708859c9385124)
  unreachable
bb17:
  %t83 = load double, ptr %l24, !tbaa !26
  %t84 = fcmp oeq double %t83, 0x4004000000000000
  store i1 %t84, ptr %l22, !tbaa !21
  br label %bb19
bb18:
  %t86 = load i32, ptr %l25, !tbaa !23
  %t87 = lshr i32 %t86, 16
  %t88 = and i32 %t86, 65535
  %t89 = icmp eq i32 %t87, 1
  %t90 = select i1 %t89, i32 1, i32 0
  %t91 = icmp eq i32 %t87, 2
  %t92 = select i1 %t91, i32 2, i32 %t90
  %t93 = icmp eq i32 %t87, 3
  %t94 = select i1 %t93, i32 3, i32 %t92
  %t95 = icmp eq i32 %t86, 0
  %t96 = shl i32 %t94, 16
  %t97 = or i32 %t96, %t88
  %t98 = select i1 %t95, i32 0, i32 %t97
  call void @__olang_scope_close(ptr %s0)
  store i32 %t98, ptr %rv
  br label %ret
bb19:
  %t100 = load i1, ptr %l22, !tbaa !21
  br i1 %t100, label %bb20, label %bb21
bb20:
  %t102 = call { i32, float } @std_2fio_2estd_2fio_3aReader_2eNext_3cF32_3e(ptr %s0, ptr %l1)
  %t103 = extractvalue { i32, float } %t102, 1
  %t104 = extractvalue { i32, float } %t102, 0
  store i32 %t104, ptr %l31
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb23, label %ok.106, !prof !99
ok.106:
  store float %t103, ptr %l30
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_3fe2750bd507e55b_453e8b296fa12c7f)
  unreachable
bb22:
  %t107 = load float, ptr %l30, !tbaa !25
  %t108 = fcmp oeq float %t107, 0x408f400000000000
  store i1 %t108, ptr %l28, !tbaa !21
  br label %bb24
bb23:
  %t110 = load i32, ptr %l31, !tbaa !23
  %t111 = lshr i32 %t110, 16
  %t112 = and i32 %t110, 65535
  %t113 = icmp eq i32 %t111, 1
  %t114 = select i1 %t113, i32 1, i32 0
  %t115 = icmp eq i32 %t111, 2
  %t116 = select i1 %t115, i32 2, i32 %t114
  %t117 = icmp eq i32 %t111, 3
  %t118 = select i1 %t117, i32 3, i32 %t116
  %t119 = icmp eq i32 %t110, 0
  %t120 = shl i32 %t118, 16
  %t121 = or i32 %t120, %t112
  %t122 = select i1 %t119, i32 0, i32 %t121
  call void @__olang_scope_close(ptr %s0)
  store i32 %t122, ptr %rv
  br label %ret
bb24:
  %t124 = load i1, ptr %l28, !tbaa !21
  br i1 %t124, label %bb25, label %bb26
bb25:
  %t126 = call { i32, i1 } @std_2fio_2estd_2fio_3aReader_2eNext_3cBool_3e(ptr %s0, ptr %l1)
  %t127 = extractvalue { i32, i1 } %t126, 1
  %t128 = extractvalue { i32, i1 } %t126, 0
  store i32 %t128, ptr %l37
  %t129 = icmp ne i32 %t128, 0
  br i1 %t129, label %bb28, label %ok.130, !prof !99
ok.130:
  store i1 %t127, ptr %l36
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_829a796ec59bc43a_895c30d24d72a7e6)
  unreachable
bb27:
  %t131 = load i1, ptr %l36, !tbaa !21
  store i1 %t131, ptr %l34, !tbaa !21
  br label %bb29
bb28:
  %t132 = load i32, ptr %l37, !tbaa !23
  %t133 = lshr i32 %t132, 16
  %t134 = and i32 %t132, 65535
  %t135 = icmp eq i32 %t133, 1
  %t136 = select i1 %t135, i32 1, i32 0
  %t137 = icmp eq i32 %t133, 2
  %t138 = select i1 %t137, i32 2, i32 %t136
  %t139 = icmp eq i32 %t133, 3
  %t140 = select i1 %t139, i32 3, i32 %t138
  %t141 = icmp eq i32 %t132, 0
  %t142 = shl i32 %t140, 16
  %t143 = or i32 %t142, %t134
  %t144 = select i1 %t141, i32 0, i32 %t143
  call void @__olang_scope_close(ptr %s0)
  store i32 %t144, ptr %rv
  br label %ret
bb29:
  %t146 = load i1, ptr %l34, !tbaa !21
  br i1 %t146, label %bb30, label %bb31
bb30:
  %t148 = call { i32, i1 } @std_2fio_2estd_2fio_3aReader_2eNext_3cBool_3e(ptr %s0, ptr %l1)
  %t149 = extractvalue { i32, i1 } %t148, 1
  %t150 = extractvalue { i32, i1 } %t148, 0
  store i32 %t150, ptr %l42
  %t151 = icmp ne i32 %t150, 0
  br i1 %t151, label %bb33, label %ok.152, !prof !99
ok.152:
  store i1 %t149, ptr %l41
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_77d1d43e26afb955_a5c9cf46a69b0b31)
  unreachable
bb32:
  %t153 = load i1, ptr %l41, !tbaa !21
  store i1 %t153, ptr %l39, !tbaa !21
  br label %bb34
bb33:
  %t154 = load i32, ptr %l42, !tbaa !23
  %t155 = lshr i32 %t154, 16
  %t156 = and i32 %t154, 65535
  %t157 = icmp eq i32 %t155, 1
  %t158 = select i1 %t157, i32 1, i32 0
  %t159 = icmp eq i32 %t155, 2
  %t160 = select i1 %t159, i32 2, i32 %t158
  %t161 = icmp eq i32 %t155, 3
  %t162 = select i1 %t161, i32 3, i32 %t160
  %t163 = icmp eq i32 %t154, 0
  %t164 = shl i32 %t162, 16
  %t165 = or i32 %t164, %t156
  %t166 = select i1 %t163, i32 0, i32 %t165
  call void @__olang_scope_close(ptr %s0)
  store i32 %t166, ptr %rv
  br label %ret
bb34:
  %t168 = load i1, ptr %l39, !tbaa !21
  %t169 = xor i1 %t168, true
  br i1 %t169, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb36:
  call void @__olang_check_failed(ptr @olang_loc_3ede013c1f353b0c_63e44ae0aad90078)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t29 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t29, i64 %t30)
  %t31 = call ptr @__olang_errpay_top_get()
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s1, ptr %t32, i64 %t33)
  %t35 = getelementptr { i64, [1 x i64] }, ptr %t31, i32 0, i32 1
  %t36 = getelementptr { i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t39 = call ptr @__olang_sb_room(ptr %s1, i64 24)
  %t40 = call i64 @__olang_fmt_i64(ptr %t39, i64 %t37)
  call void @__olang_sb_add(ptr %s1, i64 %t40)
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
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
  %t81 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t81, i64 %t82)
  %t83 = call ptr @__olang_errpay_top_get()
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t84, i64 %t85)
  %t87 = getelementptr { i64, [1 x i64] }, ptr %t83, i32 0, i32 1
  %t88 = getelementptr { i64 }, ptr %t87, i32 0, i32 0
  %t89 = load i64, ptr %t88
  %t91 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t92 = call i64 @__olang_fmt_i64(ptr %t91, i64 %t89)
  call void @__olang_sb_add(ptr %s5, i64 %t92)
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
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
  %t122 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t125 = call i64 @__olang_fmt_i64(ptr null, i64 %t121)
  %t126 = add i64 %t123, %t125
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
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
  %t160 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t160, i64 %t161)
  %t162 = call ptr @__olang_errpay_top_get()
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t163, i64 %t164)
  %t166 = getelementptr { i64, [1 x i64] }, ptr %t162, i32 0, i32 1
  %t167 = getelementptr { i64 }, ptr %t166, i32 0, i32 0
  %t168 = load i64, ptr %t167
  %t170 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t171 = call i64 @__olang_fmt_i64(ptr %t170, i64 %t168)
  call void @__olang_sb_add(ptr %s9, i64 %t171)
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
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

define dso_local i1 @std_2fio_2estd_2fio_3aLines_2eBuffered(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:Lines", ptr %t1, i32 0, i32 1
  %t4 = getelementptr %"std/io:source", ptr %t3, i32 0, i32 3
  %t5 = load i64, ptr %t4, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/io:Lines", ptr %t6, i32 0, i32 1
  %t9 = getelementptr %"std/io:source", ptr %t8, i32 0, i32 2
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = icmp sgt i64 %t5, %t10
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aLines_2eNext(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/io:Lines", ptr %a0, i32 0, i32 1
  %t5 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3asource_2eline(ptr %v0, ptr %v1, ptr %t3)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l5
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l4
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t10, ptr %l1, !tbaa !27
  br label %bb3
bb2:
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t12, 2
  %t17 = select i1 %t16, i32 2, i32 %t15
  %t18 = icmp eq i32 %t11, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t13
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t21, 0
  store { i32, { i64, ptr } } %t23, ptr %rv
  br label %ret
bb3:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t24, 1
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aReader_2eAll(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l20 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:Reader", ptr %t1, i32 0, i32 1
  %t5 = call i32 @std_2fio_2estd_2fio_3asource_2efill(ptr %v0, ptr %t3)
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb3, label %ok.7, !prof !99
ok.7:
  br label %bb2
bb2:
  br label %bb9
bb3:
  %t8 = load i32, ptr %l4, !tbaa !23
  %t9 = ashr i32 %t8, 16
  %t11 = icmp eq i32 %t9, 2
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb6, label %bb7
bb5:
  %t18 = load i32, ptr %l4, !tbaa !23
  %t19 = lshr i32 %t18, 16
  %t20 = and i32 %t18, 65535
  %t21 = icmp eq i32 %t19, 1
  %t22 = select i1 %t21, i32 1, i32 0
  %t23 = icmp eq i32 %t19, 2
  %t24 = select i1 %t23, i32 0, i32 %t22
  %t25 = icmp eq i32 %t18, 0
  %t26 = shl i32 %t24, 16
  %t27 = or i32 %t26, %t20
  %t28 = select i1 %t25, i32 0, i32 %t27
  %t30 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t28, 0
  store { i32, { i64, ptr } } %t30, ptr %rv
  br label %ret
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %bb11
bb9:
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"std/io:Reader", ptr %t31, i32 0, i32 1
  %t34 = getelementptr %"std/io:source", ptr %t33, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/io:Reader", ptr %t38, i32 0, i32 1
  %t41 = getelementptr %"std/io:source", ptr %t40, i32 0, i32 3
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = getelementptr %"std/io:Reader", ptr %t37, i32 0, i32 1
  %t46 = getelementptr %"std/io:source", ptr %t45, i32 0, i32 2
  store i64 %t42, ptr %t46, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"std/io:Reader", ptr %t47, i32 0, i32 1
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/io:Reader", ptr %t51, i32 0, i32 1
  %t54 = getelementptr %"std/io:source", ptr %t53, i32 0, i32 3
  %t55 = load i64, ptr %t54, !tbaa !24
  %t59 = call { i64, ptr } @std_2fio_2estd_2fio_3asource_2etext(ptr %v0, ptr %v1, ptr %t49, i64 %t35, i64 %t55)
  store { i64, ptr } %t59, ptr %l20
  br label %bb12
bb12:
  %t60 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t61 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t60, 1
  store { i32, { i64, ptr } } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aReader_2eBytes(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l29 = alloca i32
  %l40 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l77 = alloca ptr
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sgt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l13, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l13, !tbaa !24
  %t8 = icmp sge i64 %t7, 0
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t15, ptr %lp2
  %t17 = load ptr, ptr %lp2
  store { i64, ptr } %t14, ptr %t17, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_31b0dde7edb1001b_2a6c547961e5bd97)
  unreachable
bb6:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %lp2
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp slt i64 %t18, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  br label %bb30
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"std/io:Reader", ptr %t29, i32 0, i32 1
  %t32 = getelementptr %"std/io:source", ptr %t31, i32 0, i32 2
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"std/io:Reader", ptr %t34, i32 0, i32 1
  %t37 = getelementptr %"std/io:source", ptr %t36, i32 0, i32 3
  %t38 = load i64, ptr %t37, !tbaa !24
  %t41 = icmp eq i64 %t33, %t38
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/io:Reader", ptr %t43, i32 0, i32 1
  %t47 = call i32 @std_2fio_2estd_2fio_3asource_2efill(ptr %v0, ptr %t45)
  store i32 %t47, ptr %l29
  %t48 = icmp ne i32 %t47, 0
  br i1 %t48, label %bb13, label %ok.49, !prof !99
ok.49:
  br label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb14
bb13:
  %t50 = load i32, ptr %l29, !tbaa !23
  %t51 = lshr i32 %t50, 16
  %t52 = and i32 %t50, 65535
  %t53 = icmp eq i32 %t51, 1
  %t54 = select i1 %t53, i32 1, i32 0
  %t55 = icmp eq i32 %t51, 2
  %t56 = select i1 %t55, i32 2, i32 %t54
  %t57 = icmp eq i32 %t50, 0
  %t58 = shl i32 %t56, 16
  %t59 = or i32 %t58, %t52
  %t60 = select i1 %t57, i32 0, i32 %t59
  %t62 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t60, 0
  store { i32, { i64, ptr } } %t62, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"std/io:Reader", ptr %t63, i32 0, i32 1
  %t66 = getelementptr %"std/io:source", ptr %t65, i32 0, i32 3
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"std/io:Reader", ptr %t68, i32 0, i32 1
  %t71 = getelementptr %"std/io:source", ptr %t70, i32 0, i32 2
  %t72 = load i64, ptr %t71, !tbaa !24
  %t75 = sub i64 %t67, %t72
  %t76 = load ptr, ptr %lp2
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = load i64, ptr %l3, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t86 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t75, i64 %t83)
  store i64 %t86, ptr %l40
  br label %bb16
bb16:
  %t87 = load i64, ptr %l40, !tbaa !24
  store i64 %t87, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  store i64 %t88, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  br i1 %t94, label %bb17, label %bb18
bb17:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb22
bb19:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t101 = load i64, ptr %l5, !tbaa !24
  %t104 = sub i64 %t100, %t101
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = add i64 %t104, %t105
  %t110 = sub i64 %t108, 1
  %t111 = load i64, ptr %l7, !tbaa !24
  %t114 = sdiv i64 %t110, %t111
  store i64 %t114, ptr %l48, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb21
bb21:
  %t116 = load i64, ptr %l48, !tbaa !24
  store i64 %t116, ptr %l45, !tbaa !24
  br label %bb22
bb22:
  %t117 = load i64, ptr %l45, !tbaa !24
  store i64 %t117, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t118 = load i64, ptr %l9, !tbaa !24
  %t119 = load i64, ptr %l8, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb24, label %bb25
bb24:
  br label %bb28
bb25:
  br label %bb26
bb26:
  %t126 = load i64, ptr %l5, !tbaa !24
  %t127 = load i64, ptr %l9, !tbaa !24
  %t128 = load i64, ptr %l7, !tbaa !24
  %t131 = mul i64 %t127, %t128
  %t134 = add i64 %t126, %t131
  store i64 %t134, ptr %l10, !tbaa !24
  %t136 = load i64, ptr %l3, !tbaa !24
  %t137 = load i64, ptr %l10, !tbaa !24
  %t140 = add i64 %t136, %t137
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"std/io:Reader", ptr %t142, i32 0, i32 1
  %t145 = getelementptr %"std/io:source", ptr %t144, i32 0, i32 2
  %t146 = load i64, ptr %t145, !tbaa !24
  %t147 = load i64, ptr %l10, !tbaa !24
  %t150 = add i64 %t146, %t147
  %t152 = getelementptr %"std/io:Reader", ptr %t141, i32 0, i32 1
  %t153 = getelementptr %"std/io:source", ptr %t152, i32 0, i32 1
  %t155 = getelementptr { i64, ptr }, ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i8, ptr %t156, i64 %t150
  %t158 = load i8, ptr %t157, !tbaa !32
  %t160 = load ptr, ptr %lp2
  %t162 = getelementptr { i64, ptr }, ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 %t140
  store i8 %t158, ptr %t164, !tbaa !32
  br label %bb27
bb27:
  %t165 = load i64, ptr %l9, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l9, !tbaa !24
  br label %bb23
bb28:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l77, !tbaa !29
  %t170 = load ptr, ptr %l77, !tbaa !29
  %t171 = getelementptr %"std/io:Reader", ptr %t170, i32 0, i32 1
  %t172 = getelementptr %"std/io:source", ptr %t171, i32 0, i32 2
  %t173 = load i64, ptr %t172, !tbaa !24
  %t174 = load i64, ptr %l4, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = load ptr, ptr %l77, !tbaa !29
  %t180 = getelementptr %"std/io:Reader", ptr %t179, i32 0, i32 1
  %t181 = getelementptr %"std/io:source", ptr %t180, i32 0, i32 2
  store i64 %t177, ptr %t181, !tbaa !24
  %t182 = load i64, ptr %l3, !tbaa !24
  %t183 = load i64, ptr %l4, !tbaa !24
  %t186 = add i64 %t182, %t183
  store i64 %t186, ptr %l3, !tbaa !24
  br label %bb29
bb29:
  br label %bb6
bb30:
  %t188 = load ptr, ptr %lp2
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  %t191 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t189, 1
  store { i32, { i64, ptr } } %t191, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aReader_2eLine(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/io:Reader", ptr %a0, i32 0, i32 1
  %t5 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3asource_2eline(ptr %v0, ptr %v1, ptr %t3)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l5
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l4
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t10, ptr %l1, !tbaa !27
  br label %bb3
bb2:
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t12, 2
  %t17 = select i1 %t16, i32 2, i32 %t15
  %t18 = icmp eq i32 %t11, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t13
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t21, 0
  store { i32, { i64, ptr } } %t23, ptr %rv
  br label %ret
bb3:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t24, 1
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aReader_2eWord(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/io:Reader", ptr %a0, i32 0, i32 1
  %t5 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3asource_2eword(ptr %v0, ptr %v1, ptr %t3)
  %t6 = extractvalue { i32, { i64, ptr } } %t5, 1
  %t7 = extractvalue { i32, { i64, ptr } } %t5, 0
  store i32 %t7, ptr %l5
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store { i64, ptr } %t6, ptr %l4
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t10, ptr %l1, !tbaa !27
  br label %bb3
bb2:
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t12, 2
  %t17 = select i1 %t16, i32 2, i32 %t15
  %t18 = icmp eq i32 %t11, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t13
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t21, 0
  store { i32, { i64, ptr } } %t23, ptr %rv
  br label %ret
bb3:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t24, 1
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
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

define dso_local i32 @std_2fio_2estd_2fio_3asource_2efill(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l69 = alloca { i64, ptr }
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l75 = alloca i64
  %l80 = alloca { i64, ptr }
  %l87 = alloca i64
  %l90 = alloca i64
  %l115 = alloca i32
  %l116 = alloca ptr
  %l118 = alloca i64
  %l121 = alloca i64
  %l122 = alloca i64
  %l134 = alloca i64
  %l144 = alloca ptr
  %s5 = alloca %olang.scope
  %rv = alloca i32
  %t299 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:source", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/io:source", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = sub i64 %t4, %t8
  store i64 %t11, ptr %l1, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"std/io:source", ptr %t13, i32 0, i32 2
  %t16 = load i64, ptr %t15, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb1, label %bb2
bb1:
  store i64 0, ptr %l2, !tbaa !24
  %t20 = load i64, ptr %l1, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb3, label %bb4
bb2:
  br label %bb15
bb3:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb5:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l31, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb7
bb7:
  %t48 = load i64, ptr %l31, !tbaa !24
  store i64 %t48, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t49 = load i64, ptr %l28, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"std/io:source", ptr %t71, i32 0, i32 2
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = add i64 %t74, %t75
  %t80 = getelementptr %"std/io:source", ptr %t70, i32 0, i32 1
  %t82 = getelementptr { i64, ptr }, ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t78
  %t85 = load i8, ptr %t84, !tbaa !32
  %t88 = getelementptr %"std/io:source", ptr %t68, i32 0, i32 1
  %t90 = getelementptr { i64, ptr }, ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i8, ptr %t91, i64 %t69
  store i8 %t85, ptr %t92, !tbaa !32
  br label %bb13
bb13:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l6, !tbaa !24
  br label %bb9
bb14:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"std/io:source", ptr %t97, i32 0, i32 2
  store i64 0, ptr %t99, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l1, !tbaa !24
  %t104 = getelementptr %"std/io:source", ptr %t100, i32 0, i32 3
  store i64 %t101, ptr %t104, !tbaa !24
  br label %bb15
bb15:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"std/io:source", ptr %t105, i32 0, i32 3
  %t108 = load i64, ptr %t107, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"std/io:source", ptr %t109, i32 0, i32 1
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t117 = icmp eq i64 %t108, %t114
  br i1 %t117, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s5
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"std/io:source", ptr %t119, i32 0, i32 1
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l69, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l70, !tbaa !24
  %t125 = load i64, ptr %l70, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l71, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l70, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t136, ptr %l8, !tbaa !27
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l72, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t142 = mul i64 %t140, 2
  store i64 %t142, ptr %l75, !tbaa !24
  %t143 = load i64, ptr %l75, !tbaa !24
  %t144 = icmp sge i64 %t143, 0
  br i1 %t144, label %bb18, label %bb19
bb17:
  br label %bb34
bb18:
  %t146 = load i64, ptr %l75, !tbaa !24
  %t147 = mul i64 %t146, 1
  %t148 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t153 = load ptr, ptr %l72, !tbaa !29
  %t154 = getelementptr %"std/io:source", ptr %t153, i32 0, i32 1
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l80, !tbaa !27
  %t157 = load ptr, ptr %l72, !tbaa !29
  %t158 = getelementptr %"std/io:source", ptr %t157, i32 0, i32 1
  store { i64, ptr } %t150, ptr %t158, !tbaa !27
  %t159 = load i1, ptr @olang_2esole_2estd_2fio_3asource_2e1
  br i1 %t159, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_48accf86025d4ce5_aa0f4329e5309b51)
  unreachable
bb20:
  %t161 = load { i64, ptr }, ptr %l80
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  call void @__olang_region_release_part(ptr %t163, i64 %t162)
  store { i64, ptr } zeroinitializer, ptr %l80
  br label %bb21
bb21:
  store i64 0, ptr %l9, !tbaa !24
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"std/io:source", ptr %t164, i32 0, i32 3
  %t167 = load i64, ptr %t166, !tbaa !24
  store i64 %t167, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t169 = load i64, ptr %l10, !tbaa !24
  %t170 = load i64, ptr %l9, !tbaa !24
  %t173 = icmp sgt i64 %t169, %t170
  br i1 %t173, label %bb22, label %bb23
bb22:
  %t175 = load i64, ptr %l11, !tbaa !24
  %t177 = icmp sgt i64 %t175, 0
  br i1 %t177, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb27
bb24:
  %t179 = load i64, ptr %l10, !tbaa !24
  %t180 = load i64, ptr %l9, !tbaa !24
  %t183 = sub i64 %t179, %t180
  %t184 = load i64, ptr %l11, !tbaa !24
  %t187 = add i64 %t183, %t184
  %t189 = sub i64 %t187, 1
  %t190 = load i64, ptr %l11, !tbaa !24
  %t193 = sdiv i64 %t189, %t190
  store i64 %t193, ptr %l90, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb26
bb26:
  %t195 = load i64, ptr %l90, !tbaa !24
  store i64 %t195, ptr %l87, !tbaa !24
  br label %bb27
bb27:
  %t196 = load i64, ptr %l87, !tbaa !24
  store i64 %t196, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb28
bb28:
  %t197 = load i64, ptr %l13, !tbaa !24
  %t198 = load i64, ptr %l12, !tbaa !24
  %t201 = icmp slt i64 %t197, %t198
  %t203 = xor i1 %t201, true
  br i1 %t203, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t205 = load i64, ptr %l9, !tbaa !24
  %t206 = load i64, ptr %l13, !tbaa !24
  %t207 = load i64, ptr %l11, !tbaa !24
  %t210 = mul i64 %t206, %t207
  %t213 = add i64 %t205, %t210
  store i64 %t213, ptr %l14, !tbaa !24
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load i64, ptr %l14, !tbaa !24
  %t217 = load i64, ptr %l14, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr i8, ptr %t220, i64 %t217
  %t222 = load i8, ptr %t221, !tbaa !32
  %t225 = getelementptr %"std/io:source", ptr %t215, i32 0, i32 1
  %t227 = getelementptr { i64, ptr }, ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr i8, ptr %t228, i64 %t216
  store i8 %t222, ptr %t229, !tbaa !32
  br label %bb32
bb32:
  %t230 = load i64, ptr %l13, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l13, !tbaa !24
  br label %bb28
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb34:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"std/io:source", ptr %t234, i32 0, i32 0
  %t237 = load i32, ptr %t236, !tbaa !23
  store i32 %t237, ptr %l115, !tbaa !23
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l116, !tbaa !29
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"std/io:source", ptr %t239, i32 0, i32 3
  %t242 = load i64, ptr %t241, !tbaa !24
  store i64 %t242, ptr %l118, !tbaa !24
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"std/io:source", ptr %t243, i32 0, i32 1
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t246, 0
  store i64 %t248, ptr %l121, !tbaa !24
  %t249 = load ptr, ptr %l116, !tbaa !29
  %t250 = getelementptr %"std/io:source", ptr %t249, i32 0, i32 1
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  store i64 %t252, ptr %l122, !tbaa !24
  %t253 = load i64, ptr %l118, !tbaa !24
  %t254 = icmp sge i64 %t253, 0
  br i1 %t254, label %bb35, label %bb36
bb35:
  %t256 = load i64, ptr %l118, !tbaa !24
  %t257 = load i64, ptr %l121, !tbaa !24
  %t258 = icmp sle i64 %t256, %t257
  br i1 %t258, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_df04501e4a4cf908_d72b6f743353d1dc)
  unreachable
bb37:
  %t260 = load i64, ptr %l121, !tbaa !24
  %t261 = load i64, ptr %l122, !tbaa !24
  %t262 = icmp sle i64 %t260, %t261
  br i1 %t262, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_df04501e4a4cf908_d72b6f743353d1dc)
  unreachable
bb39:
  %t264 = load ptr, ptr %l116, !tbaa !29
  %t265 = getelementptr %"std/io:source", ptr %t264, i32 0, i32 1
  %t266 = getelementptr { i64, ptr }, ptr %t265, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = load i64, ptr %l118, !tbaa !24
  %t269 = load i64, ptr %l121, !tbaa !24
  %t270 = getelementptr i8, ptr %t267, i64 %t268
  %t271 = sub i64 %t269, %t268
  %t272 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t270, 1
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"std/io:source", ptr %t274, i32 0, i32 1
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 0
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"std/io:source", ptr %t280, i32 0, i32 3
  %t283 = load i64, ptr %t282, !tbaa !24
  %t286 = sub i64 %t279, %t283
  %t288 = load i32, ptr %l115, !tbaa !23
  %t290 = extractvalue { i64, ptr } %t273, 1
  %t291 = extractvalue { i64, ptr } %t273, 0
  %t293 = call i64 @read(i32 %t288, ptr %t290, i64 %t286)
  store i64 %t293, ptr %l134
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_df04501e4a4cf908_d72b6f743353d1dc)
  unreachable
bb41:
  %t294 = load i64, ptr %l134, !tbaa !24
  store i64 %t294, ptr %l15, !tbaa !24
  %t295 = load i64, ptr %l15, !tbaa !24
  %t297 = icmp slt i64 %t295, 0
  br i1 %t297, label %bb42, label %bb43
bb42:
  store { i64, [1 x i64] } zeroinitializer, ptr %t299
  %t300 = getelementptr { i64, [1 x i64] }, ptr %t299, i32 0, i32 0
  store i64 0, ptr %t300
  %t301 = load { i64, [1 x i64] }, ptr %t299
  %t302 = call ptr @__olang_errpay_push()
  %t303 = ptrtoint ptr %t302 to i64
  %t306 = inttoptr i64 %t303 to ptr
  %t307 = call ptr @__olang_scope_alloc_a(ptr %t306, i64 16, i64 8)
  store { i64, [1 x i64] } %t301, ptr %t307
  call void @__olang_errpay_set(ptr %t307)
  store i32 65536, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t310 = load i64, ptr %l15, !tbaa !24
  %t312 = icmp eq i64 %t310, 0
  br i1 %t312, label %bb45, label %bb46
bb45:
  store i32 131072, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t315 = load ptr, ptr %l0, !tbaa !29
  store ptr %t315, ptr %l144, !tbaa !29
  %t316 = load ptr, ptr %l144, !tbaa !29
  %t317 = getelementptr %"std/io:source", ptr %t316, i32 0, i32 3
  %t318 = load i64, ptr %t317, !tbaa !24
  %t319 = load i64, ptr %l15, !tbaa !24
  %t322 = add i64 %t318, %t319
  %t324 = load ptr, ptr %l144, !tbaa !29
  %t325 = getelementptr %"std/io:source", ptr %t324, i32 0, i32 3
  store i64 %t322, ptr %t325, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3asource_2eline(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca i64
  %l52 = alloca i64
  %l56 = alloca i1
  %l63 = alloca i64
  %l65 = alloca { i64, ptr }
  %l74 = alloca i32
  %l91 = alloca ptr
  %l92 = alloca i64
  %l94 = alloca i64
  %l102 = alloca i64
  %l104 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:source", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = add i64 %t4, %t5
  store i64 %t8, ptr %l2, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/io:source", ptr %t10, i32 0, i32 3
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb4:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l22, !tbaa !24
  store i64 %t41, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l19, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  br label %bb23
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l7, !tbaa !24
  %t64 = getelementptr %"std/io:source", ptr %t61, i32 0, i32 1
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i8, ptr %t67, i64 %t62
  %t69 = load i8, ptr %t68, !tbaa !32
  %t72 = icmp eq i8 %t69, 10
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"std/io:source", ptr %t74, i32 0, i32 2
  %t77 = load i64, ptr %t76, !tbaa !24
  store i64 %t77, ptr %l8, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = add i64 %t80, 1
  %t85 = getelementptr %"std/io:source", ptr %t79, i32 0, i32 2
  store i64 %t82, ptr %t85, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l50, !tbaa !29
  %t87 = load i64, ptr %l8, !tbaa !24
  store i64 %t87, ptr %l51, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  store i64 %t88, ptr %l52, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb14, label %bb15
bb13:
  br label %bb21
bb14:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l7, !tbaa !24
  %t98 = sub i64 %t96, 1
  %t100 = getelementptr %"std/io:source", ptr %t95, i32 0, i32 1
  %t102 = getelementptr { i64, ptr }, ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i8, ptr %t103, i64 %t98
  %t105 = load i8, ptr %t104, !tbaa !32
  %t108 = icmp eq i8 %t105, 13
  store i1 %t108, ptr %l56, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb16
bb16:
  %t110 = load i1, ptr %l56, !tbaa !21
  br i1 %t110, label %bb17, label %bb18
bb17:
  store i64 1, ptr %l63, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb19
bb19:
  %t111 = load i64, ptr %l52, !tbaa !24
  %t112 = load i64, ptr %l63, !tbaa !24
  %t113 = sub i64 %t111, %t112
  %t114 = load ptr, ptr %l50, !tbaa !29
  %t115 = load i64, ptr %l51, !tbaa !24
  %t117 = call { i64, ptr } @std_2fio_2estd_2fio_3asource_2etext(ptr %v0, ptr %v1, ptr %t114, i64 %t115, i64 %t113)
  store { i64, ptr } %t117, ptr %l65
  br label %bb20
bb20:
  %t118 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t119 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t118, 1
  store { i32, { i64, ptr } } %t119, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t120 = load i64, ptr %l6, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l6, !tbaa !24
  br label %bb8
bb23:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"std/io:source", ptr %t124, i32 0, i32 3
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"std/io:source", ptr %t128, i32 0, i32 2
  %t131 = load i64, ptr %t130, !tbaa !24
  %t134 = sub i64 %t127, %t131
  store i64 %t134, ptr %l1, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = call i32 @std_2fio_2estd_2fio_3asource_2efill(ptr %v0, ptr %t136)
  store i32 %t138, ptr %l74
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb25, label %ok.140, !prof !99
ok.140:
  br label %bb24
bb24:
  br label %bb38
bb25:
  %t141 = load i32, ptr %l74, !tbaa !23
  %t142 = ashr i32 %t141, 16
  %t144 = icmp eq i32 %t142, 2
  br i1 %t144, label %bb26, label %bb27
bb26:
  %t146 = load i32, ptr %l74, !tbaa !23
  %t147 = ashr i32 %t146, 16
  %t149 = icmp eq i32 %t147, 1
  br i1 %t149, label %bb28, label %bb29
bb27:
  %t151 = load i32, ptr %l74, !tbaa !23
  %t152 = lshr i32 %t151, 16
  %t153 = and i32 %t151, 65535
  %t154 = icmp eq i32 %t152, 1
  %t155 = select i1 %t154, i32 1, i32 0
  %t156 = icmp eq i32 %t152, 2
  %t157 = select i1 %t156, i32 2, i32 %t155
  %t158 = icmp eq i32 %t151, 0
  %t159 = shl i32 %t157, 16
  %t160 = or i32 %t159, %t153
  %t161 = select i1 %t158, i32 0, i32 %t160
  %t163 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t161, 0
  store { i32, { i64, ptr } } %t163, ptr %rv
  br label %ret
bb28:
  call void @__olang_errpay_pop()
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"std/io:source", ptr %t164, i32 0, i32 2
  %t167 = load i64, ptr %t166, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"std/io:source", ptr %t168, i32 0, i32 3
  %t171 = load i64, ptr %t170, !tbaa !24
  %t174 = icmp eq i64 %t167, %t171
  br i1 %t174, label %bb31, label %bb32
bb31:
  %t177 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 131072, 0
  store { i32, { i64, ptr } } %t177, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"std/io:source", ptr %t178, i32 0, i32 2
  %t181 = load i64, ptr %t180, !tbaa !24
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"std/io:source", ptr %t184, i32 0, i32 3
  %t187 = load i64, ptr %t186, !tbaa !24
  %t190 = getelementptr %"std/io:source", ptr %t183, i32 0, i32 2
  store i64 %t187, ptr %t190, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  store ptr %t191, ptr %l91, !tbaa !29
  store i64 %t181, ptr %l92, !tbaa !24
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"std/io:source", ptr %t193, i32 0, i32 3
  %t196 = load i64, ptr %t195, !tbaa !24
  store i64 %t196, ptr %l94, !tbaa !24
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"std/io:source", ptr %t198, i32 0, i32 3
  %t201 = load i64, ptr %t200, !tbaa !24
  %t203 = sub i64 %t201, 1
  %t205 = getelementptr %"std/io:source", ptr %t197, i32 0, i32 1
  %t207 = getelementptr { i64, ptr }, ptr %t205, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i8, ptr %t208, i64 %t203
  %t210 = load i8, ptr %t209, !tbaa !32
  %t213 = icmp eq i8 %t210, 13
  br i1 %t213, label %bb34, label %bb35
bb34:
  store i64 1, ptr %l102, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb36
bb36:
  %t215 = load i64, ptr %l94, !tbaa !24
  %t216 = load i64, ptr %l102, !tbaa !24
  %t217 = sub i64 %t215, %t216
  %t218 = load ptr, ptr %l91, !tbaa !29
  %t219 = load i64, ptr %l92, !tbaa !24
  %t221 = call { i64, ptr } @std_2fio_2estd_2fio_3asource_2etext(ptr %v0, ptr %v1, ptr %t218, i64 %t219, i64 %t217)
  store { i64, ptr } %t221, ptr %l104
  br label %bb37
bb37:
  %t222 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t223 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t222, 1
  store { i32, { i64, ptr } } %t223, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  br label %bb1
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @std_2fio_2estd_2fio_3asource_2etext(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %rv = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load i64, ptr %l12, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l12, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t14, ptr %lp3
  %t16 = load ptr, ptr %lp3
  store { i64, ptr } %t13, ptr %t16, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  store i64 %t21, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_f7e0e0a6112ac96b_35d118dc347f17e7)
  unreachable
bb3:
  %t29 = load i64, ptr %l6, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb8
bb5:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l24, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t49 = load i64, ptr %l24, !tbaa !24
  store i64 %t49, ptr %l21, !tbaa !24
  br label %bb8
bb8:
  %t50 = load i64, ptr %l21, !tbaa !24
  store i64 %t50, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t71 = load i64, ptr %l1, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = getelementptr %"std/io:source", ptr %a0, i32 0, i32 1
  %t79 = getelementptr { i64, ptr }, ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t75
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = load ptr, ptr %lp3
  %t86 = getelementptr { i64, ptr }, ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i8, ptr %t87, i64 %t69
  store i8 %t82, ptr %t88, !tbaa !32
  br label %bb13
bb13:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l8, !tbaa !24
  br label %bb9
bb14:
  %t93 = load ptr, ptr %lp3
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fio_2estd_2fio_3asource_2eword(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i1
  %l21 = alloca i1
  %l23 = alloca ptr
  %l32 = alloca i32
  %l43 = alloca i64
  %l46 = alloca i64
  %l68 = alloca i1
  %l77 = alloca { i64, ptr }
  %l86 = alloca i32
  %l101 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  br label %bb2
bb2:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/io:source", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/io:source", ptr %t5, i32 0, i32 3
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp slt i64 %t4, %t8
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/io:source", ptr %t14, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = getelementptr %"std/io:source", ptr %t13, i32 0, i32 1
  %t21 = getelementptr { i64, ptr }, ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 %t17
  %t24 = load i8, ptr %t23, !tbaa !32
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsSpace(i8 %t24)
  store i1 %t27, ptr %l21
  br label %bb5
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb6
bb5:
  %t28 = load i1, ptr %l21, !tbaa !21
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t29 = load i1, ptr %l15, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l23, !tbaa !29
  %t33 = load ptr, ptr %l23, !tbaa !29
  %t34 = getelementptr %"std/io:source", ptr %t33, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = add i64 %t35, 1
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = getelementptr %"std/io:source", ptr %t39, i32 0, i32 2
  store i64 %t37, ptr %t40, !tbaa !24
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/io:source", ptr %t41, i32 0, i32 2
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"std/io:source", ptr %t45, i32 0, i32 3
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = icmp slt i64 %t44, %t48
  br i1 %t51, label %bb12, label %bb13
bb12:
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call i32 @std_2fio_2estd_2fio_3asource_2efill(ptr %v0, ptr %t53)
  store i32 %t55, ptr %l32
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb16, label %ok.57, !prof !99
ok.57:
  br label %bb15
bb15:
  br label %bb17
bb16:
  %t58 = load i32, ptr %l32, !tbaa !23
  %t59 = lshr i32 %t58, 16
  %t60 = and i32 %t58, 65535
  %t61 = icmp eq i32 %t59, 1
  %t62 = select i1 %t61, i32 1, i32 0
  %t63 = icmp eq i32 %t59, 2
  %t64 = select i1 %t63, i32 2, i32 %t62
  %t65 = icmp eq i32 %t58, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t60
  %t68 = select i1 %t65, i32 0, i32 %t67
  %t70 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t68, 0
  store { i32, { i64, ptr } } %t70, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb1
bb19:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb20
bb20:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"std/io:source", ptr %t71, i32 0, i32 2
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load i64, ptr %l1, !tbaa !24
  %t78 = add i64 %t74, %t75
  store i64 %t78, ptr %l2, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"std/io:source", ptr %t80, i32 0, i32 3
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l3, !tbaa !24
  %t86 = load i64, ptr %l2, !tbaa !24
  %t89 = icmp sgt i64 %t85, %t86
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t91 = load i64, ptr %l4, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  br i1 %t93, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb26
bb23:
  %t95 = load i64, ptr %l3, !tbaa !24
  %t96 = load i64, ptr %l2, !tbaa !24
  %t99 = sub i64 %t95, %t96
  %t100 = load i64, ptr %l4, !tbaa !24
  %t103 = add i64 %t99, %t100
  %t105 = sub i64 %t103, 1
  %t106 = load i64, ptr %l4, !tbaa !24
  %t109 = sdiv i64 %t105, %t106
  store i64 %t109, ptr %l46, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb25
bb25:
  %t111 = load i64, ptr %l46, !tbaa !24
  store i64 %t111, ptr %l43, !tbaa !24
  br label %bb26
bb26:
  %t112 = load i64, ptr %l43, !tbaa !24
  store i64 %t112, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb27
bb27:
  %t113 = load i64, ptr %l6, !tbaa !24
  %t114 = load i64, ptr %l5, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb28, label %bb29
bb28:
  br label %bb37
bb29:
  br label %bb30
bb30:
  %t121 = load i64, ptr %l2, !tbaa !24
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr %l4, !tbaa !24
  %t126 = mul i64 %t122, %t123
  %t129 = add i64 %t121, %t126
  store i64 %t129, ptr %l7, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i64, ptr %l7, !tbaa !24
  %t134 = getelementptr %"std/io:source", ptr %t131, i32 0, i32 1
  %t136 = getelementptr { i64, ptr }, ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t132
  %t139 = load i8, ptr %t138, !tbaa !32
  %t142 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsSpace(i8 %t139)
  store i1 %t142, ptr %l68
  br label %bb31
bb31:
  %t143 = load i1, ptr %l68, !tbaa !21
  %t144 = xor i1 %t143, true
  br i1 %t144, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  br label %bb34
bb34:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"std/io:source", ptr %t146, i32 0, i32 2
  %t149 = load i64, ptr %t148, !tbaa !24
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l7, !tbaa !24
  %t155 = getelementptr %"std/io:source", ptr %t151, i32 0, i32 2
  store i64 %t152, ptr %t155, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i64, ptr %l7, !tbaa !24
  %t162 = call { i64, ptr } @std_2fio_2estd_2fio_3asource_2etext(ptr %v0, ptr %v1, ptr %t156, i64 %t149, i64 %t158)
  store { i64, ptr } %t162, ptr %l77
  br label %bb35
bb35:
  %t163 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t164 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t163, 1
  store { i32, { i64, ptr } } %t164, ptr %rv
  br label %ret
bb36:
  %t165 = load i64, ptr %l6, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l6, !tbaa !24
  br label %bb27
bb37:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"std/io:source", ptr %t169, i32 0, i32 3
  %t172 = load i64, ptr %t171, !tbaa !24
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"std/io:source", ptr %t173, i32 0, i32 2
  %t176 = load i64, ptr %t175, !tbaa !24
  %t179 = sub i64 %t172, %t176
  store i64 %t179, ptr %l1, !tbaa !24
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call i32 @std_2fio_2estd_2fio_3asource_2efill(ptr %v0, ptr %t181)
  store i32 %t183, ptr %l86
  %t184 = icmp ne i32 %t183, 0
  br i1 %t184, label %bb39, label %ok.185, !prof !99
ok.185:
  br label %bb38
bb38:
  br label %bb46
bb39:
  %t186 = load i32, ptr %l86, !tbaa !23
  %t187 = ashr i32 %t186, 16
  %t189 = icmp eq i32 %t187, 2
  br i1 %t189, label %bb40, label %bb41
bb40:
  %t191 = load i32, ptr %l86, !tbaa !23
  %t192 = ashr i32 %t191, 16
  %t194 = icmp eq i32 %t192, 1
  br i1 %t194, label %bb42, label %bb43
bb41:
  %t196 = load i32, ptr %l86, !tbaa !23
  %t197 = lshr i32 %t196, 16
  %t198 = and i32 %t196, 65535
  %t199 = icmp eq i32 %t197, 1
  %t200 = select i1 %t199, i32 1, i32 0
  %t201 = icmp eq i32 %t197, 2
  %t202 = select i1 %t201, i32 2, i32 %t200
  %t203 = icmp eq i32 %t196, 0
  %t204 = shl i32 %t202, 16
  %t205 = or i32 %t204, %t198
  %t206 = select i1 %t203, i32 0, i32 %t205
  %t208 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t206, 0
  store { i32, { i64, ptr } } %t208, ptr %rv
  br label %ret
bb42:
  call void @__olang_errpay_pop()
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"std/io:source", ptr %t209, i32 0, i32 2
  %t212 = load i64, ptr %t211, !tbaa !24
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"std/io:source", ptr %t215, i32 0, i32 3
  %t218 = load i64, ptr %t217, !tbaa !24
  %t221 = getelementptr %"std/io:source", ptr %t214, i32 0, i32 2
  store i64 %t218, ptr %t221, !tbaa !24
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"std/io:source", ptr %t224, i32 0, i32 3
  %t227 = load i64, ptr %t226, !tbaa !24
  %t231 = call { i64, ptr } @std_2fio_2estd_2fio_3asource_2etext(ptr %v0, ptr %v1, ptr %t222, i64 %t212, i64 %t227)
  store { i64, ptr } %t231, ptr %l101
  br label %bb45
bb45:
  %t232 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t233 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t232, 1
  store { i32, { i64, ptr } } %t233, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  br label %bb20
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i64 } @std_2fio_2esumOf(i32 %a0) #0 {
entry:
  %l1 = alloca %"std/io:Reader"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/io:Reader"
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l21 = alloca i64
  %l24 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"std/io:Reader" @std_2fio_3aReader_2ector(ptr %s0, i32 %a0, i64 2)
  store %"std/io:Reader" %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load %"std/io:Reader", ptr %l11
  store %"std/io:Reader" %t4, ptr %l1
  %t6 = call { i32, i64 } @std_2fio_2estd_2fio_3aReader_2eNext_3cI64_3e(ptr %s0, ptr %l1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l15
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb3, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l14
  br label %bb2
bb2:
  %t11 = load i64, ptr %l14, !tbaa !24
  store i64 %t11, ptr %l12, !tbaa !24
  br label %bb4
bb3:
  %t12 = load i32, ptr %l15, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t13, 2
  %t18 = select i1 %t17, i32 2, i32 %t16
  %t19 = icmp eq i32 %t13, 3
  %t20 = select i1 %t19, i32 3, i32 %t18
  %t21 = icmp eq i32 %t12, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t14
  %t24 = select i1 %t21, i32 0, i32 %t23
  call void @__olang_scope_close(ptr %s0)
  %t26 = insertvalue { i32, i64 } zeroinitializer, i32 %t24, 0
  store { i32, i64 } %t26, ptr %rv
  br label %ret
bb4:
  %t27 = load i64, ptr %l12, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t56 = load i64, ptr %l24, !tbaa !24
  store i64 %t56, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t57 = load i64, ptr %l21, !tbaa !24
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb12, label %bb13
bb12:
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l9, !tbaa !24
  %t76 = load i64, ptr %l3, !tbaa !24
  store i64 %t76, ptr %l42, !tbaa !24
  %t78 = call { i32, i64 } @std_2fio_2estd_2fio_3aReader_2eNext_3cI64_3e(ptr %s0, ptr %l1)
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l46
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb16, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l45
  br label %bb15
bb15:
  %t83 = load i64, ptr %l45, !tbaa !24
  store i64 %t83, ptr %l43, !tbaa !24
  br label %bb17
bb16:
  %t84 = load i32, ptr %l46, !tbaa !23
  %t85 = lshr i32 %t84, 16
  %t86 = and i32 %t84, 65535
  %t87 = icmp eq i32 %t85, 1
  %t88 = select i1 %t87, i32 1, i32 0
  %t89 = icmp eq i32 %t85, 2
  %t90 = select i1 %t89, i32 2, i32 %t88
  %t91 = icmp eq i32 %t85, 3
  %t92 = select i1 %t91, i32 3, i32 %t90
  %t93 = icmp eq i32 %t84, 0
  %t94 = shl i32 %t92, 16
  %t95 = or i32 %t94, %t86
  %t96 = select i1 %t93, i32 0, i32 %t95
  call void @__olang_scope_close(ptr %s0)
  %t98 = insertvalue { i32, i64 } zeroinitializer, i32 %t96, 0
  store { i32, i64 } %t98, ptr %rv
  br label %ret
bb17:
  %t99 = load i64, ptr %l42, !tbaa !24
  %t100 = load i64, ptr %l43, !tbaa !24
  %t101 = add i64 %t99, %t100
  store i64 %t101, ptr %l3, !tbaa !24
  br label %bb18
bb18:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l8, !tbaa !24
  br label %bb11
bb19:
  %t107 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  %t109 = insertvalue { i32, i64 } zeroinitializer, i64 %t107, 1
  store { i32, i64 } %t109, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i64, ptr } @std_2fio_2ewords(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca %"std/io:Reader"
  %l4 = alloca { i64, ptr }
  %l7 = alloca i32
  %l10 = alloca %"std/io:Reader"
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l20 = alloca i1
  %l28 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @std_2fio_2ereading(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i32, ptr %l7, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  %t5 = load i32, ptr %l2, !tbaa !23
  %t9 = call %"std/io:Reader" @std_2fio_3aReader_2ector(ptr %s0, i32 %t5, i64 %a1)
  store %"std/io:Reader" %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load %"std/io:Reader", ptr %l10
  store %"std/io:Reader" %t10, ptr %l3
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t12 = call { i32, { i64, ptr } } @std_2fio_2estd_2fio_3aReader_2eWord(ptr %s0, ptr %s1, ptr %l3)
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
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  br label %bb13
bb13:
  call void @__olang_check_failed(ptr @olang_loc_3a9593c1ece42b7a_23ab9347e2e9082e)
  unreachable
bb14:
  %t37 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t45 = add i64 %t42, %t44
  %t47 = extractvalue { i64, ptr } %t37, 1
  %t48 = extractvalue { i64, ptr } %t37, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
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
  store { i64, ptr } %t65, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb15:
  br label %bb3
bb16:
  %t67 = load i32, ptr %l2, !tbaa !23
  %t69 = call i32 @close(i32 %t67)
  store i32 %t69, ptr %l28
  br label %bb17
bb17:
  %t70 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/io:Lines" @std_2fio_3aLines_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i64
  %l9 = alloca %"std/io:source"
  %rv = alloca %"std/io:Lines"
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  store i32 %t1, ptr %l2, !tbaa !23
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l5, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fio_3aLines_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i32, ptr %l0, !tbaa !23
  %t10 = load i64, ptr %l5
  %t11 = inttoptr i64 %t10 to ptr
  %t14 = call %"std/io:source" @std_2fio_3asource_2ector(ptr %t11, i32 %t8, i64 %a1)
  store %"std/io:source" %t14, ptr %l9
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2estd_2fio_3aLines_2e1
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l5
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/io:source", ptr %l9, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = call ptr @__olang_region_home(ptr %t22)
  %t24 = icmp ne ptr %t23, null
  %t25 = select i1 %t24, ptr %t23, ptr null
  %t26 = icmp eq ptr %t25, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t26)
  br label %bb5
bb5:
  %t27 = load %"std/io:source", ptr %l9
  %t28 = load i32, ptr %l2, !tbaa !23
  %t29 = insertvalue %"std/io:Lines" undef, i32 %t28, 0
  %t31 = insertvalue %"std/io:Lines" %t29, %"std/io:source" %t27, 1
  store %"std/io:Lines" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"std/io:Lines", ptr %rv
  ret %"std/io:Lines" %rr
}

define dso_local %"std/io:Reader" @std_2fio_3aReader_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i64
  %l9 = alloca %"std/io:source"
  %rv = alloca %"std/io:Reader"
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  store i32 %t1, ptr %l2, !tbaa !23
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l5, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fio_3aReader_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i32, ptr %l0, !tbaa !23
  %t10 = load i64, ptr %l5
  %t11 = inttoptr i64 %t10 to ptr
  %t14 = call %"std/io:source" @std_2fio_3asource_2ector(ptr %t11, i32 %t8, i64 %a1)
  store %"std/io:source" %t14, ptr %l9
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2estd_2fio_3aReader_2e1
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l5
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/io:source", ptr %l9, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = call ptr @__olang_region_home(ptr %t22)
  %t24 = icmp ne ptr %t23, null
  %t25 = select i1 %t24, ptr %t23, ptr null
  %t26 = icmp eq ptr %t25, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t26)
  br label %bb5
bb5:
  %t27 = load %"std/io:source", ptr %l9
  %t28 = load i32, ptr %l2, !tbaa !23
  %t29 = insertvalue %"std/io:Reader" undef, i32 %t28, 0
  %t31 = insertvalue %"std/io:Reader" %t29, %"std/io:source" %t27, 1
  store %"std/io:Reader" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"std/io:Reader", ptr %rv
  ret %"std/io:Reader" %rr
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

define dso_local %"std/io:source" @std_2fio_3asource_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i32
  %l7 = alloca i64
  %l11 = alloca i64
  %l14 = alloca { i64, ptr }
  %rv = alloca %"std/io:source"
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l2, !tbaa !23
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2estd_2fio_3asource_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make_part(ptr %v0)
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
  %t24 = load i1, ptr @olang_2esole_2estd_2fio_3asource_2e1
  br i1 %t24, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_d704f98e0dac02b4_8c0d18df48dda608)
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
  %t36 = insertvalue %"std/io:source" undef, i32 %t35, 0
  %t38 = insertvalue %"std/io:source" %t36, { i64, ptr } %t34, 1
  %t40 = insertvalue %"std/io:source" %t38, i64 0, 2
  %t42 = insertvalue %"std/io:source" %t40, i64 0, 3
  store %"std/io:source" %t42, ptr %rv
  br label %ret
ret:
  %rr = load %"std/io:source", ptr %rv
  ret %"std/io:source" %rr
}

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
@.d0 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
declare ptr @__olang_errpay_top_get()
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
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
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare void @__olang_sb_done(ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_bang_failed_text(ptr, { i64, ptr }, i1) cold noreturn
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"only" }>, align 8
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
declare void @__olang_errpay_pop()
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
declare i32 @close(i32)
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d9 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"more than four bytes" }>, align 8
@.d10 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"-------------------------------------------------------------" }>, align 8
declare i32 @open(ptr, i32, ...)
declare i32 @pipe(ptr)
@.d11 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d14 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"line " }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2estd_2fio_3asource_2e1 = weak hidden constant i1 false
declare void @__olang_region_release_part(ptr, i64) noinline
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@olang_2esole_2estd_2fio_3aLines_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2estd_2fio_3aReader_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fio_3aWriter_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make_part(ptr) noinline
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare ptr @__olang_sb_grow(ptr, i64) noinline
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
declare { i32, i8 } @std_2fio_2estd_2fio_3aReader_2eNext_3cU8_3e(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fio_2estd_2fio_3aReader_2eNext_3cI32_3e(ptr %v0, ptr %a0)
@olang_loc_612705f1948f190e_71b8b9d16e0467f2 = external constant [0 x i8]
declare { i32, i128 } @std_2fio_2estd_2fio_3aReader_2eNext_3cI128_3e(ptr %v0, ptr %a0)
@olang_loc_4a594c2f681aabb9_bd69a22d92cb3bcd = external constant [0 x i8]
declare { i32, double } @std_2fio_2estd_2fio_3aReader_2eNext_3cF64_3e(ptr %v0, ptr %a0)
@olang_loc_3d43254fa316b040_4a708859c9385124 = external constant [0 x i8]
declare { i32, float } @std_2fio_2estd_2fio_3aReader_2eNext_3cF32_3e(ptr %v0, ptr %a0)
@olang_loc_3fe2750bd507e55b_453e8b296fa12c7f = external constant [0 x i8]
declare { i32, i1 } @std_2fio_2estd_2fio_3aReader_2eNext_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_829a796ec59bc43a_895c30d24d72a7e6 = external constant [0 x i8]
@olang_loc_77d1d43e26afb955_a5c9cf46a69b0b31 = external constant [0 x i8]
@olang_loc_3ede013c1f353b0c_63e44ae0aad90078 = external constant [0 x i8]
@olang_loc_48f9082997753888_a240ae8e5e29a0c = external constant [0 x i8]
@olang_loc_6ee02aeeb4b82e91_bbd4c13499124615 = external constant [0 x i8]
@olang_loc_d370e8755f65b4b1_c6fa620c8a8d5d7d = external constant [0 x i8]
@olang_loc_6b542447dc4d89ad_116b4d1aefb73901 = external constant [0 x i8]
@olang_loc_82463fd07313b343_899050d6bae42837 = external constant [0 x i8]
@olang_loc_f4311b0505de9da9_3272b36637f70495 = external constant [0 x i8]
@olang_loc_b6949e6a237530b_4c14899758e8fd2f = external constant [0 x i8]
@olang_loc_31b0dde7edb1001b_2a6c547961e5bd97 = external constant [0 x i8]
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_d49434c98a69e919_d3631f4f1bfca5d5 = external constant [0 x i8]
@olang_loc_2286ff1fbe683020_e6ca3016afdcd184 = external constant [0 x i8]
@olang_loc_48accf86025d4ce5_aa0f4329e5309b51 = external constant [0 x i8]
@olang_loc_df04501e4a4cf908_d72b6f743353d1dc = external constant [0 x i8]
@olang_loc_f7e0e0a6112ac96b_35d118dc347f17e7 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsSpace(i8 %a0)
declare { i32, i64 } @std_2fio_2estd_2fio_3aReader_2eNext_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_3a9593c1ece42b7a_23ab9347e2e9082e = external constant [0 x i8]
@olang_loc_6cd41157f4fd8842_c8d3cc71cb27ad56 = external constant [0 x i8]
@olang_loc_d704f98e0dac02b4_8c0d18df48dda608 = external constant [0 x i8]

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
