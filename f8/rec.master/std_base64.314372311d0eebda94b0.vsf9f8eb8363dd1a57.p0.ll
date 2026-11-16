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
@G_2estd_2fbase64_2estandard = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00", ptr @G_2estd_2fbase64_2estandard.k1 }>, align 8
@G_2estd_2fbase64_2estandard.k1 = internal global <{ [64 x i8] }> <{ [64 x i8] c"\41\42\43\44\45\46\47\48\49\4A\4B\4C\4D\4E\4F\50\51\52\53\54\55\56\57\58\59\5A\61\62\63\64\65\66\67\68\69\6A\6B\6C\6D\6E\6F\70\71\72\73\74\75\76\77\78\79\7A\30\31\32\33\34\35\36\37\38\39\2B\2F" }>, align 64
@G_2estd_2fbase64_2eurlSafe = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00", ptr @G_2estd_2fbase64_2eurlSafe.k1 }>, align 8
@G_2estd_2fbase64_2eurlSafe.k1 = internal global <{ [64 x i8] }> <{ [64 x i8] c"\41\42\43\44\45\46\47\48\49\4A\4B\4C\4D\4E\4F\50\51\52\53\54\55\56\57\58\59\5A\61\62\63\64\65\66\67\68\69\6A\6B\6C\6D\6E\6F\70\71\72\73\74\75\76\77\78\79\7A\30\31\32\33\34\35\36\37\38\39\2D\5F" }>, align 64
define dso_local { i32, { i64, ptr } } @std_2fbase64_2eDecode(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, { i64, ptr } } @std_2fbase64_2edecodeWith(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 false)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t8, ptr %l1, !tbaa !27
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
  %t19 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t17, 0
  store { i32, { i64, ptr } } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t20, 1
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fbase64_2eDecodeURL(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, { i64, ptr } } @std_2fbase64_2edecodeWith(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 true)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t8, ptr %l1, !tbaa !27
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
  %t19 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t17, 0
  store { i32, { i64, ptr } } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t20, 1
  store { i32, { i64, ptr } } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @std_2fbase64_2eEncode(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr @G_2estd_2fbase64_2estandard, !tbaa !27
  %t3 = load ptr, ptr @__olang_prog_scope
  %t6 = call { i64, ptr } @std_2fbase64_2eencodeWith(ptr %v0, ptr %t3, ptr %v1, { i64, ptr } %a0, { i64, ptr } %t2, i1 true)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fbase64_2eEncodeURL(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr @G_2estd_2fbase64_2eurlSafe, !tbaa !27
  %t3 = load ptr, ptr @__olang_prog_scope
  %t6 = call { i64, ptr } @std_2fbase64_2eencodeWith(ptr %v0, ptr %t3, ptr %v1, { i64, ptr } %a0, { i64, ptr } %t2, i1 false)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fbase64_2edecodeWith(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i1
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l48 = alloca i64
  %l52 = alloca i64
  %l56 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l84 = alloca { i64, ptr }
  %l88 = alloca i64
  %l106 = alloca i32
  %l116 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i1, ptr %l1, !tbaa !21
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = srem i64 %t9, 4
  %t13 = icmp ne i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  br label %bb18
bb3:
  %t16 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t16, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t21, ptr %l25, !tbaa !27
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 %t24
  %t29 = load i8, ptr %t28, !tbaa !32
  %t31 = icmp eq i8 %t29, 61
  store i1 %t31, ptr %l24, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l24, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t34, 1
  store i64 %t36, ptr %l2, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t42, ptr %l35, !tbaa !27
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = sub i64 %t43, 1
  %t47 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i8, ptr %t48, i64 %t45
  %t50 = load i8, ptr %t49, !tbaa !32
  %t52 = icmp eq i8 %t50, 61
  store i1 %t52, ptr %l34, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l34, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l2, !tbaa !24
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = srem i64 %t59, 4
  %t63 = icmp eq i64 %t61, 1
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t66 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t66, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = sdiv i64 %t67, 4
  %t71 = mul i64 %t69, 3
  store i64 %t71, ptr %l48, !tbaa !24
  %t72 = load i64, ptr %l2, !tbaa !24
  %t74 = srem i64 %t72, 4
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb22, label %bb23
bb22:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t80 = srem i64 %t78, 4
  %t82 = sub i64 %t80, 1
  store i64 %t82, ptr %l52, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb24
bb24:
  %t84 = load i64, ptr %l48, !tbaa !24
  %t85 = load i64, ptr %l52, !tbaa !24
  %t86 = add i64 %t84, %t85
  store i64 %t86, ptr %l56, !tbaa !24
  %t87 = load i64, ptr %l56, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load i64, ptr %l56, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  %t95 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t95, ptr %lp3
  %t97 = load ptr, ptr %lp3
  store { i64, ptr } %t94, ptr %t97, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  store i32 0, ptr %l5, !tbaa !64
  store i64 0, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t98 = load i64, ptr %l2, !tbaa !24
  store i64 %t98, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t100 = load i64, ptr %l8, !tbaa !24
  %t101 = load i64, ptr %l7, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_9d7c8b50488313b1_ded88850fbd45e45)
  unreachable
bb27:
  %t106 = load i64, ptr %l9, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb32
bb29:
  %t110 = load i64, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l7, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l9, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l66, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb31
bb31:
  %t126 = load i64, ptr %l66, !tbaa !24
  store i64 %t126, ptr %l63, !tbaa !24
  br label %bb32
bb32:
  %t127 = load i64, ptr %l63, !tbaa !24
  store i64 %t127, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb33
bb33:
  %t128 = load i64, ptr %l11, !tbaa !24
  %t129 = load i64, ptr %l10, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb34, label %bb35
bb34:
  br label %bb45
bb35:
  br label %bb36
bb36:
  %t136 = load i64, ptr %l7, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t138 = load i64, ptr %l9, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  %t146 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t146, ptr %l84, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i8, ptr %t150, i64 %t144
  %t152 = load i8, ptr %t151, !tbaa !32
  %t153 = load i1, ptr %l1, !tbaa !21
  %t156 = call i64 @std_2fbase64_2evalueOf(i8 %t152, i1 %t153)
  store i64 %t156, ptr %l88
  br label %bb37
bb37:
  %t157 = load i64, ptr %l88, !tbaa !24
  store i64 %t157, ptr %l13, !tbaa !24
  %t158 = load i64, ptr %l13, !tbaa !24
  %t160 = icmp slt i64 %t158, 0
  br i1 %t160, label %bb38, label %bb39
bb38:
  %t163 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t163, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t164 = load i32, ptr %l5, !tbaa !64
  %t166 = shl i32 %t164, 6
  %t167 = load i64, ptr %l13, !tbaa !24
  %t169 = trunc i64 %t167 to i32
  %t172 = or i32 %t166, %t169
  store i32 %t172, ptr %l5, !tbaa !64
  %t174 = load i64, ptr %l6, !tbaa !24
  %t176 = add i64 %t174, 6
  store i64 %t176, ptr %l6, !tbaa !24
  %t178 = load i64, ptr %l6, !tbaa !24
  %t180 = icmp sge i64 %t178, 8
  br i1 %t180, label %bb41, label %bb42
bb41:
  %t182 = load i64, ptr %l6, !tbaa !24
  %t184 = sub i64 %t182, 8
  store i64 %t184, ptr %l6, !tbaa !24
  %t186 = load i64, ptr %l4, !tbaa !24
  %t187 = load i32, ptr %l5, !tbaa !64
  %t188 = load i64, ptr %l6, !tbaa !24
  %t190 = trunc i64 %t188 to i32
  store i32 %t190, ptr %l106, !tbaa !64
  %t192 = load i32, ptr %l106, !tbaa !64
  %t193 = load i32, ptr %l106, !tbaa !64
  %t194 = lshr i32 %t187, %t193
  %t196 = and i32 %t194, 255
  %t198 = trunc i32 %t196 to i8
  %t200 = load ptr, ptr %lp3
  %t202 = getelementptr { i64, ptr }, ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i8, ptr %t203, i64 %t186
  store i8 %t198, ptr %t204, !tbaa !32
  %t205 = load i64, ptr %l4, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l4, !tbaa !24
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t209 = load i64, ptr %l11, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l11, !tbaa !24
  br label %bb33
bb45:
  %t213 = load i32, ptr %l5, !tbaa !64
  %t214 = load i64, ptr %l6, !tbaa !24
  %t216 = trunc i64 %t214 to i32
  store i32 %t216, ptr %l116, !tbaa !64
  %t217 = load i32, ptr %l116, !tbaa !64
  %t218 = load i32, ptr %l116, !tbaa !64
  %t219 = shl i32 1, %t218
  %t221 = sub i32 %t219, 1
  %t224 = and i32 %t213, %t221
  %t226 = icmp ne i32 %t224, 0
  br i1 %t226, label %bb46, label %bb47
bb46:
  %t229 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t229, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t230 = load ptr, ptr %lp3
  %t231 = load { i64, ptr }, ptr %t230, !tbaa !27
  %t233 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t231, 1
  store { i32, { i64, ptr } } %t233, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @std_2fbase64_2eencodeWith(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i32
  %l26 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l60 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = sdiv i64 %t3, 3
  store i64 %t5, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = srem i64 %t9, 3
  store i64 %t11, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = mul i64 %t13, 4
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l5, !tbaa !24
  store i64 %t21, ptr %l26, !tbaa !24
  %t22 = load i1, ptr %l2, !tbaa !21
  br i1 %t22, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  store i64 4, ptr %l28, !tbaa !24
  br label %bb5
bb4:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l28, !tbaa !24
  br label %bb5
bb5:
  %t28 = load i64, ptr %l26, !tbaa !24
  %t29 = load i64, ptr %l28, !tbaa !24
  %t30 = add i64 %t28, %t29
  store i64 %t30, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l5, !tbaa !24
  store i64 %t32, ptr %l32, !tbaa !24
  %t33 = load i64, ptr %l32, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load i64, ptr %l32, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t41 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t41, ptr %lp6
  %t43 = load ptr, ptr %lp6
  store { i64, ptr } %t40, ptr %t43, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l3, !tbaa !24
  store i64 %t44, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3f1284a202a21fb9_a1ae73835ae6823d)
  unreachable
bb9:
  %t52 = load i64, ptr %l10, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb14
bb11:
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l10, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l10, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l42, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb13
bb13:
  %t72 = load i64, ptr %l42, !tbaa !24
  store i64 %t72, ptr %l39, !tbaa !24
  br label %bb14
bb14:
  %t73 = load i64, ptr %l39, !tbaa !24
  store i64 %t73, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb15
bb15:
  %t74 = load i64, ptr %l12, !tbaa !24
  %t75 = load i64, ptr %l11, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l12, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l13, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t92, ptr %l60, !tbaa !27
  %t93 = load i64, ptr %l13, !tbaa !24
  %t95 = mul i64 3, %t93
  %t97 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i8, ptr %t98, i64 %t95
  %t100 = load i8, ptr %t99, !tbaa !32
  %t102 = zext i8 %t100 to i32
  %t104 = shl i32 %t102, 16
  %t105 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t105, ptr %l66, !tbaa !27
  %t106 = load i64, ptr %l13, !tbaa !24
  %t108 = mul i64 3, %t106
  %t110 = add i64 %t108, 1
  %t112 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i8, ptr %t113, i64 %t110
  %t115 = load i8, ptr %t114, !tbaa !32
  %t117 = zext i8 %t115 to i32
  %t119 = shl i32 %t117, 8
  %t122 = or i32 %t104, %t119
  %t123 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t123, ptr %l74, !tbaa !27
  %t124 = load i64, ptr %l13, !tbaa !24
  %t126 = mul i64 3, %t124
  %t128 = add i64 %t126, 2
  %t130 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i8, ptr %t131, i64 %t128
  %t133 = load i8, ptr %t132, !tbaa !32
  %t135 = zext i8 %t133 to i32
  %t138 = or i32 %t122, %t135
  store i32 %t138, ptr %l14, !tbaa !64
  %t140 = load i64, ptr %l7, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t141, ptr %l82, !tbaa !27
  %t142 = load i32, ptr %l14, !tbaa !64
  %t144 = lshr i32 %t142, 18
  %t146 = zext i32 %t144 to i64
  %t147 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 %t146
  %t150 = load i8, ptr %t149, !tbaa !32
  %t152 = load ptr, ptr %lp6
  %t154 = getelementptr { i64, ptr }, ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i8, ptr %t155, i64 %t140
  store i8 %t150, ptr %t156, !tbaa !32
  %t157 = load i64, ptr %l7, !tbaa !24
  %t159 = add i64 %t157, 1
  %t160 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t160, ptr %l88, !tbaa !27
  %t161 = load i32, ptr %l14, !tbaa !64
  %t163 = lshr i32 %t161, 12
  %t165 = and i32 %t163, 63
  %t167 = zext i32 %t165 to i64
  %t168 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i8, ptr %t169, i64 %t167
  %t171 = load i8, ptr %t170, !tbaa !32
  %t173 = load ptr, ptr %lp6
  %t175 = getelementptr { i64, ptr }, ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t159
  store i8 %t171, ptr %t177, !tbaa !32
  %t178 = load i64, ptr %l7, !tbaa !24
  %t180 = add i64 %t178, 2
  %t181 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t181, ptr %l95, !tbaa !27
  %t182 = load i32, ptr %l14, !tbaa !64
  %t184 = lshr i32 %t182, 6
  %t186 = and i32 %t184, 63
  %t188 = zext i32 %t186 to i64
  %t189 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i8, ptr %t190, i64 %t188
  %t192 = load i8, ptr %t191, !tbaa !32
  %t194 = load ptr, ptr %lp6
  %t196 = getelementptr { i64, ptr }, ptr %t194, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr i8, ptr %t197, i64 %t180
  store i8 %t192, ptr %t198, !tbaa !32
  %t199 = load i64, ptr %l7, !tbaa !24
  %t201 = add i64 %t199, 3
  %t202 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t202, ptr %l102, !tbaa !27
  %t203 = load i32, ptr %l14, !tbaa !64
  %t205 = and i32 %t203, 63
  %t207 = zext i32 %t205 to i64
  %t208 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i8, ptr %t209, i64 %t207
  %t211 = load i8, ptr %t210, !tbaa !32
  %t213 = load ptr, ptr %lp6
  %t215 = getelementptr { i64, ptr }, ptr %t213, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i8, ptr %t216, i64 %t201
  store i8 %t211, ptr %t217, !tbaa !32
  %t218 = load i64, ptr %l7, !tbaa !24
  %t220 = add i64 %t218, 4
  store i64 %t220, ptr %l7, !tbaa !24
  br label %bb19
bb19:
  %t222 = load i64, ptr %l12, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l12, !tbaa !24
  br label %bb15
bb20:
  %t226 = load i64, ptr %l4, !tbaa !24
  %t228 = icmp sgt i64 %t226, 0
  br i1 %t228, label %bb21, label %bb22
bb21:
  %t230 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t230, ptr %l112, !tbaa !27
  %t231 = load i64, ptr %l3, !tbaa !24
  %t233 = mul i64 3, %t231
  %t235 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i8, ptr %t236, i64 %t233
  %t238 = load i8, ptr %t237, !tbaa !32
  %t240 = zext i8 %t238 to i32
  %t242 = shl i32 %t240, 16
  store i32 %t242, ptr %l15, !tbaa !64
  %t244 = load i64, ptr %l4, !tbaa !24
  %t246 = icmp eq i64 %t244, 2
  br i1 %t246, label %bb23, label %bb24
bb22:
  br label %bb35
bb23:
  %t248 = load i32, ptr %l15, !tbaa !64
  %t249 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t249, ptr %l121, !tbaa !27
  %t250 = load i64, ptr %l3, !tbaa !24
  %t252 = mul i64 3, %t250
  %t254 = add i64 %t252, 1
  %t256 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr i8, ptr %t257, i64 %t254
  %t259 = load i8, ptr %t258, !tbaa !32
  %t261 = zext i8 %t259 to i32
  %t263 = shl i32 %t261, 8
  %t266 = or i32 %t248, %t263
  store i32 %t266, ptr %l15, !tbaa !64
  br label %bb25
bb24:
  br label %bb25
bb25:
  %t268 = load i64, ptr %l7, !tbaa !24
  %t269 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t269, ptr %l130, !tbaa !27
  %t270 = load i32, ptr %l15, !tbaa !64
  %t272 = lshr i32 %t270, 18
  %t274 = zext i32 %t272 to i64
  %t275 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !27
  %t277 = getelementptr i8, ptr %t276, i64 %t274
  %t278 = load i8, ptr %t277, !tbaa !32
  %t280 = load ptr, ptr %lp6
  %t282 = getelementptr { i64, ptr }, ptr %t280, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr i8, ptr %t283, i64 %t268
  store i8 %t278, ptr %t284, !tbaa !32
  %t285 = load i64, ptr %l7, !tbaa !24
  %t287 = add i64 %t285, 1
  %t288 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t288, ptr %l136, !tbaa !27
  %t289 = load i32, ptr %l15, !tbaa !64
  %t291 = lshr i32 %t289, 12
  %t293 = and i32 %t291, 63
  %t295 = zext i32 %t293 to i64
  %t296 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr i8, ptr %t297, i64 %t295
  %t299 = load i8, ptr %t298, !tbaa !32
  %t301 = load ptr, ptr %lp6
  %t303 = getelementptr { i64, ptr }, ptr %t301, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr i8, ptr %t304, i64 %t287
  store i8 %t299, ptr %t305, !tbaa !32
  %t306 = load i64, ptr %l4, !tbaa !24
  %t308 = icmp eq i64 %t306, 2
  br i1 %t308, label %bb26, label %bb27
bb26:
  %t310 = load i64, ptr %l7, !tbaa !24
  %t312 = add i64 %t310, 2
  %t313 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t313, ptr %l145, !tbaa !27
  %t314 = load i32, ptr %l15, !tbaa !64
  %t316 = lshr i32 %t314, 6
  %t318 = and i32 %t316, 63
  %t320 = zext i32 %t318 to i64
  %t321 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr i8, ptr %t322, i64 %t320
  %t324 = load i8, ptr %t323, !tbaa !32
  %t326 = load ptr, ptr %lp6
  %t328 = getelementptr { i64, ptr }, ptr %t326, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr i8, ptr %t329, i64 %t312
  store i8 %t324, ptr %t330, !tbaa !32
  br label %bb31
bb27:
  %t331 = load i1, ptr %l2, !tbaa !21
  br i1 %t331, label %bb28, label %bb29
bb28:
  %t333 = load i64, ptr %l7, !tbaa !24
  %t335 = add i64 %t333, 2
  %t336 = load ptr, ptr %lp6
  %t338 = getelementptr { i64, ptr }, ptr %t336, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr i8, ptr %t339, i64 %t335
  store i8 61, ptr %t340, !tbaa !32
  br label %bb30
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t341 = load i1, ptr %l2, !tbaa !21
  br i1 %t341, label %bb32, label %bb33
bb32:
  %t343 = load i64, ptr %l7, !tbaa !24
  %t345 = add i64 %t343, 3
  %t346 = load ptr, ptr %lp6
  %t348 = getelementptr { i64, ptr }, ptr %t346, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = getelementptr i8, ptr %t349, i64 %t345
  store i8 61, ptr %t350, !tbaa !32
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t351 = load ptr, ptr %lp6
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  store { i64, ptr } %t352, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fbase64_2evalueOf(i8 %a0, i1 %a1) #0 {
entry:
  %l0 = alloca i8
  %l1 = alloca i1
  %l4 = alloca i1
  %l12 = alloca i1
  %l21 = alloca i1
  %l28 = alloca i8
  %l30 = alloca i8
  %l33 = alloca i8
  %l35 = alloca i8
  %rv = alloca i64
  store i8 %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp uge i8 %t1, 65
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp ule i8 %t5, 90
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = sub i8 %t10, 65
  %t14 = zext i8 %t12 to i64
  store i64 %t14, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load i8, ptr %l0, !tbaa !22
  %t18 = icmp uge i8 %t16, 97
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp ule i8 %t20, 122
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = sub i8 %t25, 97
  %t29 = zext i8 %t27 to i64
  %t31 = add i64 %t29, 26
  store i64 %t31, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t33 = load i8, ptr %l0, !tbaa !22
  %t35 = icmp uge i8 %t33, 48
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t37 = load i8, ptr %l0, !tbaa !22
  %t39 = icmp ule i8 %t37, 57
  store i1 %t39, ptr %l21, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb15
bb15:
  %t41 = load i1, ptr %l21, !tbaa !21
  br i1 %t41, label %bb16, label %bb17
bb16:
  %t42 = load i8, ptr %l0, !tbaa !22
  %t44 = sub i8 %t42, 48
  %t46 = zext i8 %t44 to i64
  %t48 = add i64 %t46, 52
  store i64 %t48, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t50 = load i8, ptr %l0, !tbaa !22
  store i8 %t50, ptr %l28, !tbaa !22
  %t51 = load i1, ptr %l1, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  store i8 45, ptr %l30, !tbaa !22
  br label %bb21
bb20:
  store i8 43, ptr %l30, !tbaa !22
  br label %bb21
bb21:
  %t53 = load i8, ptr %l28, !tbaa !22
  %t54 = load i8, ptr %l30, !tbaa !22
  %t55 = icmp eq i8 %t53, %t54
  br i1 %t55, label %bb22, label %bb23
bb22:
  store i64 62, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t58 = load i8, ptr %l0, !tbaa !22
  store i8 %t58, ptr %l33, !tbaa !22
  %t59 = load i1, ptr %l1, !tbaa !21
  br i1 %t59, label %bb25, label %bb26
bb25:
  store i8 95, ptr %l35, !tbaa !22
  br label %bb27
bb26:
  store i8 47, ptr %l35, !tbaa !22
  br label %bb27
bb27:
  %t61 = load i8, ptr %l33, !tbaa !22
  %t62 = load i8, ptr %l35, !tbaa !22
  %t63 = icmp eq i8 %t61, %t62
  br i1 %t63, label %bb28, label %bb29
bb28:
  store i64 63, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@olang_loc_9d7c8b50488313b1_ded88850fbd45e45 = external constant [0 x i8]
@olang_loc_3f1284a202a21fb9_a1ae73835ae6823d = external constant [0 x i8]

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
