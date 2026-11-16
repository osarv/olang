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
%"std/bench:Measurement" = type { i64, i64, i64, i64, i64 }
%"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" = type { { i64, ptr }, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/bench:Comparison" = type { %"std/bench:Series", %"std/bench:Series", { i64, ptr } }
%"std/bench:Series" = type { { i64, ptr } }
@G_2estd_2fbench_2eDefaultBudget = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\CA\9A\3B\00\00\00\00" }>, align 8
@G_2estd_2fbench_2eDefaultRuns = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fbench_2eMaxOps = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\CA\9A\3B\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @std_2fbench_2eHuman(ptr %v0, double %a0, double %a1) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca double
  %l2 = alloca { i64, ptr }
  %l3 = alloca double
  %l5 = alloca double
  %l7 = alloca double
  %l9 = alloca double
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l48 = alloca i64
  %l53 = alloca i64
  %l58 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store double %a0, ptr %l0
  store double %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
  store double 0x3ff0000000000000, ptr %l3, !tbaa !26
  %t3 = load double, ptr %l0, !tbaa !26
  %t5 = fcmp oge double %t3, 0x41cdcd6500000000
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l16, !tbaa !27
  store double 0x41cdcd6500000000, ptr %l5, !tbaa !26
  store { i64, ptr } %t7, ptr %l18, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t10, ptr %l19, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l20, !tbaa !24
  %t13 = load i64, ptr %l20, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l21, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l20, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t24, ptr %l2, !tbaa !27
  %t25 = load i1, ptr @olang_2esole_2estd__2fbench__2eHuman_2elocal_2e2
  br i1 %t25, label %bb3, label %bb4
bb2:
  %t27 = load double, ptr %l0, !tbaa !26
  %t29 = fcmp oge double %t27, 0x412e848000000000
  br i1 %t29, label %bb5, label %bb6
bb3:
  %t31 = load { i64, ptr }, ptr %l19
  %t32 = extractvalue { i64, ptr } %t31, 1
  call void @__olang_region_release(ptr %t32)
  store { i64, ptr } zeroinitializer, ptr %l19
  br label %bb4
bb4:
  %t33 = load double, ptr %l5, !tbaa !26
  store double %t33, ptr %l3, !tbaa !26
  br label %bb15
bb5:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l26, !tbaa !27
  store double 0x412e848000000000, ptr %l7, !tbaa !26
  store { i64, ptr } %t35, ptr %l28, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t38, ptr %l29, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l30, !tbaa !24
  %t41 = load i64, ptr %l30, !tbaa !24
  %t42 = mul i64 %t41, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l31, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l30, !tbaa !24
  %t51 = mul i64 %t50, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t52, ptr %l2, !tbaa !27
  %t53 = load i1, ptr @olang_2esole_2estd__2fbench__2eHuman_2elocal_2e2
  br i1 %t53, label %bb7, label %bb8
bb6:
  %t55 = load double, ptr %l0, !tbaa !26
  %t57 = fcmp oge double %t55, 0x408f400000000000
  br i1 %t57, label %bb9, label %bb10
bb7:
  %t59 = load { i64, ptr }, ptr %l29
  %t60 = extractvalue { i64, ptr } %t59, 1
  call void @__olang_region_release(ptr %t60)
  store { i64, ptr } zeroinitializer, ptr %l29
  br label %bb8
bb8:
  %t61 = load double, ptr %l7, !tbaa !26
  store double %t61, ptr %l3, !tbaa !26
  br label %bb14
bb9:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l36, !tbaa !27
  store double 0x408f400000000000, ptr %l9, !tbaa !26
  store { i64, ptr } %t63, ptr %l38, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t66, ptr %l39, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l40, !tbaa !24
  %t69 = load i64, ptr %l40, !tbaa !24
  %t70 = mul i64 %t69, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l41, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l40, !tbaa !24
  %t79 = mul i64 %t78, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t75, ptr %t77, i64 %t79, i1 false)
  %t80 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t80, ptr %l2, !tbaa !27
  %t81 = load i1, ptr @olang_2esole_2estd__2fbench__2eHuman_2elocal_2e2
  br i1 %t81, label %bb11, label %bb12
bb10:
  br label %bb13
bb11:
  %t83 = load { i64, ptr }, ptr %l39
  %t84 = extractvalue { i64, ptr } %t83, 1
  call void @__olang_region_release(ptr %t84)
  store { i64, ptr } zeroinitializer, ptr %l39
  br label %bb12
bb12:
  %t85 = load double, ptr %l9, !tbaa !26
  store double %t85, ptr %l3, !tbaa !26
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t87 = load double, ptr %l0, !tbaa !26
  %t88 = load double, ptr %l3, !tbaa !26
  %t91 = fdiv double %t87, %t88
  %t93 = fcmp oge double %t91, 0x4059000000000000
  br i1 %t93, label %bb16, label %bb17
bb16:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb21
bb17:
  %t95 = load double, ptr %l0, !tbaa !26
  %t96 = load double, ptr %l3, !tbaa !26
  %t99 = fdiv double %t95, %t96
  %t101 = fcmp oge double %t99, 0x4024000000000000
  br i1 %t101, label %bb18, label %bb19
bb18:
  store i64 1, ptr %l53, !tbaa !24
  br label %bb20
bb19:
  store i64 2, ptr %l53, !tbaa !24
  br label %bb20
bb20:
  %t103 = load i64, ptr %l53, !tbaa !24
  store i64 %t103, ptr %l48, !tbaa !24
  br label %bb21
bb21:
  %t104 = load i64, ptr %l48, !tbaa !24
  store i64 %t104, ptr %l10, !tbaa !24
  %t105 = load double, ptr %l0, !tbaa !26
  %t106 = load double, ptr %l3, !tbaa !26
  %t109 = fdiv double %t105, %t106
  %t110 = load i64, ptr %l10, !tbaa !24
  %t113 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %s0, double %t109, i64 %t110)
  store { i64, ptr } %t113, ptr %l58
  br label %bb22
bb22:
  %t114 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = extractvalue { i64, ptr } %t114, 1
  %t123 = extractvalue { i64, ptr } %t114, 0
  %t124 = add i64 %t120, %t123
  %t125 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t116, i64 %t117)
  %t126 = getelementptr i8, ptr %t125, i64 %t117
  call void @olang_textcopy(ptr %t126, ptr %t118, i64 %t119)
  %t127 = getelementptr i8, ptr %t126, i64 %t119
  call void @olang_textcopy(ptr %t127, ptr %t122, i64 %t123)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t125, 1
  %t130 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t130, ptr %lp11
  %t132 = load ptr, ptr %lp11
  store { i64, ptr } %t129, ptr %t132, !tbaa !27
  %t133 = load double, ptr %l1, !tbaa !26
  %t135 = fcmp oeq double %t133, 0x0000000000000000
  br i1 %t135, label %bb23, label %bb24
bb23:
  %t137 = load ptr, ptr %lp11
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  store { i64, ptr } %t138, ptr %l63, !tbaa !27
  br label %bb26
bb24:
  %t140 = load ptr, ptr %lp11
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l65, !tbaa !27
  %t142 = load double, ptr %l1, !tbaa !26
  %t143 = load double, ptr %l3, !tbaa !26
  %t146 = fdiv double %t142, %t143
  %t147 = load i64, ptr %l10, !tbaa !24
  %t150 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %s0, double %t146, i64 %t147)
  store { i64, ptr } %t150, ptr %l70
  br label %bb25
bb25:
  %t151 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t158 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = add i64 %t157, %t160
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t164 = add i64 %t161, %t163
  %t166 = extractvalue { i64, ptr } %t151, 1
  %t167 = extractvalue { i64, ptr } %t151, 0
  %t168 = add i64 %t164, %t167
  %t169 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t168)
  call void @olang_textcopy(ptr %t169, ptr %t153, i64 %t154)
  %t170 = getelementptr i8, ptr %t169, i64 %t154
  call void @olang_textcopy(ptr %t170, ptr %t155, i64 %t156)
  %t171 = getelementptr i8, ptr %t170, i64 %t156
  call void @olang_textcopy(ptr %t171, ptr %t159, i64 %t160)
  %t172 = getelementptr i8, ptr %t171, i64 %t160
  call void @olang_textcopy(ptr %t172, ptr %t162, i64 %t163)
  %t173 = getelementptr i8, ptr %t172, i64 %t163
  call void @olang_textcopy(ptr %t173, ptr %t166, i64 %t167)
  %t174 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t169, 1
  store { i64, ptr } %t175, ptr %l63, !tbaa !27
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t177 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local double @std_2fbench_2eMedian(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l17 = alloca double
  %s0 = alloca %olang.scope
  %rv = alloca double
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store double 0x0000000000000000, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t10, ptr %l9, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = mul i64 %t14, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l11, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = mul i64 %t23, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_7, 0
  %t28 = insertvalue { ptr, ptr } %t27, ptr null, 1
  %t31 = extractvalue { ptr, ptr } %t28, 0
  %t32 = extractvalue { ptr, ptr } %t28, 1
  call void @std_2fprelude_2farray_2eArray_3cF64_3e_2eSort_3cF64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t26, ptr %t31, ptr %t32)
  br label %bb4
bb4:
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = srem i64 %t33, 2
  %t37 = icmp eq i64 %t35, 1
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = load i64, ptr %l1, !tbaa !24
  %t41 = sdiv i64 %t39, 2
  %t43 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr double, ptr %t44, i64 %t41
  %t46 = load double, ptr %t45, !tbaa !36
  store double %t46, ptr %l17, !tbaa !26
  br label %bb7
bb6:
  %t48 = load i64, ptr %l1, !tbaa !24
  %t50 = sdiv i64 %t48, 2
  %t52 = sub i64 %t50, 1
  %t54 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr double, ptr %t55, i64 %t52
  %t57 = load double, ptr %t56, !tbaa !36
  %t58 = load i64, ptr %l1, !tbaa !24
  %t60 = sdiv i64 %t58, 2
  %t62 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr double, ptr %t63, i64 %t60
  %t65 = load double, ptr %t64, !tbaa !36
  %t68 = fadd double %t57, %t65
  %t70 = fdiv double %t68, 0x4000000000000000
  store double %t70, ptr %l17, !tbaa !26
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t72 = load double, ptr %l17, !tbaa !26
  store double %t72, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local i1 @std_2fbench_2eOn() #0 {
entry:
  %l0 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call i64 @__olang_bench_on()
  store i64 %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp ne i64 %t2, 0
  store i1 %t3, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local double @std_2fbench_2eSpread(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca double
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca double
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l18 = alloca { i64, ptr }
  %l24 = alloca double
  %l27 = alloca double
  %s0 = alloca %olang.scope
  %rv = alloca double
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call double @std_2fbench_2eMedian(ptr %v0, { i64, ptr } %t1)
  store double %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load double, ptr %l7, !tbaa !26
  store double %t4, ptr %l1, !tbaa !26
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = mul i64 %t11, 8
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  br label %bb2
bb2:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t25, ptr %l18, !tbaa !27
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr double, ptr %t29, i64 %t26
  %t31 = load double, ptr %t30, !tbaa !36
  %t34 = load double, ptr %l1, !tbaa !26
  %t37 = fsub double %t31, %t34
  %t39 = call double @std_2fprelude_2fnumber_2eF64_2eAbs_3cF64_3e(double %t37)
  store double %t39, ptr %l24
  br label %bb6
bb6:
  %t40 = load double, ptr %l24, !tbaa !26
  %t41 = load i64, ptr %l13, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr double, ptr %t43, i64 %t41
  store double %t40, ptr %t44, !tbaa !36
  %t45 = load i64, ptr %l13, !tbaa !24
  %t46 = add i64 %t45, 1
  store i64 %t46, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb2
bb8:
  %t51 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t52 = call double @std_2fbench_2eMedian(ptr %s0, { i64, ptr } %t51)
  store double %t52, ptr %l27
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load double, ptr %l27, !tbaa !26
  store double %t53, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local { i64, ptr } @std_2fbench_2enanos(ptr %v0, double %a0) #0 {
entry:
  %l0 = alloca double
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store double %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr %l0, !tbaa !26
  %t3 = fcmp oge double %t1, 0x4059000000000000
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load double, ptr %l0, !tbaa !26
  %t7 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t5, i64 0)
  store { i64, ptr } %t7, ptr %l4
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
bb4:
  %t9 = load double, ptr %l0, !tbaa !26
  %t11 = fcmp oge double %t9, 0x4024000000000000
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load double, ptr %l0, !tbaa !26
  %t15 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t13, i64 1)
  store { i64, ptr } %t15, ptr %l8
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t16 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t16, ptr %rv
  br label %ret
bb8:
  %t17 = load double, ptr %l0, !tbaa !26
  %t19 = fcmp oge double %t17, 0x3ff0000000000000
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t21 = load double, ptr %l0, !tbaa !26
  %t23 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t21, i64 2)
  store { i64, ptr } %t23, ptr %l12
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t24 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb12:
  %t25 = load double, ptr %l0, !tbaa !26
  %t27 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t25, i64 3)
  store { i64, ptr } %t27, ptr %l14
  br label %bb13
bb13:
  %t28 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t28, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fbench_2enextOps(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/bench:Measurement", ptr %t2, i32 0, i32 0
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = mul i64 %a1, %t5
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/bench:Measurement", ptr %t9, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t12, i64 1)
  store i64 %t14, ptr %l9
  br label %bb1
bb1:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l9, !tbaa !24
  %t17 = sdiv i64 %t15, %t16
  store i64 %t17, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = sdiv i64 %t20, 5
  %t25 = add i64 %t19, %t22
  store i64 %t25, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"std/bench:Measurement", ptr %t28, i32 0, i32 0
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = mul i64 100, %t31
  %t36 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t27, i64 %t33)
  store i64 %t36, ptr %l19
  br label %bb2
bb2:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"std/bench:Measurement", ptr %t37, i32 0, i32 0
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t43 = load i64, ptr %l19, !tbaa !24
  %t45 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t43, i64 %t42)
  store i64 %t45, ptr %l23
  br label %bb3
bb3:
  %t46 = load i64, ptr @G_2estd_2fbench_2eMaxOps, !tbaa !24
  %t47 = load i64, ptr %l23, !tbaa !24
  %t49 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t47, i64 %t46)
  store i64 %t49, ptr %l25
  br label %bb4
bb4:
  %t50 = load i64, ptr %l25, !tbaa !24
  store i64 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @std_2fbench_2erunning(ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %lp1 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l16 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = icmp sge i64 0, 0
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = mul i64 0, 1
  %t4 = insertvalue { i64, ptr } undef, i64 0, 0
  %t5 = insertvalue { i64, ptr } %t4, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = extractvalue { i64, ptr } %t5, 0
  %t9 = call i64 @__olang_test_running(ptr %t7, i64 0)
  store i64 %t9, ptr %l4
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_590cb66873c2c3f3_59ce3f902ad3bbf)
  unreachable
bb3:
  %t10 = load i64, ptr %l4, !tbaa !24
  store i64 %t10, ptr %l0, !tbaa !24
  %t11 = load i64, ptr %l0, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t15, ptr %l8, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l9, !tbaa !24
  %t18 = load i64, ptr %l9, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l10, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = load i64, ptr %l9, !tbaa !24
  %t28 = mul i64 %t27, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %t26, i64 %t28, i1 false)
  %t29 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t29, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t30 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t30, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t31 = load i64, ptr %l0, !tbaa !24
  store i64 %t31, ptr %l11, !tbaa !24
  %t32 = load i64, ptr %l11, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = load i64, ptr %l11, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t40, ptr %lp1
  %t42 = load ptr, ptr %lp1
  store { i64, ptr } %t39, ptr %t42, !tbaa !27
  %t43 = load ptr, ptr %lp1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l0, !tbaa !24
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = extractvalue { i64, ptr } %t44, 0
  %t50 = call i64 @__olang_test_running(ptr %t47, i64 %t45)
  store i64 %t50, ptr %l16
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_81530fe1491cf4be_4f813e5d1e4ab0ea)
  unreachable
bb9:
  %t51 = load ptr, ptr %lp1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fbench_2erunsOnce() #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t15 = alloca { ptr, ptr }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = load ptr, ptr @__olang_prog_scope
  %t3 = call %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %t1, ptr %t2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i64] }>, ptr @.d9, i32 0, i32 1) })
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t3, ptr %l1
  br label %bb1
bb1:
  %t4 = load %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %l1
  %t5 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t4, ptr %t5
  %t6 = load ptr, ptr @__olang_prog_scope
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %t6, ptr %s0, ptr %t5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l3
  br label %bb2
bb2:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t10 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %t10
  store ptr %t10, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t14 = ptrtoint ptr %t13 to i64
  %t16 = getelementptr { ptr, ptr }, ptr %t15, i32 0, i32 0
  store ptr %t12, ptr %t16, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t18 = getelementptr { ptr, ptr }, ptr %t15, i32 0, i32 1
  store ptr %s0, ptr %t18, !tbaa !28
  %t19 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_10, 0
  %t20 = insertvalue { ptr, ptr } %t19, ptr %t15, 1
  %t21 = load i64, ptr @G_2estd_2fbench_2eDefaultBudget, !tbaa !24
  %t22 = load i64, ptr @G_2estd_2fbench_2eDefaultRuns, !tbaa !24
  %t24 = extractvalue { ptr, ptr } %t20, 0
  %t25 = extractvalue { ptr, ptr } %t20, 1
  call void @std_2fbench_2eRun_3c_3f_3e(ptr %s0, ptr %s0, ptr %t24, ptr %t25, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, i64 %t21, i64 %t22)
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t28, i64 0)
  store i64 %t30, ptr %l10
  br label %bb4
bb4:
  %t31 = load i64, ptr %l10, !tbaa !24
  call void @std_2fbench_2eKeep_3cI64_3e(i64 %t31)
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t32, i64 0)
  store i64 %t34, ptr %l12
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load i64, ptr %l12, !tbaa !24
  store i64 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local double @std_2fbench_2estd_2fbench_3aComparison_2eRatio(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca double
  %rv = alloca double
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/bench:Comparison", ptr %a0, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call double @std_2fbench_2eMedian(ptr %v0, { i64, ptr } %t4)
  store double %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load double, ptr %l3, !tbaa !26
  store double %t7, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local double @std_2fbench_2estd_2fbench_3aComparison_2eRatioSpread(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca double
  %rv = alloca double
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/bench:Comparison", ptr %a0, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call double @std_2fbench_2eSpread(ptr %v0, { i64, ptr } %t4)
  store double %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load double, ptr %l3, !tbaa !26
  store double %t7, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local i64 @std_2fbench_2estd_2fbench_3aMeasurement_2eAllocsPerOp(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/bench:Measurement", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/bench:Measurement", ptr %t8, i32 0, i32 2
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/bench:Measurement", ptr %t12, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t15, i64 1)
  store i64 %t17, ptr %l9
  br label %bb3
bb3:
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = sdiv i64 %t18, %t19
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t22 = load i64, ptr %l4, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fbench_2estd_2fbench_3aMeasurement_2eBytesPerOp(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/bench:Measurement", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/bench:Measurement", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/bench:Measurement", ptr %t12, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t15, i64 1)
  store i64 %t17, ptr %l9
  br label %bb3
bb3:
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = sdiv i64 %t18, %t19
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t22 = load i64, ptr %l4, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fbench_2estd_2fbench_3aMeasurement_2eInstructionsPerOp(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/bench:Measurement", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"std/bench:Measurement", ptr %t8, i32 0, i32 4
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/bench:Measurement", ptr %t12, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t15, i64 1)
  store i64 %t17, ptr %l9
  br label %bb3
bb3:
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = sdiv i64 %t18, %t19
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t22 = load i64, ptr %l4, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local double @std_2fbench_2estd_2fbench_3aMeasurement_2eNanosPerOp(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca double
  %l6 = alloca i64
  %rv = alloca double
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/bench:Measurement", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sitofp i64 %t4 to double
  store double %t6, ptr %l3, !tbaa !26
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/bench:Measurement", ptr %t7, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t12 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t10, i64 1)
  store i64 %t12, ptr %l6
  br label %bb1
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = sitofp i64 %t13 to double
  %t15 = load double, ptr %l3, !tbaa !26
  %t17 = fdiv double %t15, %t14
  store double %t17, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local { i64, ptr } @std_2fbench_2estd_2fbench_3aMeasurement_2eStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca double
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/bench:Measurement", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call double @std_2fbench_2estd_2fbench_3aMeasurement_2eNanosPerOp(ptr %v0, ptr %t5)
  store double %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = load double, ptr %l4, !tbaa !26
  %t9 = call { i64, ptr } @std_2fbench_2enanos(ptr %s0, double %t8)
  store { i64, ptr } %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i64, ptr } @std_2fbench_2estd_2fbench_3aMeasurement_2ecounts(ptr %v0, ptr %s0, ptr %t10)
  store { i64, ptr } %t12, ptr %l7
  br label %bb3
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %t13)
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t17 = add i64 %t14, %t16
  %t18 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = add i64 %t17, %t20
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t24 = add i64 %t21, %t23
  %t25 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = add i64 %t24, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t13)
  %t31 = getelementptr i8, ptr %t29, i64 %t14
  call void @olang_textcopy(ptr %t31, ptr %t15, i64 %t16)
  %t32 = getelementptr i8, ptr %t31, i64 %t16
  call void @olang_textcopy(ptr %t32, ptr %t19, i64 %t20)
  %t33 = getelementptr i8, ptr %t32, i64 %t20
  call void @olang_textcopy(ptr %t33, ptr %t22, i64 %t23)
  %t34 = getelementptr i8, ptr %t33, i64 %t23
  call void @olang_textcopy(ptr %t34, ptr %t26, i64 %t27)
  %t35 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t29, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fbench_2estd_2fbench_3aMeasurement_2ecounts(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l7 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l20 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l2, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t2, ptr %lp1
  %t4 = load ptr, ptr %lp1
  store { i64, ptr } %t1, ptr %t4, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/bench:Measurement", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = ptrtoint ptr %v1 to i64
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load i1, ptr @olang_2esole_2estd__2fbench__2estd__2fbench__3aMeasurement__2ecounts_2elocal_2e1
  br i1 %t13, label %bb3, label %bb4
bb2:
  br label %bb11
bb3:
  %t15 = call ptr @__olang_region_make(ptr %v1)
  %t16 = ptrtoint ptr %t15 to i64
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call i64 @std_2fbench_2estd_2fbench_3aMeasurement_2eAllocsPerOp(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l10
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i64 @std_2fbench_2estd_2fbench_3aMeasurement_2eBytesPerOp(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l12
  br label %bb6
bb6:
  %t23 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t25 = load i64, ptr %l10, !tbaa !24
  %t26 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t27 = add i64 %t24, %t26
  %t28 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = load i64, ptr %l12, !tbaa !24
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t33 = add i64 %t30, %t32
  %t34 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = load i64, ptr %l7
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t36)
  call void @olang_textcopy(ptr %t39, ptr %t23, i64 %t24)
  %t40 = getelementptr i8, ptr %t39, i64 %t24
  %t41 = call i64 @__olang_fmt_i64(ptr %t40, i64 %t25)
  %t42 = getelementptr i8, ptr %t40, i64 %t26
  call void @olang_textcopy(ptr %t42, ptr %t28, i64 %t29)
  %t43 = getelementptr i8, ptr %t42, i64 %t29
  %t44 = call i64 @__olang_fmt_i64(ptr %t43, i64 %t31)
  %t45 = getelementptr i8, ptr %t43, i64 %t32
  call void @olang_textcopy(ptr %t45, ptr %t34, i64 %t35)
  %t46 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t39, 1
  store { i64, ptr } %t47, ptr %l13, !tbaa !27
  %t48 = load i1, ptr @olang_2esole_2estd__2fbench__2estd__2fbench__3aMeasurement__2ecounts_2elocal_2e1
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load i64, ptr %l7
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = load { i64, ptr }, ptr %l13
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr null
  %t57 = icmp eq ptr %t56, %t51
  call void @__olang_region_settle(ptr %t51, i1 %t57)
  br label %bb8
bb8:
  %t58 = load ptr, ptr %lp1
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l15, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t61 = load ptr, ptr %lp1
  store { i64, ptr } %t60, ptr %t61, !tbaa !27
  %t62 = load i1, ptr @olang_2esole_2estd__2fbench__2estd__2fbench__3aMeasurement__2ecounts_2elocal_2e1
  br i1 %t62, label %bb9, label %bb10
bb9:
  %t64 = load { i64, ptr }, ptr %l15
  %t65 = extractvalue { i64, ptr } %t64, 1
  call void @__olang_region_release(ptr %t65)
  store { i64, ptr } zeroinitializer, ptr %l15
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"std/bench:Measurement", ptr %t66, i32 0, i32 4
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = icmp sge i64 %t69, 0
  br i1 %t71, label %bb12, label %bb13
bb12:
  %t73 = ptrtoint ptr %v1 to i64
  store i64 %t73, ptr %l20, !tbaa !24
  %t74 = load i1, ptr @olang_2esole_2estd__2fbench__2estd__2fbench__3aMeasurement__2ecounts_2elocal_2e1
  br i1 %t74, label %bb14, label %bb15
bb13:
  br label %bb21
bb14:
  %t76 = call ptr @__olang_region_make(ptr %v1)
  %t77 = ptrtoint ptr %t76 to i64
  store i64 %t77, ptr %l20, !tbaa !24
  br label %bb15
bb15:
  %t78 = load ptr, ptr %lp1
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  store { i64, ptr } %t79, ptr %l22, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = call i64 @std_2fbench_2estd_2fbench_3aMeasurement_2eInstructionsPerOp(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l24
  br label %bb16
bb16:
  %t83 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t89 = load i64, ptr %l24, !tbaa !24
  %t90 = call i64 @__olang_fmt_i64(ptr null, i64 %t89)
  %t91 = add i64 %t88, %t90
  %t92 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t95 = load i64, ptr %l20
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t94)
  call void @olang_textcopy(ptr %t97, ptr %t84, i64 %t85)
  %t98 = getelementptr i8, ptr %t97, i64 %t85
  call void @olang_textcopy(ptr %t98, ptr %t86, i64 %t87)
  %t99 = getelementptr i8, ptr %t98, i64 %t87
  %t100 = call i64 @__olang_fmt_i64(ptr %t99, i64 %t89)
  %t101 = getelementptr i8, ptr %t99, i64 %t90
  call void @olang_textcopy(ptr %t101, ptr %t92, i64 %t93)
  %t102 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t97, 1
  store { i64, ptr } %t103, ptr %l25, !tbaa !27
  %t104 = load i1, ptr @olang_2esole_2estd__2fbench__2estd__2fbench__3aMeasurement__2ecounts_2elocal_2e1
  br i1 %t104, label %bb17, label %bb18
bb17:
  %t106 = load i64, ptr %l20
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = load { i64, ptr }, ptr %l25
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = call ptr @__olang_region_or(ptr %t109, ptr null)
  %t111 = icmp ne ptr %t110, null
  %t112 = select i1 %t111, ptr %t110, ptr null
  %t113 = icmp eq ptr %t112, %t107
  call void @__olang_region_settle(ptr %t107, i1 %t113)
  br label %bb18
bb18:
  %t114 = load ptr, ptr %lp1
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  store { i64, ptr } %t115, ptr %l27, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t117 = load ptr, ptr %lp1
  store { i64, ptr } %t116, ptr %t117, !tbaa !27
  %t118 = load i1, ptr @olang_2esole_2estd__2fbench__2estd__2fbench__3aMeasurement__2ecounts_2elocal_2e1
  br i1 %t118, label %bb19, label %bb20
bb19:
  %t120 = load { i64, ptr }, ptr %l27
  %t121 = extractvalue { i64, ptr } %t120, 1
  call void @__olang_region_release(ptr %t121)
  store { i64, ptr } zeroinitializer, ptr %l27
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t122 = load ptr, ptr %lp1
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [2 x i64] } @std_2fbench_2estd_2fbench_3aSeries_2eDisplay(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/bench:Measurement"
  %l3 = alloca %"std/bench:Measurement"
  %l5 = alloca double
  %l7 = alloca double
  %l8 = alloca { i64, ptr }
  %l10 = alloca double
  %l11 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t68 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/bench:Measurement" @std_2fbench_2estd_2fbench_3aSeries_2eTypical(ptr %v0, ptr %t1)
  store %"std/bench:Measurement" %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load %"std/bench:Measurement", ptr %l3
  store %"std/bench:Measurement" %t4, ptr %l1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call double @std_2fbench_2estd_2fbench_3aSeries_2eMedian(ptr %v0, ptr %t5)
  store double %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call double @std_2fbench_2estd_2fbench_3aSeries_2eSpread(ptr %v0, ptr %t8)
  store double %t10, ptr %l7
  br label %bb3
bb3:
  %t11 = load double, ptr %l5, !tbaa !26
  %t12 = load double, ptr %l7, !tbaa !26
  %t13 = call { i64, ptr } @std_2fbench_2eHuman(ptr %s0, double %t11, double %t12)
  store { i64, ptr } %t13, ptr %l8
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call double @std_2fbench_2estd_2fbench_3aSeries_2eMin(ptr %v0, ptr %t14)
  store double %t16, ptr %l10
  br label %bb5
bb5:
  %t17 = load double, ptr %l10, !tbaa !26
  %t18 = call { i64, ptr } @std_2fbench_2eHuman(ptr %s0, double %t17, double 0x0000000000000000)
  store { i64, ptr } %t18, ptr %l11
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"std/bench:Series", ptr %t19, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = getelementptr %"std/bench:Measurement", ptr %l1, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t29 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = add i64 %t28, %t31
  %t33 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t36 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t44 = call i64 @__olang_fmt_i64(ptr null, i64 %t24)
  %t45 = add i64 %t42, %t44
  %t46 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t48 = add i64 %t45, %t47
  %t50 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t51 = add i64 %t48, %t50
  %t52 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t54 = add i64 %t51, %t53
  %t55 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t54)
  call void @olang_textcopy(ptr %t55, ptr %t27, i64 %t28)
  %t56 = getelementptr i8, ptr %t55, i64 %t28
  call void @olang_textcopy(ptr %t56, ptr %t30, i64 %t31)
  %t57 = getelementptr i8, ptr %t56, i64 %t31
  call void @olang_textcopy(ptr %t57, ptr %t33, i64 %t34)
  %t58 = getelementptr i8, ptr %t57, i64 %t34
  call void @olang_textcopy(ptr %t58, ptr %t37, i64 %t38)
  %t59 = getelementptr i8, ptr %t58, i64 %t38
  call void @olang_textcopy(ptr %t59, ptr %t40, i64 %t41)
  %t60 = getelementptr i8, ptr %t59, i64 %t41
  %t61 = call i64 @__olang_fmt_i64(ptr %t60, i64 %t24)
  %t62 = getelementptr i8, ptr %t60, i64 %t44
  call void @olang_textcopy(ptr %t62, ptr %t46, i64 %t47)
  %t63 = getelementptr i8, ptr %t62, i64 %t47
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t26)
  %t65 = getelementptr i8, ptr %t63, i64 %t50
  call void @olang_textcopy(ptr %t65, ptr %t52, i64 %t53)
  %t66 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t55, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [2 x i64] }, ptr %t68, i32 0, i32 0
  store i64 1, ptr %t69
  %t71 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t67, 0
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t68, i32 0, i32 1
  store { { i64, ptr } } %t71, ptr %t72
  %t73 = load { i64, [2 x i64] }, ptr %t68
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, ptr } @std_2fbench_2estd_2fbench_3aSeries_2eLine(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/bench:Measurement"
  %l3 = alloca %"std/bench:Measurement"
  %l5 = alloca double
  %l7 = alloca double
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/bench:Measurement" @std_2fbench_2estd_2fbench_3aSeries_2eTypical(ptr %v0, ptr %t1)
  store %"std/bench:Measurement" %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load %"std/bench:Measurement", ptr %l3
  store %"std/bench:Measurement" %t4, ptr %l1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call double @std_2fbench_2estd_2fbench_3aSeries_2eMedian(ptr %v0, ptr %t5)
  store double %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call double @std_2fbench_2estd_2fbench_3aSeries_2eSpread(ptr %v0, ptr %t8)
  store double %t10, ptr %l7
  br label %bb3
bb3:
  %t11 = load double, ptr %l5, !tbaa !26
  %t12 = load double, ptr %l7, !tbaa !26
  %t13 = call { i64, ptr } @std_2fbench_2eHuman(ptr %s0, double %t11, double %t12)
  store { i64, ptr } %t13, ptr %l8
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/bench:Series", ptr %t14, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = getelementptr %"std/bench:Measurement", ptr %l1, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t27 = add i64 %t24, %t26
  %t29 = call i64 @__olang_fmt_i64(ptr null, i64 %t19)
  %t30 = add i64 %t27, %t29
  %t31 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t21)
  %t36 = add i64 %t33, %t35
  %t37 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t23, i64 %t24)
  %t41 = getelementptr i8, ptr %t40, i64 %t24
  call void @olang_textcopy(ptr %t41, ptr %t25, i64 %t26)
  %t42 = getelementptr i8, ptr %t41, i64 %t26
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %t19)
  %t44 = getelementptr i8, ptr %t42, i64 %t29
  call void @olang_textcopy(ptr %t44, ptr %t31, i64 %t32)
  %t45 = getelementptr i8, ptr %t44, i64 %t32
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %t21)
  %t47 = getelementptr i8, ptr %t45, i64 %t35
  call void @olang_textcopy(ptr %t47, ptr %t37, i64 %t38)
  %t48 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t40, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local double @std_2fbench_2estd_2fbench_3aSeries_2eMedian(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l4 = alloca double
  %s0 = alloca %olang.scope
  %rv = alloca double
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fbench_2estd_2fbench_3aSeries_2ePerOp(ptr %v0, ptr %s0, ptr %a0)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 8
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  %t12 = call double @std_2fbench_2eMedian(ptr %s0, { i64, ptr } %t10)
  store double %t12, ptr %l4
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = load double, ptr %l4, !tbaa !26
  store double %t13, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local double @std_2fbench_2estd_2fbench_3aSeries_2eMin(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca double
  %l5 = alloca i64
  %l6 = alloca double
  %l7 = alloca double
  %l9 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l28 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca double
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fbench_2estd_2fbench_3aSeries_2ePerOp(ptr %v0, ptr %s0, ptr %a0)
  store { i64, ptr } %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 8
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l1, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t20, ptr %l15, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr double, ptr %t24, i64 0
  %t26 = load double, ptr %t25, !tbaa !36
  store double %t26, ptr %l4, !tbaa !26
  store i64 1, ptr %l5, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store double 0x0000000000000000, ptr %l7, !tbaa !26
  br label %bb17
bb5:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp slt i64 %t28, %t29
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  br label %bb8
bb8:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr double, ptr %t40, i64 %t37
  %t42 = load double, ptr %t41, !tbaa !36
  store double %t42, ptr %l6, !tbaa !26
  %t44 = load double, ptr %l6, !tbaa !26
  %t45 = load double, ptr %l4, !tbaa !26
  %t48 = fcmp olt double %t44, %t45
  br i1 %t48, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t50 = load double, ptr %l6, !tbaa !26
  %t51 = load double, ptr %l6, !tbaa !26
  %t54 = fcmp une double %t50, %t51
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t56 = load i1, ptr %l28, !tbaa !21
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t57 = load double, ptr %l6, !tbaa !26
  store double %t57, ptr %l4, !tbaa !26
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb5
bb16:
  %t63 = load double, ptr %l4, !tbaa !26
  store double %t63, ptr %l7, !tbaa !26
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t65 = load double, ptr %l7, !tbaa !26
  store double %t65, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local { i64, ptr } @std_2fbench_2estd_2fbench_3aSeries_2ePerOp(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/bench:Measurement"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca double
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/bench:Series", ptr %a0, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = mul i64 %t10, 8
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t24, ptr %l16, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"std/bench:Measurement", ptr %t28, i64 %t25
  %t30 = load %"std/bench:Measurement", ptr %t29
  store %"std/bench:Measurement" %t30, ptr %l4
  %t33 = call double @std_2fbench_2estd_2fbench_3aMeasurement_2eNanosPerOp(ptr %s2, ptr %l4)
  store double %t33, ptr %l20
  br label %bb5
bb5:
  %t34 = load double, ptr %l20, !tbaa !26
  %t35 = load i64, ptr %l11, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr double, ptr %t37, i64 %t35
  store double %t34, ptr %t38, !tbaa !36
  %t39 = load i64, ptr %l11, !tbaa !24
  %t40 = add i64 %t39, 1
  store i64 %t40, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb6
bb6:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l2, !tbaa !24
  br label %bb1
bb7:
  %t45 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local double @std_2fbench_2estd_2fbench_3aSeries_2eSpread(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l4 = alloca double
  %s0 = alloca %olang.scope
  %rv = alloca double
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2fbench_2estd_2fbench_3aSeries_2ePerOp(ptr %v0, ptr %s0, ptr %a0)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 8
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  %t12 = call double @std_2fbench_2eSpread(ptr %s0, { i64, ptr } %t10)
  store double %t12, ptr %l4
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = load double, ptr %l4, !tbaa !26
  store double %t13, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local { i64, ptr } @std_2fbench_2estd_2fbench_3aSeries_2eStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/bench:Measurement"
  %l3 = alloca %"std/bench:Measurement"
  %l4 = alloca i64
  %l6 = alloca double
  %l7 = alloca { i64, ptr }
  %l9 = alloca double
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"std/bench:Measurement" @std_2fbench_2estd_2fbench_3aSeries_2eTypical(ptr %v0, ptr %t1)
  store %"std/bench:Measurement" %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load %"std/bench:Measurement", ptr %l3
  store %"std/bench:Measurement" %t4, ptr %l1
  %t5 = getelementptr %"std/bench:Measurement", ptr %l1, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call double @std_2fbench_2estd_2fbench_3aSeries_2eMedian(ptr %v0, ptr %t7)
  store double %t9, ptr %l6
  br label %bb2
bb2:
  %t10 = load double, ptr %l6, !tbaa !26
  %t11 = call { i64, ptr } @std_2fbench_2enanos(ptr %s0, double %t10)
  store { i64, ptr } %t11, ptr %l7
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call double @std_2fbench_2estd_2fbench_3aSeries_2eSpread(ptr %v0, ptr %t12)
  store double %t14, ptr %l9
  br label %bb4
bb4:
  %t15 = load double, ptr %l9, !tbaa !26
  %t16 = call { i64, ptr } @std_2fbench_2enanos(ptr %s0, double %t15)
  store { i64, ptr } %t16, ptr %l10
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/bench:Series", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l13, !tbaa !24
  %t24 = call { i64, ptr } @std_2fbench_2estd_2fbench_3aMeasurement_2ecounts(ptr %s0, ptr %s0, ptr %l1)
  store { i64, ptr } %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = load i64, ptr %l13, !tbaa !24
  %t45 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t46 = add i64 %t43, %t45
  %t47 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t50 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = add i64 %t49, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t53)
  %t55 = call i64 @__olang_fmt_i64(ptr %t54, i64 %t25)
  %t56 = getelementptr i8, ptr %t54, i64 %t26
  call void @olang_textcopy(ptr %t56, ptr %t27, i64 %t28)
  %t57 = getelementptr i8, ptr %t56, i64 %t28
  call void @olang_textcopy(ptr %t57, ptr %t31, i64 %t32)
  %t58 = getelementptr i8, ptr %t57, i64 %t32
  call void @olang_textcopy(ptr %t58, ptr %t34, i64 %t35)
  %t59 = getelementptr i8, ptr %t58, i64 %t35
  call void @olang_textcopy(ptr %t59, ptr %t38, i64 %t39)
  %t60 = getelementptr i8, ptr %t59, i64 %t39
  call void @olang_textcopy(ptr %t60, ptr %t41, i64 %t42)
  %t61 = getelementptr i8, ptr %t60, i64 %t42
  %t62 = call i64 @__olang_fmt_i64(ptr %t61, i64 %t44)
  %t63 = getelementptr i8, ptr %t61, i64 %t45
  call void @olang_textcopy(ptr %t63, ptr %t47, i64 %t48)
  %t64 = getelementptr i8, ptr %t63, i64 %t48
  call void @olang_textcopy(ptr %t64, ptr %t51, i64 %t52)
  %t65 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t54, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/bench:Measurement" @std_2fbench_2estd_2fbench_3aSeries_2eTypical(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca double
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/bench:Measurement"
  %l9 = alloca double
  %l19 = alloca { i64, ptr }
  %l23 = alloca double
  %l26 = alloca double
  %l30 = alloca double
  %l33 = alloca double
  %s2 = alloca %olang.scope
  %rv = alloca %"std/bench:Measurement"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call double @std_2fbench_2estd_2fbench_3aSeries_2eMedian(ptr %v0, ptr %t1)
  store double %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load double, ptr %l9, !tbaa !26
  store double %t4, ptr %l1, !tbaa !26
  store i64 0, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/bench:Series", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t22 = load i64, ptr %l4, !tbaa !24
  store i64 %t22, ptr %l6, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t24, ptr %l19, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"std/bench:Measurement", ptr %t28, i64 %t25
  %t30 = load %"std/bench:Measurement", ptr %t29
  store %"std/bench:Measurement" %t30, ptr %l7
  %t33 = call double @std_2fbench_2estd_2fbench_3aMeasurement_2eNanosPerOp(ptr %s2, ptr %l7)
  store double %t33, ptr %l23
  br label %bb6
bb6:
  %t34 = load double, ptr %l1, !tbaa !26
  %t35 = load double, ptr %l23, !tbaa !26
  %t37 = fsub double %t35, %t34
  %t39 = call double @std_2fprelude_2fnumber_2eF64_2eAbs_3cF64_3e(double %t37)
  store double %t39, ptr %l26
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = getelementptr %"std/bench:Series", ptr %t40, i32 0, i32 0
  %t45 = getelementptr { i64, ptr }, ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr %"std/bench:Measurement", ptr %t46, i64 %t41
  %t49 = call double @std_2fbench_2estd_2fbench_3aMeasurement_2eNanosPerOp(ptr %v0, ptr %t47)
  store double %t49, ptr %l30
  br label %bb8
bb8:
  %t50 = load double, ptr %l1, !tbaa !26
  %t51 = load double, ptr %l30, !tbaa !26
  %t53 = fsub double %t51, %t50
  %t55 = call double @std_2fprelude_2fnumber_2eF64_2eAbs_3cF64_3e(double %t53)
  store double %t55, ptr %l33
  br label %bb9
bb9:
  %t56 = load double, ptr %l26, !tbaa !26
  %t57 = load double, ptr %l33, !tbaa !26
  %t58 = fcmp olt double %t56, %t57
  br i1 %t58, label %bb10, label %bb11
bb10:
  %t60 = load i64, ptr %l6, !tbaa !24
  store i64 %t60, ptr %l2, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l4, !tbaa !24
  br label %bb2
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr %"std/bench:Series", ptr %t66, i32 0, i32 0
  %t71 = getelementptr { i64, ptr }, ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr %"std/bench:Measurement", ptr %t72, i64 %t67
  %t74 = load %"std/bench:Measurement", ptr %t73
  store %"std/bench:Measurement" %t74, ptr %rv
  br label %ret
ret:
  %rr = load %"std/bench:Measurement", ptr %rv
  ret %"std/bench:Measurement" %rr
}

define dso_local %"std/bench:Comparison" @std_2fbench_3aComparison_2ector(ptr %v0, ptr %v1, ptr %v2, %"std/bench:Series" %a0, %"std/bench:Series" %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"std/bench:Comparison"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"std/bench:Comparison" undef, %"std/bench:Series" %a0, 0
  %t10 = insertvalue %"std/bench:Comparison" %t8, %"std/bench:Series" %a1, 1
  %t12 = insertvalue %"std/bench:Comparison" %t10, { i64, ptr } %a2, 2
  store %"std/bench:Comparison" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/bench:Comparison", ptr %rv
  ret %"std/bench:Comparison" %rr
}

define dso_local %"std/bench:Measurement" @std_2fbench_3aMeasurement_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"std/bench:Measurement"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"std/bench:Measurement" undef, i64 %a0, 0
  %t14 = insertvalue %"std/bench:Measurement" %t12, i64 %a1, 1
  %t16 = insertvalue %"std/bench:Measurement" %t14, i64 %a2, 2
  %t18 = insertvalue %"std/bench:Measurement" %t16, i64 %a3, 3
  %t20 = insertvalue %"std/bench:Measurement" %t18, i64 %a4, 4
  store %"std/bench:Measurement" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/bench:Measurement", ptr %rv
  ret %"std/bench:Measurement" %rr
}

define dso_local %"std/bench:Series" @std_2fbench_3aSeries_2ector(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca %"std/bench:Series"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/bench:Series" undef, { i64, ptr } %a0, 0
  store %"std/bench:Series" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/bench:Series", ptr %rv
  ret %"std/bench:Series" %rr
}

@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ns" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
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
@olang_2esole_2estd__2fbench__2eHuman_2elocal_2e2 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ms" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"\C2\B5s" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" \C2\B1 " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
define internal i1 @olang_lambda_7(ptr %env, double %a0, double %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = fcmp olt double %a0, %a1
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare i64 @__olang_bench_on()
@__olang_empty_array = external constant [16 x i64]
declare i64 @__olang_test_running(ptr, i64)
declare void @__olang_check_failed(ptr) cold noreturn
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d9 = private constant <{ i64, [1 x i64] }> <{ i64 0, [1 x i64] [i64 0] }>, align 8
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
define internal void @olang_lambda_10(ptr %env) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l0
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 1, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i64, ptr %l1, !tbaa !24
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %vc0, ptr %t1, i64 %t3)
  store i64 %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load i64, ptr %l7, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = add i64 %t8, %t9
  store i64 %t12, ptr %l3, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %vc0, ptr %t14, i64 %t16, i64 %t17)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d12 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" ops  " }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" ns/op" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd__2fbench__2estd__2fbench__3aMeasurement__2ecounts_2elocal_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d16 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" allocs/op  " }>, align 8
@.d17 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" B/op" }>, align 8
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d19 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" instr/op" }>, align 8
@.d20 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"| median | spread | min | runs | calls per run |\0A|---|---|---|---|---|\0A| " }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" | | " }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" |" }>, align 8
@.d24 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" per call (median of " }>, align 8
@.d25 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" runs \C3\97 " }>, align 8
@.d26 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" calls)" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d27 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" ops  " }>, align 8
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" \C2\B1 " }>, align 8
@.d29 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" ns/op (" }>, align 8
@.d30 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" runs)" }>, align 8
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
declare { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %a0, i64 %a1)
declare void @std_2fprelude_2farray_2eArray_3cF64_3e_2eSort_3cF64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare double @std_2fprelude_2fnumber_2eF64_2eAbs_3cF64_3e(double %a0)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_590cb66873c2c3f3_59ce3f902ad3bbf = external constant [0 x i8]
@olang_loc_81530fe1491cf4be_4f813e5d1e4ab0ea = external constant [0 x i8]
declare %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fbench_2eRun_3c_3f_3e(ptr %v0, ptr %v1, ptr %a0c, ptr %a0e, { i64, ptr } %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fbench_2eKeep_3cI64_3e(i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)

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
