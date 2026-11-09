source_filename = "bench_parallel.main.quick.ll"
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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
define dso_local { i64, i64 } @bench_2fparallel_2elongest(i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l40 = alloca i64
  %rv = alloca { i64, i64 }
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a0, ptr %l5, !tbaa !24
  store i64 %a2, ptr %l6, !tbaa !24
  store i64 %a1, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l7, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l7, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l21, !tbaa !24
  store i64 %t33, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l18, !tbaa !24
  store i64 %t34, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l8, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l10, !tbaa !24
  %t53 = load i64, ptr %l10, !tbaa !24
  %t55 = call i64 @bench_2fparallel_2esteps(i64 %t53)
  store i64 %t55, ptr %l40
  br label %bb11
bb11:
  %t56 = load i64, ptr %l40, !tbaa !24
  store i64 %t56, ptr %l11, !tbaa !24
  %t57 = load i64, ptr %l11, !tbaa !24
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load i64, ptr %l10, !tbaa !24
  store i64 %t63, ptr %l3, !tbaa !24
  %t65 = load i64, ptr %l11, !tbaa !24
  store i64 %t65, ptr %l4, !tbaa !24
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t67 = load i64, ptr %l9, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l9, !tbaa !24
  br label %bb7
bb16:
  %t71 = load i64, ptr %l3, !tbaa !24
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = insertvalue { i64, i64 } undef, i64 %t71, 0
  %t76 = insertvalue { i64, i64 } %t74, i64 %t72, 1
  store { i64, i64 } %t76, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i32 @bench_2fparallel_2emain() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i32
  %l28 = alloca i32
  %l32 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i32
  %l36 = alloca i32
  %l40 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i32
  %l50 = alloca i32
  %l54 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i32
  %l58 = alloca i32
  %l62 = alloca { i64, ptr }
  %l64 = alloca i64
  %l68 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l109 = alloca i64
  %l112 = alloca i64
  %l134 = alloca i1
  %l139 = alloca i1
  %l154 = alloca i32
  %l155 = alloca i32
  %l159 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %s7 = alloca %olang.scope
  %jh7 = alloca ptr
  %s16 = alloca %olang.builder
  %s16room = alloca [64 x i8], align 8
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @std_2fos_2eArgs(ptr %s0)
  store { i64, ptr } %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t2, ptr %l0, !tbaa !27
  store i64 1000, ptr %l1, !tbaa !24
  store i64 4, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp sgt i64 %t5, 1
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l24, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %t11, i64 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !37
  store { i64, ptr } %t13, ptr %l25, !tbaa !27
  %t14 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 10)
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l27
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb5, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l26
  br label %bb4
bb3:
  br label %bb13
bb4:
  %t19 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t20 = load i64, ptr %l26, !tbaa !24
  %t21 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t19, i64 %t20)
  %t22 = extractvalue { i32, i64 } %t21, 1
  %t23 = extractvalue { i32, i64 } %t21, 0
  store i32 %t23, ptr %l35
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb9, label %ok.25, !prof !99
ok.25:
  store i64 %t22, ptr %l34
  br label %bb8
bb5:
  %t26 = load i32, ptr %l27, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 0, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  store i32 %t34, ptr %l28, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t35 = load i32, ptr %l28, !tbaa !23
  %t36 = icmp eq i32 %t35, 65537
  br i1 %t36, label %bb6, label %bb7
bb6:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t38 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t38, i64 %t39)
  %t40 = call ptr @__olang_errpay_top_get()
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t41, i64 %t42)
  %t44 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 1
  %t45 = getelementptr { i64 }, ptr %t44, i32 0, i32 0
  %t46 = load i64, ptr %t45
  %t48 = call ptr @__olang_sb_room(ptr %s2, i64 24)
  %t49 = call i64 @__olang_fmt_i64(ptr %t48, i64 %t46)
  call void @__olang_sb_add(ptr %s2, i64 %t49)
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t50, i64 %t51)
  %t52 = load ptr, ptr %s2
  %t53 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t54 = load i64, ptr %t53
  %t55 = load ptr, ptr @__olang_prog_scope
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t54)
  call void @olang_textcopy(ptr %t56, ptr %t52, i64 %t54)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l32, !tbaa !27
  %t59 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t60 = load ptr, ptr %t59
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %sbgrew.62, label %sbdone.63
sbgrew.62:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.63
sbdone.63:
  %t64 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t65 = load ptr, ptr @__olang_prog_scope
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = extractvalue { i64, ptr } %t64, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = extractvalue { i64, ptr } %t71, 0
  %t75 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  call void @__olang_unhandled_text({ i64, ptr } %t76, i1 false)
  unreachable
bb7:
  %t77 = load i32, ptr %l28, !tbaa !23
  store i32 %t77, ptr %rv
  br label %ret
bb8:
  %t78 = load i64, ptr %l34, !tbaa !24
  store i64 %t78, ptr %l23, !tbaa !24
  br label %bb12
bb9:
  %t79 = load i32, ptr %l35, !tbaa !23
  %t80 = lshr i32 %t79, 16
  %t81 = and i32 %t79, 65535
  %t82 = icmp eq i32 %t80, 1
  %t83 = select i1 %t82, i32 2, i32 0
  %t84 = icmp eq i32 %t79, 0
  %t85 = shl i32 %t83, 16
  %t86 = or i32 %t85, %t81
  %t87 = select i1 %t84, i32 0, i32 %t86
  store i32 %t87, ptr %l36, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i32, ptr %l36, !tbaa !23
  %t89 = icmp eq i32 %t88, 65537
  br i1 %t89, label %bb10, label %bb11
bb10:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t91 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t91, i64 %t92)
  %t93 = call ptr @__olang_errpay_top_get()
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t94, i64 %t95)
  %t97 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 1
  %t98 = getelementptr { i64 }, ptr %t97, i32 0, i32 0
  %t99 = load i64, ptr %t98
  %t101 = call ptr @__olang_sb_room(ptr %s3, i64 24)
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t99)
  call void @__olang_sb_add(ptr %s3, i64 %t102)
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t103, i64 %t104)
  %t105 = load ptr, ptr %s3
  %t106 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t107 = load i64, ptr %t106
  %t108 = load ptr, ptr @__olang_prog_scope
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t107)
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t107)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l40, !tbaa !27
  %t112 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t113 = load ptr, ptr %t112
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %sbgrew.115, label %sbdone.116
sbgrew.115:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.116
sbdone.116:
  %t117 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t118 = load ptr, ptr @__olang_prog_scope
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = extractvalue { i64, ptr } %t124, 0
  %t128 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  call void @__olang_unhandled_text({ i64, ptr } %t129, i1 false)
  unreachable
bb11:
  %t130 = load i32, ptr %l36, !tbaa !23
  store i32 %t130, ptr %rv
  br label %ret
bb12:
  %t131 = load i64, ptr %l23, !tbaa !24
  store i64 %t131, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb13:
  %t132 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t136 = icmp sgt i64 %t134, 2
  br i1 %t136, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t138 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t138, ptr %l46, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %t140, i64 2
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !37
  store { i64, ptr } %t142, ptr %l47, !tbaa !27
  %t143 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 10)
  %t144 = extractvalue { i32, i64 } %t143, 1
  %t145 = extractvalue { i32, i64 } %t143, 0
  store i32 %t145, ptr %l49
  %t146 = icmp ne i32 %t145, 0
  br i1 %t146, label %bb17, label %ok.147, !prof !99
ok.147:
  store i64 %t144, ptr %l48
  br label %bb16
bb15:
  br label %bb25
bb16:
  %t148 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t149 = load i64, ptr %l48, !tbaa !24
  %t150 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t148, i64 %t149)
  %t151 = extractvalue { i32, i64 } %t150, 1
  %t152 = extractvalue { i32, i64 } %t150, 0
  store i32 %t152, ptr %l57
  %t153 = icmp ne i32 %t152, 0
  br i1 %t153, label %bb21, label %ok.154, !prof !99
ok.154:
  store i64 %t151, ptr %l56
  br label %bb20
bb17:
  %t155 = load i32, ptr %l49, !tbaa !23
  %t156 = lshr i32 %t155, 16
  %t157 = and i32 %t155, 65535
  %t158 = icmp eq i32 %t156, 1
  %t159 = select i1 %t158, i32 0, i32 0
  %t160 = icmp eq i32 %t155, 0
  %t161 = shl i32 %t159, 16
  %t162 = or i32 %t161, %t157
  %t163 = select i1 %t160, i32 0, i32 %t162
  store i32 %t163, ptr %l50, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t164 = load i32, ptr %l50, !tbaa !23
  %t165 = icmp eq i32 %t164, 65537
  br i1 %t165, label %bb18, label %bb19
bb18:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t167 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t167, i64 %t168)
  %t169 = call ptr @__olang_errpay_top_get()
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t170, i64 %t171)
  %t173 = getelementptr { i64, [1 x i64] }, ptr %t169, i32 0, i32 1
  %t174 = getelementptr { i64 }, ptr %t173, i32 0, i32 0
  %t175 = load i64, ptr %t174
  %t177 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t178 = call i64 @__olang_fmt_i64(ptr %t177, i64 %t175)
  call void @__olang_sb_add(ptr %s5, i64 %t178)
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t179, i64 %t180)
  %t181 = load ptr, ptr %s5
  %t182 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t183 = load i64, ptr %t182
  %t184 = load ptr, ptr @__olang_prog_scope
  %t185 = call ptr @__olang_scope_alloc(ptr %t184, i64 %t183)
  call void @olang_textcopy(ptr %t185, ptr %t181, i64 %t183)
  %t186 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  store { i64, ptr } %t187, ptr %l54, !tbaa !27
  %t188 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t189 = load ptr, ptr %t188
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %sbgrew.191, label %sbdone.192
sbgrew.191:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.192
sbdone.192:
  %t193 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t194 = load ptr, ptr @__olang_prog_scope
  %t195 = extractvalue { i64, ptr } %t193, 0
  %t196 = extractvalue { i64, ptr } %t193, 1
  %t197 = mul i64 %t195, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %t194, i64 %t197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t198, ptr %t196, i64 %t197, i1 false)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  %t202 = extractvalue { i64, ptr } %t200, 1
  %t203 = extractvalue { i64, ptr } %t200, 0
  %t204 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t202, 1
  call void @__olang_unhandled_text({ i64, ptr } %t205, i1 false)
  unreachable
bb19:
  %t206 = load i32, ptr %l50, !tbaa !23
  store i32 %t206, ptr %rv
  br label %ret
bb20:
  %t207 = load i64, ptr %l56, !tbaa !24
  store i64 %t207, ptr %l45, !tbaa !24
  br label %bb24
bb21:
  %t208 = load i32, ptr %l57, !tbaa !23
  %t209 = lshr i32 %t208, 16
  %t210 = and i32 %t208, 65535
  %t211 = icmp eq i32 %t209, 1
  %t212 = select i1 %t211, i32 2, i32 0
  %t213 = icmp eq i32 %t208, 0
  %t214 = shl i32 %t212, 16
  %t215 = or i32 %t214, %t210
  %t216 = select i1 %t213, i32 0, i32 %t215
  store i32 %t216, ptr %l58, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t217 = load i32, ptr %l58, !tbaa !23
  %t218 = icmp eq i32 %t217, 65537
  br i1 %t218, label %bb22, label %bb23
bb22:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t220 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t220, i64 %t221)
  %t222 = call ptr @__olang_errpay_top_get()
  %t223 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t223, i64 %t224)
  %t226 = getelementptr { i64, [1 x i64] }, ptr %t222, i32 0, i32 1
  %t227 = getelementptr { i64 }, ptr %t226, i32 0, i32 0
  %t228 = load i64, ptr %t227
  %t230 = call ptr @__olang_sb_room(ptr %s6, i64 24)
  %t231 = call i64 @__olang_fmt_i64(ptr %t230, i64 %t228)
  call void @__olang_sb_add(ptr %s6, i64 %t231)
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t232, i64 %t233)
  %t234 = load ptr, ptr %s6
  %t235 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t236 = load i64, ptr %t235
  %t237 = load ptr, ptr @__olang_prog_scope
  %t238 = call ptr @__olang_scope_alloc(ptr %t237, i64 %t236)
  call void @olang_textcopy(ptr %t238, ptr %t234, i64 %t236)
  %t239 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  store { i64, ptr } %t240, ptr %l62, !tbaa !27
  %t241 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t242 = load ptr, ptr %t241
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %sbgrew.244, label %sbdone.245
sbgrew.244:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.245
sbdone.245:
  %t246 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t247 = load ptr, ptr @__olang_prog_scope
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t249 = extractvalue { i64, ptr } %t246, 1
  %t250 = mul i64 %t248, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %t247, i64 %t250)
  call void @llvm.memcpy.p0.p0.i64(ptr %t251, ptr %t249, i64 %t250, i1 false)
  %t252 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  %t255 = extractvalue { i64, ptr } %t253, 1
  %t256 = extractvalue { i64, ptr } %t253, 0
  %t257 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t255, 1
  call void @__olang_unhandled_text({ i64, ptr } %t258, i1 false)
  unreachable
bb23:
  %t259 = load i32, ptr %l58, !tbaa !23
  store i32 %t259, ptr %rv
  br label %ret
bb24:
  %t260 = load i64, ptr %l45, !tbaa !24
  store i64 %t260, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  %t261 = load i64, ptr %l2, !tbaa !24
  store i64 %t261, ptr %l64, !tbaa !24
  %t262 = load i64, ptr %l64, !tbaa !24
  %t263 = icmp sge i64 %t262, 0
  br i1 %t263, label %bb26, label %bb27
bb26:
  %t265 = load i64, ptr %l64, !tbaa !24
  %t266 = icmp sle i64 %t265, 1152921504606846975
  br i1 %t266, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_7f62b76d35eda549_7f5f8ceaafcc1ad)
  unreachable
bb28:
  %t268 = load i64, ptr %l64, !tbaa !24
  %t269 = mul i64 %t268, 8
  %t270 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t269)
  %t271 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  store { i64, ptr } %t272, ptr %l3, !tbaa !27
  %t274 = load i64, ptr %l2, !tbaa !24
  store i64 %t274, ptr %l68, !tbaa !24
  %t275 = load i64, ptr %l68, !tbaa !24
  %t276 = icmp sge i64 %t275, 0
  br i1 %t276, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_7f62b76d35eda549_7f5f8ceaafcc1ad)
  unreachable
bb30:
  %t278 = load i64, ptr %l68, !tbaa !24
  %t279 = icmp sle i64 %t278, 1152921504606846975
  br i1 %t279, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_78495850a46598fc_a106592da7427a80)
  unreachable
bb32:
  %t281 = load i64, ptr %l68, !tbaa !24
  %t282 = mul i64 %t281, 8
  %t283 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t282)
  %t284 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  store { i64, ptr } %t285, ptr %l4, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s7
  store ptr null, ptr %jh7
  store i64 0, ptr %l5, !tbaa !24
  %t287 = load i64, ptr %l2, !tbaa !24
  store i64 %t287, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t289 = load i64, ptr %l6, !tbaa !24
  %t290 = load i64, ptr %l5, !tbaa !24
  %t293 = icmp sgt i64 %t289, %t290
  br i1 %t293, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_78495850a46598fc_a106592da7427a80)
  unreachable
bb34:
  %t295 = load i64, ptr %l7, !tbaa !24
  %t297 = icmp sgt i64 %t295, 0
  br i1 %t297, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb39
bb36:
  %t299 = load i64, ptr %l6, !tbaa !24
  %t300 = load i64, ptr %l5, !tbaa !24
  %t303 = sub i64 %t299, %t300
  %t304 = load i64, ptr %l7, !tbaa !24
  %t307 = add i64 %t303, %t304
  %t309 = sub i64 %t307, 1
  %t310 = load i64, ptr %l7, !tbaa !24
  %t313 = sdiv i64 %t309, %t310
  store i64 %t313, ptr %l79, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb38
bb38:
  %t315 = load i64, ptr %l79, !tbaa !24
  store i64 %t315, ptr %l76, !tbaa !24
  br label %bb39
bb39:
  %t316 = load i64, ptr %l76, !tbaa !24
  store i64 %t316, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb40
bb40:
  %t317 = load i64, ptr %l9, !tbaa !24
  %t318 = load i64, ptr %l8, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  %t323 = xor i1 %t321, true
  br i1 %t323, label %bb41, label %bb42
bb41:
  br label %bb45
bb42:
  br label %bb43
bb43:
  %t325 = load i64, ptr %l5, !tbaa !24
  %t326 = load i64, ptr %l9, !tbaa !24
  %t327 = load i64, ptr %l7, !tbaa !24
  %t330 = mul i64 %t326, %t327
  %t333 = add i64 %t325, %t330
  store i64 %t333, ptr %l10, !tbaa !24
  %t335 = load i64, ptr %l10, !tbaa !24
  %t336 = load i64, ptr %l10, !tbaa !24
  %t337 = load i64, ptr %l10, !tbaa !24
  %t339 = add i64 %t337, 1
  %t340 = load i64, ptr %l2, !tbaa !24
  %t341 = load i64, ptr %l1, !tbaa !24
  %t346 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = getelementptr i64, ptr %t347, i64 %t335
  %t350 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = getelementptr i64, ptr %t351, i64 %t336
  %t353 = getelementptr { i64, i64, i64, ptr, ptr }, ptr null, i32 1
  %t354 = ptrtoint ptr %t353 to i64
  %t355 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 %t354, i64 8)
  %t356 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %t355, i32 0, i32 0
  store i64 %t339, ptr %t356
  %t357 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %t355, i32 0, i32 1
  store i64 %t340, ptr %t357
  %t358 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %t355, i32 0, i32 2
  store i64 %t341, ptr %t358
  %t359 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %t355, i32 0, i32 3
  store ptr %t348, ptr %t359
  %t360 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %t355, i32 0, i32 4
  store ptr %t352, ptr %t360
  %t361 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 40, i64 8)
  %t362 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t361, i32 0, i32 2
  store ptr null, ptr %t362
  %t363 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t361, i32 0, i32 1
  store i64 0, ptr %t363
  %t364 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t361, i32 0, i32 3
  store i64 0, ptr %t364
  %t365 = getelementptr { ptr, i64, ptr, i64, ptr }, ptr %t361, i32 0, i32 4
  store ptr null, ptr %t365
  %t366 = call ptr @__olang_worker_get()
  call void @__olang_worker_start(ptr %t366, ptr @olang_task9, ptr %t355, ptr %t361)
  %t367 = load ptr, ptr %jh7
  store ptr %t367, ptr %t361
  store ptr %t361, ptr %jh7
  br label %bb44
bb44:
  %t368 = load i64, ptr %l9, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l9, !tbaa !24
  br label %bb40
bb45:
  %t372 = call i64 @__olang_join_tasks_keep(ptr %jh7, i1 false)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb47:
  store i64 0, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t373 = load i64, ptr %l2, !tbaa !24
  store i64 %t373, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t375 = load i64, ptr %l14, !tbaa !24
  %t376 = load i64, ptr %l13, !tbaa !24
  %t379 = icmp sgt i64 %t375, %t376
  br i1 %t379, label %bb48, label %bb49
bb48:
  %t381 = load i64, ptr %l15, !tbaa !24
  %t383 = icmp sgt i64 %t381, 0
  br i1 %t383, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb53
bb50:
  %t385 = load i64, ptr %l14, !tbaa !24
  %t386 = load i64, ptr %l13, !tbaa !24
  %t389 = sub i64 %t385, %t386
  %t390 = load i64, ptr %l15, !tbaa !24
  %t393 = add i64 %t389, %t390
  %t395 = sub i64 %t393, 1
  %t396 = load i64, ptr %l15, !tbaa !24
  %t399 = sdiv i64 %t395, %t396
  store i64 %t399, ptr %l112, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb52
bb52:
  %t401 = load i64, ptr %l112, !tbaa !24
  store i64 %t401, ptr %l109, !tbaa !24
  br label %bb53
bb53:
  %t402 = load i64, ptr %l109, !tbaa !24
  store i64 %t402, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb54
bb54:
  %t403 = load i64, ptr %l17, !tbaa !24
  %t404 = load i64, ptr %l16, !tbaa !24
  %t407 = icmp slt i64 %t403, %t404
  %t409 = xor i1 %t407, true
  br i1 %t409, label %bb55, label %bb56
bb55:
  br label %bb68
bb56:
  br label %bb57
bb57:
  %t411 = load i64, ptr %l13, !tbaa !24
  %t412 = load i64, ptr %l17, !tbaa !24
  %t413 = load i64, ptr %l15, !tbaa !24
  %t416 = mul i64 %t412, %t413
  %t419 = add i64 %t411, %t416
  store i64 %t419, ptr %l18, !tbaa !24
  %t421 = load i64, ptr %l18, !tbaa !24
  %t423 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !27
  %t425 = getelementptr i64, ptr %t424, i64 %t421
  %t426 = load i64, ptr %t425, !tbaa !34
  %t427 = load i64, ptr %l12, !tbaa !24
  %t430 = icmp sgt i64 %t426, %t427
  br i1 %t430, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb63
bb59:
  %t432 = load i64, ptr %l18, !tbaa !24
  %t434 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !27
  %t436 = getelementptr i64, ptr %t435, i64 %t432
  %t437 = load i64, ptr %t436, !tbaa !34
  %t438 = load i64, ptr %l12, !tbaa !24
  %t441 = icmp eq i64 %t437, %t438
  br i1 %t441, label %bb60, label %bb61
bb60:
  %t443 = load i64, ptr %l18, !tbaa !24
  %t445 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t446 = load ptr, ptr %t445, !tbaa !27
  %t447 = getelementptr i64, ptr %t446, i64 %t443
  %t448 = load i64, ptr %t447, !tbaa !34
  %t449 = load i64, ptr %l11, !tbaa !24
  %t452 = icmp slt i64 %t448, %t449
  store i1 %t452, ptr %l139, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb62
bb62:
  %t454 = load i1, ptr %l139, !tbaa !21
  store i1 %t454, ptr %l134, !tbaa !21
  br label %bb63
bb63:
  %t455 = load i1, ptr %l134, !tbaa !21
  br i1 %t455, label %bb64, label %bb65
bb64:
  %t456 = load i64, ptr %l18, !tbaa !24
  %t458 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !27
  %t460 = getelementptr i64, ptr %t459, i64 %t456
  %t461 = load i64, ptr %t460, !tbaa !34
  store i64 %t461, ptr %l11, !tbaa !24
  %t463 = load i64, ptr %l18, !tbaa !24
  %t465 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = getelementptr i64, ptr %t466, i64 %t463
  %t468 = load i64, ptr %t467, !tbaa !34
  store i64 %t468, ptr %l12, !tbaa !24
  br label %bb66
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t470 = load i64, ptr %l17, !tbaa !24
  %t472 = add i64 %t470, 1
  store i64 %t472, ptr %l17, !tbaa !24
  br label %bb54
bb68:
  %t474 = load i64, ptr %l11, !tbaa !24
  %t475 = load i64, ptr %l12, !tbaa !24
  %t477 = call i64 @__olang_fmt_i64(ptr null, i64 %t474)
  %t478 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t479 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t480 = add i64 %t477, %t479
  %t482 = call i64 @__olang_fmt_i64(ptr null, i64 %t475)
  %t483 = add i64 %t480, %t482
  %t484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t485 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t486 = add i64 %t483, %t485
  %t487 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t486)
  %t488 = call i64 @__olang_fmt_i64(ptr %t487, i64 %t474)
  %t489 = getelementptr i8, ptr %t487, i64 %t477
  call void @olang_textcopy(ptr %t489, ptr %t478, i64 %t479)
  %t490 = getelementptr i8, ptr %t489, i64 %t479
  %t491 = call i64 @__olang_fmt_i64(ptr %t490, i64 %t475)
  %t492 = getelementptr i8, ptr %t490, i64 %t482
  call void @olang_textcopy(ptr %t492, ptr %t484, i64 %t485)
  %t493 = insertvalue { i64, ptr } undef, i64 %t486, 0
  %t494 = insertvalue { i64, ptr } %t493, ptr %t487, 1
  %t496 = extractvalue { i64, ptr } %t494, 0
  %t497 = extractvalue { i64, ptr } %t494, 1
  %t498 = mul i64 %t496, 1
  %t499 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t498)
  call void @llvm.memcpy.p0.p0.i64(ptr %t499, ptr %t497, i64 %t498, i1 false)
  %t500 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t501 = insertvalue { i64, ptr } %t500, ptr %t499, 1
  %t503 = call i32 @std_2fio_2ePrint(ptr %s0, { i64, ptr } %t501)
  store i32 %t503, ptr %l154
  %t504 = icmp ne i32 %t503, 0
  br i1 %t504, label %bb70, label %ok.505, !prof !99
ok.505:
  br label %bb69
bb69:
  br label %bb73
bb70:
  %t506 = load i32, ptr %l154, !tbaa !23
  %t507 = lshr i32 %t506, 16
  %t508 = and i32 %t506, 65535
  %t509 = icmp eq i32 %t507, 1
  %t510 = select i1 %t509, i32 1, i32 0
  %t511 = icmp eq i32 %t506, 0
  %t512 = shl i32 %t510, 16
  %t513 = or i32 %t512, %t508
  %t514 = select i1 %t511, i32 0, i32 %t513
  store i32 %t514, ptr %l155, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t515 = load i32, ptr %l155, !tbaa !23
  %t516 = icmp eq i32 %t515, 65537
  br i1 %t516, label %bb71, label %bb72
bb71:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s16
  store ptr %s16room, ptr %s16
  %t518 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t519 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t518, i64 %t519)
  %t520 = call ptr @__olang_errpay_top_get()
  %t521 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t522 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t521, i64 %t522)
  %t524 = getelementptr { i64, [1 x i64] }, ptr %t520, i32 0, i32 1
  %t525 = getelementptr { i64 }, ptr %t524, i32 0, i32 0
  %t526 = load i64, ptr %t525
  %t528 = call ptr @__olang_sb_room(ptr %s16, i64 24)
  %t529 = call i64 @__olang_fmt_i64(ptr %t528, i64 %t526)
  call void @__olang_sb_add(ptr %s16, i64 %t529)
  %t530 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t531 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t530, i64 %t531)
  %t532 = load ptr, ptr %s16
  %t533 = getelementptr %olang.builder, ptr %s16, i32 0, i32 1
  %t534 = load i64, ptr %t533
  %t535 = load ptr, ptr @__olang_prog_scope
  %t536 = call ptr @__olang_scope_alloc(ptr %t535, i64 %t534)
  call void @olang_textcopy(ptr %t536, ptr %t532, i64 %t534)
  %t537 = insertvalue { i64, ptr } undef, i64 %t534, 0
  %t538 = insertvalue { i64, ptr } %t537, ptr %t536, 1
  store { i64, ptr } %t538, ptr %l159, !tbaa !27
  %t539 = getelementptr %olang.builder, ptr %s16, i32 0, i32 3
  %t540 = load ptr, ptr %t539
  %t541 = icmp ne ptr %t540, null
  br i1 %t541, label %sbgrew.542, label %sbdone.543
sbgrew.542:
  call void @__olang_sb_done(ptr %s16)
  br label %sbdone.543
sbdone.543:
  %t544 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t545 = load ptr, ptr @__olang_prog_scope
  %t546 = extractvalue { i64, ptr } %t544, 0
  %t547 = extractvalue { i64, ptr } %t544, 1
  %t548 = mul i64 %t546, 1
  %t549 = call ptr @__olang_scope_alloc(ptr %t545, i64 %t548)
  call void @llvm.memcpy.p0.p0.i64(ptr %t549, ptr %t547, i64 %t548, i1 false)
  %t550 = insertvalue { i64, ptr } undef, i64 %t546, 0
  %t551 = insertvalue { i64, ptr } %t550, ptr %t549, 1
  %t553 = extractvalue { i64, ptr } %t551, 1
  %t554 = extractvalue { i64, ptr } %t551, 0
  %t555 = insertvalue { i64, ptr } undef, i64 %t554, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t553, 1
  call void @__olang_unhandled_text({ i64, ptr } %t556, i1 false)
  unreachable
bb72:
  %t557 = load i32, ptr %l155, !tbaa !23
  store i32 %t557, ptr %rv
  br label %ret
bb73:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @bench_2fparallel_2esteps(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l8 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp ne i64 %t1, 1
  %t5 = xor i1 %t3, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  br label %bb9
bb3:
  br label %bb4
bb4:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t9 = srem i64 %t7, 2
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = sdiv i64 %t13, 2
  store i64 %t15, ptr %l8, !tbaa !24
  br label %bb7
bb6:
  %t17 = load i64, ptr %l0, !tbaa !24
  %t19 = mul i64 3, %t17
  %t21 = add i64 %t19, 1
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t23 = load i64, ptr %l8, !tbaa !24
  store i64 %t23, ptr %l0, !tbaa !24
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l1, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t28 = load i64, ptr %l1, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define i32 @main(i32 %argc, ptr %argv) #0 {
entry:
  store i32 %argc, ptr @__olang_argc
  store ptr %argv, ptr @__olang_argv
  call void @__olang_thread_init()
  %c = call i32 @bench_2fparallel_2emain()
  %bad = icmp ne i32 %c, 0
  br i1 %bad, label %err, label %ok
ok:
  ret i32 0
err:
  %s = load ptr, ptr @stderr
  %m0 = getelementptr i8, ptr @.c15, i64 0
  %q1 = icmp eq i32 %c, 65536
  %m1 = select i1 %q1, ptr @.c16, ptr %m0
  %q2 = icmp eq i32 %c, 65537
  %m2 = select i1 %q2, ptr @.c17, ptr %m1
  %q3 = icmp eq i32 %c, 131072
  %m3 = select i1 %q3, ptr @.c18, ptr %m2
  %q4 = icmp eq i32 %c, 131073
  %m4 = select i1 %q4, ptr @.c19, ptr %m3
  %q5 = icmp eq i32 %c, 131074
  %m5 = select i1 %q5, ptr @.c20, ptr %m4
  call i32 @fputs(ptr %m5, ptr %s)
  call void @__olang_debug_hint(ptr %s)
  ret i32 1
}

define dso_local i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %l18 = alloca i64
  %l21 = alloca i64
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = sub i64 %t3, %t6
  %t11 = add i64 %t9, 1
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  br label %bb24
bb9:
  br label %bb10
bb10:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = icmp slt i64 %t59, %t62
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l44, !tbaa !27
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t72
  %t77 = load i8, ptr %t76, !tbaa !32
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t78, ptr %l49, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 %t79
  %t84 = load i8, ptr %t83, !tbaa !32
  %t87 = icmp eq i8 %t77, %t84
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t89 = load i1, ptr %l43, !tbaa !21
  %t90 = xor i1 %t89, true
  br i1 %t90, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  br label %bb11
bb19:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp eq i64 %t96, %t99
  br i1 %t102, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l6, !tbaa !24
  br label %bb7
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eSort_3cstd_2fprelu_H425a408f665c1f34766f6a10dd38435a(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { ptr, ptr } %pg1, 0
  %t12 = extractvalue { ptr, ptr } %pg1, 1
  call void @std_2fprelude_2farray_2esortByPositions_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t7, ptr %t11, ptr %t12)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortByPositions_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l26 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t160 = alloca { { ptr, ptr }, { i64, ptr }, ptr, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2estd_2fprelude_2farray_2esortRun, !tbaa !24
  %t9 = icmp sle i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load { ptr, ptr }, ptr %l1
  %t17 = extractvalue { ptr, ptr } %t13, 0
  %t18 = extractvalue { ptr, ptr } %t13, 1
  call void @std_2fprelude_2farray_2esortInsertion_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t11, i64 0, i64 %t12, ptr %t17, ptr %t18)
  br label %bb3
bb2:
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t25, ptr %l26, !tbaa !24
  br label %bb8
bb7:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l26, !tbaa !24
  %t30 = icmp sge i64 %t29, 0
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = icmp sle i64 %t32, 1152921504606846975
  br i1 %t33, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f5954356a94cfd1d_57c8a908dd11d469)
  unreachable
bb11:
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = mul i64 %t35, 8
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_f5954356a94cfd1d_57c8a908dd11d469)
  unreachable
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb15:
  br label %bb16
bb16:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t53 = add i64 %t49, %t50
  store i64 %t53, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t61 = load i64, ptr %l2, !tbaa !24
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = sub i64 %t63, %t64
  store i64 %t67, ptr %l45, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l46, !tbaa !24
  %t70 = icmp sge i64 0, 0
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load i64, ptr %l45, !tbaa !24
  %t73 = icmp sle i64 0, %t72
  br i1 %t73, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb22:
  %t75 = load i64, ptr %l45, !tbaa !24
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb24:
  %t79 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l45, !tbaa !24
  %t82 = getelementptr i64, ptr %t80, i64 0
  %t83 = sub i64 %t81, 0
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = sub i64 %t87, %t88
  store i64 %t91, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_bd57bfee552aaf80_4db8901b79077054)
  unreachable
bb26:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb31
bb28:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l60, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb30
bb30:
  %t119 = load i64, ptr %l60, !tbaa !24
  store i64 %t119, ptr %l57, !tbaa !24
  br label %bb31
bb31:
  %t120 = load i64, ptr %l57, !tbaa !24
  store i64 %t120, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t121 = load i64, ptr %l11, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t129 = load i64, ptr %l7, !tbaa !24
  %t130 = load i64, ptr %l11, !tbaa !24
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l12, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t139, ptr %l78, !tbaa !27
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l4, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t148 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t140
  store i64 %t145, ptr %t150, !tbaa !34
  br label %bb36
bb36:
  %t151 = load i64, ptr %l11, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l11, !tbaa !24
  br label %bb32
bb37:
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t156 = load { ptr, ptr }, ptr %l1
  %t157 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t158 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr null, i32 1
  %t159 = ptrtoint ptr %t158 to i64
  %t161 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 0
  store { ptr, ptr } %t156, ptr %t161, !tbaa !28
  %t163 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t163, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t165 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 2
  store ptr %v1, ptr %t165, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t166 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 3
  store ptr %v0, ptr %t166, !tbaa !28
  %t167 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_21, 0
  %t168 = insertvalue { ptr, ptr } %t167, ptr %t160, 1
  %t171 = extractvalue { ptr, ptr } %t168, 0
  %t172 = extractvalue { ptr, ptr } %t168, 1
  call void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %s0, ptr %s2, { i64, ptr } %t155, ptr %t171, ptr %t172)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t173 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t174 = load i64, ptr %l4, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2farray_2esortPermute_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %s0, { i64, ptr } %t173, i64 %t174, { i64, ptr } %t175)
  br label %bb40
bb40:
  %t179 = load i64, ptr %l5, !tbaa !24
  store i64 %t179, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb41:
  br label %bb13
bb42:
  %t181 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t181, ptr %l13, !tbaa !24
  br label %bb43
bb43:
  %t183 = load i64, ptr %l13, !tbaa !24
  %t184 = load i64, ptr %l2, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb44, label %bb45
bb44:
  br label %bb59
bb45:
  br label %bb46
bb46:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb47
bb47:
  %t191 = load i64, ptr %l4, !tbaa !24
  %t192 = load i64, ptr %l13, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t196 = load i64, ptr %l2, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t203 = load i64, ptr %l4, !tbaa !24
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = mul i64 2, %t204
  %t209 = add i64 %t203, %t206
  store i64 %t209, ptr %l14, !tbaa !24
  %t211 = load i64, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = icmp sgt i64 %t211, %t212
  br i1 %t215, label %bb51, label %bb52
bb51:
  %t217 = load i64, ptr %l2, !tbaa !24
  store i64 %t217, ptr %l14, !tbaa !24
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t219 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t220 = load i64, ptr %l4, !tbaa !24
  %t221 = load i64, ptr %l4, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = add i64 %t221, %t222
  %t226 = load i64, ptr %l14, !tbaa !24
  %t227 = load { ptr, ptr }, ptr %l1
  %t233 = extractvalue { ptr, ptr } %t227, 0
  %t234 = extractvalue { ptr, ptr } %t227, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t219, i64 %t220, i64 %t225, i64 %t226, ptr %t233, ptr %t234)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t235 = load i64, ptr %l14, !tbaa !24
  store i64 %t235, ptr %l4, !tbaa !24
  br label %bb56
bb56:
  br label %bb47
bb57:
  %t237 = load i64, ptr %l13, !tbaa !24
  %t239 = mul i64 %t237, 2
  store i64 %t239, ptr %l13, !tbaa !24
  br label %bb58
bb58:
  br label %bb43
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsert_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %t2
  %t7 = load i64, ptr %t6, !tbaa !34
  store i64 %t7, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %a1
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i64, ptr %t25, i64 %t22
  %t27 = load i64, ptr %t26, !tbaa !34
  %t29 = extractvalue { ptr, ptr } %pg3, 0
  %t30 = extractvalue { ptr, ptr } %pg3, 1
  %t33 = call i1 %t29(ptr %t30, i64 %t18, i64 %t27)
  store i1 %t33, ptr %l21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t34 = load i1, ptr %l21, !tbaa !21
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  store i1 %t35, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l13, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t42, 1
  %t46 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i64, ptr %t47, i64 %t44
  %t49 = load i64, ptr %t48, !tbaa !34
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i64, ptr %t53, i64 %t40
  store i64 %t49, ptr %t54, !tbaa !34
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t60
  store i64 %t61, ptr %t66, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsert_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l2, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr { i64, ptr }, ptr %t5, i64 %t2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !37
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t11, %a1
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %t25, i64 %t22
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !37
  %t29 = extractvalue { ptr, ptr } %pg3, 0
  %t30 = extractvalue { ptr, ptr } %pg3, 1
  %t33 = call i1 %t29(ptr %t30, ptr %v0, ptr %v0, { i64, ptr } %t18, { i64, ptr } %t27)
  store i1 %t33, ptr %l21
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb4:
  %t34 = load i1, ptr %l21, !tbaa !21
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l14, !tbaa !21
  store i1 %t35, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l13, !tbaa !21
  %t37 = xor i1 %t36, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t42, 1
  %t46 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %t47, i64 %t44
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !37
  %t52 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %t53, i64 %t40
  store { i64, ptr } %t49, ptr %t54, !tbaa !37
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %t65, i64 %t60
  store { i64, ptr } %t61, ptr %t66, !tbaa !37
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsertion_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  store i64 %a1, ptr %l1
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load i64, ptr %l1, !tbaa !24
  %t61 = extractvalue { ptr, ptr } %pg3, 0
  %t62 = extractvalue { ptr, ptr } %pg3, 1
  call void @std_2fprelude_2farray_2esortInsert_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t54, i64 %t51, ptr %t61, ptr %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l8, !tbaa !24
  br label %bb7
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortInsertion_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  store i64 %a1, ptr %l1
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 1
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l16, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t54 = load i64, ptr %l1, !tbaa !24
  %t61 = extractvalue { ptr, ptr } %pg3, 0
  %t62 = extractvalue { ptr, ptr } %pg3, 1
  call void @std_2fprelude_2farray_2esortInsert_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %t54, i64 %t51, ptr %t61, ptr %t62)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l8, !tbaa !24
  br label %bb7
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeBackward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
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
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l62 = alloca i1
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l74 = alloca i1
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l12, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l44, !tbaa !27
  %t56 = load i64, ptr %l12, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l12, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t62
  %t67 = load i64, ptr %t66, !tbaa !34
  %t70 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t56
  store i64 %t67, ptr %t72, !tbaa !34
  br label %bb11
bb11:
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb7
bb12:
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = sub i64 %t77, 1
  store i64 %t79, ptr %l13, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = sub i64 %t81, 1
  store i64 %t83, ptr %l14, !tbaa !24
  %t85 = load i64, ptr %l4, !tbaa !24
  %t87 = sub i64 %t85, 1
  store i64 %t87, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t89 = load i64, ptr %l13, !tbaa !24
  %t93 = icmp sge i64 %t89, %a2
  br i1 %t93, label %bb14, label %bb15
bb14:
  %t95 = load i64, ptr %l14, !tbaa !24
  %t97 = icmp sge i64 %t95, 0
  store i1 %t97, ptr %l62, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb16
bb16:
  %t99 = load i1, ptr %l62, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t103, ptr %l68, !tbaa !27
  %t104 = load i64, ptr %l14, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i64, ptr %t107, i64 %t104
  %t109 = load i64, ptr %t108, !tbaa !34
  %t110 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t110, ptr %l71, !tbaa !27
  %t111 = load i64, ptr %l13, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t111
  %t116 = load i64, ptr %t115, !tbaa !34
  %t118 = extractvalue { ptr, ptr } %pg5, 0
  %t119 = extractvalue { ptr, ptr } %pg5, 1
  %t122 = call i1 %t118(ptr %t119, i64 %t109, i64 %t116)
  store i1 %t122, ptr %l74
  br label %bb20
bb20:
  %t123 = load i1, ptr %l74, !tbaa !21
  store i1 %t123, ptr %l66, !tbaa !21
  br label %bb21
bb21:
  %t124 = load i1, ptr %l66, !tbaa !21
  br i1 %t124, label %bb22, label %bb23
bb22:
  %t125 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t125, ptr %l75, !tbaa !27
  %t126 = load i64, ptr %l15, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l77, !tbaa !27
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t128
  %t133 = load i64, ptr %t132, !tbaa !34
  %t136 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i64, ptr %t137, i64 %t126
  store i64 %t133, ptr %t138, !tbaa !34
  %t139 = load i64, ptr %l13, !tbaa !24
  %t141 = sub i64 %t139, 1
  store i64 %t141, ptr %l13, !tbaa !24
  br label %bb24
bb23:
  %t143 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t143, ptr %l82, !tbaa !27
  %t144 = load i64, ptr %l15, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t145, ptr %l84, !tbaa !27
  %t146 = load i64, ptr %l14, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t146
  %t151 = load i64, ptr %t150, !tbaa !34
  %t154 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i64, ptr %t155, i64 %t144
  store i64 %t151, ptr %t156, !tbaa !34
  %t157 = load i64, ptr %l14, !tbaa !24
  %t159 = sub i64 %t157, 1
  store i64 %t159, ptr %l14, !tbaa !24
  br label %bb24
bb24:
  %t161 = load i64, ptr %l15, !tbaa !24
  %t163 = sub i64 %t161, 1
  store i64 %t163, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t165 = load i64, ptr %l14, !tbaa !24
  %t167 = icmp sge i64 %t165, 0
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb28, label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb30
bb30:
  %t171 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t171, ptr %l94, !tbaa !27
  %t172 = load i64, ptr %l15, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t173, ptr %l96, !tbaa !27
  %t174 = load i64, ptr %l14, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i64, ptr %t177, i64 %t174
  %t179 = load i64, ptr %t178, !tbaa !34
  %t182 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i64, ptr %t183, i64 %t172
  store i64 %t179, ptr %t184, !tbaa !34
  %t185 = load i64, ptr %l14, !tbaa !24
  %t187 = sub i64 %t185, 1
  store i64 %t187, ptr %l14, !tbaa !24
  %t189 = load i64, ptr %l15, !tbaa !24
  %t191 = sub i64 %t189, 1
  store i64 %t191, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  br label %bb27
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %s0 = alloca %olang.scope
  %t67 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr @G_2estd_2fprelude_2farray_2esortRun, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = add i64 %t15, %t16
  store i64 %t19, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load { ptr, ptr }, ptr %l1
  %t37 = extractvalue { ptr, ptr } %t32, 0
  %t38 = extractvalue { ptr, ptr } %t32, 1
  call void @std_2fprelude_2farray_2esortInsertion_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t29, i64 %t30, i64 %t31, ptr %t37, ptr %t38)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb10
bb10:
  br label %bb1
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sle i64 %t41, %t42
  br i1 %t45, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = sdiv i64 %t49, 2
  store i64 %t51, ptr %l32, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t52, ptr %l33, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 0
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l34, !tbaa !24
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = icmp sge i64 %t57, 0
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = icmp sle i64 %t60, 1152921504606846975
  br i1 %t61, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_32b4dd57063daccc_20299270f57c1810)
  unreachable
bb17:
  %t63 = load i64, ptr %l32, !tbaa !24
  %t64 = mul i64 %t63, 8
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 0, ptr %t67
  br label %fill.68
fill.68:
  %t71 = load i64, ptr %t67
  %t72 = icmp slt i64 %t71, %t63
  br i1 %t72, label %fillb.69, label %filld.70
fillb.69:
  %t73 = getelementptr i64, ptr %t65, i64 %t71
  store i64 %t66, ptr %t73
  %t74 = add i64 %t71, 1
  store i64 %t74, ptr %t67
  br label %fill.68
filld.70:
  %t75 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t65, 1
  store { i64, ptr } %t76, ptr %l6, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_32b4dd57063daccc_20299270f57c1810)
  unreachable
bb19:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t79 = load i64, ptr %l2, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb20, label %bb21
bb20:
  br label %bb29
bb21:
  br label %bb22
bb22:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t87 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t90 = add i64 %t86, %t87
  store i64 %t90, ptr %l7, !tbaa !24
  %t92 = load i64, ptr %l7, !tbaa !24
  %t93 = load i64, ptr %l2, !tbaa !24
  %t96 = icmp sgt i64 %t92, %t93
  br i1 %t96, label %bb23, label %bb24
bb23:
  %t98 = load i64, ptr %l2, !tbaa !24
  store i64 %t98, ptr %l7, !tbaa !24
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t100 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t102 = load i64, ptr %l4, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l3, !tbaa !24
  %t105 = load { ptr, ptr }, ptr %l1
  %t112 = extractvalue { ptr, ptr } %t105, 0
  %t113 = extractvalue { ptr, ptr } %t105, 1
  call void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %s0, ptr %v1, { i64, ptr } %t100, { i64, ptr } %t101, i64 %t102, i64 %t103, i64 %t104, ptr %t112, ptr %t113)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t114 = load i64, ptr %l7, !tbaa !24
  store i64 %t114, ptr %l4, !tbaa !24
  br label %bb28
bb28:
  br label %bb19
bb29:
  %t116 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t118 = load i64, ptr %l2, !tbaa !24
  %t119 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t120 = load { ptr, ptr }, ptr %l1
  %t126 = extractvalue { ptr, ptr } %t120, 0
  %t127 = extractvalue { ptr, ptr } %t120, 1
  call void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %s0, ptr %v1, { i64, ptr } %t116, { i64, ptr } %t117, i64 0, i64 %t118, i64 %t119, ptr %t126, ptr %t127)
  br label %bb30
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeForward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
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
  %l23 = alloca i64
  %l26 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l58 = alloca i1
  %l63 = alloca i1
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l12, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l44, !tbaa !27
  %t56 = load i64, ptr %l12, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l12, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t62
  %t67 = load i64, ptr %t66, !tbaa !34
  %t70 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i64, ptr %t71, i64 %t56
  store i64 %t67, ptr %t72, !tbaa !34
  br label %bb11
bb11:
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb7
bb12:
  store i64 0, ptr %l13, !tbaa !24
  %t77 = load i64, ptr %l3, !tbaa !24
  store i64 %t77, ptr %l14, !tbaa !24
  %t79 = load i64, ptr %l2, !tbaa !24
  store i64 %t79, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t81 = load i64, ptr %l13, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  br i1 %t85, label %bb14, label %bb15
bb14:
  %t87 = load i64, ptr %l14, !tbaa !24
  %t91 = icmp slt i64 %t87, %a4
  store i1 %t91, ptr %l58, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb16
bb16:
  %t93 = load i1, ptr %l58, !tbaa !21
  %t94 = xor i1 %t93, true
  br i1 %t94, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t97 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t97, ptr %l65, !tbaa !27
  %t98 = load i64, ptr %l14, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i64, ptr %t101, i64 %t98
  %t103 = load i64, ptr %t102, !tbaa !34
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t104, ptr %l68, !tbaa !27
  %t105 = load i64, ptr %l13, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i64, ptr %t108, i64 %t105
  %t110 = load i64, ptr %t109, !tbaa !34
  %t112 = extractvalue { ptr, ptr } %pg5, 0
  %t113 = extractvalue { ptr, ptr } %pg5, 1
  %t116 = call i1 %t112(ptr %t113, i64 %t103, i64 %t110)
  store i1 %t116, ptr %l71
  br label %bb20
bb20:
  %t117 = load i1, ptr %l71, !tbaa !21
  store i1 %t117, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t118 = load i1, ptr %l63, !tbaa !21
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t119, ptr %l72, !tbaa !27
  %t120 = load i64, ptr %l15, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t121, ptr %l74, !tbaa !27
  %t122 = load i64, ptr %l14, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i64, ptr %t125, i64 %t122
  %t127 = load i64, ptr %t126, !tbaa !34
  %t130 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t120
  store i64 %t127, ptr %t132, !tbaa !34
  %t133 = load i64, ptr %l14, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l14, !tbaa !24
  br label %bb24
bb23:
  %t137 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t137, ptr %l79, !tbaa !27
  %t138 = load i64, ptr %l15, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t139, ptr %l81, !tbaa !27
  %t140 = load i64, ptr %l13, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i64, ptr %t143, i64 %t140
  %t145 = load i64, ptr %t144, !tbaa !34
  %t148 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t138
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load i64, ptr %l13, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l13, !tbaa !24
  br label %bb24
bb24:
  %t155 = load i64, ptr %l15, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t160 = load i64, ptr %l6, !tbaa !24
  %t163 = icmp slt i64 %t159, %t160
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb28, label %bb29
bb28:
  br label %bb32
bb29:
  br label %bb30
bb30:
  %t167 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t167, ptr %l92, !tbaa !27
  %t168 = load i64, ptr %l15, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t169, ptr %l94, !tbaa !27
  %t170 = load i64, ptr %l13, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i64, ptr %t173, i64 %t170
  %t175 = load i64, ptr %t174, !tbaa !34
  %t178 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i64, ptr %t179, i64 %t168
  store i64 %t175, ptr %t180, !tbaa !34
  %t181 = load i64, ptr %l13, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l13, !tbaa !24
  %t185 = load i64, ptr %l15, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  br label %bb27
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMergeRuns_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5c, ptr %a5e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { ptr, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l41 = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  %pf5 = insertvalue { ptr, ptr } undef, ptr %a5c, 0
  %pg5 = insertvalue { ptr, ptr } %pf5, ptr %a5e, 1
  store { ptr, ptr } %pg5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t6 = sub i64 %t2, %t3
  %t9 = icmp slt i64 %t1, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb27
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb25
bb7:
  br label %bb8
bb8:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  store i64 %t31, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  store i64 %t37, ptr %l8, !tbaa !24
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l3, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t47 = load { ptr, ptr }, ptr %l5
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t48, ptr %l34, !tbaa !27
  %t49 = load i64, ptr %l7, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i64, ptr %t52, i64 %t49
  %t54 = load i64, ptr %t53, !tbaa !34
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l37, !tbaa !27
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = sub i64 %t56, 1
  %t60 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i64, ptr %t61, i64 %t58
  %t63 = load i64, ptr %t62, !tbaa !34
  %t65 = extractvalue { ptr, ptr } %t47, 0
  %t66 = extractvalue { ptr, ptr } %t47, 1
  %t69 = call i1 %t65(ptr %t66, i64 %t54, i64 %t63)
  store i1 %t69, ptr %l41
  br label %bb12
bb12:
  %t70 = load i1, ptr %l41, !tbaa !21
  store i1 %t70, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t71 = load i1, ptr %l32, !tbaa !21
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = sub i64 %t77, %t78
  %t84 = icmp sle i64 %t76, %t81
  br i1 %t84, label %bb16, label %bb17
bb15:
  br label %bb23
bb16:
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t88 = load i64, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load { ptr, ptr }, ptr %l5
  %t98 = extractvalue { ptr, ptr } %t91, 0
  %t99 = extractvalue { ptr, ptr } %t91, 1
  call void @std_2fprelude_2farray_2esortMergeForward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t86, { i64, ptr } %t87, i64 %t88, i64 %t89, i64 %t90, ptr %t98, ptr %t99)
  br label %bb18
bb17:
  %t100 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load { ptr, ptr }, ptr %l5
  %t112 = extractvalue { ptr, ptr } %t105, 0
  %t113 = extractvalue { ptr, ptr } %t105, 1
  call void @std_2fprelude_2farray_2esortMergeBackward_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t100, { i64, ptr } %t101, i64 %t102, i64 %t103, i64 %t104, ptr %t112, ptr %t113)
  br label %bb20
bb18:
  br label %bb19
bb19:
  br label %bb22
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t114 = load i64, ptr %l8, !tbaa !24
  store i64 %t114, ptr %l6, !tbaa !24
  br label %bb24
bb24:
  br label %bb5
bb25:
  %t116 = load i64, ptr %l4, !tbaa !24
  %t118 = mul i64 %t116, 2
  store i64 %t118, ptr %l4, !tbaa !24
  br label %bb26
bb26:
  br label %bb1
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3, ptr %a4c, ptr %a4e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { ptr, ptr }
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
  %l23 = alloca i64
  %l24 = alloca i64
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca i1
  %l57 = alloca i64
  %l60 = alloca i64
  %l98 = alloca i1
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l106 = alloca i1
  %l148 = alloca i1
  %l150 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l158 = alloca i1
  %l169 = alloca i1
  %l180 = alloca i1
  %l192 = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  %pf4 = insertvalue { ptr, ptr } undef, ptr %a4c, 0
  %pg4 = insertvalue { ptr, ptr } %pf4, ptr %a4e, 1
  store { ptr, ptr } %pg4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %t1, %t2
  %t7 = icmp eq i64 %t5, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  br label %bb3
bb2:
  br label %bb27
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sdiv i64 %t25, 2
  store i64 %t27, ptr %l7, !tbaa !24
  %t29 = load { ptr, ptr }, ptr %l4
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t30, ptr %l41, !tbaa !27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %t34, i64 %t31
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !37
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l44, !tbaa !27
  %t38 = load i64, ptr %l1, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %t41, i64 %t38
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !37
  %t45 = extractvalue { ptr, ptr } %t29, 0
  %t46 = extractvalue { ptr, ptr } %t29, 1
  %t49 = call i1 %t45(ptr %t46, ptr %v0, ptr %v0, { i64, ptr } %t36, { i64, ptr } %t43)
  store i1 %t49, ptr %l47
  br label %bb7
bb7:
  %t50 = load i1, ptr %l47, !tbaa !21
  store i1 %t50, ptr %l39, !tbaa !21
  br label %bb8
bb8:
  %t51 = load i1, ptr %l39, !tbaa !21
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l5, !tbaa !24
  br label %bb11
bb10:
  %t56 = load i64, ptr %l7, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb3
bb13:
  %t58 = load i64, ptr %l1, !tbaa !24
  store i64 %t58, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = sub i64 %t60, 1
  store i64 %t62, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb14, label %bb15
bb14:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb19
bb16:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l10, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l60, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb18
bb18:
  %t90 = load i64, ptr %l60, !tbaa !24
  store i64 %t90, ptr %l57, !tbaa !24
  br label %bb19
bb19:
  %t91 = load i64, ptr %l57, !tbaa !24
  store i64 %t91, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb20
bb20:
  %t92 = load i64, ptr %l12, !tbaa !24
  %t93 = load i64, ptr %l11, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  br label %bb26
bb22:
  br label %bb23
bb23:
  %t100 = load i64, ptr %l8, !tbaa !24
  %t101 = load i64, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  store i64 %t108, ptr %l13, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t111 = load i64, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = add i64 %t112, 1
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t110, i64 %t111, i64 %t114)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t118 = load i64, ptr %l12, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l12, !tbaa !24
  br label %bb20
bb26:
  br label %ret
bb27:
  %t122 = load i64, ptr %l3, !tbaa !24
  %t123 = load i64, ptr %l2, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t128 = icmp eq i64 %t126, 1
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = load i64, ptr %l1, !tbaa !24
  store i64 %t130, ptr %l14, !tbaa !24
  %t132 = load i64, ptr %l2, !tbaa !24
  store i64 %t132, ptr %l15, !tbaa !24
  br label %bb30
bb29:
  br label %bb48
bb30:
  %t134 = load i64, ptr %l14, !tbaa !24
  %t135 = load i64, ptr %l15, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb31, label %bb32
bb31:
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sdiv i64 %t146, 2
  store i64 %t148, ptr %l16, !tbaa !24
  %t150 = load { ptr, ptr }, ptr %l4
  %t151 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t151, ptr %l100, !tbaa !27
  %t152 = load i64, ptr %l2, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %t155, i64 %t152
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !37
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t158, ptr %l103, !tbaa !27
  %t159 = load i64, ptr %l16, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr { i64, ptr }, ptr %t162, i64 %t159
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !37
  %t166 = extractvalue { ptr, ptr } %t150, 0
  %t167 = extractvalue { ptr, ptr } %t150, 1
  %t170 = call i1 %t166(ptr %t167, ptr %v0, ptr %v0, { i64, ptr } %t157, { i64, ptr } %t164)
  store i1 %t170, ptr %l106
  br label %bb34
bb34:
  %t171 = load i1, ptr %l106, !tbaa !21
  store i1 %t171, ptr %l98, !tbaa !21
  br label %bb35
bb35:
  %t172 = load i1, ptr %l98, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb36, label %bb37
bb36:
  %t175 = load i64, ptr %l16, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l14, !tbaa !24
  br label %bb38
bb37:
  %t179 = load i64, ptr %l16, !tbaa !24
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb30
bb40:
  %t181 = load i64, ptr %l2, !tbaa !24
  store i64 %t181, ptr %l17, !tbaa !24
  br label %bb41
bb41:
  %t183 = load i64, ptr %l17, !tbaa !24
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = icmp sgt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb42, label %bb43
bb42:
  br label %bb47
bb43:
  br label %bb44
bb44:
  %t191 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t192 = load i64, ptr %l17, !tbaa !24
  %t193 = load i64, ptr %l17, !tbaa !24
  %t195 = sub i64 %t193, 1
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t191, i64 %t192, i64 %t195)
  br label %bb45
bb45:
  %t199 = load i64, ptr %l17, !tbaa !24
  %t201 = sub i64 %t199, 1
  store i64 %t201, ptr %l17, !tbaa !24
  br label %bb46
bb46:
  br label %bb41
bb47:
  br label %ret
bb48:
  %t203 = load i64, ptr %l1, !tbaa !24
  %t204 = load i64, ptr %l3, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sdiv i64 %t207, 2
  store i64 %t209, ptr %l18, !tbaa !24
  %t211 = load i64, ptr %l18, !tbaa !24
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = add i64 %t211, %t212
  store i64 %t215, ptr %l19, !tbaa !24
  %t217 = load i64, ptr %l1, !tbaa !24
  store i64 %t217, ptr %l20, !tbaa !24
  %t219 = load i64, ptr %l2, !tbaa !24
  store i64 %t219, ptr %l21, !tbaa !24
  %t221 = load i64, ptr %l2, !tbaa !24
  %t222 = load i64, ptr %l18, !tbaa !24
  %t225 = icmp sgt i64 %t221, %t222
  br i1 %t225, label %bb49, label %bb50
bb49:
  %t227 = load i64, ptr %l19, !tbaa !24
  %t228 = load i64, ptr %l3, !tbaa !24
  %t231 = sub i64 %t227, %t228
  store i64 %t231, ptr %l20, !tbaa !24
  %t233 = load i64, ptr %l18, !tbaa !24
  store i64 %t233, ptr %l21, !tbaa !24
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t235 = load i64, ptr %l19, !tbaa !24
  %t237 = sub i64 %t235, 1
  store i64 %t237, ptr %l22, !tbaa !24
  br label %bb52
bb52:
  %t239 = load i64, ptr %l20, !tbaa !24
  %t240 = load i64, ptr %l21, !tbaa !24
  %t243 = icmp slt i64 %t239, %t240
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb53, label %bb54
bb53:
  br label %bb62
bb54:
  br label %bb55
bb55:
  %t247 = load i64, ptr %l20, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = add i64 %t247, %t248
  %t253 = sdiv i64 %t251, 2
  store i64 %t253, ptr %l23, !tbaa !24
  %t255 = load { ptr, ptr }, ptr %l4
  %t256 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t256, ptr %l150, !tbaa !27
  %t257 = load i64, ptr %l22, !tbaa !24
  %t258 = load i64, ptr %l23, !tbaa !24
  %t261 = sub i64 %t257, %t258
  %t263 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %t264, i64 %t261
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !37
  %t267 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t267, ptr %l155, !tbaa !27
  %t268 = load i64, ptr %l23, !tbaa !24
  %t270 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr { i64, ptr }, ptr %t271, i64 %t268
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !37
  %t275 = extractvalue { ptr, ptr } %t255, 0
  %t276 = extractvalue { ptr, ptr } %t255, 1
  %t279 = call i1 %t275(ptr %t276, ptr %v0, ptr %v0, { i64, ptr } %t266, { i64, ptr } %t273)
  store i1 %t279, ptr %l158
  br label %bb56
bb56:
  %t280 = load i1, ptr %l158, !tbaa !21
  store i1 %t280, ptr %l148, !tbaa !21
  br label %bb57
bb57:
  %t281 = load i1, ptr %l148, !tbaa !21
  %t282 = xor i1 %t281, true
  br i1 %t282, label %bb58, label %bb59
bb58:
  %t284 = load i64, ptr %l23, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l20, !tbaa !24
  br label %bb60
bb59:
  %t288 = load i64, ptr %l23, !tbaa !24
  store i64 %t288, ptr %l21, !tbaa !24
  br label %bb60
bb60:
  br label %bb61
bb61:
  br label %bb52
bb62:
  %t290 = load i64, ptr %l19, !tbaa !24
  %t291 = load i64, ptr %l20, !tbaa !24
  %t294 = sub i64 %t290, %t291
  store i64 %t294, ptr %l24, !tbaa !24
  %t296 = load i64, ptr %l20, !tbaa !24
  %t297 = load i64, ptr %l2, !tbaa !24
  %t300 = icmp slt i64 %t296, %t297
  br i1 %t300, label %bb63, label %bb64
bb63:
  %t302 = load i64, ptr %l2, !tbaa !24
  %t303 = load i64, ptr %l24, !tbaa !24
  %t306 = icmp slt i64 %t302, %t303
  store i1 %t306, ptr %l169, !tbaa !21
  br label %bb65
bb64:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb65
bb65:
  %t308 = load i1, ptr %l169, !tbaa !21
  br i1 %t308, label %bb66, label %bb67
bb66:
  %t309 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t310 = load i64, ptr %l20, !tbaa !24
  %t311 = load i64, ptr %l2, !tbaa !24
  %t312 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2farray_2esortRotate_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t309, i64 %t310, i64 %t311, i64 %t312)
  br label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb69
bb69:
  %t317 = load i64, ptr %l1, !tbaa !24
  %t318 = load i64, ptr %l20, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  br i1 %t321, label %bb70, label %bb71
bb70:
  %t323 = load i64, ptr %l20, !tbaa !24
  %t324 = load i64, ptr %l18, !tbaa !24
  %t327 = icmp slt i64 %t323, %t324
  store i1 %t327, ptr %l180, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb72
bb72:
  %t329 = load i1, ptr %l180, !tbaa !21
  br i1 %t329, label %bb73, label %bb74
bb73:
  %t330 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t331 = load i64, ptr %l1, !tbaa !24
  %t332 = load i64, ptr %l20, !tbaa !24
  %t333 = load i64, ptr %l18, !tbaa !24
  %t334 = load { ptr, ptr }, ptr %l4
  %t340 = extractvalue { ptr, ptr } %t334, 0
  %t341 = extractvalue { ptr, ptr } %t334, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t330, i64 %t331, i64 %t332, i64 %t333, ptr %t340, ptr %t341)
  br label %bb75
bb74:
  br label %bb77
bb75:
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t342 = load i64, ptr %l18, !tbaa !24
  %t343 = load i64, ptr %l24, !tbaa !24
  %t346 = icmp slt i64 %t342, %t343
  br i1 %t346, label %bb78, label %bb79
bb78:
  %t348 = load i64, ptr %l24, !tbaa !24
  %t349 = load i64, ptr %l3, !tbaa !24
  %t352 = icmp slt i64 %t348, %t349
  store i1 %t352, ptr %l192, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb80
bb80:
  %t354 = load i1, ptr %l192, !tbaa !21
  br i1 %t354, label %bb81, label %bb82
bb81:
  %t355 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t356 = load i64, ptr %l18, !tbaa !24
  %t357 = load i64, ptr %l24, !tbaa !24
  %t358 = load i64, ptr %l3, !tbaa !24
  %t359 = load { ptr, ptr }, ptr %l4
  %t365 = extractvalue { ptr, ptr } %t359, 0
  %t366 = extractvalue { ptr, ptr } %t359, 1
  call void @std_2fprelude_2farray_2esortMerge_3cstd_2fprelude_2ftext_3aString_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t355, i64 %t356, i64 %t357, i64 %t358, ptr %t365, ptr %t366)
  br label %bb83
bb82:
  br label %bb85
bb83:
  br label %bb84
bb84:
  br label %bb85
bb85:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortPermute_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
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
  store i64 0, ptr %l17, !tbaa !24
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
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l20, !tbaa !24
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l17, !tbaa !24
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
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t51, ptr %l38, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i64, ptr %t55, i64 %t52
  %t57 = load i64, ptr %t56, !tbaa !34
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t65 = icmp eq i64 %t57, %t62
  br i1 %t65, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l45, !tbaa !27
  %t68 = load i64, ptr %l1, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %t75, i64 %t72
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !37
  store { i64, ptr } %t77, ptr %l9, !tbaa !27
  %t79 = load i64, ptr %l8, !tbaa !24
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t81, ptr %l51, !tbaa !27
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t82
  %t87 = load i64, ptr %t86, !tbaa !34
  store i64 %t87, ptr %l11, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t89, ptr %l54, !tbaa !27
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l1, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t90
  store i64 %t95, ptr %t100, !tbaa !34
  %t101 = load i64, ptr %l11, !tbaa !24
  %t102 = load i64, ptr %l1, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t109 = icmp eq i64 %t101, %t106
  br i1 %t109, label %bb15, label %bb16
bb15:
  %t111 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t111, ptr %l64, !tbaa !27
  %t112 = load i64, ptr %l1, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = add i64 %t112, %t113
  %t117 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %t121, i64 %t116
  store { i64, ptr } %t117, ptr %t122, !tbaa !37
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t123 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t123, ptr %l69, !tbaa !27
  %t124 = load i64, ptr %l1, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = add i64 %t124, %t125
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t129, ptr %l73, !tbaa !27
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %t133, i64 %t130
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !37
  %t138 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %t139, i64 %t128
  store { i64, ptr } %t135, ptr %t140, !tbaa !37
  %t141 = load i64, ptr %l11, !tbaa !24
  %t142 = load i64, ptr %l1, !tbaa !24
  %t145 = sub i64 %t141, %t142
  store i64 %t145, ptr %l10, !tbaa !24
  br label %bb18
bb18:
  br label %bb14
bb19:
  br label %bb20
bb20:
  %t147 = load i64, ptr %l7, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l7, !tbaa !24
  br label %bb7
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortRotate_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
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
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i64
  %l123 = alloca i64
  %l126 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t5 = sub i64 %t1, %a1
  store i64 %t5, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = sub i64 %a3, %t8
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp ne i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  br label %bb35
bb3:
  br label %bb4
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i64 0, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  store i64 %t27, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l12, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  store i64 %t35, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t37 = load i64, ptr %l13, !tbaa !24
  %t38 = load i64, ptr %l12, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb20, label %bb21
bb7:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb12
bb9:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l44, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l44, !tbaa !24
  store i64 %t63, ptr %l41, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l41, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l11, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t84 = load i64, ptr %l2, !tbaa !24
  %t85 = load i64, ptr %l4, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t93 = load i64, ptr %l2, !tbaa !24
  %t94 = load i64, ptr %l11, !tbaa !24
  %t97 = add i64 %t93, %t94
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t83, i64 %t92, i64 %t97)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t101 = load i64, ptr %l10, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l10, !tbaa !24
  br label %bb13
bb19:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t106 = load i64, ptr %l5, !tbaa !24
  %t109 = sub i64 %t105, %t106
  store i64 %t109, ptr %l4, !tbaa !24
  br label %bb33
bb20:
  %t111 = load i64, ptr %l14, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb25
bb22:
  %t115 = load i64, ptr %l13, !tbaa !24
  %t116 = load i64, ptr %l12, !tbaa !24
  %t119 = sub i64 %t115, %t116
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t125 = sub i64 %t123, 1
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = sdiv i64 %t125, %t126
  store i64 %t129, ptr %l83, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb24
bb24:
  %t131 = load i64, ptr %l83, !tbaa !24
  store i64 %t131, ptr %l80, !tbaa !24
  br label %bb25
bb25:
  %t132 = load i64, ptr %l80, !tbaa !24
  store i64 %t132, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb26
bb26:
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr %l16, !tbaa !24
  %t143 = load i64, ptr %l14, !tbaa !24
  %t146 = mul i64 %t142, %t143
  %t149 = add i64 %t141, %t146
  store i64 %t149, ptr %l17, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t152 = load i64, ptr %l2, !tbaa !24
  %t153 = load i64, ptr %l4, !tbaa !24
  %t156 = sub i64 %t152, %t153
  %t157 = load i64, ptr %l17, !tbaa !24
  %t160 = add i64 %t156, %t157
  %t161 = load i64, ptr %l2, !tbaa !24
  %t162 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t161, %t162
  %t166 = load i64, ptr %l4, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l17, !tbaa !24
  %t173 = add i64 %t169, %t170
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t151, i64 %t160, i64 %t173)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t177 = load i64, ptr %l16, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l16, !tbaa !24
  br label %bb26
bb32:
  %t181 = load i64, ptr %l5, !tbaa !24
  %t182 = load i64, ptr %l4, !tbaa !24
  %t185 = sub i64 %t181, %t182
  store i64 %t185, ptr %l5, !tbaa !24
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb1
bb35:
  store i64 0, ptr %l18, !tbaa !24
  %t187 = load i64, ptr %l4, !tbaa !24
  store i64 %t187, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t189 = load i64, ptr %l19, !tbaa !24
  %t190 = load i64, ptr %l18, !tbaa !24
  %t193 = icmp sgt i64 %t189, %t190
  br i1 %t193, label %bb36, label %bb37
bb36:
  %t195 = load i64, ptr %l20, !tbaa !24
  %t197 = icmp sgt i64 %t195, 0
  br i1 %t197, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb41
bb38:
  %t199 = load i64, ptr %l19, !tbaa !24
  %t200 = load i64, ptr %l18, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t204 = load i64, ptr %l20, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sub i64 %t207, 1
  %t210 = load i64, ptr %l20, !tbaa !24
  %t213 = sdiv i64 %t209, %t210
  store i64 %t213, ptr %l126, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb40
bb40:
  %t215 = load i64, ptr %l126, !tbaa !24
  store i64 %t215, ptr %l123, !tbaa !24
  br label %bb41
bb41:
  %t216 = load i64, ptr %l123, !tbaa !24
  store i64 %t216, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb42
bb42:
  %t217 = load i64, ptr %l22, !tbaa !24
  %t218 = load i64, ptr %l21, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb43, label %bb44
bb43:
  br label %bb48
bb44:
  br label %bb45
bb45:
  %t225 = load i64, ptr %l18, !tbaa !24
  %t226 = load i64, ptr %l22, !tbaa !24
  %t227 = load i64, ptr %l20, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t233 = add i64 %t225, %t230
  store i64 %t233, ptr %l23, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t236 = load i64, ptr %l2, !tbaa !24
  %t237 = load i64, ptr %l4, !tbaa !24
  %t240 = sub i64 %t236, %t237
  %t241 = load i64, ptr %l23, !tbaa !24
  %t244 = add i64 %t240, %t241
  %t245 = load i64, ptr %l2, !tbaa !24
  %t246 = load i64, ptr %l23, !tbaa !24
  %t249 = add i64 %t245, %t246
  call void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t235, i64 %t244, i64 %t249)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t253 = load i64, ptr %l22, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l22, !tbaa !24
  br label %bb42
bb48:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortSwap_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l4, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr { i64, ptr }, ptr %t5, i64 %t2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !37
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %t15, i64 %t12
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !37
  %t20 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t10
  store { i64, ptr } %t17, ptr %t22, !tbaa !37
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l12, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %t29, i64 %t24
  store { i64, ptr } %t7, ptr %t30, !tbaa !37
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l5 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp slt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i64, ptr %l0, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ftext_2ejoinTexts_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l29 = alloca { i64, ptr }
  %l49 = alloca i64
  %l60 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l29, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t29 = add i64 %t23, %t26
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 1
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = sub i64 %t47, 1
  %t52 = mul i64 %t44, %t49
  %t55 = add i64 %t41, %t52
  store i64 %t55, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l49, !tbaa !24
  %t58 = load i64, ptr %l49, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load i64, ptr %l49, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t66, ptr %lp7
  %t68 = load ptr, ptr %lp7
  store { i64, ptr } %t65, ptr %t68, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t69, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_6124bee271ea27df_40001a175be242b)
  unreachable
bb12:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb13, label %bb14
bb13:
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  store { i64, ptr } %t91, ptr %l13, !tbaa !27
  %t95 = icmp sgt i64 %t83, 0
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t97, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l16, !tbaa !24
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t103 = load i64, ptr %l15, !tbaa !24
  %t104 = load i64, ptr %l16, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t111 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t111, ptr %l72, !tbaa !27
  %t112 = load i64, ptr %l15, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i8, ptr %t115, i64 %t112
  %t117 = load i8, ptr %t116, !tbaa !32
  %t119 = load i64, ptr %l8, !tbaa !24
  %t122 = load ptr, ptr %lp7
  %t124 = getelementptr { i64, ptr }, ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t119
  store i8 %t117, ptr %t126, !tbaa !32
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t131 = load i64, ptr %l15, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l15, !tbaa !24
  br label %bb18
bb23:
  br label %bb24
bb24:
  %t135 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t135, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l20, !tbaa !24
  br label %bb25
bb25:
  %t141 = load i64, ptr %l19, !tbaa !24
  %t142 = load i64, ptr %l20, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t149 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t149, ptr %l88, !tbaa !27
  %t150 = load i64, ptr %l19, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i8, ptr %t153, i64 %t150
  %t155 = load i8, ptr %t154, !tbaa !32
  %t157 = load i64, ptr %l8, !tbaa !24
  %t160 = load ptr, ptr %lp7
  %t162 = getelementptr { i64, ptr }, ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 %t157
  store i8 %t155, ptr %t164, !tbaa !32
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t169 = load i64, ptr %l19, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l19, !tbaa !24
  br label %bb25
bb30:
  br label %bb31
bb31:
  %t173 = load i64, ptr %l10, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l10, !tbaa !24
  br label %bb12
bb32:
  %t177 = load ptr, ptr %lp7
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ftext_2ejoinTexts_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l29 = alloca { i64, ptr }
  %l49 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l29, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = extractvalue { i64, ptr } %t21, 0
  %t29 = add i64 %t23, %t26
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 1
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = sub i64 %t47, 1
  %t52 = mul i64 %t44, %t49
  %t55 = add i64 %t41, %t52
  store i64 %t55, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l49, !tbaa !24
  %t58 = load i64, ptr %l49, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load i64, ptr %l49, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t66, ptr %lp7
  %t68 = load ptr, ptr %lp7
  store { i64, ptr } %t65, ptr %t68, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t69, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l11, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b4b3d3a21dffee1a_94412941cff469ee)
  unreachable
bb12:
  store %olang.scope zeroinitializer, ptr %s6
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s6)
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %t89, i64 %t86
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !37
  store { i64, ptr } %t91, ptr %l62, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l63, !tbaa !24
  %t94 = load i64, ptr %l63, !tbaa !24
  %t95 = mul i64 %t94, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l64, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l63, !tbaa !24
  %t104 = mul i64 %t103, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t100, ptr %t102, i64 %t104, i1 false)
  %t105 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t105, ptr %l13, !tbaa !27
  %t108 = icmp sgt i64 %t83, 0
  br i1 %t108, label %bb16, label %bb17
bb16:
  %t110 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t110, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  store i64 %t114, ptr %l16, !tbaa !24
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t116 = load i64, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l16, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t124 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t124, ptr %l74, !tbaa !27
  %t125 = load i64, ptr %l15, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i8, ptr %t128, i64 %t125
  %t130 = load i8, ptr %t129, !tbaa !32
  %t132 = load i64, ptr %l8, !tbaa !24
  %t135 = load ptr, ptr %lp7
  %t137 = getelementptr { i64, ptr }, ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t132
  store i8 %t130, ptr %t139, !tbaa !32
  %t140 = load i64, ptr %l8, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l15, !tbaa !24
  br label %bb18
bb23:
  br label %bb24
bb24:
  %t148 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t148, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  store i64 %t152, ptr %l20, !tbaa !24
  br label %bb25
bb25:
  %t154 = load i64, ptr %l19, !tbaa !24
  %t155 = load i64, ptr %l20, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t162 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t162, ptr %l90, !tbaa !27
  %t163 = load i64, ptr %l19, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i8, ptr %t166, i64 %t163
  %t168 = load i8, ptr %t167, !tbaa !32
  %t170 = load i64, ptr %l8, !tbaa !24
  %t173 = load ptr, ptr %lp7
  %t175 = getelementptr { i64, ptr }, ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t170
  store i8 %t168, ptr %t177, !tbaa !32
  %t178 = load i64, ptr %l8, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t182 = load i64, ptr %l19, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l19, !tbaa !24
  br label %bb25
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb31
bb31:
  %t186 = load i64, ptr %l10, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l10, !tbaa !24
  br label %bb12
bb32:
  %t190 = load ptr, ptr %lp7
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca { i32, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp ne i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = icmp slt i64 %t5, 2
  br i1 %t7, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb6
bb3:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = icmp sgt i64 %t9, 36
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l6, !tbaa !21
  store i1 %t13, ptr %l3, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l3, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t16 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t16, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t17 = load i64, ptr %l0, !tbaa !24
  %t18 = insertvalue { i32, i64 } zeroinitializer, i64 %t17, 1
  store { i32, i64 } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eAt_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %a1
  %t9 = load i64, ptr %t8, !tbaa !85
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2ePush_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eroom_3cU64_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i64, ptr %t35, i64 %t28
  store i64 %a1, ptr %t36, !tbaa !85
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eroom_3cU64_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i64, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 8
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_4c80127648ba5d2e_65bcf202b125bf62)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i64, ptr %t105, i64 %t102
  %t107 = load i64, ptr %t106, !tbaa !85
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i64, ptr %t111, i64 %t109
  store i64 %t107, ptr %t112, !tbaa !85
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eAt_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i8
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i8, ptr %t7, i64 %a1
  %t9 = load i8, ptr %t8, !tbaa !32
  store i8 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eClear_Hee3cbaa7ef2d16f687a523c73aa64228(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePushA_Hec8f055c349635c8d43431a73666f84f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %l44 = alloca i64
  %l47 = alloca i64
  %l70 = alloca { i64, ptr }
  %l75 = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t7, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t16 = add i64 %t10, %t13
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp sgt i64 %t16, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t27, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = mul i64 %t32, 2
  store i64 %t34, ptr %l2, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t46 = add i64 %t40, %t43
  %t49 = icmp slt i64 %t36, %t46
  br i1 %t49, label %bb6, label %bb7
bb5:
  br label %bb10
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t51, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t60 = add i64 %t54, %t57
  store i64 %t60, ptr %l2, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t62, i64 %t63)
  br label %bb9
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l3, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l3, !tbaa !24
  %t74 = icmp sgt i64 %t70, %t71
  br i1 %t74, label %bb11, label %bb12
bb11:
  %t76 = load i64, ptr %l5, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb16
bb13:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l3, !tbaa !24
  %t84 = sub i64 %t80, %t81
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = add i64 %t84, %t85
  %t90 = sub i64 %t88, 1
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = sdiv i64 %t90, %t91
  store i64 %t94, ptr %l47, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb15
bb15:
  %t96 = load i64, ptr %l47, !tbaa !24
  store i64 %t96, ptr %l44, !tbaa !24
  br label %bb16
bb16:
  %t97 = load i64, ptr %l44, !tbaa !24
  store i64 %t97, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t106 = load i64, ptr %l3, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t108 = load i64, ptr %l5, !tbaa !24
  %t111 = mul i64 %t107, %t108
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l8, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t117, i32 0, i32 1
  %t120 = load i64, ptr %t119, !tbaa !24
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = add i64 %t120, %t121
  %t125 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t125, ptr %l70, !tbaa !27
  %t126 = load i64, ptr %l8, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i8, ptr %t129, i64 %t126
  %t131 = load i8, ptr %t130, !tbaa !32
  %t134 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t116, i32 0, i32 0
  %t136 = getelementptr { i64, ptr }, ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t124
  store i8 %t131, ptr %t138, !tbaa !32
  br label %bb21
bb21:
  %t139 = load i64, ptr %l7, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l7, !tbaa !24
  br label %bb17
bb22:
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l75, !tbaa !29
  %t144 = load ptr, ptr %l75, !tbaa !29
  %t145 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t144, i32 0, i32 1
  %t146 = load i64, ptr %t145, !tbaa !24
  %t147 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t152 = add i64 %t146, %t149
  %t154 = load ptr, ptr %l75, !tbaa !29
  %t155 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t154, i32 0, i32 1
  store i64 %t152, ptr %t155, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = add i64 %t19, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t28
  store i8 %a1, ptr %t36, !tbaa !32
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l16, !tbaa !29
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l16, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i64
  %l21 = alloca i8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp sge i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  store i64 %t14, ptr %l10, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l10, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l10, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = sub i64 %t20, 1
  store i64 %t22, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp sge i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t32, i32 0, i32 0
  %t37 = getelementptr { i64, ptr }, ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t33
  %t40 = load i8, ptr %t39, !tbaa !32
  store i8 %t40, ptr %l21, !tbaa !22
  br label %bb11
bb11:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb7
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t45, i32 0, i32 1
  store i64 %t46, ptr %t49, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eroom_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l16 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l51 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp sle i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp slt i64 %t17, 4
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 8, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = mul i64 %t26, 2
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l2, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp slt i64 %t39, %t43
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 2
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l34, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l37, !tbaa !24
  %t66 = icmp sge i64 0, 0
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = icmp sle i64 0, %t68
  br i1 %t69, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i8, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_98322877b323543a_c315b51d8b07b39e)
  unreachable
bb19:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp slt i64 %t91, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l51, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i8, ptr %t105, i64 %t102
  %t107 = load i8, ptr %t106, !tbaa !32
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i8, ptr %t111, i64 %t109
  store i8 %t107, ptr %t112, !tbaa !32
  %t113 = load i64, ptr %l45, !tbaa !24
  %t114 = add i64 %t113, 1
  store i64 %t114, ptr %l45, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb19
bb24:
  %t119 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t120 = load ptr, ptr %l33, !tbaa !29
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t120, i32 0, i32 0
  store { i64, ptr } %t119, ptr %t121, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" undef, { i64, ptr } zeroinitializer, 0
  %t6 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, i64 0, 1
  %t8 = insertvalue %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, i64 %a0, 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

@std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector
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
declare void @__olang_unhandled_text({ i64, ptr }, i1) cold noreturn
@.d3 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d6 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
declare ptr @__olang_worker_get()
declare void @__olang_worker_start(ptr, ptr, ptr, ptr)
define internal ptr @olang_task9(ptr %env) #0 {
entry:
  %f0 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %env, i32 0, i32 0
  %f1 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %env, i32 0, i32 1
  %f2 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %env, i32 0, i32 2
  %f3 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %env, i32 0, i32 3
  %f4 = getelementptr { i64, i64, i64, ptr, ptr }, ptr %env, i32 0, i32 4
  %a0 = load i64, ptr %f0
  %a1 = load i64, ptr %f1
  %a2 = load i64, ptr %f2
  %r = call { i64, i64 } @bench_2fparallel_2elongest(i64 %a0, i64 %a1, i64 %a2)
  %d0 = load ptr, ptr %f3
  %x0 = extractvalue { i64, i64 } %r, 0
  store i64 %x0, ptr %d0
  %d1 = load ptr, ptr %f4
  %x1 = extractvalue { i64, i64 } %r, 1
  store i64 %x1, ptr %d1
  ret ptr null
}

declare i64 @__olang_join_tasks_keep(ptr, i1)
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d12 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_argc = external global i32
@__olang_argv = external global ptr
declare void @__olang_thread_init()
@stderr = external global ptr
@.c15 = private unnamed_addr constant [17 x i8] c"unhandled error\0A\00"
@.c16 = private unnamed_addr constant [34 x i8] c"unhandled error: io.Error.Failed\0A\00"
@.c17 = private unnamed_addr constant [35 x i8] c"unhandled error: io.Error.Partial\0A\00"
@.c18 = private unnamed_addr constant [35 x i8] c"unhandled error: ParseError.Empty\0A\00"
@.c19 = private unnamed_addr constant [37 x i8] c"unhandled error: ParseError.Invalid\0A\00"
@.c20 = private unnamed_addr constant [38 x i8] c"unhandled error: ParseError.Overflow\0A\00"
declare i32 @fputs(ptr, ptr)
declare void @__olang_debug_hint(ptr)
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
define internal i1 @olang_lambda_21(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { ptr, ptr }, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, ptr }, ptr %cp1, !tbaa !28
  store { i64, ptr } %cv1, ptr %l3
  %vq0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t2, ptr %l6, !tbaa !27
  %t5 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %t6, i64 %a0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !37
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %t13, i64 %a1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !37
  %t17 = extractvalue { ptr, ptr } %cv0, 0
  %t18 = extractvalue { ptr, ptr } %cv0, 1
  %t21 = call i1 %t17(ptr %t18, ptr %vc1, ptr %vc1, { i64, ptr } %t8, { i64, ptr } %t15)
  store i1 %t21, ptr %l12
  br label %bb1
bb1:
  %t22 = load i1, ptr %l12, !tbaa !21
  store i1 %t22, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t23 = load i1, ptr %l4, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
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
declare { i64, ptr } @std_2fos_2eArgs(ptr %v0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_7f62b76d35eda549_7f5f8ceaafcc1ad = external constant [0 x i8]
@olang_loc_78495850a46598fc_a106592da7427a80 = external constant [0 x i8]
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
@G_2estd_2fprelude_2farray_2esortRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fprelude_2farray_2esortBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\30\00\00\00\00\00\00" }>, align 8
@olang_loc_f5954356a94cfd1d_57c8a908dd11d469 = external constant [0 x i8]
@olang_loc_bd57bfee552aaf80_4db8901b79077054 = external constant [0 x i8]
@olang_loc_32b4dd57063daccc_20299270f57c1810 = external constant [0 x i8]
@olang_loc_6124bee271ea27df_40001a175be242b = external constant [0 x i8]
@olang_loc_b4b3d3a21dffee1a_94412941cff469ee = external constant [0 x i8]
@olang_loc_4c80127648ba5d2e_65bcf202b125bf62 = external constant [0 x i8]
@olang_loc_98322877b323543a_c315b51d8b07b39e = external constant [0 x i8]

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
