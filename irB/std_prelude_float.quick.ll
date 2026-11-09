source_filename = "std_prelude_float.quick.ll"
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
define dso_local { i64, ptr } @std_2fprelude_2ffloat_2eBF16_2eFixed(ptr %v0, bfloat %a0, i64 %a1) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = bitcast bfloat %a0 to i16
  %t4 = zext i16 %t3 to i32
  %t5 = shl i32 %t4, 16
  %t6 = bitcast i32 %t5 to float
  %t7 = fpext float %t6 to double
  %t11 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t7, i64 %a1)
  store { i64, ptr } %t11, ptr %l5
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ffloat_2eF16_2eFixed(ptr %v0, half %a0, i64 %a1) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = fpext half %a0 to double
  %t7 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t3, i64 %a1)
  store { i64, ptr } %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ffloat_2eF32_2eFixed(ptr %v0, float %a0, i64 %a1) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = fpext float %a0 to double
  %t7 = call { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %t3, i64 %a1)
  store { i64, ptr } %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ffloat_2eF64_2eFixed(ptr %v0, double %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca { i64, ptr }
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
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l79 = alloca i64
  %l93 = alloca i64
  %l100 = alloca i64
  %l103 = alloca i64
  %l128 = alloca i64
  %l137 = alloca i64
  %l143 = alloca i64
  %l145 = alloca i64
  %l150 = alloca i64
  %l153 = alloca { i64, ptr }
  %l154 = alloca %"std/prelude/text:StringBuilder"
  %l167 = alloca ptr
  %l168 = alloca i64
  %l169 = alloca i64
  %l175 = alloca ptr
  %l176 = alloca i64
  %l178 = alloca i64
  %l179 = alloca i64
  %l190 = alloca i64
  %l193 = alloca i64
  %l217 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = bitcast double %a0 to i64
  store i64 %t3, ptr %l2, !tbaa !65
  %t5 = load i64, ptr %l2, !tbaa !65
  %t7 = lshr i64 %t5, 63
  %t9 = icmp eq i64 %t7, 1
  store i1 %t9, ptr %l3, !tbaa !21
  %t11 = load i64, ptr %l2, !tbaa !65
  %t13 = lshr i64 %t11, 52
  %t15 = and i64 %t13, 2047
  store i64 %t15, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !65
  %t20 = and i64 %t18, 4503599627370495
  store i64 %t20, ptr %l5, !tbaa !65
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp eq i64 %t22, 2047
  br i1 %t24, label %bb1, label %bb2
bb1:
  %t26 = load i64, ptr %l5, !tbaa !65
  %t28 = icmp ne i64 %t26, 0
  br i1 %t28, label %bb3, label %bb4
bb2:
  br label %bb9
bb3:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t30, ptr %l47, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l48, !tbaa !24
  %t33 = load i64, ptr %l48, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l49, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l48, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t44, ptr %l47, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t46 = load i1, ptr %l3, !tbaa !21
  br i1 %t46, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l51, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t48, ptr %l52, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l53, !tbaa !24
  %t51 = load i64, ptr %l53, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l54, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l53, !tbaa !24
  %t61 = mul i64 %t60, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t57, ptr %t59, i64 %t61, i1 false)
  %t62 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t62, ptr %l52, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t63 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t63, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l55, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t64, ptr %l56, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l57, !tbaa !24
  %t67 = load i64, ptr %l57, !tbaa !24
  %t68 = mul i64 %t67, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l58, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l57, !tbaa !24
  %t77 = mul i64 %t76, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t73, ptr %t75, i64 %t77, i1 false)
  %t78 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t78, ptr %l56, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t79 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb9:
  store i64 %a1, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t84 = icmp slt i64 %t82, 0
  br i1 %t84, label %bb10, label %bb11
bb10:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t86 = load i64, ptr %l5, !tbaa !65
  store i64 %t86, ptr %l7, !tbaa !65
  store i64 -1074, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = icmp ne i64 %t88, 0
  br i1 %t90, label %bb13, label %bb14
bb13:
  %t92 = load i64, ptr %l5, !tbaa !65
  %t94 = or i64 %t92, 4503599627370496
  store i64 %t94, ptr %l7, !tbaa !65
  %t96 = load i64, ptr %l4, !tbaa !24
  %t98 = sub i64 %t96, 1075
  store i64 %t98, ptr %l8, !tbaa !24
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t100 = load i64, ptr %l8, !tbaa !24
  store i64 %t100, ptr %l9, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t104 = icmp slt i64 %t102, 0
  br i1 %t104, label %bb16, label %bb17
bb16:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = mul i64 %t106, 4
  %t110 = add i64 53, %t108
  %t111 = load i64, ptr %l9, !tbaa !24
  %t114 = add i64 %t110, %t111
  %t116 = sdiv i64 %t114, 32
  %t118 = add i64 %t116, 3
  store i64 %t118, ptr %l79, !tbaa !24
  %t121 = load i64, ptr %l79, !tbaa !24
  %t122 = icmp sge i64 %t121, 0
  br i1 %t122, label %bb19, label %bb20
bb19:
  %t124 = load i64, ptr %l79, !tbaa !24
  %t125 = icmp sle i64 %t124, 1152921504606846975
  br i1 %t125, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_b54d1cbdf5010812_d73f61472c36938e)
  unreachable
bb21:
  %t127 = load i64, ptr %l79, !tbaa !24
  %t128 = mul i64 %t127, 8
  %t129 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l11, !tbaa !27
  %t133 = load i64, ptr %l7, !tbaa !65
  %t135 = and i64 %t133, 4294967295
  %t137 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i64, ptr %t138, i64 0
  store i64 %t135, ptr %t139, !tbaa !85
  %t140 = load i64, ptr %l7, !tbaa !65
  %t142 = lshr i64 %t140, 32
  %t144 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i64, ptr %t145, i64 1
  store i64 %t142, ptr %t146, !tbaa !85
  store i64 2, ptr %l12, !tbaa !24
  %t147 = load i64, ptr %l6, !tbaa !24
  store i64 %t147, ptr %l13, !tbaa !24
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_b54d1cbdf5010812_d73f61472c36938e)
  unreachable
bb23:
  %t149 = load i64, ptr %l13, !tbaa !24
  %t151 = icmp sge i64 %t149, 9
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t155 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t156 = load i64, ptr %l12, !tbaa !24
  %t159 = call i64 @std_2fprelude_2ffloat_2efixedMul(ptr %s0, { i64, ptr } %t155, i64 %t156, i64 1000000000)
  store i64 %t159, ptr %l93
  br label %bb27
bb27:
  %t160 = load i64, ptr %l93, !tbaa !24
  store i64 %t160, ptr %l12, !tbaa !24
  %t161 = load i64, ptr %l13, !tbaa !24
  %t163 = sub i64 %t161, 9
  store i64 %t163, ptr %l13, !tbaa !24
  br label %bb28
bb28:
  br label %bb23
bb29:
  store i64 1, ptr %l14, !tbaa !65
  store i64 0, ptr %l15, !tbaa !24
  %t165 = load i64, ptr %l13, !tbaa !24
  store i64 %t165, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t167 = load i64, ptr %l16, !tbaa !24
  %t168 = load i64, ptr %l15, !tbaa !24
  %t171 = icmp sgt i64 %t167, %t168
  br i1 %t171, label %bb30, label %bb31
bb30:
  %t173 = load i64, ptr %l17, !tbaa !24
  %t175 = icmp sgt i64 %t173, 0
  br i1 %t175, label %bb32, label %bb33
bb31:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb35
bb32:
  %t177 = load i64, ptr %l16, !tbaa !24
  %t178 = load i64, ptr %l15, !tbaa !24
  %t181 = sub i64 %t177, %t178
  %t182 = load i64, ptr %l17, !tbaa !24
  %t185 = add i64 %t181, %t182
  %t187 = sub i64 %t185, 1
  %t188 = load i64, ptr %l17, !tbaa !24
  %t191 = sdiv i64 %t187, %t188
  store i64 %t191, ptr %l103, !tbaa !24
  br label %bb34
bb33:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb34
bb34:
  %t193 = load i64, ptr %l103, !tbaa !24
  store i64 %t193, ptr %l100, !tbaa !24
  br label %bb35
bb35:
  %t194 = load i64, ptr %l100, !tbaa !24
  store i64 %t194, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb36
bb36:
  %t195 = load i64, ptr %l19, !tbaa !24
  %t196 = load i64, ptr %l18, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  br label %bb39
bb39:
  %t203 = load i64, ptr %l15, !tbaa !24
  %t204 = load i64, ptr %l19, !tbaa !24
  %t205 = load i64, ptr %l17, !tbaa !24
  %t208 = mul i64 %t204, %t205
  %t211 = add i64 %t203, %t208
  store i64 %t211, ptr %l20, !tbaa !24
  %t213 = load i64, ptr %l14, !tbaa !65
  %t215 = mul i64 %t213, 10
  store i64 %t215, ptr %l14, !tbaa !65
  br label %bb40
bb40:
  %t217 = load i64, ptr %l19, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l19, !tbaa !24
  br label %bb36
bb41:
  %t221 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t222 = load i64, ptr %l12, !tbaa !24
  %t223 = load i64, ptr %l14, !tbaa !65
  %t227 = call i64 @std_2fprelude_2ffloat_2efixedMul(ptr %s0, { i64, ptr } %t221, i64 %t222, i64 %t223)
  store i64 %t227, ptr %l128
  br label %bb42
bb42:
  %t228 = load i64, ptr %l128, !tbaa !24
  store i64 %t228, ptr %l12, !tbaa !24
  %t229 = load i64, ptr %l8, !tbaa !24
  %t231 = icmp sge i64 %t229, 0
  br i1 %t231, label %bb43, label %bb44
bb43:
  %t233 = load i64, ptr %l8, !tbaa !24
  store i64 %t233, ptr %l21, !tbaa !24
  br label %bb45
bb44:
  %t235 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t236 = load i64, ptr %l12, !tbaa !24
  %t237 = load i64, ptr %l8, !tbaa !24
  %t239 = sub i64 0, %t237
  %t243 = call i64 @std_2fprelude_2ffloat_2efixedShiftRound(ptr %s0, { i64, ptr } %t235, i64 %t236, i64 %t239)
  store i64 %t243, ptr %l150
  br label %bb53
bb45:
  %t244 = load i64, ptr %l21, !tbaa !24
  %t246 = icmp sge i64 %t244, 31
  %t248 = xor i1 %t246, true
  br i1 %t248, label %bb46, label %bb47
bb46:
  br label %bb51
bb47:
  br label %bb48
bb48:
  %t250 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t251 = load i64, ptr %l12, !tbaa !24
  %t254 = call i64 @std_2fprelude_2ffloat_2efixedMul(ptr %s0, { i64, ptr } %t250, i64 %t251, i64 2147483648)
  store i64 %t254, ptr %l137
  br label %bb49
bb49:
  %t255 = load i64, ptr %l137, !tbaa !24
  store i64 %t255, ptr %l12, !tbaa !24
  %t256 = load i64, ptr %l21, !tbaa !24
  %t258 = sub i64 %t256, 31
  store i64 %t258, ptr %l21, !tbaa !24
  br label %bb50
bb50:
  br label %bb45
bb51:
  %t260 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t261 = load i64, ptr %l12, !tbaa !24
  %t262 = load i64, ptr %l21, !tbaa !24
  store i64 %t262, ptr %l143, !tbaa !65
  %t264 = load i64, ptr %l143, !tbaa !65
  %t265 = load i64, ptr %l143, !tbaa !65
  %t266 = shl i64 1, %t265
  %t270 = call i64 @std_2fprelude_2ffloat_2efixedMul(ptr %s0, { i64, ptr } %t260, i64 %t261, i64 %t266)
  store i64 %t270, ptr %l145
  br label %bb52
bb52:
  %t271 = load i64, ptr %l145, !tbaa !24
  store i64 %t271, ptr %l12, !tbaa !24
  br label %bb54
bb53:
  %t272 = load i64, ptr %l150, !tbaa !24
  store i64 %t272, ptr %l12, !tbaa !24
  br label %bb54
bb54:
  %t273 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t274 = load i64, ptr %l12, !tbaa !24
  %t277 = call { i64, ptr } @std_2fprelude_2ffloat_2efixedDecimal(ptr %s0, ptr %s0, { i64, ptr } %t273, i64 %t274)
  store { i64, ptr } %t277, ptr %l153
  br label %bb55
bb55:
  %t278 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t278, ptr %l22, !tbaa !27
  %t279 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t279, ptr %l154
  br label %bb56
bb56:
  %t280 = load %"std/prelude/text:StringBuilder", ptr %l154
  store %"std/prelude/text:StringBuilder" %t280, ptr %l23
  %t281 = load i1, ptr %l3, !tbaa !21
  br i1 %t281, label %bb57, label %bb58
bb57:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l23, i8 45)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  %t284 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t284, 0
  %t287 = load i64, ptr %l6, !tbaa !24
  %t290 = sub i64 %t286, %t287
  store i64 %t290, ptr %l24, !tbaa !24
  %t292 = load i64, ptr %l6, !tbaa !24
  %t294 = icmp eq i64 %t292, 0
  br i1 %t294, label %bb61, label %bb62
bb61:
  %t296 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l23, { i64, ptr } %t296)
  br label %bb63
bb62:
  %t299 = load i64, ptr %l24, !tbaa !24
  %t301 = icmp sgt i64 %t299, 0
  br i1 %t301, label %bb64, label %bb65
bb63:
  br label %bb97
bb64:
  store ptr %l23, ptr %l167, !tbaa !29
  %t303 = load i64, ptr %l24, !tbaa !24
  store i64 %t303, ptr %l168, !tbaa !24
  %t304 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t304, 0
  store i64 %t305, ptr %l169, !tbaa !24
  %t306 = icmp sge i64 0, 0
  br i1 %t306, label %bb66, label %bb67
bb65:
  store %olang.scope zeroinitializer, ptr %s18
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l23, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb81
bb66:
  %t309 = load i64, ptr %l168, !tbaa !24
  %t310 = icmp sle i64 0, %t309
  br i1 %t310, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_9154939ee93e3ee7_46d85fccfb22748b)
  unreachable
bb68:
  %t312 = load i64, ptr %l168, !tbaa !24
  %t313 = load i64, ptr %l169, !tbaa !24
  %t314 = icmp sle i64 %t312, %t313
  br i1 %t314, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_9154939ee93e3ee7_46d85fccfb22748b)
  unreachable
bb70:
  %t316 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = load i64, ptr %l168, !tbaa !24
  %t319 = getelementptr i8, ptr %t317, i64 0
  %t320 = sub i64 %t318, 0
  %t321 = insertvalue { i64, ptr } undef, i64 %t320, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t319, 1
  %t323 = load ptr, ptr %l167, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t323, { i64, ptr } %t322)
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_9154939ee93e3ee7_46d85fccfb22748b)
  unreachable
bb72:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l23, i8 46)
  br label %bb73
bb73:
  store ptr %l23, ptr %l175, !tbaa !29
  %t326 = load i64, ptr %l24, !tbaa !24
  store i64 %t326, ptr %l176, !tbaa !24
  %t327 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t327, 0
  store i64 %t329, ptr %l178, !tbaa !24
  %t330 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t331 = extractvalue { i64, ptr } %t330, 0
  store i64 %t331, ptr %l179, !tbaa !24
  %t332 = load i64, ptr %l176, !tbaa !24
  %t333 = icmp sge i64 %t332, 0
  br i1 %t333, label %bb74, label %bb75
bb74:
  %t335 = load i64, ptr %l176, !tbaa !24
  %t336 = load i64, ptr %l178, !tbaa !24
  %t337 = icmp sle i64 %t335, %t336
  br i1 %t337, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_ae21cbbaee55273c_45c9c102c2e73d10)
  unreachable
bb76:
  %t339 = load i64, ptr %l178, !tbaa !24
  %t340 = load i64, ptr %l179, !tbaa !24
  %t341 = icmp sle i64 %t339, %t340
  br i1 %t341, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_ae21cbbaee55273c_45c9c102c2e73d10)
  unreachable
bb78:
  %t343 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = load i64, ptr %l176, !tbaa !24
  %t346 = load i64, ptr %l178, !tbaa !24
  %t347 = getelementptr i8, ptr %t344, i64 %t345
  %t348 = sub i64 %t346, %t345
  %t349 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t347, 1
  %t351 = load ptr, ptr %l175, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t351, { i64, ptr } %t350)
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_ae21cbbaee55273c_45c9c102c2e73d10)
  unreachable
bb80:
  br label %bb96
bb81:
  store i64 0, ptr %l25, !tbaa !24
  %t353 = load i64, ptr %l24, !tbaa !24
  %t355 = sub i64 0, %t353
  store i64 %t355, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t357 = load i64, ptr %l26, !tbaa !24
  %t358 = load i64, ptr %l25, !tbaa !24
  %t361 = icmp sgt i64 %t357, %t358
  br i1 %t361, label %bb82, label %bb83
bb82:
  %t363 = load i64, ptr %l27, !tbaa !24
  %t365 = icmp sgt i64 %t363, 0
  br i1 %t365, label %bb84, label %bb85
bb83:
  store i64 0, ptr %l190, !tbaa !24
  br label %bb87
bb84:
  %t367 = load i64, ptr %l26, !tbaa !24
  %t368 = load i64, ptr %l25, !tbaa !24
  %t371 = sub i64 %t367, %t368
  %t372 = load i64, ptr %l27, !tbaa !24
  %t375 = add i64 %t371, %t372
  %t377 = sub i64 %t375, 1
  %t378 = load i64, ptr %l27, !tbaa !24
  %t381 = sdiv i64 %t377, %t378
  store i64 %t381, ptr %l193, !tbaa !24
  br label %bb86
bb85:
  store i64 0, ptr %l193, !tbaa !24
  br label %bb86
bb86:
  %t383 = load i64, ptr %l193, !tbaa !24
  store i64 %t383, ptr %l190, !tbaa !24
  br label %bb87
bb87:
  %t384 = load i64, ptr %l190, !tbaa !24
  store i64 %t384, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb88
bb88:
  %t385 = load i64, ptr %l29, !tbaa !24
  %t386 = load i64, ptr %l28, !tbaa !24
  %t389 = icmp slt i64 %t385, %t386
  %t391 = xor i1 %t389, true
  br i1 %t391, label %bb89, label %bb90
bb89:
  br label %bb94
bb90:
  br label %bb91
bb91:
  %t393 = load i64, ptr %l25, !tbaa !24
  %t394 = load i64, ptr %l29, !tbaa !24
  %t395 = load i64, ptr %l27, !tbaa !24
  %t398 = mul i64 %t394, %t395
  %t401 = add i64 %t393, %t398
  store i64 %t401, ptr %l30, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l23, i8 48)
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t404 = load i64, ptr %l29, !tbaa !24
  %t406 = add i64 %t404, 1
  store i64 %t406, ptr %l29, !tbaa !24
  br label %bb88
bb94:
  %t408 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l23, { i64, ptr } %t408)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s18)
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t412 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l23)
  store { i64, ptr } %t412, ptr %l217
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s0)
  %t413 = load { i64, ptr }, ptr %l217, !tbaa !27
  store { i64, ptr } %t413, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2ffloat_2efixedDecimal(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l39 = alloca i64
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l79 = alloca i1
  %l80 = alloca { i64, ptr }
  %l89 = alloca i64
  %l91 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %l95 = alloca %"std/prelude/text:StringBuilder"
  %l96 = alloca ptr
  %l97 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca i64
  %l105 = alloca i64
  %l110 = alloca i64
  %l113 = alloca i64
  %l131 = alloca ptr
  %l133 = alloca i64
  %l137 = alloca i64
  %l145 = alloca i64
  %l148 = alloca i64
  %l174 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store i64 %a1, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb29
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l4, !tbaa !65
  store i64 0, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load i64, ptr %l7, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb11
bb8:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l39, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb10
bb10:
  %t39 = load i64, ptr %l39, !tbaa !24
  store i64 %t39, ptr %l36, !tbaa !24
  br label %bb11
bb11:
  %t40 = load i64, ptr %l36, !tbaa !24
  store i64 %t40, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = sub i64 %t59, 1
  %t65 = sub i64 %t61, %t57
  store i64 %t65, ptr %l11, !tbaa !24
  %t67 = load i64, ptr %l4, !tbaa !65
  %t69 = shl i64 %t67, 32
  %t70 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t70, ptr %l63, !tbaa !27
  %t71 = load i64, ptr %l11, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t71
  %t76 = load i64, ptr %t75, !tbaa !85
  %t79 = or i64 %t69, %t76
  store i64 %t79, ptr %l12, !tbaa !65
  %t81 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t81, ptr %l67, !tbaa !27
  %t82 = load i64, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l12, !tbaa !65
  %t85 = udiv i64 %t83, 1000000000
  %t88 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i64, ptr %t89, i64 %t82
  store i64 %t85, ptr %t90, !tbaa !85
  %t91 = load i64, ptr %l12, !tbaa !65
  %t93 = urem i64 %t91, 1000000000
  store i64 %t93, ptr %l4, !tbaa !65
  br label %bb16
bb16:
  %t95 = load i64, ptr %l9, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l9, !tbaa !24
  br label %bb12
bb17:
  %t99 = load i64, ptr %l4, !tbaa !65
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2ePush_3cU64_3e(ptr %s0, ptr %l2, i64 %t99)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t102 = load i64, ptr %l3, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb20, label %bb21
bb20:
  %t106 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t106, ptr %l80, !tbaa !27
  %t107 = load i64, ptr %l3, !tbaa !24
  %t109 = sub i64 %t107, 1
  %t111 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i64, ptr %t112, i64 %t109
  %t114 = load i64, ptr %t113, !tbaa !85
  %t116 = icmp eq i64 %t114, 0
  store i1 %t116, ptr %l79, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb22
bb22:
  %t118 = load i1, ptr %l79, !tbaa !21
  %t119 = xor i1 %t118, true
  br i1 %t119, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t121 = load i64, ptr %l3, !tbaa !24
  %t123 = sub i64 %t121, 1
  store i64 %t123, ptr %l3, !tbaa !24
  br label %bb26
bb26:
  br label %bb19
bb27:
  br label %bb28
bb28:
  br label %bb2
bb29:
  %t126 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %l2)
  store i64 %t126, ptr %l89
  br label %bb30
bb30:
  %t127 = load i64, ptr %l89, !tbaa !24
  %t128 = icmp eq i64 %t127, 0
  br i1 %t128, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l91, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t130, ptr %l92, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l93, !tbaa !24
  %t133 = load i64, ptr %l93, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l94, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l93, !tbaa !24
  %t143 = mul i64 %t142, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %t141, i64 %t143, i1 false)
  %t144 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t144, ptr %l92, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t145 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t145, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t146 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t146, ptr %l95
  br label %bb34
bb34:
  %t147 = load %"std/prelude/text:StringBuilder", ptr %l95
  store %"std/prelude/text:StringBuilder" %t147, ptr %l13
  store ptr %l13, ptr %l96, !tbaa !29
  store ptr %l2, ptr %l97, !tbaa !29
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %l2)
  store i64 %t149, ptr %l99
  br label %bb35
bb35:
  %t150 = load i64, ptr %l99, !tbaa !24
  %t151 = sub i64 %t150, 1
  %t152 = load ptr, ptr %l97, !tbaa !29
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eAt_3cU64_3e(ptr %s0, ptr %t152, i64 %t151)
  store i64 %t154, ptr %l101
  br label %bb36
bb36:
  %t155 = load i64, ptr %l101, !tbaa !65
  %t156 = call i64 @__olang_fmt_u64(ptr null, i64 %t155)
  %t157 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t156)
  %t158 = call i64 @__olang_fmt_u64(ptr %t157, i64 %t155)
  %t159 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t157, 1
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = extractvalue { i64, ptr } %t160, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t168 = load ptr, ptr %l96, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t168, { i64, ptr } %t167)
  br label %bb37
bb37:
  store i64 0, ptr %l14, !tbaa !24
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %l2)
  store i64 %t171, ptr %l105
  br label %bb38
bb38:
  %t172 = load i64, ptr %l105, !tbaa !24
  %t173 = sub i64 %t172, 1
  store i64 %t173, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t176 = load i64, ptr %l14, !tbaa !24
  %t179 = icmp sgt i64 %t175, %t176
  br i1 %t179, label %bb39, label %bb40
bb39:
  %t181 = load i64, ptr %l16, !tbaa !24
  %t183 = icmp sgt i64 %t181, 0
  br i1 %t183, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb44
bb41:
  %t185 = load i64, ptr %l15, !tbaa !24
  %t186 = load i64, ptr %l14, !tbaa !24
  %t189 = sub i64 %t185, %t186
  %t190 = load i64, ptr %l16, !tbaa !24
  %t193 = add i64 %t189, %t190
  %t195 = sub i64 %t193, 1
  %t196 = load i64, ptr %l16, !tbaa !24
  %t199 = sdiv i64 %t195, %t196
  store i64 %t199, ptr %l113, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb43
bb43:
  %t201 = load i64, ptr %l113, !tbaa !24
  store i64 %t201, ptr %l110, !tbaa !24
  br label %bb44
bb44:
  %t202 = load i64, ptr %l110, !tbaa !24
  store i64 %t202, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb45
bb45:
  store %olang.scope zeroinitializer, ptr %s9
  %t203 = load i64, ptr %l18, !tbaa !24
  %t204 = load i64, ptr %l17, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb47:
  br label %bb48
bb48:
  %t211 = load i64, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l18, !tbaa !24
  %t213 = load i64, ptr %l16, !tbaa !24
  %t216 = mul i64 %t212, %t213
  %t219 = add i64 %t211, %t216
  store i64 %t219, ptr %l19, !tbaa !24
  store ptr %l2, ptr %l131, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %l2)
  store i64 %t222, ptr %l133
  br label %bb49
bb49:
  %t223 = load i64, ptr %l133, !tbaa !24
  %t224 = sub i64 %t223, 2
  %t225 = load i64, ptr %l19, !tbaa !24
  %t228 = sub i64 %t224, %t225
  %t229 = load ptr, ptr %l131, !tbaa !29
  %t231 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eAt_3cU64_3e(ptr %s0, ptr %t229, i64 %t228)
  store i64 %t231, ptr %l137
  br label %bb50
bb50:
  %t232 = load i64, ptr %l137, !tbaa !65
  %t233 = call i64 @__olang_fmt_u64(ptr null, i64 %t232)
  %t234 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t233)
  %t235 = call i64 @__olang_fmt_u64(ptr %t234, i64 %t232)
  %t236 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t234, 1
  store { i64, ptr } %t237, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t243 = sub i64 9, %t241
  store i64 %t243, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t245 = load i64, ptr %l22, !tbaa !24
  %t246 = load i64, ptr %l21, !tbaa !24
  %t249 = icmp sgt i64 %t245, %t246
  br i1 %t249, label %bb51, label %bb52
bb51:
  %t251 = load i64, ptr %l23, !tbaa !24
  %t253 = icmp sgt i64 %t251, 0
  br i1 %t253, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb56
bb53:
  %t255 = load i64, ptr %l22, !tbaa !24
  %t256 = load i64, ptr %l21, !tbaa !24
  %t259 = sub i64 %t255, %t256
  %t260 = load i64, ptr %l23, !tbaa !24
  %t263 = add i64 %t259, %t260
  %t265 = sub i64 %t263, 1
  %t266 = load i64, ptr %l23, !tbaa !24
  %t269 = sdiv i64 %t265, %t266
  store i64 %t269, ptr %l148, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb55
bb55:
  %t271 = load i64, ptr %l148, !tbaa !24
  store i64 %t271, ptr %l145, !tbaa !24
  br label %bb56
bb56:
  %t272 = load i64, ptr %l145, !tbaa !24
  store i64 %t272, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb57
bb57:
  %t273 = load i64, ptr %l25, !tbaa !24
  %t274 = load i64, ptr %l24, !tbaa !24
  %t277 = icmp slt i64 %t273, %t274
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb58, label %bb59
bb58:
  br label %bb63
bb59:
  br label %bb60
bb60:
  %t281 = load i64, ptr %l21, !tbaa !24
  %t282 = load i64, ptr %l25, !tbaa !24
  %t283 = load i64, ptr %l23, !tbaa !24
  %t286 = mul i64 %t282, %t283
  %t289 = add i64 %t281, %t286
  store i64 %t289, ptr %l26, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l13, i8 48)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t292 = load i64, ptr %l25, !tbaa !24
  %t294 = add i64 %t292, 1
  store i64 %t294, ptr %l25, !tbaa !24
  br label %bb57
bb63:
  %t296 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %l13, { i64, ptr } %t296)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s9)
  br label %bb65
bb65:
  %t299 = load i64, ptr %l18, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l18, !tbaa !24
  br label %bb45
bb66:
  %t304 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l13)
  store { i64, ptr } %t304, ptr %l174
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t305 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t305, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @std_2fprelude_2ffloat_2efixedMul(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l36 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !65
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t3 = load i64, ptr %l5, !tbaa !24
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l18, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l18, !tbaa !24
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l15, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l9, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t49, ptr %l36, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i64, ptr %t53, i64 %t50
  %t55 = load i64, ptr %t54, !tbaa !85
  %t59 = mul i64 %t55, %a2
  %t60 = load i64, ptr %l3, !tbaa !65
  %t63 = add i64 %t59, %t60
  store i64 %t63, ptr %l10, !tbaa !65
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t65, ptr %l43, !tbaa !27
  %t66 = load i64, ptr %l9, !tbaa !24
  %t67 = load i64, ptr %l10, !tbaa !65
  %t69 = and i64 %t67, 4294967295
  %t72 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i64, ptr %t73, i64 %t66
  store i64 %t69, ptr %t74, !tbaa !85
  %t75 = load i64, ptr %l10, !tbaa !65
  %t77 = lshr i64 %t75, 32
  store i64 %t77, ptr %l3, !tbaa !65
  br label %bb11
bb11:
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l8, !tbaa !24
  br label %bb7
bb12:
  %t83 = load i64, ptr %l3, !tbaa !65
  %t85 = icmp eq i64 %t83, 0
  br i1 %t85, label %bb13, label %bb14
bb13:
  %t87 = load i64, ptr %l1, !tbaa !24
  store i64 %t87, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t89 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t89, ptr %l54, !tbaa !27
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load i64, ptr %l3, !tbaa !65
  %t94 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t90
  store i64 %t91, ptr %t96, !tbaa !85
  %t97 = load i64, ptr %l1, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fprelude_2ffloat_2efixedShiftRound(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i1
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
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l38 = alloca i64
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l82 = alloca i1
  %l83 = alloca { i64, ptr }
  %l103 = alloca i64
  %l106 = alloca i64
  %l124 = alloca { i64, ptr }
  %l129 = alloca i64
  %l133 = alloca i1
  %l141 = alloca { i64, ptr }
  %l148 = alloca i64
  %l152 = alloca { i64, ptr }
  %l158 = alloca i1
  %l160 = alloca i1
  %l163 = alloca i1
  %l164 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l191 = alloca i1
  %l192 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = sub i64 %t1, 1
  %t5 = sdiv i64 %t3, 32
  store i64 %t5, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = sub i64 %t7, 1
  %t11 = srem i64 %t9, 32
  store i64 %t11, ptr %l4, !tbaa !65
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  br i1 %t18, label %bb1, label %bb2
bb1:
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t20, ptr %l35, !tbaa !27
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 %t21
  %t26 = load i64, ptr %t25, !tbaa !85
  %t27 = load i64, ptr %l4, !tbaa !65
  store i64 %t27, ptr %l38, !tbaa !65
  %t29 = load i64, ptr %l38, !tbaa !65
  %t30 = load i64, ptr %l38, !tbaa !65
  %t31 = lshr i64 %t26, %t30
  %t33 = and i64 %t31, 1
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l34, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb3
bb3:
  %t37 = load i1, ptr %l34, !tbaa !21
  store i1 %t37, ptr %l5, !tbaa !21
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  br i1 %t42, label %bb4, label %bb5
bb4:
  %t44 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t44, ptr %l46, !tbaa !27
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i64, ptr %t48, i64 %t45
  %t50 = load i64, ptr %t49, !tbaa !85
  %t51 = load i64, ptr %l4, !tbaa !65
  store i64 %t51, ptr %l49, !tbaa !65
  %t52 = load i64, ptr %l49, !tbaa !65
  %t53 = load i64, ptr %l49, !tbaa !65
  %t54 = shl i64 1, %t53
  %t56 = sub i64 %t54, 1
  %t59 = and i64 %t50, %t56
  %t61 = icmp ne i64 %t59, 0
  store i1 %t61, ptr %l45, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb6
bb6:
  %t63 = load i1, ptr %l45, !tbaa !21
  store i1 %t63, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l3, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = icmp sgt i64 %t66, %t67
  br i1 %t70, label %bb7, label %bb8
bb7:
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb12
bb9:
  %t76 = load i64, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l61, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb11
bb11:
  %t92 = load i64, ptr %l61, !tbaa !24
  store i64 %t92, ptr %l58, !tbaa !24
  br label %bb12
bb12:
  %t93 = load i64, ptr %l58, !tbaa !24
  store i64 %t93, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb14, label %bb15
bb14:
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l11, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  store i64 %t110, ptr %l12, !tbaa !24
  %t112 = load i64, ptr %l12, !tbaa !24
  %t113 = load i64, ptr %l1, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  br i1 %t116, label %bb17, label %bb18
bb17:
  %t118 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t118, ptr %l83, !tbaa !27
  %t119 = load i64, ptr %l12, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 %t119
  %t124 = load i64, ptr %t123, !tbaa !85
  %t126 = icmp ne i64 %t124, 0
  store i1 %t126, ptr %l82, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb19
bb19:
  %t128 = load i1, ptr %l82, !tbaa !21
  br i1 %t128, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t129 = load i64, ptr %l11, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l11, !tbaa !24
  br label %bb13
bb24:
  %t133 = load i64, ptr %l2, !tbaa !24
  %t135 = sdiv i64 %t133, 32
  store i64 %t135, ptr %l13, !tbaa !24
  %t137 = load i64, ptr %l2, !tbaa !24
  %t139 = srem i64 %t137, 32
  store i64 %t139, ptr %l14, !tbaa !65
  %t142 = load i64, ptr %l1, !tbaa !24
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = sub i64 %t142, %t143
  store i64 %t146, ptr %l15, !tbaa !24
  %t148 = load i64, ptr %l15, !tbaa !24
  %t150 = icmp sle i64 %t148, 0
  br i1 %t150, label %bb25, label %bb26
bb25:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb45
bb26:
  store i64 0, ptr %l16, !tbaa !24
  %t152 = load i64, ptr %l15, !tbaa !24
  store i64 %t152, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t154 = load i64, ptr %l17, !tbaa !24
  %t155 = load i64, ptr %l16, !tbaa !24
  %t158 = icmp sgt i64 %t154, %t155
  br i1 %t158, label %bb27, label %bb28
bb27:
  %t160 = load i64, ptr %l18, !tbaa !24
  %t162 = icmp sgt i64 %t160, 0
  br i1 %t162, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb32
bb29:
  %t164 = load i64, ptr %l17, !tbaa !24
  %t165 = load i64, ptr %l16, !tbaa !24
  %t168 = sub i64 %t164, %t165
  %t169 = load i64, ptr %l18, !tbaa !24
  %t172 = add i64 %t168, %t169
  %t174 = sub i64 %t172, 1
  %t175 = load i64, ptr %l18, !tbaa !24
  %t178 = sdiv i64 %t174, %t175
  store i64 %t178, ptr %l106, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb31
bb31:
  %t180 = load i64, ptr %l106, !tbaa !24
  store i64 %t180, ptr %l103, !tbaa !24
  br label %bb32
bb32:
  %t181 = load i64, ptr %l103, !tbaa !24
  store i64 %t181, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb33
bb33:
  %t182 = load i64, ptr %l20, !tbaa !24
  %t183 = load i64, ptr %l19, !tbaa !24
  %t186 = icmp slt i64 %t182, %t183
  %t188 = xor i1 %t186, true
  br i1 %t188, label %bb34, label %bb35
bb34:
  br label %bb44
bb35:
  br label %bb36
bb36:
  %t190 = load i64, ptr %l16, !tbaa !24
  %t191 = load i64, ptr %l20, !tbaa !24
  %t192 = load i64, ptr %l18, !tbaa !24
  %t195 = mul i64 %t191, %t192
  %t198 = add i64 %t190, %t195
  store i64 %t198, ptr %l21, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t200, ptr %l124, !tbaa !27
  %t201 = load i64, ptr %l21, !tbaa !24
  %t202 = load i64, ptr %l13, !tbaa !24
  %t205 = add i64 %t201, %t202
  %t207 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i64, ptr %t208, i64 %t205
  %t210 = load i64, ptr %t209, !tbaa !85
  %t211 = load i64, ptr %l14, !tbaa !65
  store i64 %t211, ptr %l129, !tbaa !65
  %t213 = load i64, ptr %l129, !tbaa !65
  %t214 = load i64, ptr %l129, !tbaa !65
  %t215 = lshr i64 %t210, %t214
  store i64 %t215, ptr %l22, !tbaa !65
  %t217 = load i64, ptr %l14, !tbaa !65
  %t219 = icmp ugt i64 %t217, 0
  br i1 %t219, label %bb37, label %bb38
bb37:
  %t221 = load i64, ptr %l21, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = add i64 %t221, %t222
  %t227 = add i64 %t225, 1
  %t228 = load i64, ptr %l1, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  store i1 %t231, ptr %l133, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb39
bb39:
  %t233 = load i1, ptr %l133, !tbaa !21
  br i1 %t233, label %bb40, label %bb41
bb40:
  %t234 = load i64, ptr %l22, !tbaa !65
  %t235 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t235, ptr %l141, !tbaa !27
  %t236 = load i64, ptr %l21, !tbaa !24
  %t237 = load i64, ptr %l13, !tbaa !24
  %t240 = add i64 %t236, %t237
  %t242 = add i64 %t240, 1
  %t244 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = getelementptr i64, ptr %t245, i64 %t242
  %t247 = load i64, ptr %t246, !tbaa !85
  %t248 = load i64, ptr %l14, !tbaa !65
  %t250 = sub i64 32, %t248
  store i64 %t250, ptr %l148, !tbaa !65
  %t252 = load i64, ptr %l148, !tbaa !65
  %t253 = load i64, ptr %l148, !tbaa !65
  %t254 = shl i64 %t247, %t253
  %t256 = and i64 %t254, 4294967295
  %t259 = or i64 %t234, %t256
  store i64 %t259, ptr %l22, !tbaa !65
  br label %bb42
bb41:
  br label %bb42
bb42:
  %t261 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t261, ptr %l152, !tbaa !27
  %t262 = load i64, ptr %l21, !tbaa !24
  %t263 = load i64, ptr %l22, !tbaa !65
  %t266 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr i64, ptr %t267, i64 %t262
  store i64 %t263, ptr %t268, !tbaa !85
  br label %bb43
bb43:
  %t269 = load i64, ptr %l20, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l20, !tbaa !24
  br label %bb33
bb44:
  br label %bb45
bb45:
  %t273 = load i1, ptr %l5, !tbaa !21
  br i1 %t273, label %bb46, label %bb47
bb46:
  %t275 = load i1, ptr %l6, !tbaa !21
  br i1 %t275, label %bb48, label %bb49
bb47:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb54
bb48:
  store i1 true, ptr %l160, !tbaa !21
  br label %bb53
bb49:
  %t277 = load i64, ptr %l15, !tbaa !24
  %t279 = icmp sgt i64 %t277, 0
  br i1 %t279, label %bb50, label %bb51
bb50:
  %t281 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t281, ptr %l164, !tbaa !27
  %t282 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr i64, ptr %t283, i64 0
  %t285 = load i64, ptr %t284, !tbaa !85
  %t287 = and i64 %t285, 1
  %t289 = icmp eq i64 %t287, 1
  store i1 %t289, ptr %l163, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb52
bb52:
  %t291 = load i1, ptr %l163, !tbaa !21
  store i1 %t291, ptr %l160, !tbaa !21
  br label %bb53
bb53:
  %t292 = load i1, ptr %l160, !tbaa !21
  store i1 %t292, ptr %l158, !tbaa !21
  br label %bb54
bb54:
  %t293 = load i1, ptr %l158, !tbaa !21
  br i1 %t293, label %bb55, label %bb56
bb55:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb57
bb56:
  br label %bb66
bb57:
  %t294 = load i64, ptr %l23, !tbaa !24
  %t295 = load i64, ptr %l15, !tbaa !24
  %t298 = icmp eq i64 %t294, %t295
  br i1 %t298, label %bb58, label %bb59
bb58:
  %t300 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t300, ptr %l171, !tbaa !27
  %t301 = load i64, ptr %l15, !tbaa !24
  %t303 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr i64, ptr %t304, i64 %t301
  store i64 1, ptr %t305, !tbaa !85
  %t306 = load i64, ptr %l15, !tbaa !24
  %t308 = add i64 %t306, 1
  store i64 %t308, ptr %l15, !tbaa !24
  br label %bb65
bb59:
  br label %bb60
bb60:
  %t310 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t310, ptr %l175, !tbaa !27
  %t311 = load i64, ptr %l23, !tbaa !24
  %t312 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t312, ptr %l177, !tbaa !27
  %t313 = load i64, ptr %l23, !tbaa !24
  %t315 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = getelementptr i64, ptr %t316, i64 %t313
  %t318 = load i64, ptr %t317, !tbaa !85
  %t320 = add i64 %t318, 1
  %t323 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr i64, ptr %t324, i64 %t311
  store i64 %t320, ptr %t325, !tbaa !85
  %t326 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t326, ptr %l181, !tbaa !27
  %t327 = load i64, ptr %l23, !tbaa !24
  %t329 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !27
  %t331 = getelementptr i64, ptr %t330, i64 %t327
  %t332 = load i64, ptr %t331, !tbaa !85
  %t334 = icmp ule i64 %t332, 4294967295
  br i1 %t334, label %bb61, label %bb62
bb61:
  br label %bb65
bb62:
  br label %bb63
bb63:
  %t336 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t336, ptr %l185, !tbaa !27
  %t337 = load i64, ptr %l23, !tbaa !24
  %t339 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = getelementptr i64, ptr %t340, i64 %t337
  store i64 0, ptr %t341, !tbaa !85
  %t342 = load i64, ptr %l23, !tbaa !24
  %t344 = add i64 %t342, 1
  store i64 %t344, ptr %l23, !tbaa !24
  br label %bb64
bb64:
  br label %bb57
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t346 = load i64, ptr %l15, !tbaa !24
  %t348 = icmp sgt i64 %t346, 0
  br i1 %t348, label %bb68, label %bb69
bb68:
  %t350 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t350, ptr %l192, !tbaa !27
  %t351 = load i64, ptr %l15, !tbaa !24
  %t353 = sub i64 %t351, 1
  %t355 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr i64, ptr %t356, i64 %t353
  %t358 = load i64, ptr %t357, !tbaa !85
  %t360 = icmp eq i64 %t358, 0
  store i1 %t360, ptr %l191, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb70
bb70:
  %t362 = load i1, ptr %l191, !tbaa !21
  %t363 = xor i1 %t362, true
  br i1 %t363, label %bb71, label %bb72
bb71:
  br label %bb75
bb72:
  br label %bb73
bb73:
  %t365 = load i64, ptr %l15, !tbaa !24
  %t367 = sub i64 %t365, 1
  store i64 %t367, ptr %l15, !tbaa !24
  br label %bb74
bb74:
  br label %bb67
bb75:
  %t369 = load i64, ptr %l15, !tbaa !24
  store i64 %t369, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"nan" }>, align 8
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
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"-inf" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"inf" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"0." }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
declare i64 @__olang_fmt_u64(ptr, i64)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_loc_b54d1cbdf5010812_d73f61472c36938e = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_9154939ee93e3ee7_46d85fccfb22748b = external constant [0 x i8]
@olang_loc_ae21cbbaee55273c_45c9c102c2e73d10 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2ePush_3cU64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eAt_3cU64_3e(ptr %v0, ptr %a0, i64 %a1)

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
