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
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/scan:scanner" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1 }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/scan:Diag" = type { i32, i32, i32, i8 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i8
  %l21 = alloca i8
  %l22 = alloca { i64, i64 }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i1
  %l30 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l64 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l80 = alloca i64
  %l92 = alloca { i64, ptr }
  %l105 = alloca i1
  %l114 = alloca i64
  %l117 = alloca i64
  %l136 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l147 = alloca i64
  %l148 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l160 = alloca i1
  %l172 = alloca { i64, ptr }
  %l178 = alloca i1
  %l184 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l189 = alloca i64
  %l190 = alloca i64
  %l191 = alloca { i64, ptr }
  %l195 = alloca i64
  %l202 = alloca { i64, i64 }
  %l205 = alloca { i64, i64 }
  %l206 = alloca i32
  %l216 = alloca ptr
  %l219 = alloca i8
  %l222 = alloca i8
  %l225 = alloca i8
  %l228 = alloca i8
  %l234 = alloca { i64, ptr }
  %l235 = alloca { i64, ptr }
  %l236 = alloca i64
  %l237 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l25
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp sge i64 %t5, 6
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l30, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i8, ptr %t11, i64 0
  %t13 = load i8, ptr %t12, !tbaa !32
  %t15 = icmp eq i8 %t13, 34
  store i1 %t15, ptr %l29, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l29, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t18 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t18, ptr %l34, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 1
  %t22 = load i8, ptr %t21, !tbaa !32
  %t24 = icmp eq i8 %t22, 34
  store i1 %t24, ptr %l33, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l33, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t27, ptr %l38, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i8, ptr %t29, i64 2
  %t31 = load i8, ptr %t30, !tbaa !32
  %t33 = icmp eq i8 %t31, 34
  store i1 %t33, ptr %l37, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l37, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t36, ptr %l41, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = sub i64 %t39, 3
  store i64 %t41, ptr %l44, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l45, !tbaa !24
  %t44 = icmp sge i64 3, 0
  br i1 %t44, label %bb13, label %bb14
bb12:
  br label %bb69
bb13:
  %t46 = load i64, ptr %l44, !tbaa !24
  %t47 = icmp sle i64 3, %t46
  br i1 %t47, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_e0eb014d323e7d9_3ee0f0ba74559745)
  unreachable
bb15:
  %t49 = load i64, ptr %l44, !tbaa !24
  %t50 = load i64, ptr %l45, !tbaa !24
  %t51 = icmp sle i64 %t49, %t50
  br i1 %t51, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_e0eb014d323e7d9_3ee0f0ba74559745)
  unreachable
bb17:
  %t53 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l44, !tbaa !24
  %t56 = getelementptr i8, ptr %t54, i64 3
  %t57 = sub i64 %t55, 3
  %t58 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t56, 1
  store { i64, ptr } %t59, ptr %l2, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t64 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t61, i8 10)
  %t65 = extractvalue { i32, i64 } %t64, 1
  %t66 = extractvalue { i32, i64 } %t64, 0
  store i32 %t66, ptr %l54
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb20, label %ok.68, !prof !99
ok.68:
  store i64 %t65, ptr %l53
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_e0eb014d323e7d9_3ee0f0ba74559745)
  unreachable
bb19:
  %t69 = load i64, ptr %l53, !tbaa !24
  store i64 %t69, ptr %l50, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i64 -1, ptr %l50, !tbaa !24
  br label %bb22
bb22:
  %t70 = load i64, ptr %l50, !tbaa !24
  store i64 %t70, ptr %l3, !tbaa !24
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = icmp slt i64 %t71, 0
  br i1 %t73, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s2
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t75, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb25
bb24:
  br label %bb33
bb25:
  %t81 = load i64, ptr %l5, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t89, ptr %l64, !tbaa !27
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i8, ptr %t93, i64 %t90
  %t95 = load i8, ptr %t94, !tbaa !32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l1, i8 %t95)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l5, !tbaa !24
  br label %bb25
bb31:
  %t106 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %s0, ptr %s2, ptr %l1)
  store { i64, ptr } %t106, ptr %l73
  br label %bb32
bb32:
  %t107 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t107, ptr %l74, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l75, !tbaa !24
  %t110 = load i64, ptr %l75, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l76, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l75, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t121, ptr %l74, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb33:
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t129 = call i64 @compiler_2fscan_2elastLineStart(ptr %v0, { i64, ptr } %t123, i64 %t126)
  store i64 %t129, ptr %l80
  br label %bb34
bb34:
  %t130 = load i64, ptr %l80, !tbaa !24
  store i64 %t130, ptr %l8, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = load i64, ptr %l8, !tbaa !24
  %t137 = sub i64 %t133, %t134
  store i64 %t137, ptr %l9, !tbaa !24
  %t139 = load i64, ptr %l3, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l10, !tbaa !24
  store i1 true, ptr %l11, !tbaa !21
  br label %bb35
bb35:
  %t143 = load i64, ptr %l10, !tbaa !24
  %t144 = load i64, ptr %l8, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb36, label %bb37
bb36:
  br label %bb67
bb37:
  br label %bb38
bb38:
  %t151 = load i64, ptr %l10, !tbaa !24
  store i64 %t151, ptr %l12, !tbaa !24
  br label %bb39
bb39:
  %t153 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t153, ptr %l92, !tbaa !27
  %t154 = load i64, ptr %l12, !tbaa !24
  %t156 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr i8, ptr %t157, i64 %t154
  %t159 = load i8, ptr %t158, !tbaa !32
  %t161 = icmp ne i8 %t159, 10
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  %t165 = load i64, ptr %l12, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l12, !tbaa !24
  br label %bb43
bb43:
  br label %bb39
bb44:
  %t169 = load i1, ptr %l11, !tbaa !21
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb45, label %bb46
bb45:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l1, i8 10)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb48
bb48:
  store i1 false, ptr %l11, !tbaa !21
  %t174 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t175 = load i64, ptr %l10, !tbaa !24
  %t176 = load i64, ptr %l12, !tbaa !24
  %t180 = call i1 @compiler_2fscan_2eblankLine(ptr %v0, { i64, ptr } %t174, i64 %t175, i64 %t176)
  store i1 %t180, ptr %l105
  br label %bb49
bb49:
  %t181 = load i1, ptr %l105, !tbaa !21
  %t182 = xor i1 %t181, true
  br i1 %t182, label %bb50, label %bb51
bb50:
  %t184 = load i64, ptr %l10, !tbaa !24
  %t185 = load i64, ptr %l9, !tbaa !24
  %t188 = add i64 %t184, %t185
  store i64 %t188, ptr %l13, !tbaa !24
  %t190 = load i64, ptr %l12, !tbaa !24
  store i64 %t190, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t192 = load i64, ptr %l14, !tbaa !24
  %t193 = load i64, ptr %l13, !tbaa !24
  %t196 = icmp sgt i64 %t192, %t193
  br i1 %t196, label %bb52, label %bb53
bb51:
  br label %bb65
bb52:
  %t198 = load i64, ptr %l15, !tbaa !24
  %t200 = icmp sgt i64 %t198, 0
  br i1 %t200, label %bb54, label %bb55
bb53:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb57
bb54:
  %t202 = load i64, ptr %l14, !tbaa !24
  %t203 = load i64, ptr %l13, !tbaa !24
  %t206 = sub i64 %t202, %t203
  %t207 = load i64, ptr %l15, !tbaa !24
  %t210 = add i64 %t206, %t207
  %t212 = sub i64 %t210, 1
  %t213 = load i64, ptr %l15, !tbaa !24
  %t216 = sdiv i64 %t212, %t213
  store i64 %t216, ptr %l117, !tbaa !24
  br label %bb56
bb55:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb56
bb56:
  %t218 = load i64, ptr %l117, !tbaa !24
  store i64 %t218, ptr %l114, !tbaa !24
  br label %bb57
bb57:
  %t219 = load i64, ptr %l114, !tbaa !24
  store i64 %t219, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb58
bb58:
  %t220 = load i64, ptr %l17, !tbaa !24
  %t221 = load i64, ptr %l16, !tbaa !24
  %t224 = icmp slt i64 %t220, %t221
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb59, label %bb60
bb59:
  br label %bb64
bb60:
  br label %bb61
bb61:
  %t228 = load i64, ptr %l13, !tbaa !24
  %t229 = load i64, ptr %l17, !tbaa !24
  %t230 = load i64, ptr %l15, !tbaa !24
  %t233 = mul i64 %t229, %t230
  %t236 = add i64 %t228, %t233
  %t238 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t238, ptr %l136, !tbaa !27
  %t241 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr i8, ptr %t242, i64 %t236
  %t244 = load i8, ptr %t243, !tbaa !32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l1, i8 %t244)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t248 = load i64, ptr %l17, !tbaa !24
  %t250 = add i64 %t248, 1
  store i64 %t250, ptr %l17, !tbaa !24
  br label %bb58
bb64:
  br label %bb65
bb65:
  %t252 = load i64, ptr %l12, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l10, !tbaa !24
  br label %bb66
bb66:
  br label %bb35
bb67:
  %t257 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %s0, ptr %s1, ptr %l1)
  store { i64, ptr } %t257, ptr %l145
  br label %bb68
bb68:
  %t258 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t258, ptr %l146, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 0
  store i64 %t260, ptr %l147, !tbaa !24
  %t261 = load i64, ptr %l147, !tbaa !24
  %t262 = mul i64 %t261, 1
  %t263 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t262)
  %t264 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  store { i64, ptr } %t265, ptr %l148, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = load i64, ptr %l147, !tbaa !24
  %t271 = mul i64 %t270, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t267, ptr %t269, i64 %t271, i1 false)
  %t272 = load { i64, ptr }, ptr %l148, !tbaa !27
  store { i64, ptr } %t272, ptr %l146, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t273 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t273, ptr %rv
  br label %ret
bb69:
  store i64 1, ptr %l19, !tbaa !24
  br label %bb70
bb70:
  %t274 = load i64, ptr %l19, !tbaa !24
  %t275 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t279 = sub i64 %t277, 1
  %t282 = icmp slt i64 %t274, %t279
  %t284 = xor i1 %t282, true
  br i1 %t284, label %bb71, label %bb72
bb71:
  br label %bb115
bb72:
  br label %bb73
bb73:
  %t286 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t286, ptr %l155, !tbaa !27
  %t287 = load i64, ptr %l19, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr i8, ptr %t290, i64 %t287
  %t292 = load i8, ptr %t291, !tbaa !32
  store i8 %t292, ptr %l20, !tbaa !22
  %t294 = load i8, ptr %l20, !tbaa !22
  %t296 = icmp ne i8 %t294, 92
  br i1 %t296, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l160, !tbaa !21
  br label %bb76
bb75:
  %t298 = load i64, ptr %l19, !tbaa !24
  %t300 = add i64 %t298, 1
  %t301 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t305 = sub i64 %t303, 1
  %t308 = icmp sge i64 %t300, %t305
  store i1 %t308, ptr %l160, !tbaa !21
  br label %bb76
bb76:
  %t310 = load i1, ptr %l160, !tbaa !21
  br i1 %t310, label %bb77, label %bb78
bb77:
  %t311 = load i8, ptr %l20, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %l1, i8 %t311)
  br label %bb79
bb78:
  br label %bb80
bb79:
  %t315 = load i64, ptr %l19, !tbaa !24
  %t317 = add i64 %t315, 1
  store i64 %t317, ptr %l19, !tbaa !24
  br label %bb114
bb80:
  %t319 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t319, ptr %l172, !tbaa !27
  %t320 = load i64, ptr %l19, !tbaa !24
  %t322 = add i64 %t320, 1
  %t324 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr i8, ptr %t325, i64 %t322
  %t327 = load i8, ptr %t326, !tbaa !32
  store i8 %t327, ptr %l21, !tbaa !22
  %t329 = load i8, ptr %l21, !tbaa !22
  %t331 = icmp eq i8 %t329, 120
  br i1 %t331, label %bb81, label %bb82
bb81:
  %t333 = load i64, ptr %l19, !tbaa !24
  %t335 = add i64 %t333, 3
  %t336 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t341 = icmp slt i64 %t335, %t338
  store i1 %t341, ptr %l178, !tbaa !21
  br label %bb83
bb82:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb83
bb83:
  %t343 = load i1, ptr %l178, !tbaa !21
  br i1 %t343, label %bb84, label %bb85
bb84:
  store ptr %l1, ptr %l184, !tbaa !29
  %t344 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t344, ptr %l185, !tbaa !27
  %t345 = load i64, ptr %l19, !tbaa !24
  %t347 = add i64 %t345, 2
  %t349 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr i8, ptr %t350, i64 %t347
  %t352 = load i8, ptr %t351, !tbaa !32
  %t354 = call i64 @compiler_2fscan_2ehexDigit(i8 %t352)
  store i64 %t354, ptr %l189
  br label %bb86
bb85:
  %t355 = load i8, ptr %l21, !tbaa !22
  %t357 = icmp eq i8 %t355, 117
  br i1 %t357, label %bb89, label %bb90
bb86:
  %t359 = load i64, ptr %l189, !tbaa !24
  %t360 = mul i64 %t359, 16
  store i64 %t360, ptr %l190, !tbaa !24
  %t361 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t361, ptr %l191, !tbaa !27
  %t362 = load i64, ptr %l19, !tbaa !24
  %t364 = add i64 %t362, 3
  %t366 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr i8, ptr %t367, i64 %t364
  %t369 = load i8, ptr %t368, !tbaa !32
  %t371 = call i64 @compiler_2fscan_2ehexDigit(i8 %t369)
  store i64 %t371, ptr %l195
  br label %bb87
bb87:
  %t372 = load i64, ptr %l190, !tbaa !24
  %t373 = load i64, ptr %l195, !tbaa !24
  %t374 = add i64 %t372, %t373
  %t376 = trunc i64 %t374 to i8
  %t377 = load ptr, ptr %l184, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %t377, i8 %t376)
  br label %bb88
bb88:
  %t379 = load i64, ptr %l19, !tbaa !24
  %t381 = add i64 %t379, 4
  store i64 %t381, ptr %l19, !tbaa !24
  br label %bb113
bb89:
  %t383 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t384 = load i64, ptr %l19, !tbaa !24
  %t387 = call { i32, { i64, i64 } } @compiler_2fscan_2eunicodeEscape(ptr %v0, { i64, ptr } %t383, i64 %t384)
  %t388 = extractvalue { i32, { i64, i64 } } %t387, 1
  %t389 = extractvalue { i32, { i64, i64 } } %t387, 0
  store i32 %t389, ptr %l206
  %t390 = icmp ne i32 %t389, 0
  br i1 %t390, label %bb92, label %ok.391, !prof !99
ok.391:
  store { i64, i64 } %t388, ptr %l205
  br label %bb91
bb90:
  store ptr %l1, ptr %l216, !tbaa !29
  %t392 = load i8, ptr %l21, !tbaa !22
  %t394 = icmp eq i8 %t392, 110
  br i1 %t394, label %bb99, label %bb100
bb91:
  %t396 = load { i64, i64 }, ptr %l205
  store { i64, i64 } %t396, ptr %l202
  br label %bb94
bb92:
  br label %bb93
bb93:
  %t397 = load i64, ptr %l19, !tbaa !24
  %t399 = add i64 %t397, 2
  %t400 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t402 = insertvalue { i64, i64 } %t400, i64 %t399, 1
  store { i64, i64 } %t402, ptr %l202
  br label %bb94
bb94:
  %t403 = load { i64, i64 }, ptr %l202
  store { i64, i64 } %t403, ptr %l22
  %t404 = getelementptr { i64, i64 }, ptr %l22, i32 0, i32 0
  %t405 = load i64, ptr %t404, !tbaa !24
  store i64 %t405, ptr %l23, !tbaa !24
  %t407 = getelementptr { i64, i64 }, ptr %l22, i32 0, i32 1
  %t408 = load i64, ptr %t407, !tbaa !24
  store i64 %t408, ptr %l24, !tbaa !24
  %t410 = load i64, ptr %l23, !tbaa !24
  %t412 = icmp sge i64 %t410, 0
  br i1 %t412, label %bb95, label %bb96
bb95:
  %t414 = load i64, ptr %l23, !tbaa !24
  call void @compiler_2fscan_2epushUtf8(ptr %s0, ptr %l1, i64 %t414)
  br label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb98
bb98:
  %t417 = load i64, ptr %l24, !tbaa !24
  store i64 %t417, ptr %l19, !tbaa !24
  br label %bb112
bb99:
  store i8 10, ptr %l219, !tbaa !22
  br label %bb110
bb100:
  %t419 = load i8, ptr %l21, !tbaa !22
  %t421 = icmp eq i8 %t419, 116
  br i1 %t421, label %bb101, label %bb102
bb101:
  store i8 9, ptr %l222, !tbaa !22
  br label %bb109
bb102:
  %t423 = load i8, ptr %l21, !tbaa !22
  %t425 = icmp eq i8 %t423, 114
  br i1 %t425, label %bb103, label %bb104
bb103:
  store i8 13, ptr %l225, !tbaa !22
  br label %bb108
bb104:
  %t427 = load i8, ptr %l21, !tbaa !22
  %t429 = icmp eq i8 %t427, 48
  br i1 %t429, label %bb105, label %bb106
bb105:
  store i8 0, ptr %l228, !tbaa !22
  br label %bb107
bb106:
  %t431 = load i8, ptr %l21, !tbaa !22
  store i8 %t431, ptr %l228, !tbaa !22
  br label %bb107
bb107:
  %t434 = load i8, ptr %l228, !tbaa !22
  store i8 %t434, ptr %l225, !tbaa !22
  br label %bb108
bb108:
  %t435 = load i8, ptr %l225, !tbaa !22
  store i8 %t435, ptr %l222, !tbaa !22
  br label %bb109
bb109:
  %t436 = load i8, ptr %l222, !tbaa !22
  store i8 %t436, ptr %l219, !tbaa !22
  br label %bb110
bb110:
  %t437 = load ptr, ptr %l216, !tbaa !29
  %t438 = load i8, ptr %l219, !tbaa !22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %s0, ptr %t437, i8 %t438)
  br label %bb111
bb111:
  %t439 = load i64, ptr %l19, !tbaa !24
  %t441 = add i64 %t439, 2
  store i64 %t441, ptr %l19, !tbaa !24
  br label %bb112
bb112:
  br label %bb113
bb113:
  br label %bb114
bb114:
  br label %bb70
bb115:
  %t444 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %s0, ptr %s0, ptr %l1)
  store { i64, ptr } %t444, ptr %l234
  br label %bb116
bb116:
  %t445 = load { i64, ptr }, ptr %l234, !tbaa !27
  store { i64, ptr } %t445, ptr %l235, !tbaa !27
  %t446 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 0
  store i64 %t447, ptr %l236, !tbaa !24
  %t448 = load i64, ptr %l236, !tbaa !24
  %t449 = mul i64 %t448, 1
  %t450 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t449)
  %t451 = insertvalue { i64, ptr } undef, i64 %t448, 0
  %t452 = insertvalue { i64, ptr } %t451, ptr %t450, 1
  store { i64, ptr } %t452, ptr %l237, !tbaa !27
  %t453 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t456 = load ptr, ptr %t455, !tbaa !27
  %t457 = load i64, ptr %l236, !tbaa !24
  %t458 = mul i64 %t457, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t454, ptr %t456, i64 %t458, i1 false)
  %t459 = load { i64, ptr }, ptr %l237, !tbaa !27
  store { i64, ptr } %t459, ptr %l235, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t460 = load { i64, ptr }, ptr %l235, !tbaa !27
  store { i64, ptr } %t460, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %v1, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t4, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"compiler/scan:scanner"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/token:Token"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca %"compiler/scan:scanner"
  %l15 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l32 = alloca i64
  %l36 = alloca i64
  %l44 = alloca { i64, ptr }
  %l49 = alloca %"compiler/scan:Tokens"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/scan:Tokens"
  %t69 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/scan:scanner" @compiler_2fscan_3ascanner_2ector(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store %"compiler/scan:scanner" %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load %"compiler/scan:scanner", ptr %l12
  store %"compiler/scan:scanner" %t4, ptr %l1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2erun(ptr %s0, ptr %l1)
  br label %bb2
bb2:
  %t6 = getelementptr %"compiler/scan:scanner", ptr %l1, i32 0, i32 1
  %t8 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2eToArray_3ccompiler_2ftoken_3aToken_3e(ptr %s0, ptr %v1, ptr %t6)
  store { i64, ptr } %t8, ptr %l15
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t24, ptr %l23, !tbaa !27
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/token:Token", ptr %t28, i64 %t25
  %t30 = load %"compiler/token:Token", ptr %t29
  store %"compiler/token:Token" %t30, ptr %l7
  %t32 = getelementptr %"compiler/token:Token", ptr %l7, i32 0, i32 0
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 114}
  %t35 = trunc i64 112 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l5, !tbaa !24
  br label %bb4
bb12:
  %t46 = load i64, ptr %l3, !tbaa !24
  store i64 %t46, ptr %l32, !tbaa !24
  %t47 = load i64, ptr %l32, !tbaa !24
  %t48 = icmp sge i64 %t47, 0
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load i64, ptr %l32, !tbaa !24
  %t51 = icmp sle i64 %t50, 2305843009213693951
  br i1 %t51, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_bcb8545b4a157296_c09080caec3ed55a)
  unreachable
bb15:
  %t53 = load i64, ptr %l32, !tbaa !24
  %t54 = mul i64 %t53, 4
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l8, !tbaa !27
  %t59 = load i64, ptr %l3, !tbaa !24
  store i64 %t59, ptr %l36, !tbaa !24
  %t60 = load i64, ptr %l36, !tbaa !24
  %t61 = icmp sge i64 %t60, 0
  br i1 %t61, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_bcb8545b4a157296_c09080caec3ed55a)
  unreachable
bb17:
  %t63 = load i64, ptr %l36, !tbaa !24
  %t64 = icmp sle i64 %t63, 2305843009213693951
  br i1 %t64, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_5edef46376bb22ab_dbf9e31b0e24ed2f)
  unreachable
bb19:
  %t66 = load i64, ptr %l36, !tbaa !24
  %t67 = mul i64 %t66, 4
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  store i64 0, ptr %t69
  br label %fill.70
fill.70:
  %t73 = load i64, ptr %t69
  %t74 = icmp slt i64 %t73, %t66
  br i1 %t74, label %fillb.71, label %filld.72
fillb.71:
  %t75 = getelementptr i32, ptr %t68, i64 %t73
  store i32 -1, ptr %t75
  %t76 = add i64 %t73, 1
  store i64 %t76, ptr %t69
  br label %fill.70
filld.72:
  %t77 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t68, 1
  store { i64, ptr } %t78, ptr %l9, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2fscan_2ematchBraces(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t80, { i64, ptr } %t81, { i64, ptr } %t82)
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_5edef46376bb22ab_dbf9e31b0e24ed2f)
  unreachable
bb21:
  %t86 = getelementptr %"compiler/scan:scanner", ptr %l1, i32 0, i32 2
  %t88 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscan_3aDiag_3e_2eToArray_3ccompiler_2fscan_3aDiag_3e(ptr %s0, ptr %v1, ptr %t86)
  store { i64, ptr } %t88, ptr %l44
  br label %bb22
bb22:
  %t89 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t91 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t98 = call %"compiler/scan:Tokens" @compiler_2fscan_3aTokens_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t90, { i64, ptr } %t91, { i64, ptr } %t92, { i64, ptr } %t89)
  store %"compiler/scan:Tokens" %t98, ptr %l49
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load %"compiler/scan:Tokens", ptr %l49
  store %"compiler/scan:Tokens" %t99, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scan:Tokens", ptr %rv
  ret %"compiler/scan:Tokens" %rr
}

define dso_local i1 @compiler_2fscan_2eblankLine(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 %a2, ptr %l4, !tbaa !24
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
  br label %bb18
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
  %t59 = icmp ne i8 %t57, 32
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l40, !tbaa !27
  %t62 = load i64, ptr %l8, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i8, ptr %t65, i64 %t62
  %t67 = load i8, ptr %t66, !tbaa !32
  %t69 = icmp ne i8 %t67, 9
  store i1 %t69, ptr %l39, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb13
bb13:
  %t71 = load i1, ptr %l39, !tbaa !21
  br i1 %t71, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l7, !tbaa !24
  br label %bb7
bb18:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscan_2eblockComment(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l12 = alloca { i64, ptr }
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = add i64 %t7, 1
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb12
bb3:
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t17, ptr %l12, !tbaa !27
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t25 = icmp eq i8 %t23, 35
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = add i64 %t28, 1
  %t32 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i8, ptr %t33, i64 %t30
  %t35 = load i8, ptr %t34, !tbaa !32
  %t37 = icmp eq i8 %t35, 35
  store i1 %t37, ptr %l16, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t39 = load i1, ptr %l16, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = add i64 %t40, 2
  store i64 %t42, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  br label %bb1
bb12:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscan_2ecanStart(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i8
  %l3 = alloca { i32, i64 }
  %l5 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i1
  %l25 = alloca i1
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l44 = alloca { i32, i64 }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  %t2 = load i64, ptr %l1, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i8, ptr %t5, i64 %t2
  %t7 = load i8, ptr %t6, !tbaa !32
  store i8 %t7, ptr %l2, !tbaa !22
  %t9 = load i8, ptr %l2, !tbaa !22
  %t11 = call i1 @compiler_2fscan_2eisWordChar(i8 %t9)
  store i1 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i8, ptr %l2, !tbaa !22
  %t15 = icmp eq i8 %t13, 32
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb7
bb6:
  %t18 = load i8, ptr %l2, !tbaa !22
  %t20 = icmp eq i8 %t18, 9
  store i1 %t20, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t22 = load i1, ptr %l13, !tbaa !21
  br i1 %t22, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb9:
  %t23 = load i8, ptr %l2, !tbaa !22
  %t25 = icmp eq i8 %t23, 10
  store i1 %t25, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l16, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb13
bb12:
  %t28 = load i8, ptr %l2, !tbaa !22
  %t30 = icmp eq i8 %t28, 35
  store i1 %t30, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb16
bb15:
  %t33 = load i8, ptr %l2, !tbaa !22
  %t35 = icmp eq i8 %t33, 34
  store i1 %t35, ptr %l22, !tbaa !21
  br label %bb16
bb16:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb19
bb18:
  %t38 = load i8, ptr %l2, !tbaa !22
  %t40 = icmp eq i8 %t38, 39
  store i1 %t40, ptr %l25, !tbaa !21
  br label %bb19
bb19:
  %t42 = load i1, ptr %l25, !tbaa !21
  br i1 %t42, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t44 = load i8, ptr %l2, !tbaa !22
  %t46 = icmp eq i8 %t44, 33
  br i1 %t46, label %bb23, label %bb24
bb23:
  %t48 = load i64, ptr %l1, !tbaa !24
  %t50 = add i64 %t48, 1
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t56 = icmp slt i64 %t50, %t53
  br i1 %t56, label %bb25, label %bb26
bb24:
  br label %bb28
bb25:
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t58, ptr %l37, !tbaa !27
  %t59 = load i64, ptr %l1, !tbaa !24
  %t61 = add i64 %t59, 1
  %t63 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i8, ptr %t64, i64 %t61
  %t66 = load i8, ptr %t65, !tbaa !32
  %t68 = icmp eq i8 %t66, 61
  store i1 %t68, ptr %l36, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb27
bb27:
  %t70 = load i1, ptr %l36, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
bb28:
  %t71 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t72 = load i64, ptr %l1, !tbaa !24
  %t75 = call { i32, i64 } @compiler_2fscan_2eoperator(ptr %v0, { i64, ptr } %t71, i64 %t72)
  store { i32, i64 } %t75, ptr %l44
  br label %bb29
bb29:
  %t76 = load { i32, i64 }, ptr %l44
  store { i32, i64 } %t76, ptr %l3
  %t77 = getelementptr { i32, i64 }, ptr %l3, i32 0, i32 0
  %t78 = load i32, ptr %t77, !range !{i32 0, i32 114}
  %t82 = trunc i64 0 to i32
  %t83 = icmp eq i32 %t78, %t82
  %t85 = xor i1 %t83, true
  store i1 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %v0, %"compiler/scan:Diag" %a0) #0 {
entry:
  %l0 = alloca %"compiler/scan:Diag"
  %l1 = alloca i8
  %l2 = alloca i32
  %l5 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l122 = alloca i64
  %l123 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store %"compiler/scan:Diag" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scan:Diag", ptr %l0, i32 0, i32 3
  %t2 = load i8, ptr %t1, !tbaa !22
  store i8 %t2, ptr %l1, !tbaa !22
  %t4 = getelementptr %"compiler/scan:Diag", ptr %l0, i32 0, i32 0
  %t5 = load i32, ptr %t4, !range !{i32 0, i32 29}
  store i32 %t5, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t9 = trunc i64 0 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t12 = load i8, ptr %l1, !tbaa !22
  %t13 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t16 = add i64 %t14, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = getelementptr i8, ptr %t20, i64 %t14
  store i8 %t12, ptr %t21
  %t22 = getelementptr i8, ptr %t21, i64 1
  call void @olang_textcopy(ptr %t22, ptr %t17, i64 %t18)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t20, 1
  store { i64, ptr } %t24, ptr %l5, !tbaa !27
  br label %bb117
bb4:
  %t26 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t28 = trunc i64 1 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t31, ptr %l5, !tbaa !27
  br label %bb117
bb8:
  %t33 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t35 = trunc i64 2 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  br label %bb117
bb12:
  %t40 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t42 = trunc i64 3 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  br label %bb117
bb16:
  %t47 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t49 = trunc i64 4 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t52, ptr %l5, !tbaa !27
  br label %bb117
bb20:
  %t54 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t56 = trunc i64 5 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 95, ptr getelementptr inbounds (<{ i64, [95 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t59, ptr %l5, !tbaa !27
  br label %bb117
bb24:
  %t61 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t63 = trunc i64 6 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t66, ptr %l5, !tbaa !27
  br label %bb117
bb28:
  %t68 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t70 = trunc i64 7 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t73, ptr %l5, !tbaa !27
  br label %bb117
bb32:
  %t75 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t77 = trunc i64 8 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t80, ptr %l5, !tbaa !27
  br label %bb117
bb36:
  %t82 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t84 = trunc i64 9 to i32
  %t85 = icmp eq i32 %t82, %t84
  br i1 %t85, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t87, ptr %l5, !tbaa !27
  br label %bb117
bb40:
  %t89 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t91 = trunc i64 10 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t94, ptr %l5, !tbaa !27
  br label %bb117
bb44:
  %t96 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t98 = trunc i64 11 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t101, ptr %l5, !tbaa !27
  br label %bb117
bb48:
  %t103 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t105 = trunc i64 12 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t108, ptr %l5, !tbaa !27
  br label %bb117
bb52:
  %t110 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t112 = trunc i64 13 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  %t115 = load i8, ptr %l1, !tbaa !22
  %t116 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t119 = add i64 %t117, 1
  %t120 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t122 = add i64 %t119, %t121
  %t123 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t122)
  call void @olang_textcopy(ptr %t123, ptr %t116, i64 %t117)
  %t124 = getelementptr i8, ptr %t123, i64 %t117
  store i8 %t115, ptr %t124
  %t125 = getelementptr i8, ptr %t124, i64 1
  call void @olang_textcopy(ptr %t125, ptr %t120, i64 %t121)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t123, 1
  store { i64, ptr } %t127, ptr %l5, !tbaa !27
  br label %bb117
bb56:
  %t129 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t131 = trunc i64 14 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t134, ptr %l5, !tbaa !27
  br label %bb117
bb60:
  %t136 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t138 = trunc i64 15 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l68, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t141, ptr %l5, !tbaa !27
  br label %bb117
bb64:
  %t143 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t145 = trunc i64 16 to i32
  %t146 = icmp eq i32 %t143, %t145
  br i1 %t146, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  store { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l72, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t148, ptr %l5, !tbaa !27
  br label %bb117
bb68:
  %t150 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t152 = trunc i64 17 to i32
  %t153 = icmp eq i32 %t150, %t152
  br i1 %t153, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  store { i64, ptr } { i64 84, ptr getelementptr inbounds (<{ i64, [84 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l76, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t155, ptr %l5, !tbaa !27
  br label %bb117
bb72:
  %t157 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t159 = trunc i64 18 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  store { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l80, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t162, ptr %l5, !tbaa !27
  br label %bb117
bb76:
  %t164 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t166 = trunc i64 19 to i32
  %t167 = icmp eq i32 %t164, %t166
  br i1 %t167, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  store { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t169, ptr %l5, !tbaa !27
  br label %bb117
bb80:
  %t171 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t173 = trunc i64 20 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  store { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l88, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t176, ptr %l5, !tbaa !27
  br label %bb117
bb84:
  %t178 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t180 = trunc i64 21 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  store { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l92, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t183, ptr %l5, !tbaa !27
  br label %bb117
bb88:
  %t185 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t187 = trunc i64 22 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l96, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t190, ptr %l5, !tbaa !27
  br label %bb117
bb92:
  %t192 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t194 = trunc i64 23 to i32
  %t195 = icmp eq i32 %t192, %t194
  br i1 %t195, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l100, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t197, ptr %l5, !tbaa !27
  br label %bb117
bb96:
  %t199 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t201 = trunc i64 24 to i32
  %t202 = icmp eq i32 %t199, %t201
  br i1 %t202, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  %t204 = load i8, ptr %l1, !tbaa !22
  %t205 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t208 = add i64 %t206, 1
  %t209 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t211 = add i64 %t208, %t210
  %t212 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t211)
  call void @olang_textcopy(ptr %t212, ptr %t205, i64 %t206)
  %t213 = getelementptr i8, ptr %t212, i64 %t206
  store i8 %t204, ptr %t213
  %t214 = getelementptr i8, ptr %t213, i64 1
  call void @olang_textcopy(ptr %t214, ptr %t209, i64 %t210)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t212, 1
  store { i64, ptr } %t216, ptr %l5, !tbaa !27
  br label %bb117
bb100:
  %t218 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t220 = trunc i64 25 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb101, label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb104
bb103:
  %t223 = load i8, ptr %l1, !tbaa !22
  %t224 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t227 = add i64 %t225, 1
  %t228 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t229 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t230 = add i64 %t227, %t229
  %t231 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t230)
  call void @olang_textcopy(ptr %t231, ptr %t224, i64 %t225)
  %t232 = getelementptr i8, ptr %t231, i64 %t225
  store i8 %t223, ptr %t232
  %t233 = getelementptr i8, ptr %t232, i64 1
  call void @olang_textcopy(ptr %t233, ptr %t228, i64 %t229)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t231, 1
  store { i64, ptr } %t235, ptr %l5, !tbaa !27
  br label %bb117
bb104:
  %t237 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t239 = trunc i64 26 to i32
  %t240 = icmp eq i32 %t237, %t239
  br i1 %t240, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb108
bb107:
  store { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l112, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t242, ptr %l5, !tbaa !27
  br label %bb117
bb108:
  %t244 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t246 = trunc i64 27 to i32
  %t247 = icmp eq i32 %t244, %t246
  br i1 %t247, label %bb109, label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb112
bb111:
  store { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l116, !tbaa !27
  %t249 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t249, ptr %l5, !tbaa !27
  br label %bb117
bb112:
  %t251 = load i32, ptr %l2, !range !{i32 0, i32 29}
  %t253 = trunc i64 28 to i32
  %t254 = icmp eq i32 %t251, %t253
  br i1 %t254, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  store { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l120, !tbaa !27
  %t256 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t256, ptr %l5, !tbaa !27
  br label %bb117
bb116:
  call void @__olang_check_failed(ptr @olang_loc_39af88013a73b478_a5c9d135875fcb24)
  unreachable
bb117:
  %t258 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 0
  store i64 %t259, ptr %l122, !tbaa !24
  %t260 = load i64, ptr %l122, !tbaa !24
  %t261 = mul i64 %t260, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t261)
  %t263 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  store { i64, ptr } %t264, ptr %l123, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = load i64, ptr %l122, !tbaa !24
  %t270 = mul i64 %t269, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t266, ptr %t268, i64 %t270, i1 false)
  %t271 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t271, ptr %l5, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t272, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %v0, %"compiler/scan:Diag" %a0) #0 {
entry:
  %l0 = alloca %"compiler/scan:Diag"
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store %"compiler/scan:Diag" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scan:Diag", ptr %l0, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 29}
  store i32 %t2, ptr %l1
  %t4 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t6 = trunc i64 0 to i32
  %t7 = icmp eq i32 %t4, %t6
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb4:
  %t9 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t11 = trunc i64 1 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t14 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t16 = trunc i64 2 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb10:
  %t19 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t21 = trunc i64 3 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb14:
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t26 = trunc i64 4 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb18:
  %t29 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t31 = trunc i64 5 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb22:
  %t34 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t36 = trunc i64 6 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb26:
  %t39 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t41 = trunc i64 7 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  %t44 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t46 = trunc i64 8 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb32:
  %t49 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t51 = trunc i64 9 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb33, label %bb34
bb33:
  br label %bb41
bb34:
  %t54 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t56 = trunc i64 10 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  %t59 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t61 = trunc i64 11 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  %t64 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t66 = trunc i64 12 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb42:
  %t69 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t71 = trunc i64 13 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb43, label %bb44
bb43:
  br label %bb51
bb44:
  %t74 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t76 = trunc i64 14 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  %t79 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t81 = trunc i64 15 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb47, label %bb48
bb47:
  br label %bb51
bb48:
  %t84 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t86 = trunc i64 16 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb52:
  %t89 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t91 = trunc i64 17 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb56:
  %t94 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t96 = trunc i64 18 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb57, label %bb58
bb57:
  br label %bb65
bb58:
  %t99 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t101 = trunc i64 19 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb59, label %bb60
bb59:
  br label %bb65
bb60:
  %t104 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t106 = trunc i64 20 to i32
  %t107 = icmp eq i32 %t104, %t106
  br i1 %t107, label %bb61, label %bb62
bb61:
  br label %bb65
bb62:
  %t109 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t111 = trunc i64 21 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb66:
  %t114 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t116 = trunc i64 22 to i32
  %t117 = icmp eq i32 %t114, %t116
  br i1 %t117, label %bb67, label %bb68
bb67:
  br label %bb71
bb68:
  %t119 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t121 = trunc i64 24 to i32
  %t122 = icmp eq i32 %t119, %t121
  br i1 %t122, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb72:
  %t124 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t126 = trunc i64 23 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb73, label %bb74
bb73:
  br label %bb77
bb74:
  %t129 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t131 = trunc i64 25 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb78:
  %t134 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t136 = trunc i64 26 to i32
  %t137 = icmp eq i32 %t134, %t136
  br i1 %t137, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb82:
  %t139 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t141 = trunc i64 27 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb83, label %bb84
bb83:
  br label %bb87
bb84:
  %t144 = load i32, ptr %l1, !range !{i32 0, i32 29}
  %t146 = trunc i64 28 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_3aab5bd1ecbcb485_f7a3519a1de9c361)
  unreachable
bb89:
  %t149 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t149, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:Tokens", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = sub i64 %t6, 1
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp sle i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb12
bb3:
  br label %bb4
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = add i64 %t18, %t19
  %t24 = sdiv i64 %t22, 2
  store i64 %t24, ptr %l4, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scan:Tokens", ptr %t26, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l19, !tbaa !27
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i32, ptr %t33, i64 %t30
  %t35 = load i32, ptr %t34, !tbaa !33
  store i32 %t35, ptr %l5, !tbaa !23
  %t37 = load i32, ptr %l5, !tbaa !23
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = icmp eq i32 %t37, %t38
  br i1 %t41, label %bb5, label %bb6
bb5:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scan:Tokens", ptr %t43, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l26, !tbaa !27
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i32, ptr %t50, i64 %t47
  %t52 = load i32, ptr %t51, !tbaa !33
  store i32 %t52, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t54 = load i32, ptr %l5, !tbaa !23
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = icmp slt i32 %t54, %t55
  br i1 %t58, label %bb8, label %bb9
bb8:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l2, !tbaa !24
  br label %bb10
bb9:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t66 = sub i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb1
bb12:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2echar(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l7 = alloca i64
  %l8 = alloca i64
  %l23 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l68 = alloca i64
  %l79 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l98 = alloca i1
  %l99 = alloca { i64, ptr }
  %l103 = alloca i1
  %l104 = alloca { i64, ptr }
  %l114 = alloca i1
  %l115 = alloca { i64, ptr }
  %l119 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = add i64 %t10, 1
  store i64 %t12, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp sge i64 %t14, %t15
  br i1 %t18, label %bb1, label %bb2
bb1:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t20, i32 9, i64 %t21, i64 %t22, i8 0)
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t27 = load i64, ptr %l3, !tbaa !24
  store i64 %t27, ptr %rv
  br label %ret
bb4:
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t29, ptr %l23, !tbaa !27
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i8, ptr %t33, i64 %t30
  %t35 = load i8, ptr %t34, !tbaa !32
  store i8 %t35, ptr %l5, !tbaa !22
  %t37 = load i8, ptr %l5, !tbaa !22
  %t39 = icmp eq i8 %t37, 10
  br i1 %t39, label %bb5, label %bb6
bb5:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t41, i32 10, i64 %t42, i64 %t43, i8 0)
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t48 = load i64, ptr %l4, !tbaa !24
  store i64 %t48, ptr %rv
  br label %ret
bb8:
  %t50 = load i8, ptr %l5, !tbaa !22
  %t52 = icmp eq i8 %t50, 39
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l1, !tbaa !24
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = add i64 %t56, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t54, i32 11, i64 %t55, i64 %t58, i8 0)
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %rv
  br label %ret
bb12:
  %t67 = load i8, ptr %l5, !tbaa !22
  %t69 = icmp eq i8 %t67, 92
  br i1 %t69, label %bb13, label %bb14
bb13:
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = add i64 %t71, 1
  %t74 = load i64, ptr %l3, !tbaa !24
  %t77 = icmp sge i64 %t73, %t74
  br i1 %t77, label %bb15, label %bb16
bb14:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb24
bb15:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l1, !tbaa !24
  %t85 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t83, i32 9, i64 %t84, i64 %t85, i8 0)
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t90 = load i64, ptr %l3, !tbaa !24
  store i64 %t90, ptr %rv
  br label %ret
bb18:
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t92, ptr %l53, !tbaa !27
  %t93 = load i64, ptr %l4, !tbaa !24
  %t95 = add i64 %t93, 1
  %t97 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i8, ptr %t98, i64 %t95
  %t100 = load i8, ptr %t99, !tbaa !32
  %t104 = icmp eq i8 %t100, 10
  br i1 %t104, label %bb19, label %bb20
bb19:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l1, !tbaa !24
  %t108 = load i64, ptr %l4, !tbaa !24
  %t110 = add i64 %t108, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t106, i32 10, i64 %t107, i64 %t110, i8 0)
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t115 = load i64, ptr %l4, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %rv
  br label %ret
bb22:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i64, ptr %l4, !tbaa !24
  %t123 = call i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2eescape(ptr %v0, ptr %t119, i64 %t120, i8 39)
  store i64 %t123, ptr %l68
  br label %bb23
bb23:
  %t124 = load i64, ptr %l68, !tbaa !24
  store i64 %t124, ptr %l4, !tbaa !24
  br label %bb24
bb24:
  %t125 = load i64, ptr %l4, !tbaa !24
  %t126 = load i64, ptr %l3, !tbaa !24
  %t129 = icmp sge i64 %t125, %t126
  br i1 %t129, label %bb25, label %bb26
bb25:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i64, ptr %l1, !tbaa !24
  %t133 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t131, i32 9, i64 %t132, i64 %t133, i8 0)
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t138 = load i64, ptr %l3, !tbaa !24
  store i64 %t138, ptr %rv
  br label %ret
bb28:
  %t140 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t140, ptr %l79, !tbaa !27
  %t141 = load i64, ptr %l4, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr i8, ptr %t144, i64 %t141
  %t146 = load i8, ptr %t145, !tbaa !32
  %t148 = icmp eq i8 %t146, 39
  br i1 %t148, label %bb29, label %bb30
bb29:
  %t150 = load i64, ptr %l4, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t154 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t154, ptr %l85, !tbaa !27
  %t155 = load i64, ptr %l4, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr i8, ptr %t158, i64 %t155
  %t160 = load i8, ptr %t159, !tbaa !32
  %t162 = icmp eq i8 %t160, 10
  br i1 %t162, label %bb32, label %bb33
bb32:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i64, ptr %l1, !tbaa !24
  %t166 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t164, i32 10, i64 %t165, i64 %t166, i8 0)
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t171 = load i64, ptr %l4, !tbaa !24
  store i64 %t171, ptr %rv
  br label %ret
bb35:
  %t173 = load i64, ptr %l4, !tbaa !24
  store i64 %t173, ptr %l7, !tbaa !24
  br label %bb36
bb36:
  %t175 = load i64, ptr %l7, !tbaa !24
  %t176 = load i64, ptr %l3, !tbaa !24
  %t179 = icmp slt i64 %t175, %t176
  br i1 %t179, label %bb37, label %bb38
bb37:
  %t181 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t181, ptr %l99, !tbaa !27
  %t182 = load i64, ptr %l7, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i8, ptr %t185, i64 %t182
  %t187 = load i8, ptr %t186, !tbaa !32
  %t189 = icmp ne i8 %t187, 39
  store i1 %t189, ptr %l98, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb39
bb39:
  %t191 = load i1, ptr %l98, !tbaa !21
  br i1 %t191, label %bb40, label %bb41
bb40:
  %t192 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t192, ptr %l104, !tbaa !27
  %t193 = load i64, ptr %l7, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i8, ptr %t196, i64 %t193
  %t198 = load i8, ptr %t197, !tbaa !32
  %t200 = icmp ne i8 %t198, 10
  store i1 %t200, ptr %l103, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb42
bb42:
  %t202 = load i1, ptr %l103, !tbaa !21
  %t203 = xor i1 %t202, true
  br i1 %t203, label %bb43, label %bb44
bb43:
  br label %bb47
bb44:
  br label %bb45
bb45:
  %t205 = load i64, ptr %l7, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l7, !tbaa !24
  br label %bb46
bb46:
  br label %bb36
bb47:
  %t209 = load i64, ptr %l7, !tbaa !24
  %t210 = load i64, ptr %l3, !tbaa !24
  %t213 = icmp slt i64 %t209, %t210
  br i1 %t213, label %bb48, label %bb49
bb48:
  %t215 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t215, ptr %l115, !tbaa !27
  %t216 = load i64, ptr %l7, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr i8, ptr %t219, i64 %t216
  %t221 = load i8, ptr %t220, !tbaa !32
  %t223 = icmp eq i8 %t221, 39
  store i1 %t223, ptr %l114, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb50
bb50:
  %t225 = load i1, ptr %l114, !tbaa !21
  br i1 %t225, label %bb51, label %bb52
bb51:
  %t226 = load i64, ptr %l7, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l119, !tbaa !24
  br label %bb53
bb52:
  %t230 = load i64, ptr %l7, !tbaa !24
  store i64 %t230, ptr %l119, !tbaa !24
  br label %bb53
bb53:
  %t232 = load i64, ptr %l119, !tbaa !24
  store i64 %t232, ptr %l8, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l1, !tbaa !24
  %t235 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t233, i32 12, i64 %t234, i64 %t235, i8 0)
  br label %bb54
bb54:
  %t240 = load i64, ptr %l8, !tbaa !24
  store i64 %t240, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ecloseBeforeDecl(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i1
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 3
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scan:scanner", ptr %t9, i32 0, i32 4
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  store i1 %t14, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t19 = trunc i64 33 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb9:
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t24 = trunc i64 41 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l16, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb13
bb12:
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t30 = trunc i64 40 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb16
bb15:
  %t34 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t36 = trunc i64 43 to i32
  %t37 = icmp eq i32 %t34, %t36
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb16
bb16:
  %t39 = load i1, ptr %l22, !tbaa !21
  store i1 %t39, ptr %l3, !tbaa !21
  %t40 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t42 = trunc i64 37 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb17, label %bb18
bb17:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scan:scanner", ptr %t45, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l4, !tbaa !27
  store i64 %a2, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb38
bb19:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t58 = icmp slt i64 %t52, %t55
  br i1 %t58, label %bb20, label %bb21
bb20:
  %t60 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t60, ptr %l35, !tbaa !27
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i8, ptr %t64, i64 %t61
  %t66 = load i8, ptr %t65, !tbaa !32
  %t68 = icmp eq i8 %t66, 32
  br i1 %t68, label %bb22, label %bb23
bb21:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb25
bb22:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb24
bb23:
  %t70 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t70, ptr %l40, !tbaa !27
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i8, ptr %t74, i64 %t71
  %t76 = load i8, ptr %t75, !tbaa !32
  %t78 = icmp eq i8 %t76, 9
  store i1 %t78, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t80 = load i1, ptr %l39, !tbaa !21
  store i1 %t80, ptr %l34, !tbaa !21
  br label %bb25
bb25:
  %t81 = load i1, ptr %l34, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l5, !tbaa !24
  br label %bb29
bb29:
  br label %bb19
bb30:
  %t88 = load i64, ptr %l5, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t94 = icmp slt i64 %t88, %t91
  br i1 %t94, label %bb31, label %bb32
bb31:
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t96, ptr %l52, !tbaa !27
  %t97 = load i64, ptr %l5, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i8, ptr %t100, i64 %t97
  %t102 = load i8, ptr %t101, !tbaa !32
  %t104 = call i1 @compiler_2fscan_2eisLetter(i8 %t102)
  store i1 %t104, ptr %l55
  br label %bb33
bb32:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb37
bb33:
  %t105 = load i1, ptr %l55, !tbaa !21
  br i1 %t105, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb36
bb35:
  %t106 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t106, ptr %l57, !tbaa !27
  %t107 = load i64, ptr %l5, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i8, ptr %t110, i64 %t107
  %t112 = load i8, ptr %t111, !tbaa !32
  %t114 = icmp eq i8 %t112, 95
  store i1 %t114, ptr %l56, !tbaa !21
  br label %bb36
bb36:
  %t116 = load i1, ptr %l56, !tbaa !21
  store i1 %t116, ptr %l51, !tbaa !21
  br label %bb37
bb37:
  %t117 = load i1, ptr %l51, !tbaa !21
  store i1 %t117, ptr %l3, !tbaa !21
  br label %bb38
bb38:
  %t118 = load i1, ptr %l3, !tbaa !21
  br i1 %t118, label %bb39, label %bb40
bb39:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/scan:scanner", ptr %t120, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eClear_Hee3cbaa7ef2d16f687a523c73aa64228(ptr %v0, ptr %t122)
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i8 %a4) #0 {
entry:
  %l6 = alloca ptr
  %l13 = alloca %"compiler/scan:Diag"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/scan:scanner", ptr %a0, i32 0, i32 2
  store ptr %t3, ptr %l6, !tbaa !29
  %t7 = trunc i64 %a2 to i32
  %t10 = trunc i64 %a3 to i32
  %t16 = call %"compiler/scan:Diag" @compiler_2fscan_3aDiag_2ector(ptr %s0, i32 %a1, i32 %t7, i32 %t10, i8 %a4)
  store %"compiler/scan:Diag" %t16, ptr %l13
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t18 = load %"compiler/scan:Diag", ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscan_3aDiag_3e_2ePush_3ccompiler_2fscan_3aDiag_3e(ptr %v0, ptr %t17, %"compiler/scan:Diag" %t18)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, i64 } @compiler_2fscan_2ecompiler_2fscan_3ascanner_2edigits(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i8
  %l8 = alloca i8
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %l46 = alloca i1
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  store i64 %a1, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  store i8 0, ptr %l7, !tbaa !22
  br label %bb1
bb1:
  %t12 = load i64, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %bb28
bb3:
  br label %bb4
bb4:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t20, ptr %l19, !tbaa !27
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i8, ptr %t24, i64 %t21
  %t26 = load i8, ptr %t25, !tbaa !32
  store i8 %t26, ptr %l8, !tbaa !22
  %t28 = load i8, ptr %l8, !tbaa !22
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = call i1 @compiler_2fscan_2edigitOf(i8 %t28, i64 %t29)
  store i1 %t32, ptr %l24
  br label %bb5
bb5:
  %t33 = load i1, ptr %l24, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l6, !tbaa !24
  br label %bb26
bb7:
  %t38 = load i8, ptr %l8, !tbaa !22
  %t40 = icmp eq i8 %t38, 95
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load i8, ptr %l7, !tbaa !22
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = call i1 @compiler_2fscan_2edigitOf(i8 %t42, i64 %t43)
  store i1 %t46, ptr %l31
  br label %bb10
bb9:
  br label %bb28
bb10:
  %t47 = load i1, ptr %l31, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = add i64 %t48, 1
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  store i1 %t54, ptr %l32, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t56 = load i1, ptr %l32, !tbaa !21
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t57, ptr %l38, !tbaa !27
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 1
  %t62 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i8, ptr %t63, i64 %t60
  %t65 = load i8, ptr %t64, !tbaa !32
  %t66 = load i64, ptr %l2, !tbaa !24
  %t69 = call i1 @compiler_2fscan_2edigitOf(i8 %t65, i64 %t66)
  store i1 %t69, ptr %l43
  br label %bb16
bb15:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb16:
  %t70 = load i1, ptr %l43, !tbaa !21
  store i1 %t70, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t71 = load i1, ptr %l37, !tbaa !21
  %t74 = xor i1 %t71, true
  br i1 %t74, label %bb18, label %bb19
bb18:
  %t76 = load i8, ptr %l7, !tbaa !22
  %t78 = icmp ne i8 %t76, 95
  store i1 %t78, ptr %l46, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb20
bb20:
  %t80 = load i1, ptr %l46, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l5, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t85 = add i64 %t83, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t81, i32 26, i64 %t82, i64 %t85, i8 0)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t90 = load i8, ptr %l8, !tbaa !22
  store i8 %t90, ptr %l7, !tbaa !22
  %t92 = load i64, ptr %l5, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l5, !tbaa !24
  br label %bb27
bb27:
  br label %bb1
bb28:
  %t96 = load i64, ptr %l5, !tbaa !24
  %t97 = load i64, ptr %l6, !tbaa !24
  %t99 = insertvalue { i64, i64 } undef, i64 %t96, 0
  %t101 = insertvalue { i64, i64 } %t99, i64 %t97, 1
  store { i64, i64 } %t101, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2eescape(ptr %v0, ptr %a0, i64 %a1, i8 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i8
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca { i64, i64 }
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l28 = alloca i64
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l35 = alloca i64
  %l48 = alloca { i64, i64 }
  %l51 = alloca { i64, i64 }
  %l52 = alloca i32
  %l64 = alloca i1
  %l67 = alloca i1
  %l76 = alloca i1
  %l86 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i8 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t10, ptr %l13, !tbaa !27
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = add i64 %t11, 1
  %t15 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i8, ptr %t16, i64 %t13
  %t18 = load i8, ptr %t17, !tbaa !32
  store i8 %t18, ptr %l5, !tbaa !22
  %t20 = load i8, ptr %l5, !tbaa !22
  %t22 = icmp eq i8 %t20, 120
  br i1 %t22, label %bb1, label %bb2
bb1:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = add i64 %t24, 3
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp slt i64 %t26, %t27
  br i1 %t30, label %bb3, label %bb4
bb2:
  br label %bb15
bb3:
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t32, ptr %l24, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = add i64 %t33, 2
  %t37 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t35
  %t40 = load i8, ptr %t39, !tbaa !32
  %t42 = call i64 @compiler_2fscan_2ehexDigit(i8 %t40)
  store i64 %t42, ptr %l28
  br label %bb5
bb4:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb6
bb5:
  %t43 = load i64, ptr %l28, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  store i1 %t44, ptr %l23, !tbaa !21
  br label %bb6
bb6:
  %t46 = load i1, ptr %l23, !tbaa !21
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t47, ptr %l31, !tbaa !27
  %t48 = load i64, ptr %l1, !tbaa !24
  %t50 = add i64 %t48, 3
  %t52 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i8, ptr %t53, i64 %t50
  %t55 = load i8, ptr %t54, !tbaa !32
  %t57 = call i64 @compiler_2fscan_2ehexDigit(i8 %t55)
  store i64 %t57, ptr %l35
  br label %bb9
bb8:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb10
bb9:
  %t58 = load i64, ptr %l35, !tbaa !24
  %t59 = icmp sge i64 %t58, 0
  store i1 %t59, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t62 = load i64, ptr %l1, !tbaa !24
  %t64 = add i64 %t62, 4
  store i64 %t64, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = load i64, ptr %l1, !tbaa !24
  %t70 = add i64 %t68, 2
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t66, i32 14, i64 %t67, i64 %t70, i8 0)
  br label %bb14
bb14:
  %t75 = load i64, ptr %l1, !tbaa !24
  %t77 = add i64 %t75, 2
  store i64 %t77, ptr %rv
  br label %ret
bb15:
  %t79 = load i8, ptr %l5, !tbaa !22
  %t81 = icmp eq i8 %t79, 117
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t84 = load i64, ptr %l1, !tbaa !24
  %t87 = call { i32, { i64, i64 } } @compiler_2fscan_2eunicodeEscape(ptr %v0, { i64, ptr } %t83, i64 %t84)
  %t88 = extractvalue { i32, { i64, i64 } } %t87, 1
  %t89 = extractvalue { i32, { i64, i64 } } %t87, 0
  store i32 %t89, ptr %l52
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb19, label %ok.91, !prof !99
ok.91:
  store { i64, i64 } %t88, ptr %l51
  br label %bb18
bb17:
  br label %bb40
bb18:
  %t92 = load { i64, i64 }, ptr %l51
  store { i64, i64 } %t92, ptr %l48
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l1, !tbaa !24
  %t95 = load i64, ptr %l1, !tbaa !24
  %t97 = add i64 %t95, 2
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t93, i32 15, i64 %t94, i64 %t97, i8 0)
  br label %bb21
bb21:
  %t102 = load i64, ptr %l1, !tbaa !24
  %t104 = add i64 %t102, 2
  store i64 %t104, ptr %rv
  br label %ret
bb22:
  %t106 = load { i64, i64 }, ptr %l48
  store { i64, i64 } %t106, ptr %l6
  %t107 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  store i64 %t108, ptr %l7, !tbaa !24
  %t110 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %l8, !tbaa !24
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = icmp sgt i64 %t113, 1114111
  br i1 %t115, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb28
bb24:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t119 = icmp sge i64 %t117, 55296
  br i1 %t119, label %bb25, label %bb26
bb25:
  %t121 = load i64, ptr %l7, !tbaa !24
  %t123 = icmp sle i64 %t121, 57343
  store i1 %t123, ptr %l67, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb27
bb27:
  %t125 = load i1, ptr %l67, !tbaa !21
  store i1 %t125, ptr %l64, !tbaa !21
  br label %bb28
bb28:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb29, label %bb30
bb29:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i64, ptr %l1, !tbaa !24
  %t129 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t127, i32 16, i64 %t128, i64 %t129, i8 0)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t134 = load i8, ptr %l2, !tbaa !22
  %t136 = icmp eq i8 %t134, 39
  br i1 %t136, label %bb33, label %bb34
bb33:
  %t138 = load i64, ptr %l7, !tbaa !24
  %t140 = icmp sge i64 %t138, 128
  store i1 %t140, ptr %l76, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb35
bb35:
  %t142 = load i1, ptr %l76, !tbaa !21
  br i1 %t142, label %bb36, label %bb37
bb36:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i64, ptr %l1, !tbaa !24
  %t145 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t143, i32 17, i64 %t144, i64 %t145, i8 0)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  %t150 = load i64, ptr %l8, !tbaa !24
  store i64 %t150, ptr %rv
  br label %ret
bb40:
  %t152 = load i8, ptr %l5, !tbaa !22
  %t153 = load i8, ptr %l2, !tbaa !22
  %t156 = call i1 @compiler_2fscan_2eescapeOk(i8 %t152, i8 %t153)
  store i1 %t156, ptr %l86
  br label %bb41
bb41:
  %t157 = load i1, ptr %l86, !tbaa !21
  %t158 = xor i1 %t157, true
  br i1 %t158, label %bb42, label %bb43
bb42:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i64, ptr %l1, !tbaa !24
  %t162 = load i64, ptr %l1, !tbaa !24
  %t164 = add i64 %t162, 2
  %t165 = load i8, ptr %l5, !tbaa !22
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t160, i32 13, i64 %t161, i64 %t164, i8 %t165)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  %t171 = load i64, ptr %l1, !tbaa !24
  %t173 = add i64 %t171, 2
  store i64 %t173, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i64 } @compiler_2fscan_2ecompiler_2fscan_3ascanner_2enumber(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i8
  %l5 = alloca i1
  %l6 = alloca { i64, i64 }
  %l7 = alloca i64
  %l9 = alloca { i64, i64 }
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, i64 }
  %l13 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, i64 }
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l31 = alloca { i64, ptr }
  %l37 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i1
  %l51 = alloca ptr
  %l53 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, i64 }
  %l61 = alloca ptr
  %l63 = alloca i32
  %l71 = alloca i1
  %l72 = alloca { i64, ptr }
  %l75 = alloca i1
  %l76 = alloca i1
  %l77 = alloca { i64, ptr }
  %l80 = alloca i1
  %l81 = alloca ptr
  %l83 = alloca i32
  %l89 = alloca { i64, ptr }
  %l97 = alloca { i64, i64 }
  %l102 = alloca i1
  %l106 = alloca { i64, i64 }
  %l120 = alloca i1
  %l129 = alloca i1
  %l130 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca { i64, ptr }
  %l144 = alloca i1
  %l145 = alloca { i64, ptr }
  %l149 = alloca i1
  %l150 = alloca { i64, ptr }
  %l158 = alloca i1
  %l161 = alloca { i64, i64 }
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t10, ptr %l22, !tbaa !27
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr i8, ptr %t14, i64 %t11
  %t16 = load i8, ptr %t15, !tbaa !32
  %t18 = icmp eq i8 %t16, 48
  br i1 %t18, label %bb1, label %bb2
bb1:
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = add i64 %t20, 1
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  store i1 %t26, ptr %l26, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb3
bb3:
  %t28 = load i1, ptr %l26, !tbaa !21
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t29, ptr %l31, !tbaa !27
  %t30 = load i64, ptr %l1, !tbaa !24
  %t32 = add i64 %t30, 1
  %t34 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t32
  %t37 = load i8, ptr %t36, !tbaa !32
  store i8 %t37, ptr %l4, !tbaa !22
  %t39 = load i8, ptr %l4, !tbaa !22
  %t41 = icmp eq i8 %t39, 120
  br i1 %t41, label %bb6, label %bb7
bb5:
  br label %bb47
bb6:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb8
bb7:
  %t43 = load i8, ptr %l4, !tbaa !22
  %t45 = icmp eq i8 %t43, 88
  store i1 %t45, ptr %l37, !tbaa !21
  br label %bb8
bb8:
  %t47 = load i1, ptr %l37, !tbaa !21
  br i1 %t47, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb11
bb10:
  %t48 = load i8, ptr %l4, !tbaa !22
  %t50 = icmp eq i8 %t48, 98
  store i1 %t50, ptr %l40, !tbaa !21
  br label %bb11
bb11:
  %t52 = load i1, ptr %l40, !tbaa !21
  br i1 %t52, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  %t53 = load i8, ptr %l4, !tbaa !22
  %t55 = icmp eq i8 %t53, 66
  store i1 %t55, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l43, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load i8, ptr %l4, !tbaa !22
  %t60 = icmp eq i8 %t58, 120
  br i1 %t60, label %bb17, label %bb18
bb16:
  br label %bb46
bb17:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb19
bb18:
  %t62 = load i8, ptr %l4, !tbaa !22
  %t64 = icmp eq i8 %t62, 88
  store i1 %t64, ptr %l48, !tbaa !21
  br label %bb19
bb19:
  %t66 = load i1, ptr %l48, !tbaa !21
  store i1 %t66, ptr %l5, !tbaa !21
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l51, !tbaa !29
  %t68 = load i64, ptr %l1, !tbaa !24
  %t70 = add i64 %t68, 2
  store i64 %t70, ptr %l53, !tbaa !24
  %t71 = load i1, ptr %l5, !tbaa !21
  br i1 %t71, label %bb20, label %bb21
bb20:
  store i64 16, ptr %l55, !tbaa !24
  br label %bb22
bb21:
  store i64 2, ptr %l55, !tbaa !24
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l51, !tbaa !29
  %t74 = load i64, ptr %l53, !tbaa !24
  %t75 = load i64, ptr %l55, !tbaa !24
  %t76 = call { i64, i64 } @compiler_2fscan_2ecompiler_2fscan_3ascanner_2edigits(ptr %v0, ptr %t73, i64 %t74, i64 %t75)
  store { i64, i64 } %t76, ptr %l56
  br label %bb23
bb23:
  %t77 = load { i64, i64 }, ptr %l56
  store { i64, i64 } %t77, ptr %l6
  %t78 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t79 = load i64, ptr %t78, !tbaa !24
  store i64 %t79, ptr %l7, !tbaa !24
  %t81 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t82 = load i64, ptr %t81, !tbaa !24
  %t86 = icmp eq i64 %t82, 0
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l61, !tbaa !29
  %t89 = load i1, ptr %l5, !tbaa !21
  br i1 %t89, label %bb26, label %bb27
bb25:
  br label %bb30
bb26:
  store i32 22, ptr %l63
  br label %bb28
bb27:
  store i32 23, ptr %l63
  br label %bb28
bb28:
  %t93 = load i64, ptr %l1, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t95 = load ptr, ptr %l61, !tbaa !29
  %t96 = load i32, ptr %l63, !range !{i32 0, i32 29}
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t95, i32 %t96, i64 %t93, i64 %t94, i8 0)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t100 = load i64, ptr %l3, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  br i1 %t103, label %bb31, label %bb32
bb31:
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t105, ptr %l72, !tbaa !27
  %t106 = load i64, ptr %l7, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i8, ptr %t109, i64 %t106
  %t111 = load i8, ptr %t110, !tbaa !32
  %t113 = call i1 @compiler_2fscan_2eisDigit(i8 %t111)
  store i1 %t113, ptr %l75
  br label %bb33
bb32:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb38
bb33:
  %t114 = load i1, ptr %l75, !tbaa !21
  br i1 %t114, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb37
bb35:
  %t115 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t115, ptr %l77, !tbaa !27
  %t116 = load i64, ptr %l7, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i8, ptr %t119, i64 %t116
  %t121 = load i8, ptr %t120, !tbaa !32
  %t123 = call i1 @compiler_2fscan_2eisLetter(i8 %t121)
  store i1 %t123, ptr %l80
  br label %bb36
bb36:
  %t124 = load i1, ptr %l80, !tbaa !21
  store i1 %t124, ptr %l76, !tbaa !21
  br label %bb37
bb37:
  %t125 = load i1, ptr %l76, !tbaa !21
  store i1 %t125, ptr %l71, !tbaa !21
  br label %bb38
bb38:
  %t126 = load i1, ptr %l71, !tbaa !21
  br i1 %t126, label %bb39, label %bb40
bb39:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l81, !tbaa !29
  %t128 = load i1, ptr %l5, !tbaa !21
  br i1 %t128, label %bb41, label %bb42
bb40:
  br label %bb45
bb41:
  store i32 24, ptr %l83
  br label %bb43
bb42:
  store i32 25, ptr %l83
  br label %bb43
bb43:
  %t132 = load i64, ptr %l7, !tbaa !24
  %t133 = load i64, ptr %l7, !tbaa !24
  %t135 = add i64 %t133, 1
  %t136 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t136, ptr %l89, !tbaa !27
  %t137 = load i64, ptr %l7, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i8, ptr %t140, i64 %t137
  %t142 = load i8, ptr %t141, !tbaa !32
  %t143 = load ptr, ptr %l81, !tbaa !29
  %t144 = load i32, ptr %l83, !range !{i32 0, i32 29}
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t143, i32 %t144, i64 %t132, i64 %t135, i8 %t142)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t148 = load i64, ptr %l7, !tbaa !24
  %t150 = insertvalue { i32, i64 } undef, i32 2, 0
  %t152 = insertvalue { i32, i64 } %t150, i64 %t148, 1
  store { i32, i64 } %t152, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i64, ptr %l1, !tbaa !24
  %t158 = call { i64, i64 } @compiler_2fscan_2ecompiler_2fscan_3ascanner_2edigits(ptr %v0, ptr %t154, i64 %t155, i64 10)
  store { i64, i64 } %t158, ptr %l97
  br label %bb48
bb48:
  %t159 = load { i64, i64 }, ptr %l97
  store { i64, i64 } %t159, ptr %l9
  %t160 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 0
  %t161 = load i64, ptr %t160, !tbaa !24
  store i64 %t161, ptr %l10, !tbaa !24
  store i32 2, ptr %l11
  %t164 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t165 = load i64, ptr %l10, !tbaa !24
  %t168 = call i1 @compiler_2fscan_2efractionAt(ptr %v0, { i64, ptr } %t164, i64 %t165)
  store i1 %t168, ptr %l102
  br label %bb49
bb49:
  %t169 = load i1, ptr %l102, !tbaa !21
  br i1 %t169, label %bb50, label %bb51
bb50:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i64, ptr %l10, !tbaa !24
  %t173 = add i64 %t171, 1
  %t176 = call { i64, i64 } @compiler_2fscan_2ecompiler_2fscan_3ascanner_2edigits(ptr %v0, ptr %t170, i64 %t173, i64 10)
  store { i64, i64 } %t176, ptr %l106
  br label %bb52
bb51:
  br label %bb62
bb52:
  %t177 = load { i64, i64 }, ptr %l106
  store { i64, i64 } %t177, ptr %l12
  %t178 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  store i64 %t179, ptr %l13, !tbaa !24
  %t181 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 1
  %t182 = load i64, ptr %t181, !tbaa !24
  %t186 = icmp eq i64 %t182, 0
  br i1 %t186, label %bb53, label %bb54
bb53:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i64, ptr %l10, !tbaa !24
  %t190 = load i64, ptr %l10, !tbaa !24
  %t192 = add i64 %t190, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t188, i32 27, i64 %t189, i64 %t192, i8 0)
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t197 = load i64, ptr %l13, !tbaa !24
  store i64 %t197, ptr %l10, !tbaa !24
  store i32 3, ptr %l11
  %t200 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t201 = load i64, ptr %l10, !tbaa !24
  %t204 = call i1 @compiler_2fscan_2efractionAt(ptr %v0, { i64, ptr } %t200, i64 %t201)
  store i1 %t204, ptr %l120
  br label %bb57
bb57:
  %t205 = load i1, ptr %l120, !tbaa !21
  br i1 %t205, label %bb58, label %bb59
bb58:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i64, ptr %l10, !tbaa !24
  %t208 = load i64, ptr %l10, !tbaa !24
  %t210 = add i64 %t208, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t206, i32 28, i64 %t207, i64 %t210, i8 0)
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t215 = load i64, ptr %l10, !tbaa !24
  %t216 = load i64, ptr %l3, !tbaa !24
  %t219 = icmp slt i64 %t215, %t216
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t221 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t221, ptr %l130, !tbaa !27
  %t222 = load i64, ptr %l10, !tbaa !24
  %t224 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr i8, ptr %t225, i64 %t222
  %t227 = load i8, ptr %t226, !tbaa !32
  %t229 = icmp eq i8 %t227, 101
  br i1 %t229, label %bb65, label %bb66
bb64:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb68
bb65:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb67
bb66:
  %t231 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t231, ptr %l135, !tbaa !27
  %t232 = load i64, ptr %l10, !tbaa !24
  %t234 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr i8, ptr %t235, i64 %t232
  %t237 = load i8, ptr %t236, !tbaa !32
  %t239 = icmp eq i8 %t237, 69
  store i1 %t239, ptr %l134, !tbaa !21
  br label %bb67
bb67:
  %t241 = load i1, ptr %l134, !tbaa !21
  store i1 %t241, ptr %l129, !tbaa !21
  br label %bb68
bb68:
  %t242 = load i1, ptr %l129, !tbaa !21
  br i1 %t242, label %bb69, label %bb70
bb69:
  %t243 = load i64, ptr %l10, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l15, !tbaa !24
  %t247 = load i64, ptr %l15, !tbaa !24
  %t248 = load i64, ptr %l3, !tbaa !24
  %t251 = icmp slt i64 %t247, %t248
  br i1 %t251, label %bb71, label %bb72
bb70:
  br label %bb85
bb71:
  %t253 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t253, ptr %l145, !tbaa !27
  %t254 = load i64, ptr %l15, !tbaa !24
  %t256 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr i8, ptr %t257, i64 %t254
  %t259 = load i8, ptr %t258, !tbaa !32
  %t261 = icmp eq i8 %t259, 43
  br i1 %t261, label %bb73, label %bb74
bb72:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb76
bb73:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb75
bb74:
  %t263 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t263, ptr %l150, !tbaa !27
  %t264 = load i64, ptr %l15, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr i8, ptr %t267, i64 %t264
  %t269 = load i8, ptr %t268, !tbaa !32
  %t271 = icmp eq i8 %t269, 45
  store i1 %t271, ptr %l149, !tbaa !21
  br label %bb75
bb75:
  %t273 = load i1, ptr %l149, !tbaa !21
  store i1 %t273, ptr %l144, !tbaa !21
  br label %bb76
bb76:
  %t274 = load i1, ptr %l144, !tbaa !21
  br i1 %t274, label %bb77, label %bb78
bb77:
  %t275 = load i64, ptr %l15, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l15, !tbaa !24
  br label %bb79
bb78:
  br label %bb79
bb79:
  %t279 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t280 = load i64, ptr %l15, !tbaa !24
  %t283 = call i1 @compiler_2fscan_2eexponentDigits(ptr %v0, { i64, ptr } %t279, i64 %t280)
  store i1 %t283, ptr %l158
  br label %bb80
bb80:
  %t284 = load i1, ptr %l158, !tbaa !21
  br i1 %t284, label %bb81, label %bb82
bb81:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load i64, ptr %l15, !tbaa !24
  %t289 = call { i64, i64 } @compiler_2fscan_2ecompiler_2fscan_3ascanner_2edigits(ptr %v0, ptr %t285, i64 %t286, i64 10)
  store { i64, i64 } %t289, ptr %l161
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t290 = load { i64, i64 }, ptr %l161
  store { i64, i64 } %t290, ptr %l16
  %t291 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 0
  %t292 = load i64, ptr %t291, !tbaa !24
  %t296 = insertvalue { i32, i64 } undef, i32 3, 0
  %t298 = insertvalue { i32, i64 } %t296, i64 %t292, 1
  store { i32, i64 } %t298, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t300 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t301 = load i64, ptr %l10, !tbaa !24
  %t303 = insertvalue { i32, i64 } undef, i32 %t300, 0
  %t305 = insertvalue { i32, i64 } %t303, i64 %t301, 1
  store { i32, i64 } %t305, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2eraw(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
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
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l37 = alloca i1
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l72 = alloca i64
  %l75 = alloca i64
  %l93 = alloca { i64, ptr }
  %l100 = alloca i1
  %l108 = alloca i64
  %l114 = alloca i64
  %l117 = alloca i64
  %l135 = alloca { i64, ptr }
  %l139 = alloca i1
  %l140 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l168 = alloca i1
  %l170 = alloca i1
  %l176 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = add i64 %t10, 3
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = add i64 %t14, 2
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l33, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr i8, ptr %t26, i64 %t23
  %t28 = load i8, ptr %t27, !tbaa !32
  %t30 = icmp eq i8 %t28, 34
  br i1 %t30, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb10
bb4:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l38, !tbaa !27
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = add i64 %t33, 1
  %t37 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t35
  %t40 = load i8, ptr %t39, !tbaa !32
  %t42 = icmp eq i8 %t40, 34
  store i1 %t42, ptr %l37, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb6
bb6:
  %t44 = load i1, ptr %l37, !tbaa !21
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t45, ptr %l44, !tbaa !27
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = add i64 %t46, 2
  %t50 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i8, ptr %t51, i64 %t48
  %t53 = load i8, ptr %t52, !tbaa !32
  %t55 = icmp eq i8 %t53, 34
  store i1 %t55, ptr %l43, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb9
bb9:
  %t57 = load i1, ptr %l43, !tbaa !21
  %t58 = xor i1 %t57, true
  store i1 %t58, ptr %l32, !tbaa !21
  br label %bb10
bb10:
  %t60 = load i1, ptr %l32, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l4, !tbaa !24
  br label %bb14
bb14:
  br label %bb1
bb15:
  %t67 = load i64, ptr %l4, !tbaa !24
  %t69 = add i64 %t67, 2
  %t70 = load i64, ptr %l3, !tbaa !24
  %t73 = icmp sge i64 %t69, %t70
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load i64, ptr %l1, !tbaa !24
  %t79 = add i64 %t77, 3
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t75, i32 18, i64 %t76, i64 %t79, i8 0)
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t84 = load i64, ptr %l3, !tbaa !24
  store i64 %t84, ptr %rv
  br label %ret
bb19:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = add i64 %t86, 3
  store i64 %t88, ptr %l5, !tbaa !24
  %t90 = load i64, ptr %l1, !tbaa !24
  %t92 = add i64 %t90, 3
  store i64 %t92, ptr %l6, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  store i64 %t94, ptr %l7, !tbaa !24
  %t96 = load i64, ptr %l4, !tbaa !24
  store i64 %t96, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t99 = load i64, ptr %l7, !tbaa !24
  %t102 = icmp sgt i64 %t98, %t99
  br i1 %t102, label %bb20, label %bb21
bb20:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t106 = icmp sgt i64 %t104, 0
  br i1 %t106, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb25
bb22:
  %t108 = load i64, ptr %l8, !tbaa !24
  %t109 = load i64, ptr %l7, !tbaa !24
  %t112 = sub i64 %t108, %t109
  %t113 = load i64, ptr %l9, !tbaa !24
  %t116 = add i64 %t112, %t113
  %t118 = sub i64 %t116, 1
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = sdiv i64 %t118, %t119
  store i64 %t122, ptr %l75, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb24
bb24:
  %t124 = load i64, ptr %l75, !tbaa !24
  store i64 %t124, ptr %l72, !tbaa !24
  br label %bb25
bb25:
  %t125 = load i64, ptr %l72, !tbaa !24
  store i64 %t125, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb26
bb26:
  %t126 = load i64, ptr %l11, !tbaa !24
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = icmp slt i64 %t126, %t127
  %t132 = xor i1 %t130, true
  br i1 %t132, label %bb27, label %bb28
bb27:
  br label %bb80
bb28:
  br label %bb29
bb29:
  %t134 = load i64, ptr %l7, !tbaa !24
  %t135 = load i64, ptr %l11, !tbaa !24
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = mul i64 %t135, %t136
  %t142 = add i64 %t134, %t139
  store i64 %t142, ptr %l12, !tbaa !24
  %t144 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t144, ptr %l93, !tbaa !27
  %t145 = load i64, ptr %l12, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 %t145
  %t150 = load i8, ptr %t149, !tbaa !32
  %t152 = icmp ne i8 %t150, 10
  br i1 %t152, label %bb30, label %bb31
bb30:
  br label %bb79
bb31:
  br label %bb32
bb32:
  %t154 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t155 = load i64, ptr %l6, !tbaa !24
  %t156 = load i64, ptr %l12, !tbaa !24
  %t160 = call i1 @compiler_2fscan_2eblankLine(ptr %v0, { i64, ptr } %t154, i64 %t155, i64 %t156)
  store i1 %t160, ptr %l100
  br label %bb33
bb33:
  %t161 = load i1, ptr %l100, !tbaa !21
  %t162 = xor i1 %t161, true
  br i1 %t162, label %bb34, label %bb35
bb34:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i64, ptr %l6, !tbaa !24
  %t166 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t164, i32 19, i64 %t165, i64 %t166, i8 0)
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb37
bb37:
  %t171 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t172 = load i64, ptr %l4, !tbaa !24
  %t175 = call i64 @compiler_2fscan_2elastLineStart(ptr %v0, { i64, ptr } %t171, i64 %t172)
  store i64 %t175, ptr %l108
  br label %bb38
bb38:
  %t176 = load i64, ptr %l108, !tbaa !24
  store i64 %t176, ptr %l13, !tbaa !24
  %t177 = load i64, ptr %l13, !tbaa !24
  store i64 %t177, ptr %l14, !tbaa !24
  %t179 = load i64, ptr %l4, !tbaa !24
  store i64 %t179, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t181 = load i64, ptr %l15, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  %t185 = icmp sgt i64 %t181, %t182
  br i1 %t185, label %bb39, label %bb40
bb39:
  %t187 = load i64, ptr %l16, !tbaa !24
  %t189 = icmp sgt i64 %t187, 0
  br i1 %t189, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb44
bb41:
  %t191 = load i64, ptr %l15, !tbaa !24
  %t192 = load i64, ptr %l14, !tbaa !24
  %t195 = sub i64 %t191, %t192
  %t196 = load i64, ptr %l16, !tbaa !24
  %t199 = add i64 %t195, %t196
  %t201 = sub i64 %t199, 1
  %t202 = load i64, ptr %l16, !tbaa !24
  %t205 = sdiv i64 %t201, %t202
  store i64 %t205, ptr %l117, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb43
bb43:
  %t207 = load i64, ptr %l117, !tbaa !24
  store i64 %t207, ptr %l114, !tbaa !24
  br label %bb44
bb44:
  %t208 = load i64, ptr %l114, !tbaa !24
  store i64 %t208, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb45
bb45:
  %t209 = load i64, ptr %l18, !tbaa !24
  %t210 = load i64, ptr %l17, !tbaa !24
  %t213 = icmp slt i64 %t209, %t210
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb46, label %bb47
bb46:
  br label %bb57
bb47:
  br label %bb48
bb48:
  %t217 = load i64, ptr %l14, !tbaa !24
  %t218 = load i64, ptr %l18, !tbaa !24
  %t219 = load i64, ptr %l16, !tbaa !24
  %t222 = mul i64 %t218, %t219
  %t225 = add i64 %t217, %t222
  store i64 %t225, ptr %l19, !tbaa !24
  %t227 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t227, ptr %l135, !tbaa !27
  %t228 = load i64, ptr %l19, !tbaa !24
  %t230 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr i8, ptr %t231, i64 %t228
  %t233 = load i8, ptr %t232, !tbaa !32
  %t235 = icmp ne i8 %t233, 32
  br i1 %t235, label %bb49, label %bb50
bb49:
  %t237 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t237, ptr %l140, !tbaa !27
  %t238 = load i64, ptr %l19, !tbaa !24
  %t240 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr i8, ptr %t241, i64 %t238
  %t243 = load i8, ptr %t242, !tbaa !32
  %t245 = icmp ne i8 %t243, 9
  store i1 %t245, ptr %l139, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb51
bb51:
  %t247 = load i1, ptr %l139, !tbaa !21
  br i1 %t247, label %bb52, label %bb53
bb52:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load i64, ptr %l4, !tbaa !24
  %t250 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t248, i32 20, i64 %t249, i64 %t250, i8 0)
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t255 = load i64, ptr %l5, !tbaa !24
  store i64 %t255, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t257 = load i64, ptr %l18, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l18, !tbaa !24
  br label %bb45
bb57:
  %t261 = load i64, ptr %l12, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l20, !tbaa !24
  br label %bb58
bb58:
  %t265 = load i64, ptr %l20, !tbaa !24
  %t266 = load i64, ptr %l13, !tbaa !24
  %t269 = icmp slt i64 %t265, %t266
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb59, label %bb60
bb59:
  br label %bb78
bb60:
  br label %bb61
bb61:
  %t273 = load i64, ptr %l20, !tbaa !24
  store i64 %t273, ptr %l21, !tbaa !24
  br label %bb62
bb62:
  %t275 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t275, ptr %l158, !tbaa !27
  %t276 = load i64, ptr %l21, !tbaa !24
  %t278 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr i8, ptr %t279, i64 %t276
  %t281 = load i8, ptr %t280, !tbaa !32
  %t283 = icmp ne i8 %t281, 10
  %t285 = xor i1 %t283, true
  br i1 %t285, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  br label %bb65
bb65:
  %t287 = load i64, ptr %l21, !tbaa !24
  %t289 = add i64 %t287, 1
  store i64 %t289, ptr %l21, !tbaa !24
  br label %bb66
bb66:
  br label %bb62
bb67:
  %t291 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t292 = load i64, ptr %l20, !tbaa !24
  %t293 = load i64, ptr %l21, !tbaa !24
  %t297 = call i1 @compiler_2fscan_2eblankLine(ptr %v0, { i64, ptr } %t291, i64 %t292, i64 %t293)
  store i1 %t297, ptr %l168
  br label %bb68
bb68:
  %t298 = load i1, ptr %l168, !tbaa !21
  %t299 = xor i1 %t298, true
  br i1 %t299, label %bb69, label %bb70
bb69:
  %t301 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t302 = load i64, ptr %l20, !tbaa !24
  %t303 = load i64, ptr %l21, !tbaa !24
  %t304 = load i64, ptr %l13, !tbaa !24
  %t305 = load i64, ptr %l4, !tbaa !24
  %t311 = call i1 @compiler_2fscan_2ehasPrefix(ptr %v0, { i64, ptr } %t301, i64 %t302, i64 %t303, i64 %t304, i64 %t305)
  store i1 %t311, ptr %l176
  br label %bb71
bb70:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb72
bb71:
  %t312 = load i1, ptr %l176, !tbaa !21
  %t313 = xor i1 %t312, true
  store i1 %t313, ptr %l170, !tbaa !21
  br label %bb72
bb72:
  %t315 = load i1, ptr %l170, !tbaa !21
  br i1 %t315, label %bb73, label %bb74
bb73:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load i64, ptr %l20, !tbaa !24
  %t318 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t316, i32 21, i64 %t317, i64 %t318, i8 0)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  %t323 = load i64, ptr %l21, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l20, !tbaa !24
  br label %bb77
bb77:
  br label %bb58
bb78:
  %t327 = load i64, ptr %l5, !tbaa !24
  store i64 %t327, ptr %rv
  br label %ret
bb79:
  %t329 = load i64, ptr %l11, !tbaa !24
  %t331 = add i64 %t329, 1
  store i64 %t331, ptr %l11, !tbaa !24
  br label %bb26
bb80:
  %t333 = load i64, ptr %l5, !tbaa !24
  store i64 %t333, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2erun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i8
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i8
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca { i32, i64 }
  %l14 = alloca { i32, i64 }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i8
  %l19 = alloca i1
  %l29 = alloca { i64, ptr }
  %l34 = alloca i1
  %l45 = alloca i1
  %l50 = alloca i1
  %l51 = alloca { i64, ptr }
  %l58 = alloca i64
  %l67 = alloca i64
  %l80 = alloca i1
  %l86 = alloca { i64, ptr }
  %l93 = alloca i1
  %l94 = alloca i1
  %l100 = alloca i64
  %l103 = alloca i32
  %l110 = alloca i32
  %l112 = alloca i1
  %l115 = alloca { i32, i64 }
  %l123 = alloca i64
  %l129 = alloca i64
  %l132 = alloca { i32, i64 }
  %l147 = alloca i1
  %l150 = alloca i64
  %l154 = alloca ptr
  %l160 = alloca %"compiler/token:Token"
  %l178 = alloca i64
  %l181 = alloca i32
  %l185 = alloca i32
  %l206 = alloca i1
  %l207 = alloca { i64, ptr }
  %l217 = alloca i1
  %l224 = alloca i1
  %l233 = alloca i1
  %l235 = alloca i1
  %l236 = alloca i1
  %l241 = alloca ptr
  %l247 = alloca %"compiler/token:Token"
  %l249 = alloca ptr
  %l256 = alloca %"compiler/token:Token"
  %l270 = alloca i1
  %l272 = alloca ptr
  %l278 = alloca %"compiler/token:Token"
  %l280 = alloca ptr
  %l287 = alloca %"compiler/token:Token"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s37 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i1 false, ptr %l4, !tbaa !21
  store i32 0, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb41
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t19, ptr %l29, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 %t20
  %t25 = load i8, ptr %t24, !tbaa !32
  store i8 %t25, ptr %l7, !tbaa !22
  %t27 = load i8, ptr %l7, !tbaa !22
  %t29 = icmp eq i8 %t27, 32
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb8
bb7:
  %t31 = load i8, ptr %l7, !tbaa !22
  %t33 = icmp eq i8 %t31, 9
  store i1 %t33, ptr %l34, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l34, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l3, !tbaa !24
  br label %bb39
bb10:
  %t40 = load i8, ptr %l7, !tbaa !22
  %t42 = icmp eq i8 %t40, 10
  br i1 %t42, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l4, !tbaa !21
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb38
bb12:
  %t48 = load i8, ptr %l7, !tbaa !22
  %t50 = icmp eq i8 %t48, 35
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = add i64 %t52, 1
  %t55 = load i64, ptr %l2, !tbaa !24
  %t58 = icmp sge i64 %t54, %t55
  br i1 %t58, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb18
bb15:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb17
bb16:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t60, ptr %l51, !tbaa !27
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = add i64 %t61, 1
  %t65 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i8, ptr %t66, i64 %t63
  %t68 = load i8, ptr %t67, !tbaa !32
  %t70 = icmp ne i8 %t68, 35
  store i1 %t70, ptr %l50, !tbaa !21
  br label %bb17
bb17:
  %t72 = load i1, ptr %l50, !tbaa !21
  store i1 %t72, ptr %l45, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l45, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t74 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = call i64 @compiler_2fscan_2elineEnd(ptr %v0, { i64, ptr } %t74, i64 %t75)
  store i64 %t78, ptr %l58
  br label %bb21
bb20:
  %t79 = load i8, ptr %l7, !tbaa !22
  %t81 = icmp eq i8 %t79, 35
  br i1 %t81, label %bb25, label %bb26
bb21:
  %t83 = load i64, ptr %l58, !tbaa !24
  store i64 %t83, ptr %l3, !tbaa !24
  %t84 = load i64, ptr %l3, !tbaa !24
  %t85 = load i64, ptr %l2, !tbaa !24
  %t88 = icmp eq i64 %t84, %t85
  br i1 %t88, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb37
bb25:
  %t90 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t91 = load i64, ptr %l3, !tbaa !24
  %t93 = add i64 %t91, 2
  %t96 = call i64 @compiler_2fscan_2eblockComment(ptr %v0, { i64, ptr } %t90, i64 %t93)
  store i64 %t96, ptr %l67
  br label %bb27
bb26:
  br label %bb41
bb27:
  %t97 = load i64, ptr %l67, !tbaa !24
  store i64 %t97, ptr %l8, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = icmp slt i64 %t98, 0
  br i1 %t100, label %bb28, label %bb29
bb28:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l3, !tbaa !24
  %t104 = load i64, ptr %l3, !tbaa !24
  %t106 = add i64 %t104, 2
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t102, i32 6, i64 %t103, i64 %t106, i8 0)
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t111 = load i64, ptr %l2, !tbaa !24
  store i64 %t111, ptr %l3, !tbaa !24
  br label %bb40
bb31:
  %t113 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t114 = load i64, ptr %l3, !tbaa !24
  %t116 = add i64 %t114, 2
  %t117 = load i64, ptr %l8, !tbaa !24
  %t121 = call i1 @compiler_2fscan_2ehasLineEnd(ptr %v0, { i64, ptr } %t113, i64 %t116, i64 %t117)
  store i1 %t121, ptr %l80
  br label %bb32
bb32:
  %t122 = load i1, ptr %l80, !tbaa !21
  br i1 %t122, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb35
bb34:
  br label %bb35
bb35:
  %t123 = load i64, ptr %l8, !tbaa !24
  store i64 %t123, ptr %l3, !tbaa !24
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb2
bb41:
  %t125 = load i64, ptr %l3, !tbaa !24
  %t126 = load i64, ptr %l2, !tbaa !24
  %t129 = icmp sge i64 %t125, %t126
  br i1 %t129, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s1)
  br label %bb144
bb43:
  br label %bb44
bb44:
  %t131 = load i64, ptr %l3, !tbaa !24
  store i64 %t131, ptr %l9, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t133, ptr %l86, !tbaa !27
  %t134 = load i64, ptr %l3, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t134
  %t139 = load i8, ptr %t138, !tbaa !32
  store i8 %t139, ptr %l10, !tbaa !22
  store i32 0, ptr %l11
  %t142 = load i64, ptr %l3, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l12, !tbaa !24
  %t146 = load i8, ptr %l10, !tbaa !22
  %t148 = call i1 @compiler_2fscan_2eisLetter(i8 %t146)
  store i1 %t148, ptr %l93
  br label %bb45
bb45:
  %t149 = load i1, ptr %l93, !tbaa !21
  br i1 %t149, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb48
bb47:
  %t150 = load i8, ptr %l10, !tbaa !22
  %t152 = icmp eq i8 %t150, 95
  store i1 %t152, ptr %l94, !tbaa !21
  br label %bb48
bb48:
  %t154 = load i1, ptr %l94, !tbaa !21
  br i1 %t154, label %bb49, label %bb50
bb49:
  %t155 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t156 = load i64, ptr %l3, !tbaa !24
  %t158 = add i64 %t156, 1
  %t161 = call i64 @compiler_2fscan_2ewordEnd(ptr %v0, { i64, ptr } %t155, i64 %t158)
  store i64 %t161, ptr %l100
  br label %bb51
bb50:
  %t162 = load i8, ptr %l10, !tbaa !22
  %t164 = call i1 @compiler_2fscan_2eisDigit(i8 %t162)
  store i1 %t164, ptr %l112
  br label %bb56
bb51:
  %t165 = load i64, ptr %l100, !tbaa !24
  store i64 %t165, ptr %l12, !tbaa !24
  %t166 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t168 = trunc i64 76 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb52, label %bb53
bb52:
  store i32 1, ptr %l103
  br label %bb55
bb53:
  %t172 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t173 = load i64, ptr %l3, !tbaa !24
  %t174 = load i64, ptr %l12, !tbaa !24
  %t175 = load i64, ptr %l3, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t182 = call i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %t172, i64 %t173, i64 %t178)
  store i32 %t182, ptr %l110
  br label %bb54
bb54:
  %t183 = load i32, ptr %l110, !range !{i32 0, i32 114}
  store i32 %t183, ptr %l103
  br label %bb55
bb55:
  %t184 = load i32, ptr %l103, !range !{i32 0, i32 114}
  store i32 %t184, ptr %l11
  br label %bb101
bb56:
  %t185 = load i1, ptr %l112, !tbaa !21
  br i1 %t185, label %bb57, label %bb58
bb57:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l3, !tbaa !24
  %t190 = call { i32, i64 } @compiler_2fscan_2ecompiler_2fscan_3ascanner_2enumber(ptr %v0, ptr %t186, i64 %t187)
  store { i32, i64 } %t190, ptr %l115
  br label %bb59
bb58:
  %t191 = load i8, ptr %l10, !tbaa !22
  %t193 = icmp eq i8 %t191, 34
  br i1 %t193, label %bb60, label %bb61
bb59:
  %t195 = load { i32, i64 }, ptr %l115
  store { i32, i64 } %t195, ptr %l13
  %t196 = getelementptr { i32, i64 }, ptr %l13, i32 0, i32 0
  %t197 = load i32, ptr %t196, !range !{i32 0, i32 114}
  store i32 %t197, ptr %l11
  %t199 = getelementptr { i32, i64 }, ptr %l13, i32 0, i32 1
  %t200 = load i64, ptr %t199, !tbaa !24
  store i64 %t200, ptr %l12, !tbaa !24
  br label %bb100
bb60:
  store i32 5, ptr %l11
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l3, !tbaa !24
  %t207 = call i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2estr(ptr %v0, ptr %t203, i64 %t204)
  store i64 %t207, ptr %l123
  br label %bb62
bb61:
  %t208 = load i8, ptr %l10, !tbaa !22
  %t210 = icmp eq i8 %t208, 39
  br i1 %t210, label %bb63, label %bb64
bb62:
  %t212 = load i64, ptr %l123, !tbaa !24
  store i64 %t212, ptr %l12, !tbaa !24
  br label %bb99
bb63:
  store i32 4, ptr %l11
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i64, ptr %l3, !tbaa !24
  %t218 = call i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2echar(ptr %v0, ptr %t214, i64 %t215)
  store i64 %t218, ptr %l129
  br label %bb65
bb64:
  %t219 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t220 = load i64, ptr %l3, !tbaa !24
  %t223 = call { i32, i64 } @compiler_2fscan_2eoperator(ptr %v0, { i64, ptr } %t219, i64 %t220)
  store { i32, i64 } %t223, ptr %l132
  br label %bb66
bb65:
  %t224 = load i64, ptr %l129, !tbaa !24
  store i64 %t224, ptr %l12, !tbaa !24
  br label %bb98
bb66:
  %t225 = load { i32, i64 }, ptr %l132
  store { i32, i64 } %t225, ptr %l14
  %t226 = getelementptr { i32, i64 }, ptr %l14, i32 0, i32 0
  %t227 = load i32, ptr %t226, !range !{i32 0, i32 114}
  store i32 %t227, ptr %l11
  %t229 = getelementptr { i32, i64 }, ptr %l14, i32 0, i32 1
  %t230 = load i64, ptr %t229, !tbaa !24
  store i64 %t230, ptr %l12, !tbaa !24
  %t232 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t234 = trunc i64 0 to i32
  %t235 = icmp eq i32 %t232, %t234
  br i1 %t235, label %bb67, label %bb68
bb67:
  %t237 = load i8, ptr %l10, !tbaa !22
  %t239 = icmp eq i8 %t237, 59
  br i1 %t239, label %bb69, label %bb70
bb68:
  br label %bb97
bb69:
  store %olang.scope zeroinitializer, ptr %s24
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i64, ptr %l3, !tbaa !24
  %t243 = load i64, ptr %l3, !tbaa !24
  %t245 = add i64 %t243, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t241, i32 4, i64 %t242, i64 %t245, i8 0)
  br label %bb71
bb70:
  %t250 = load i8, ptr %l10, !tbaa !22
  %t252 = icmp eq i8 %t250, 13
  br i1 %t252, label %bb81, label %bb82
bb71:
  %t254 = load i64, ptr %l3, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l3, !tbaa !24
  %t258 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t260 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eEndsStatement(i32 %t258)
  store i1 %t260, ptr %l147
  br label %bb72
bb72:
  %t261 = load i1, ptr %l147, !tbaa !21
  %t262 = xor i1 %t261, true
  br i1 %t262, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s1)
  br label %bb143
bb74:
  br label %bb75
bb75:
  %t264 = load i1, ptr %l4, !tbaa !21
  br i1 %t264, label %bb76, label %bb77
bb76:
  %t266 = load i64, ptr %l6, !tbaa !24
  store i64 %t266, ptr %l150, !tbaa !24
  br label %bb78
bb77:
  %t268 = load i64, ptr %l9, !tbaa !24
  store i64 %t268, ptr %l150, !tbaa !24
  br label %bb78
bb78:
  %t270 = load i64, ptr %l150, !tbaa !24
  store i64 %t270, ptr %l15, !tbaa !24
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/scan:scanner", ptr %t271, i32 0, i32 1
  store ptr %t273, ptr %l154, !tbaa !29
  %t274 = load i64, ptr %l15, !tbaa !24
  %t276 = trunc i64 %t274 to i32
  %t277 = load i64, ptr %l15, !tbaa !24
  %t279 = trunc i64 %t277 to i32
  %t283 = call %"compiler/token:Token" @compiler_2ftoken_3aToken_2ector(ptr %s24, i32 8, i8 0, i32 %t276, i32 %t279)
  store %"compiler/token:Token" %t283, ptr %l160
  br label %bb79
bb79:
  %t284 = load ptr, ptr %l154, !tbaa !29
  %t285 = load %"compiler/token:Token", ptr %l160
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ePush_3ccompiler_2ftoken_3aToken_3e(ptr %v0, ptr %t284, %"compiler/token:Token" %t285)
  br label %bb80
bb80:
  store i32 8, ptr %l5
  call void @__olang_scope_close(ptr %s24)
  br label %bb96
bb81:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/scan:scanner", ptr %t287, i32 0, i32 5
  %t290 = load i1, ptr %t289, !tbaa !21
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb83, label %bb84
bb82:
  %t294 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t295 = load i64, ptr %l3, !tbaa !24
  %t297 = add i64 %t295, 1
  %t300 = call i64 @compiler_2fscan_2ejunkEnd(ptr %v0, { i64, ptr } %t294, i64 %t297)
  store i64 %t300, ptr %l178
  br label %bb87
bb83:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load i64, ptr %l3, !tbaa !24
  %t303 = load i64, ptr %l3, !tbaa !24
  %t305 = add i64 %t303, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t301, i32 3, i64 %t302, i64 %t305, i8 0)
  br label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb86
bb86:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/scan:scanner", ptr %t310, i32 0, i32 5
  store i1 true, ptr %t312, !tbaa !21
  %t313 = load i64, ptr %l3, !tbaa !24
  %t315 = add i64 %t313, 1
  store i64 %t315, ptr %l3, !tbaa !24
  br label %bb95
bb87:
  %t317 = load i64, ptr %l178, !tbaa !24
  store i64 %t317, ptr %l16, !tbaa !24
  %t318 = load i8, ptr %l10, !tbaa !22
  %t320 = icmp eq i8 %t318, 0
  br i1 %t320, label %bb88, label %bb89
bb88:
  store i32 2, ptr %l181
  br label %bb93
bb89:
  %t323 = load i8, ptr %l10, !tbaa !22
  %t325 = icmp uge i8 %t323, -128
  br i1 %t325, label %bb90, label %bb91
bb90:
  store i32 1, ptr %l185
  br label %bb92
bb91:
  store i32 0, ptr %l185
  br label %bb92
bb92:
  %t329 = load i32, ptr %l185, !range !{i32 0, i32 29}
  store i32 %t329, ptr %l181
  br label %bb93
bb93:
  %t330 = load i32, ptr %l181, !range !{i32 0, i32 29}
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = load i64, ptr %l3, !tbaa !24
  %t334 = load i64, ptr %l16, !tbaa !24
  %t335 = load i8, ptr %l10, !tbaa !22
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t331, i32 %t330, i64 %t333, i64 %t334, i8 %t335)
  br label %bb94
bb94:
  %t341 = load i64, ptr %l16, !tbaa !24
  store i64 %t341, ptr %l3, !tbaa !24
  br label %bb95
bb95:
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s1)
  br label %bb143
bb97:
  br label %bb98
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb101
bb101:
  store i8 0, ptr %l18, !tbaa !22
  %t343 = load i1, ptr %l4, !tbaa !21
  br i1 %t343, label %bb102, label %bb103
bb102:
  %t345 = load i8, ptr %l18, !tbaa !22
  %t346 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t349 = or i8 %t345, %t346
  store i8 %t349, ptr %l18, !tbaa !22
  br label %bb104
bb103:
  br label %bb104
bb104:
  %t351 = load i64, ptr %l9, !tbaa !24
  %t352 = load i64, ptr %l6, !tbaa !24
  %t355 = icmp sgt i64 %t351, %t352
  br i1 %t355, label %bb105, label %bb106
bb105:
  %t357 = load i8, ptr %l18, !tbaa !22
  %t358 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t361 = or i8 %t357, %t358
  store i8 %t361, ptr %l18, !tbaa !22
  br label %bb107
bb106:
  br label %bb107
bb107:
  %t363 = load i64, ptr %l9, !tbaa !24
  %t365 = icmp eq i64 %t363, 0
  br i1 %t365, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb110
bb109:
  %t367 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t367, ptr %l207, !tbaa !27
  %t368 = load i64, ptr %l9, !tbaa !24
  %t370 = sub i64 %t368, 1
  %t372 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t373 = load ptr, ptr %t372, !tbaa !27
  %t374 = getelementptr i8, ptr %t373, i64 %t370
  %t375 = load i8, ptr %t374, !tbaa !32
  %t377 = icmp eq i8 %t375, 10
  store i1 %t377, ptr %l206, !tbaa !21
  br label %bb110
bb110:
  %t379 = load i1, ptr %l206, !tbaa !21
  store i1 %t379, ptr %l19, !tbaa !21
  %t380 = load i1, ptr %l19, !tbaa !21
  br i1 %t380, label %bb111, label %bb112
bb111:
  %t382 = load i8, ptr %l18, !tbaa !22
  %t383 = load i8, ptr @G_2ecompiler_2ftoken_2eLineStart, !tbaa !22
  %t386 = or i8 %t382, %t383
  store i8 %t386, ptr %l18, !tbaa !22
  br label %bb113
bb112:
  br label %bb113
bb113:
  %t388 = load i1, ptr %l19, !tbaa !21
  br i1 %t388, label %bb114, label %bb115
bb114:
  %t390 = load i64, ptr %l9, !tbaa !24
  %t392 = icmp sgt i64 %t390, 0
  store i1 %t392, ptr %l217, !tbaa !21
  br label %bb116
bb115:
  store i1 false, ptr %l217, !tbaa !21
  br label %bb116
bb116:
  %t394 = load i1, ptr %l217, !tbaa !21
  br i1 %t394, label %bb117, label %bb118
bb117:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t397 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ecloseBeforeDecl(ptr %v0, ptr %t395, i32 %t396, i64 %t397)
  br label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb120
bb120:
  %t401 = load i1, ptr %l4, !tbaa !21
  br i1 %t401, label %bb121, label %bb122
bb121:
  %t403 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t405 = trunc i64 75 to i32
  %t406 = icmp eq i32 %t403, %t405
  store i1 %t406, ptr %l224, !tbaa !21
  br label %bb123
bb122:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb123
bb123:
  %t408 = load i1, ptr %l224, !tbaa !21
  br i1 %t408, label %bb124, label %bb125
bb124:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i64, ptr %l6, !tbaa !24
  %t412 = sub i64 %t410, 1
  %t413 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t409, i32 5, i64 %t412, i64 %t413, i8 0)
  br label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb127
bb127:
  %t418 = load i1, ptr %l4, !tbaa !21
  br i1 %t418, label %bb128, label %bb129
bb128:
  %t420 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t422 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eEndsStatement(i32 %t420)
  store i1 %t422, ptr %l235
  br label %bb130
bb129:
  store i1 false, ptr %l233, !tbaa !21
  br label %bb131
bb130:
  %t423 = load i1, ptr %l235, !tbaa !21
  store i1 %t423, ptr %l233, !tbaa !21
  br label %bb131
bb131:
  %t424 = load i1, ptr %l233, !tbaa !21
  br i1 %t424, label %bb132, label %bb133
bb132:
  %t425 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t427 = trunc i64 12 to i32
  %t428 = icmp eq i32 %t425, %t427
  %t430 = xor i1 %t428, true
  store i1 %t430, ptr %l236, !tbaa !21
  br label %bb134
bb133:
  store i1 false, ptr %l236, !tbaa !21
  br label %bb134
bb134:
  %t432 = load i1, ptr %l236, !tbaa !21
  br i1 %t432, label %bb135, label %bb136
bb135:
  store %olang.scope zeroinitializer, ptr %s35
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = getelementptr %"compiler/scan:scanner", ptr %t433, i32 0, i32 1
  store ptr %t435, ptr %l241, !tbaa !29
  %t436 = load i64, ptr %l6, !tbaa !24
  %t438 = trunc i64 %t436 to i32
  %t439 = load i64, ptr %l6, !tbaa !24
  %t441 = trunc i64 %t439 to i32
  %t445 = call %"compiler/token:Token" @compiler_2ftoken_3aToken_2ector(ptr %s35, i32 8, i8 0, i32 %t438, i32 %t441)
  store %"compiler/token:Token" %t445, ptr %l247
  br label %bb137
bb136:
  br label %bb139
bb137:
  %t446 = load ptr, ptr %l241, !tbaa !29
  %t447 = load %"compiler/token:Token", ptr %l247
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ePush_3ccompiler_2ftoken_3aToken_3e(ptr %v0, ptr %t446, %"compiler/token:Token" %t447)
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s35)
  br label %bb139
bb139:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/scan:scanner", ptr %t448, i32 0, i32 1
  store ptr %t450, ptr %l249, !tbaa !29
  %t451 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t452 = load i8, ptr %l18, !tbaa !22
  %t453 = load i64, ptr %l9, !tbaa !24
  %t455 = trunc i64 %t453 to i32
  %t456 = load i64, ptr %l12, !tbaa !24
  %t458 = trunc i64 %t456 to i32
  %t463 = call %"compiler/token:Token" @compiler_2ftoken_3aToken_2ector(ptr %s1, i32 %t451, i8 %t452, i32 %t455, i32 %t458)
  store %"compiler/token:Token" %t463, ptr %l256
  br label %bb140
bb140:
  %t464 = load ptr, ptr %l249, !tbaa !29
  %t465 = load %"compiler/token:Token", ptr %l256
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ePush_3ccompiler_2ftoken_3aToken_3e(ptr %v0, ptr %t464, %"compiler/token:Token" %t465)
  br label %bb141
bb141:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load i32, ptr %l11, !range !{i32 0, i32 114}
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2etrack(ptr %v0, ptr %t466, i32 %t467)
  br label %bb142
bb142:
  %t470 = load i32, ptr %l11, !range !{i32 0, i32 114}
  store i32 %t470, ptr %l5
  %t472 = load i64, ptr %l12, !tbaa !24
  store i64 %t472, ptr %l6, !tbaa !24
  store i1 false, ptr %l4, !tbaa !21
  %t474 = load i64, ptr %l12, !tbaa !24
  store i64 %t474, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb143
bb143:
  br label %bb1
bb144:
  %t476 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t478 = trunc i64 75 to i32
  %t479 = icmp eq i32 %t476, %t478
  br i1 %t479, label %bb145, label %bb146
bb145:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load i64, ptr %l6, !tbaa !24
  %t484 = sub i64 %t482, 1
  %t485 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t481, i32 5, i64 %t484, i64 %t485, i8 0)
  br label %bb147
bb146:
  br label %bb148
bb147:
  br label %bb148
bb148:
  %t490 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t492 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eEndsStatement(i32 %t490)
  store i1 %t492, ptr %l270
  br label %bb149
bb149:
  %t493 = load i1, ptr %l270, !tbaa !21
  br i1 %t493, label %bb150, label %bb151
bb150:
  store %olang.scope zeroinitializer, ptr %s37
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/scan:scanner", ptr %t494, i32 0, i32 1
  store ptr %t496, ptr %l272, !tbaa !29
  %t497 = load i64, ptr %l6, !tbaa !24
  %t499 = trunc i64 %t497 to i32
  %t500 = load i64, ptr %l6, !tbaa !24
  %t502 = trunc i64 %t500 to i32
  %t506 = call %"compiler/token:Token" @compiler_2ftoken_3aToken_2ector(ptr %s37, i32 8, i8 0, i32 %t499, i32 %t502)
  store %"compiler/token:Token" %t506, ptr %l278
  br label %bb152
bb151:
  br label %bb154
bb152:
  %t507 = load ptr, ptr %l272, !tbaa !29
  %t508 = load %"compiler/token:Token", ptr %l278
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ePush_3ccompiler_2ftoken_3aToken_3e(ptr %v0, ptr %t507, %"compiler/token:Token" %t508)
  br label %bb153
bb153:
  call void @__olang_scope_close(ptr %s37)
  br label %bb154
bb154:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t511 = getelementptr %"compiler/scan:scanner", ptr %t509, i32 0, i32 1
  store ptr %t511, ptr %l280, !tbaa !29
  %t512 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t513 = load i64, ptr %l2, !tbaa !24
  %t515 = trunc i64 %t513 to i32
  %t516 = load i64, ptr %l2, !tbaa !24
  %t518 = trunc i64 %t516 to i32
  %t523 = call %"compiler/token:Token" @compiler_2ftoken_3aToken_2ector(ptr %s0, i32 0, i8 %t512, i32 %t515, i32 %t518)
  store %"compiler/token:Token" %t523, ptr %l287
  br label %bb155
bb155:
  %t524 = load ptr, ptr %l280, !tbaa !29
  %t525 = load %"compiler/token:Token", ptr %l287
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ePush_3ccompiler_2ftoken_3aToken_3e(ptr %v0, ptr %t524, %"compiler/token:Token" %t525)
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2estr(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l29 = alloca i64
  %l40 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l80 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scan:scanner", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = add i64 %t10, 2
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l16, !tbaa !27
  %t19 = load i64, ptr %l1, !tbaa !24
  %t21 = add i64 %t19, 1
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i8, ptr %t24, i64 %t21
  %t26 = load i8, ptr %t25, !tbaa !32
  %t28 = icmp eq i8 %t26, 34
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb4, label %bb5
bb4:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t31, ptr %l22, !tbaa !27
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = add i64 %t32, 2
  %t36 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i8, ptr %t37, i64 %t34
  %t39 = load i8, ptr %t38, !tbaa !32
  %t41 = icmp eq i8 %t39, 34
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb6
bb6:
  %t43 = load i1, ptr %l21, !tbaa !21
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = call i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2eraw(ptr %v0, ptr %t44, i64 %t45)
  store i64 %t48, ptr %l29
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t49 = load i64, ptr %l29, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
bb10:
  %t50 = load i64, ptr %l1, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp sge i64 %t54, %t55
  br i1 %t58, label %bb12, label %bb13
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t62 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t60, i32 7, i64 %t61, i64 %t62, i8 0)
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t67 = load i64, ptr %l3, !tbaa !24
  store i64 %t67, ptr %rv
  br label %ret
bb15:
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t69, ptr %l40, !tbaa !27
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i8, ptr %t73, i64 %t70
  %t75 = load i8, ptr %t74, !tbaa !32
  store i8 %t75, ptr %l5, !tbaa !22
  %t77 = load i8, ptr %l5, !tbaa !22
  %t79 = icmp eq i8 %t77, 34
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t81 = load i64, ptr %l4, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t85 = load i8, ptr %l5, !tbaa !22
  %t87 = icmp eq i8 %t85, 10
  br i1 %t87, label %bb19, label %bb20
bb19:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t89, i32 8, i64 %t90, i64 %t91, i8 0)
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t96 = load i64, ptr %l4, !tbaa !24
  store i64 %t96, ptr %rv
  br label %ret
bb22:
  %t98 = load i8, ptr %l5, !tbaa !22
  %t100 = icmp eq i8 %t98, 92
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = load i64, ptr %l4, !tbaa !24
  %t104 = add i64 %t102, 1
  %t105 = load i64, ptr %l3, !tbaa !24
  %t108 = icmp sge i64 %t104, %t105
  br i1 %t108, label %bb25, label %bb26
bb24:
  %t110 = load i64, ptr %l4, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l4, !tbaa !24
  br label %bb34
bb25:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i64, ptr %l1, !tbaa !24
  %t116 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t114, i32 7, i64 %t115, i64 %t116, i8 0)
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t121 = load i64, ptr %l3, !tbaa !24
  store i64 %t121, ptr %rv
  br label %ret
bb28:
  %t123 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t123, ptr %l65, !tbaa !27
  %t124 = load i64, ptr %l4, !tbaa !24
  %t126 = add i64 %t124, 1
  %t128 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i8, ptr %t129, i64 %t126
  %t131 = load i8, ptr %t130, !tbaa !32
  %t135 = icmp eq i8 %t131, 10
  br i1 %t135, label %bb29, label %bb30
bb29:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i64, ptr %l1, !tbaa !24
  %t139 = load i64, ptr %l4, !tbaa !24
  %t141 = add i64 %t139, 1
  call void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2ediag(ptr %v0, ptr %t137, i32 8, i64 %t138, i64 %t141, i8 0)
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t146 = load i64, ptr %l4, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %rv
  br label %ret
bb32:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i64, ptr %l4, !tbaa !24
  %t154 = call i64 @compiler_2fscan_2ecompiler_2fscan_3ascanner_2eescape(ptr %v0, ptr %t150, i64 %t151, i8 34)
  store i64 %t154, ptr %l80
  br label %bb33
bb33:
  %t155 = load i64, ptr %l80, !tbaa !24
  store i64 %t155, ptr %l4, !tbaa !24
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb11
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscan_2ecompiler_2fscan_3ascanner_2etrack(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i8
  %l17 = alloca ptr
  %l26 = alloca i64
  %l29 = alloca i8
  %l32 = alloca i1
  %l37 = alloca i8
  %l48 = alloca i64
  %l51 = alloca i8
  %l54 = alloca i8
  %l55 = alloca i32
  %l58 = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t3 = trunc i64 108 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scan:scanner", ptr %t6, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t8, i8 40)
  br label %bb4
bb4:
  br label %bb56
bb5:
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t12 = trunc i64 110 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scan:scanner", ptr %t15, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t17, i8 91)
  br label %bb9
bb9:
  br label %bb56
bb10:
  %t19 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t21 = trunc i64 112 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scan:scanner", ptr %t24, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t26, i8 123)
  br label %bb14
bb14:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = getelementptr %"compiler/scan:scanner", ptr %t29, i32 0, i32 4
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = add i64 %t31, 1
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t36 = getelementptr %"compiler/scan:scanner", ptr %t35, i32 0, i32 4
  store i64 %t33, ptr %t36, !tbaa !24
  br label %bb56
bb15:
  %t37 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t39 = trunc i64 109 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  %t42 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t44 = trunc i64 111 to i32
  %t45 = icmp eq i32 %t42, %t44
  br i1 %t45, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb33
bb20:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scan:scanner", ptr %t47, i32 0, i32 3
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t49)
  store i64 %t51, ptr %l26
  br label %bb21
bb21:
  %t52 = load i64, ptr %l26, !tbaa !24
  store i64 %t52, ptr %l2, !tbaa !24
  %t53 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t55 = trunc i64 109 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb22, label %bb23
bb22:
  store i8 40, ptr %l29, !tbaa !22
  br label %bb24
bb23:
  store i8 91, ptr %l29, !tbaa !22
  br label %bb24
bb24:
  %t58 = load i8, ptr %l29, !tbaa !22
  store i8 %t58, ptr %l3, !tbaa !22
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb25, label %bb26
bb25:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scan:scanner", ptr %t63, i32 0, i32 3
  %t66 = load i64, ptr %l2, !tbaa !24
  %t68 = sub i64 %t66, 1
  %t71 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eAt_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t65, i64 %t68)
  store i8 %t71, ptr %l37
  br label %bb27
bb26:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb28
bb27:
  %t72 = load i8, ptr %l3, !tbaa !22
  %t73 = load i8, ptr %l37, !tbaa !22
  %t75 = icmp eq i8 %t73, %t72
  store i1 %t75, ptr %l32, !tbaa !21
  br label %bb28
bb28:
  %t77 = load i1, ptr %l32, !tbaa !21
  br i1 %t77, label %bb29, label %bb30
bb29:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scan:scanner", ptr %t78, i32 0, i32 3
  %t81 = load i64, ptr %l2, !tbaa !24
  %t83 = sub i64 %t81, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %t80, i64 %t83)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  br label %bb56
bb33:
  %t86 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t88 = trunc i64 113 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb51
bb36:
  br label %bb37
bb37:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scan:scanner", ptr %t91, i32 0, i32 3
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t93)
  store i64 %t95, ptr %l48
  br label %bb38
bb38:
  %t96 = load i64, ptr %l48, !tbaa !24
  %t97 = icmp sgt i64 %t96, 0
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb39, label %bb40
bb39:
  br label %bb50
bb40:
  br label %bb41
bb41:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/scan:scanner", ptr %t101, i32 0, i32 3
  %t105 = call { i32, i8 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePop_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t103)
  %t106 = extractvalue { i32, i8 } %t105, 1
  %t107 = extractvalue { i32, i8 } %t105, 0
  store i32 %t107, ptr %l55
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb43, label %ok.109, !prof !99
ok.109:
  store i8 %t106, ptr %l54
  br label %bb42
bb42:
  %t110 = load i8, ptr %l54, !tbaa !22
  store i8 %t110, ptr %l51, !tbaa !22
  br label %bb45
bb43:
  br label %bb44
bb44:
  br label %bb50
bb45:
  %t111 = load i8, ptr %l51, !tbaa !22
  %t114 = icmp eq i8 %t111, 123
  br i1 %t114, label %bb46, label %bb47
bb46:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l58, !tbaa !29
  %t117 = load ptr, ptr %l58, !tbaa !29
  %t118 = getelementptr %"compiler/scan:scanner", ptr %t117, i32 0, i32 4
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = sub i64 %t119, 1
  %t123 = load ptr, ptr %l58, !tbaa !29
  %t124 = getelementptr %"compiler/scan:scanner", ptr %t123, i32 0, i32 4
  store i64 %t121, ptr %t124, !tbaa !24
  br label %bb50
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb37
bb50:
  br label %bb56
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_639a87f47d38eeab_7a46798b70a2d59f)
  unreachable
bb56:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscan_2edigitOf(i8 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i8
  %l1 = alloca i64
  %l5 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @compiler_2fscan_2eisHexDigit(i8 %t5)
  store i1 %t7, ptr %l5
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
bb4:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp eq i64 %t9, 2
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i8, ptr %l0, !tbaa !22
  %t15 = icmp eq i8 %t13, 48
  br i1 %t15, label %bb7, label %bb8
bb6:
  br label %bb10
bb7:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb9
bb8:
  %t17 = load i8, ptr %l0, !tbaa !22
  %t19 = icmp eq i8 %t17, 49
  store i1 %t19, ptr %l10, !tbaa !21
  br label %bb9
bb9:
  %t21 = load i1, ptr %l10, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
bb10:
  %t22 = load i8, ptr %l0, !tbaa !22
  %t24 = call i1 @compiler_2fscan_2eisDigit(i8 %t22)
  store i1 %t24, ptr %l14
  br label %bb11
bb11:
  %t25 = load i1, ptr %l14, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2eescapeOk(i8 %a0, i8 %a1) #0 {
entry:
  %l0 = alloca i8
  %l4 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 110
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp eq i8 %t5, 116
  store i1 %t7, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb6
bb5:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 114
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb9
bb8:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp eq i8 %t15, 48
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb9
bb9:
  %t19 = load i1, ptr %l10, !tbaa !21
  br i1 %t19, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb12
bb11:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp eq i8 %t20, 92
  store i1 %t22, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb15
bb14:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t29 = icmp eq i8 %t25, %a1
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb15
bb15:
  %t31 = load i1, ptr %l16, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2eexponentDigits(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l24 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  %t21 = call i1 @compiler_2fscan_2eisDigit(i8 %t19)
  store i1 %t21, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb4:
  %t22 = load i1, ptr %l14, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l16, !tbaa !27
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 %t24
  %t29 = load i8, ptr %t28, !tbaa !32
  %t31 = icmp eq i8 %t29, 95
  store i1 %t31, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l15, !tbaa !21
  store i1 %t33, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l10, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l21, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i8, ptr %t41, i64 %t38
  %t43 = load i8, ptr %t42, !tbaa !32
  %t45 = call i1 @compiler_2fscan_2eisDigit(i8 %t43)
  store i1 %t45, ptr %l24
  br label %bb12
bb12:
  %t46 = load i1, ptr %l24, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l2, !tbaa !24
  br label %bb16
bb16:
  br label %bb1
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2efractionAt(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp sge i64 %t1, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp ne i8 %t15, 46
  store i1 %t17, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l6, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = add i64 %t21, 1
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t29 = icmp slt i64 %t23, %t26
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = add i64 %t32, 1
  %t36 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i8, ptr %t37, i64 %t34
  %t39 = load i8, ptr %t38, !tbaa !32
  %t41 = call i1 @compiler_2fscan_2eisLetter(i8 %t39)
  store i1 %t41, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb13
bb9:
  %t42 = load i1, ptr %l22, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t43, ptr %l24, !tbaa !27
  %t44 = load i64, ptr %l1, !tbaa !24
  %t46 = add i64 %t44, 1
  %t48 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i8, ptr %t49, i64 %t46
  %t51 = load i8, ptr %t50, !tbaa !32
  %t53 = icmp eq i8 %t51, 95
  store i1 %t53, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l23, !tbaa !21
  store i1 %t55, ptr %l17, !tbaa !21
  br label %bb13
bb13:
  %t56 = load i1, ptr %l17, !tbaa !21
  %t57 = xor i1 %t56, true
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2ehasLineEnd(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 %a2, ptr %l4, !tbaa !24
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
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store { i64, ptr } %a0, ptr %l35, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t49
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 10
  br i1 %t59, label %bb11, label %bb12
bb11:
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l7, !tbaa !24
  br label %bb7
bb15:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2ehasPrefix(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
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
  %l25 = alloca i64
  %l28 = alloca i64
  %l46 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = sub i64 %a2, %t2
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t10 = sub i64 %t6, %t7
  %t13 = icmp slt i64 %t5, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = sub i64 %t16, %t17
  store i64 %t20, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb4, label %bb5
bb4:
  %t28 = load i64, ptr %l7, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb9
bb6:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l28, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l28, !tbaa !24
  store i64 %t48, ptr %l25, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l25, !tbaa !24
  store i64 %t49, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb11, label %bb12
bb11:
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l10, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t68, ptr %l46, !tbaa !27
  %t69 = load i64, ptr %l1, !tbaa !24
  %t70 = load i64, ptr %l10, !tbaa !24
  %t73 = add i64 %t69, %t70
  %t75 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t79, ptr %l51, !tbaa !27
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i8, ptr %t87, i64 %t84
  %t89 = load i8, ptr %t88, !tbaa !32
  %t92 = icmp ne i8 %t78, %t89
  br i1 %t92, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t95 = load i64, ptr %l9, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l9, !tbaa !24
  br label %bb10
bb18:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscan_2ehexDigit(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l11 = alloca i1
  %l20 = alloca i1
  %rv = alloca i64
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp uge i8 %t1, 48
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp ule i8 %t5, 57
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = sub i8 %t10, 48
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
  %t22 = icmp ule i8 %t20, 102
  store i1 %t22, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = sub i8 %t25, 97
  %t29 = zext i8 %t27 to i64
  %t31 = add i64 %t29, 10
  store i64 %t31, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t33 = load i8, ptr %l0, !tbaa !22
  %t35 = icmp uge i8 %t33, 65
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t37 = load i8, ptr %l0, !tbaa !22
  %t39 = icmp ule i8 %t37, 70
  store i1 %t39, ptr %l20, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t41 = load i1, ptr %l20, !tbaa !21
  br i1 %t41, label %bb16, label %bb17
bb16:
  %t42 = load i8, ptr %l0, !tbaa !22
  %t44 = sub i8 %t42, 65
  %t46 = zext i8 %t44 to i64
  %t48 = add i64 %t46, 10
  store i64 %t48, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscan_2eisDigit(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp uge i8 %t1, 48
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp ule i8 %t5, 57
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2eisHexDigit(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @compiler_2fscan_2eisDigit(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb7
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp uge i8 %t5, 97
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load i8, ptr %l0, !tbaa !22
  %t11 = icmp ule i8 %t9, 102
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t13 = load i1, ptr %l6, !tbaa !21
  store i1 %t13, ptr %l3, !tbaa !21
  br label %bb7
bb7:
  %t14 = load i1, ptr %l3, !tbaa !21
  br i1 %t14, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb13
bb9:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp uge i8 %t15, 65
  br i1 %t17, label %bb10, label %bb11
bb10:
  %t19 = load i8, ptr %l0, !tbaa !22
  %t21 = icmp ule i8 %t19, 70
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t23 = load i1, ptr %l12, !tbaa !21
  store i1 %t23, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  %t24 = load i1, ptr %l9, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2eisLetter(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp uge i8 %t1, 97
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp ule i8 %t5, 122
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb9
bb5:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp uge i8 %t10, 65
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t14 = load i8, ptr %l0, !tbaa !22
  %t16 = icmp ule i8 %t14, 90
  store i1 %t16, ptr %l9, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l9, !tbaa !21
  store i1 %t18, ptr %l6, !tbaa !21
  br label %bb9
bb9:
  %t19 = load i1, ptr %l6, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscan_2eisWordChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @compiler_2fscan_2eisLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @compiler_2fscan_2eisDigit(i8 %t5)
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscan_2ejunkEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l15 = alloca i1
  %l18 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  %t21 = icmp ne i8 %t19, 13
  store i1 %t21, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call i1 @compiler_2fscan_2ecanStart(ptr %v0, { i64, ptr } %t24, i64 %t25)
  store i1 %t28, ptr %l18
  br label %bb7
bb6:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb7:
  %t29 = load i1, ptr %l18, !tbaa !21
  %t30 = xor i1 %t29, true
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l15, !tbaa !21
  %t33 = xor i1 %t32, true
  br i1 %t33, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  br label %bb1
bb13:
  %t39 = load i64, ptr %l2, !tbaa !24
  store i64 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscan_2elastLineStart(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } %a0, ptr %l7, !tbaa !27
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = sub i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp ne i8 %t15, 10
  store i1 %t17, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l6, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t26 = load i64, ptr %l2, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscan_2elineEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  %t21 = icmp ne i8 %t19, 10
  store i1 %t21, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l10, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t30 = load i64, ptr %l2, !tbaa !24
  store i64 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscan_2ematchBraces(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/token:Token"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l35 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  store { i64, ptr } %a0, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l6, !tbaa !24
  store i64 %t17, ptr %l8, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t19, ptr %l20, !tbaa !27
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr %"compiler/token:Token", ptr %t23, i64 %t20
  %t25 = load %"compiler/token:Token", ptr %t24
  store %"compiler/token:Token" %t25, ptr %l9
  %t27 = getelementptr %"compiler/token:Token", ptr %l9, i32 0, i32 0
  %t28 = load i32, ptr %t27, !range !{i32 0, i32 114}
  %t30 = trunc i64 112 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb6, label %bb7
bb6:
  store { i64, ptr } %a1, ptr %l25, !tbaa !27
  %t34 = load i64, ptr %l4, !tbaa !24
  %t35 = load i64, ptr %l8, !tbaa !24
  %t37 = trunc i64 %t35 to i32
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i32, ptr %t41, i64 %t34
  store i32 %t37, ptr %t42, !tbaa !33
  %t43 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t43)
  br label %bb8
bb7:
  %t46 = getelementptr %"compiler/token:Token", ptr %l9, i32 0, i32 0
  %t47 = load i32, ptr %t46, !range !{i32 0, i32 114}
  %t49 = trunc i64 113 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb9, label %bb10
bb8:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l4, !tbaa !24
  br label %bb16
bb9:
  %t57 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l3)
  %t58 = extractvalue { i32, i64 } %t57, 1
  %t59 = extractvalue { i32, i64 } %t57, 0
  store i32 %t59, ptr %l38
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb12, label %ok.61, !prof !99
ok.61:
  store i64 %t58, ptr %l37
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t62 = load i64, ptr %l37, !tbaa !24
  store i64 %t62, ptr %l35, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  br label %bb17
bb14:
  %t63 = load i64, ptr %l35, !tbaa !24
  store { i64, ptr } %a2, ptr %l39, !tbaa !27
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = trunc i64 %t66 to i32
  %t71 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i32, ptr %t72, i64 %t63
  store i32 %t68, ptr %t73, !tbaa !33
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb2
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @compiler_2fscan_2eoperator(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i8
  %l7 = alloca { i64, ptr }
  %l14 = alloca i8
  %l15 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca { i64, ptr }
  %l191 = alloca i1
  %l192 = alloca { i64, ptr }
  %l223 = alloca i1
  %l224 = alloca { i64, ptr }
  %rv = alloca { i32, i64 }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l7, !tbaa !27
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 %t6
  %t11 = load i8, ptr %t10, !tbaa !32
  store i8 %t11, ptr %l3, !tbaa !22
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = add i64 %t13, 1
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t21, ptr %l15, !tbaa !27
  %t22 = load i64, ptr %l1, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 %t24
  %t29 = load i8, ptr %t28, !tbaa !32
  store i8 %t29, ptr %l14, !tbaa !22
  br label %bb3
bb2:
  store i8 0, ptr %l14, !tbaa !22
  br label %bb3
bb3:
  %t31 = load i8, ptr %l14, !tbaa !22
  store i8 %t31, ptr %l4, !tbaa !22
  %t32 = load i8, ptr %l3, !tbaa !22
  %t34 = icmp eq i8 %t32, 43
  br i1 %t34, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb13
bb6:
  %t36 = load i8, ptr %l4, !tbaa !22
  %t38 = icmp eq i8 %t36, 43
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = load i64, ptr %l1, !tbaa !24
  %t42 = add i64 %t40, 2
  %t44 = insertvalue { i32, i64 } undef, i32 92, 0
  %t46 = insertvalue { i32, i64 } %t44, i64 %t42, 1
  store { i32, i64 } %t46, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t48 = load i8, ptr %l4, !tbaa !22
  %t50 = icmp eq i8 %t48, 61
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = load i64, ptr %l1, !tbaa !24
  %t54 = add i64 %t52, 2
  %t56 = insertvalue { i32, i64 } undef, i32 81, 0
  %t58 = insertvalue { i32, i64 } %t56, i64 %t54, 1
  store { i32, i64 } %t58, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t60 = load i64, ptr %l1, !tbaa !24
  %t62 = add i64 %t60, 1
  %t64 = insertvalue { i32, i64 } undef, i32 68, 0
  %t66 = insertvalue { i32, i64 } %t64, i64 %t62, 1
  store { i32, i64 } %t66, ptr %rv
  br label %ret
bb13:
  %t68 = load i8, ptr %l3, !tbaa !22
  %t70 = icmp eq i8 %t68, 45
  br i1 %t70, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb23
bb16:
  %t72 = load i8, ptr %l4, !tbaa !22
  %t74 = icmp eq i8 %t72, 45
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t76 = load i64, ptr %l1, !tbaa !24
  %t78 = add i64 %t76, 2
  %t80 = insertvalue { i32, i64 } undef, i32 93, 0
  %t82 = insertvalue { i32, i64 } %t80, i64 %t78, 1
  store { i32, i64 } %t82, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t84 = load i8, ptr %l4, !tbaa !22
  %t86 = icmp eq i8 %t84, 61
  br i1 %t86, label %bb20, label %bb21
bb20:
  %t88 = load i64, ptr %l1, !tbaa !24
  %t90 = add i64 %t88, 2
  %t92 = insertvalue { i32, i64 } undef, i32 82, 0
  %t94 = insertvalue { i32, i64 } %t92, i64 %t90, 1
  store { i32, i64 } %t94, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t96 = load i64, ptr %l1, !tbaa !24
  %t98 = add i64 %t96, 1
  %t100 = insertvalue { i32, i64 } undef, i32 69, 0
  %t102 = insertvalue { i32, i64 } %t100, i64 %t98, 1
  store { i32, i64 } %t102, ptr %rv
  br label %ret
bb23:
  %t104 = load i8, ptr %l3, !tbaa !22
  %t106 = icmp eq i8 %t104, 42
  br i1 %t106, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb39
bb26:
  %t108 = load i8, ptr %l4, !tbaa !22
  %t110 = icmp eq i8 %t108, 61
  br i1 %t110, label %bb27, label %bb28
bb27:
  %t112 = load i64, ptr %l1, !tbaa !24
  %t114 = add i64 %t112, 2
  %t116 = insertvalue { i32, i64 } undef, i32 83, 0
  %t118 = insertvalue { i32, i64 } %t116, i64 %t114, 1
  store { i32, i64 } %t118, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t120 = load i8, ptr %l4, !tbaa !22
  %t122 = icmp ne i8 %t120, 42
  br i1 %t122, label %bb30, label %bb31
bb30:
  %t124 = load i64, ptr %l1, !tbaa !24
  %t126 = add i64 %t124, 1
  %t128 = insertvalue { i32, i64 } undef, i32 70, 0
  %t130 = insertvalue { i32, i64 } %t128, i64 %t126, 1
  store { i32, i64 } %t130, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t132 = load i64, ptr %l1, !tbaa !24
  %t134 = add i64 %t132, 2
  %t135 = load i64, ptr %l2, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  br i1 %t138, label %bb33, label %bb34
bb33:
  %t140 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t140, ptr %l74, !tbaa !27
  %t141 = load i64, ptr %l1, !tbaa !24
  %t143 = add i64 %t141, 2
  %t145 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i8, ptr %t146, i64 %t143
  %t148 = load i8, ptr %t147, !tbaa !32
  %t150 = icmp eq i8 %t148, 61
  store i1 %t150, ptr %l73, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb35
bb35:
  %t152 = load i1, ptr %l73, !tbaa !21
  br i1 %t152, label %bb36, label %bb37
bb36:
  %t153 = load i64, ptr %l1, !tbaa !24
  %t155 = add i64 %t153, 3
  %t157 = insertvalue { i32, i64 } undef, i32 84, 0
  %t159 = insertvalue { i32, i64 } %t157, i64 %t155, 1
  store { i32, i64 } %t159, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t161 = load i64, ptr %l1, !tbaa !24
  %t163 = add i64 %t161, 2
  %t165 = insertvalue { i32, i64 } undef, i32 71, 0
  %t167 = insertvalue { i32, i64 } %t165, i64 %t163, 1
  store { i32, i64 } %t167, ptr %rv
  br label %ret
bb39:
  %t169 = load i8, ptr %l3, !tbaa !22
  %t171 = icmp eq i8 %t169, 47
  br i1 %t171, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t173 = load i8, ptr %l4, !tbaa !22
  %t175 = icmp eq i8 %t173, 61
  br i1 %t175, label %bb43, label %bb44
bb43:
  %t177 = load i64, ptr %l1, !tbaa !24
  %t179 = add i64 %t177, 2
  %t181 = insertvalue { i32, i64 } undef, i32 85, 0
  %t183 = insertvalue { i32, i64 } %t181, i64 %t179, 1
  store { i32, i64 } %t183, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t185 = load i64, ptr %l1, !tbaa !24
  %t187 = add i64 %t185, 1
  %t189 = insertvalue { i32, i64 } undef, i32 72, 0
  %t191 = insertvalue { i32, i64 } %t189, i64 %t187, 1
  store { i32, i64 } %t191, ptr %rv
  br label %ret
bb46:
  %t193 = load i8, ptr %l3, !tbaa !22
  %t195 = icmp eq i8 %t193, 37
  br i1 %t195, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb53
bb49:
  %t197 = load i8, ptr %l4, !tbaa !22
  %t199 = icmp eq i8 %t197, 61
  br i1 %t199, label %bb50, label %bb51
bb50:
  %t201 = load i64, ptr %l1, !tbaa !24
  %t203 = add i64 %t201, 2
  %t205 = insertvalue { i32, i64 } undef, i32 86, 0
  %t207 = insertvalue { i32, i64 } %t205, i64 %t203, 1
  store { i32, i64 } %t207, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t209 = load i64, ptr %l1, !tbaa !24
  %t211 = add i64 %t209, 1
  %t213 = insertvalue { i32, i64 } undef, i32 73, 0
  %t215 = insertvalue { i32, i64 } %t213, i64 %t211, 1
  store { i32, i64 } %t215, ptr %rv
  br label %ret
bb53:
  %t217 = load i8, ptr %l3, !tbaa !22
  %t219 = icmp eq i8 %t217, 38
  br i1 %t219, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb60
bb56:
  %t221 = load i8, ptr %l4, !tbaa !22
  %t223 = icmp eq i8 %t221, 61
  br i1 %t223, label %bb57, label %bb58
bb57:
  %t225 = load i64, ptr %l1, !tbaa !24
  %t227 = add i64 %t225, 2
  %t229 = insertvalue { i32, i64 } undef, i32 89, 0
  %t231 = insertvalue { i32, i64 } %t229, i64 %t227, 1
  store { i32, i64 } %t231, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  %t233 = load i64, ptr %l1, !tbaa !24
  %t235 = add i64 %t233, 1
  %t237 = insertvalue { i32, i64 } undef, i32 101, 0
  %t239 = insertvalue { i32, i64 } %t237, i64 %t235, 1
  store { i32, i64 } %t239, ptr %rv
  br label %ret
bb60:
  %t241 = load i8, ptr %l3, !tbaa !22
  %t243 = icmp eq i8 %t241, 124
  br i1 %t243, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb67
bb63:
  %t245 = load i8, ptr %l4, !tbaa !22
  %t247 = icmp eq i8 %t245, 61
  br i1 %t247, label %bb64, label %bb65
bb64:
  %t249 = load i64, ptr %l1, !tbaa !24
  %t251 = add i64 %t249, 2
  %t253 = insertvalue { i32, i64 } undef, i32 90, 0
  %t255 = insertvalue { i32, i64 } %t253, i64 %t251, 1
  store { i32, i64 } %t255, ptr %rv
  br label %ret
bb65:
  br label %bb66
bb66:
  %t257 = load i64, ptr %l1, !tbaa !24
  %t259 = add i64 %t257, 1
  %t261 = insertvalue { i32, i64 } undef, i32 102, 0
  %t263 = insertvalue { i32, i64 } %t261, i64 %t259, 1
  store { i32, i64 } %t263, ptr %rv
  br label %ret
bb67:
  %t265 = load i8, ptr %l3, !tbaa !22
  %t267 = icmp eq i8 %t265, 94
  br i1 %t267, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb74
bb70:
  %t269 = load i8, ptr %l4, !tbaa !22
  %t271 = icmp eq i8 %t269, 61
  br i1 %t271, label %bb71, label %bb72
bb71:
  %t273 = load i64, ptr %l1, !tbaa !24
  %t275 = add i64 %t273, 2
  %t277 = insertvalue { i32, i64 } undef, i32 91, 0
  %t279 = insertvalue { i32, i64 } %t277, i64 %t275, 1
  store { i32, i64 } %t279, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t281 = load i64, ptr %l1, !tbaa !24
  %t283 = add i64 %t281, 1
  %t285 = insertvalue { i32, i64 } undef, i32 103, 0
  %t287 = insertvalue { i32, i64 } %t285, i64 %t283, 1
  store { i32, i64 } %t287, ptr %rv
  br label %ret
bb74:
  %t289 = load i8, ptr %l3, !tbaa !22
  %t291 = icmp eq i8 %t289, 58
  br i1 %t291, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb81
bb77:
  %t293 = load i8, ptr %l4, !tbaa !22
  %t295 = icmp eq i8 %t293, 61
  br i1 %t295, label %bb78, label %bb79
bb78:
  %t297 = load i64, ptr %l1, !tbaa !24
  %t299 = add i64 %t297, 2
  %t301 = insertvalue { i32, i64 } undef, i32 80, 0
  %t303 = insertvalue { i32, i64 } %t301, i64 %t299, 1
  store { i32, i64 } %t303, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  %t305 = load i64, ptr %l1, !tbaa !24
  %t307 = add i64 %t305, 1
  %t309 = insertvalue { i32, i64 } undef, i32 79, 0
  %t311 = insertvalue { i32, i64 } %t309, i64 %t307, 1
  store { i32, i64 } %t311, ptr %rv
  br label %ret
bb81:
  %t313 = load i8, ptr %l3, !tbaa !22
  %t315 = icmp eq i8 %t313, 61
  br i1 %t315, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb88
bb84:
  %t317 = load i8, ptr %l4, !tbaa !22
  %t319 = icmp eq i8 %t317, 61
  br i1 %t319, label %bb85, label %bb86
bb85:
  %t321 = load i64, ptr %l1, !tbaa !24
  %t323 = add i64 %t321, 2
  %t325 = insertvalue { i32, i64 } undef, i32 94, 0
  %t327 = insertvalue { i32, i64 } %t325, i64 %t323, 1
  store { i32, i64 } %t327, ptr %rv
  br label %ret
bb86:
  br label %bb87
bb87:
  %t329 = load i64, ptr %l1, !tbaa !24
  %t331 = add i64 %t329, 1
  %t333 = insertvalue { i32, i64 } undef, i32 78, 0
  %t335 = insertvalue { i32, i64 } %t333, i64 %t331, 1
  store { i32, i64 } %t335, ptr %rv
  br label %ret
bb88:
  %t337 = load i8, ptr %l3, !tbaa !22
  %t339 = icmp eq i8 %t337, 33
  br i1 %t339, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb95
bb91:
  %t341 = load i8, ptr %l4, !tbaa !22
  %t343 = icmp eq i8 %t341, 61
  br i1 %t343, label %bb92, label %bb93
bb92:
  %t345 = load i64, ptr %l1, !tbaa !24
  %t347 = add i64 %t345, 2
  %t349 = insertvalue { i32, i64 } undef, i32 95, 0
  %t351 = insertvalue { i32, i64 } %t349, i64 %t347, 1
  store { i32, i64 } %t351, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  %t353 = load i64, ptr %l1, !tbaa !24
  %t355 = add i64 %t353, 1
  %t357 = insertvalue { i32, i64 } undef, i32 96, 0
  %t359 = insertvalue { i32, i64 } %t357, i64 %t355, 1
  store { i32, i64 } %t359, ptr %rv
  br label %ret
bb95:
  %t361 = load i8, ptr %l3, !tbaa !22
  %t363 = icmp eq i8 %t361, 60
  br i1 %t363, label %bb96, label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb111
bb98:
  %t365 = load i8, ptr %l4, !tbaa !22
  %t367 = icmp eq i8 %t365, 60
  br i1 %t367, label %bb99, label %bb100
bb99:
  %t369 = load i64, ptr %l1, !tbaa !24
  %t371 = add i64 %t369, 2
  %t372 = load i64, ptr %l2, !tbaa !24
  %t375 = icmp slt i64 %t371, %t372
  br i1 %t375, label %bb101, label %bb102
bb100:
  br label %bb107
bb101:
  %t377 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t377, ptr %l192, !tbaa !27
  %t378 = load i64, ptr %l1, !tbaa !24
  %t380 = add i64 %t378, 2
  %t382 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr i8, ptr %t383, i64 %t380
  %t385 = load i8, ptr %t384, !tbaa !32
  %t387 = icmp eq i8 %t385, 61
  store i1 %t387, ptr %l191, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb103
bb103:
  %t389 = load i1, ptr %l191, !tbaa !21
  br i1 %t389, label %bb104, label %bb105
bb104:
  %t390 = load i64, ptr %l1, !tbaa !24
  %t392 = add i64 %t390, 3
  %t394 = insertvalue { i32, i64 } undef, i32 87, 0
  %t396 = insertvalue { i32, i64 } %t394, i64 %t392, 1
  store { i32, i64 } %t396, ptr %rv
  br label %ret
bb105:
  br label %bb106
bb106:
  %t398 = load i64, ptr %l1, !tbaa !24
  %t400 = add i64 %t398, 2
  %t402 = insertvalue { i32, i64 } undef, i32 106, 0
  %t404 = insertvalue { i32, i64 } %t402, i64 %t400, 1
  store { i32, i64 } %t404, ptr %rv
  br label %ret
bb107:
  %t406 = load i8, ptr %l4, !tbaa !22
  %t408 = icmp eq i8 %t406, 61
  br i1 %t408, label %bb108, label %bb109
bb108:
  %t410 = load i64, ptr %l1, !tbaa !24
  %t412 = add i64 %t410, 2
  %t414 = insertvalue { i32, i64 } undef, i32 98, 0
  %t416 = insertvalue { i32, i64 } %t414, i64 %t412, 1
  store { i32, i64 } %t416, ptr %rv
  br label %ret
bb109:
  br label %bb110
bb110:
  %t418 = load i64, ptr %l1, !tbaa !24
  %t420 = add i64 %t418, 1
  %t422 = insertvalue { i32, i64 } undef, i32 97, 0
  %t424 = insertvalue { i32, i64 } %t422, i64 %t420, 1
  store { i32, i64 } %t424, ptr %rv
  br label %ret
bb111:
  %t426 = load i8, ptr %l3, !tbaa !22
  %t428 = icmp eq i8 %t426, 62
  br i1 %t428, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb127
bb114:
  %t430 = load i8, ptr %l4, !tbaa !22
  %t432 = icmp eq i8 %t430, 62
  br i1 %t432, label %bb115, label %bb116
bb115:
  %t434 = load i64, ptr %l1, !tbaa !24
  %t436 = add i64 %t434, 2
  %t437 = load i64, ptr %l2, !tbaa !24
  %t440 = icmp slt i64 %t436, %t437
  br i1 %t440, label %bb117, label %bb118
bb116:
  br label %bb123
bb117:
  %t442 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t442, ptr %l224, !tbaa !27
  %t443 = load i64, ptr %l1, !tbaa !24
  %t445 = add i64 %t443, 2
  %t447 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr i8, ptr %t448, i64 %t445
  %t450 = load i8, ptr %t449, !tbaa !32
  %t452 = icmp eq i8 %t450, 61
  store i1 %t452, ptr %l223, !tbaa !21
  br label %bb119
bb118:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb119
bb119:
  %t454 = load i1, ptr %l223, !tbaa !21
  br i1 %t454, label %bb120, label %bb121
bb120:
  %t455 = load i64, ptr %l1, !tbaa !24
  %t457 = add i64 %t455, 3
  %t459 = insertvalue { i32, i64 } undef, i32 88, 0
  %t461 = insertvalue { i32, i64 } %t459, i64 %t457, 1
  store { i32, i64 } %t461, ptr %rv
  br label %ret
bb121:
  br label %bb122
bb122:
  %t463 = load i64, ptr %l1, !tbaa !24
  %t465 = add i64 %t463, 2
  %t467 = insertvalue { i32, i64 } undef, i32 107, 0
  %t469 = insertvalue { i32, i64 } %t467, i64 %t465, 1
  store { i32, i64 } %t469, ptr %rv
  br label %ret
bb123:
  %t471 = load i8, ptr %l4, !tbaa !22
  %t473 = icmp eq i8 %t471, 61
  br i1 %t473, label %bb124, label %bb125
bb124:
  %t475 = load i64, ptr %l1, !tbaa !24
  %t477 = add i64 %t475, 2
  %t479 = insertvalue { i32, i64 } undef, i32 100, 0
  %t481 = insertvalue { i32, i64 } %t479, i64 %t477, 1
  store { i32, i64 } %t481, ptr %rv
  br label %ret
bb125:
  br label %bb126
bb126:
  %t483 = load i64, ptr %l1, !tbaa !24
  %t485 = add i64 %t483, 1
  %t487 = insertvalue { i32, i64 } undef, i32 99, 0
  %t489 = insertvalue { i32, i64 } %t487, i64 %t485, 1
  store { i32, i64 } %t489, ptr %rv
  br label %ret
bb127:
  %t491 = load i8, ptr %l3, !tbaa !22
  %t493 = icmp eq i8 %t491, 64
  br i1 %t493, label %bb128, label %bb129
bb128:
  br label %bb130
bb129:
  br label %bb131
bb130:
  %t495 = load i64, ptr %l1, !tbaa !24
  %t497 = add i64 %t495, 1
  %t499 = insertvalue { i32, i64 } undef, i32 74, 0
  %t501 = insertvalue { i32, i64 } %t499, i64 %t497, 1
  store { i32, i64 } %t501, ptr %rv
  br label %ret
bb131:
  %t503 = load i8, ptr %l3, !tbaa !22
  %t505 = icmp eq i8 %t503, 44
  br i1 %t505, label %bb132, label %bb133
bb132:
  br label %bb134
bb133:
  br label %bb135
bb134:
  %t507 = load i64, ptr %l1, !tbaa !24
  %t509 = add i64 %t507, 1
  %t511 = insertvalue { i32, i64 } undef, i32 75, 0
  %t513 = insertvalue { i32, i64 } %t511, i64 %t509, 1
  store { i32, i64 } %t513, ptr %rv
  br label %ret
bb135:
  %t515 = load i8, ptr %l3, !tbaa !22
  %t517 = icmp eq i8 %t515, 46
  br i1 %t517, label %bb136, label %bb137
bb136:
  br label %bb138
bb137:
  br label %bb139
bb138:
  %t519 = load i64, ptr %l1, !tbaa !24
  %t521 = add i64 %t519, 1
  %t523 = insertvalue { i32, i64 } undef, i32 76, 0
  %t525 = insertvalue { i32, i64 } %t523, i64 %t521, 1
  store { i32, i64 } %t525, ptr %rv
  br label %ret
bb139:
  %t527 = load i8, ptr %l3, !tbaa !22
  %t529 = icmp eq i8 %t527, 63
  br i1 %t529, label %bb140, label %bb141
bb140:
  br label %bb142
bb141:
  br label %bb143
bb142:
  %t531 = load i64, ptr %l1, !tbaa !24
  %t533 = add i64 %t531, 1
  %t535 = insertvalue { i32, i64 } undef, i32 77, 0
  %t537 = insertvalue { i32, i64 } %t535, i64 %t533, 1
  store { i32, i64 } %t537, ptr %rv
  br label %ret
bb143:
  %t539 = load i8, ptr %l3, !tbaa !22
  %t541 = icmp eq i8 %t539, 126
  br i1 %t541, label %bb144, label %bb145
bb144:
  br label %bb146
bb145:
  br label %bb147
bb146:
  %t543 = load i64, ptr %l1, !tbaa !24
  %t545 = add i64 %t543, 1
  %t547 = insertvalue { i32, i64 } undef, i32 104, 0
  %t549 = insertvalue { i32, i64 } %t547, i64 %t545, 1
  store { i32, i64 } %t549, ptr %rv
  br label %ret
bb147:
  %t551 = load i8, ptr %l3, !tbaa !22
  %t553 = icmp eq i8 %t551, 36
  br i1 %t553, label %bb148, label %bb149
bb148:
  br label %bb150
bb149:
  br label %bb151
bb150:
  %t555 = load i64, ptr %l1, !tbaa !24
  %t557 = add i64 %t555, 1
  %t559 = insertvalue { i32, i64 } undef, i32 105, 0
  %t561 = insertvalue { i32, i64 } %t559, i64 %t557, 1
  store { i32, i64 } %t561, ptr %rv
  br label %ret
bb151:
  %t563 = load i8, ptr %l3, !tbaa !22
  %t565 = icmp eq i8 %t563, 40
  br i1 %t565, label %bb152, label %bb153
bb152:
  br label %bb154
bb153:
  br label %bb155
bb154:
  %t567 = load i64, ptr %l1, !tbaa !24
  %t569 = add i64 %t567, 1
  %t571 = insertvalue { i32, i64 } undef, i32 108, 0
  %t573 = insertvalue { i32, i64 } %t571, i64 %t569, 1
  store { i32, i64 } %t573, ptr %rv
  br label %ret
bb155:
  %t575 = load i8, ptr %l3, !tbaa !22
  %t577 = icmp eq i8 %t575, 41
  br i1 %t577, label %bb156, label %bb157
bb156:
  br label %bb158
bb157:
  br label %bb159
bb158:
  %t579 = load i64, ptr %l1, !tbaa !24
  %t581 = add i64 %t579, 1
  %t583 = insertvalue { i32, i64 } undef, i32 109, 0
  %t585 = insertvalue { i32, i64 } %t583, i64 %t581, 1
  store { i32, i64 } %t585, ptr %rv
  br label %ret
bb159:
  %t587 = load i8, ptr %l3, !tbaa !22
  %t589 = icmp eq i8 %t587, 91
  br i1 %t589, label %bb160, label %bb161
bb160:
  br label %bb162
bb161:
  br label %bb163
bb162:
  %t591 = load i64, ptr %l1, !tbaa !24
  %t593 = add i64 %t591, 1
  %t595 = insertvalue { i32, i64 } undef, i32 110, 0
  %t597 = insertvalue { i32, i64 } %t595, i64 %t593, 1
  store { i32, i64 } %t597, ptr %rv
  br label %ret
bb163:
  %t599 = load i8, ptr %l3, !tbaa !22
  %t601 = icmp eq i8 %t599, 93
  br i1 %t601, label %bb164, label %bb165
bb164:
  br label %bb166
bb165:
  br label %bb167
bb166:
  %t603 = load i64, ptr %l1, !tbaa !24
  %t605 = add i64 %t603, 1
  %t607 = insertvalue { i32, i64 } undef, i32 111, 0
  %t609 = insertvalue { i32, i64 } %t607, i64 %t605, 1
  store { i32, i64 } %t609, ptr %rv
  br label %ret
bb167:
  %t611 = load i8, ptr %l3, !tbaa !22
  %t613 = icmp eq i8 %t611, 123
  br i1 %t613, label %bb168, label %bb169
bb168:
  br label %bb170
bb169:
  br label %bb171
bb170:
  %t615 = load i64, ptr %l1, !tbaa !24
  %t617 = add i64 %t615, 1
  %t619 = insertvalue { i32, i64 } undef, i32 112, 0
  %t621 = insertvalue { i32, i64 } %t619, i64 %t617, 1
  store { i32, i64 } %t621, ptr %rv
  br label %ret
bb171:
  %t623 = load i8, ptr %l3, !tbaa !22
  %t625 = icmp eq i8 %t623, 125
  br i1 %t625, label %bb172, label %bb173
bb172:
  br label %bb174
bb173:
  br label %bb175
bb174:
  %t627 = load i64, ptr %l1, !tbaa !24
  %t629 = add i64 %t627, 1
  %t631 = insertvalue { i32, i64 } undef, i32 113, 0
  %t633 = insertvalue { i32, i64 } %t631, i64 %t629, 1
  store { i32, i64 } %t633, ptr %rv
  br label %ret
bb175:
  br i1 true, label %bb176, label %bb177
bb176:
  br label %bb178
bb177:
  br label %bb179
bb178:
  %t635 = load i64, ptr %l1, !tbaa !24
  %t637 = add i64 %t635, 1
  %t639 = insertvalue { i32, i64 } undef, i32 0, 0
  %t641 = insertvalue { i32, i64 } %t639, i64 %t637, 1
  store { i32, i64 } %t641, ptr %rv
  br label %ret
bb179:
  call void @__olang_check_failed(ptr @olang_loc_29c361661bd12d1c_bc00961d9e0a1b58)
  unreachable
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @compiler_2fscan_2epushUtf8(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 128
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = trunc i64 %t6 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t5, i8 %t8)
  br label %bb3
bb2:
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = icmp slt i64 %t11, 2048
  br i1 %t13, label %bb4, label %bb5
bb3:
  br label %bb19
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = ashr i64 %t16, 6
  %t20 = or i64 192, %t18
  %t22 = trunc i64 %t20 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t15, i8 %t22)
  br label %bb6
bb5:
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = icmp slt i64 %t25, 65536
  br i1 %t27, label %bb8, label %bb9
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i64, ptr %l1, !tbaa !24
  %t32 = and i64 %t30, 63
  %t34 = or i64 128, %t32
  %t36 = trunc i64 %t34 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t29, i8 %t36)
  br label %bb7
bb7:
  br label %bb18
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  %t42 = ashr i64 %t40, 12
  %t44 = or i64 224, %t42
  %t46 = trunc i64 %t44 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t39, i8 %t46)
  br label %bb10
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t52 = ashr i64 %t50, 18
  %t54 = and i64 %t52, 7
  %t56 = or i64 240, %t54
  %t58 = trunc i64 %t56 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t49, i8 %t58)
  br label %bb13
bb10:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t64 = ashr i64 %t62, 6
  %t66 = and i64 %t64, 63
  %t68 = or i64 128, %t66
  %t70 = trunc i64 %t68 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t61, i8 %t70)
  br label %bb11
bb11:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t76 = and i64 %t74, 63
  %t78 = or i64 128, %t76
  %t80 = trunc i64 %t78 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t73, i8 %t80)
  br label %bb12
bb12:
  br label %bb17
bb13:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l1, !tbaa !24
  %t86 = ashr i64 %t84, 12
  %t88 = and i64 %t86, 63
  %t90 = or i64 128, %t88
  %t92 = trunc i64 %t90 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t83, i8 %t92)
  br label %bb14
bb14:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l1, !tbaa !24
  %t98 = ashr i64 %t96, 6
  %t100 = and i64 %t98, 63
  %t102 = or i64 128, %t100
  %t104 = trunc i64 %t102 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t95, i8 %t104)
  br label %bb15
bb15:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i64, ptr %l1, !tbaa !24
  %t110 = and i64 %t108, 63
  %t112 = or i64 128, %t110
  %t114 = trunc i64 %t112 to i8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t107, i8 %t114)
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscan_2espelled(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/token:Token"
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l42 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l7
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t5 = getelementptr %"compiler/scan:Tokens", ptr %a1, i32 0, i32 0
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb25
bb4:
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t20, ptr %l16, !tbaa !27
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr %"compiler/token:Token", ptr %t24, i64 %t21
  %t26 = load %"compiler/token:Token", ptr %t25
  store %"compiler/token:Token" %t26, ptr %l6
  %t28 = getelementptr %"compiler/token:Token", ptr %l6, i32 0, i32 0
  %t29 = load i32, ptr %t28, !range !{i32 0, i32 114}
  %t31 = trunc i64 0 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb6, label %bb7
bb6:
  br label %bb25
bb7:
  br label %bb8
bb8:
  %t35 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l2)
  store i64 %t35, ptr %l22
  br label %bb9
bb9:
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = icmp sgt i64 %t36, 0
  br i1 %t37, label %bb10, label %bb11
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 32)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  store ptr %l2, ptr %l25, !tbaa !29
  %t40 = getelementptr %"compiler/token:Token", ptr %l6, i32 0, i32 0
  %t41 = load i32, ptr %t40, !range !{i32 0, i32 114}
  %t43 = trunc i64 8 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l28, !tbaa !27
  br label %bb22
bb15:
  store { i64, ptr } %a0, ptr %l29, !tbaa !27
  %t47 = getelementptr %"compiler/token:Token", ptr %l6, i32 0, i32 2
  %t48 = load i32, ptr %t47, !tbaa !23
  %t50 = sext i32 %t48 to i64
  store i64 %t50, ptr %l31, !tbaa !24
  %t51 = getelementptr %"compiler/token:Token", ptr %l6, i32 0, i32 3
  %t52 = load i32, ptr %t51, !tbaa !23
  %t54 = sext i32 %t52 to i64
  store i64 %t54, ptr %l33, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l34, !tbaa !24
  %t57 = load i64, ptr %l31, !tbaa !24
  %t58 = icmp sge i64 %t57, 0
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t60 = load i64, ptr %l31, !tbaa !24
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = icmp sle i64 %t60, %t61
  br i1 %t62, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_ee9cb139bec139e6_8761f47a368b1bd2)
  unreachable
bb18:
  %t64 = load i64, ptr %l33, !tbaa !24
  %t65 = load i64, ptr %l34, !tbaa !24
  %t66 = icmp sle i64 %t64, %t65
  br i1 %t66, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_ee9cb139bec139e6_8761f47a368b1bd2)
  unreachable
bb20:
  %t68 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l31, !tbaa !24
  %t71 = load i64, ptr %l33, !tbaa !24
  %t72 = getelementptr i8, ptr %t69, i64 %t70
  %t73 = sub i64 %t71, %t70
  %t74 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t72, 1
  store { i64, ptr } %t75, ptr %l28, !tbaa !27
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_ee9cb139bec139e6_8761f47a368b1bd2)
  unreachable
bb22:
  %t77 = load ptr, ptr %l25, !tbaa !29
  %t78 = load { i64, ptr }, ptr %l28, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t77, { i64, ptr } %t78)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb2
bb25:
  %t84 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t84, ptr %l42
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, i64 } } @compiler_2fscan_2eunicodeEscape(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca i64
  %l29 = alloca i1
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l40 = alloca i64
  %l48 = alloca i1
  %l52 = alloca i1
  %l53 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, i64 } }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = add i64 %t5, 2
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sge i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l12, !tbaa !27
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = add i64 %t14, 2
  %t18 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t23 = icmp ne i8 %t21, 123
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t25 = load i1, ptr %l11, !tbaa !21
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = insertvalue { i32, { i64, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i64, i64 } } %t27, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  store i64 0, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = add i64 %t28, 3
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t38, ptr %l24, !tbaa !27
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i8, ptr %t42, i64 %t39
  %t44 = load i8, ptr %t43, !tbaa !32
  %t46 = call i64 @compiler_2fscan_2ehexDigit(i8 %t44)
  store i64 %t46, ptr %l27
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t47 = load i64, ptr %l27, !tbaa !24
  %t48 = icmp sge i64 %t47, 0
  store i1 %t48, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t50 = load i1, ptr %l23, !tbaa !21
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l1, !tbaa !24
  %t54 = add i64 %t52, 9
  %t57 = icmp slt i64 %t51, %t54
  store i1 %t57, ptr %l29, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t59 = load i1, ptr %l29, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb15, label %bb16
bb15:
  br label %bb20
bb16:
  br label %bb17
bb17:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = mul i64 %t62, 16
  store i64 %t64, ptr %l36, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t65, ptr %l37, !tbaa !27
  %t66 = load i64, ptr %l4, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i8, ptr %t69, i64 %t66
  %t71 = load i8, ptr %t70, !tbaa !32
  %t73 = call i64 @compiler_2fscan_2ehexDigit(i8 %t71)
  store i64 %t73, ptr %l40
  br label %bb18
bb18:
  %t74 = load i64, ptr %l36, !tbaa !24
  %t75 = load i64, ptr %l40, !tbaa !24
  %t76 = add i64 %t74, %t75
  store i64 %t76, ptr %l3, !tbaa !24
  %t78 = load i64, ptr %l4, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l4, !tbaa !24
  br label %bb19
bb19:
  br label %bb7
bb20:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t83 = load i64, ptr %l1, !tbaa !24
  %t85 = add i64 %t83, 3
  %t88 = icmp eq i64 %t82, %t85
  br i1 %t88, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb23
bb22:
  %t90 = load i64, ptr %l4, !tbaa !24
  %t91 = load i64, ptr %l2, !tbaa !24
  %t94 = icmp sge i64 %t90, %t91
  store i1 %t94, ptr %l48, !tbaa !21
  br label %bb23
bb23:
  %t96 = load i1, ptr %l48, !tbaa !21
  br i1 %t96, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb26
bb25:
  %t97 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t97, ptr %l53, !tbaa !27
  %t98 = load i64, ptr %l4, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i8, ptr %t101, i64 %t98
  %t103 = load i8, ptr %t102, !tbaa !32
  %t105 = icmp ne i8 %t103, 125
  store i1 %t105, ptr %l52, !tbaa !21
  br label %bb26
bb26:
  %t107 = load i1, ptr %l52, !tbaa !21
  br i1 %t107, label %bb27, label %bb28
bb27:
  %t109 = insertvalue { i32, { i64, i64 } } zeroinitializer, i32 65536, 0
  store { i32, { i64, i64 } } %t109, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t110 = load i64, ptr %l3, !tbaa !24
  %t111 = load i64, ptr %l4, !tbaa !24
  %t113 = add i64 %t111, 1
  %t115 = insertvalue { i64, i64 } undef, i64 %t110, 0
  %t117 = insertvalue { i64, i64 } %t115, i64 %t113, 1
  %t119 = insertvalue { i32, { i64, i64 } } zeroinitializer, { i64, i64 } %t117, 1
  store { i32, { i64, i64 } } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, i64 } }, ptr %rv
  ret { i32, { i64, i64 } } %rr
}

define dso_local i64 @compiler_2fscan_2ewordEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l14 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  %t21 = call i1 @compiler_2fscan_2eisWordChar(i8 %t19)
  store i1 %t21, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t22 = load i1, ptr %l14, !tbaa !21
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l10, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t30 = load i64, ptr %l2, !tbaa !24
  store i64 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/scan:Diag" @compiler_2fscan_3aDiag_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i8 %a3) #0 {
entry:
  %rv = alloca %"compiler/scan:Diag"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/scan:Diag" undef, i32 %a0, 0
  %t12 = insertvalue %"compiler/scan:Diag" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/scan:Diag" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/scan:Diag" %t14, i8 %a3, 3
  store %"compiler/scan:Diag" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scan:Diag", ptr %rv
  ret %"compiler/scan:Diag" %rr
}

define dso_local %"compiler/scan:Tokens" @compiler_2fscan_3aTokens_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/scan:Tokens"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/scan:Tokens" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/scan:Tokens" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/scan:Tokens" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/scan:Tokens" %t14, { i64, ptr } %a3, 3
  store %"compiler/scan:Tokens" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scan:Tokens", ptr %rv
  ret %"compiler/scan:Tokens" %rr
}

define dso_local %"compiler/scan:scanner" @compiler_2fscan_3ascanner_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scan:scanner"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscan_3aDiag_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l9
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l3
  %t7 = ptrtoint ptr %v1 to i64
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fscan_3ascanner_2e3
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = call ptr @__olang_region_make(ptr %v1)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t12 = load i64, ptr %l10
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %t13, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l12
  br label %bb5
bb5:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2fscan_3ascanner_2e3
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load i64, ptr %l10
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr null
  %t25 = icmp eq ptr %t24, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t25)
  br label %bb7
bb7:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = insertvalue %"compiler/scan:scanner" undef, { i64, ptr } %t27, 0
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t30 = insertvalue %"compiler/scan:scanner" %t28, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, 1
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t32 = insertvalue %"compiler/scan:scanner" %t30, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, 2
  %t34 = insertvalue %"compiler/scan:scanner" %t32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, 3
  %t36 = insertvalue %"compiler/scan:scanner" %t34, i64 0, 4
  %t38 = insertvalue %"compiler/scan:scanner" %t36, i1 false, 5
  store %"compiler/scan:scanner" %t38, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scan:scanner", ptr %rv
  ret %"compiler/scan:scanner" %rr
}

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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d0 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"unexpected character '" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d2 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"non-ASCII byte - olang source is ASCII" }>, align 8
@.d3 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"NUL byte in the source - is this a text file?" }>, align 8
@.d4 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"carriage return - save the file with LF line endings" }>, align 8
@.d5 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"olang has no ';' - a statement ends where its line does; put the next one on a line of its own" }>, align 8
@.d6 = private constant <{ i64, [95 x i8] }> <{ i64 0, [95 x i8] c"a comma never ends a line - items on different lines are separated by the line break; remove it" }>, align 8
@.d7 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"unterminated block comment - '##' closes it" }>, align 8
@.d8 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"unterminated string literal" }>, align 8
@.d9 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"string literal not closed on its line - write \5Cn for a newline" }>, align 8
@.d10 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"unterminated character literal" }>, align 8
@.d11 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"character literal not closed on its line" }>, align 8
@.d12 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"empty character literal" }>, align 8
@.d13 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"character literal holds more than one character - text is written in \22\22" }>, align 8
@.d14 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"unknown escape '\5C" }>, align 8
@.d15 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"' - the escapes are \5Cn \5Ct \5Cr \5C0 \5C\5C \5C' \5C\22 \5CxHH \5Cu{H}" }>, align 8
@.d16 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"'\5Cx' needs two hexadecimal digits, as \5Cx41" }>, align 8
@.d17 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"'\5Cu' needs one to six hexadecimal digits in braces, as \5Cu{1F600}" }>, align 8
@.d18 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"a Unicode code point is at most 10FFFF and no surrogate (D800-DFFF)" }>, align 8
@.d19 = private constant <{ i64, [84 x i8] }> <{ i64 0, [84 x i8] c"a character literal holds one byte - \5Cu{...} there is below 80; write the text in \22\22" }>, align 8
@.d20 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"unterminated raw text - '\22\22\22' closes it" }>, align 8
@.d21 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"raw text across lines begins on the line after its '\22\22\22' - move this to the next line" }>, align 8
@.d22 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"the closing '\22\22\22' of raw text across lines stands on a line of its own" }>, align 8
@.d23 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"a line of raw text begins with the indentation of its closing '\22\22\22'" }>, align 8
@.d24 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"'0x' needs hexadecimal digits" }>, align 8
@.d25 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"'0b' needs binary digits" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d27 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"' is not a hexadecimal digit" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d29 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"' is not a binary digit" }>, align 8
@.d30 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"'_' in a number must stand between two digits" }>, align 8
@.d31 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a decimal point needs a digit after it" }>, align 8
@.d32 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a number has at most one decimal point" }>, align 8
@.d33 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L16" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"L1" }>, align 8
@.d35 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"L3" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L18" }>, align 8
@.d37 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L18a" }>, align 8
@.d38 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L4a" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L14" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L13" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L15" }>, align 8
@.d42 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"L13, L15" }>, align 8
@.d43 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L14a" }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L10a" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L10c" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"L10b" }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"L12" }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c";" }>, align 8
@olang_2esole_2ecompiler_2fscan_3ascanner_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_e0eb014d323e7d9_3ee0f0ba74559745 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2eToArray_3ccompiler_2ftoken_3aToken_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_bcb8545b4a157296_c09080caec3ed55a = external constant [0 x i8]
@olang_loc_5edef46376bb22ab_dbf9e31b0e24ed2f = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscan_3aDiag_3e_2eToArray_3ccompiler_2fscan_3aDiag_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_39af88013a73b478_a5c9d135875fcb24 = external constant [0 x i8]
@olang_loc_3aab5bd1ecbcb485_f7a3519a1de9c361 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eLen_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eClear_Hee3cbaa7ef2d16f687a523c73aa64228(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscan_3aDiag_3e_2ePush_3ccompiler_2fscan_3aDiag_3e(ptr %v0, ptr %a0, %"compiler/scan:Diag" %a1)
declare i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eEndsStatement(i32 %a0)
declare %"compiler/token:Token" @compiler_2ftoken_3aToken_2ector(ptr %v0, i32 %a0, i8 %a1, i32 %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ePush_3ccompiler_2ftoken_3aToken_3e(ptr %v0, ptr %a0, %"compiler/token:Token" %a1)
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
@G_2ecompiler_2ftoken_2eSpace = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\02" }>, align 8
@G_2ecompiler_2ftoken_2eLineStart = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\04" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePush_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i8 %a1)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eAt_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eTrunc_Hdb40e008e45c3217ff19be25d205c76e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i8 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ePop_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0)
@olang_loc_639a87f47d38eeab_7a46798b70a2d59f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_29c361661bd12d1c_bc00961d9e0a1b58 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_ee9cb139bec139e6_8761f47a368b1bd2 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aToken_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscan_3aDiag_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector(ptr %v0, i64 %a0)

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
