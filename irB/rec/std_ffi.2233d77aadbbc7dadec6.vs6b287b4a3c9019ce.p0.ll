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
define dso_local i8 @std_2fffi_2eArrayOf(i32 %a0) #0 {
entry:
  %l2 = alloca i8
  %rv = alloca i8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i8 @std_2fffi_2eCode(i32 %a0)
  store i8 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i8, ptr %l2, !tbaa !22
  %t5 = or i8 %t4, -128
  store i8 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local { i32, i64 } @std_2fffi_2eCall(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i8 %a3, i64 %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i8
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i8
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l26 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l47 = alloca i1
  %l57 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l76 = alloca i64
  %l87 = alloca { i64, ptr }
  %l106 = alloca i32
  %l120 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i8 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l5, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l8, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb22
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t15, ptr %l26, !tbaa !27
  %t16 = load i64, ptr %l7, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l9, !tbaa !22
  %t23 = load i8, ptr %l9, !tbaa !22
  %t25 = icmp eq i8 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t28 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t28, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t29 = load i8, ptr %l9, !tbaa !22
  %t31 = icmp ult i8 %t29, -128
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l5, !tbaa !24
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t43 = icmp sge i64 %t37, %t40
  br i1 %t43, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t46 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t46, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t47, ptr %l41, !tbaa !27
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i64, ptr %t51, i64 %t48
  %t53 = load i64, ptr %t52, !tbaa !85
  store i64 %t53, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t58 = icmp slt i64 %t56, 0
  br i1 %t58, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb16
bb15:
  %t60 = load i64, ptr %l10, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = load i64, ptr %l5, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t69 = sub i64 %t67, 1
  %t71 = mul i64 %t69, 8
  %t74 = icmp sgt i64 %t60, %t71
  store i1 %t74, ptr %l47, !tbaa !21
  br label %bb16
bb16:
  %t76 = load i1, ptr %l47, !tbaa !21
  br i1 %t76, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t78 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t78, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t79 = load i64, ptr %l5, !tbaa !24
  store i64 %t79, ptr %l57, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  store i64 %t80, ptr %l58, !tbaa !24
  %t81 = load i8, ptr %l9, !tbaa !22
  %t83 = and i8 %t81, 127
  %t85 = call i64 @std_2fffi_2ewidth(i8 %t83)
  store i64 %t85, ptr %l61
  br label %bb20
bb20:
  %t86 = load i64, ptr %l58, !tbaa !24
  %t87 = load i64, ptr %l61, !tbaa !24
  %t88 = mul i64 %t86, %t87
  %t90 = add i64 %t88, 7
  %t92 = sdiv i64 %t90, 8
  %t94 = add i64 1, %t92
  %t95 = load i64, ptr %l57, !tbaa !24
  %t97 = add i64 %t95, %t94
  store i64 %t97, ptr %l5, !tbaa !24
  br label %bb21
bb21:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l7, !tbaa !24
  br label %bb1
bb22:
  %t103 = load i64, ptr %l5, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t109 = icmp sgt i64 %t103, %t106
  br i1 %t109, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t112 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t112, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t113 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l76, !tbaa !24
  %t118 = load i64, ptr %l76, !tbaa !24
  %t119 = icmp sge i64 %t118, 0
  br i1 %t119, label %bb26, label %bb27
bb26:
  %t121 = load i64, ptr %l76, !tbaa !24
  %t122 = mul i64 %t121, 1
  %t123 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t122)
  %t124 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  store { i64, ptr } %t125, ptr %l11, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t127, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t129 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l14, !tbaa !24
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_8abc9384c4eef1e5_cd004ffb84c268d1)
  unreachable
bb28:
  %t133 = load i64, ptr %l13, !tbaa !24
  %t134 = load i64, ptr %l14, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t141 = load i64, ptr %l13, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t143, ptr %l87, !tbaa !27
  %t144 = load i64, ptr %l13, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i8, ptr %t147, i64 %t144
  %t149 = load i8, ptr %t148, !tbaa !32
  %t155 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i8, ptr %t156, i64 %t141
  store i8 %t149, ptr %t157, !tbaa !32
  br label %bb32
bb32:
  %t158 = load i64, ptr %l13, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l13, !tbaa !24
  br label %bb28
bb33:
  %t164 = extractvalue { i64, ptr } %a0, 1
  %t165 = extractvalue { i64, ptr } %a0, 0
  %t166 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t168 = add i64 %t165, %t167
  %t169 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t168)
  call void @olang_textcopy(ptr %t169, ptr %t164, i64 %t165)
  %t170 = getelementptr i8, ptr %t169, i64 %t165
  call void @olang_textcopy(ptr %t170, ptr %t166, i64 %t167)
  %t171 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t169, 1
  store { i64, ptr } %t172, ptr %l17, !tbaa !27
  %t174 = load i64, ptr %l4, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t180 = icmp sgt i64 %t174, %t177
  br i1 %t180, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t183 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t183, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t184 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t187 = load i8, ptr %l3, !tbaa !22
  %t188 = load i64, ptr %l4, !tbaa !24
  %t190 = extractvalue { i64, ptr } %t184, 1
  %t191 = extractvalue { i64, ptr } %t184, 0
  %t193 = extractvalue { i64, ptr } %t186, 1
  %t194 = extractvalue { i64, ptr } %t186, 0
  %t197 = call i32 @__olang_dyncall_var_check(ptr %t190, ptr %t193, i8 zeroext %t187, i64 %t188)
  store i32 %t197, ptr %l106
  br label %bb37
bb37:
  %t198 = load i32, ptr %l106, !tbaa !23
  store i32 %t198, ptr %l18, !tbaa !23
  %t199 = load i32, ptr %l18, !tbaa !23
  %t201 = icmp eq i32 %t199, 1
  br i1 %t201, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t204 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t204, ptr %rv
  br label %ret
bb41:
  %t205 = load i32, ptr %l18, !tbaa !23
  %t207 = icmp eq i32 %t205, 2
  br i1 %t207, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t210 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t210, ptr %rv
  br label %ret
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_ff20c9fa943c3ec7_a348c6c6ec1ff0ab)
  unreachable
bb50:
  %t211 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t216 = load i8, ptr %l3, !tbaa !22
  %t217 = load i64, ptr %l4, !tbaa !24
  %t219 = extractvalue { i64, ptr } %t211, 1
  %t220 = extractvalue { i64, ptr } %t211, 0
  %t222 = extractvalue { i64, ptr } %t213, 1
  %t223 = extractvalue { i64, ptr } %t213, 0
  %t225 = extractvalue { i64, ptr } %t214, 1
  %t226 = extractvalue { i64, ptr } %t214, 0
  %t229 = call i64 @__olang_dyncall_var(ptr %t219, ptr %t222, ptr %t225, i8 zeroext %t216, i64 %t217)
  store i64 %t229, ptr %l120
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t230 = load i64, ptr %l120, !tbaa !65
  %t231 = insertvalue { i32, i64 } zeroinitializer, i64 %t230, 1
  store { i32, i64 } %t231, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i8 @std_2fffi_2eCode(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i8
  %rv = alloca i8
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i8 1, ptr %l1, !tbaa !22
  br label %bb49
bb4:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t8 = trunc i64 1 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i8 2, ptr %l1, !tbaa !22
  br label %bb49
bb8:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t13 = trunc i64 2 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i8 3, ptr %l1, !tbaa !22
  br label %bb49
bb12:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t18 = trunc i64 3 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i8 4, ptr %l1, !tbaa !22
  br label %bb49
bb16:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t23 = trunc i64 4 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i8 5, ptr %l1, !tbaa !22
  br label %bb49
bb20:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t28 = trunc i64 5 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i8 6, ptr %l1, !tbaa !22
  br label %bb49
bb24:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t33 = trunc i64 6 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i8 7, ptr %l1, !tbaa !22
  br label %bb49
bb28:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t38 = trunc i64 7 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i8 8, ptr %l1, !tbaa !22
  br label %bb49
bb32:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t43 = trunc i64 8 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i8 9, ptr %l1, !tbaa !22
  br label %bb49
bb36:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t48 = trunc i64 9 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i8 10, ptr %l1, !tbaa !22
  br label %bb49
bb40:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t53 = trunc i64 10 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store i8 11, ptr %l1, !tbaa !22
  br label %bb49
bb44:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 12}
  %t58 = trunc i64 11 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store i8 12, ptr %l1, !tbaa !22
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d3c1ac7fefda45a1_f7bbef25d0ad212d)
  unreachable
bb49:
  %t61 = load i8, ptr %l1, !tbaa !22
  store i8 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i8, ptr %rv
  ret i8 %rr
}

define dso_local i1 @std_2fffi_2eHas(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a0, 1
  %t4 = extractvalue { i64, ptr } %a0, 0
  %t5 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t13 = mul i64 1, 1
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 1, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i8, ptr %t18, i64 0
  store i8 0, ptr %t19, !tbaa !32
  %t21 = extractvalue { i64, ptr } %t11, 1
  %t22 = extractvalue { i64, ptr } %t11, 0
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = call i32 @__olang_dyncall_check(ptr %t21, ptr %t24, i8 zeroext 0)
  store i32 %t26, ptr %l5
  br label %bb1
bb1:
  %t27 = load i32, ptr %l5, !tbaa !23
  %t28 = icmp ne i32 %t27, 1
  call void @__olang_scope_close(ptr %s0)
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fffi_2ePack(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l18 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca i64
  %l40 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
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
  %t15 = load i64, ptr %l4, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l18, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = sdiv i64 %t26, 8
  %t31 = add i64 %a1, %t28
  store i64 %t31, ptr %l8, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t35 = srem i64 %t33, 8
  %t38 = mul i64 %t35, 8
  store i64 %t38, ptr %l9, !tbaa !65
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t40, ptr %l29, !tbaa !27
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t42, ptr %l31, !tbaa !27
  %t43 = load i64, ptr %l8, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i64, ptr %t46, i64 %t43
  %t48 = load i64, ptr %t47, !tbaa !85
  %t49 = load i64, ptr %l9, !tbaa !65
  store i64 %t49, ptr %l34, !tbaa !65
  %t50 = load i64, ptr %l34, !tbaa !65
  %t51 = load i64, ptr %l34, !tbaa !65
  %t52 = shl i64 255, %t51
  %t54 = xor i64 %t52, -1
  %t57 = and i64 %t48, %t54
  %t60 = zext i8 %t23 to i64
  %t61 = load i64, ptr %l9, !tbaa !65
  store i64 %t61, ptr %l40, !tbaa !65
  %t63 = load i64, ptr %l40, !tbaa !65
  %t64 = load i64, ptr %l40, !tbaa !65
  %t65 = shl i64 %t60, %t64
  %t68 = or i64 %t57, %t65
  %t71 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i64, ptr %t72, i64 %t41
  store i64 %t68, ptr %t73, !tbaa !85
  br label %bb5
bb5:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l4, !tbaa !24
  br label %bb1
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fffi_2eUnpack(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l46 = alloca i64
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
  br label %bb12
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
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  store { i64, ptr } %a0, ptr %l37, !tbaa !27
  %t55 = load i64, ptr %l8, !tbaa !24
  %t57 = sdiv i64 %t55, 8
  %t60 = add i64 %a1, %t57
  %t62 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i64, ptr %t63, i64 %t60
  %t65 = load i64, ptr %t64, !tbaa !85
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = srem i64 %t66, 8
  %t71 = mul i64 %t68, 8
  store i64 %t71, ptr %l46, !tbaa !65
  %t73 = load i64, ptr %l46, !tbaa !65
  %t74 = load i64, ptr %l46, !tbaa !65
  %t75 = lshr i64 %t65, %t74
  %t77 = and i64 %t75, 255
  %t79 = trunc i64 %t77 to i8
  %t82 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t52
  store i8 %t79, ptr %t84, !tbaa !32
  br label %bb11
bb11:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb7
bb12:
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fffi_2eWordsFor(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = add i64 %a0, 7
  %t5 = sdiv i64 %t3, 8
  store i64 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fffi_2ewidth(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l1 = alloca i64
  %rv = alloca i64
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp eq i8 %t5, 5
  br i1 %t7, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i64 1, ptr %l1, !tbaa !24
  br label %bb29
bb6:
  %t9 = load i8, ptr %l0, !tbaa !22
  %t11 = icmp eq i8 %t9, 2
  br i1 %t11, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  %t13 = load i8, ptr %l0, !tbaa !22
  %t15 = icmp eq i8 %t13, 6
  br i1 %t15, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t17 = load i8, ptr %l0, !tbaa !22
  %t19 = icmp eq i8 %t17, 9
  br i1 %t19, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t21 = load i8, ptr %l0, !tbaa !22
  %t23 = icmp eq i8 %t21, 10
  br i1 %t23, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 2, ptr %l1, !tbaa !24
  br label %bb29
bb16:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp eq i8 %t25, 3
  br i1 %t27, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  %t29 = load i8, ptr %l0, !tbaa !22
  %t31 = icmp eq i8 %t29, 7
  br i1 %t31, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  %t33 = load i8, ptr %l0, !tbaa !22
  %t35 = icmp eq i8 %t33, 11
  br i1 %t35, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i64 4, ptr %l1, !tbaa !24
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i64 8, ptr %l1, !tbaa !24
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_693223463d286ace_cb376d1b1db73152)
  unreachable
bb29:
  %t37 = load i64, ptr %l1, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
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
declare i32 @__olang_dyncall_var_check(ptr, ptr, i8 zeroext, i64)
declare i64 @__olang_dyncall_var(ptr, ptr, ptr, i8 zeroext, i64)
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
declare i32 @__olang_dyncall_check(ptr, ptr, i8 zeroext)
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
@olang_loc_8abc9384c4eef1e5_cd004ffb84c268d1 = external constant [0 x i8]
@olang_loc_ff20c9fa943c3ec7_a348c6c6ec1ff0ab = external constant [0 x i8]
@olang_loc_d3c1ac7fefda45a1_f7bbef25d0ad212d = external constant [0 x i8]
@olang_loc_693223463d286ace_cb376d1b1db73152 = external constant [0 x i8]

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
