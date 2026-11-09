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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/utf8:RuneIter" = type { { i64, ptr }, i64 }
@G_2estd_2futf8_2eMaxRune = constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\10\00" }>, align 8
@G_2estd_2futf8_2eReplacement = constant <{ [4 x i8] }> <{ [4 x i8] c"\FD\FF\00\00" }>, align 8
define dso_local { i32, i64 } @std_2futf8_2eCount(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i32, i64 }
  %l10 = alloca { i64, ptr }
  %l16 = alloca { i32, i64 }
  %l19 = alloca { i32, i64 }
  %l20 = alloca i32
  %rv = alloca { i32, i64 }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp slt i64 %t1, %t4
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %bb12
bb3:
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l10, !tbaa !27
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ult i8 %t17, -128
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = add i64 %t21, 1
  store i64 %t23, ptr %l1, !tbaa !24
  br label %bb10
bb6:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %t25, i64 %t26)
  %t30 = extractvalue { i32, { i32, i64 } } %t29, 1
  %t31 = extractvalue { i32, { i32, i64 } } %t29, 0
  store i32 %t31, ptr %l20
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb8, label %ok.33, !prof !99
ok.33:
  store { i32, i64 } %t30, ptr %l19
  br label %bb7
bb7:
  %t34 = load { i32, i64 }, ptr %l19
  store { i32, i64 } %t34, ptr %l16
  br label %bb9
bb8:
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = lshr i32 %t35, 16
  %t37 = and i32 %t35, 65535
  %t38 = icmp eq i32 %t36, 1
  %t39 = select i1 %t38, i32 1, i32 0
  %t40 = icmp eq i32 %t35, 0
  %t41 = shl i32 %t39, 16
  %t42 = or i32 %t41, %t37
  %t43 = select i1 %t40, i32 0, i32 %t42
  %t45 = insertvalue { i32, i64 } zeroinitializer, i32 %t43, 0
  store { i32, i64 } %t45, ptr %rv
  br label %ret
bb9:
  %t46 = load { i32, i64 }, ptr %l16
  store { i32, i64 } %t46, ptr %l3
  %t47 = getelementptr { i32, i64 }, ptr %l3, i32 0, i32 1
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = add i64 %t50, %t48
  store i64 %t54, ptr %l1, !tbaa !24
  br label %bb10
bb10:
  %t56 = load i64, ptr %l2, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  br label %bb1
bb12:
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = insertvalue { i32, i64 } zeroinitializer, i64 %t60, 1
  store { i32, i64 } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i32
  %l15 = alloca i1
  %l21 = alloca { i64, ptr }
  %l32 = alloca i1
  %l39 = alloca i1
  %l46 = alloca i1
  %l63 = alloca i64
  %l66 = alloca i64
  %l84 = alloca { i64, ptr }
  %l104 = alloca i1
  %l107 = alloca i1
  %rv = alloca { i32, { i32, i64 } }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t11 = icmp sge i64 %t5, %t8
  store i1 %t11, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l15, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = insertvalue { i32, { i32, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i32, i64 } } %t15, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t16, ptr %l21, !tbaa !27
  %t17 = load i64, ptr %l1, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t17
  %t22 = load i8, ptr %t21, !tbaa !32
  %t24 = zext i8 %t22 to i32
  store i32 %t24, ptr %l2, !tbaa !64
  %t26 = load i32, ptr %l2, !tbaa !64
  %t28 = icmp ult i32 %t26, 128
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load i32, ptr %l2, !tbaa !64
  %t33 = insertvalue { i32, i64 } undef, i32 %t30, 0
  %t34 = insertvalue { i32, i64 } %t33, i64 1, 1
  %t36 = insertvalue { i32, { i32, i64 } } zeroinitializer, { i32, i64 } %t34, 1
  store { i32, { i32, i64 } } %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store i64 0, ptr %l3, !tbaa !24
  store i32 0, ptr %l4, !tbaa !64
  store i32 0, ptr %l5, !tbaa !64
  %t37 = load i32, ptr %l2, !tbaa !64
  %t39 = icmp uge i32 %t37, 194
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load i32, ptr %l2, !tbaa !64
  %t43 = icmp ule i32 %t41, 223
  store i1 %t43, ptr %l32, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l32, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  store i64 2, ptr %l3, !tbaa !24
  %t46 = load i32, ptr %l2, !tbaa !64
  %t48 = and i32 %t46, 31
  store i32 %t48, ptr %l4, !tbaa !64
  store i32 128, ptr %l5, !tbaa !64
  br label %bb27
bb14:
  %t50 = load i32, ptr %l2, !tbaa !64
  %t52 = icmp uge i32 %t50, 224
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load i32, ptr %l2, !tbaa !64
  %t56 = icmp ule i32 %t54, 239
  store i1 %t56, ptr %l39, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb17
bb17:
  %t58 = load i1, ptr %l39, !tbaa !21
  br i1 %t58, label %bb18, label %bb19
bb18:
  store i64 3, ptr %l3, !tbaa !24
  %t59 = load i32, ptr %l2, !tbaa !64
  %t61 = and i32 %t59, 15
  store i32 %t61, ptr %l4, !tbaa !64
  store i32 2048, ptr %l5, !tbaa !64
  br label %bb26
bb19:
  %t63 = load i32, ptr %l2, !tbaa !64
  %t65 = icmp uge i32 %t63, 240
  br i1 %t65, label %bb20, label %bb21
bb20:
  %t67 = load i32, ptr %l2, !tbaa !64
  %t69 = icmp ule i32 %t67, 244
  store i1 %t69, ptr %l46, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb22
bb22:
  %t71 = load i1, ptr %l46, !tbaa !21
  br i1 %t71, label %bb23, label %bb24
bb23:
  store i64 4, ptr %l3, !tbaa !24
  %t72 = load i32, ptr %l2, !tbaa !64
  %t74 = and i32 %t72, 7
  store i32 %t74, ptr %l4, !tbaa !64
  store i32 65536, ptr %l5, !tbaa !64
  br label %bb25
bb24:
  %t77 = insertvalue { i32, { i32, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i32, i64 } } %t77, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t78 = load i64, ptr %l1, !tbaa !24
  %t79 = load i64, ptr %l3, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t83 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t88 = icmp sgt i64 %t82, %t85
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t91 = insertvalue { i32, { i32, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i32, i64 } } %t91, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  store i64 1, ptr %l6, !tbaa !24
  %t92 = load i64, ptr %l3, !tbaa !24
  store i64 %t92, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = icmp sgt i64 %t94, %t95
  br i1 %t98, label %bb31, label %bb32
bb31:
  %t100 = load i64, ptr %l8, !tbaa !24
  %t102 = icmp sgt i64 %t100, 0
  br i1 %t102, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb36
bb33:
  %t104 = load i64, ptr %l7, !tbaa !24
  %t105 = load i64, ptr %l6, !tbaa !24
  %t108 = sub i64 %t104, %t105
  %t109 = load i64, ptr %l8, !tbaa !24
  %t112 = add i64 %t108, %t109
  %t114 = sub i64 %t112, 1
  %t115 = load i64, ptr %l8, !tbaa !24
  %t118 = sdiv i64 %t114, %t115
  store i64 %t118, ptr %l66, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb35
bb35:
  %t120 = load i64, ptr %l66, !tbaa !24
  store i64 %t120, ptr %l63, !tbaa !24
  br label %bb36
bb36:
  %t121 = load i64, ptr %l63, !tbaa !24
  store i64 %t121, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb37
bb37:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t123 = load i64, ptr %l9, !tbaa !24
  %t126 = icmp slt i64 %t122, %t123
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb38, label %bb39
bb38:
  br label %bb45
bb39:
  br label %bb40
bb40:
  %t130 = load i64, ptr %l6, !tbaa !24
  %t131 = load i64, ptr %l10, !tbaa !24
  %t132 = load i64, ptr %l8, !tbaa !24
  %t135 = mul i64 %t131, %t132
  %t138 = add i64 %t130, %t135
  %t140 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t140, ptr %l84, !tbaa !27
  %t141 = load i64, ptr %l1, !tbaa !24
  %t145 = add i64 %t141, %t138
  %t147 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 %t145
  %t150 = load i8, ptr %t149, !tbaa !32
  %t152 = zext i8 %t150 to i32
  store i32 %t152, ptr %l12, !tbaa !64
  %t154 = load i32, ptr %l12, !tbaa !64
  %t156 = and i32 %t154, 192
  %t158 = icmp ne i32 %t156, 128
  br i1 %t158, label %bb41, label %bb42
bb41:
  %t161 = insertvalue { i32, { i32, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i32, i64 } } %t161, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t162 = load i32, ptr %l4, !tbaa !64
  %t164 = shl i32 %t162, 6
  %t165 = load i32, ptr %l12, !tbaa !64
  %t167 = and i32 %t165, 63
  %t170 = or i32 %t164, %t167
  store i32 %t170, ptr %l4, !tbaa !64
  br label %bb44
bb44:
  %t172 = load i64, ptr %l10, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l10, !tbaa !24
  br label %bb37
bb45:
  %t176 = load i32, ptr %l4, !tbaa !64
  %t177 = load i32, ptr %l5, !tbaa !64
  %t180 = icmp ult i32 %t176, %t177
  br i1 %t180, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb49
bb47:
  %t182 = load i32, ptr %l4, !tbaa !64
  %t185 = call i1 @std_2futf8_2estd_2futf8_3aRune_2eIsValid(i32 %t182)
  store i1 %t185, ptr %l107
  br label %bb48
bb48:
  %t186 = load i1, ptr %l107, !tbaa !21
  %t187 = xor i1 %t186, true
  store i1 %t187, ptr %l104, !tbaa !21
  br label %bb49
bb49:
  %t189 = load i1, ptr %l104, !tbaa !21
  br i1 %t189, label %bb50, label %bb51
bb50:
  %t191 = insertvalue { i32, { i32, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i32, i64 } } %t191, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t192 = load i32, ptr %l4, !tbaa !64
  %t194 = load i64, ptr %l3, !tbaa !24
  %t196 = insertvalue { i32, i64 } undef, i32 %t192, 0
  %t198 = insertvalue { i32, i64 } %t196, i64 %t194, 1
  %t200 = insertvalue { i32, { i32, i64 } } zeroinitializer, { i32, i64 } %t198, 1
  store { i32, { i32, i64 } } %t200, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i32, i64 } }, ptr %rv
  ret { i32, { i32, i64 } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2futf8_2eEncode(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %lp2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %rv = alloca { i32, { i64, ptr } }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !64
  %t3 = call i1 @std_2futf8_2estd_2futf8_3aRune_2eIsValid(i32 %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t8 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t8, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load i32, ptr %l0, !tbaa !64
  %t11 = call i64 @std_2futf8_2estd_2futf8_3aRune_2eLen(i32 %t9)
  store i64 %t11, ptr %l9
  br label %bb5
bb5:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l1, !tbaa !24
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp sge i64 %t14, 0
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t22, ptr %lp2
  %t24 = load ptr, ptr %lp2
  store { i64, ptr } %t21, ptr %t24, !tbaa !27
  %t25 = load i32, ptr %l0, !tbaa !64
  store i32 %t25, ptr %l3, !tbaa !64
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = icmp eq i64 %t28, 1
  br i1 %t30, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_bd10131a81517f5_763622b54285ac59)
  unreachable
bb8:
  %t32 = load i32, ptr %l3, !tbaa !64
  %t34 = trunc i32 %t32 to i8
  %t36 = load ptr, ptr %lp2
  %t37 = getelementptr { i64, ptr }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 0
  store i8 %t34, ptr %t39, !tbaa !32
  br label %bb16
bb9:
  %t40 = load i64, ptr %l1, !tbaa !24
  %t42 = icmp eq i64 %t40, 2
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = load i32, ptr %l3, !tbaa !64
  %t46 = lshr i32 %t44, 6
  %t48 = or i32 192, %t46
  %t50 = trunc i32 %t48 to i8
  %t52 = load ptr, ptr %lp2
  %t53 = getelementptr { i64, ptr }, ptr %t52, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 0
  store i8 %t50, ptr %t55, !tbaa !32
  %t56 = load i32, ptr %l3, !tbaa !64
  %t58 = and i32 %t56, 63
  %t60 = or i32 128, %t58
  %t62 = trunc i32 %t60 to i8
  %t64 = load ptr, ptr %lp2
  %t65 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i8, ptr %t66, i64 1
  store i8 %t62, ptr %t67, !tbaa !32
  br label %bb15
bb11:
  %t68 = load i64, ptr %l1, !tbaa !24
  %t70 = icmp eq i64 %t68, 3
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t72 = load i32, ptr %l3, !tbaa !64
  %t74 = lshr i32 %t72, 12
  %t76 = or i32 224, %t74
  %t78 = trunc i32 %t76 to i8
  %t80 = load ptr, ptr %lp2
  %t81 = getelementptr { i64, ptr }, ptr %t80, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 0
  store i8 %t78, ptr %t83, !tbaa !32
  %t84 = load i32, ptr %l3, !tbaa !64
  %t86 = lshr i32 %t84, 6
  %t88 = and i32 %t86, 63
  %t90 = or i32 128, %t88
  %t92 = trunc i32 %t90 to i8
  %t94 = load ptr, ptr %lp2
  %t95 = getelementptr { i64, ptr }, ptr %t94, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i8, ptr %t96, i64 1
  store i8 %t92, ptr %t97, !tbaa !32
  %t98 = load i32, ptr %l3, !tbaa !64
  %t100 = and i32 %t98, 63
  %t102 = or i32 128, %t100
  %t104 = trunc i32 %t102 to i8
  %t106 = load ptr, ptr %lp2
  %t107 = getelementptr { i64, ptr }, ptr %t106, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i8, ptr %t108, i64 2
  store i8 %t104, ptr %t109, !tbaa !32
  br label %bb14
bb13:
  %t110 = load i32, ptr %l3, !tbaa !64
  %t112 = lshr i32 %t110, 18
  %t114 = or i32 240, %t112
  %t116 = trunc i32 %t114 to i8
  %t118 = load ptr, ptr %lp2
  %t119 = getelementptr { i64, ptr }, ptr %t118, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i8, ptr %t120, i64 0
  store i8 %t116, ptr %t121, !tbaa !32
  %t122 = load i32, ptr %l3, !tbaa !64
  %t124 = lshr i32 %t122, 12
  %t126 = and i32 %t124, 63
  %t128 = or i32 128, %t126
  %t130 = trunc i32 %t128 to i8
  %t132 = load ptr, ptr %lp2
  %t133 = getelementptr { i64, ptr }, ptr %t132, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i8, ptr %t134, i64 1
  store i8 %t130, ptr %t135, !tbaa !32
  %t136 = load i32, ptr %l3, !tbaa !64
  %t138 = lshr i32 %t136, 6
  %t140 = and i32 %t138, 63
  %t142 = or i32 128, %t140
  %t144 = trunc i32 %t142 to i8
  %t146 = load ptr, ptr %lp2
  %t147 = getelementptr { i64, ptr }, ptr %t146, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 2
  store i8 %t144, ptr %t149, !tbaa !32
  %t150 = load i32, ptr %l3, !tbaa !64
  %t152 = and i32 %t150, 63
  %t154 = or i32 128, %t152
  %t156 = trunc i32 %t154 to i8
  %t158 = load ptr, ptr %lp2
  %t159 = getelementptr { i64, ptr }, ptr %t158, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i8, ptr %t160, i64 3
  store i8 %t156, ptr %t161, !tbaa !32
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t162 = load ptr, ptr %lp2
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  %t166 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t163, 1
  store { i32, { i64, ptr } } %t166, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2futf8_2eFromRunes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l27 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l14, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i32, ptr %t21, i64 %t18
  %t23 = load i32, ptr %t22, !tbaa !84
  store ptr %l1, ptr %l17, !tbaa !29
  %t27 = call { i32, { i64, ptr } } @std_2futf8_2eEncode(ptr %s2, i32 %t23)
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l21
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb7, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l20
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t32, ptr %l18, !tbaa !27
  br label %bb8
bb7:
  %t33 = load i32, ptr %l21, !tbaa !23
  %t34 = lshr i32 %t33, 16
  %t35 = and i32 %t33, 65535
  %t36 = icmp eq i32 %t34, 1
  %t37 = select i1 %t36, i32 1, i32 0
  %t38 = icmp eq i32 %t33, 0
  %t39 = shl i32 %t37, 16
  %t40 = or i32 %t39, %t35
  %t41 = select i1 %t38, i32 0, i32 %t40
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t43 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t41, 0
  store { i32, { i64, ptr } } %t43, ptr %rv
  br label %ret
bb8:
  %t44 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t51 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t51, { i64, ptr } %t50)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l3, !tbaa !24
  br label %bb2
bb11:
  %t58 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t58, ptr %l27
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t60 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t59, 1
  store { i32, { i64, ptr } } %t60, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local %"std/utf8:RuneIter" @std_2futf8_2eRuneIter_2eRunes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca %"std/utf8:RuneIter"
  %rv = alloca %"std/utf8:RuneIter"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"std/utf8:RuneIter" @std_2futf8_3aRuneIter_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
  store %"std/utf8:RuneIter" %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load %"std/utf8:RuneIter", ptr %l2
  store %"std/utf8:RuneIter" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/utf8:RuneIter", ptr %rv
  ret %"std/utf8:RuneIter" %rr
}

define dso_local { i32, { i64, ptr } } @std_2futf8_2eToRunes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i32, i64 }
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l25 = alloca i64
  %l28 = alloca i64
  %l46 = alloca { i32, i64 }
  %l49 = alloca { i32, i64 }
  %l50 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2futf8_2eCount(ptr %v0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l15
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l14
  br label %bb1
bb1:
  %t8 = load i64, ptr %l14, !tbaa !24
  store i64 %t8, ptr %l12, !tbaa !24
  br label %bb3
bb2:
  %t9 = load i32, ptr %l15, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  %t19 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t17, 0
  store { i32, { i64, ptr } } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = icmp sge i64 %t20, 0
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load i64, ptr %l12, !tbaa !24
  %t24 = icmp sle i64 %t23, 2305843009213693951
  br i1 %t24, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_d4fcb6f6bfa7f8e1_d40e785f87e1ab0d)
  unreachable
bb6:
  %t26 = load i64, ptr %l12, !tbaa !24
  %t27 = mul i64 %t26, 4
  %t28 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t31, ptr %lp1
  %t33 = load ptr, ptr %lp1
  store { i64, ptr } %t30, ptr %t33, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t34 = load ptr, ptr %lp1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_d4fcb6f6bfa7f8e1_d40e785f87e1ab0d)
  unreachable
bb8:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb13
bb10:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l28, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb12
bb12:
  %t65 = load i64, ptr %l28, !tbaa !24
  store i64 %t65, ptr %l25, !tbaa !24
  br label %bb13
bb13:
  %t66 = load i64, ptr %l25, !tbaa !24
  store i64 %t66, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb15, label %bb16
bb15:
  br label %bb22
bb16:
  br label %bb17
bb17:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l5, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l8, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t86 = load i64, ptr %l2, !tbaa !24
  %t89 = call { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %t85, i64 %t86)
  %t90 = extractvalue { i32, { i32, i64 } } %t89, 1
  %t91 = extractvalue { i32, { i32, i64 } } %t89, 0
  store i32 %t91, ptr %l50
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb19, label %ok.93, !prof !99
ok.93:
  store { i32, i64 } %t90, ptr %l49
  br label %bb18
bb18:
  %t94 = load { i32, i64 }, ptr %l49
  store { i32, i64 } %t94, ptr %l46
  br label %bb20
bb19:
  %t95 = load i32, ptr %l50, !tbaa !23
  %t96 = lshr i32 %t95, 16
  %t97 = and i32 %t95, 65535
  %t98 = icmp eq i32 %t96, 1
  %t99 = select i1 %t98, i32 1, i32 0
  %t100 = icmp eq i32 %t95, 0
  %t101 = shl i32 %t99, 16
  %t102 = or i32 %t101, %t97
  %t103 = select i1 %t100, i32 0, i32 %t102
  %t105 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t103, 0
  store { i32, { i64, ptr } } %t105, ptr %rv
  br label %ret
bb20:
  %t106 = load { i32, i64 }, ptr %l46
  store { i32, i64 } %t106, ptr %l9
  %t107 = getelementptr { i32, i64 }, ptr %l9, i32 0, i32 0
  %t108 = load i32, ptr %t107, !tbaa !64
  %t110 = getelementptr { i32, i64 }, ptr %l9, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t116 = load ptr, ptr %lp1
  %t118 = getelementptr { i64, ptr }, ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i32, ptr %t119, i64 %t113
  store i32 %t108, ptr %t120, !tbaa !84
  %t121 = load i64, ptr %l2, !tbaa !24
  %t125 = add i64 %t121, %t111
  store i64 %t125, ptr %l2, !tbaa !24
  br label %bb21
bb21:
  %t127 = load i64, ptr %l7, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l7, !tbaa !24
  br label %bb14
bb22:
  %t131 = load ptr, ptr %lp1
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  %t134 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t132, 1
  store { i32, { i64, ptr } } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @std_2futf8_2eValid(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i32, i64 }
  %l9 = alloca { i64, ptr }
  %l15 = alloca { i32, i64 }
  %l18 = alloca { i32, i64 }
  %l19 = alloca i32
  %l21 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp slt i64 %t1, %t4
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l9, !tbaa !27
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ult i8 %t17, -128
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = add i64 %t21, 1
  store i64 %t23, ptr %l1, !tbaa !24
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %t25, i64 %t26)
  %t30 = extractvalue { i32, { i32, i64 } } %t29, 1
  %t31 = extractvalue { i32, { i32, i64 } } %t29, 0
  store i32 %t31, ptr %l19
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb9, label %ok.33, !prof !99
ok.33:
  store { i32, i64 } %t30, ptr %l18
  br label %bb8
bb8:
  %t34 = load { i32, i64 }, ptr %l18
  store { i32, i64 } %t34, ptr %l15
  br label %bb11
bb9:
  %t35 = load i32, ptr %l19, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  %t40 = load { i32, i64 }, ptr %l15
  store { i32, i64 } %t40, ptr %l2
  %t41 = getelementptr { i32, i64 }, ptr %l2, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = load i64, ptr %l1, !tbaa !24
  %t48 = add i64 %t44, %t42
  store i64 %t48, ptr %l1, !tbaa !24
  br label %bb12
bb12:
  br label %bb1
bb13:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i32 } @std_2futf8_2estd_2futf8_3aRuneIter_2eNext(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca { i32, i64 }
  %l13 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l24 = alloca { i32, i64 }
  %l29 = alloca { i32, i64 }
  %l30 = alloca i32
  %l32 = alloca i1
  %l33 = alloca ptr
  %l39 = alloca ptr
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/utf8:RuneIter", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/utf8:RuneIter", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp sge i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t16 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t16, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/utf8:RuneIter", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l13, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/utf8:RuneIter", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 %t24
  %t29 = load i8, ptr %t28, !tbaa !32
  store i8 %t29, ptr %l1, !tbaa !22
  %t31 = load i8, ptr %l1, !tbaa !22
  %t33 = icmp ult i8 %t31, -128
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l19, !tbaa !29
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = getelementptr %"std/utf8:RuneIter", ptr %t36, i32 0, i32 1
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = add i64 %t38, 1
  %t42 = load ptr, ptr %l19, !tbaa !29
  %t43 = getelementptr %"std/utf8:RuneIter", ptr %t42, i32 0, i32 1
  store i64 %t40, ptr %t43, !tbaa !24
  %t44 = load i8, ptr %l1, !tbaa !22
  %t46 = zext i8 %t44 to i32
  %t48 = insertvalue { i32, i32 } zeroinitializer, i32 %t46, 1
  store { i32, i32 } %t48, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"std/utf8:RuneIter", ptr %t49, i32 0, i32 0
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/utf8:RuneIter", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %t55, !tbaa !24
  %t59 = call { i32, { i32, i64 } } @std_2futf8_2eDecode(ptr %v0, { i64, ptr } %t52, i64 %t56)
  %t60 = extractvalue { i32, { i32, i64 } } %t59, 1
  %t61 = extractvalue { i32, { i32, i64 } } %t59, 0
  store i32 %t61, ptr %l30
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb8, label %ok.63, !prof !99
ok.63:
  store { i32, i64 } %t60, ptr %l29
  br label %bb7
bb7:
  %t64 = load { i32, i64 }, ptr %l29
  store { i32, i64 } %t64, ptr %l24
  br label %bb10
bb8:
  %t65 = load i32, ptr %l30, !tbaa !23
  %t66 = ashr i32 %t65, 16
  %t68 = icmp eq i32 %t66, 1
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb9
bb9:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l33, !tbaa !29
  %t70 = load ptr, ptr %l33, !tbaa !29
  %t71 = getelementptr %"std/utf8:RuneIter", ptr %t70, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = add i64 %t72, 1
  %t76 = load ptr, ptr %l33, !tbaa !29
  %t77 = getelementptr %"std/utf8:RuneIter", ptr %t76, i32 0, i32 1
  store i64 %t74, ptr %t77, !tbaa !24
  %t78 = load i32, ptr @G_2estd_2futf8_2eReplacement, !tbaa !64
  %t80 = insertvalue { i32, i32 } zeroinitializer, i32 %t78, 1
  store { i32, i32 } %t80, ptr %rv
  br label %ret
bb10:
  %t81 = load { i32, i64 }, ptr %l24
  store { i32, i64 } %t81, ptr %l2
  %t82 = getelementptr { i32, i64 }, ptr %l2, i32 0, i32 0
  %t83 = load i32, ptr %t82, !tbaa !64
  %t85 = getelementptr { i32, i64 }, ptr %l2, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l39, !tbaa !29
  %t89 = load ptr, ptr %l39, !tbaa !29
  %t90 = getelementptr %"std/utf8:RuneIter", ptr %t89, i32 0, i32 1
  %t91 = load i64, ptr %t90, !tbaa !24
  %t95 = add i64 %t91, %t86
  %t97 = load ptr, ptr %l39, !tbaa !29
  %t98 = getelementptr %"std/utf8:RuneIter", ptr %t97, i32 0, i32 1
  store i64 %t95, ptr %t98, !tbaa !24
  %t101 = insertvalue { i32, i32 } zeroinitializer, i32 %t83, 1
  store { i32, i32 } %t101, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i1 @std_2futf8_2estd_2futf8_3aRune_2eIsValid(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l4 = alloca i1
  %l7 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !64
  %t2 = load i32, ptr @G_2estd_2futf8_2eMaxRune, !tbaa !64
  %t5 = icmp ule i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i32, ptr %l0, !tbaa !64
  %t9 = icmp uge i32 %t7, 55296
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb6
bb3:
  %t11 = load i32, ptr %l0, !tbaa !64
  %t13 = icmp ule i32 %t11, 57343
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l7, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l4, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l4, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2futf8_2estd_2futf8_3aRune_2eLen(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l8 = alloca i1
  %rv = alloca i64
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !tbaa !64
  %t3 = icmp ult i32 %t1, 128
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load i32, ptr %l0, !tbaa !64
  %t8 = icmp ult i32 %t6, 2048
  br i1 %t8, label %bb4, label %bb5
bb4:
  store i64 2, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load i32, ptr %l0, !tbaa !64
  %t13 = call i1 @std_2futf8_2estd_2futf8_3aRune_2eIsValid(i32 %t11)
  store i1 %t13, ptr %l8
  br label %bb7
bb7:
  %t14 = load i1, ptr %l8, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb8, label %bb9
bb8:
  store i64 3, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t18 = load i32, ptr %l0, !tbaa !64
  %t20 = icmp ult i32 %t18, 65536
  br i1 %t20, label %bb11, label %bb12
bb11:
  store i64 3, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  store i64 4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/utf8:RuneIter" @std_2futf8_3aRuneIter_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca %"std/utf8:RuneIter"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"std/utf8:RuneIter" undef, { i64, ptr } %a0, 0
  %t6 = insertvalue %"std/utf8:RuneIter" %t4, i64 0, 1
  store %"std/utf8:RuneIter" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"std/utf8:RuneIter", ptr %rv
  ret %"std/utf8:RuneIter" %rr
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_loc_bd10131a81517f5_763622b54285ac59 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_d4fcb6f6bfa7f8e1_d40e785f87e1ab0d = external constant [0 x i8]

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
