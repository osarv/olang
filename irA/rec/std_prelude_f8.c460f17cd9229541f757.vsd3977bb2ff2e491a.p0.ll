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
%"std/prelude/f8:F8E4M3" = type { i8 }
%"std/prelude/f8:F8E5M2" = type { i8 }
define dso_local double @std_2fprelude_2ff8_2ef8Decode(i32 %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca double
  %l6 = alloca i32
  %l10 = alloca i32
  %l17 = alloca double
  %l22 = alloca double
  %l24 = alloca double
  %l26 = alloca double
  %l28 = alloca double
  %l32 = alloca double
  %rv = alloca double
  store i32 %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !23
  %t2 = load i32, ptr %l1, !tbaa !23
  store i32 %t2, ptr %l6, !tbaa !23
  %t4 = load i32, ptr %l6, !tbaa !23
  %t5 = load i32, ptr %l6, !tbaa !23
  %t6 = ashr i32 %t1, %t5
  store i32 %t6, ptr %l3, !tbaa !23
  %t8 = load i32, ptr %l0, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t11 = load i32, ptr %l1, !tbaa !23
  store i32 %t11, ptr %l10, !tbaa !23
  %t12 = load i32, ptr %l10, !tbaa !23
  %t13 = load i32, ptr %l10, !tbaa !23
  %t14 = zext i32 %t13 to i64
  %t15 = shl i64 1, %t14
  %t17 = sub i64 %t15, 1
  %t20 = and i64 %t10, %t17
  %t22 = sitofp i64 %t20 to double
  store double %t22, ptr %l4, !tbaa !26
  %t24 = load i32, ptr %l3, !tbaa !23
  %t26 = icmp eq i32 %t24, 0
  br i1 %t26, label %bb1, label %bb2
bb1:
  %t28 = load double, ptr %l4, !tbaa !26
  store double %t28, ptr %l17, !tbaa !26
  %t29 = load i32, ptr %l2, !tbaa !23
  %t31 = sub i32 1, %t29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = sub i32 %t31, %t32
  %t37 = call double @std_2fprelude_2ff8_2ef8Pow2(i32 %t35)
  store double %t37, ptr %l22
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t38 = load double, ptr %l17, !tbaa !26
  %t39 = load double, ptr %l22, !tbaa !26
  %t40 = fmul double %t38, %t39
  store double %t40, ptr %rv
  br label %ret
bb4:
  %t42 = load double, ptr %l4, !tbaa !26
  store double %t42, ptr %l24, !tbaa !26
  %t43 = load i32, ptr %l1, !tbaa !23
  %t45 = call double @std_2fprelude_2ff8_2ef8Pow2(i32 %t43)
  store double %t45, ptr %l26
  br label %bb5
bb5:
  %t46 = load double, ptr %l24, !tbaa !26
  %t47 = load double, ptr %l26, !tbaa !26
  %t48 = fdiv double %t46, %t47
  %t50 = fadd double 0x3ff0000000000000, %t48
  store double %t50, ptr %l28, !tbaa !26
  %t51 = load i32, ptr %l3, !tbaa !23
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = sub i32 %t51, %t52
  %t57 = call double @std_2fprelude_2ff8_2ef8Pow2(i32 %t55)
  store double %t57, ptr %l32
  br label %bb6
bb6:
  %t58 = load double, ptr %l28, !tbaa !26
  %t59 = load double, ptr %l32, !tbaa !26
  %t60 = fmul double %t58, %t59
  store double %t60, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local i8 @std_2fprelude_2ff8_2ef8E4M3Bits(double %a0) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca i32
  %l2 = alloca double
  %l3 = alloca i32
  %l9 = alloca i32
  %l12 = alloca double
  %l22 = alloca i32
  %l25 = alloca i1
  %rv = alloca i8
  store double %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr %l0, !tbaa !26
  %t2 = load double, ptr %l0, !tbaa !26
  %t5 = fcmp une double %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i8 127, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load double, ptr %l0, !tbaa !26
  %t10 = call i32 @std_2fprelude_2ff8_2ef8Sign(double %t8)
  store i32 %t10, ptr %l9
  br label %bb4
bb4:
  %t11 = load i32, ptr %l9, !tbaa !23
  store i32 %t11, ptr %l1, !tbaa !23
  %t12 = load i32, ptr %l1, !tbaa !23
  %t14 = icmp ne i32 %t12, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load double, ptr %l0, !tbaa !26
  %t18 = fneg double %t16
  store double %t18, ptr %l12, !tbaa !26
  br label %bb7
bb6:
  %t20 = load double, ptr %l0, !tbaa !26
  store double %t20, ptr %l12, !tbaa !26
  br label %bb7
bb7:
  %t22 = load double, ptr %l12, !tbaa !26
  store double %t22, ptr %l2, !tbaa !26
  %t23 = load double, ptr %l2, !tbaa !26
  %t25 = fcmp ogt double %t23, 0x407c000000000000
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load i32, ptr %l1, !tbaa !23
  %t29 = or i32 %t27, 126
  %t31 = trunc i32 %t29 to i8
  store i8 %t31, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t33 = load double, ptr %l2, !tbaa !26
  %t35 = call i32 @std_2fprelude_2ff8_2ef8Encode(double %t33, i32 3, i32 7, i32 15)
  store i32 %t35, ptr %l22
  br label %bb11
bb11:
  %t36 = load i32, ptr %l22, !tbaa !23
  store i32 %t36, ptr %l3, !tbaa !23
  %t37 = load i32, ptr %l3, !tbaa !23
  %t39 = icmp slt i32 %t37, 0
  br i1 %t39, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb14
bb13:
  %t41 = load i32, ptr %l3, !tbaa !23
  %t43 = icmp eq i32 %t41, 127
  store i1 %t43, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t45 = load i1, ptr %l25, !tbaa !21
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t46 = load i32, ptr %l1, !tbaa !23
  %t48 = or i32 %t46, 126
  %t50 = trunc i32 %t48 to i8
  store i8 %t50, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t52 = load i32, ptr %l1, !tbaa !23
  %t53 = load i32, ptr %l3, !tbaa !23
  %t56 = or i32 %t52, %t53
  %t58 = trunc i32 %t56 to i8
  store i8 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local i8 @std_2fprelude_2ff8_2ef8E5M2Bits(double %a0) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca i32
  %l2 = alloca double
  %l3 = alloca i32
  %l9 = alloca i32
  %l12 = alloca double
  %l22 = alloca i32
  %rv = alloca i8
  store double %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr %l0, !tbaa !26
  %t2 = load double, ptr %l0, !tbaa !26
  %t5 = fcmp une double %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i8 127, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load double, ptr %l0, !tbaa !26
  %t10 = call i32 @std_2fprelude_2ff8_2ef8Sign(double %t8)
  store i32 %t10, ptr %l9
  br label %bb4
bb4:
  %t11 = load i32, ptr %l9, !tbaa !23
  store i32 %t11, ptr %l1, !tbaa !23
  %t12 = load i32, ptr %l1, !tbaa !23
  %t14 = icmp ne i32 %t12, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load double, ptr %l0, !tbaa !26
  %t18 = fneg double %t16
  store double %t18, ptr %l12, !tbaa !26
  br label %bb7
bb6:
  %t20 = load double, ptr %l0, !tbaa !26
  store double %t20, ptr %l12, !tbaa !26
  br label %bb7
bb7:
  %t22 = load double, ptr %l12, !tbaa !26
  store double %t22, ptr %l2, !tbaa !26
  %t23 = load double, ptr %l2, !tbaa !26
  %t25 = fcmp ogt double %t23, 0x40ec000000000000
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load i32, ptr %l1, !tbaa !23
  %t29 = or i32 %t27, 123
  %t31 = trunc i32 %t29 to i8
  store i8 %t31, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t33 = load double, ptr %l2, !tbaa !26
  %t35 = call i32 @std_2fprelude_2ff8_2ef8Encode(double %t33, i32 2, i32 15, i32 30)
  store i32 %t35, ptr %l22
  br label %bb11
bb11:
  %t36 = load i32, ptr %l22, !tbaa !23
  store i32 %t36, ptr %l3, !tbaa !23
  %t37 = load i32, ptr %l3, !tbaa !23
  %t39 = icmp slt i32 %t37, 0
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load i32, ptr %l1, !tbaa !23
  %t43 = or i32 %t41, 123
  %t45 = trunc i32 %t43 to i8
  store i8 %t45, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t47 = load i32, ptr %l1, !tbaa !23
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = or i32 %t47, %t48
  %t53 = trunc i32 %t51 to i8
  store i8 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local i32 @std_2fprelude_2ff8_2ef8Encode(double %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca i32
  %l5 = alloca double
  %l6 = alloca double
  %l7 = alloca double
  %l8 = alloca i64
  %l9 = alloca double
  %l10 = alloca i64
  %l36 = alloca double
  %l38 = alloca double
  %l39 = alloca double
  %l41 = alloca double
  %l51 = alloca i1
  %l54 = alloca i1
  %l61 = alloca double
  %l85 = alloca i32
  %rv = alloca i32
  store double %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr %l0, !tbaa !26
  %t3 = fcmp oeq double %t1, 0x0000000000000000
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i32 0, ptr %l4, !tbaa !23
  %t6 = load double, ptr %l0, !tbaa !26
  store double %t6, ptr %l5, !tbaa !26
  br label %bb4
bb4:
  %t8 = load double, ptr %l5, !tbaa !26
  %t10 = fcmp oge double %t8, 0x4000000000000000
  %t12 = xor i1 %t10, true
  br i1 %t12, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t14 = load i32, ptr %l4, !tbaa !23
  %t16 = add i32 %t14, 1
  store i32 %t16, ptr %l4, !tbaa !23
  br label %bb8
bb8:
  %t18 = load double, ptr %l5, !tbaa !26
  %t20 = fdiv double %t18, 0x4000000000000000
  store double %t20, ptr %l5, !tbaa !26
  br label %bb4
bb9:
  %t22 = load double, ptr %l0, !tbaa !26
  store double %t22, ptr %l6, !tbaa !26
  br label %bb10
bb10:
  %t24 = load double, ptr %l6, !tbaa !26
  %t26 = fcmp olt double %t24, 0x3ff0000000000000
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t30 = load i32, ptr %l4, !tbaa !23
  %t32 = sub i32 %t30, 1
  store i32 %t32, ptr %l4, !tbaa !23
  br label %bb14
bb14:
  %t34 = load double, ptr %l6, !tbaa !26
  %t36 = fmul double %t34, 0x4000000000000000
  store double %t36, ptr %l6, !tbaa !26
  br label %bb10
bb15:
  %t38 = load i32, ptr %l4, !tbaa !23
  %t39 = load i32, ptr %l2, !tbaa !23
  %t41 = sub i32 1, %t39
  %t44 = icmp slt i32 %t38, %t41
  br i1 %t44, label %bb16, label %bb17
bb16:
  %t46 = load i32, ptr %l2, !tbaa !23
  %t48 = sub i32 1, %t46
  store i32 %t48, ptr %l4, !tbaa !23
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t50 = load double, ptr %l0, !tbaa !26
  store double %t50, ptr %l36, !tbaa !26
  %t51 = load i32, ptr %l4, !tbaa !23
  %t53 = call double @std_2fprelude_2ff8_2ef8Pow2(i32 %t51)
  store double %t53, ptr %l38
  br label %bb19
bb19:
  %t54 = load double, ptr %l36, !tbaa !26
  %t55 = load double, ptr %l38, !tbaa !26
  %t56 = fdiv double %t54, %t55
  store double %t56, ptr %l39, !tbaa !26
  %t57 = load i32, ptr %l1, !tbaa !23
  %t59 = call double @std_2fprelude_2ff8_2ef8Pow2(i32 %t57)
  store double %t59, ptr %l41
  br label %bb20
bb20:
  %t60 = load double, ptr %l39, !tbaa !26
  %t61 = load double, ptr %l41, !tbaa !26
  %t62 = fmul double %t60, %t61
  store double %t62, ptr %l7, !tbaa !26
  %t64 = load double, ptr %l7, !tbaa !26
  %t66 = fptosi double %t64 to i64
  store i64 %t66, ptr %l8, !tbaa !24
  %t68 = load double, ptr %l7, !tbaa !26
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = sitofp i64 %t69 to double
  %t74 = fsub double %t68, %t71
  store double %t74, ptr %l9, !tbaa !26
  %t76 = load double, ptr %l9, !tbaa !26
  %t78 = fcmp ogt double %t76, 0x3fe0000000000000
  br i1 %t78, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb26
bb22:
  %t80 = load double, ptr %l9, !tbaa !26
  %t82 = fcmp oeq double %t80, 0x3fe0000000000000
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = load i64, ptr %l8, !tbaa !24
  %t86 = srem i64 %t84, 2
  %t88 = icmp eq i64 %t86, 1
  store i1 %t88, ptr %l54, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l54, !tbaa !21
  store i1 %t90, ptr %l51, !tbaa !21
  br label %bb26
bb26:
  %t91 = load i1, ptr %l51, !tbaa !21
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t96 = load i32, ptr %l1, !tbaa !23
  %t98 = call double @std_2fprelude_2ff8_2ef8Pow2(i32 %t96)
  store double %t98, ptr %l61
  br label %bb30
bb30:
  %t99 = load double, ptr %l61, !tbaa !26
  %t100 = fptosi double %t99 to i64
  store i64 %t100, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t103 = load i64, ptr %l10, !tbaa !24
  %t105 = mul i64 %t103, 2
  %t108 = icmp sge i64 %t102, %t105
  br i1 %t108, label %bb31, label %bb32
bb31:
  %t110 = load i64, ptr %l8, !tbaa !24
  %t112 = sdiv i64 %t110, 2
  store i64 %t112, ptr %l8, !tbaa !24
  %t114 = load i32, ptr %l4, !tbaa !23
  %t116 = add i32 %t114, 1
  store i32 %t116, ptr %l4, !tbaa !23
  br label %bb33
bb32:
  br label %bb33
bb33:
  %t118 = load i64, ptr %l8, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  br i1 %t122, label %bb34, label %bb35
bb34:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t126 = trunc i64 %t124 to i32
  store i32 %t126, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t128 = load i32, ptr %l4, !tbaa !23
  %t129 = load i32, ptr %l2, !tbaa !23
  %t132 = add i32 %t128, %t129
  %t136 = icmp sgt i32 %t132, %a3
  br i1 %t136, label %bb37, label %bb38
bb37:
  store i32 -1, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t139 = load i32, ptr %l4, !tbaa !23
  %t140 = load i32, ptr %l2, !tbaa !23
  %t143 = add i32 %t139, %t140
  %t144 = load i32, ptr %l1, !tbaa !23
  store i32 %t144, ptr %l85, !tbaa !23
  %t146 = load i32, ptr %l85, !tbaa !23
  %t147 = load i32, ptr %l85, !tbaa !23
  %t148 = shl i32 %t143, %t147
  %t149 = load i64, ptr %l8, !tbaa !24
  %t150 = load i64, ptr %l10, !tbaa !24
  %t153 = sub i64 %t149, %t150
  %t155 = trunc i64 %t153 to i32
  %t158 = or i32 %t148, %t155
  store i32 %t158, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local double @std_2fprelude_2ff8_2ef8Pow2(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca double
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l40 = alloca double
  %rv = alloca double
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store double 0x3ff0000000000000, ptr %l1, !tbaa !26
  store i32 0, ptr %l2, !tbaa !23
  %t1 = load i32, ptr %l0, !tbaa !23
  %t3 = icmp sgt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l0, !tbaa !23
  store i32 %t5, ptr %l10, !tbaa !23
  br label %bb3
bb2:
  %t7 = load i32, ptr %l0, !tbaa !23
  %t9 = sub i32 0, %t7
  store i32 %t9, ptr %l10, !tbaa !23
  br label %bb3
bb3:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  store i32 1, ptr %l4, !tbaa !23
  %t12 = load i32, ptr %l3, !tbaa !23
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = icmp sgt i32 %t12, %t13
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load i32, ptr %l4, !tbaa !23
  %t20 = icmp sgt i32 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb5:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb9
bb6:
  %t22 = load i32, ptr %l3, !tbaa !23
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = sub i32 %t22, %t23
  %t27 = load i32, ptr %l4, !tbaa !23
  %t30 = add i32 %t26, %t27
  %t32 = sub i32 %t30, 1
  %t33 = load i32, ptr %l4, !tbaa !23
  %t36 = sdiv i32 %t32, %t33
  store i32 %t36, ptr %l20, !tbaa !23
  br label %bb8
bb7:
  store i32 0, ptr %l20, !tbaa !23
  br label %bb8
bb8:
  %t38 = load i32, ptr %l20, !tbaa !23
  store i32 %t38, ptr %l17, !tbaa !23
  br label %bb9
bb9:
  %t39 = load i32, ptr %l17, !tbaa !23
  store i32 %t39, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  br label %bb10
bb10:
  %t40 = load i32, ptr %l6, !tbaa !23
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = icmp slt i32 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb11, label %bb12
bb11:
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t48 = load i32, ptr %l2, !tbaa !23
  %t49 = load i32, ptr %l6, !tbaa !23
  %t50 = load i32, ptr %l4, !tbaa !23
  %t53 = mul i32 %t49, %t50
  %t56 = add i32 %t48, %t53
  store i32 %t56, ptr %l7, !tbaa !23
  %t58 = load i32, ptr %l0, !tbaa !23
  %t60 = icmp sgt i32 %t58, 0
  br i1 %t60, label %bb14, label %bb15
bb14:
  %t62 = load double, ptr %l1, !tbaa !26
  %t64 = fmul double %t62, 0x4000000000000000
  store double %t64, ptr %l40, !tbaa !26
  br label %bb16
bb15:
  %t66 = load double, ptr %l1, !tbaa !26
  %t68 = fdiv double %t66, 0x4000000000000000
  store double %t68, ptr %l40, !tbaa !26
  br label %bb16
bb16:
  %t70 = load double, ptr %l40, !tbaa !26
  store double %t70, ptr %l1, !tbaa !26
  br label %bb17
bb17:
  %t71 = load i32, ptr %l6, !tbaa !23
  %t73 = add i32 %t71, 1
  store i32 %t73, ptr %l6, !tbaa !23
  br label %bb10
bb18:
  %t75 = load double, ptr %l1, !tbaa !26
  store double %t75, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local i32 @std_2fprelude_2ff8_2ef8Sign(double %a0) #0 {
entry:
  %l5 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = bitcast double %a0 to i64
  %t5 = lshr i64 %t3, 63
  %t7 = icmp eq i64 %t5, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i32 128, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  store i32 0, ptr %l5, !tbaa !23
  br label %bb3
bb3:
  %t9 = load i32, ptr %l5, !tbaa !23
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E4M3_2eEq(%"std/prelude/f8:F8E4M3" %a0, %"std/prelude/f8:F8E4M3" %a1) #0 {
entry:
  %l3 = alloca double
  %l5 = alloca double
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E4M3_2eF64(%"std/prelude/f8:F8E4M3" %a0)
  store double %t3, ptr %l3
  br label %bb1
bb1:
  %t6 = call double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E4M3_2eF64(%"std/prelude/f8:F8E4M3" %a1)
  store double %t6, ptr %l5
  br label %bb2
bb2:
  %t7 = load double, ptr %l3, !tbaa !26
  %t8 = load double, ptr %l5, !tbaa !26
  %t9 = fcmp oeq double %t7, %t8
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E4M3_2eF64(%"std/prelude/f8:F8E4M3" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/f8:F8E4M3"
  %l1 = alloca i32
  %l2 = alloca double
  %l10 = alloca double
  %l13 = alloca double
  %rv = alloca double
  store %"std/prelude/f8:F8E4M3" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"std/prelude/f8:F8E4M3", ptr %l0, i32 0, i32 0
  %t2 = load i8, ptr %t1, !tbaa !22
  %t4 = zext i8 %t2 to i32
  %t6 = and i32 %t4, 127
  store i32 %t6, ptr %l1, !tbaa !23
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = icmp eq i32 %t8, 127
  br i1 %t10, label %bb1, label %bb2
bb1:
  store double 0xfff8000000000000, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = load i32, ptr %l1, !tbaa !23
  %t15 = call double @std_2fprelude_2ff8_2ef8Decode(i32 %t13, i32 3, i32 7)
  store double %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load double, ptr %l10, !tbaa !26
  store double %t16, ptr %l2, !tbaa !26
  %t17 = getelementptr %"std/prelude/f8:F8E4M3", ptr %l0, i32 0, i32 0
  %t18 = load i8, ptr %t17, !tbaa !22
  %t20 = icmp uge i8 %t18, -128
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load double, ptr %l2, !tbaa !26
  %t24 = fneg double %t22
  store double %t24, ptr %l13, !tbaa !26
  br label %bb7
bb6:
  %t26 = load double, ptr %l2, !tbaa !26
  store double %t26, ptr %l13, !tbaa !26
  br label %bb7
bb7:
  %t28 = load double, ptr %l13, !tbaa !26
  store double %t28, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E4M3_2eStr(ptr %v0, %"std/prelude/f8:F8E4M3" %a0) #0 {
entry:
  %l2 = alloca double
  %l3 = alloca { i64, ptr }
  %s1 = alloca %olang.builder
  %s1room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E4M3_2eF64(%"std/prelude/f8:F8E4M3" %a0)
  store double %t3, ptr %l2
  br label %bb1
bb1:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s1
  store ptr %s1room, ptr %s1
  %t4 = load double, ptr %l2, !tbaa !26
  %t5 = call ptr @__olang_sb_room(ptr %s1, i64 48)
  %t6 = call i64 @__olang_fmt_float(ptr %t5, i64 48, double %t4, i32 0)
  call void @__olang_sb_add(ptr %s1, i64 %t6)
  %t7 = load ptr, ptr %s1
  %t8 = getelementptr %olang.builder, ptr %s1, i32 0, i32 1
  %t9 = load i64, ptr %t8
  %t10 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t9)
  call void @olang_textcopy(ptr %t10, ptr %t7, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  %t13 = getelementptr %olang.builder, ptr %s1, i32 0, i32 3
  %t14 = load ptr, ptr %t13
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %sbgrew.16, label %sbdone.17
sbgrew.16:
  call void @__olang_sb_done(ptr %s1)
  br label %sbdone.17
sbdone.17:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E5M2_2eEq(%"std/prelude/f8:F8E5M2" %a0, %"std/prelude/f8:F8E5M2" %a1) #0 {
entry:
  %l3 = alloca double
  %l5 = alloca double
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E5M2_2eF64(%"std/prelude/f8:F8E5M2" %a0)
  store double %t3, ptr %l3
  br label %bb1
bb1:
  %t6 = call double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E5M2_2eF64(%"std/prelude/f8:F8E5M2" %a1)
  store double %t6, ptr %l5
  br label %bb2
bb2:
  %t7 = load double, ptr %l3, !tbaa !26
  %t8 = load double, ptr %l5, !tbaa !26
  %t9 = fcmp oeq double %t7, %t8
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E5M2_2eF64(%"std/prelude/f8:F8E5M2" %a0) #0 {
entry:
  %l0 = alloca %"std/prelude/f8:F8E5M2"
  %rv = alloca double
  store %"std/prelude/f8:F8E5M2" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"std/prelude/f8:F8E5M2", ptr %l0, i32 0, i32 0
  %t2 = load i8, ptr %t1, !tbaa !22
  %t4 = zext i8 %t2 to i16
  %t6 = shl i16 %t4, 8
  %t8 = call i16 asm "", "=r,0"(i16 %t6)
  %t9 = bitcast i16 %t8 to half
  %t11 = fpext half %t9 to double
  store double %t11, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E5M2_2eStr(ptr %v0, %"std/prelude/f8:F8E5M2" %a0) #0 {
entry:
  %l2 = alloca double
  %l3 = alloca { i64, ptr }
  %s1 = alloca %olang.builder
  %s1room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call double @std_2fprelude_2ff8_2estd_2fprelude_2ff8_3aF8E5M2_2eF64(%"std/prelude/f8:F8E5M2" %a0)
  store double %t3, ptr %l2
  br label %bb1
bb1:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s1
  store ptr %s1room, ptr %s1
  %t4 = load double, ptr %l2, !tbaa !26
  %t5 = call ptr @__olang_sb_room(ptr %s1, i64 48)
  %t6 = call i64 @__olang_fmt_float(ptr %t5, i64 48, double %t4, i32 0)
  call void @__olang_sb_add(ptr %s1, i64 %t6)
  %t7 = load ptr, ptr %s1
  %t8 = getelementptr %olang.builder, ptr %s1, i32 0, i32 1
  %t9 = load i64, ptr %t8
  %t10 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t9)
  call void @olang_textcopy(ptr %t10, ptr %t7, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  %t13 = getelementptr %olang.builder, ptr %s1, i32 0, i32 3
  %t14 = load ptr, ptr %t13
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %sbgrew.16, label %sbdone.17
sbgrew.16:
  call void @__olang_sb_done(ptr %s1)
  br label %sbdone.17
sbdone.17:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/f8:F8E4M3" @std_2fprelude_2ff8_3aF8E4M3_2ector(ptr %v0, double %a0) #0 {
entry:
  %l3 = alloca i8
  %rv = alloca %"std/prelude/f8:F8E4M3"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i8 @std_2fprelude_2ff8_2ef8E4M3Bits(double %a0)
  store i8 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i8, ptr %l3, !tbaa !22
  %t6 = insertvalue %"std/prelude/f8:F8E4M3" undef, i8 %t4, 0
  store %"std/prelude/f8:F8E4M3" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/f8:F8E4M3", ptr %rv
  ret %"std/prelude/f8:F8E4M3" %rr
}

define dso_local %"std/prelude/f8:F8E5M2" @std_2fprelude_2ff8_3aF8E5M2_2ector(ptr %v0, double %a0) #0 {
entry:
  %l3 = alloca i8
  %rv = alloca %"std/prelude/f8:F8E5M2"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i8 @std_2fprelude_2ff8_2ef8E5M2Bits(double %a0)
  store i8 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i8, ptr %l3, !tbaa !22
  %t6 = insertvalue %"std/prelude/f8:F8E5M2" undef, i8 %t4, 0
  store %"std/prelude/f8:F8E5M2" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/f8:F8E5M2", ptr %rv
  ret %"std/prelude/f8:F8E5M2" %rr
}

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
declare i64 @__olang_fmt_float(ptr, i64, double, i32)
declare void @__olang_sb_add(ptr, i64)
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline

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
