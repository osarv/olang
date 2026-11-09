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
%"compiler/bindgen:cparse" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/bindgen:ctp" = type { { i64, ptr }, i64 }
%"compiler/bindgen:cx" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/bindgen:gen" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/bindgen:ctype" = type { i32, { i64, ptr }, i64, i1, i64, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/bindgen:cMacro" = type { { i64, ptr }, i1, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/bindgen:record" = type { { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, i64, i1, { i64, ptr }, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/bindgen:cFunc" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
define dso_local ptr @compiler_2fbindgen_2ecLex(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i64
  %l6 = alloca i8
  %l7 = alloca i8
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l39 = alloca i1
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l65 = alloca i64
  %l71 = alloca i1
  %l72 = alloca i1
  %l79 = alloca i1
  %l80 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l88 = alloca i1
  %l89 = alloca i1
  %l90 = alloca { i64, ptr }
  %l101 = alloca i1
  %l102 = alloca { i64, ptr }
  %l106 = alloca i1
  %l107 = alloca { i64, ptr }
  %l111 = alloca i1
  %l112 = alloca { i64, ptr }
  %l113 = alloca i64
  %l114 = alloca i64
  %l115 = alloca i64
  %l121 = alloca i1
  %l122 = alloca { i64, ptr }
  %l131 = alloca i1
  %l132 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l150 = alloca i64
  %l156 = alloca i1
  %l157 = alloca i1
  %l160 = alloca i1
  %l166 = alloca i1
  %l167 = alloca { i64, ptr }
  %l171 = alloca i1
  %l177 = alloca { i64, ptr }
  %l182 = alloca i1
  %l185 = alloca i1
  %l186 = alloca { i64, ptr }
  %l191 = alloca i1
  %l192 = alloca { i64, ptr }
  %l197 = alloca i1
  %l198 = alloca { i64, ptr }
  %l203 = alloca i1
  %l204 = alloca { i64, ptr }
  %l212 = alloca i1
  %l213 = alloca i1
  %l215 = alloca i1
  %l216 = alloca i1
  %l219 = alloca i1
  %l225 = alloca [15 x { i64, ptr }]
  %l243 = alloca i1
  %l244 = alloca { i64, ptr }
  %l245 = alloca i64
  %l249 = alloca i64
  %l250 = alloca i64
  %l256 = alloca i1
  %l263 = alloca ptr
  %l264 = alloca { i64, ptr }
  %l265 = alloca i64
  %l266 = alloca i64
  %l267 = alloca i64
  %s7 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t11 = icmp slt i64 %t5, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb176
bb4:
  br label %bb5
bb5:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l19, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l3, !tbaa !22
  %t23 = load i8, ptr %l3, !tbaa !22
  %t25 = icmp eq i8 %t23, 32
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i8, ptr %l3, !tbaa !22
  %t29 = icmp eq i8 %t27, 9
  store i1 %t29, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l24, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb11
bb10:
  %t32 = load i8, ptr %l3, !tbaa !22
  %t34 = icmp eq i8 %t32, 10
  store i1 %t34, ptr %l27, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l27, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  %t37 = load i8, ptr %l3, !tbaa !22
  %t39 = icmp eq i8 %t37, 13
  store i1 %t39, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t41 = load i1, ptr %l30, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l2, !tbaa !24
  br label %bb175
bb16:
  br label %bb17
bb17:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l4, !tbaa !24
  %t50 = load i8, ptr %l3, !tbaa !22
  %t52 = icmp eq i8 %t50, 34
  br i1 %t52, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb20
bb19:
  %t54 = load i8, ptr %l3, !tbaa !22
  %t56 = icmp eq i8 %t54, 39
  store i1 %t56, ptr %l39, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l39, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  %t59 = load i8, ptr %l3, !tbaa !22
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t59)
  store i1 %t61, ptr %l71
  br label %bb38
bb23:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t68 = icmp slt i64 %t62, %t65
  br i1 %t68, label %bb24, label %bb25
bb24:
  %t70 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t70, ptr %l47, !tbaa !27
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i8, ptr %t74, i64 %t71
  %t76 = load i8, ptr %t75, !tbaa !32
  %t77 = load i8, ptr %l3, !tbaa !22
  %t80 = icmp ne i8 %t76, %t77
  store i1 %t80, ptr %l46, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb26
bb26:
  %t82 = load i1, ptr %l46, !tbaa !21
  %t83 = xor i1 %t82, true
  br i1 %t83, label %bb27, label %bb28
bb27:
  br label %bb34
bb28:
  br label %bb29
bb29:
  %t85 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t85, ptr %l53, !tbaa !27
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i8, ptr %t89, i64 %t86
  %t91 = load i8, ptr %t90, !tbaa !32
  %t93 = icmp eq i8 %t91, 92
  br i1 %t93, label %bb30, label %bb31
bb30:
  %t95 = load i64, ptr %l4, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l4, !tbaa !24
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t99 = load i64, ptr %l4, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l4, !tbaa !24
  br label %bb33
bb33:
  br label %bb23
bb34:
  %t103 = load i64, ptr %l4, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t109 = icmp slt i64 %t103, %t106
  br i1 %t109, label %bb35, label %bb36
bb35:
  %t111 = load i64, ptr %l4, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l65, !tbaa !24
  br label %bb37
bb36:
  %t115 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l65, !tbaa !24
  br label %bb37
bb37:
  %t119 = load i64, ptr %l65, !tbaa !24
  store i64 %t119, ptr %l4, !tbaa !24
  br label %bb167
bb38:
  %t120 = load i1, ptr %l71, !tbaa !21
  br i1 %t120, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb41
bb40:
  %t121 = load i8, ptr %l3, !tbaa !22
  %t123 = icmp eq i8 %t121, 95
  store i1 %t123, ptr %l72, !tbaa !21
  br label %bb41
bb41:
  %t125 = load i1, ptr %l72, !tbaa !21
  br i1 %t125, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  br label %bb44
bb43:
  %t126 = load i8, ptr %l3, !tbaa !22
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t126)
  store i1 %t128, ptr %l156
  br label %bb95
bb44:
  %t129 = load i64, ptr %l4, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t135 = icmp slt i64 %t129, %t132
  br i1 %t135, label %bb45, label %bb46
bb45:
  %t137 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t137, ptr %l80, !tbaa !27
  %t138 = load i64, ptr %l4, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i8, ptr %t141, i64 %t138
  %t143 = load i8, ptr %t142, !tbaa !32
  %t145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t143)
  store i1 %t145, ptr %l83
  br label %bb47
bb46:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb55
bb47:
  %t146 = load i1, ptr %l83, !tbaa !21
  br i1 %t146, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb51
bb49:
  %t147 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t147, ptr %l85, !tbaa !27
  %t148 = load i64, ptr %l4, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i8, ptr %t151, i64 %t148
  %t153 = load i8, ptr %t152, !tbaa !32
  %t155 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t153)
  store i1 %t155, ptr %l88
  br label %bb50
bb50:
  %t156 = load i1, ptr %l88, !tbaa !21
  store i1 %t156, ptr %l84, !tbaa !21
  br label %bb51
bb51:
  %t157 = load i1, ptr %l84, !tbaa !21
  br i1 %t157, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb54
bb53:
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t158, ptr %l90, !tbaa !27
  %t159 = load i64, ptr %l4, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i8, ptr %t162, i64 %t159
  %t164 = load i8, ptr %t163, !tbaa !32
  %t166 = icmp eq i8 %t164, 95
  store i1 %t166, ptr %l89, !tbaa !21
  br label %bb54
bb54:
  %t168 = load i1, ptr %l89, !tbaa !21
  store i1 %t168, ptr %l79, !tbaa !21
  br label %bb55
bb55:
  %t169 = load i1, ptr %l79, !tbaa !21
  %t170 = xor i1 %t169, true
  br i1 %t170, label %bb56, label %bb57
bb56:
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t172 = load i64, ptr %l4, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l4, !tbaa !24
  br label %bb59
bb59:
  br label %bb44
bb60:
  %t176 = load i64, ptr %l4, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t182 = icmp slt i64 %t176, %t179
  br i1 %t182, label %bb61, label %bb62
bb61:
  %t184 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t184, ptr %l102, !tbaa !27
  %t185 = load i64, ptr %l4, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i8, ptr %t188, i64 %t185
  %t190 = load i8, ptr %t189, !tbaa !32
  %t192 = icmp eq i8 %t190, 34
  br i1 %t192, label %bb63, label %bb64
bb62:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb66
bb63:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb65
bb64:
  %t194 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t194, ptr %l107, !tbaa !27
  %t195 = load i64, ptr %l4, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr i8, ptr %t198, i64 %t195
  %t200 = load i8, ptr %t199, !tbaa !32
  %t202 = icmp eq i8 %t200, 39
  store i1 %t202, ptr %l106, !tbaa !21
  br label %bb65
bb65:
  %t204 = load i1, ptr %l106, !tbaa !21
  store i1 %t204, ptr %l101, !tbaa !21
  br label %bb66
bb66:
  %t205 = load i1, ptr %l101, !tbaa !21
  br i1 %t205, label %bb67, label %bb68
bb67:
  %t206 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t206, ptr %l112, !tbaa !27
  %t207 = load i64, ptr %l2, !tbaa !24
  store i64 %t207, ptr %l113, !tbaa !24
  %t208 = load i64, ptr %l4, !tbaa !24
  store i64 %t208, ptr %l114, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l115, !tbaa !24
  %t211 = load i64, ptr %l113, !tbaa !24
  %t212 = icmp sge i64 %t211, 0
  br i1 %t212, label %bb69, label %bb70
bb68:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb76
bb69:
  %t214 = load i64, ptr %l113, !tbaa !24
  %t215 = load i64, ptr %l114, !tbaa !24
  %t216 = icmp sle i64 %t214, %t215
  br i1 %t216, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9)
  unreachable
bb71:
  %t218 = load i64, ptr %l114, !tbaa !24
  %t219 = load i64, ptr %l115, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9)
  unreachable
bb73:
  %t222 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = load i64, ptr %l113, !tbaa !24
  %t225 = load i64, ptr %l114, !tbaa !24
  %t226 = getelementptr i8, ptr %t223, i64 %t224
  %t227 = sub i64 %t225, %t224
  %t228 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t226, 1
  %t233 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s7, ptr %v0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x { i64, ptr }] }>, ptr @.d0, i32 0, i32 1) }, { i64, ptr } %t229)
  store i1 %t233, ptr %l121
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9)
  unreachable
bb75:
  %t234 = load i1, ptr %l121, !tbaa !21
  store i1 %t234, ptr %l111, !tbaa !21
  br label %bb76
bb76:
  %t235 = load i1, ptr %l111, !tbaa !21
  br i1 %t235, label %bb77, label %bb78
bb77:
  %t236 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t236, ptr %l122, !tbaa !27
  %t237 = load i64, ptr %l4, !tbaa !24
  %t239 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr i8, ptr %t240, i64 %t237
  %t242 = load i8, ptr %t241, !tbaa !32
  store i8 %t242, ptr %l6, !tbaa !22
  %t244 = load i64, ptr %l4, !tbaa !24
  %t246 = add i64 %t244, 1
  store i64 %t246, ptr %l4, !tbaa !24
  br label %bb79
bb78:
  br label %bb94
bb79:
  %t248 = load i64, ptr %l4, !tbaa !24
  %t249 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t249, 0
  %t254 = icmp slt i64 %t248, %t251
  br i1 %t254, label %bb80, label %bb81
bb80:
  %t256 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t256, ptr %l132, !tbaa !27
  %t257 = load i64, ptr %l4, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i8, ptr %t260, i64 %t257
  %t262 = load i8, ptr %t261, !tbaa !32
  %t263 = load i8, ptr %l6, !tbaa !22
  %t266 = icmp ne i8 %t262, %t263
  store i1 %t266, ptr %l131, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb82
bb82:
  %t268 = load i1, ptr %l131, !tbaa !21
  %t269 = xor i1 %t268, true
  br i1 %t269, label %bb83, label %bb84
bb83:
  br label %bb90
bb84:
  br label %bb85
bb85:
  %t271 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t271, ptr %l138, !tbaa !27
  %t272 = load i64, ptr %l4, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i8, ptr %t275, i64 %t272
  %t277 = load i8, ptr %t276, !tbaa !32
  %t279 = icmp eq i8 %t277, 92
  br i1 %t279, label %bb86, label %bb87
bb86:
  %t281 = load i64, ptr %l4, !tbaa !24
  %t283 = add i64 %t281, 1
  store i64 %t283, ptr %l4, !tbaa !24
  br label %bb88
bb87:
  br label %bb88
bb88:
  %t285 = load i64, ptr %l4, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l4, !tbaa !24
  br label %bb89
bb89:
  br label %bb79
bb90:
  %t289 = load i64, ptr %l4, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t295 = icmp slt i64 %t289, %t292
  br i1 %t295, label %bb91, label %bb92
bb91:
  %t297 = load i64, ptr %l4, !tbaa !24
  %t299 = add i64 %t297, 1
  store i64 %t299, ptr %l150, !tbaa !24
  br label %bb93
bb92:
  %t301 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  store i64 %t303, ptr %l150, !tbaa !24
  br label %bb93
bb93:
  %t305 = load i64, ptr %l150, !tbaa !24
  store i64 %t305, ptr %l4, !tbaa !24
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s7)
  br label %bb166
bb95:
  %t306 = load i1, ptr %l156, !tbaa !21
  br i1 %t306, label %bb96, label %bb97
bb96:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb105
bb97:
  %t307 = load i8, ptr %l3, !tbaa !22
  %t309 = icmp eq i8 %t307, 46
  br i1 %t309, label %bb98, label %bb99
bb98:
  %t311 = load i64, ptr %l2, !tbaa !24
  %t313 = add i64 %t311, 1
  %t314 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t319 = icmp slt i64 %t313, %t316
  store i1 %t319, ptr %l160, !tbaa !21
  br label %bb100
bb99:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb100
bb100:
  %t321 = load i1, ptr %l160, !tbaa !21
  br i1 %t321, label %bb101, label %bb102
bb101:
  %t322 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t322, ptr %l167, !tbaa !27
  %t323 = load i64, ptr %l2, !tbaa !24
  %t325 = add i64 %t323, 1
  %t327 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i8, ptr %t328, i64 %t325
  %t330 = load i8, ptr %t329, !tbaa !32
  %t332 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t330)
  store i1 %t332, ptr %l171
  br label %bb103
bb102:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb104
bb103:
  %t333 = load i1, ptr %l171, !tbaa !21
  store i1 %t333, ptr %l166, !tbaa !21
  br label %bb104
bb104:
  %t334 = load i1, ptr %l166, !tbaa !21
  store i1 %t334, ptr %l157, !tbaa !21
  br label %bb105
bb105:
  %t335 = load i1, ptr %l157, !tbaa !21
  br i1 %t335, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s18
  %t336 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %t336, !tbaa !37
  %t337 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 1
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %t337, !tbaa !37
  %t338 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 2
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %t338, !tbaa !37
  %t339 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %t339, !tbaa !37
  %t340 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %t340, !tbaa !37
  %t341 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 5
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %t341, !tbaa !37
  %t342 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %t342, !tbaa !37
  %t343 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 7
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %t343, !tbaa !37
  %t344 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 8
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %t344, !tbaa !37
  %t345 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 9
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %t345, !tbaa !37
  %t346 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 10
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %t346, !tbaa !37
  %t347 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 11
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %t347, !tbaa !37
  %t348 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 12
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %t348, !tbaa !37
  %t349 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 13
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %t349, !tbaa !37
  %t350 = getelementptr [15 x { i64, ptr }], ptr %l225, i64 0, i64 14
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %t350, !tbaa !37
  %t351 = call ptr @__olang_scope_alloc_a(ptr %s18, i64 240, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t351, ptr %l225, i64 240, i1 false)
  store ptr %t351, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t353 = load ptr, ptr %l8
  store i64 15, ptr %l10, !tbaa !24
  br label %bb146
bb108:
  %t356 = load i64, ptr %l4, !tbaa !24
  %t357 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t357, 0
  %t362 = icmp slt i64 %t356, %t359
  %t364 = xor i1 %t362, true
  br i1 %t364, label %bb109, label %bb110
bb109:
  br label %bb145
bb110:
  br label %bb111
bb111:
  %t366 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t366, ptr %l177, !tbaa !27
  %t367 = load i64, ptr %l4, !tbaa !24
  %t369 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr i8, ptr %t370, i64 %t367
  %t372 = load i8, ptr %t371, !tbaa !32
  store i8 %t372, ptr %l7, !tbaa !22
  %t374 = load i8, ptr %l7, !tbaa !22
  %t376 = icmp eq i8 %t374, 43
  br i1 %t376, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l182, !tbaa !21
  br label %bb114
bb113:
  %t378 = load i8, ptr %l7, !tbaa !22
  %t380 = icmp eq i8 %t378, 45
  store i1 %t380, ptr %l182, !tbaa !21
  br label %bb114
bb114:
  %t382 = load i1, ptr %l182, !tbaa !21
  br i1 %t382, label %bb115, label %bb116
bb115:
  %t383 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t383, ptr %l186, !tbaa !27
  %t384 = load i64, ptr %l4, !tbaa !24
  %t386 = sub i64 %t384, 1
  %t388 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !27
  %t390 = getelementptr i8, ptr %t389, i64 %t386
  %t391 = load i8, ptr %t390, !tbaa !32
  %t393 = icmp eq i8 %t391, 101
  br i1 %t393, label %bb117, label %bb118
bb116:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb126
bb117:
  store i1 true, ptr %l191, !tbaa !21
  br label %bb119
bb118:
  %t395 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t395, ptr %l192, !tbaa !27
  %t396 = load i64, ptr %l4, !tbaa !24
  %t398 = sub i64 %t396, 1
  %t400 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr i8, ptr %t401, i64 %t398
  %t403 = load i8, ptr %t402, !tbaa !32
  %t405 = icmp eq i8 %t403, 69
  store i1 %t405, ptr %l191, !tbaa !21
  br label %bb119
bb119:
  %t407 = load i1, ptr %l191, !tbaa !21
  br i1 %t407, label %bb120, label %bb121
bb120:
  store i1 true, ptr %l197, !tbaa !21
  br label %bb122
bb121:
  %t408 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t408, ptr %l198, !tbaa !27
  %t409 = load i64, ptr %l4, !tbaa !24
  %t411 = sub i64 %t409, 1
  %t413 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !27
  %t415 = getelementptr i8, ptr %t414, i64 %t411
  %t416 = load i8, ptr %t415, !tbaa !32
  %t418 = icmp eq i8 %t416, 112
  store i1 %t418, ptr %l197, !tbaa !21
  br label %bb122
bb122:
  %t420 = load i1, ptr %l197, !tbaa !21
  br i1 %t420, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb125
bb124:
  %t421 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t421, ptr %l204, !tbaa !27
  %t422 = load i64, ptr %l4, !tbaa !24
  %t424 = sub i64 %t422, 1
  %t426 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t427 = load ptr, ptr %t426, !tbaa !27
  %t428 = getelementptr i8, ptr %t427, i64 %t424
  %t429 = load i8, ptr %t428, !tbaa !32
  %t431 = icmp eq i8 %t429, 80
  store i1 %t431, ptr %l203, !tbaa !21
  br label %bb125
bb125:
  %t433 = load i1, ptr %l203, !tbaa !21
  store i1 %t433, ptr %l185, !tbaa !21
  br label %bb126
bb126:
  %t434 = load i1, ptr %l185, !tbaa !21
  br i1 %t434, label %bb127, label %bb128
bb127:
  %t435 = load i64, ptr %l4, !tbaa !24
  %t437 = add i64 %t435, 1
  store i64 %t437, ptr %l4, !tbaa !24
  br label %bb144
bb128:
  br label %bb129
bb129:
  %t439 = load i8, ptr %l7, !tbaa !22
  %t441 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t439)
  store i1 %t441, ptr %l212
  br label %bb130
bb130:
  %t442 = load i1, ptr %l212, !tbaa !21
  br i1 %t442, label %bb131, label %bb132
bb131:
  store i1 true, ptr %l213, !tbaa !21
  br label %bb134
bb132:
  %t443 = load i8, ptr %l7, !tbaa !22
  %t445 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t443)
  store i1 %t445, ptr %l215
  br label %bb133
bb133:
  %t446 = load i1, ptr %l215, !tbaa !21
  store i1 %t446, ptr %l213, !tbaa !21
  br label %bb134
bb134:
  %t447 = load i1, ptr %l213, !tbaa !21
  br i1 %t447, label %bb135, label %bb136
bb135:
  store i1 true, ptr %l216, !tbaa !21
  br label %bb137
bb136:
  %t448 = load i8, ptr %l7, !tbaa !22
  %t450 = icmp eq i8 %t448, 95
  store i1 %t450, ptr %l216, !tbaa !21
  br label %bb137
bb137:
  %t452 = load i1, ptr %l216, !tbaa !21
  br i1 %t452, label %bb138, label %bb139
bb138:
  store i1 true, ptr %l219, !tbaa !21
  br label %bb140
bb139:
  %t453 = load i8, ptr %l7, !tbaa !22
  %t455 = icmp eq i8 %t453, 46
  store i1 %t455, ptr %l219, !tbaa !21
  br label %bb140
bb140:
  %t457 = load i1, ptr %l219, !tbaa !21
  %t458 = xor i1 %t457, true
  br i1 %t458, label %bb141, label %bb142
bb141:
  br label %bb145
bb142:
  br label %bb143
bb143:
  %t460 = load i64, ptr %l4, !tbaa !24
  %t462 = add i64 %t460, 1
  store i64 %t462, ptr %l4, !tbaa !24
  br label %bb144
bb144:
  br label %bb108
bb145:
  br label %bb165
bb146:
  %t464 = load i64, ptr %l9, !tbaa !24
  %t465 = load i64, ptr %l10, !tbaa !24
  %t468 = icmp slt i64 %t464, %t465
  %t470 = xor i1 %t468, true
  br i1 %t470, label %bb147, label %bb148
bb147:
  br label %bb164
bb148:
  br label %bb149
bb149:
  %t472 = load ptr, ptr %l8
  %t473 = load i64, ptr %l9, !tbaa !24
  %t476 = getelementptr [15 x { i64, ptr }], ptr %t472, i64 0, i64 %t473
  %t477 = load { i64, ptr }, ptr %t476, !tbaa !37
  store { i64, ptr } %t477, ptr %l11, !tbaa !27
  %t479 = load i64, ptr %l2, !tbaa !24
  %t480 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t482 = extractvalue { i64, ptr } %t480, 0
  %t485 = add i64 %t479, %t482
  %t486 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t486, 0
  %t491 = icmp sle i64 %t485, %t488
  br i1 %t491, label %bb150, label %bb151
bb150:
  %t493 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t493, ptr %l244, !tbaa !27
  %t494 = load i64, ptr %l2, !tbaa !24
  store i64 %t494, ptr %l245, !tbaa !24
  %t495 = load i64, ptr %l2, !tbaa !24
  %t496 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t496, 0
  %t501 = add i64 %t495, %t498
  store i64 %t501, ptr %l249, !tbaa !24
  %t502 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t502, 0
  store i64 %t503, ptr %l250, !tbaa !24
  %t504 = load i64, ptr %l245, !tbaa !24
  %t505 = icmp sge i64 %t504, 0
  br i1 %t505, label %bb152, label %bb153
bb151:
  store i1 false, ptr %l243, !tbaa !21
  br label %bb159
bb152:
  %t507 = load i64, ptr %l245, !tbaa !24
  %t508 = load i64, ptr %l249, !tbaa !24
  %t509 = icmp sle i64 %t507, %t508
  br i1 %t509, label %bb154, label %bb155
bb153:
  call void @__olang_check_failed(ptr @olang_loc_8de001e7a64c0b48_1a9d06562d43232c)
  unreachable
bb154:
  %t511 = load i64, ptr %l249, !tbaa !24
  %t512 = load i64, ptr %l250, !tbaa !24
  %t513 = icmp sle i64 %t511, %t512
  br i1 %t513, label %bb156, label %bb157
bb155:
  call void @__olang_check_failed(ptr @olang_loc_8de001e7a64c0b48_1a9d06562d43232c)
  unreachable
bb156:
  %t515 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t516 = load ptr, ptr %t515, !tbaa !27
  %t517 = load i64, ptr %l245, !tbaa !24
  %t518 = load i64, ptr %l249, !tbaa !24
  %t519 = getelementptr i8, ptr %t516, i64 %t517
  %t520 = sub i64 %t518, %t517
  %t521 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t519, 1
  %t523 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t524 = load ptr, ptr @__olang_prog_scope
  %t527 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t524, { i64, ptr } %t522, { i64, ptr } %t523)
  store i1 %t527, ptr %l256
  br label %bb158
bb157:
  call void @__olang_check_failed(ptr @olang_loc_8de001e7a64c0b48_1a9d06562d43232c)
  unreachable
bb158:
  %t528 = load i1, ptr %l256, !tbaa !21
  store i1 %t528, ptr %l243, !tbaa !21
  br label %bb159
bb159:
  %t529 = load i1, ptr %l243, !tbaa !21
  br i1 %t529, label %bb160, label %bb161
bb160:
  %t530 = load i64, ptr %l2, !tbaa !24
  %t531 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t531, 0
  %t536 = add i64 %t530, %t533
  store i64 %t536, ptr %l4, !tbaa !24
  br label %bb164
bb161:
  br label %bb162
bb162:
  br label %bb163
bb163:
  %t538 = load i64, ptr %l9, !tbaa !24
  %t540 = add i64 %t538, 1
  store i64 %t540, ptr %l9, !tbaa !24
  br label %bb146
bb164:
  call void @__olang_scope_close(ptr %s18)
  br label %bb165
bb165:
  br label %bb166
bb166:
  br label %bb167
bb167:
  %t542 = load ptr, ptr %l1, !tbaa !29
  store ptr %t542, ptr %l263, !tbaa !29
  %t543 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t543, ptr %l264, !tbaa !27
  %t544 = load i64, ptr %l2, !tbaa !24
  store i64 %t544, ptr %l265, !tbaa !24
  %t545 = load i64, ptr %l4, !tbaa !24
  store i64 %t545, ptr %l266, !tbaa !24
  %t546 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t547 = extractvalue { i64, ptr } %t546, 0
  store i64 %t547, ptr %l267, !tbaa !24
  %t548 = load i64, ptr %l265, !tbaa !24
  %t549 = icmp sge i64 %t548, 0
  br i1 %t549, label %bb168, label %bb169
bb168:
  %t551 = load i64, ptr %l265, !tbaa !24
  %t552 = load i64, ptr %l266, !tbaa !24
  %t553 = icmp sle i64 %t551, %t552
  br i1 %t553, label %bb170, label %bb171
bb169:
  call void @__olang_check_failed(ptr @olang_loc_9f24fc1b10bf4163_f387df93e06eee97)
  unreachable
bb170:
  %t555 = load i64, ptr %l266, !tbaa !24
  %t556 = load i64, ptr %l267, !tbaa !24
  %t557 = icmp sle i64 %t555, %t556
  br i1 %t557, label %bb172, label %bb173
bb171:
  call void @__olang_check_failed(ptr @olang_loc_9f24fc1b10bf4163_f387df93e06eee97)
  unreachable
bb172:
  %t559 = getelementptr { i64, ptr }, ptr %l264, i32 0, i32 1
  %t560 = load ptr, ptr %t559, !tbaa !27
  %t561 = load i64, ptr %l265, !tbaa !24
  %t562 = load i64, ptr %l266, !tbaa !24
  %t563 = getelementptr i8, ptr %t560, i64 %t561
  %t564 = sub i64 %t562, %t561
  %t565 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t566 = insertvalue { i64, ptr } %t565, ptr %t563, 1
  %t567 = load ptr, ptr %l263, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t567, { i64, ptr } %t566)
  br label %bb174
bb173:
  call void @__olang_check_failed(ptr @olang_loc_9f24fc1b10bf4163_f387df93e06eee97)
  unreachable
bb174:
  %t569 = load i64, ptr %l4, !tbaa !24
  store i64 %t569, ptr %l2, !tbaa !24
  br label %bb175
bb175:
  br label %bb2
bb176:
  %t571 = load ptr, ptr %l1, !tbaa !29
  store ptr %t571, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fbindgen_2ecPrec(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i64 1, ptr %l1, !tbaa !24
  br label %bb79
bb5:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb6
bb6:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 2, ptr %l1, !tbaa !24
  br label %bb79
bb10:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t11, ptr %l7
  br label %bb11
bb11:
  %t12 = load i1, ptr %l7, !tbaa !21
  br i1 %t12, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 3, ptr %l1, !tbaa !24
  br label %bb79
bb15:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t15, ptr %l9
  br label %bb16
bb16:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 4, ptr %l1, !tbaa !24
  br label %bb79
bb20:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t19, ptr %l11
  br label %bb21
bb21:
  %t20 = load i1, ptr %l11, !tbaa !21
  br i1 %t20, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i64 5, ptr %l1, !tbaa !24
  br label %bb79
bb25:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t23, ptr %l13
  br label %bb26
bb26:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t27, ptr %l15
  br label %bb29
bb29:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i64 6, ptr %l1, !tbaa !24
  br label %bb79
bb33:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t31, ptr %l17
  br label %bb34
bb34:
  %t32 = load i1, ptr %l17, !tbaa !21
  br i1 %t32, label %bb35, label %bb36
bb35:
  br label %bb46
bb36:
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t33, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t35, ptr %l19
  br label %bb37
bb37:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb38, label %bb39
bb38:
  br label %bb46
bb39:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t39, ptr %l21
  br label %bb40
bb40:
  %t40 = load i1, ptr %l21, !tbaa !21
  br i1 %t40, label %bb41, label %bb42
bb41:
  br label %bb46
bb42:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t43, ptr %l23
  br label %bb43
bb43:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i64 7, ptr %l1, !tbaa !24
  br label %bb79
bb47:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t47, ptr %l25
  br label %bb48
bb48:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb49, label %bb50
bb49:
  br label %bb54
bb50:
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t49, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t51, ptr %l27
  br label %bb51
bb51:
  %t52 = load i1, ptr %l27, !tbaa !21
  br i1 %t52, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store i64 8, ptr %l1, !tbaa !24
  br label %bb79
bb55:
  %t53 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t53, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t55, ptr %l29
  br label %bb56
bb56:
  %t56 = load i1, ptr %l29, !tbaa !21
  br i1 %t56, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t59, ptr %l31
  br label %bb59
bb59:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i64 9, ptr %l1, !tbaa !24
  br label %bb79
bb63:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t61, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t63, ptr %l33
  br label %bb64
bb64:
  %t64 = load i1, ptr %l33, !tbaa !21
  br i1 %t64, label %bb65, label %bb66
bb65:
  br label %bb73
bb66:
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t67, ptr %l35
  br label %bb67
bb67:
  %t68 = load i1, ptr %l35, !tbaa !21
  br i1 %t68, label %bb68, label %bb69
bb68:
  br label %bb73
bb69:
  %t69 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t69, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t71, ptr %l37
  br label %bb70
bb70:
  %t72 = load i1, ptr %l37, !tbaa !21
  br i1 %t72, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  store i64 10, ptr %l1, !tbaa !24
  br label %bb79
bb74:
  br i1 true, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_760c7c7ac1a62521_16c6052ca99c0395)
  unreachable
bb79:
  call void @__olang_scope_close(ptr %s0)
  %t73 = load i64, ptr %l1, !tbaa !24
  store i64 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:cparse", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/bindgen:cparse", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp slt i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/bindgen:cparse", ptr %t15, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l9, !tbaa !27
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/bindgen:cparse", ptr %t19, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %t25, i64 %t22
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !37
  %t29 = extractvalue { i64, ptr } %t27, 1
  %t30 = extractvalue { i64, ptr } %t27, 0
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t29, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l7, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t35, ptr %l7, !tbaa !27
  br label %bb3
bb3:
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l16, !tbaa !24
  %t39 = load i64, ptr %l16, !tbaa !24
  %t40 = mul i64 %t39, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l17, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = load i64, ptr %l16, !tbaa !24
  %t49 = mul i64 %t48, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %t47, i64 %t49, i1 false)
  %t50 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t50, ptr %l7, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:ctp", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t8 = add i64 %t4, %a1
  store i64 %t8, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/bindgen:ctp", ptr %t11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp slt i64 %t10, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/bindgen:ctp", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l14, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %t28, i64 %t25
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !37
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = extractvalue { i64, ptr } %t30, 0
  %t34 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t32, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l12, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t38, ptr %l12, !tbaa !27
  br label %bb3
bb3:
  %t40 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l20, !tbaa !24
  %t42 = load i64, ptr %l20, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l21, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l20, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t53, ptr %l12, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecLead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/bindgen:cx" %a1, %"compiler/bindgen:cx" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:cx"
  %l2 = alloca %"compiler/bindgen:cx"
  %l6 = alloca i1
  %l14 = alloca i1
  %l22 = alloca i1
  %l27 = alloca %"compiler/bindgen:cx"
  %l29 = alloca %"compiler/bindgen:cx"
  %rv = alloca %"compiler/bindgen:cx"
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:cx" %a1, ptr %l1
  store %"compiler/bindgen:cx" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t8 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load %"compiler/bindgen:cx", ptr %l1
  store %"compiler/bindgen:cx" %t16, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t18 = getelementptr %"compiler/bindgen:cx", ptr %l2, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t23 = icmp eq i64 %t19, %t20
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  %t25 = getelementptr %"compiler/bindgen:cx", ptr %l2, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  %t30 = icmp eq i64 %t26, %t27
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l14, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load %"compiler/bindgen:cx", ptr %l2
  store %"compiler/bindgen:cx" %t33, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t35 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t40 = icmp eq i64 %t36, %t37
  br i1 %t40, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb15
bb14:
  %t42 = getelementptr %"compiler/bindgen:cx", ptr %l2, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t47 = icmp eq i64 %t43, %t44
  store i1 %t47, ptr %l22, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l22, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t52 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v3, ptr %v3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, i64 %t50)
  store %"compiler/bindgen:cx" %t52, ptr %l27
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t53 = load %"compiler/bindgen:cx", ptr %l27
  store %"compiler/bindgen:cx" %t53, ptr %rv
  br label %ret
bb19:
  %t54 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t56 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v3, ptr %v3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, i64 %t54)
  store %"compiler/bindgen:cx" %t56, ptr %l29
  br label %bb20
bb20:
  %t57 = load %"compiler/bindgen:cx", ptr %l29
  store %"compiler/bindgen:cx" %t57, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
}

define dso_local %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/bindgen:cx" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/bindgen:cx"
  %l6 = alloca i64
  %l12 = alloca %"compiler/bindgen:cx"
  %rv = alloca %"compiler/bindgen:cx"
  store ptr %a0, ptr %l0
  store %"compiler/bindgen:cx" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 1
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  %t6 = icmp ne i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load %"compiler/bindgen:cx", ptr %l1
  store %"compiler/bindgen:cx" %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = ptrtoint ptr %v2 to i64
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = call ptr @__olang_region_make(ptr %v2)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t15 = getelementptr %"compiler/bindgen:cx", ptr %l1, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t17 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t20 = extractvalue { i64, ptr } %t16, 1
  %t21 = extractvalue { i64, ptr } %t16, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = load i64, ptr %l6
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t17, i64 %t18)
  %t29 = getelementptr i8, ptr %t28, i64 %t18
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  call void @olang_textcopy(ptr %t30, ptr %t23, i64 %t24)
  %t31 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t28, 1
  %t34 = load i64, ptr %l6
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t45 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t41, i64 %t42)
  store %"compiler/bindgen:cx" %t45, ptr %l12
  br label %bb6
bb6:
  %t46 = load %"compiler/bindgen:cx", ptr %l12
  store %"compiler/bindgen:cx" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cx", ptr %rv
  ret %"compiler/bindgen:cx" %rr
}

define dso_local { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecPrimary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l12 = alloca i1
  %l14 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca %"compiler/bindgen:cx"
  %l24 = alloca %"compiler/bindgen:cx"
  %l25 = alloca i32
  %l28 = alloca { i64, ptr }
  %l30 = alloca i1
  %l33 = alloca i32
  %l35 = alloca ptr
  %l40 = alloca i1
  %l41 = alloca i1
  %l44 = alloca %"compiler/bindgen:cx"
  %l47 = alloca %"compiler/bindgen:cx"
  %l48 = alloca i32
  %l52 = alloca i64
  %l54 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i32
  %l62 = alloca %"compiler/bindgen:cx"
  %l66 = alloca i32
  %l68 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i32
  %l77 = alloca i64
  %l84 = alloca %"compiler/bindgen:cx"
  %l85 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i32
  %l95 = alloca { i64, ptr }
  %l103 = alloca %"compiler/bindgen:cx"
  %l105 = alloca { i64, ptr }
  %l107 = alloca i1
  %l108 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l113 = alloca i32
  %l115 = alloca i1
  %l120 = alloca i32
  %l122 = alloca ptr
  %l125 = alloca %"std/prelude/text:StringBuilder"
  %l131 = alloca { i64, ptr }
  %l133 = alloca i1
  %l139 = alloca { i64, ptr }
  %l141 = alloca i1
  %l147 = alloca i32
  %l149 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca %"compiler/bindgen:cx"
  %l158 = alloca %"compiler/bindgen:cx"
  %l159 = alloca i32
  %l161 = alloca %"compiler/bindgen:cx"
  %l165 = alloca ptr
  %l169 = alloca i64
  %l172 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l175 = alloca i1
  %l177 = alloca i64
  %l181 = alloca %"compiler/bindgen:cx"
  %l186 = alloca i32
  %l189 = alloca %"compiler/bindgen:cx"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/bindgen:cx" }
  %t239 = alloca { { i64, ptr }, ptr }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %v2, ptr %t1)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t4, ptr %lp2
  %t5 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t6 = load ptr, ptr %lp2
  store { i64, ptr } %t5, ptr %t6, !tbaa !27
  %t7 = load ptr, ptr %lp2
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t8, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = load i1, ptr %l12, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s1, ptr %t12, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i32 %t14, ptr %l14
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  br label %bb5
bb4:
  br label %bb8
bb5:
  br label %bb7
bb6:
  %t17 = load i32, ptr %l14, !tbaa !23
  %t18 = lshr i32 %t17, 16
  %t19 = and i32 %t17, 65535
  %t20 = icmp eq i32 %t18, 1
  %t21 = select i1 %t20, i32 1, i32 0
  %t22 = icmp eq i32 %t17, 0
  %t23 = shl i32 %t21, 16
  %t24 = or i32 %t23, %t19
  %t25 = select i1 %t22, i32 0, i32 %t24
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t27 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t25, 0
  store { i32, %"compiler/bindgen:cx" } %t27, ptr %rv
  br label %ret
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = getelementptr %"compiler/bindgen:cparse", ptr %t29, i32 0, i32 2
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = add i64 %t31, 1
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t36 = getelementptr %"compiler/bindgen:cparse", ptr %t35, i32 0, i32 2
  store i64 %t33, ptr %t36, !tbaa !24
  %t37 = load ptr, ptr %lp2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t40, ptr %l20
  br label %bb9
bb9:
  %t41 = load i1, ptr %l20, !tbaa !21
  br i1 %t41, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t46 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t42, ptr %t43)
  %t47 = extractvalue { i32, %"compiler/bindgen:cx" } %t46, 1
  %t48 = extractvalue { i32, %"compiler/bindgen:cx" } %t46, 0
  store i32 %t48, ptr %l25
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb13, label %ok.50, !prof !99
ok.50:
  store %"compiler/bindgen:cx" %t47, ptr %l24
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t51 = load %"compiler/bindgen:cx", ptr %l24
  store %"compiler/bindgen:cx" %t51, ptr %l21
  br label %bb14
bb13:
  %t52 = load i32, ptr %l25, !tbaa !23
  %t53 = lshr i32 %t52, 16
  %t54 = and i32 %t52, 65535
  %t55 = icmp eq i32 %t53, 1
  %t56 = select i1 %t55, i32 1, i32 0
  %t57 = icmp eq i32 %t52, 0
  %t58 = shl i32 %t56, 16
  %t59 = or i32 %t58, %t54
  %t60 = select i1 %t57, i32 0, i32 %t59
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t62 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t60, 0
  store { i32, %"compiler/bindgen:cx" } %t62, ptr %rv
  br label %ret
bb14:
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t63, ptr %lp3
  %t64 = load %"compiler/bindgen:cx", ptr %l21
  %t65 = load ptr, ptr %lp3
  store %"compiler/bindgen:cx" %t64, ptr %t65
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s2, ptr %t66)
  store { i64, ptr } %t68, ptr %l28
  br label %bb15
bb15:
  %t69 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = extractvalue { i64, ptr } %t69, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t75, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t77, ptr %l30
  br label %bb16
bb16:
  %t78 = load i1, ptr %l30, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s3, ptr %t81, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i32 %t83, ptr %l33
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %bb20, label %ok.85, !prof !99
ok.85:
  br label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb21
bb20:
  %t86 = load i32, ptr %l33, !tbaa !23
  %t87 = lshr i32 %t86, 16
  %t88 = and i32 %t86, 65535
  %t89 = icmp eq i32 %t87, 1
  %t90 = select i1 %t89, i32 1, i32 0
  %t91 = icmp eq i32 %t86, 0
  %t92 = shl i32 %t90, 16
  %t93 = or i32 %t92, %t88
  %t94 = select i1 %t91, i32 0, i32 %t93
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t96 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t94, 0
  store { i32, %"compiler/bindgen:cx" } %t96, ptr %rv
  br label %ret
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l35, !tbaa !29
  %t98 = load ptr, ptr %l35, !tbaa !29
  %t99 = getelementptr %"compiler/bindgen:cparse", ptr %t98, i32 0, i32 2
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = load ptr, ptr %l35, !tbaa !29
  %t105 = getelementptr %"compiler/bindgen:cparse", ptr %t104, i32 0, i32 2
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = load ptr, ptr %lp3
  %t107 = load %"compiler/bindgen:cx", ptr %t106
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t109 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t107, 1
  store { i32, %"compiler/bindgen:cx" } %t109, ptr %rv
  br label %ret
bb23:
  %t110 = load ptr, ptr %lp2
  %t111 = getelementptr { i64, ptr }, ptr %t110, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i8, ptr %t112, i64 0
  %t114 = load i8, ptr %t113, !tbaa !32
  %t116 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t114)
  store i1 %t116, ptr %l40
  br label %bb24
bb24:
  %t117 = load i1, ptr %l40, !tbaa !21
  br i1 %t117, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb27
bb26:
  %t118 = load ptr, ptr %lp2
  %t119 = getelementptr { i64, ptr }, ptr %t118, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i8, ptr %t120, i64 0
  %t122 = load i8, ptr %t121, !tbaa !32
  %t124 = icmp eq i8 %t122, 46
  store i1 %t124, ptr %l41, !tbaa !21
  br label %bb27
bb27:
  %t126 = load i1, ptr %l41, !tbaa !21
  br i1 %t126, label %bb28, label %bb29
bb28:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %lp2
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t132 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNumber(ptr %v0, ptr %v2, ptr %v2, ptr %t127, { i64, ptr } %t129)
  %t133 = extractvalue { i32, %"compiler/bindgen:cx" } %t132, 1
  %t134 = extractvalue { i32, %"compiler/bindgen:cx" } %t132, 0
  store i32 %t134, ptr %l48
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb31, label %ok.136, !prof !99
ok.136:
  store %"compiler/bindgen:cx" %t133, ptr %l47
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t137 = load %"compiler/bindgen:cx", ptr %l47
  store %"compiler/bindgen:cx" %t137, ptr %l44
  br label %bb32
bb31:
  %t138 = load i32, ptr %l48, !tbaa !23
  %t139 = lshr i32 %t138, 16
  %t140 = and i32 %t138, 65535
  %t141 = icmp eq i32 %t139, 1
  %t142 = select i1 %t141, i32 1, i32 0
  %t143 = icmp eq i32 %t138, 0
  %t144 = shl i32 %t142, 16
  %t145 = or i32 %t144, %t140
  %t146 = select i1 %t143, i32 0, i32 %t145
  call void @__olang_scope_close(ptr %s0)
  %t148 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t146, 0
  store { i32, %"compiler/bindgen:cx" } %t148, ptr %rv
  br label %ret
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t149 = load %"compiler/bindgen:cx", ptr %l44
  %t150 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t149, 1
  store { i32, %"compiler/bindgen:cx" } %t150, ptr %rv
  br label %ret
bb33:
  %t151 = load ptr, ptr %lp2
  %t152 = getelementptr { i64, ptr }, ptr %t151, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr i8, ptr %t153, i64 0
  %t155 = load i8, ptr %t154, !tbaa !32
  %t157 = icmp eq i8 %t155, 39
  br i1 %t157, label %bb34, label %bb35
bb34:
  %t159 = ptrtoint ptr %v2 to i64
  store i64 %t159, ptr %l52, !tbaa !24
  %t160 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t160, label %bb36, label %bb37
bb35:
  br label %bb42
bb36:
  %t162 = call ptr @__olang_region_make(ptr %v2)
  %t163 = ptrtoint ptr %t162 to i64
  store i64 %t163, ptr %l52, !tbaa !24
  br label %bb37
bb37:
  %t164 = load ptr, ptr %lp2
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  %t167 = call { i32, i64 } @compiler_2fbindgen_2echarValue(ptr %v2, { i64, ptr } %t165)
  %t168 = extractvalue { i32, i64 } %t167, 1
  %t169 = extractvalue { i32, i64 } %t167, 0
  store i32 %t169, ptr %l57
  %t170 = icmp ne i32 %t169, 0
  br i1 %t170, label %bb39, label %ok.171, !prof !99
ok.171:
  store i64 %t168, ptr %l56
  br label %bb38
bb38:
  %t172 = load i64, ptr %l56, !tbaa !24
  store i64 %t172, ptr %l54, !tbaa !24
  br label %bb40
bb39:
  %t173 = load i32, ptr %l57, !tbaa !23
  %t174 = lshr i32 %t173, 16
  %t175 = and i32 %t173, 65535
  %t176 = icmp eq i32 %t174, 1
  %t177 = select i1 %t176, i32 1, i32 0
  %t178 = icmp eq i32 %t173, 0
  %t179 = shl i32 %t177, 16
  %t180 = or i32 %t179, %t175
  %t181 = select i1 %t178, i32 0, i32 %t180
  call void @__olang_scope_close(ptr %s0)
  %t183 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t181, 0
  store { i32, %"compiler/bindgen:cx" } %t183, ptr %rv
  br label %ret
bb40:
  %t184 = load i64, ptr %l54, !tbaa !24
  %t185 = call i64 @__olang_fmt_i64(ptr null, i64 %t184)
  %t186 = load i64, ptr %l52
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t185)
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t184)
  %t190 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t188, 1
  %t193 = load i64, ptr %l52
  %t194 = inttoptr i64 %t193 to ptr
  %t195 = extractvalue { i64, ptr } %t191, 0
  %t196 = extractvalue { i64, ptr } %t191, 1
  %t197 = mul i64 %t195, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %t194, i64 %t197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t198, ptr %t196, i64 %t197, i1 false)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  %t201 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t204 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t200, i64 %t201)
  store %"compiler/bindgen:cx" %t204, ptr %l62
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t205 = load %"compiler/bindgen:cx", ptr %l62
  %t206 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t205, 1
  store { i32, %"compiler/bindgen:cx" } %t206, ptr %rv
  br label %ret
bb42:
  %t207 = load ptr, ptr %lp2
  %t208 = getelementptr { i64, ptr }, ptr %t207, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i8, ptr %t209, i64 0
  %t211 = load i8, ptr %t210, !tbaa !32
  %t213 = icmp eq i8 %t211, 34
  br i1 %t213, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s7
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s7, ptr %t215, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i32 %t217, ptr %l66
  %t218 = icmp ne i32 %t217, 0
  br i1 %t218, label %bb46, label %ok.219, !prof !99
ok.219:
  br label %bb45
bb44:
  br label %bb48
bb45:
  br label %bb47
bb46:
  %t220 = load i32, ptr %l66, !tbaa !23
  %t221 = lshr i32 %t220, 16
  %t222 = and i32 %t220, 65535
  %t223 = icmp eq i32 %t221, 1
  %t224 = select i1 %t223, i32 1, i32 0
  %t225 = icmp eq i32 %t220, 0
  %t226 = shl i32 %t224, 16
  %t227 = or i32 %t226, %t222
  %t228 = select i1 %t225, i32 0, i32 %t227
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t230 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t228, 0
  store { i32, %"compiler/bindgen:cx" } %t230, ptr %rv
  br label %ret
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb48
bb48:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr %"compiler/bindgen:cparse", ptr %t231, i32 0, i32 1
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  %t235 = load ptr, ptr %lp2
  %t236 = load { i64, ptr }, ptr %t235, !tbaa !27
  %t237 = getelementptr { { i64, ptr }, ptr }, ptr null, i32 1
  %t238 = ptrtoint ptr %t237 to i64
  %t240 = getelementptr { { i64, ptr }, ptr }, ptr %t239, i32 0, i32 0
  store { i64, ptr } %t236, ptr %t240, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t242 = getelementptr { { i64, ptr }, ptr }, ptr %t239, i32 0, i32 1
  store ptr %v2, ptr %t242, !tbaa !28
  %t243 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_46, 0
  %t244 = insertvalue { ptr, ptr } %t243, ptr %t239, 1
  %t247 = extractvalue { ptr, ptr } %t244, 0
  %t248 = extractvalue { ptr, ptr } %t244, 1
  %t249 = call { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v1, ptr %s0, { i64, ptr } %t234, ptr %t247, ptr %t248)
  %t250 = extractvalue { i32, i64 } %t249, 1
  %t251 = extractvalue { i32, i64 } %t249, 0
  store i32 %t251, ptr %l74
  %t252 = icmp ne i32 %t251, 0
  br i1 %t252, label %bb50, label %ok.253, !prof !99
ok.253:
  store i64 %t250, ptr %l73
  br label %bb49
bb49:
  %t254 = load i64, ptr %l73, !tbaa !24
  store i64 %t254, ptr %l68, !tbaa !24
  br label %bb52
bb50:
  br label %bb51
bb51:
  store i64 -1, ptr %l68, !tbaa !24
  br label %bb52
bb52:
  %t255 = load i64, ptr %l68, !tbaa !24
  store i64 %t255, ptr %l4, !tbaa !24
  %t256 = load i64, ptr %l4, !tbaa !24
  %t258 = icmp sge i64 %t256, 0
  br i1 %t258, label %bb53, label %bb54
bb53:
  %t260 = ptrtoint ptr %v2 to i64
  store i64 %t260, ptr %l77, !tbaa !24
  %t261 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t261, label %bb55, label %bb56
bb54:
  br label %bb58
bb55:
  %t263 = call ptr @__olang_region_make(ptr %v2)
  %t264 = ptrtoint ptr %t263 to i64
  store i64 %t264, ptr %l77, !tbaa !24
  br label %bb56
bb56:
  %t265 = load i64, ptr %l4, !tbaa !24
  %t266 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t269 = call i64 @__olang_fmt_i64(ptr null, i64 %t265)
  %t270 = add i64 %t267, %t269
  %t271 = load i64, ptr %l77
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = call ptr @__olang_scope_alloc(ptr %t272, i64 %t270)
  call void @olang_textcopy(ptr %t273, ptr %t266, i64 %t267)
  %t274 = getelementptr i8, ptr %t273, i64 %t267
  %t275 = call i64 @__olang_fmt_i64(ptr %t274, i64 %t265)
  %t276 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t273, 1
  %t279 = load i64, ptr %l77
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = extractvalue { i64, ptr } %t277, 0
  %t282 = extractvalue { i64, ptr } %t277, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %t280, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t287 = load i64, ptr @G_2ecompiler_2fbindgen_2eKVar, !tbaa !24
  %t288 = load i64, ptr %l4, !tbaa !24
  %t292 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t286, i64 %t287, i64 %t288, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store %"compiler/bindgen:cx" %t292, ptr %l84
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t293 = load %"compiler/bindgen:cx", ptr %l84
  %t294 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t293, 1
  store { i32, %"compiler/bindgen:cx" } %t294, ptr %rv
  br label %ret
bb58:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/bindgen:gen", ptr %t295, i32 0, i32 11
  %t298 = load ptr, ptr %lp2
  %t299 = load { i64, ptr }, ptr %t298, !tbaa !27
  %t302 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v2, ptr %t297, { i64, ptr } %t299)
  %t303 = extractvalue { i32, i64 } %t302, 1
  %t304 = extractvalue { i32, i64 } %t302, 0
  store i32 %t304, ptr %l90
  %t305 = icmp ne i32 %t304, 0
  br i1 %t305, label %bb60, label %ok.306, !prof !99
ok.306:
  store i64 %t303, ptr %l89
  br label %bb59
bb59:
  %t307 = load i64, ptr %l89, !tbaa !24
  store i64 %t307, ptr %l85, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 -9223372036854775808, ptr %l85, !tbaa !24
  br label %bb62
bb62:
  %t308 = load i64, ptr %l85, !tbaa !24
  store i64 %t308, ptr %l5, !tbaa !24
  %t309 = load i64, ptr %l5, !tbaa !24
  %t311 = icmp ne i64 %t309, -9223372036854775808
  br i1 %t311, label %bb63, label %bb64
bb63:
  %t313 = load i64, ptr %l5, !tbaa !24
  %t315 = icmp slt i64 %t313, 0
  br i1 %t315, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  %t317 = load i64, ptr %l5, !tbaa !24
  %t318 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t319 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t321 = call i64 @__olang_fmt_i64(ptr null, i64 %t317)
  %t322 = add i64 %t319, %t321
  %t323 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t325 = add i64 %t322, %t324
  %t326 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t325)
  call void @olang_textcopy(ptr %t326, ptr %t318, i64 %t319)
  %t327 = getelementptr i8, ptr %t326, i64 %t319
  %t328 = call i64 @__olang_fmt_i64(ptr %t327, i64 %t317)
  %t329 = getelementptr i8, ptr %t327, i64 %t321
  call void @olang_textcopy(ptr %t329, ptr %t323, i64 %t324)
  %t330 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t326, 1
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t334 = extractvalue { i64, ptr } %t331, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  store { i64, ptr } %t338, ptr %l95, !tbaa !27
  br label %bb67
bb66:
  %t340 = load i64, ptr %l5, !tbaa !24
  %t342 = call i64 @__olang_fmt_i64(ptr null, i64 %t340)
  %t343 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t342)
  %t344 = call i64 @__olang_fmt_i64(ptr %t343, i64 %t340)
  %t345 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t343, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = extractvalue { i64, ptr } %t346, 1
  %t350 = mul i64 %t348, 1
  %t351 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t351, ptr %t349, i64 %t350, i1 false)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  store { i64, ptr } %t353, ptr %l95, !tbaa !27
  br label %bb67
bb67:
  %t355 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t356 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t358 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } %t356, i64 %t355)
  store %"compiler/bindgen:cx" %t358, ptr %l103
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t359 = load %"compiler/bindgen:cx", ptr %l103
  %t360 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t359, 1
  store { i32, %"compiler/bindgen:cx" } %t360, ptr %rv
  br label %ret
bb69:
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s0, ptr %t361)
  store { i64, ptr } %t363, ptr %l105
  br label %bb70
bb70:
  %t364 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 0
  %t366 = extractvalue { i64, ptr } %t364, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t372 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t370, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t372, ptr %l107
  br label %bb71
bb71:
  %t373 = load i1, ptr %l107, !tbaa !21
  br i1 %t373, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s13
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = getelementptr %"compiler/bindgen:gen", ptr %t374, i32 0, i32 15
  %t377 = load ptr, ptr %lp2
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  %t381 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v2, ptr %v2, ptr %t376, { i64, ptr } %t378)
  %t382 = extractvalue { i32, { i64, ptr } } %t381, 1
  %t383 = extractvalue { i32, { i64, ptr } } %t381, 0
  store i32 %t383, ptr %l113
  %t384 = icmp ne i32 %t383, 0
  br i1 %t384, label %bb75, label %ok.385, !prof !99
ok.385:
  store { i64, ptr } %t382, ptr %l112
  br label %bb74
bb73:
  br label %bb121
bb74:
  %t386 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t386, ptr %l108, !tbaa !27
  br label %bb77
bb75:
  br label %bb76
bb76:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l108, !tbaa !27
  br label %bb77
bb77:
  %t387 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t387, ptr %l6, !tbaa !27
  %t388 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t390 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s13, { i64, ptr } %t388, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t390, ptr %l115
  br label %bb78
bb78:
  %t391 = load i1, ptr %l115, !tbaa !21
  br i1 %t391, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s14
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load ptr, ptr %lp2
  %t394 = load { i64, ptr }, ptr %t393, !tbaa !27
  %t395 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t398 = extractvalue { i64, ptr } %t394, 1
  %t399 = extractvalue { i64, ptr } %t394, 0
  %t400 = add i64 %t396, %t399
  %t401 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t402 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t403 = add i64 %t400, %t402
  %t404 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t403)
  call void @olang_textcopy(ptr %t404, ptr %t395, i64 %t396)
  %t405 = getelementptr i8, ptr %t404, i64 %t396
  call void @olang_textcopy(ptr %t405, ptr %t398, i64 %t399)
  %t406 = getelementptr i8, ptr %t405, i64 %t399
  call void @olang_textcopy(ptr %t406, ptr %t401, i64 %t402)
  %t407 = insertvalue { i64, ptr } undef, i64 %t403, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t404, 1
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t411 = extractvalue { i64, ptr } %t408, 1
  %t412 = mul i64 %t410, 1
  %t413 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t412)
  call void @llvm.memcpy.p0.p0.i64(ptr %t413, ptr %t411, i64 %t412, i1 false)
  %t414 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  %t418 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s14, ptr %t392, { i64, ptr } %t415)
  store i32 %t418, ptr %l120
  %t419 = icmp ne i32 %t418, 0
  br i1 %t419, label %bb82, label %ok.420, !prof !99
ok.420:
  br label %bb81
bb80:
  br label %bb84
bb81:
  br label %bb83
bb82:
  %t421 = load i32, ptr %l120, !tbaa !23
  %t422 = lshr i32 %t421, 16
  %t423 = and i32 %t421, 65535
  %t424 = icmp eq i32 %t422, 1
  %t425 = select i1 %t424, i32 1, i32 0
  %t426 = icmp eq i32 %t421, 0
  %t427 = shl i32 %t425, 16
  %t428 = or i32 %t427, %t423
  %t429 = select i1 %t426, i32 0, i32 %t428
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t431 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t429, 0
  store { i32, %"compiler/bindgen:cx" } %t431, ptr %rv
  br label %ret
bb83:
  call void @__olang_scope_close(ptr %s14)
  br label %bb84
bb84:
  %t432 = load ptr, ptr %l1, !tbaa !29
  store ptr %t432, ptr %l122, !tbaa !29
  %t433 = load ptr, ptr %l122, !tbaa !29
  %t434 = getelementptr %"compiler/bindgen:cparse", ptr %t433, i32 0, i32 2
  %t435 = load i64, ptr %t434, !tbaa !24
  %t437 = add i64 %t435, 1
  %t439 = load ptr, ptr %l122, !tbaa !29
  %t440 = getelementptr %"compiler/bindgen:cparse", ptr %t439, i32 0, i32 2
  store i64 %t437, ptr %t440, !tbaa !24
  %t441 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s13)
  store %"std/prelude/text:StringBuilder" %t441, ptr %l125
  br label %bb85
bb85:
  %t442 = load %"std/prelude/text:StringBuilder", ptr %l125
  store %"std/prelude/text:StringBuilder" %t442, ptr %l7
  %t443 = load ptr, ptr %lp2
  %t444 = load { i64, ptr }, ptr %t443, !tbaa !27
  %t446 = extractvalue { i64, ptr } %t444, 1
  %t447 = extractvalue { i64, ptr } %t444, 0
  %t448 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t449 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t450 = add i64 %t447, %t449
  %t451 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t450)
  call void @olang_textcopy(ptr %t451, ptr %t446, i64 %t447)
  %t452 = getelementptr i8, ptr %t451, i64 %t447
  call void @olang_textcopy(ptr %t452, ptr %t448, i64 %t449)
  %t453 = insertvalue { i64, ptr } undef, i64 %t450, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t451, 1
  %t456 = extractvalue { i64, ptr } %t454, 0
  %t457 = extractvalue { i64, ptr } %t454, 1
  %t458 = mul i64 %t456, 1
  %t459 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t458)
  call void @llvm.memcpy.p0.p0.i64(ptr %t459, ptr %t457, i64 %t458, i1 false)
  %t460 = insertvalue { i64, ptr } undef, i64 %t456, 0
  %t461 = insertvalue { i64, ptr } %t460, ptr %t459, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l7, { i64, ptr } %t461)
  br label %bb86
bb86:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb87
bb87:
  store %olang.scope zeroinitializer, ptr %s17
  %t464 = load ptr, ptr %l1, !tbaa !29
  %t466 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s17, ptr %t464)
  store { i64, ptr } %t466, ptr %l131
  br label %bb88
bb88:
  %t467 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t468 = extractvalue { i64, ptr } %t467, 0
  %t469 = extractvalue { i64, ptr } %t467, 1
  %t470 = mul i64 %t468, 1
  %t471 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t470)
  call void @llvm.memcpy.p0.p0.i64(ptr %t471, ptr %t469, i64 %t470, i1 false)
  %t472 = insertvalue { i64, ptr } undef, i64 %t468, 0
  %t473 = insertvalue { i64, ptr } %t472, ptr %t471, 1
  %t475 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s17, ptr %s17, { i64, ptr } %t473, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t475, ptr %l133
  br label %bb89
bb89:
  %t476 = load i1, ptr %l133, !tbaa !21
  %t477 = xor i1 %t476, true
  %t479 = xor i1 %t477, true
  br i1 %t479, label %bb90, label %bb91
bb90:
  call void @__olang_scope_close(ptr %s17)
  br label %bb111
bb91:
  br label %bb92
bb92:
  %t481 = load i64, ptr %l8, !tbaa !24
  %t483 = icmp sgt i64 %t481, 0
  br i1 %t483, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s18
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t487 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3acparse_2eat(ptr %v1, ptr %s18, ptr %t485)
  store { i64, ptr } %t487, ptr %l139
  br label %bb95
bb94:
  br label %bb104
bb95:
  %t488 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t489 = extractvalue { i64, ptr } %t488, 0
  %t490 = extractvalue { i64, ptr } %t488, 1
  %t491 = mul i64 %t489, 1
  %t492 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t491)
  call void @llvm.memcpy.p0.p0.i64(ptr %t492, ptr %t490, i64 %t491, i1 false)
  %t493 = insertvalue { i64, ptr } undef, i64 %t489, 0
  %t494 = insertvalue { i64, ptr } %t493, ptr %t492, 1
  %t496 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s18, ptr %s18, { i64, ptr } %t494, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t496, ptr %l141
  br label %bb96
bb96:
  %t497 = load i1, ptr %l141, !tbaa !21
  %t498 = xor i1 %t497, true
  br i1 %t498, label %bb97, label %bb98
bb97:
  store %olang.scope zeroinitializer, ptr %s19
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t501 = load ptr, ptr %lp2
  %t502 = load { i64, ptr }, ptr %t501, !tbaa !27
  %t503 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t504 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t506 = extractvalue { i64, ptr } %t502, 1
  %t507 = extractvalue { i64, ptr } %t502, 0
  %t508 = add i64 %t504, %t507
  %t509 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t510 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t511 = add i64 %t508, %t510
  %t512 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t511)
  call void @olang_textcopy(ptr %t512, ptr %t503, i64 %t504)
  %t513 = getelementptr i8, ptr %t512, i64 %t504
  call void @olang_textcopy(ptr %t513, ptr %t506, i64 %t507)
  %t514 = getelementptr i8, ptr %t513, i64 %t507
  call void @olang_textcopy(ptr %t514, ptr %t509, i64 %t510)
  %t515 = insertvalue { i64, ptr } undef, i64 %t511, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t512, 1
  %t518 = extractvalue { i64, ptr } %t516, 0
  %t519 = extractvalue { i64, ptr } %t516, 1
  %t520 = mul i64 %t518, 1
  %t521 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t520)
  call void @llvm.memcpy.p0.p0.i64(ptr %t521, ptr %t519, i64 %t520, i1 false)
  %t522 = insertvalue { i64, ptr } undef, i64 %t518, 0
  %t523 = insertvalue { i64, ptr } %t522, ptr %t521, 1
  %t526 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s19, ptr %t500, { i64, ptr } %t523)
  store i32 %t526, ptr %l147
  %t527 = icmp ne i32 %t526, 0
  br i1 %t527, label %bb100, label %ok.528, !prof !99
ok.528:
  br label %bb99
bb98:
  br label %bb102
bb99:
  br label %bb101
bb100:
  %t529 = load i32, ptr %l147, !tbaa !23
  %t530 = lshr i32 %t529, 16
  %t531 = and i32 %t529, 65535
  %t532 = icmp eq i32 %t530, 1
  %t533 = select i1 %t532, i32 1, i32 0
  %t534 = icmp eq i32 %t529, 0
  %t535 = shl i32 %t533, 16
  %t536 = or i32 %t535, %t531
  %t537 = select i1 %t534, i32 0, i32 %t536
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t539 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t537, 0
  store { i32, %"compiler/bindgen:cx" } %t539, ptr %rv
  br label %ret
bb101:
  call void @__olang_scope_close(ptr %s19)
  br label %bb102
bb102:
  %t540 = load ptr, ptr %l1, !tbaa !29
  store ptr %t540, ptr %l149, !tbaa !29
  %t541 = load ptr, ptr %l149, !tbaa !29
  %t542 = getelementptr %"compiler/bindgen:cparse", ptr %t541, i32 0, i32 2
  %t543 = load i64, ptr %t542, !tbaa !24
  %t545 = add i64 %t543, 1
  %t547 = load ptr, ptr %l149, !tbaa !29
  %t548 = getelementptr %"compiler/bindgen:cparse", ptr %t547, i32 0, i32 2
  store i64 %t545, ptr %t548, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s18, ptr %l7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s18)
  br label %bb104
bb104:
  store ptr %l7, ptr %l153, !tbaa !29
  %t550 = load ptr, ptr %l0, !tbaa !29
  store ptr %t550, ptr %l154, !tbaa !29
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t552 = load ptr, ptr %l1, !tbaa !29
  %t555 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t551, ptr %t552)
  %t556 = extractvalue { i32, %"compiler/bindgen:cx" } %t555, 1
  %t557 = extractvalue { i32, %"compiler/bindgen:cx" } %t555, 0
  store i32 %t557, ptr %l159
  %t558 = icmp ne i32 %t557, 0
  br i1 %t558, label %bb106, label %ok.559, !prof !99
ok.559:
  store %"compiler/bindgen:cx" %t556, ptr %l158
  br label %bb105
bb105:
  %t560 = load %"compiler/bindgen:cx", ptr %l158
  store %"compiler/bindgen:cx" %t560, ptr %l155
  br label %bb107
bb106:
  %t561 = load i32, ptr %l159, !tbaa !23
  %t562 = lshr i32 %t561, 16
  %t563 = and i32 %t561, 65535
  %t564 = icmp eq i32 %t562, 1
  %t565 = select i1 %t564, i32 1, i32 0
  %t566 = icmp eq i32 %t561, 0
  %t567 = shl i32 %t565, 16
  %t568 = or i32 %t567, %t563
  %t569 = select i1 %t566, i32 0, i32 %t568
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t571 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t569, 0
  store { i32, %"compiler/bindgen:cx" } %t571, ptr %rv
  br label %ret
bb107:
  %t572 = load ptr, ptr %l154, !tbaa !29
  %t573 = load %"compiler/bindgen:cx", ptr %l155
  %t574 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNum(ptr %v0, ptr %v0, ptr %v0, ptr %t572, %"compiler/bindgen:cx" %t573)
  store %"compiler/bindgen:cx" %t574, ptr %l161
  br label %bb108
bb108:
  %t575 = getelementptr %"compiler/bindgen:cx", ptr %l161, i32 0, i32 0
  %t576 = load { i64, ptr }, ptr %t575, !tbaa !27
  %t577 = load ptr, ptr %l153, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %v0, ptr %t577, { i64, ptr } %t576)
  br label %bb109
bb109:
  %t579 = load i64, ptr %l8, !tbaa !24
  %t581 = add i64 %t579, 1
  store i64 %t581, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s17)
  br label %bb110
bb110:
  br label %bb87
bb111:
  %t583 = load ptr, ptr %l1, !tbaa !29
  store ptr %t583, ptr %l165, !tbaa !29
  %t584 = load ptr, ptr %l165, !tbaa !29
  %t585 = getelementptr %"compiler/bindgen:cparse", ptr %t584, i32 0, i32 2
  %t586 = load i64, ptr %t585, !tbaa !24
  %t588 = add i64 %t586, 1
  %t590 = load ptr, ptr %l165, !tbaa !29
  %t591 = getelementptr %"compiler/bindgen:cparse", ptr %t590, i32 0, i32 2
  store i64 %t588, ptr %t591, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s13, ptr %s13, ptr %l7, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb112
bb112:
  %t593 = ptrtoint ptr %v2 to i64
  store i64 %t593, ptr %l169, !tbaa !24
  %t594 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acx_2e0
  br i1 %t594, label %bb113, label %bb114
bb113:
  %t596 = call ptr @__olang_region_make(ptr %v2)
  %t597 = ptrtoint ptr %t596 to i64
  store i64 %t597, ptr %l169, !tbaa !24
  br label %bb114
bb114:
  %t598 = load i64, ptr %l169
  %t599 = inttoptr i64 %t598 to ptr
  %t601 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s13, ptr %t599, ptr %l7)
  store { i64, ptr } %t601, ptr %l172
  br label %bb115
bb115:
  %t602 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t603 = load i64, ptr %l169
  %t604 = inttoptr i64 %t603 to ptr
  %t605 = extractvalue { i64, ptr } %t602, 0
  %t606 = extractvalue { i64, ptr } %t602, 1
  %t607 = mul i64 %t605, 1
  %t608 = call ptr @__olang_scope_alloc(ptr %t604, i64 %t607)
  call void @llvm.memcpy.p0.p0.i64(ptr %t608, ptr %t606, i64 %t607, i1 false)
  %t609 = insertvalue { i64, ptr } undef, i64 %t605, 0
  %t610 = insertvalue { i64, ptr } %t609, ptr %t608, 1
  store { i64, ptr } %t610, ptr %l173, !tbaa !27
  %t611 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t613 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s13, { i64, ptr } %t611, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t613, ptr %l175
  br label %bb116
bb116:
  %t614 = load i1, ptr %l175, !tbaa !21
  %t615 = xor i1 %t614, true
  br i1 %t615, label %bb117, label %bb118
bb117:
  %t617 = load i64, ptr @G_2ecompiler_2fbindgen_2eKType, !tbaa !24
  store i64 %t617, ptr %l177, !tbaa !24
  br label %bb119
bb118:
  %t619 = load i64, ptr @G_2ecompiler_2fbindgen_2eKBool, !tbaa !24
  store i64 %t619, ptr %l177, !tbaa !24
  br label %bb119
bb119:
  %t621 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t622 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t623 = load i64, ptr %l177, !tbaa !24
  %t625 = call %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t622, i64 %t623, i64 -1, { i64, ptr } %t621)
  store %"compiler/bindgen:cx" %t625, ptr %l181
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t626 = load %"compiler/bindgen:cx", ptr %l181
  %t627 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t626, 1
  store { i32, %"compiler/bindgen:cx" } %t627, ptr %rv
  br label %ret
bb121:
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load ptr, ptr %lp2
  %t630 = load { i64, ptr }, ptr %t629, !tbaa !27
  %t631 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t632 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t634 = extractvalue { i64, ptr } %t630, 1
  %t635 = extractvalue { i64, ptr } %t630, 0
  %t636 = add i64 %t632, %t635
  %t637 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t638 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t639 = add i64 %t636, %t638
  %t640 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t639)
  call void @olang_textcopy(ptr %t640, ptr %t631, i64 %t632)
  %t641 = getelementptr i8, ptr %t640, i64 %t632
  call void @olang_textcopy(ptr %t641, ptr %t634, i64 %t635)
  %t642 = getelementptr i8, ptr %t641, i64 %t635
  call void @olang_textcopy(ptr %t642, ptr %t637, i64 %t638)
  %t643 = insertvalue { i64, ptr } undef, i64 %t639, 0
  %t644 = insertvalue { i64, ptr } %t643, ptr %t640, 1
  %t646 = extractvalue { i64, ptr } %t644, 0
  %t647 = extractvalue { i64, ptr } %t644, 1
  %t648 = mul i64 %t646, 1
  %t649 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t648)
  call void @llvm.memcpy.p0.p0.i64(ptr %t649, ptr %t647, i64 %t648, i1 false)
  %t650 = insertvalue { i64, ptr } undef, i64 %t646, 0
  %t651 = insertvalue { i64, ptr } %t650, ptr %t649, 1
  %t654 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s0, ptr %t628, { i64, ptr } %t651)
  store i32 %t654, ptr %l186
  %t655 = icmp ne i32 %t654, 0
  br i1 %t655, label %bb123, label %ok.656, !prof !99
ok.656:
  br label %bb122
bb122:
  br label %bb124
bb123:
  %t657 = load i32, ptr %l186, !tbaa !23
  %t658 = lshr i32 %t657, 16
  %t659 = and i32 %t657, 65535
  %t660 = icmp eq i32 %t658, 1
  %t661 = select i1 %t660, i32 1, i32 0
  %t662 = icmp eq i32 %t657, 0
  %t663 = shl i32 %t661, 16
  %t664 = or i32 %t663, %t659
  %t665 = select i1 %t662, i32 0, i32 %t664
  call void @__olang_scope_close(ptr %s0)
  %t667 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, i32 %t665, 0
  store { i32, %"compiler/bindgen:cx" } %t667, ptr %rv
  br label %ret
bb124:
  %t668 = load i64, ptr @G_2ecompiler_2fbindgen_2eKInt, !tbaa !24
  %t670 = call %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v2, ptr %v2, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) }, i64 %t668)
  store %"compiler/bindgen:cx" %t670, ptr %l189
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s0)
  %t671 = load %"compiler/bindgen:cx", ptr %l189
  %t672 = insertvalue { i32, %"compiler/bindgen:cx" } zeroinitializer, %"compiler/bindgen:cx" %t671, 1
  store { i32, %"compiler/bindgen:cx" } %t672, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/bindgen:cx" }, ptr %rv
  ret { i32, %"compiler/bindgen:cx" } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecastType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l45 = alloca i64
  %l49 = alloca %"compiler/bindgen:ctype"
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l60 = alloca %"compiler/bindgen:ctype"
  %l62 = alloca i1
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l69 = alloca %"compiler/bindgen:ctype"
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i64, ptr } @compiler_2fbindgen_2ectokens(ptr %v1, ptr %s0, { i64, ptr } %t1)
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t11, ptr %l15, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l16, !tbaa !24
  %t14 = load i64, ptr %l16, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t25, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t26 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb7:
  br label %bb8
bb8:
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %t45, i64 %t42
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !37
  store { i64, ptr } %t47, ptr %l6, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t53 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s3, ptr %s0, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x { i64, ptr }] }>, ptr @.d68, i32 0, i32 1) }, { i64, ptr } %t49)
  store i1 %t53, ptr %l30
  br label %bb9
bb9:
  %t54 = load i1, ptr %l30, !tbaa !21
  br i1 %t54, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb13
bb11:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/bindgen:gen", ptr %t55, i32 0, i32 4
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t61 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %s0, ptr %t57, { i64, ptr } %t58)
  store i1 %t61, ptr %l35
  br label %bb12
bb12:
  %t62 = load i1, ptr %l35, !tbaa !21
  store i1 %t62, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t63 = load i1, ptr %l31, !tbaa !21
  %t64 = xor i1 %t63, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l39, !tbaa !24
  %t69 = load i64, ptr %l39, !tbaa !24
  %t70 = mul i64 %t69, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l40, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l39, !tbaa !24
  %t79 = mul i64 %t78, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t75, ptr %t77, i64 %t79, i1 false)
  %t80 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t80, ptr %l38, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t81 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t81, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l4, !tbaa !24
  br label %bb5
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t90 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v1, ptr %t86, { i64, ptr } %t87, i64 0)
  store i64 %t90, ptr %l45
  br label %bb19
bb19:
  %t91 = load i64, ptr %l45, !tbaa !24
  store i64 %t91, ptr %l8, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/bindgen:gen", ptr %t92, i32 0, i32 16
  %t95 = load i64, ptr %l8, !tbaa !24
  %t98 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s0, ptr %t94, i64 %t95)
  store %"compiler/bindgen:ctype" %t98, ptr %l49
  br label %bb20
bb20:
  %t99 = getelementptr %"compiler/bindgen:ctype", ptr %l49, i32 0, i32 0
  %t100 = load i32, ptr %t99, !range !{i32 0, i32 7}
  %t102 = trunc i64 1 to i32
  %t103 = icmp eq i32 %t100, %t102
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l53, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t107, ptr %l54, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l55, !tbaa !24
  %t110 = load i64, ptr %l55, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l56, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l55, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t121, ptr %l54, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/bindgen:gen", ptr %t123, i32 0, i32 16
  %t126 = load i64, ptr %l8, !tbaa !24
  %t129 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t125, i64 %t126)
  store %"compiler/bindgen:ctype" %t129, ptr %l60
  br label %bb24
bb24:
  %t130 = getelementptr %"compiler/bindgen:ctype", ptr %l60, i32 0, i32 1
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  %t133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t131, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t133, ptr %l62
  br label %bb25
bb25:
  %t134 = load i1, ptr %l62, !tbaa !21
  br i1 %t134, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t135, ptr %l63, !tbaa !27
  br label %bb29
bb27:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/bindgen:gen", ptr %t137, i32 0, i32 16
  %t140 = load i64, ptr %l8, !tbaa !24
  %t143 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t139, i64 %t140)
  store %"compiler/bindgen:ctype" %t143, ptr %l69
  br label %bb28
bb28:
  %t144 = getelementptr %"compiler/bindgen:ctype", ptr %l69, i32 0, i32 1
  %t145 = load { i64, ptr }, ptr %t144, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t145, 1
  %t148 = extractvalue { i64, ptr } %t145, 0
  %t149 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t147, i64 %t148)
  %t150 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l63, !tbaa !27
  br label %bb29
bb29:
  %t153 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  store i64 %t154, ptr %l72, !tbaa !24
  %t155 = load i64, ptr %l72, !tbaa !24
  %t156 = mul i64 %t155, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l73, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l72, !tbaa !24
  %t165 = mul i64 %t164, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t161, ptr %t163, i64 %t165, i1 false)
  %t166 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t166, ptr %l63, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t167 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t167, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edump(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %lp13 = alloca ptr
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l28 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca i64
  %l59 = alloca %"std/os:Output"
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"std/os:Output"
  %l63 = alloca i32
  %l65 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l77 = alloca i32
  %l79 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca i32
  %l84 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  store ptr %l4, ptr %l15, !tbaa !29
  %t3 = ptrtoint ptr %s0 to i64
  store i64 %t3, ptr %l16, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %s0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l16, !tbaa !24
  br label %bb3
bb3:
  %t10 = extractvalue { i64, ptr } %a1, 1
  %t11 = extractvalue { i64, ptr } %a1, 0
  %t12 = load i64, ptr %l16
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call ptr @__olang_scope_alloc(ptr %t13, i64 %t11)
  call void @olang_textcopy(ptr %t14, ptr %t10, i64 %t11)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  %t18 = load i64, ptr %l16
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = extractvalue { i64, ptr } %t16, 0
  %t21 = extractvalue { i64, ptr } %t16, 1
  %t22 = mul i64 %t20, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t22)
  call void @llvm.memcpy.p0.p0.i64(ptr %t23, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t26 = load ptr, ptr %l15, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t26, { i64, ptr } %t25)
  br label %bb4
bb4:
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb6, label %bb7
bb6:
  br label %bb13
bb7:
  br label %bb8
bb8:
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t42, ptr %l28, !tbaa !27
  %t43 = load i64, ptr %l6, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %t46, i64 %t43
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !37
  store { i64, ptr } %t48, ptr %l8, !tbaa !27
  store ptr %l4, ptr %l31, !tbaa !29
  %t50 = ptrtoint ptr %s0 to i64
  store i64 %t50, ptr %l32, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t53 = call ptr @__olang_region_make(ptr %s0)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb10
bb10:
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = load i64, ptr %l32
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = call ptr @__olang_scope_alloc(ptr %t60, i64 %t58)
  call void @olang_textcopy(ptr %t61, ptr %t57, i64 %t58)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t65 = load i64, ptr %l32
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = extractvalue { i64, ptr } %t63, 0
  %t68 = extractvalue { i64, ptr } %t63, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %t66, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t73, { i64, ptr } %t72)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb5
bb13:
  store %olang.scope zeroinitializer, ptr %s6
  %t80 = insertvalue [8 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t81 = insertvalue [8 x { i64, ptr }] %t80, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t82 = insertvalue [8 x { i64, ptr }] %t81, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d75, i32 0, i32 1) }, 2
  %t83 = insertvalue [8 x { i64, ptr }] %t82, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d76, i32 0, i32 1) }, 3
  %t84 = insertvalue [8 x { i64, ptr }] %t83, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d77, i32 0, i32 1) }, 4
  %t85 = insertvalue [8 x { i64, ptr }] %t84, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d78, i32 0, i32 1) }, 5
  %t86 = insertvalue [8 x { i64, ptr }] %t85, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d79, i32 0, i32 1) }, 6
  %t88 = insertvalue [8 x { i64, ptr }] %t86, { i64, ptr } %a3, 7
  %t90 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 128, i64 8)
  store [8 x { i64, ptr }] %t88, ptr %t90
  store ptr %t90, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t92 = load ptr, ptr %l9
  store i64 8, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t95 = load i64, ptr %l10, !tbaa !24
  %t96 = load i64, ptr %l11, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb15, label %bb16
bb15:
  br label %bb22
bb16:
  br label %bb17
bb17:
  %t103 = load ptr, ptr %l9
  %t104 = load i64, ptr %l10, !tbaa !24
  %t107 = getelementptr [8 x { i64, ptr }], ptr %t103, i64 0, i64 %t104
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !37
  store { i64, ptr } %t108, ptr %l12, !tbaa !27
  store ptr %l4, ptr %l51, !tbaa !29
  %t110 = ptrtoint ptr %s0 to i64
  store i64 %t110, ptr %l52, !tbaa !24
  %t111 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t111, label %bb18, label %bb19
bb18:
  %t113 = call ptr @__olang_region_make(ptr %s0)
  %t114 = ptrtoint ptr %t113 to i64
  store i64 %t114, ptr %l52, !tbaa !24
  br label %bb19
bb19:
  %t115 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = extractvalue { i64, ptr } %t115, 0
  %t119 = load i64, ptr %l52
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = call ptr @__olang_scope_alloc(ptr %t120, i64 %t118)
  call void @olang_textcopy(ptr %t121, ptr %t117, i64 %t118)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  %t125 = load i64, ptr %l52
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = extractvalue { i64, ptr } %t123, 0
  %t128 = extractvalue { i64, ptr } %t123, 1
  %t129 = mul i64 %t127, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %t126, i64 %t129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t130, ptr %t128, i64 %t129, i1 false)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t133 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t133, { i64, ptr } %t132)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t135 = load i64, ptr %l10, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l10, !tbaa !24
  br label %bb14
bb22:
  call void @__olang_scope_close(ptr %s6)
  %t140 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t140, ptr %l61
  br label %bb23
bb23:
  %t141 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t142 = call { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %s0, ptr %v4, { i64, ptr } %t141)
  %t143 = extractvalue { i32, %"std/os:Output" } %t142, 1
  %t144 = extractvalue { i32, %"std/os:Output" } %t142, 0
  store i32 %t144, ptr %l63
  %t145 = icmp ne i32 %t144, 0
  br i1 %t145, label %bb25, label %ok.146, !prof !99
ok.146:
  store %"std/os:Output" %t143, ptr %l62
  br label %bb24
bb24:
  %t147 = load %"std/os:Output", ptr %l62
  store %"std/os:Output" %t147, ptr %l59
  br label %bb29
bb25:
  %t148 = load i32, ptr %l63, !tbaa !23
  %t149 = ashr i32 %t148, 16
  %t151 = icmp eq i32 %t149, 1
  store i1 %t151, ptr %l65, !tbaa !21
  br label %bb26
bb26:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l66, !tbaa !29
  %t153 = load ptr, ptr %l66, !tbaa !29
  %t154 = getelementptr %"compiler/bindgen:gen", ptr %t153, i32 0, i32 25
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l67, !tbaa !27
  %t156 = load ptr, ptr %l66, !tbaa !29
  %t157 = getelementptr %"compiler/bindgen:gen", ptr %t156, i32 0, i32 25
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %t157, !tbaa !27
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t158, label %bb27, label %bb28
bb27:
  %t160 = load { i64, ptr }, ptr %l67
  %t161 = extractvalue { i64, ptr } %t160, 1
  call void @__olang_region_release(ptr %t161)
  store { i64, ptr } zeroinitializer, ptr %l67
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t163 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t163, ptr %rv
  br label %ret
bb29:
  %t164 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store ptr %t164, ptr %lp13
  %t165 = load %"std/os:Output", ptr %l59
  %t166 = load ptr, ptr %lp13
  store %"std/os:Output" %t165, ptr %t166
  %t167 = load ptr, ptr %lp13
  %t168 = getelementptr %"std/os:Output", ptr %t167, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t173 = icmp eq i64 %t171, 0
  br i1 %t173, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s11
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l73, !tbaa !29
  %t176 = load ptr, ptr %lp13
  %t177 = getelementptr %"std/os:Output", ptr %t176, i32 0, i32 2
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  %t180 = call { i64, ptr } @compiler_2fbindgen_2efirstError(ptr %v4, ptr %s11, { i64, ptr } %t178)
  store { i64, ptr } %t180, ptr %l75
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t181 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t188 = load ptr, ptr %l73, !tbaa !29
  %t190 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s11, ptr %t188, { i64, ptr } %t187)
  store i32 %t190, ptr %l77
  %t191 = icmp ne i32 %t190, 0
  br i1 %t191, label %bb34, label %ok.192, !prof !99
ok.192:
  br label %bb33
bb33:
  br label %bb35
bb34:
  %t193 = load i32, ptr %l77, !tbaa !23
  %t194 = lshr i32 %t193, 16
  %t195 = and i32 %t193, 65535
  %t196 = icmp eq i32 %t194, 1
  %t197 = select i1 %t196, i32 1, i32 0
  %t198 = icmp eq i32 %t193, 0
  %t199 = shl i32 %t197, 16
  %t200 = or i32 %t199, %t195
  %t201 = select i1 %t198, i32 0, i32 %t200
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t203 = insertvalue { i32, ptr } zeroinitializer, i32 %t201, 0
  store { i32, ptr } %t203, ptr %rv
  br label %ret
bb35:
  call void @__olang_scope_close(ptr %s11)
  br label %bb36
bb36:
  %t204 = load ptr, ptr %lp13
  %t205 = getelementptr %"std/os:Output", ptr %t204, i32 0, i32 1
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !27
  %t208 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v4, ptr %v4, { i64, ptr } %t206)
  %t209 = extractvalue { i32, ptr } %t208, 1
  %t210 = extractvalue { i32, ptr } %t208, 0
  store i32 %t210, ptr %l82
  %t211 = icmp ne i32 %t210, 0
  br i1 %t211, label %bb38, label %ok.212, !prof !99
ok.212:
  store ptr %t209, ptr %l81
  br label %bb37
bb37:
  %t213 = load ptr, ptr %l81, !tbaa !29
  store ptr %t213, ptr %l79, !tbaa !29
  br label %bb44
bb38:
  %t214 = load i32, ptr %l82, !tbaa !23
  %t215 = ashr i32 %t214, 16
  %t217 = icmp eq i32 %t215, 1
  store i1 %t217, ptr %l84, !tbaa !21
  %t218 = load i32, ptr %l82, !tbaa !23
  %t219 = ashr i32 %t218, 16
  %t221 = icmp eq i32 %t219, 1
  br i1 %t221, label %bb39, label %bb40
bb39:
  call void @__olang_errpay_pop()
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l87, !tbaa !29
  %t224 = load ptr, ptr %l87, !tbaa !29
  %t225 = getelementptr %"compiler/bindgen:gen", ptr %t224, i32 0, i32 25
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l88, !tbaa !27
  %t227 = load ptr, ptr %l87, !tbaa !29
  %t228 = getelementptr %"compiler/bindgen:gen", ptr %t227, i32 0, i32 25
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %t228, !tbaa !27
  %t229 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3agen_2e25
  br i1 %t229, label %bb42, label %bb43
bb42:
  %t231 = load { i64, ptr }, ptr %l88
  %t232 = extractvalue { i64, ptr } %t231, 1
  call void @__olang_region_release(ptr %t232)
  store { i64, ptr } zeroinitializer, ptr %l88
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t234 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t234, ptr %rv
  br label %ret
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t235 = load ptr, ptr %l79, !tbaa !29
  %t236 = insertvalue { i32, ptr } zeroinitializer, ptr %t235, 1
  store { i32, ptr } %t236, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efieldType(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/bindgen:ctype"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/bindgen:ctype"
  %l6 = alloca i64
  %l10 = alloca %"compiler/bindgen:ctype"
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l27 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i32
  %l37 = alloca { i64, ptr }
  %l43 = alloca %"compiler/bindgen:ctype"
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l55 = alloca i64
  %l58 = alloca i1
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %l72 = alloca i32
  %l75 = alloca i32
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 16
  %t7 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/bindgen:ctype" %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load %"compiler/bindgen:ctype", ptr %l10
  store %"compiler/bindgen:ctype" %t8, ptr %l2
  %t9 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 0
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 7}
  store i32 %t10, ptr %l3
  %t12 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t14 = trunc i64 1 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb9
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t20, ptr %l15
  br label %bb5
bb5:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l16, !tbaa !27
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l21, !tbaa !24
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l22, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l21, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t46, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t47 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t48 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t47, 1
  store { i32, { i64, ptr } } %t48, ptr %rv
  br label %ret
bb9:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t51 = trunc i64 2 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb22
bb12:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t59 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t54, { i64, ptr } %t56)
  store i64 %t59, ptr %l27
  br label %bb13
bb13:
  %t60 = load i64, ptr %l27, !tbaa !24
  store i64 %t60, ptr %l4, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l30
  br label %bb14
bb14:
  %t66 = load i1, ptr %l30, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s4, ptr %t69, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d84, i32 0, i32 1) })
  store i32 %t71, ptr %l33
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb18, label %ok.73, !prof !99
ok.73:
  br label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb19
bb18:
  %t74 = load i32, ptr %l33, !tbaa !23
  %t75 = lshr i32 %t74, 16
  %t76 = and i32 %t74, 65535
  %t77 = icmp eq i32 %t75, 1
  %t78 = select i1 %t77, i32 1, i32 0
  %t79 = icmp eq i32 %t74, 0
  %t80 = shl i32 %t78, 16
  %t81 = or i32 %t80, %t76
  %t82 = select i1 %t79, i32 0, i32 %t81
  call void @__olang_scope_close(ptr %s4)
  %t84 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t82, 0
  store { i32, { i64, ptr } } %t84, ptr %rv
  br label %ret
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l4, !tbaa !24
  %t89 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %t85, i64 %t86)
  store { i64, ptr } %t89, ptr %l37
  br label %bb21
bb21:
  %t90 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t91 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t90, 1
  store { i32, { i64, ptr } } %t91, ptr %rv
  br label %ret
bb22:
  %t92 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t94 = trunc i64 3 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb40
bb25:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/bindgen:gen", ptr %t97, i32 0, i32 16
  %t100 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t104 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t99, i64 %t101)
  store %"compiler/bindgen:ctype" %t104, ptr %l43
  br label %bb26
bb26:
  %t105 = load %"compiler/bindgen:ctype", ptr %l43
  store %"compiler/bindgen:ctype" %t105, ptr %l5
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 2
  %t108 = load i64, ptr %t107, !tbaa !24
  %t111 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %t106, i64 %t108)
  store i1 %t111, ptr %l46
  br label %bb27
bb27:
  %t112 = load i1, ptr %l46, !tbaa !21
  br i1 %t112, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t113, ptr %l48, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  store i64 %t115, ptr %l49, !tbaa !24
  %t116 = load i64, ptr %l49, !tbaa !24
  %t117 = mul i64 %t116, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t117)
  %t119 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  store { i64, ptr } %t120, ptr %l50, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = load i64, ptr %l49, !tbaa !24
  %t126 = mul i64 %t125, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t122, ptr %t124, i64 %t126, i1 false)
  %t127 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t127, ptr %l48, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t129 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t128, 1
  store { i32, { i64, ptr } } %t129, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t130 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 0
  %t131 = load i32, ptr %t130, !range !{i32 0, i32 7}
  %t133 = trunc i64 2 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb31, label %bb32
bb31:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/bindgen:ctype", ptr %l5, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t141 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v0, ptr %t136, { i64, ptr } %t138)
  store i64 %t141, ptr %l55
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t142 = load i64, ptr %l55, !tbaa !24
  store i64 %t142, ptr %l6, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i64, ptr %l6, !tbaa !24
  %t147 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t143, i64 %t144)
  store i1 %t147, ptr %l58
  br label %bb34
bb34:
  %t148 = load i1, ptr %l58, !tbaa !21
  %t149 = xor i1 %t148, true
  br i1 %t149, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s8
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l6, !tbaa !24
  %t155 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %s8, ptr %t151, i64 %t152)
  store { i64, ptr } %t155, ptr %l62
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t156 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t162 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t157, i64 %t158)
  %t163 = getelementptr i8, ptr %t162, i64 %t158
  call void @olang_textcopy(ptr %t163, ptr %t159, i64 %t160)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  call void @__olang_scope_close(ptr %s8)
  %t167 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t165, 1
  store { i32, { i64, ptr } } %t167, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t168 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t168, ptr %l65, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 0
  store i64 %t170, ptr %l66, !tbaa !24
  %t171 = load i64, ptr %l66, !tbaa !24
  %t172 = mul i64 %t171, 1
  %t173 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t172)
  %t174 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  store { i64, ptr } %t175, ptr %l67, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = load i64, ptr %l66, !tbaa !24
  %t181 = mul i64 %t180, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t177, ptr %t179, i64 %t181, i1 false)
  %t182 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t182, ptr %l65, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t184 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t183, 1
  store { i32, { i64, ptr } } %t184, ptr %rv
  br label %ret
bb40:
  %t185 = load i32, ptr %l3, !range !{i32 0, i32 7}
  %t187 = trunc i64 6 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/bindgen:ctype", ptr %l2, i32 0, i32 1
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t195 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v0, ptr %t190, { i64, ptr } %t192)
  store i32 %t195, ptr %l72
  %t196 = icmp ne i32 %t195, 0
  br i1 %t196, label %bb45, label %ok.197, !prof !99
ok.197:
  br label %bb44
bb44:
  br label %bb46
bb45:
  %t198 = load i32, ptr %l72, !tbaa !23
  %t199 = lshr i32 %t198, 16
  %t200 = and i32 %t198, 65535
  %t201 = icmp eq i32 %t199, 1
  %t202 = select i1 %t201, i32 1, i32 0
  %t203 = icmp eq i32 %t198, 0
  %t204 = shl i32 %t202, 16
  %t205 = or i32 %t204, %t200
  %t206 = select i1 %t203, i32 0, i32 %t205
  %t208 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t206, 0
  store { i32, { i64, ptr } } %t208, ptr %rv
  br label %ret
bb46:
  br label %bb55
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb54
bb50:
  store %olang.scope zeroinitializer, ptr %s11
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = call i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %s11, ptr %t209, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i32 %t211, ptr %l75
  %t212 = icmp ne i32 %t211, 0
  br i1 %t212, label %bb52, label %ok.213, !prof !99
ok.213:
  br label %bb51
bb51:
  br label %bb53
bb52:
  %t214 = load i32, ptr %l75, !tbaa !23
  %t215 = lshr i32 %t214, 16
  %t216 = and i32 %t214, 65535
  %t217 = icmp eq i32 %t215, 1
  %t218 = select i1 %t217, i32 1, i32 0
  %t219 = icmp eq i32 %t214, 0
  %t220 = shl i32 %t218, 16
  %t221 = or i32 %t220, %t216
  %t222 = select i1 %t219, i32 0, i32 %t221
  call void @__olang_scope_close(ptr %s11)
  %t224 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t222, 0
  store { i32, { i64, ptr } } %t224, ptr %rv
  br label %ret
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_582986fcdf40d11c_2a39a940a03de888)
  unreachable
bb55:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d89, i32 0, i32 1) }, ptr %l77, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t225, ptr %l78, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t226, 0
  store i64 %t227, ptr %l79, !tbaa !24
  %t228 = load i64, ptr %l79, !tbaa !24
  %t229 = mul i64 %t228, 1
  %t230 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t229)
  %t231 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t230, 1
  store { i64, ptr } %t232, ptr %l80, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = load i64, ptr %l79, !tbaa !24
  %t238 = mul i64 %t237, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t234, ptr %t236, i64 %t238, i1 false)
  %t239 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t239, ptr %l78, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t241 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t240, 1
  store { i32, { i64, ptr } } %t241, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eintMacros(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/bindgen:cMacro"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca i64
  %l19 = alloca %"compiler/bindgen:cMacro"
  %l21 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca ptr
  %l37 = alloca i64
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i32
  %l49 = alloca i1
  %l51 = alloca i64
  %l53 = alloca i1
  %l55 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/bindgen:gen", ptr %t5, i32 0, i32 12
  store ptr %t7, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l11, !tbaa !24
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l13
  br label %bb3
bb3:
  %t13 = load i64, ptr %l11, !tbaa !24
  %t14 = load i64, ptr %l13, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb5:
  br label %bb6
bb6:
  %t19 = load i64, ptr %l3, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store %"compiler/bindgen:cMacro" %t25, ptr %l19
  br label %bb7
bb7:
  %t26 = load %"compiler/bindgen:cMacro", ptr %l19
  store %"compiler/bindgen:cMacro" %t26, ptr %l5
  %t27 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t28, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d90, i32 0, i32 1) })
  store i1 %t30, ptr %l21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l21, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb11
bb10:
  %t32 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 1
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb14
bb13:
  %t36 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 4
  %t37 = load i1, ptr %t36, !tbaa !21
  %t39 = xor i1 %t37, true
  store i1 %t39, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t41 = load i1, ptr %l24, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb16:
  %t42 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 0
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t43)
  store i1 %t45, ptr %l29
  br label %bb17
bb17:
  %t46 = load i1, ptr %l29, !tbaa !21
  %t47 = xor i1 %t46, true
  store i1 %t47, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb21
bb20:
  %t50 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 3
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t55 = icmp eq i64 %t53, 0
  store i1 %t55, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb23:
  br label %bb24
bb24:
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l35
  br label %bb25
bb25:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l6
  store ptr %l6, ptr %l36, !tbaa !29
  %t60 = ptrtoint ptr %s2 to i64
  store i64 %t60, ptr %l37, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t61, label %bb26, label %bb27
bb26:
  %t63 = call ptr @__olang_region_make(ptr %s2)
  %t64 = ptrtoint ptr %t63 to i64
  store i64 %t64, ptr %l37, !tbaa !24
  br label %bb27
bb27:
  %t65 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 1
  %t69 = extractvalue { i64, ptr } %t66, 0
  %t70 = load i64, ptr %l37
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t69)
  call void @olang_textcopy(ptr %t72, ptr %t68, i64 %t69)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t76 = load i64, ptr %l37
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = extractvalue { i64, ptr } %t74, 0
  %t79 = extractvalue { i64, ptr } %t74, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %t77, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l36, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t84, { i64, ptr } %t83)
  br label %bb28
bb28:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/bindgen:cMacro", ptr %l5, i32 0, i32 3
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t92 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v0, ptr %s2, ptr %s2, ptr %t86, { i64, ptr } %t88, ptr %l6, i64 0)
  %t93 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t92, 1
  %t94 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t92, 0
  store i32 %t94, ptr %l47
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb30, label %ok.96, !prof !99
ok.96:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l46
  br label %bb29
bb29:
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l42
  br label %bb32
bb30:
  %t98 = load i32, ptr %l47, !tbaa !23
  %t99 = ashr i32 %t98, 16
  %t101 = icmp eq i32 %t99, 1
  store i1 %t101, ptr %l49, !tbaa !21
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb32:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l7
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l7)
  store i64 %t104, ptr %l51
  br label %bb33
bb33:
  %t105 = load i64, ptr %l51, !tbaa !24
  %t106 = icmp eq i64 %t105, 0
  br i1 %t106, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb37
bb35:
  %t109 = call i64 @compiler_2fbindgen_2ebodyKind(ptr %s2, ptr %l7)
  store i64 %t109, ptr %l55
  br label %bb36
bb36:
  %t110 = load i64, ptr %l55, !tbaa !24
  %t111 = icmp ne i64 %t110, 0
  store i1 %t111, ptr %l53, !tbaa !21
  br label %bb37
bb37:
  %t113 = load i1, ptr %l53, !tbaa !21
  br i1 %t113, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb39:
  br label %bb40
bb40:
  %t114 = load ptr, ptr %lp1
  %t115 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t114, i64 %t115)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t118 = load i64, ptr %l3, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l3, !tbaa !24
  br label %bb2
bb43:
  %t122 = load ptr, ptr %lp1
  %t123 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFns(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/bindgen:cMacro"
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/bindgen:cMacro"
  %l17 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i32
  %l46 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca i64
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 12
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/bindgen:cMacro" %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load %"compiler/bindgen:cMacro", ptr %l15
  store %"compiler/bindgen:cMacro" %t20, ptr %l3
  %t21 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t22, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t24, ptr %l17
  br label %bb7
bb7:
  %t25 = load i1, ptr %l17, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t26 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 1
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb13
bb12:
  %t32 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 4
  %t33 = load i1, ptr %t32, !tbaa !21
  %t35 = xor i1 %t33, true
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb17
bb15:
  %t38 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t39)
  store i1 %t41, ptr %l26
  br label %bb16
bb16:
  %t42 = load i1, ptr %l26, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb17
bb17:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb21
bb19:
  %t46 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/bindgen:gen", ptr %t49, i32 0, i32 21
  %t55 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t51, { i64, ptr } %t47)
  store i1 %t55, ptr %l33
  br label %bb20
bb20:
  %t56 = load i1, ptr %l33, !tbaa !21
  store i1 %t56, ptr %l28, !tbaa !21
  br label %bb21
bb21:
  %t57 = load i1, ptr %l28, !tbaa !21
  br i1 %t57, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb25
bb23:
  %t58 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  %t61 = call i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %t59)
  store i1 %t61, ptr %l36
  br label %bb24
bb24:
  %t62 = load i1, ptr %l36, !tbaa !21
  store i1 %t62, ptr %l34, !tbaa !21
  br label %bb25
bb25:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb27:
  br label %bb28
bb28:
  %t64 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 5
  %t65 = load i1, ptr %t64, !tbaa !21
  br i1 %t65, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %s4, ptr %t67, { i64, ptr } %t69, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb32:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t75 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFn(ptr %v0, ptr %s2, ptr %s2, ptr %t72, ptr %l3)
  %t76 = extractvalue { i32, { i64, ptr } } %t75, 1
  %t77 = extractvalue { i32, { i64, ptr } } %t75, 0
  store i32 %t77, ptr %l44
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb34, label %ok.79, !prof !99
ok.79:
  store { i64, ptr } %t76, ptr %l43
  br label %bb33
bb33:
  %t80 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t80, ptr %l40, !tbaa !27
  br label %bb37
bb34:
  %t81 = load i32, ptr %l44, !tbaa !23
  %t82 = ashr i32 %t81, 16
  %t84 = icmp eq i32 %t82, 1
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb35
bb35:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/bindgen:gen", ptr %t88, i32 0, i32 25
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %v0, ptr %t85, { i64, ptr } %t87, { i64, ptr } %t91)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb37:
  %t95 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t95, ptr %l5, !tbaa !27
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/bindgen:gen", ptr %t96, i32 0, i32 14
  store ptr %t98, ptr %l52, !tbaa !29
  %t99 = ptrtoint ptr %v0 to i64
  store i64 %t99, ptr %l53, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t100, label %bb38, label %bb39
bb38:
  %t102 = call ptr @__olang_region_make(ptr %v0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l53, !tbaa !24
  br label %bb39
bb39:
  %t104 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 1
  %t107 = extractvalue { i64, ptr } %t104, 0
  %t108 = load i64, ptr %l53
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call ptr @__olang_scope_alloc(ptr %t109, i64 %t107)
  call void @olang_textcopy(ptr %t110, ptr %t106, i64 %t107)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t114 = load i64, ptr %l53
  %t115 = inttoptr i64 %t114 to ptr
  %t116 = extractvalue { i64, ptr } %t112, 0
  %t117 = extractvalue { i64, ptr } %t112, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %t115, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t122 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t122, { i64, ptr } %t121)
  br label %bb40
bb40:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/bindgen:gen", ptr %t124, i32 0, i32 21
  store ptr %t126, ptr %l59, !tbaa !29
  %t127 = ptrtoint ptr %v0 to i64
  store i64 %t127, ptr %l60, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t128, label %bb41, label %bb42
bb41:
  %t130 = call ptr @__olang_region_make(ptr %v0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l60, !tbaa !24
  br label %bb42
bb42:
  %t132 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = extractvalue { i64, ptr } %t133, 0
  %t137 = load i64, ptr %l60
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = call ptr @__olang_scope_alloc(ptr %t138, i64 %t136)
  call void @olang_textcopy(ptr %t139, ptr %t135, i64 %t136)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  %t143 = load i64, ptr %l60
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = extractvalue { i64, ptr } %t141, 0
  %t146 = extractvalue { i64, ptr } %t141, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t151 = load ptr, ptr %l59, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t151, { i64, ptr } %t150, i64 0)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb44:
  %t153 = load i64, ptr %l2, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l2, !tbaa !24
  br label %bb1
bb45:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enamedConst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca i1
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @compiler_2fbindgen_2eusable(ptr %v1, { i64, ptr } %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:gen", ptr %t9, i32 0, i32 10
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %t11, { i64, ptr } %t7)
  store i1 %t15, ptr %l12
  br label %bb4
bb4:
  %t16 = load i1, ptr %l12, !tbaa !21
  store i1 %t16, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l7, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/bindgen:gen", ptr %t18, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v2, ptr %t20, { i64, ptr } %a2)
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/bindgen:gen", ptr %t24, i32 0, i32 10
  store ptr %t26, ptr %l17, !tbaa !29
  %t27 = ptrtoint ptr %v0 to i64
  store i64 %t27, ptr %l18, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t30 = call ptr @__olang_region_make(ptr %v0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb11
bb11:
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 1
  %t35 = extractvalue { i64, ptr } %t32, 0
  %t36 = load i64, ptr %l18
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t35)
  call void @olang_textcopy(ptr %t38, ptr %t34, i64 %t35)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t42 = load i64, ptr %l18
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = extractvalue { i64, ptr } %t40, 0
  %t45 = extractvalue { i64, ptr } %t40, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %t43, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t50 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t50, { i64, ptr } %t49, i64 0)
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/bindgen:gen", ptr %t52, i32 0, i32 21
  store ptr %t54, ptr %l24, !tbaa !29
  %t55 = ptrtoint ptr %v0 to i64
  store i64 %t55, ptr %l25, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = call ptr @__olang_region_make(ptr %v0)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l25, !tbaa !24
  br label %bb14
bb14:
  %t60 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 1
  %t63 = extractvalue { i64, ptr } %t60, 0
  %t64 = load i64, ptr %l25
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t63)
  call void @olang_textcopy(ptr %t66, ptr %t62, i64 %t63)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t70 = load i64, ptr %l25
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = extractvalue { i64, ptr } %t68, 0
  %t73 = extractvalue { i64, ptr } %t68, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %t71, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t78, { i64, ptr } %t77, i64 0)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eotherConsts(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/bindgen:cMacro"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/bindgen:cparse"
  %l11 = alloca %"compiler/bindgen:cx"
  %l12 = alloca i1
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca %"compiler/bindgen:cMacro"
  %l24 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l45 = alloca i1
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca ptr
  %l51 = alloca i64
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i32
  %l63 = alloca i1
  %l69 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l76 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l89 = alloca i64
  %l92 = alloca { i64, ptr }
  %l93 = alloca i64
  %l98 = alloca %"compiler/bindgen:cparse"
  %l99 = alloca %"compiler/bindgen:cx"
  %l102 = alloca %"compiler/bindgen:cx"
  %l103 = alloca i32
  %l105 = alloca i1
  %l110 = alloca i64
  %l112 = alloca i64
  %l114 = alloca i1
  %l119 = alloca i64
  %l121 = alloca i1
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l126 = alloca i1
  %l127 = alloca i1
  %l129 = alloca i64
  %l131 = alloca i1
  %l133 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca i1
  %l137 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l140 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca { i64, ptr }
  %l143 = alloca i64
  %l145 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 12
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l15, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l17
  br label %bb2
bb2:
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = load i64, ptr %l17, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb110
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/bindgen:cMacro" %t19, ptr %l22
  br label %bb6
bb6:
  %t20 = load %"compiler/bindgen:cMacro", ptr %l22
  store %"compiler/bindgen:cMacro" %t20, ptr %l3
  %t21 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t22, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store i1 %t24, ptr %l24
  br label %bb7
bb7:
  %t25 = load i1, ptr %l24, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb10
bb9:
  %t26 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 1
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t29 = load i1, ptr %l25, !tbaa !21
  br i1 %t29, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb12:
  %t30 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 4
  %t31 = load i1, ptr %t30, !tbaa !21
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t35 = load i1, ptr %l27, !tbaa !21
  br i1 %t35, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb17
bb15:
  %t36 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t37)
  store i1 %t39, ptr %l32
  br label %bb16
bb16:
  %t40 = load i1, ptr %l32, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t43 = load i1, ptr %l30, !tbaa !21
  br i1 %t43, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb21
bb19:
  %t44 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/bindgen:gen", ptr %t47, i32 0, i32 10
  %t53 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t49, { i64, ptr } %t45)
  store i1 %t53, ptr %l39
  br label %bb20
bb20:
  %t54 = load i1, ptr %l39, !tbaa !21
  store i1 %t54, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t55 = load i1, ptr %l34, !tbaa !21
  br i1 %t55, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb25
bb23:
  %t56 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/bindgen:gen", ptr %t59, i32 0, i32 21
  %t65 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t61, { i64, ptr } %t57)
  store i1 %t65, ptr %l45
  br label %bb24
bb24:
  %t66 = load i1, ptr %l45, !tbaa !21
  store i1 %t66, ptr %l40, !tbaa !21
  br label %bb25
bb25:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb109
bb27:
  br label %bb28
bb28:
  %t68 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 3
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t73 = icmp eq i64 %t71, 0
  br i1 %t73, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb109
bb30:
  br label %bb31
bb31:
  %t75 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l49
  br label %bb32
bb32:
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l6
  store ptr %l6, ptr %l50, !tbaa !29
  %t77 = ptrtoint ptr %s2 to i64
  store i64 %t77, ptr %l51, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t78, label %bb33, label %bb34
bb33:
  %t80 = call ptr @__olang_region_make(ptr %s2)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l51, !tbaa !24
  br label %bb34
bb34:
  %t82 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 1
  %t86 = extractvalue { i64, ptr } %t83, 0
  %t87 = load i64, ptr %l51
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = call ptr @__olang_scope_alloc(ptr %t88, i64 %t86)
  call void @olang_textcopy(ptr %t89, ptr %t85, i64 %t86)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = load i64, ptr %l51
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = extractvalue { i64, ptr } %t91, 0
  %t96 = extractvalue { i64, ptr } %t91, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load ptr, ptr %l50, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s2, ptr %s2, ptr %t101, { i64, ptr } %t100)
  br label %bb35
bb35:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 3
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t109 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v0, ptr %s2, ptr %s2, ptr %t103, { i64, ptr } %t105, ptr %l6, i64 0)
  %t110 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t109, 1
  %t111 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t109, 0
  store i32 %t111, ptr %l61
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb37, label %ok.113, !prof !99
ok.113:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l60
  br label %bb36
bb36:
  %t114 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l56
  br label %bb40
bb37:
  %t115 = load i32, ptr %l61, !tbaa !23
  %t116 = ashr i32 %t115, 16
  %t118 = icmp eq i32 %t116, 1
  store i1 %t118, ptr %l63, !tbaa !21
  br label %bb38
bb38:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/bindgen:gen", ptr %t122, i32 0, i32 25
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %v0, ptr %t119, { i64, ptr } %t121, { i64, ptr } %t125)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb109
bb40:
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l7
  %t131 = call i64 @compiler_2fbindgen_2ebodyKind(ptr %s2, ptr %l7)
  store i64 %t131, ptr %l69
  br label %bb41
bb41:
  %t132 = load i64, ptr %l69, !tbaa !24
  store i64 %t132, ptr %l8, !tbaa !24
  %t133 = load i64, ptr %l8, !tbaa !24
  %t135 = icmp eq i64 %t133, 2
  br i1 %t135, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t138 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s2, ptr %s2, ptr %l7)
  store { i64, ptr } %t138, ptr %l73
  br label %bb44
bb43:
  br label %bb54
bb44:
  %t139 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t140 = call { i64, ptr } @compiler_2fbindgen_2etextLiteral(ptr %s2, ptr %s7, { i64, ptr } %t139)
  store { i64, ptr } %t140, ptr %l74
  br label %bb45
bb45:
  %t141 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t141, ptr %l9, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s7, ptr %s7, { i64, ptr } %t142, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d94, i32 0, i32 1) })
  store i1 %t144, ptr %l76
  br label %bb46
bb46:
  %t145 = load i1, ptr %l76, !tbaa !21
  br i1 %t145, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %s8, ptr %t146, { i64, ptr } %t148, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb49
bb48:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l79, !tbaa !29
  %t152 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l80, !tbaa !27
  %t154 = ptrtoint ptr %v0 to i64
  store i64 %t154, ptr %l81, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t155, label %bb50, label %bb51
bb49:
  call void @__olang_scope_close(ptr %s8)
  br label %bb53
bb50:
  %t157 = call ptr @__olang_region_make(ptr %v0)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l81, !tbaa !24
  br label %bb51
bb51:
  %t159 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t160, 1
  %t164 = extractvalue { i64, ptr } %t160, 0
  %t165 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t167 = add i64 %t164, %t166
  %t169 = extractvalue { i64, ptr } %t161, 1
  %t170 = extractvalue { i64, ptr } %t161, 0
  %t171 = add i64 %t167, %t170
  %t172 = load i64, ptr %l81
  %t173 = inttoptr i64 %t172 to ptr
  %t174 = call ptr @__olang_scope_alloc(ptr %t173, i64 %t171)
  call void @olang_textcopy(ptr %t174, ptr %t163, i64 %t164)
  %t175 = getelementptr i8, ptr %t174, i64 %t164
  call void @olang_textcopy(ptr %t175, ptr %t165, i64 %t166)
  %t176 = getelementptr i8, ptr %t175, i64 %t166
  call void @olang_textcopy(ptr %t176, ptr %t169, i64 %t170)
  %t177 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t174, 1
  %t180 = load i64, ptr %l81
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = extractvalue { i64, ptr } %t178, 0
  %t183 = extractvalue { i64, ptr } %t178, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %t181, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t188 = load ptr, ptr %l79, !tbaa !29
  %t189 = load { i64, ptr }, ptr %l80, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enamedConst(ptr %v0, ptr %v0, ptr %v0, ptr %t188, { i64, ptr } %t189, { i64, ptr } %t187)
  br label %bb52
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  br label %bb109
bb54:
  %t191 = load i64, ptr %l8, !tbaa !24
  %t193 = icmp eq i64 %t191, 1
  br i1 %t193, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s11
  %t195 = ptrtoint ptr %s2 to i64
  store i64 %t195, ptr %l89, !tbaa !24
  %t196 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acparse_2e0
  br i1 %t196, label %bb57, label %bb58
bb56:
  br label %bb107
bb57:
  %t198 = call ptr @__olang_region_make(ptr %s2)
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l89, !tbaa !24
  br label %bb58
bb58:
  %t200 = load i64, ptr %l89
  %t201 = inttoptr i64 %t200 to ptr
  %t203 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s2, ptr %t201, ptr %l7)
  store { i64, ptr } %t203, ptr %l92
  br label %bb59
bb59:
  %t204 = ptrtoint ptr %s11 to i64
  store i64 %t204, ptr %l93, !tbaa !24
  %t205 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3acparse_2e1
  br i1 %t205, label %bb60, label %bb61
bb60:
  %t207 = call ptr @__olang_region_make(ptr %s11)
  %t208 = ptrtoint ptr %t207 to i64
  store i64 %t208, ptr %l93, !tbaa !24
  br label %bb61
bb61:
  %t209 = icmp sge i64 0, 0
  br i1 %t209, label %bb62, label %bb63
bb62:
  %t211 = icmp sle i64 0, 576460752303423487
  br i1 %t211, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_588cbeac7c6acbe1_e04f9e86f435a7f5)
  unreachable
bb64:
  %t213 = mul i64 0, 16
  %t214 = load i64, ptr %l93
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = insertvalue { i64, ptr } undef, i64 0, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t218 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t220 = call %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %s2, ptr %s11, ptr %s11, { i64, ptr } %t218, { i64, ptr } %t217)
  store %"compiler/bindgen:cparse" %t220, ptr %l98
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_588cbeac7c6acbe1_e04f9e86f435a7f5)
  unreachable
bb66:
  %t221 = load %"compiler/bindgen:cparse", ptr %l98
  store %"compiler/bindgen:cparse" %t221, ptr %l10
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t225 = call { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %s11, ptr %s11, ptr %t222, ptr %l10)
  %t226 = extractvalue { i32, %"compiler/bindgen:cx" } %t225, 1
  %t227 = extractvalue { i32, %"compiler/bindgen:cx" } %t225, 0
  store i32 %t227, ptr %l103
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb68, label %ok.229, !prof !99
ok.229:
  store %"compiler/bindgen:cx" %t226, ptr %l102
  br label %bb67
bb67:
  %t230 = load %"compiler/bindgen:cx", ptr %l102
  store %"compiler/bindgen:cx" %t230, ptr %l99
  br label %bb71
bb68:
  %t231 = load i32, ptr %l103, !tbaa !23
  %t232 = ashr i32 %t231, 16
  %t234 = icmp eq i32 %t232, 1
  store i1 %t234, ptr %l105, !tbaa !21
  br label %bb69
bb69:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !27
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/bindgen:gen", ptr %t238, i32 0, i32 25
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %v0, ptr %t235, { i64, ptr } %t237, { i64, ptr } %t241)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s2)
  br label %bb109
bb71:
  %t245 = load %"compiler/bindgen:cx", ptr %l99
  store %"compiler/bindgen:cx" %t245, ptr %l11
  %t246 = getelementptr %"compiler/bindgen:cparse", ptr %l10, i32 0, i32 2
  %t247 = load i64, ptr %t246, !tbaa !24
  store i64 %t247, ptr %l110, !tbaa !24
  %t249 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l7)
  store i64 %t249, ptr %l112
  br label %bb72
bb72:
  %t250 = load i64, ptr %l110, !tbaa !24
  %t251 = load i64, ptr %l112, !tbaa !24
  %t252 = icmp eq i64 %t250, %t251
  br i1 %t252, label %bb73, label %bb74
bb73:
  %t254 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 1
  %t255 = load i64, ptr %t254, !tbaa !24
  %t256 = load i64, ptr @G_2ecompiler_2fbindgen_2eKFloat, !tbaa !24
  %t259 = icmp eq i64 %t255, %t256
  store i1 %t259, ptr %l114, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb75
bb75:
  %t261 = load i1, ptr %l114, !tbaa !21
  br i1 %t261, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s13
  %t263 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l7)
  store i64 %t263, ptr %l119
  br label %bb78
bb77:
  br label %bb106
bb78:
  %t264 = load i64, ptr %l119, !tbaa !24
  %t265 = icmp eq i64 %t264, 1
  br i1 %t265, label %bb79, label %bb80
bb79:
  %t268 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l7, i64 0)
  store { i64, ptr } %t268, ptr %l123
  br label %bb81
bb80:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb84
bb81:
  %t269 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t270 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %s2, ptr %s13, { i64, ptr } %t269)
  store { i64, ptr } %t270, ptr %l124
  br label %bb82
bb82:
  %t271 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  %t273 = extractvalue { i64, ptr } %t271, 1
  %t274 = mul i64 %t272, 1
  %t275 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t274)
  call void @llvm.memcpy.p0.p0.i64(ptr %t275, ptr %t273, i64 %t274, i1 false)
  %t276 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  %t279 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s13, ptr %s13, { i64, ptr } %t277, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) })
  store i1 %t279, ptr %l126
  br label %bb83
bb83:
  %t280 = load i1, ptr %l126, !tbaa !21
  store i1 %t280, ptr %l121, !tbaa !21
  br label %bb84
bb84:
  %t281 = load i1, ptr %l121, !tbaa !21
  br i1 %t281, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb99
bb86:
  %t283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l7)
  store i64 %t283, ptr %l129
  br label %bb87
bb87:
  %t284 = load i64, ptr %l129, !tbaa !24
  %t285 = icmp eq i64 %t284, 3
  br i1 %t285, label %bb88, label %bb89
bb88:
  %t288 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l7, i64 0)
  store { i64, ptr } %t288, ptr %l133
  br label %bb90
bb89:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb92
bb90:
  %t289 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t290 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s13, { i64, ptr } %t289, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t290, ptr %l134
  br label %bb91
bb91:
  %t291 = load i1, ptr %l134, !tbaa !21
  store i1 %t291, ptr %l131, !tbaa !21
  br label %bb92
bb92:
  %t292 = load i1, ptr %l131, !tbaa !21
  br i1 %t292, label %bb93, label %bb94
bb93:
  %t294 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %l7, i64 1)
  store { i64, ptr } %t294, ptr %l137
  br label %bb95
bb94:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb98
bb95:
  %t295 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t296 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %s2, ptr %s13, { i64, ptr } %t295)
  store { i64, ptr } %t296, ptr %l138
  br label %bb96
bb96:
  %t297 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  %t299 = extractvalue { i64, ptr } %t297, 1
  %t300 = mul i64 %t298, 1
  %t301 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t300)
  call void @llvm.memcpy.p0.p0.i64(ptr %t301, ptr %t299, i64 %t300, i1 false)
  %t302 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s13, ptr %s13, { i64, ptr } %t303, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t305, ptr %l140
  br label %bb97
bb97:
  %t306 = load i1, ptr %l140, !tbaa !21
  store i1 %t306, ptr %l135, !tbaa !21
  br label %bb98
bb98:
  %t307 = load i1, ptr %l135, !tbaa !21
  store i1 %t307, ptr %l127, !tbaa !21
  br label %bb99
bb99:
  %t308 = load i1, ptr %l127, !tbaa !21
  store i1 %t308, ptr %l12, !tbaa !21
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l141, !tbaa !29
  %t310 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t311 = load { i64, ptr }, ptr %t310, !tbaa !27
  store { i64, ptr } %t311, ptr %l142, !tbaa !27
  %t312 = ptrtoint ptr %v0 to i64
  store i64 %t312, ptr %l143, !tbaa !24
  %t313 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t313, label %bb100, label %bb101
bb100:
  %t315 = call ptr @__olang_region_make(ptr %v0)
  %t316 = ptrtoint ptr %t315 to i64
  store i64 %t316, ptr %l143, !tbaa !24
  br label %bb101
bb101:
  %t317 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  store { i64, ptr } %t318, ptr %l145, !tbaa !27
  %t319 = load i1, ptr %l12, !tbaa !21
  br i1 %t319, label %bb102, label %bb103
bb102:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l147, !tbaa !27
  br label %bb104
bb103:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l147, !tbaa !27
  br label %bb104
bb104:
  %t321 = getelementptr %"compiler/bindgen:cx", ptr %l11, i32 0, i32 0
  %t322 = load { i64, ptr }, ptr %t321, !tbaa !27
  %t323 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 1
  %t325 = extractvalue { i64, ptr } %t323, 0
  %t326 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = extractvalue { i64, ptr } %t326, 0
  %t329 = add i64 %t325, %t328
  %t331 = extractvalue { i64, ptr } %t322, 1
  %t332 = extractvalue { i64, ptr } %t322, 0
  %t333 = add i64 %t329, %t332
  %t334 = load i64, ptr %l143
  %t335 = inttoptr i64 %t334 to ptr
  %t336 = call ptr @__olang_scope_alloc(ptr %t335, i64 %t333)
  call void @olang_textcopy(ptr %t336, ptr %t324, i64 %t325)
  %t337 = getelementptr i8, ptr %t336, i64 %t325
  call void @olang_textcopy(ptr %t337, ptr %t327, i64 %t328)
  %t338 = getelementptr i8, ptr %t337, i64 %t328
  call void @olang_textcopy(ptr %t338, ptr %t331, i64 %t332)
  %t339 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t336, 1
  %t342 = load i64, ptr %l143
  %t343 = inttoptr i64 %t342 to ptr
  %t344 = extractvalue { i64, ptr } %t340, 0
  %t345 = extractvalue { i64, ptr } %t340, 1
  %t346 = mul i64 %t344, 1
  %t347 = call ptr @__olang_scope_alloc(ptr %t343, i64 %t346)
  call void @llvm.memcpy.p0.p0.i64(ptr %t347, ptr %t345, i64 %t346, i1 false)
  %t348 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t347, 1
  %t350 = load ptr, ptr %l141, !tbaa !29
  %t351 = load { i64, ptr }, ptr %l142, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enamedConst(ptr %v0, ptr %v0, ptr %v0, ptr %t350, { i64, ptr } %t351, { i64, ptr } %t349)
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s2)
  br label %bb109
bb106:
  call void @__olang_scope_close(ptr %s11)
  br label %bb107
bb107:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/bindgen:cMacro", ptr %l3, i32 0, i32 0
  %t355 = load { i64, ptr }, ptr %t354, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v0, ptr %s2, ptr %t353, { i64, ptr } %t355, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s2)
  br label %bb109
bb109:
  %t358 = load i64, ptr %l2, !tbaa !24
  %t360 = add i64 %t358, 1
  store i64 %t360, ptr %l2, !tbaa !24
  br label %bb1
bb110:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i64
  %l13 = alloca ptr
  %l18 = alloca i1
  %l22 = alloca %"compiler/bindgen:record"
  %l24 = alloca %"compiler/bindgen:record"
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t31 = alloca %"compiler/bindgen:record", align 8
  %t34 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  store i1 true, ptr %l4, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/bindgen:gen", ptr %t9, i32 0, i32 5
  %t15 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t11, i64 %t7)
  store ptr %t15, ptr %l13
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t18 = load i1, ptr %l4, !tbaa !21
  %t21 = getelementptr %"compiler/bindgen:record", ptr %t16, i32 0, i32 8
  store i1 %t18, ptr %t21, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/bindgen:gen", ptr %t22, i32 0, i32 23
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/bindgen:gen", ptr %t27, i32 0, i32 5
  %t30 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %t31, ptr %v0, ptr %v0, ptr %t29, i64 %t30)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t31, i64 216, i1 false)
  br label %bb5
bb4:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb8
bb5:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %t34, ptr %v0, ptr %l22)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t34, i64 216, i1 false)
  br label %bb6
bb6:
  %t36 = getelementptr %"compiler/bindgen:record", ptr %l24, i32 0, i32 7
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) })
  store i1 %t39, ptr %l26
  br label %bb7
bb7:
  %t40 = load i1, ptr %l26, !tbaa !21
  store i1 %t40, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l27, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  store i64 %t43, ptr %l28, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/bindgen:gen", ptr %t44, i32 0, i32 22
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t50 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v0, ptr %t46, { i64, ptr } %t47)
  %t51 = extractvalue { i32, { i64, ptr } } %t50, 1
  %t52 = extractvalue { i32, { i64, ptr } } %t50, 0
  store i32 %t52, ptr %l34
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb12, label %ok.54, !prof !99
ok.54:
  store { i64, ptr } %t51, ptr %l33
  br label %bb11
bb10:
  br label %bb16
bb11:
  %t55 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t55, ptr %l29, !tbaa !27
  br label %bb14
bb12:
  br label %bb13
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l27, !tbaa !29
  %t57 = load i64, ptr %l28, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v0, ptr %t56, i64 %t57, { i64, ptr } %t58)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t59 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l19 = alloca %"compiler/bindgen:record"
  %l21 = alloca ptr
  %l22 = alloca i64
  %l26 = alloca { i64, ptr }
  %l29 = alloca i64
  %l33 = alloca i64
  %rv = alloca i64
  %t46 = alloca %"compiler/bindgen:record", align 8
  %t49 = alloca %"compiler/bindgen:record", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 6
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/bindgen:gen", ptr %t20, i32 0, i32 5
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l14, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3arecord_2e0
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = call ptr @__olang_region_make(ptr %v0)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l14, !tbaa !24
  br label %bb9
bb9:
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = extractvalue { i64, ptr } %t28, 0
  %t32 = load i64, ptr %l14
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call ptr @__olang_scope_alloc(ptr %t33, i64 %t31)
  call void @olang_textcopy(ptr %t34, ptr %t30, i64 %t31)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t38 = load i64, ptr %l14
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = extractvalue { i64, ptr } %t36, 0
  %t41 = extractvalue { i64, ptr } %t36, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %t39, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  call void @compiler_2fbindgen_3arecord_2ector(ptr %t46, ptr %v0, ptr %v0, { i64, ptr } %t45)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t46, i64 216, i1 false)
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l13, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t49, ptr %l19, i64 216, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ePush_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t48, ptr %t49)
  br label %bb11
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/bindgen:gen", ptr %t50, i32 0, i32 6
  store ptr %t52, ptr %l21, !tbaa !29
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l22, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = call ptr @__olang_region_make(ptr %v0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l22, !tbaa !24
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = load i64, ptr %l22
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t60, i64 %t61)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  %t68 = load i64, ptr %l22
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = extractvalue { i64, ptr } %t66, 0
  %t71 = extractvalue { i64, ptr } %t66, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l26, !tbaa !27
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/bindgen:gen", ptr %t76, i32 0, i32 5
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t78)
  store i64 %t80, ptr %l29
  br label %bb14
bb14:
  %t81 = load i64, ptr %l29, !tbaa !24
  %t82 = sub i64 %t81, 1
  %t83 = load ptr, ptr %l21, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t83, { i64, ptr } %t84, i64 %t82)
  br label %bb15
bb15:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/bindgen:gen", ptr %t86, i32 0, i32 5
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t88)
  store i64 %t90, ptr %l33
  br label %bb16
bb16:
  %t91 = load i64, ptr %l33, !tbaa !24
  %t92 = sub i64 %t91, 1
  store i64 %t92, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskippedMacro(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 18
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 1
  %t25 = extractvalue { i64, ptr } %t22, 0
  %t26 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t24, i64 %t25)
  %t30 = getelementptr i8, ptr %t29, i64 %t25
  call void @olang_textcopy(ptr %t30, ptr %t26, i64 %t27)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t20, { i64, ptr } %t39)
  store i1 %t42, ptr %l20
  br label %bb7
bb7:
  %t43 = load i1, ptr %l20, !tbaa !21
  br i1 %t43, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l4, !tbaa !24
  br label %bb1
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/bindgen:gen", ptr %t48, i32 0, i32 18
  store ptr %t50, ptr %l24, !tbaa !29
  %t51 = ptrtoint ptr %v0 to i64
  store i64 %t51, ptr %l25, !tbaa !24
  %t52 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = call ptr @__olang_region_make(ptr %v0)
  %t55 = ptrtoint ptr %t54 to i64
  store i64 %t55, ptr %l25, !tbaa !24
  br label %bb14
bb14:
  %t56 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t56, 1
  %t60 = extractvalue { i64, ptr } %t56, 0
  %t61 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t65 = extractvalue { i64, ptr } %a2, 1
  %t66 = extractvalue { i64, ptr } %a2, 0
  %t67 = add i64 %t63, %t66
  %t68 = load i64, ptr %l25
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call ptr @__olang_scope_alloc(ptr %t69, i64 %t67)
  call void @olang_textcopy(ptr %t70, ptr %t59, i64 %t60)
  %t71 = getelementptr i8, ptr %t70, i64 %t60
  call void @olang_textcopy(ptr %t71, ptr %t61, i64 %t62)
  %t72 = getelementptr i8, ptr %t71, i64 %t62
  call void @olang_textcopy(ptr %t72, ptr %t65, i64 %t66)
  %t73 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t70, 1
  %t76 = load i64, ptr %l25
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = extractvalue { i64, ptr } %t74, 0
  %t79 = extractvalue { i64, ptr } %t74, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %t77, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t84, { i64, ptr } %t83)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etrackFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/bindgen:gen", ptr %t18, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v0, { i64, ptr } %t17, { i64, ptr } %t21)
  store i1 %t24, ptr %l14
  br label %bb6
bb6:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i64 1, ptr %l15, !tbaa !24
  br label %bb13
bb8:
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v2, { i64, ptr } %t26, { i64, ptr } %a2)
  store i1 %t30, ptr %l18
  br label %bb9
bb9:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store i64 2, ptr %l19, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t32 = load i64, ptr %l19, !tbaa !24
  store i64 %t32, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = load ptr, ptr %l10, !tbaa !29
  %t35 = getelementptr %"compiler/bindgen:gen", ptr %t34, i32 0, i32 26
  store i64 %t33, ptr %t35, !tbaa !24
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_3dee357bb9e78e13_5fc101397bdf658f)
  unreachable
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2etypeName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l35 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l45 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l62 = alloca { i64, ptr }
  %l64 = alloca i64
  %l67 = alloca i1
  %l68 = alloca i1
  %l70 = alloca i1
  %l71 = alloca i1
  %l73 = alloca i1
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l79 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l85 = alloca i64
  %l88 = alloca i1
  %l89 = alloca i1
  %l91 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l98 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i1
  %l107 = alloca i1
  %l108 = alloca i1
  %l112 = alloca { i64, ptr }
  %l114 = alloca i64
  %l116 = alloca ptr
  %l120 = alloca i1
  %l123 = alloca i64
  %l125 = alloca i1
  %l128 = alloca i1
  %l130 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i64
  %l142 = alloca i64
  %l144 = alloca i1
  %l145 = alloca i1
  %l147 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca i64
  %l154 = alloca i64
  %l155 = alloca ptr
  %l156 = alloca i32
  %l157 = alloca i64
  %l163 = alloca i64
  %l165 = alloca i1
  %l167 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l172 = alloca i32
  %l174 = alloca i1
  %l175 = alloca ptr
  %l176 = alloca i64
  %l181 = alloca i64
  %l186 = alloca i64
  %l191 = alloca i64
  %l197 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d107, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t1, ptr %l14, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t2, 0
  store i64 %t3, ptr %l15, !tbaa !24
  %t4 = load i64, ptr %l15, !tbaa !24
  %t5 = mul i64 %t4, 1
  %t6 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t5)
  %t7 = insertvalue { i64, ptr } undef, i64 %t4, 0
  %t8 = insertvalue { i64, ptr } %t7, ptr %t6, 1
  store { i64, ptr } %t8, ptr %l16, !tbaa !27
  %t9 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = mul i64 %t13, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t10, ptr %t12, i64 %t14, i1 false)
  %t15 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  store i1 false, ptr %l6, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d108, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t16, ptr %l18, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l19, !tbaa !24
  %t19 = load i64, ptr %l19, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l20, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t30, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d109, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t31, ptr %l22, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l23, !tbaa !24
  %t34 = load i64, ptr %l23, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l24, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l23, !tbaa !24
  %t44 = mul i64 %t43, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t45, ptr %l8, !tbaa !27
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/bindgen:ctp", ptr %t46, i32 0, i32 1
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/bindgen:ctp", ptr %t50, i32 0, i32 0
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t58 = icmp slt i64 %t49, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s1)
  br label %bb100
bb3:
  br label %bb4
bb4:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s1, ptr %t62, i64 0)
  store { i64, ptr } %t64, ptr %l33
  br label %bb5
bb5:
  %t65 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t65, ptr %l9, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s1, { i64, ptr } %t66, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d110, i32 0, i32 1) })
  store i1 %t68, ptr %l35
  br label %bb6
bb6:
  %t69 = load i1, ptr %l35, !tbaa !21
  br i1 %t69, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb98
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t70 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t70, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store i1 %t72, ptr %l37
  br label %bb9
bb9:
  %t73 = load i1, ptr %l37, !tbaa !21
  br i1 %t73, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb13
bb11:
  %t74 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t74, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d112, i32 0, i32 1) })
  store i1 %t76, ptr %l40
  br label %bb12
bb12:
  %t77 = load i1, ptr %l40, !tbaa !21
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb13
bb13:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb17
bb15:
  %t79 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s3, { i64, ptr } %t79, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t81, ptr %l43
  br label %bb16
bb16:
  %t82 = load i1, ptr %l43, !tbaa !21
  store i1 %t82, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t83 = load i1, ptr %l41, !tbaa !21
  br i1 %t83, label %bb18, label %bb19
bb18:
  br label %bb97
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  %t84 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t86 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s5, { i64, ptr } %t84, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t86, ptr %l45
  br label %bb20
bb20:
  %t87 = load i1, ptr %l45, !tbaa !21
  br i1 %t87, label %bb21, label %bb22
bb21:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb96
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t88 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s7, { i64, ptr } %t88, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store i1 %t90, ptr %l47
  br label %bb23
bb23:
  %t91 = load i1, ptr %l47, !tbaa !21
  br i1 %t91, label %bb24, label %bb25
bb24:
  store i64 2, ptr %l3, !tbaa !24
  br label %bb95
bb25:
  store %olang.scope zeroinitializer, ptr %s9
  %t92 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s9, { i64, ptr } %t92, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t94, ptr %l49
  br label %bb26
bb26:
  %t95 = load i1, ptr %l49, !tbaa !21
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t96 = load i64, ptr %l4, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l4, !tbaa !24
  br label %bb94
bb28:
  store %olang.scope zeroinitializer, ptr %s11
  %t100 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t104 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s11, ptr %s11, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x { i64, ptr }] }>, ptr @.d117, i32 0, i32 1) }, { i64, ptr } %t100)
  store i1 %t104, ptr %l54
  br label %bb29
bb29:
  %t105 = load i1, ptr %l54, !tbaa !21
  br i1 %t105, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s12
  %t106 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t108 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s12, { i64, ptr } %t106, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store i1 %t108, ptr %l56
  br label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s15
  %t109 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t111 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s15, { i64, ptr } %t109, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d119, i32 0, i32 1) })
  store i1 %t111, ptr %l67
  br label %bb43
bb32:
  %t112 = load i1, ptr %l56, !tbaa !21
  %t113 = xor i1 %t112, true
  br i1 %t113, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb36
bb34:
  %t115 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t117 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s12, { i64, ptr } %t115, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d120, i32 0, i32 1) })
  store i1 %t117, ptr %l60
  br label %bb35
bb35:
  %t118 = load i1, ptr %l60, !tbaa !21
  store i1 %t118, ptr %l58, !tbaa !21
  br label %bb36
bb36:
  %t119 = load i1, ptr %l58, !tbaa !21
  br i1 %t119, label %bb37, label %bb38
bb37:
  %t120 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = extractvalue { i64, ptr } %t120, 0
  %t124 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t123)
  call void @olang_textcopy(ptr %t124, ptr %t122, i64 %t123)
  %t125 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  store { i64, ptr } %t126, ptr %l62, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  %t129 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l64, !tbaa !24
  %t132 = load i64, ptr %l64, !tbaa !24
  %t133 = icmp eq i64 %t128, %t132
  br i1 %t133, label %bb39, label %bb40
bb38:
  br label %bb42
bb39:
  %t135 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = load i64, ptr %l64, !tbaa !24
  %t140 = mul i64 %t139, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t136, ptr %t138, i64 %t140, i1 false)
  br label %bb41
bb40:
  %t141 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t141, ptr %l5, !tbaa !27
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s12)
  br label %bb93
bb43:
  %t142 = load i1, ptr %l67, !tbaa !21
  br i1 %t142, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb47
bb45:
  %t143 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s15, { i64, ptr } %t143, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d121, i32 0, i32 1) })
  store i1 %t145, ptr %l70
  br label %bb46
bb46:
  %t146 = load i1, ptr %l70, !tbaa !21
  store i1 %t146, ptr %l68, !tbaa !21
  br label %bb47
bb47:
  %t147 = load i1, ptr %l68, !tbaa !21
  br i1 %t147, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb51
bb49:
  %t148 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t150 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s15, { i64, ptr } %t148, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d122, i32 0, i32 1) })
  store i1 %t150, ptr %l73
  br label %bb50
bb50:
  %t151 = load i1, ptr %l73, !tbaa !21
  store i1 %t151, ptr %l71, !tbaa !21
  br label %bb51
bb51:
  %t152 = load i1, ptr %l71, !tbaa !21
  br i1 %t152, label %bb52, label %bb53
bb52:
  %t153 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 1
  %t156 = extractvalue { i64, ptr } %t153, 0
  %t157 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t156)
  call void @olang_textcopy(ptr %t157, ptr %t155, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l75, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 0
  store i64 %t163, ptr %l77, !tbaa !24
  %t165 = load i64, ptr %l77, !tbaa !24
  %t166 = icmp eq i64 %t161, %t165
  br i1 %t166, label %bb54, label %bb55
bb53:
  store %olang.scope zeroinitializer, ptr %s18
  %t168 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t170 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s18, { i64, ptr } %t168, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d123, i32 0, i32 1) })
  store i1 %t170, ptr %l88
  br label %bb61
bb54:
  %t171 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = load i64, ptr %l77, !tbaa !24
  %t176 = mul i64 %t175, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t172, ptr %t174, i64 %t176, i1 false)
  br label %bb56
bb55:
  %t177 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t177, ptr %l7, !tbaa !27
  br label %bb56
bb56:
  %t178 = load ptr, ptr %l1, !tbaa !29
  store ptr %t178, ptr %l79, !tbaa !29
  %t179 = load ptr, ptr %l79, !tbaa !29
  %t180 = getelementptr %"compiler/bindgen:ctp", ptr %t179, i32 0, i32 1
  %t181 = load i64, ptr %t180, !tbaa !24
  %t183 = add i64 %t181, 1
  %t185 = load ptr, ptr %l79, !tbaa !29
  %t186 = getelementptr %"compiler/bindgen:ctp", ptr %t185, i32 0, i32 1
  store i64 %t183, ptr %t186, !tbaa !24
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3actp_2eat(ptr %v1, ptr %s0, ptr %t187, i64 0)
  store { i64, ptr } %t189, ptr %l83
  br label %bb57
bb57:
  %t190 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  %t192 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  store i64 %t193, ptr %l85, !tbaa !24
  %t195 = load i64, ptr %l85, !tbaa !24
  %t196 = icmp eq i64 %t191, %t195
  br i1 %t196, label %bb58, label %bb59
bb58:
  %t198 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = load i64, ptr %l85, !tbaa !24
  %t203 = mul i64 %t202, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t199, ptr %t201, i64 %t203, i1 false)
  br label %bb60
bb59:
  %t204 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t204, ptr %l8, !tbaa !27
  br label %bb60
bb60:
  br label %bb92
bb61:
  %t205 = load i1, ptr %l88, !tbaa !21
  br i1 %t205, label %bb62, label %bb63
bb62:
  %t206 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t208 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s18, { i64, ptr } %t206, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d124, i32 0, i32 1) })
  store i1 %t208, ptr %l91
  br label %bb64
bb63:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb65
bb64:
  %t209 = load i1, ptr %l91, !tbaa !21
  store i1 %t209, ptr %l89, !tbaa !21
  br label %bb65
bb65:
  %t210 = load i1, ptr %l89, !tbaa !21
  br i1 %t210, label %bb66, label %bb67
bb66:
  %t211 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t213 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s18, { i64, ptr } %t211, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d125, i32 0, i32 1) })
  store i1 %t213, ptr %l94
  br label %bb68
bb67:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb69
bb68:
  %t214 = load i1, ptr %l94, !tbaa !21
  store i1 %t214, ptr %l92, !tbaa !21
  br label %bb69
bb69:
  %t215 = load i1, ptr %l92, !tbaa !21
  br i1 %t215, label %bb70, label %bb71
bb70:
  %t216 = load i64, ptr %l3, !tbaa !24
  %t218 = icmp eq i64 %t216, 0
  store i1 %t218, ptr %l95, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb72
bb72:
  %t220 = load i1, ptr %l95, !tbaa !21
  br i1 %t220, label %bb73, label %bb74
bb73:
  %t221 = load i64, ptr %l4, !tbaa !24
  %t223 = icmp eq i64 %t221, 0
  store i1 %t223, ptr %l98, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb75
bb75:
  %t225 = load i1, ptr %l98, !tbaa !21
  br i1 %t225, label %bb76, label %bb77
bb76:
  %t226 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  %t230 = icmp sgt i64 %t228, 0
  store i1 %t230, ptr %l101, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb78
bb78:
  %t232 = load i1, ptr %l101, !tbaa !21
  br i1 %t232, label %bb79, label %bb80
bb79:
  %t233 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i8, ptr %t234, i64 0
  %t236 = load i8, ptr %t235, !tbaa !32
  %t238 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t236)
  store i1 %t238, ptr %l107
  br label %bb81
bb80:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb85
bb81:
  %t239 = load i1, ptr %l107, !tbaa !21
  br i1 %t239, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb84
bb83:
  %t240 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr i8, ptr %t241, i64 0
  %t243 = load i8, ptr %t242, !tbaa !32
  %t245 = icmp eq i8 %t243, 95
  store i1 %t245, ptr %l108, !tbaa !21
  br label %bb84
bb84:
  %t247 = load i1, ptr %l108, !tbaa !21
  store i1 %t247, ptr %l105, !tbaa !21
  br label %bb85
bb85:
  %t248 = load i1, ptr %l105, !tbaa !21
  br i1 %t248, label %bb86, label %bb87
bb86:
  %t249 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t249, 1
  %t252 = extractvalue { i64, ptr } %t249, 0
  %t253 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t252)
  call void @olang_textcopy(ptr %t253, ptr %t251, i64 %t252)
  %t254 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  store { i64, ptr } %t255, ptr %l112, !tbaa !27
  %t256 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 0
  %t258 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 0
  store i64 %t259, ptr %l114, !tbaa !24
  %t261 = load i64, ptr %l114, !tbaa !24
  %t262 = icmp eq i64 %t257, %t261
  br i1 %t262, label %bb88, label %bb89
bb87:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  br label %bb100
bb88:
  %t264 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = load i64, ptr %l114, !tbaa !24
  %t269 = mul i64 %t268, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t265, ptr %t267, i64 %t269, i1 false)
  br label %bb90
bb89:
  %t270 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t270, ptr %l8, !tbaa !27
  br label %bb90
bb90:
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s18)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s15)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s11)
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s9)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s7)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s5)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s3)
  br label %bb98
bb98:
  %t271 = load ptr, ptr %l1, !tbaa !29
  store ptr %t271, ptr %l116, !tbaa !29
  %t272 = load ptr, ptr %l116, !tbaa !29
  %t273 = getelementptr %"compiler/bindgen:ctp", ptr %t272, i32 0, i32 1
  %t274 = load i64, ptr %t273, !tbaa !24
  %t276 = add i64 %t274, 1
  %t278 = load ptr, ptr %l116, !tbaa !29
  %t279 = getelementptr %"compiler/bindgen:ctp", ptr %t278, i32 0, i32 1
  store i64 %t276, ptr %t279, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb99
bb99:
  br label %bb1
bb100:
  store i64 0, ptr %l11, !tbaa !24
  %t280 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t282 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t280, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t282, ptr %l120
  br label %bb101
bb101:
  %t283 = load i1, ptr %l120, !tbaa !21
  br i1 %t283, label %bb102, label %bb103
bb102:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t287 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t284, i32 1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d127, i32 0, i32 1) }, i64 -1, i1 false, i64 0)
  store i64 %t287, ptr %l123
  br label %bb104
bb103:
  store %olang.scope zeroinitializer, ptr %s23
  %t288 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t290 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s23, { i64, ptr } %t288, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t290, ptr %l125
  br label %bb105
bb104:
  %t291 = load i64, ptr %l123, !tbaa !24
  store i64 %t291, ptr %l11, !tbaa !24
  br label %bb150
bb105:
  %t292 = load i1, ptr %l125, !tbaa !21
  %t293 = xor i1 %t292, true
  br i1 %t293, label %bb106, label %bb107
bb106:
  store %olang.scope zeroinitializer, ptr %s24
  %t295 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t297 = call i1 @compiler_2fbindgen_2eusable(ptr %s0, { i64, ptr } %t295)
  store i1 %t297, ptr %l128
  br label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s30
  %t298 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t300 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s30, { i64, ptr } %t298, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d129, i32 0, i32 1) })
  store i1 %t300, ptr %l165
  br label %bb132
bb108:
  %t301 = load i1, ptr %l128, !tbaa !21
  %t302 = xor i1 %t301, true
  br i1 %t302, label %bb109, label %bb110
bb109:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/bindgen:gen", ptr %t304, i32 0, i32 1
  %t307 = load i1, ptr %t306, !tbaa !21
  %t309 = xor i1 %t307, true
  store i1 %t309, ptr %l130, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb111
bb111:
  %t311 = load i1, ptr %l130, !tbaa !21
  br i1 %t311, label %bb112, label %bb113
bb112:
  %t312 = load ptr, ptr %l0, !tbaa !29
  store ptr %t312, ptr %l134, !tbaa !29
  %t313 = ptrtoint ptr %v0 to i64
  store i64 %t313, ptr %l135, !tbaa !24
  %t314 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t314, label %bb114, label %bb115
bb113:
  br label %bb117
bb114:
  %t316 = call ptr @__olang_region_make(ptr %v0)
  %t317 = ptrtoint ptr %t316 to i64
  store i64 %t317, ptr %l135, !tbaa !24
  br label %bb115
bb115:
  %t318 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t319 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t321 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t322 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t324 = extractvalue { i64, ptr } %t318, 1
  %t325 = extractvalue { i64, ptr } %t318, 0
  %t326 = add i64 %t322, %t325
  %t327 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t329 = add i64 %t326, %t328
  %t331 = extractvalue { i64, ptr } %t319, 1
  %t332 = extractvalue { i64, ptr } %t319, 0
  %t333 = add i64 %t329, %t332
  %t334 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t336 = add i64 %t333, %t335
  %t338 = extractvalue { i64, ptr } %t320, 1
  %t339 = extractvalue { i64, ptr } %t320, 0
  %t340 = add i64 %t336, %t339
  %t341 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t342 = extractvalue { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t343 = add i64 %t340, %t342
  %t344 = load i64, ptr %l135
  %t345 = inttoptr i64 %t344 to ptr
  %t346 = call ptr @__olang_scope_alloc(ptr %t345, i64 %t343)
  call void @olang_textcopy(ptr %t346, ptr %t321, i64 %t322)
  %t347 = getelementptr i8, ptr %t346, i64 %t322
  call void @olang_textcopy(ptr %t347, ptr %t324, i64 %t325)
  %t348 = getelementptr i8, ptr %t347, i64 %t325
  call void @olang_textcopy(ptr %t348, ptr %t327, i64 %t328)
  %t349 = getelementptr i8, ptr %t348, i64 %t328
  call void @olang_textcopy(ptr %t349, ptr %t331, i64 %t332)
  %t350 = getelementptr i8, ptr %t349, i64 %t332
  call void @olang_textcopy(ptr %t350, ptr %t334, i64 %t335)
  %t351 = getelementptr i8, ptr %t350, i64 %t335
  call void @olang_textcopy(ptr %t351, ptr %t338, i64 %t339)
  %t352 = getelementptr i8, ptr %t351, i64 %t339
  call void @olang_textcopy(ptr %t352, ptr %t341, i64 %t342)
  %t353 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t346, 1
  %t356 = load i64, ptr %l135
  %t357 = inttoptr i64 %t356 to ptr
  %t358 = extractvalue { i64, ptr } %t354, 0
  %t359 = extractvalue { i64, ptr } %t354, 1
  %t360 = mul i64 %t358, 1
  %t361 = call ptr @__olang_scope_alloc(ptr %t357, i64 %t360)
  call void @llvm.memcpy.p0.p0.i64(ptr %t361, ptr %t359, i64 %t360, i1 false)
  %t362 = insertvalue { i64, ptr } undef, i64 %t358, 0
  %t363 = insertvalue { i64, ptr } %t362, ptr %t361, 1
  %t364 = load ptr, ptr %l134, !tbaa !29
  %t366 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t364, { i64, ptr } %t363)
  store i64 %t366, ptr %l142
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  %t367 = load i64, ptr %l142, !tbaa !24
  store i64 %t367, ptr %rv
  br label %ret
bb117:
  %t368 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t370 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s24, { i64, ptr } %t368, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) })
  store i1 %t370, ptr %l144
  br label %bb118
bb118:
  %t371 = load i1, ptr %l144, !tbaa !21
  br i1 %t371, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb122
bb120:
  %t372 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t374 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s24, { i64, ptr } %t372, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) })
  store i1 %t374, ptr %l147
  br label %bb121
bb121:
  %t375 = load i1, ptr %l147, !tbaa !21
  store i1 %t375, ptr %l145, !tbaa !21
  br label %bb122
bb122:
  %t376 = load i1, ptr %l145, !tbaa !21
  br i1 %t376, label %bb123, label %bb124
bb123:
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l148, !tbaa !29
  %t378 = ptrtoint ptr %v0 to i64
  store i64 %t378, ptr %l149, !tbaa !24
  %t379 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t379, label %bb125, label %bb126
bb124:
  br label %bb128
bb125:
  %t381 = call ptr @__olang_region_make(ptr %v0)
  %t382 = ptrtoint ptr %t381 to i64
  store i64 %t382, ptr %l149, !tbaa !24
  br label %bb126
bb126:
  %t383 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t384 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t387 = extractvalue { i64, ptr } %t383, 1
  %t388 = extractvalue { i64, ptr } %t383, 0
  %t389 = add i64 %t385, %t388
  %t390 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t392 = add i64 %t389, %t391
  %t393 = load i64, ptr %l149
  %t394 = inttoptr i64 %t393 to ptr
  %t395 = call ptr @__olang_scope_alloc(ptr %t394, i64 %t392)
  call void @olang_textcopy(ptr %t395, ptr %t384, i64 %t385)
  %t396 = getelementptr i8, ptr %t395, i64 %t385
  call void @olang_textcopy(ptr %t396, ptr %t387, i64 %t388)
  %t397 = getelementptr i8, ptr %t396, i64 %t388
  call void @olang_textcopy(ptr %t397, ptr %t390, i64 %t391)
  %t398 = insertvalue { i64, ptr } undef, i64 %t392, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t395, 1
  %t401 = load i64, ptr %l149
  %t402 = inttoptr i64 %t401 to ptr
  %t403 = extractvalue { i64, ptr } %t399, 0
  %t404 = extractvalue { i64, ptr } %t399, 1
  %t405 = mul i64 %t403, 1
  %t406 = call ptr @__olang_scope_alloc(ptr %t402, i64 %t405)
  call void @llvm.memcpy.p0.p0.i64(ptr %t406, ptr %t404, i64 %t405, i1 false)
  %t407 = insertvalue { i64, ptr } undef, i64 %t403, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t406, 1
  %t409 = load ptr, ptr %l148, !tbaa !29
  %t411 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t409, { i64, ptr } %t408)
  store i64 %t411, ptr %l154
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  %t412 = load i64, ptr %l154, !tbaa !24
  store i64 %t412, ptr %rv
  br label %ret
bb128:
  %t413 = load ptr, ptr %l0, !tbaa !29
  store ptr %t413, ptr %l155, !tbaa !29
  store i32 2, ptr %l156
  %t414 = ptrtoint ptr %v0 to i64
  store i64 %t414, ptr %l157, !tbaa !24
  %t415 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t415, label %bb129, label %bb130
bb129:
  %t417 = call ptr @__olang_region_make(ptr %v0)
  %t418 = ptrtoint ptr %t417 to i64
  store i64 %t418, ptr %l157, !tbaa !24
  br label %bb130
bb130:
  %t419 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t420 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t419, 1
  %t423 = extractvalue { i64, ptr } %t419, 0
  %t424 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t425 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t426 = add i64 %t423, %t425
  %t428 = extractvalue { i64, ptr } %t420, 1
  %t429 = extractvalue { i64, ptr } %t420, 0
  %t430 = add i64 %t426, %t429
  %t431 = load i64, ptr %l157
  %t432 = inttoptr i64 %t431 to ptr
  %t433 = call ptr @__olang_scope_alloc(ptr %t432, i64 %t430)
  call void @olang_textcopy(ptr %t433, ptr %t422, i64 %t423)
  %t434 = getelementptr i8, ptr %t433, i64 %t423
  call void @olang_textcopy(ptr %t434, ptr %t424, i64 %t425)
  %t435 = getelementptr i8, ptr %t434, i64 %t425
  call void @olang_textcopy(ptr %t435, ptr %t428, i64 %t429)
  %t436 = insertvalue { i64, ptr } undef, i64 %t430, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t433, 1
  %t439 = load i64, ptr %l157
  %t440 = inttoptr i64 %t439 to ptr
  %t441 = extractvalue { i64, ptr } %t437, 0
  %t442 = extractvalue { i64, ptr } %t437, 1
  %t443 = mul i64 %t441, 1
  %t444 = call ptr @__olang_scope_alloc(ptr %t440, i64 %t443)
  call void @llvm.memcpy.p0.p0.i64(ptr %t444, ptr %t442, i64 %t443, i1 false)
  %t445 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr %t444, 1
  %t447 = load ptr, ptr %l155, !tbaa !29
  %t448 = load i32, ptr %l156, !range !{i32 0, i32 7}
  %t450 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v0, ptr %t447, i32 %t448, { i64, ptr } %t446, i64 -1, i1 false, i64 0)
  store i64 %t450, ptr %l163
  br label %bb131
bb131:
  %t451 = load i64, ptr %l163, !tbaa !24
  store i64 %t451, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s24)
  br label %bb149
bb132:
  %t452 = load i1, ptr %l165, !tbaa !21
  %t453 = xor i1 %t452, true
  br i1 %t453, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s31
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/bindgen:gen", ptr %t455, i32 0, i32 4
  %t458 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t461 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %s0, ptr %v0, ptr %t457, { i64, ptr } %t458)
  %t462 = extractvalue { i32, { i64, ptr } } %t461, 1
  %t463 = extractvalue { i32, { i64, ptr } } %t461, 0
  store i32 %t463, ptr %l172
  %t464 = icmp ne i32 %t463, 0
  br i1 %t464, label %bb136, label %ok.465, !prof !99
ok.465:
  store { i64, ptr } %t462, ptr %l171
  br label %bb135
bb134:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t468 = load i64, ptr %l3, !tbaa !24
  %t469 = load i64, ptr %l4, !tbaa !24
  %t474 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumType(ptr %v0, ptr %s0, ptr %t466, { i64, ptr } %t467, i64 %t468, i64 %t469)
  store i64 %t474, ptr %l191
  br label %bb147
bb135:
  %t475 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t475, ptr %l167, !tbaa !27
  br label %bb138
bb136:
  br label %bb137
bb137:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l167, !tbaa !27
  br label %bb138
bb138:
  %t476 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t476, ptr %l12, !tbaa !27
  %t477 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t479 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s31, { i64, ptr } %t477, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store i1 %t479, ptr %l174
  br label %bb139
bb139:
  %t480 = load i1, ptr %l174, !tbaa !21
  br i1 %t480, label %bb140, label %bb141
bb140:
  %t481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t481, ptr %l175, !tbaa !29
  %t482 = ptrtoint ptr %v0 to i64
  store i64 %t482, ptr %l176, !tbaa !24
  %t483 = load i1, ptr @olang_2esole_2ecompiler_2fbindgen_3actype_2e1
  br i1 %t483, label %bb142, label %bb143
bb141:
  br label %bb145
bb142:
  %t485 = call ptr @__olang_region_make(ptr %v0)
  %t486 = ptrtoint ptr %t485 to i64
  store i64 %t486, ptr %l176, !tbaa !24
  br label %bb143
bb143:
  %t487 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t488 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t489 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t491 = extractvalue { i64, ptr } %t487, 1
  %t492 = extractvalue { i64, ptr } %t487, 0
  %t493 = add i64 %t489, %t492
  %t494 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t495 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t496 = add i64 %t493, %t495
  %t497 = load i64, ptr %l176
  %t498 = inttoptr i64 %t497 to ptr
  %t499 = call ptr @__olang_scope_alloc(ptr %t498, i64 %t496)
  call void @olang_textcopy(ptr %t499, ptr %t488, i64 %t489)
  %t500 = getelementptr i8, ptr %t499, i64 %t489
  call void @olang_textcopy(ptr %t500, ptr %t491, i64 %t492)
  %t501 = getelementptr i8, ptr %t500, i64 %t492
  call void @olang_textcopy(ptr %t501, ptr %t494, i64 %t495)
  %t502 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t503 = insertvalue { i64, ptr } %t502, ptr %t499, 1
  %t505 = load i64, ptr %l176
  %t506 = inttoptr i64 %t505 to ptr
  %t507 = extractvalue { i64, ptr } %t503, 0
  %t508 = extractvalue { i64, ptr } %t503, 1
  %t509 = mul i64 %t507, 1
  %t510 = call ptr @__olang_scope_alloc(ptr %t506, i64 %t509)
  call void @llvm.memcpy.p0.p0.i64(ptr %t510, ptr %t508, i64 %t509, i1 false)
  %t511 = insertvalue { i64, ptr } undef, i64 %t507, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t510, 1
  %t513 = load ptr, ptr %l175, !tbaa !29
  %t515 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v0, ptr %t513, { i64, ptr } %t512)
  store i64 %t515, ptr %l181
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  %t516 = load i64, ptr %l181, !tbaa !24
  store i64 %t516, ptr %rv
  br label %ret
bb145:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t519 = load i64, ptr %l2, !tbaa !24
  %t521 = add i64 %t519, 1
  %t525 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v0, ptr %t517, { i64, ptr } %t518, i64 %t521)
  store i64 %t525, ptr %l186
  br label %bb146
bb146:
  %t526 = load i64, ptr %l186, !tbaa !24
  store i64 %t526, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s31)
  br label %bb148
bb147:
  %t527 = load i64, ptr %l191, !tbaa !24
  store i64 %t527, ptr %l11, !tbaa !24
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s30)
  br label %bb149
bb149:
  call void @__olang_scope_close(ptr %s23)
  br label %bb150
bb150:
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t529 = load ptr, ptr %l1, !tbaa !29
  %t530 = load i64, ptr %l11, !tbaa !24
  %t531 = load i1, ptr %l6, !tbaa !21
  %t532 = load i64, ptr %l2, !tbaa !24
  %t538 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edeclarator(ptr %v0, ptr %v1, ptr %t528, ptr %t529, i64 %t530, i1 %t531, i64 %t532)
  store i64 %t538, ptr %l197
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s0)
  %t539 = load i64, ptr %l197, !tbaa !24
  store i64 %t539, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/bindgen:cFunc"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/bindgen:cFunc"
  %l9 = alloca i64
  %l10 = alloca %"compiler/bindgen:ctype"
  %l12 = alloca i1
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/bindgen:cFunc"
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %l52 = alloca %"compiler/bindgen:cFunc"
  %l54 = alloca ptr
  %l55 = alloca i64
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca %"compiler/bindgen:cFunc"
  %l73 = alloca { i64, ptr }
  %l76 = alloca i64
  %l80 = alloca %"compiler/bindgen:ctype"
  %l85 = alloca ptr
  %l89 = alloca %"compiler/bindgen:ctype"
  %l91 = alloca %"compiler/bindgen:ctype"
  %l94 = alloca i1
  %l98 = alloca %"compiler/bindgen:ctype"
  %l101 = alloca ptr
  %l105 = alloca %"compiler/bindgen:ctype"
  %l107 = alloca i64
  %l111 = alloca ptr
  %l117 = alloca %"std/prelude/text:StringBuilder"
  %l118 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l121 = alloca i64
  %l123 = alloca i64
  %l128 = alloca %"compiler/bindgen:cFunc"
  %l132 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i64
  %l140 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i64
  %l153 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i64
  %l162 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i64
  %l174 = alloca i1
  %l178 = alloca i1
  %l180 = alloca ptr
  %l181 = alloca i64
  %l186 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l190 = alloca i32
  %l192 = alloca i1
  %l194 = alloca ptr
  %l195 = alloca i64
  %l204 = alloca i1
  %l206 = alloca i1
  %l208 = alloca i1
  %l212 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l216 = alloca i32
  %l218 = alloca i1
  %l220 = alloca ptr
  %l221 = alloca i64
  %l230 = alloca ptr
  %l231 = alloca i64
  %l244 = alloca %"std/prelude/text:StringBuilder"
  %l249 = alloca i64
  %l251 = alloca i64
  %l256 = alloca { i64, ptr }
  %l263 = alloca %"std/prelude/text:StringBuilder"
  %l264 = alloca %"std/prelude/text:StringBuilder"
  %l267 = alloca i64
  %l271 = alloca i64
  %l274 = alloca i64
  %l295 = alloca ptr
  %l298 = alloca i1
  %l299 = alloca i1
  %l302 = alloca i1
  %l306 = alloca i1
  %l307 = alloca ptr
  %l310 = alloca { i64, ptr }
  %l313 = alloca ptr
  %l317 = alloca ptr
  %l325 = alloca i64
  %l327 = alloca i1
  %l329 = alloca i64
  %l331 = alloca ptr
  %l333 = alloca { i64, ptr }
  %l335 = alloca { i64, ptr }
  %l338 = alloca ptr
  %l340 = alloca { i64, ptr }
  %l344 = alloca i64
  %l349 = alloca i64
  %l351 = alloca i64
  %l356 = alloca { i64, ptr }
  %l365 = alloca i64
  %l370 = alloca i64
  %l372 = alloca i64
  %l377 = alloca { i64, ptr }
  %l386 = alloca i64
  %l391 = alloca i64
  %l393 = alloca i64
  %l398 = alloca { i64, ptr }
  %l406 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s56 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/bindgen:gen", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l45, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l47
  br label %bb2
bb2:
  %t9 = load i64, ptr %l45, !tbaa !24
  %t10 = load i64, ptr %l47, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/bindgen:cFunc" %t19, ptr %l52
  br label %bb6
bb6:
  %t20 = load %"compiler/bindgen:cFunc", ptr %l52
  store %"compiler/bindgen:cFunc" %t20, ptr %l4
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/bindgen:gen", ptr %t21, i32 0, i32 21
  store ptr %t23, ptr %l54, !tbaa !29
  %t24 = ptrtoint ptr %v0 to i64
  store i64 %t24, ptr %l55, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = call ptr @__olang_region_make(ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l55, !tbaa !24
  br label %bb8
bb8:
  %t29 = getelementptr %"compiler/bindgen:cFunc", ptr %l4, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = extractvalue { i64, ptr } %t30, 0
  %t34 = load i64, ptr %l55
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t33)
  call void @olang_textcopy(ptr %t36, ptr %t32, i64 %t33)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t40 = load i64, ptr %l55
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = extractvalue { i64, ptr } %t38, 0
  %t43 = extractvalue { i64, ptr } %t38, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %t41, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t48 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t48, { i64, ptr } %t47, i64 0)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/bindgen:gen", ptr %t54, i32 0, i32 8
  store ptr %t56, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s6
  %t58 = load i64, ptr %l6, !tbaa !24
  store i64 %t58, ptr %l64, !tbaa !24
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l66
  br label %bb13
bb13:
  %t62 = load i64, ptr %l64, !tbaa !24
  %t63 = load i64, ptr %l66, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb15:
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t69 = load i64, ptr %l6, !tbaa !24
  %t72 = call %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store %"compiler/bindgen:cFunc" %t72, ptr %l71
  br label %bb17
bb17:
  %t73 = load %"compiler/bindgen:cFunc", ptr %l71
  store %"compiler/bindgen:cFunc" %t73, ptr %l7
  %t74 = getelementptr %"compiler/bindgen:cFunc", ptr %l7, i32 0, i32 1
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  %t77 = call { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %s6, { i64, ptr } %t75)
  store { i64, ptr } %t77, ptr %l73
  br label %bb18
bb18:
  %t78 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t83 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %s6, ptr %t79, { i64, ptr } %t78, i64 0)
  store i64 %t83, ptr %l76
  br label %bb19
bb19:
  %t84 = load i64, ptr %l76, !tbaa !24
  store i64 %t84, ptr %l9, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/bindgen:gen", ptr %t85, i32 0, i32 16
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s6, ptr %t87, i64 %t88)
  store %"compiler/bindgen:ctype" %t91, ptr %l80
  br label %bb20
bb20:
  %t92 = getelementptr %"compiler/bindgen:ctype", ptr %l80, i32 0, i32 0
  %t93 = load i32, ptr %t92, !range !{i32 0, i32 7}
  %t95 = trunc i64 5 to i32
  %t96 = icmp eq i32 %t93, %t95
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb22:
  br label %bb23
bb23:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/bindgen:gen", ptr %t100, i32 0, i32 16
  store ptr %t102, ptr %l85, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/bindgen:gen", ptr %t103, i32 0, i32 16
  %t106 = load i64, ptr %l9, !tbaa !24
  %t109 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s6, ptr %t105, i64 %t106)
  store %"compiler/bindgen:ctype" %t109, ptr %l89
  br label %bb24
bb24:
  %t110 = getelementptr %"compiler/bindgen:ctype", ptr %l89, i32 0, i32 2
  %t111 = load i64, ptr %t110, !tbaa !24
  %t112 = load ptr, ptr %l85, !tbaa !29
  %t114 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t112, i64 %t111)
  store %"compiler/bindgen:ctype" %t114, ptr %l91
  br label %bb25
bb25:
  %t115 = load %"compiler/bindgen:ctype", ptr %l91
  store %"compiler/bindgen:ctype" %t115, ptr %l10
  %t116 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 0
  %t117 = load i32, ptr %t116, !range !{i32 0, i32 7}
  %t119 = trunc i64 3 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb26, label %bb27
bb26:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/bindgen:gen", ptr %t122, i32 0, i32 16
  %t125 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t126 = load i64, ptr %t125, !tbaa !24
  %t129 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %s6, ptr %t124, i64 %t126)
  store %"compiler/bindgen:ctype" %t129, ptr %l98
  br label %bb28
bb27:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb29
bb28:
  %t130 = getelementptr %"compiler/bindgen:ctype", ptr %l98, i32 0, i32 0
  %t131 = load i32, ptr %t130, !range !{i32 0, i32 7}
  %t133 = trunc i64 2 to i32
  %t134 = icmp eq i32 %t131, %t133
  store i1 %t134, ptr %l94, !tbaa !21
  br label %bb29
bb29:
  %t136 = load i1, ptr %l94, !tbaa !21
  br i1 %t136, label %bb30, label %bb31
bb30:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l101, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/bindgen:gen", ptr %t138, i32 0, i32 16
  %t141 = getelementptr %"compiler/bindgen:ctype", ptr %l10, i32 0, i32 2
  %t142 = load i64, ptr %t141, !tbaa !24
  %t145 = call %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v0, ptr %t140, i64 %t142)
  store %"compiler/bindgen:ctype" %t145, ptr %l105
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t146 = getelementptr %"compiler/bindgen:ctype", ptr %l105, i32 0, i32 1
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t148 = load ptr, ptr %l101, !tbaa !29
  %t150 = call i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2erecordAt(ptr %v0, ptr %v0, ptr %t148, { i64, ptr } %t147)
  store i64 %t150, ptr %l107
  br label %bb33
bb33:
  %t151 = load i64, ptr %l107, !tbaa !24
  store i1 true, ptr %l12, !tbaa !21
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/bindgen:gen", ptr %t152, i32 0, i32 5
  %t158 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v0, ptr %t154, i64 %t151)
  store ptr %t158, ptr %l111
  br label %bb34
bb34:
  %t159 = load ptr, ptr %l111, !tbaa !29
  %t161 = load i1, ptr %l12, !tbaa !21
  %t164 = getelementptr %"compiler/bindgen:record", ptr %t159, i32 0, i32 10
  store i1 %t161, ptr %t164, !tbaa !21
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb36:
  %t165 = load i64, ptr %l6, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l6, !tbaa !24
  br label %bb12
bb37:
  %t169 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecords(ptr %v0, ptr %t169)
  br label %bb38
bb38:
  %t171 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t171, ptr %l117
  br label %bb39
bb39:
  %t172 = load %"std/prelude/text:StringBuilder", ptr %l117
  store %"std/prelude/text:StringBuilder" %t172, ptr %l14
  %t173 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t173, ptr %l118
  br label %bb40
bb40:
  %t174 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l118
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t174, ptr %l15
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/bindgen:gen", ptr %t175, i32 0, i32 8
  store ptr %t177, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s11
  %t179 = load i64, ptr %l17, !tbaa !24
  store i64 %t179, ptr %l121, !tbaa !24
  %t180 = load ptr, ptr %l16, !tbaa !29
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %t180)
  store i64 %t182, ptr %l123
  br label %bb42
bb42:
  %t183 = load i64, ptr %l121, !tbaa !24
  %t184 = load i64, ptr %l123, !tbaa !24
  %t185 = icmp slt i64 %t183, %t184
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s11)
  br label %bb122
bb44:
  br label %bb45
bb45:
  %t189 = load ptr, ptr %l16, !tbaa !29
  %t190 = load i64, ptr %l17, !tbaa !24
  %t193 = call %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v0, ptr %t189, i64 %t190)
  store %"compiler/bindgen:cFunc" %t193, ptr %l128
  br label %bb46
bb46:
  %t194 = load %"compiler/bindgen:cFunc", ptr %l128
  store %"compiler/bindgen:cFunc" %t194, ptr %l18
  %t195 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  %t201 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %s0, ptr %v0, ptr %l15, { i64, ptr } %t196)
  store i1 %t201, ptr %l132
  br label %bb47
bb47:
  %t202 = load i1, ptr %l132, !tbaa !21
  br i1 %t202, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb49:
  br label %bb50
bb50:
  store ptr %l15, ptr %l133, !tbaa !29
  %t203 = ptrtoint ptr %s0 to i64
  store i64 %t203, ptr %l134, !tbaa !24
  %t204 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t204, label %bb51, label %bb52
bb51:
  %t206 = call ptr @__olang_region_make(ptr %s0)
  %t207 = ptrtoint ptr %t206 to i64
  store i64 %t207, ptr %l134, !tbaa !24
  br label %bb52
bb52:
  %t208 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 1
  %t212 = extractvalue { i64, ptr } %t209, 0
  %t213 = load i64, ptr %l134
  %t214 = inttoptr i64 %t213 to ptr
  %t215 = call ptr @__olang_scope_alloc(ptr %t214, i64 %t212)
  call void @olang_textcopy(ptr %t215, ptr %t211, i64 %t212)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t219 = load i64, ptr %l134
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = extractvalue { i64, ptr } %t217, 0
  %t222 = extractvalue { i64, ptr } %t217, 1
  %t223 = mul i64 %t221, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %t220, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  %t227 = load ptr, ptr %l133, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %s0, ptr %s0, ptr %t227, { i64, ptr } %t226, i64 0)
  br label %bb53
bb53:
  %t229 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t230 = load { i64, ptr }, ptr %t229, !tbaa !27
  %t232 = call i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %t230)
  store i1 %t232, ptr %l140
  br label %bb54
bb54:
  %t233 = load i1, ptr %l140, !tbaa !21
  %t234 = xor i1 %t233, true
  br i1 %t234, label %bb55, label %bb56
bb55:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/bindgen:gen", ptr %t236, i32 0, i32 1
  %t239 = load i1, ptr %t238, !tbaa !21
  %t241 = xor i1 %t239, true
  br i1 %t241, label %bb57, label %bb58
bb56:
  br label %bb63
bb57:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/bindgen:gen", ptr %t243, i32 0, i32 18
  store ptr %t245, ptr %l146, !tbaa !29
  %t246 = ptrtoint ptr %v0 to i64
  store i64 %t246, ptr %l147, !tbaa !24
  %t247 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t247, label %bb59, label %bb60
bb58:
  br label %bb62
bb59:
  %t249 = call ptr @__olang_region_make(ptr %v0)
  %t250 = ptrtoint ptr %t249 to i64
  store i64 %t250, ptr %l147, !tbaa !24
  br label %bb60
bb60:
  %t251 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t252 = load { i64, ptr }, ptr %t251, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t252, 1
  %t255 = extractvalue { i64, ptr } %t252, 0
  %t256 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t258 = add i64 %t255, %t257
  %t259 = load i64, ptr %l147
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call ptr @__olang_scope_alloc(ptr %t260, i64 %t258)
  call void @olang_textcopy(ptr %t261, ptr %t254, i64 %t255)
  %t262 = getelementptr i8, ptr %t261, i64 %t255
  call void @olang_textcopy(ptr %t262, ptr %t256, i64 %t257)
  %t263 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t261, 1
  %t266 = load i64, ptr %l147
  %t267 = inttoptr i64 %t266 to ptr
  %t268 = extractvalue { i64, ptr } %t264, 0
  %t269 = extractvalue { i64, ptr } %t264, 1
  %t270 = mul i64 %t268, 1
  %t271 = call ptr @__olang_scope_alloc(ptr %t267, i64 %t270)
  call void @llvm.memcpy.p0.p0.i64(ptr %t271, ptr %t269, i64 %t270, i1 false)
  %t272 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t271, 1
  %t274 = load ptr, ptr %l146, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t274, { i64, ptr } %t273)
  br label %bb61
bb61:
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb63:
  %t276 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t279 = call i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %t277)
  store i1 %t279, ptr %l153
  br label %bb64
bb64:
  %t280 = load i1, ptr %l153, !tbaa !21
  br i1 %t280, label %bb65, label %bb66
bb65:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/bindgen:gen", ptr %t281, i32 0, i32 18
  store ptr %t283, ptr %l155, !tbaa !29
  %t284 = ptrtoint ptr %v0 to i64
  store i64 %t284, ptr %l156, !tbaa !24
  %t285 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t285, label %bb67, label %bb68
bb66:
  br label %bb70
bb67:
  %t287 = call ptr @__olang_region_make(ptr %v0)
  %t288 = ptrtoint ptr %t287 to i64
  store i64 %t288, ptr %l156, !tbaa !24
  br label %bb68
bb68:
  %t289 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t290 = load { i64, ptr }, ptr %t289, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 1
  %t293 = extractvalue { i64, ptr } %t290, 0
  %t294 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t295 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t296 = add i64 %t293, %t295
  %t297 = load i64, ptr %l156
  %t298 = inttoptr i64 %t297 to ptr
  %t299 = call ptr @__olang_scope_alloc(ptr %t298, i64 %t296)
  call void @olang_textcopy(ptr %t299, ptr %t292, i64 %t293)
  %t300 = getelementptr i8, ptr %t299, i64 %t293
  call void @olang_textcopy(ptr %t300, ptr %t294, i64 %t295)
  %t301 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t299, 1
  %t304 = load i64, ptr %l156
  %t305 = inttoptr i64 %t304 to ptr
  %t306 = extractvalue { i64, ptr } %t302, 0
  %t307 = extractvalue { i64, ptr } %t302, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %t305, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t312 = load ptr, ptr %l155, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t312, { i64, ptr } %t311)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb70:
  %t314 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 4
  %t315 = load i1, ptr %t314, !tbaa !21
  br i1 %t315, label %bb71, label %bb72
bb71:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/bindgen:gen", ptr %t317, i32 0, i32 1
  %t320 = load i1, ptr %t319, !tbaa !21
  %t322 = xor i1 %t320, true
  store i1 %t322, ptr %l162, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb73
bb73:
  %t324 = load i1, ptr %l162, !tbaa !21
  br i1 %t324, label %bb74, label %bb75
bb74:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/bindgen:gen", ptr %t325, i32 0, i32 18
  store ptr %t327, ptr %l167, !tbaa !29
  %t328 = ptrtoint ptr %v0 to i64
  store i64 %t328, ptr %l168, !tbaa !24
  %t329 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t329, label %bb76, label %bb77
bb75:
  br label %bb79
bb76:
  %t331 = call ptr @__olang_region_make(ptr %v0)
  %t332 = ptrtoint ptr %t331 to i64
  store i64 %t332, ptr %l168, !tbaa !24
  br label %bb77
bb77:
  %t333 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t334, 1
  %t337 = extractvalue { i64, ptr } %t334, 0
  %t338 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t340 = add i64 %t337, %t339
  %t341 = load i64, ptr %l168
  %t342 = inttoptr i64 %t341 to ptr
  %t343 = call ptr @__olang_scope_alloc(ptr %t342, i64 %t340)
  call void @olang_textcopy(ptr %t343, ptr %t336, i64 %t337)
  %t344 = getelementptr i8, ptr %t343, i64 %t337
  call void @olang_textcopy(ptr %t344, ptr %t338, i64 %t339)
  %t345 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t343, 1
  %t348 = load i64, ptr %l168
  %t349 = inttoptr i64 %t348 to ptr
  %t350 = extractvalue { i64, ptr } %t346, 0
  %t351 = extractvalue { i64, ptr } %t346, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %t349, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  %t356 = load ptr, ptr %l167, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t356, { i64, ptr } %t355)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb79:
  %t358 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 4
  %t359 = load i1, ptr %t358, !tbaa !21
  br i1 %t359, label %bb80, label %bb81
bb80:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/bindgen:gen", ptr %t361, i32 0, i32 24
  %t364 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t365 = load { i64, ptr }, ptr %t364, !tbaa !27
  %t368 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t363, { i64, ptr } %t365)
  store i1 %t368, ptr %l178
  br label %bb82
bb81:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb83
bb82:
  %t369 = load i1, ptr %l178, !tbaa !21
  store i1 %t369, ptr %l174, !tbaa !21
  br label %bb83
bb83:
  %t370 = load i1, ptr %l174, !tbaa !21
  br i1 %t370, label %bb84, label %bb85
bb84:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/bindgen:gen", ptr %t371, i32 0, i32 18
  store ptr %t373, ptr %l180, !tbaa !29
  %t374 = ptrtoint ptr %v0 to i64
  store i64 %t374, ptr %l181, !tbaa !24
  %t375 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t375, label %bb86, label %bb87
bb85:
  br label %bb89
bb86:
  %t377 = call ptr @__olang_region_make(ptr %v0)
  %t378 = ptrtoint ptr %t377 to i64
  store i64 %t378, ptr %l181, !tbaa !24
  br label %bb87
bb87:
  %t379 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t380 = load { i64, ptr }, ptr %t379, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t380, 1
  %t383 = extractvalue { i64, ptr } %t380, 0
  %t384 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t386 = add i64 %t383, %t385
  %t387 = load i64, ptr %l181
  %t388 = inttoptr i64 %t387 to ptr
  %t389 = call ptr @__olang_scope_alloc(ptr %t388, i64 %t386)
  call void @olang_textcopy(ptr %t389, ptr %t382, i64 %t383)
  %t390 = getelementptr i8, ptr %t389, i64 %t383
  call void @olang_textcopy(ptr %t390, ptr %t384, i64 %t385)
  %t391 = insertvalue { i64, ptr } undef, i64 %t386, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t389, 1
  %t394 = load i64, ptr %l181
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = extractvalue { i64, ptr } %t392, 0
  %t397 = extractvalue { i64, ptr } %t392, 1
  %t398 = mul i64 %t396, 1
  %t399 = call ptr @__olang_scope_alloc(ptr %t395, i64 %t398)
  call void @llvm.memcpy.p0.p0.i64(ptr %t399, ptr %t397, i64 %t398, i1 false)
  %t400 = insertvalue { i64, ptr } undef, i64 %t396, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t399, 1
  %t402 = load ptr, ptr %l180, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t402, { i64, ptr } %t401)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb89:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t407 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efunction(ptr %v0, ptr %s11, ptr %s11, ptr %t404, ptr %l18)
  %t408 = extractvalue { i32, { i64, ptr } } %t407, 1
  %t409 = extractvalue { i32, { i64, ptr } } %t407, 0
  store i32 %t409, ptr %l190
  %t410 = icmp ne i32 %t409, 0
  br i1 %t410, label %bb91, label %ok.411, !prof !99
ok.411:
  store { i64, ptr } %t408, ptr %l189
  br label %bb90
bb90:
  %t412 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t412, ptr %l186, !tbaa !27
  br label %bb96
bb91:
  %t413 = load i32, ptr %l190, !tbaa !23
  %t414 = ashr i32 %t413, 16
  %t416 = icmp eq i32 %t414, 1
  store i1 %t416, ptr %l192, !tbaa !21
  br label %bb92
bb92:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/bindgen:gen", ptr %t417, i32 0, i32 18
  store ptr %t419, ptr %l194, !tbaa !29
  %t420 = ptrtoint ptr %v0 to i64
  store i64 %t420, ptr %l195, !tbaa !24
  %t421 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t421, label %bb93, label %bb94
bb93:
  %t423 = call ptr @__olang_region_make(ptr %v0)
  %t424 = ptrtoint ptr %t423 to i64
  store i64 %t424, ptr %l195, !tbaa !24
  br label %bb94
bb94:
  %t425 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t426 = load { i64, ptr }, ptr %t425, !tbaa !27
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/bindgen:gen", ptr %t427, i32 0, i32 25
  %t430 = load { i64, ptr }, ptr %t429, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t426, 1
  %t433 = extractvalue { i64, ptr } %t426, 0
  %t434 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t435 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t436 = add i64 %t433, %t435
  %t438 = extractvalue { i64, ptr } %t430, 1
  %t439 = extractvalue { i64, ptr } %t430, 0
  %t440 = add i64 %t436, %t439
  %t441 = load i64, ptr %l195
  %t442 = inttoptr i64 %t441 to ptr
  %t443 = call ptr @__olang_scope_alloc(ptr %t442, i64 %t440)
  call void @olang_textcopy(ptr %t443, ptr %t432, i64 %t433)
  %t444 = getelementptr i8, ptr %t443, i64 %t433
  call void @olang_textcopy(ptr %t444, ptr %t434, i64 %t435)
  %t445 = getelementptr i8, ptr %t444, i64 %t435
  call void @olang_textcopy(ptr %t445, ptr %t438, i64 %t439)
  %t446 = insertvalue { i64, ptr } undef, i64 %t440, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t443, 1
  %t449 = load i64, ptr %l195
  %t450 = inttoptr i64 %t449 to ptr
  %t451 = extractvalue { i64, ptr } %t447, 0
  %t452 = extractvalue { i64, ptr } %t447, 1
  %t453 = mul i64 %t451, 1
  %t454 = call ptr @__olang_scope_alloc(ptr %t450, i64 %t453)
  call void @llvm.memcpy.p0.p0.i64(ptr %t454, ptr %t452, i64 %t453, i1 false)
  %t455 = insertvalue { i64, ptr } undef, i64 %t451, 0
  %t456 = insertvalue { i64, ptr } %t455, ptr %t454, 1
  %t457 = load ptr, ptr %l194, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t457, { i64, ptr } %t456)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb96:
  %t459 = load { i64, ptr }, ptr %l186, !tbaa !27
  store { i64, ptr } %t459, ptr %l20, !tbaa !27
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/bindgen:gen", ptr %t460, i32 0, i32 1
  %t463 = load i1, ptr %t462, !tbaa !21
  br i1 %t463, label %bb97, label %bb98
bb97:
  %t465 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 4
  %t466 = load i1, ptr %t465, !tbaa !21
  br i1 %t466, label %bb99, label %bb100
bb98:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb103
bb99:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb102
bb100:
  %t468 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 5
  %t469 = load { i64, ptr }, ptr %t468, !tbaa !27
  %t471 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s11, { i64, ptr } %t469, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  store i1 %t471, ptr %l208
  br label %bb101
bb101:
  %t472 = load i1, ptr %l208, !tbaa !21
  %t473 = xor i1 %t472, true
  store i1 %t473, ptr %l206, !tbaa !21
  br label %bb102
bb102:
  %t475 = load i1, ptr %l206, !tbaa !21
  store i1 %t475, ptr %l204, !tbaa !21
  br label %bb103
bb103:
  %t476 = load i1, ptr %l204, !tbaa !21
  br i1 %t476, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s25
  %t477 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 5
  %t478 = load { i64, ptr }, ptr %t477, !tbaa !27
  store { i64, ptr } %t478, ptr %l21, !tbaa !27
  %t480 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 4
  %t481 = load i1, ptr %t480, !tbaa !21
  br i1 %t481, label %bb106, label %bb107
bb105:
  br label %bb119
bb106:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t486 = call { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrapper(ptr %v0, ptr %s11, ptr %s25, ptr %t483, ptr %l18)
  %t487 = extractvalue { i32, { i64, ptr } } %t486, 1
  %t488 = extractvalue { i32, { i64, ptr } } %t486, 0
  store i32 %t488, ptr %l216
  %t489 = icmp ne i32 %t488, 0
  br i1 %t489, label %bb109, label %ok.490, !prof !99
ok.490:
  store { i64, ptr } %t487, ptr %l215
  br label %bb108
bb107:
  br label %bb115
bb108:
  %t491 = load { i64, ptr }, ptr %l215, !tbaa !27
  store { i64, ptr } %t491, ptr %l212, !tbaa !27
  br label %bb114
bb109:
  %t492 = load i32, ptr %l216, !tbaa !23
  %t493 = ashr i32 %t492, 16
  %t495 = icmp eq i32 %t493, 1
  store i1 %t495, ptr %l218, !tbaa !21
  br label %bb110
bb110:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/bindgen:gen", ptr %t496, i32 0, i32 18
  store ptr %t498, ptr %l220, !tbaa !29
  %t499 = ptrtoint ptr %v0 to i64
  store i64 %t499, ptr %l221, !tbaa !24
  %t500 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t500, label %bb111, label %bb112
bb111:
  %t502 = call ptr @__olang_region_make(ptr %v0)
  %t503 = ptrtoint ptr %t502 to i64
  store i64 %t503, ptr %l221, !tbaa !24
  br label %bb112
bb112:
  %t504 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t505 = load { i64, ptr }, ptr %t504, !tbaa !27
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t508 = getelementptr %"compiler/bindgen:gen", ptr %t506, i32 0, i32 25
  %t509 = load { i64, ptr }, ptr %t508, !tbaa !27
  %t511 = extractvalue { i64, ptr } %t505, 1
  %t512 = extractvalue { i64, ptr } %t505, 0
  %t513 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t514 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t515 = add i64 %t512, %t514
  %t517 = extractvalue { i64, ptr } %t509, 1
  %t518 = extractvalue { i64, ptr } %t509, 0
  %t519 = add i64 %t515, %t518
  %t520 = load i64, ptr %l221
  %t521 = inttoptr i64 %t520 to ptr
  %t522 = call ptr @__olang_scope_alloc(ptr %t521, i64 %t519)
  call void @olang_textcopy(ptr %t522, ptr %t511, i64 %t512)
  %t523 = getelementptr i8, ptr %t522, i64 %t512
  call void @olang_textcopy(ptr %t523, ptr %t513, i64 %t514)
  %t524 = getelementptr i8, ptr %t523, i64 %t514
  call void @olang_textcopy(ptr %t524, ptr %t517, i64 %t518)
  %t525 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t522, 1
  %t528 = load i64, ptr %l221
  %t529 = inttoptr i64 %t528 to ptr
  %t530 = extractvalue { i64, ptr } %t526, 0
  %t531 = extractvalue { i64, ptr } %t526, 1
  %t532 = mul i64 %t530, 1
  %t533 = call ptr @__olang_scope_alloc(ptr %t529, i64 %t532)
  call void @llvm.memcpy.p0.p0.i64(ptr %t533, ptr %t531, i64 %t532, i1 false)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t533, 1
  %t536 = load ptr, ptr %l220, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t536, { i64, ptr } %t535)
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb114:
  %t538 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t539 = extractvalue { i64, ptr } %t538, 0
  %t540 = extractvalue { i64, ptr } %t538, 1
  %t541 = mul i64 %t539, 1
  %t542 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t541)
  call void @llvm.memcpy.p0.p0.i64(ptr %t542, ptr %t540, i64 %t541, i1 false)
  %t543 = insertvalue { i64, ptr } undef, i64 %t539, 0
  %t544 = insertvalue { i64, ptr } %t543, ptr %t542, 1
  store { i64, ptr } %t544, ptr %l21, !tbaa !27
  br label %bb115
bb115:
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t548 = getelementptr %"compiler/bindgen:gen", ptr %t546, i32 0, i32 19
  store ptr %t548, ptr %l230, !tbaa !29
  %t549 = ptrtoint ptr %v0 to i64
  store i64 %t549, ptr %l231, !tbaa !24
  %t550 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t550, label %bb116, label %bb117
bb116:
  %t552 = call ptr @__olang_region_make(ptr %v0)
  %t553 = ptrtoint ptr %t552 to i64
  store i64 %t553, ptr %l231, !tbaa !24
  br label %bb117
bb117:
  %t554 = getelementptr %"compiler/bindgen:cFunc", ptr %l18, i32 0, i32 0
  %t555 = load { i64, ptr }, ptr %t554, !tbaa !27
  %t556 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t558 = extractvalue { i64, ptr } %t555, 1
  %t559 = extractvalue { i64, ptr } %t555, 0
  %t560 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t561 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t562 = add i64 %t559, %t561
  %t564 = extractvalue { i64, ptr } %t556, 1
  %t565 = extractvalue { i64, ptr } %t556, 0
  %t566 = add i64 %t562, %t565
  %t567 = load i64, ptr %l231
  %t568 = inttoptr i64 %t567 to ptr
  %t569 = call ptr @__olang_scope_alloc(ptr %t568, i64 %t566)
  call void @olang_textcopy(ptr %t569, ptr %t558, i64 %t559)
  %t570 = getelementptr i8, ptr %t569, i64 %t559
  call void @olang_textcopy(ptr %t570, ptr %t560, i64 %t561)
  %t571 = getelementptr i8, ptr %t570, i64 %t561
  call void @olang_textcopy(ptr %t571, ptr %t564, i64 %t565)
  %t572 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t573 = insertvalue { i64, ptr } %t572, ptr %t569, 1
  %t575 = load i64, ptr %l231
  %t576 = inttoptr i64 %t575 to ptr
  %t577 = extractvalue { i64, ptr } %t573, 0
  %t578 = extractvalue { i64, ptr } %t573, 1
  %t579 = mul i64 %t577, 1
  %t580 = call ptr @__olang_scope_alloc(ptr %t576, i64 %t579)
  call void @llvm.memcpy.p0.p0.i64(ptr %t580, ptr %t578, i64 %t579, i1 false)
  %t581 = insertvalue { i64, ptr } undef, i64 %t577, 0
  %t582 = insertvalue { i64, ptr } %t581, ptr %t580, 1
  %t583 = load ptr, ptr %l230, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t583, { i64, ptr } %t582)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s25)
  br label %bb119
bb119:
  %t585 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t586 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t587 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t589 = extractvalue { i64, ptr } %t585, 1
  %t590 = extractvalue { i64, ptr } %t585, 0
  %t591 = add i64 %t587, %t590
  %t592 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t593 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t594 = add i64 %t591, %t593
  %t595 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t594)
  call void @olang_textcopy(ptr %t595, ptr %t586, i64 %t587)
  %t596 = getelementptr i8, ptr %t595, i64 %t587
  call void @olang_textcopy(ptr %t596, ptr %t589, i64 %t590)
  %t597 = getelementptr i8, ptr %t596, i64 %t590
  call void @olang_textcopy(ptr %t597, ptr %t592, i64 %t593)
  %t598 = insertvalue { i64, ptr } undef, i64 %t594, 0
  %t599 = insertvalue { i64, ptr } %t598, ptr %t595, 1
  %t601 = extractvalue { i64, ptr } %t599, 0
  %t602 = extractvalue { i64, ptr } %t599, 1
  %t603 = mul i64 %t601, 1
  %t604 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t603)
  call void @llvm.memcpy.p0.p0.i64(ptr %t604, ptr %t602, i64 %t603, i1 false)
  %t605 = insertvalue { i64, ptr } undef, i64 %t601, 0
  %t606 = insertvalue { i64, ptr } %t605, ptr %t604, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %l14, { i64, ptr } %t606)
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s11)
  br label %bb121
bb121:
  %t609 = load i64, ptr %l17, !tbaa !24
  %t611 = add i64 %t609, 1
  store i64 %t611, ptr %l17, !tbaa !24
  br label %bb41
bb122:
  %t613 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFns(ptr %v0, ptr %t613)
  br label %bb123
bb123:
  %t615 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t615, ptr %l244
  br label %bb124
bb124:
  %t616 = load %"std/prelude/text:StringBuilder", ptr %l244
  store %"std/prelude/text:StringBuilder" %t616, ptr %l22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %l22, { i64, ptr } %a1)
  br label %bb125
bb125:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/bindgen:gen", ptr %t620, i32 0, i32 19
  store ptr %t622, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb126
bb126:
  store %olang.scope zeroinitializer, ptr %s33
  %t624 = load i64, ptr %l24, !tbaa !24
  store i64 %t624, ptr %l249, !tbaa !24
  %t625 = load ptr, ptr %l23, !tbaa !29
  %t627 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t625)
  store i64 %t627, ptr %l251
  br label %bb127
bb127:
  %t628 = load i64, ptr %l249, !tbaa !24
  %t629 = load i64, ptr %l251, !tbaa !24
  %t630 = icmp slt i64 %t628, %t629
  %t632 = xor i1 %t630, true
  br i1 %t632, label %bb128, label %bb129
bb128:
  call void @__olang_scope_close(ptr %s33)
  br label %bb134
bb129:
  br label %bb130
bb130:
  %t634 = load ptr, ptr %l23, !tbaa !29
  %t635 = load i64, ptr %l24, !tbaa !24
  %t638 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t634, i64 %t635)
  store { i64, ptr } %t638, ptr %l256
  br label %bb131
bb131:
  %t639 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t641 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t642 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t644 = extractvalue { i64, ptr } %t639, 1
  %t645 = extractvalue { i64, ptr } %t639, 0
  %t646 = add i64 %t642, %t645
  %t647 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t648 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t649 = add i64 %t646, %t648
  %t650 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t649)
  call void @olang_textcopy(ptr %t650, ptr %t641, i64 %t642)
  %t651 = getelementptr i8, ptr %t650, i64 %t642
  call void @olang_textcopy(ptr %t651, ptr %t644, i64 %t645)
  %t652 = getelementptr i8, ptr %t651, i64 %t645
  call void @olang_textcopy(ptr %t652, ptr %t647, i64 %t648)
  %t653 = insertvalue { i64, ptr } undef, i64 %t649, 0
  %t654 = insertvalue { i64, ptr } %t653, ptr %t650, 1
  %t656 = extractvalue { i64, ptr } %t654, 0
  %t657 = extractvalue { i64, ptr } %t654, 1
  %t658 = mul i64 %t656, 1
  %t659 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t658)
  call void @llvm.memcpy.p0.p0.i64(ptr %t659, ptr %t657, i64 %t658, i1 false)
  %t660 = insertvalue { i64, ptr } undef, i64 %t656, 0
  %t661 = insertvalue { i64, ptr } %t660, ptr %t659, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s33, ptr %l22, { i64, ptr } %t661)
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s33)
  br label %bb133
bb133:
  %t664 = load i64, ptr %l24, !tbaa !24
  %t666 = add i64 %t664, 1
  store i64 %t666, ptr %l24, !tbaa !24
  br label %bb126
bb134:
  %t668 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t668, ptr %l263
  br label %bb135
bb135:
  %t669 = load %"std/prelude/text:StringBuilder", ptr %l263
  store %"std/prelude/text:StringBuilder" %t669, ptr %l26
  %t670 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t670, ptr %l264
  br label %bb136
bb136:
  %t671 = load %"std/prelude/text:StringBuilder", ptr %l264
  store %"std/prelude/text:StringBuilder" %t671, ptr %l27
  store i64 0, ptr %l28, !tbaa !24
  %t672 = load ptr, ptr %l0, !tbaa !29
  %t674 = getelementptr %"compiler/bindgen:gen", ptr %t672, i32 0, i32 5
  %t676 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %t674)
  store i64 %t676, ptr %l267
  br label %bb137
bb137:
  %t677 = load i64, ptr %l267, !tbaa !24
  store i64 %t677, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t678 = load i64, ptr %l29, !tbaa !24
  %t679 = load i64, ptr %l28, !tbaa !24
  %t682 = icmp sgt i64 %t678, %t679
  br i1 %t682, label %bb138, label %bb139
bb138:
  %t684 = load i64, ptr %l30, !tbaa !24
  %t686 = icmp sgt i64 %t684, 0
  br i1 %t686, label %bb140, label %bb141
bb139:
  store i64 0, ptr %l271, !tbaa !24
  br label %bb143
bb140:
  %t688 = load i64, ptr %l29, !tbaa !24
  %t689 = load i64, ptr %l28, !tbaa !24
  %t692 = sub i64 %t688, %t689
  %t693 = load i64, ptr %l30, !tbaa !24
  %t696 = add i64 %t692, %t693
  %t698 = sub i64 %t696, 1
  %t699 = load i64, ptr %l30, !tbaa !24
  %t702 = sdiv i64 %t698, %t699
  store i64 %t702, ptr %l274, !tbaa !24
  br label %bb142
bb141:
  store i64 0, ptr %l274, !tbaa !24
  br label %bb142
bb142:
  %t704 = load i64, ptr %l274, !tbaa !24
  store i64 %t704, ptr %l271, !tbaa !24
  br label %bb143
bb143:
  %t705 = load i64, ptr %l271, !tbaa !24
  store i64 %t705, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb144
bb144:
  store %olang.scope zeroinitializer, ptr %s37
  %t706 = load i64, ptr %l32, !tbaa !24
  %t707 = load i64, ptr %l31, !tbaa !24
  %t710 = icmp slt i64 %t706, %t707
  %t712 = xor i1 %t710, true
  br i1 %t712, label %bb145, label %bb146
bb145:
  call void @__olang_scope_close(ptr %s37)
  br label %bb166
bb146:
  br label %bb147
bb147:
  %t714 = load i64, ptr %l28, !tbaa !24
  %t715 = load i64, ptr %l32, !tbaa !24
  %t716 = load i64, ptr %l30, !tbaa !24
  %t719 = mul i64 %t715, %t716
  %t722 = add i64 %t714, %t719
  store i64 %t722, ptr %l33, !tbaa !24
  %t724 = load ptr, ptr %l0, !tbaa !29
  %t726 = getelementptr %"compiler/bindgen:gen", ptr %t724, i32 0, i32 5
  %t727 = load i64, ptr %l33, !tbaa !24
  %t730 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t726, i64 %t727)
  store ptr %t730, ptr %l295
  br label %bb148
bb148:
  %t731 = load ptr, ptr %l295, !tbaa !29
  %t733 = getelementptr %"compiler/bindgen:record", ptr %t731, i32 0, i32 7
  %t734 = load { i64, ptr }, ptr %t733, !tbaa !27
  %t736 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s37, { i64, ptr } %t734, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d155, i32 0, i32 1) })
  store i1 %t736, ptr %l298
  br label %bb149
bb149:
  %t737 = load i1, ptr %l298, !tbaa !21
  br i1 %t737, label %bb150, label %bb151
bb150:
  store i1 true, ptr %l299, !tbaa !21
  br label %bb153
bb151:
  %t738 = load ptr, ptr %l0, !tbaa !29
  %t739 = load i64, ptr %l33, !tbaa !24
  %t742 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewantRecord(ptr %v0, ptr %t738, i64 %t739)
  store i1 %t742, ptr %l302
  br label %bb152
bb152:
  %t743 = load i1, ptr %l302, !tbaa !21
  %t744 = xor i1 %t743, true
  store i1 %t744, ptr %l299, !tbaa !21
  br label %bb153
bb153:
  %t746 = load i1, ptr %l299, !tbaa !21
  br i1 %t746, label %bb154, label %bb155
bb154:
  call void @__olang_scope_close(ptr %s37)
  br label %bb165
bb155:
  br label %bb156
bb156:
  %t747 = load ptr, ptr %l0, !tbaa !29
  %t748 = load i64, ptr %l33, !tbaa !24
  %t751 = call i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %t747, i64 %t748)
  store i1 %t751, ptr %l306
  br label %bb157
bb157:
  %t752 = load i1, ptr %l306, !tbaa !21
  br i1 %t752, label %bb158, label %bb159
bb158:
  store %olang.scope zeroinitializer, ptr %s39
  store ptr %l27, ptr %l307, !tbaa !29
  %t753 = load ptr, ptr %l0, !tbaa !29
  %t754 = load i64, ptr %l33, !tbaa !24
  %t757 = call { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2estructDecl(ptr %v0, ptr %s39, ptr %t753, i64 %t754)
  store { i64, ptr } %t757, ptr %l310
  br label %bb160
bb159:
  store %olang.scope zeroinitializer, ptr %s41
  store ptr %l26, ptr %l313, !tbaa !29
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = getelementptr %"compiler/bindgen:gen", ptr %t758, i32 0, i32 5
  %t761 = load i64, ptr %l33, !tbaa !24
  %t764 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v0, ptr %t760, i64 %t761)
  store ptr %t764, ptr %l317
  br label %bb162
bb160:
  %t765 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t766 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t767 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t768 = extractvalue { i64, ptr } %t767, 1
  %t769 = extractvalue { i64, ptr } %t767, 0
  %t770 = add i64 %t766, %t769
  %t771 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t770)
  call void @olang_textcopy(ptr %t771, ptr %t765, i64 %t766)
  %t772 = getelementptr i8, ptr %t771, i64 %t766
  call void @olang_textcopy(ptr %t772, ptr %t768, i64 %t769)
  %t773 = insertvalue { i64, ptr } undef, i64 %t770, 0
  %t774 = insertvalue { i64, ptr } %t773, ptr %t771, 1
  %t776 = extractvalue { i64, ptr } %t774, 0
  %t777 = extractvalue { i64, ptr } %t774, 1
  %t778 = mul i64 %t776, 1
  %t779 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t778)
  call void @llvm.memcpy.p0.p0.i64(ptr %t779, ptr %t777, i64 %t778, i1 false)
  %t780 = insertvalue { i64, ptr } undef, i64 %t776, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t779, 1
  %t782 = load ptr, ptr %l307, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s39, ptr %t782, { i64, ptr } %t781)
  br label %bb161
bb161:
  call void @__olang_scope_close(ptr %s39)
  br label %bb164
bb162:
  %t784 = load ptr, ptr %l317, !tbaa !29
  %t786 = getelementptr %"compiler/bindgen:record", ptr %t784, i32 0, i32 7
  %t787 = load { i64, ptr }, ptr %t786, !tbaa !27
  %t788 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t789 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t791 = extractvalue { i64, ptr } %t787, 1
  %t792 = extractvalue { i64, ptr } %t787, 0
  %t793 = add i64 %t789, %t792
  %t794 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t795 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t796 = add i64 %t793, %t795
  %t797 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t796)
  call void @olang_textcopy(ptr %t797, ptr %t788, i64 %t789)
  %t798 = getelementptr i8, ptr %t797, i64 %t789
  call void @olang_textcopy(ptr %t798, ptr %t791, i64 %t792)
  %t799 = getelementptr i8, ptr %t798, i64 %t792
  call void @olang_textcopy(ptr %t799, ptr %t794, i64 %t795)
  %t800 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t801 = insertvalue { i64, ptr } %t800, ptr %t797, 1
  %t803 = extractvalue { i64, ptr } %t801, 0
  %t804 = extractvalue { i64, ptr } %t801, 1
  %t805 = mul i64 %t803, 1
  %t806 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t805)
  call void @llvm.memcpy.p0.p0.i64(ptr %t806, ptr %t804, i64 %t805, i1 false)
  %t807 = insertvalue { i64, ptr } undef, i64 %t803, 0
  %t808 = insertvalue { i64, ptr } %t807, ptr %t806, 1
  %t809 = load ptr, ptr %l313, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s41, ptr %t809, { i64, ptr } %t808)
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s41)
  br label %bb164
bb164:
  call void @__olang_scope_close(ptr %s37)
  br label %bb165
bb165:
  %t811 = load i64, ptr %l32, !tbaa !24
  %t813 = add i64 %t811, 1
  store i64 %t813, ptr %l32, !tbaa !24
  br label %bb144
bb166:
  %t816 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l26)
  store i64 %t816, ptr %l325
  br label %bb167
bb167:
  %t817 = load i64, ptr %l325, !tbaa !24
  %t818 = icmp sgt i64 %t817, 0
  br i1 %t818, label %bb168, label %bb169
bb168:
  store i1 true, ptr %l327, !tbaa !21
  br label %bb171
bb169:
  %t821 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l14)
  store i64 %t821, ptr %l329
  br label %bb170
bb170:
  %t822 = load i64, ptr %l329, !tbaa !24
  %t823 = icmp sgt i64 %t822, 0
  store i1 %t823, ptr %l327, !tbaa !21
  br label %bb171
bb171:
  %t825 = load i1, ptr %l327, !tbaa !21
  br i1 %t825, label %bb172, label %bb173
bb172:
  store %olang.scope zeroinitializer, ptr %s44
  store ptr %l22, ptr %l331, !tbaa !29
  %t827 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s44, ptr %l26)
  store { i64, ptr } %t827, ptr %l333
  br label %bb174
bb173:
  br label %bb177
bb174:
  %t829 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s44, ptr %l14)
  store { i64, ptr } %t829, ptr %l335
  br label %bb175
bb175:
  %t830 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t831 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t832 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t833 = extractvalue { i64, ptr } %t832, 1
  %t834 = extractvalue { i64, ptr } %t832, 0
  %t835 = add i64 %t831, %t834
  %t836 = load { i64, ptr }, ptr %l335, !tbaa !27
  %t837 = extractvalue { i64, ptr } %t836, 1
  %t838 = extractvalue { i64, ptr } %t836, 0
  %t839 = add i64 %t835, %t838
  %t840 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t841 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t842 = add i64 %t839, %t841
  %t843 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t842)
  call void @olang_textcopy(ptr %t843, ptr %t830, i64 %t831)
  %t844 = getelementptr i8, ptr %t843, i64 %t831
  call void @olang_textcopy(ptr %t844, ptr %t833, i64 %t834)
  %t845 = getelementptr i8, ptr %t844, i64 %t834
  call void @olang_textcopy(ptr %t845, ptr %t837, i64 %t838)
  %t846 = getelementptr i8, ptr %t845, i64 %t838
  call void @olang_textcopy(ptr %t846, ptr %t840, i64 %t841)
  %t847 = insertvalue { i64, ptr } undef, i64 %t842, 0
  %t848 = insertvalue { i64, ptr } %t847, ptr %t843, 1
  %t850 = extractvalue { i64, ptr } %t848, 0
  %t851 = extractvalue { i64, ptr } %t848, 1
  %t852 = mul i64 %t850, 1
  %t853 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t852)
  call void @llvm.memcpy.p0.p0.i64(ptr %t853, ptr %t851, i64 %t852, i1 false)
  %t854 = insertvalue { i64, ptr } undef, i64 %t850, 0
  %t855 = insertvalue { i64, ptr } %t854, ptr %t853, 1
  %t856 = load ptr, ptr %l331, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s44, ptr %t856, { i64, ptr } %t855)
  br label %bb176
bb176:
  call void @__olang_scope_close(ptr %s44)
  br label %bb177
bb177:
  store ptr %l22, ptr %l338, !tbaa !29
  %t859 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l27)
  store { i64, ptr } %t859, ptr %l340
  br label %bb178
bb178:
  %t860 = load { i64, ptr }, ptr %l340, !tbaa !27
  %t861 = extractvalue { i64, ptr } %t860, 0
  %t862 = extractvalue { i64, ptr } %t860, 1
  %t863 = mul i64 %t861, 1
  %t864 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t863)
  call void @llvm.memcpy.p0.p0.i64(ptr %t864, ptr %t862, i64 %t863, i1 false)
  %t865 = insertvalue { i64, ptr } undef, i64 %t861, 0
  %t866 = insertvalue { i64, ptr } %t865, ptr %t864, 1
  %t867 = load ptr, ptr %l338, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t867, { i64, ptr } %t866)
  br label %bb179
bb179:
  %t869 = load ptr, ptr %l0, !tbaa !29
  %t871 = getelementptr %"compiler/bindgen:gen", ptr %t869, i32 0, i32 9
  %t873 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t871)
  store i64 %t873, ptr %l344
  br label %bb180
bb180:
  %t874 = load i64, ptr %l344, !tbaa !24
  %t875 = icmp sgt i64 %t874, 0
  br i1 %t875, label %bb181, label %bb182
bb181:
  store %olang.scope zeroinitializer, ptr %s46
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s46, ptr %l22, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) })
  br label %bb183
bb182:
  br label %bb193
bb183:
  %t878 = load ptr, ptr %l0, !tbaa !29
  %t880 = getelementptr %"compiler/bindgen:gen", ptr %t878, i32 0, i32 9
  store ptr %t880, ptr %l34, !tbaa !29
  store i64 0, ptr %l35, !tbaa !24
  br label %bb184
bb184:
  store %olang.scope zeroinitializer, ptr %s48
  %t882 = load i64, ptr %l35, !tbaa !24
  store i64 %t882, ptr %l349, !tbaa !24
  %t883 = load ptr, ptr %l34, !tbaa !29
  %t885 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t883)
  store i64 %t885, ptr %l351
  br label %bb185
bb185:
  %t886 = load i64, ptr %l349, !tbaa !24
  %t887 = load i64, ptr %l351, !tbaa !24
  %t888 = icmp slt i64 %t886, %t887
  %t890 = xor i1 %t888, true
  br i1 %t890, label %bb186, label %bb187
bb186:
  call void @__olang_scope_close(ptr %s48)
  br label %bb192
bb187:
  br label %bb188
bb188:
  %t892 = load ptr, ptr %l34, !tbaa !29
  %t893 = load i64, ptr %l35, !tbaa !24
  %t896 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t892, i64 %t893)
  store { i64, ptr } %t896, ptr %l356
  br label %bb189
bb189:
  %t897 = load { i64, ptr }, ptr %l356, !tbaa !27
  %t900 = extractvalue { i64, ptr } %t897, 1
  %t901 = extractvalue { i64, ptr } %t897, 0
  %t902 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t903 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t904 = add i64 %t901, %t903
  %t905 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t904)
  call void @olang_textcopy(ptr %t905, ptr %t900, i64 %t901)
  %t906 = getelementptr i8, ptr %t905, i64 %t901
  call void @olang_textcopy(ptr %t906, ptr %t902, i64 %t903)
  %t907 = insertvalue { i64, ptr } undef, i64 %t904, 0
  %t908 = insertvalue { i64, ptr } %t907, ptr %t905, 1
  %t910 = extractvalue { i64, ptr } %t908, 0
  %t911 = extractvalue { i64, ptr } %t908, 1
  %t912 = mul i64 %t910, 1
  %t913 = call ptr @__olang_scope_alloc(ptr %s48, i64 %t912)
  call void @llvm.memcpy.p0.p0.i64(ptr %t913, ptr %t911, i64 %t912, i1 false)
  %t914 = insertvalue { i64, ptr } undef, i64 %t910, 0
  %t915 = insertvalue { i64, ptr } %t914, ptr %t913, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s48, ptr %l22, { i64, ptr } %t915)
  br label %bb190
bb190:
  call void @__olang_scope_close(ptr %s48)
  br label %bb191
bb191:
  %t918 = load i64, ptr %l35, !tbaa !24
  %t920 = add i64 %t918, 1
  store i64 %t920, ptr %l35, !tbaa !24
  br label %bb184
bb192:
  call void @__olang_scope_close(ptr %s46)
  br label %bb193
bb193:
  %t922 = load ptr, ptr %l0, !tbaa !29
  %t924 = getelementptr %"compiler/bindgen:gen", ptr %t922, i32 0, i32 14
  %t926 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t924)
  store i64 %t926, ptr %l365
  br label %bb194
bb194:
  %t927 = load i64, ptr %l365, !tbaa !24
  %t928 = icmp sgt i64 %t927, 0
  br i1 %t928, label %bb195, label %bb196
bb195:
  store %olang.scope zeroinitializer, ptr %s51
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s51, ptr %l22, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d163, i32 0, i32 1) })
  br label %bb197
bb196:
  br label %bb207
bb197:
  %t931 = load ptr, ptr %l0, !tbaa !29
  %t933 = getelementptr %"compiler/bindgen:gen", ptr %t931, i32 0, i32 14
  store ptr %t933, ptr %l37, !tbaa !29
  store i64 0, ptr %l38, !tbaa !24
  br label %bb198
bb198:
  store %olang.scope zeroinitializer, ptr %s53
  %t935 = load i64, ptr %l38, !tbaa !24
  store i64 %t935, ptr %l370, !tbaa !24
  %t936 = load ptr, ptr %l37, !tbaa !29
  %t938 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t936)
  store i64 %t938, ptr %l372
  br label %bb199
bb199:
  %t939 = load i64, ptr %l370, !tbaa !24
  %t940 = load i64, ptr %l372, !tbaa !24
  %t941 = icmp slt i64 %t939, %t940
  %t943 = xor i1 %t941, true
  br i1 %t943, label %bb200, label %bb201
bb200:
  call void @__olang_scope_close(ptr %s53)
  br label %bb206
bb201:
  br label %bb202
bb202:
  %t945 = load ptr, ptr %l37, !tbaa !29
  %t946 = load i64, ptr %l38, !tbaa !24
  %t949 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t945, i64 %t946)
  store { i64, ptr } %t949, ptr %l377
  br label %bb203
bb203:
  %t950 = load { i64, ptr }, ptr %l377, !tbaa !27
  %t953 = extractvalue { i64, ptr } %t950, 1
  %t954 = extractvalue { i64, ptr } %t950, 0
  %t955 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t956 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t957 = add i64 %t954, %t956
  %t958 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t957)
  call void @olang_textcopy(ptr %t958, ptr %t953, i64 %t954)
  %t959 = getelementptr i8, ptr %t958, i64 %t954
  call void @olang_textcopy(ptr %t959, ptr %t955, i64 %t956)
  %t960 = insertvalue { i64, ptr } undef, i64 %t957, 0
  %t961 = insertvalue { i64, ptr } %t960, ptr %t958, 1
  %t963 = extractvalue { i64, ptr } %t961, 0
  %t964 = extractvalue { i64, ptr } %t961, 1
  %t965 = mul i64 %t963, 1
  %t966 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t965)
  call void @llvm.memcpy.p0.p0.i64(ptr %t966, ptr %t964, i64 %t965, i1 false)
  %t967 = insertvalue { i64, ptr } undef, i64 %t963, 0
  %t968 = insertvalue { i64, ptr } %t967, ptr %t966, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s53, ptr %l22, { i64, ptr } %t968)
  br label %bb204
bb204:
  call void @__olang_scope_close(ptr %s53)
  br label %bb205
bb205:
  %t971 = load i64, ptr %l38, !tbaa !24
  %t973 = add i64 %t971, 1
  store i64 %t973, ptr %l38, !tbaa !24
  br label %bb198
bb206:
  call void @__olang_scope_close(ptr %s51)
  br label %bb207
bb207:
  %t975 = load ptr, ptr %l0, !tbaa !29
  %t977 = getelementptr %"compiler/bindgen:gen", ptr %t975, i32 0, i32 18
  %t979 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t977)
  store i64 %t979, ptr %l386
  br label %bb208
bb208:
  %t980 = load i64, ptr %l386, !tbaa !24
  %t981 = icmp sgt i64 %t980, 0
  br i1 %t981, label %bb209, label %bb210
bb209:
  store %olang.scope zeroinitializer, ptr %s56
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s56, ptr %l22, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d165, i32 0, i32 1) })
  br label %bb211
bb210:
  br label %bb221
bb211:
  %t984 = load ptr, ptr %l0, !tbaa !29
  %t986 = getelementptr %"compiler/bindgen:gen", ptr %t984, i32 0, i32 18
  store ptr %t986, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb212
bb212:
  store %olang.scope zeroinitializer, ptr %s58
  %t988 = load i64, ptr %l41, !tbaa !24
  store i64 %t988, ptr %l391, !tbaa !24
  %t989 = load ptr, ptr %l40, !tbaa !29
  %t991 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t989)
  store i64 %t991, ptr %l393
  br label %bb213
bb213:
  %t992 = load i64, ptr %l391, !tbaa !24
  %t993 = load i64, ptr %l393, !tbaa !24
  %t994 = icmp slt i64 %t992, %t993
  %t996 = xor i1 %t994, true
  br i1 %t996, label %bb214, label %bb215
bb214:
  call void @__olang_scope_close(ptr %s58)
  br label %bb220
bb215:
  br label %bb216
bb216:
  %t998 = load ptr, ptr %l40, !tbaa !29
  %t999 = load i64, ptr %l41, !tbaa !24
  %t1002 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t998, i64 %t999)
  store { i64, ptr } %t1002, ptr %l398
  br label %bb217
bb217:
  %t1003 = load { i64, ptr }, ptr %l398, !tbaa !27
  %t1005 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t1006 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t1008 = extractvalue { i64, ptr } %t1003, 1
  %t1009 = extractvalue { i64, ptr } %t1003, 0
  %t1010 = add i64 %t1006, %t1009
  %t1011 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t1012 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t1013 = add i64 %t1010, %t1012
  %t1014 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1013)
  call void @olang_textcopy(ptr %t1014, ptr %t1005, i64 %t1006)
  %t1015 = getelementptr i8, ptr %t1014, i64 %t1006
  call void @olang_textcopy(ptr %t1015, ptr %t1008, i64 %t1009)
  %t1016 = getelementptr i8, ptr %t1015, i64 %t1009
  call void @olang_textcopy(ptr %t1016, ptr %t1011, i64 %t1012)
  %t1017 = insertvalue { i64, ptr } undef, i64 %t1013, 0
  %t1018 = insertvalue { i64, ptr } %t1017, ptr %t1014, 1
  %t1020 = extractvalue { i64, ptr } %t1018, 0
  %t1021 = extractvalue { i64, ptr } %t1018, 1
  %t1022 = mul i64 %t1020, 1
  %t1023 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1022)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1023, ptr %t1021, i64 %t1022, i1 false)
  %t1024 = insertvalue { i64, ptr } undef, i64 %t1020, 0
  %t1025 = insertvalue { i64, ptr } %t1024, ptr %t1023, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s58, ptr %l22, { i64, ptr } %t1025)
  br label %bb218
bb218:
  call void @__olang_scope_close(ptr %s58)
  br label %bb219
bb219:
  %t1028 = load i64, ptr %l41, !tbaa !24
  %t1030 = add i64 %t1028, 1
  store i64 %t1030, ptr %l41, !tbaa !24
  br label %bb212
bb220:
  call void @__olang_scope_close(ptr %s56)
  br label %bb221
bb221:
  %t1033 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l22)
  store { i64, ptr } %t1033, ptr %l406
  br label %bb222
bb222:
  call void @__olang_scope_close(ptr %s0)
  %t1034 = load { i64, ptr }, ptr %l406, !tbaa !27
  store { i64, ptr } %t1034, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2efirstError(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:LineIter"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/text:LineIter"
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %t1)
  store %"std/prelude/text:LineIter" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"std/prelude/text:LineIter", ptr %l5
  store %"std/prelude/text:LineIter" %t4, ptr %l1
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l1)
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
  br label %bb6
bb4:
  %t12 = load i32, ptr %l9, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb6:
  %t16 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t16, ptr %l2, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s2, { i64, ptr } %t17, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) })
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l15
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb8, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l14
  br label %bb7
bb7:
  %t24 = load i64, ptr %l14, !tbaa !24
  store i64 %t24, ptr %l12, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb10
bb10:
  %t25 = load i64, ptr %l12, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t31, 7
  store i64 %t33, ptr %l20, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t34, 0
  store i64 %t37, ptr %l23, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l24, !tbaa !24
  %t40 = load i64, ptr %l20, !tbaa !24
  %t41 = icmp sge i64 %t40, 0
  br i1 %t41, label %bb13, label %bb14
bb12:
  br label %bb19
bb13:
  %t43 = load i64, ptr %l20, !tbaa !24
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b4f4b1f3947eb18f_4b11d328df759133)
  unreachable
bb15:
  %t47 = load i64, ptr %l23, !tbaa !24
  %t48 = load i64, ptr %l24, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_b4f4b1f3947eb18f_4b11d328df759133)
  unreachable
bb17:
  %t51 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l20, !tbaa !24
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = getelementptr i8, ptr %t52, i64 %t53
  %t56 = sub i64 %t54, %t53
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t60, i64 %t61)
  %t63 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_b4f4b1f3947eb18f_4b11d328df759133)
  unreachable
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  br label %bb2
bb21:
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t68 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t66)
  store { i64, ptr } %t68, ptr %l31
  br label %bb22
bb22:
  %t69 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t70, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fbindgen_2eflag(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v1, ptr %v0, ptr %a0, { i64, ptr } %a1)
  store ptr %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l6, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l2, !tbaa !29
  store ptr %t12, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l10, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 8}
  %t19 = icmp eq i64 %t17, 1
  store i1 %t19, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l11, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { i1 }, ptr %t23, i32 0, i32 0
  %t25 = load i1, ptr %t24
  store i1 %t25, ptr %l3, !tbaa !21
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t27 = load i1, ptr %l3, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_c89c4e9e31b29b9e_9d77991e4d65189a)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fbindgen_2epreludeName(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue { i64, ptr } undef, i64 19, 0
  %t5 = insertvalue { i64, ptr } %t4, ptr @G_2ecompiler_2fbindgen_2epreludeNames, 1
  %t7 = load ptr, ptr @__olang_prog_scope
  %t10 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t7, ptr %v0, { i64, ptr } %t5, { i64, ptr } %a0)
  store i1 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i1, ptr %l6, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fbindgen_2evoidRef(ptr %v0, i1 %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a0, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d169, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t3, ptr %l2, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d170, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t5, ptr %l2, !tbaa !27
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l8, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/bindgen:cFunc" @compiler_2fbindgen_3acFunc_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4, { i64, ptr } %a5) #0 {
entry:
  %rv = alloca %"compiler/bindgen:cFunc"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/bindgen:cFunc" undef, { i64, ptr } %a0, 0
  %t16 = insertvalue %"compiler/bindgen:cFunc" %t14, { i64, ptr } %a1, 1
  %t18 = insertvalue %"compiler/bindgen:cFunc" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/bindgen:cFunc" %t18, { i64, ptr } %a3, 3
  %t22 = insertvalue %"compiler/bindgen:cFunc" %t20, i1 %a4, 4
  %t24 = insertvalue %"compiler/bindgen:cFunc" %t22, { i64, ptr } %a5, 5
  store %"compiler/bindgen:cFunc" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cFunc", ptr %rv
  ret %"compiler/bindgen:cFunc" %rr
}

define dso_local %"compiler/bindgen:cMacro" @compiler_2fbindgen_3acMacro_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, i1 %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %rv = alloca %"compiler/bindgen:cMacro"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/bindgen:cMacro" undef, { i64, ptr } %a0, 0
  %t14 = insertvalue %"compiler/bindgen:cMacro" %t12, i1 %a1, 1
  %t16 = insertvalue %"compiler/bindgen:cMacro" %t14, { i64, ptr } %a2, 2
  %t18 = insertvalue %"compiler/bindgen:cMacro" %t16, { i64, ptr } %a3, 3
  %t20 = insertvalue %"compiler/bindgen:cMacro" %t18, i1 %a4, 4
  %t22 = insertvalue %"compiler/bindgen:cMacro" %t20, i1 false, 5
  store %"compiler/bindgen:cMacro" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cMacro", ptr %rv
  ret %"compiler/bindgen:cMacro" %rr
}

define dso_local %"compiler/bindgen:cparse" @compiler_2fbindgen_3acparse_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/bindgen:cparse"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/bindgen:cparse" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/bindgen:cparse" %t6, { i64, ptr } %a1, 1
  %t10 = insertvalue %"compiler/bindgen:cparse" %t8, i64 0, 2
  store %"compiler/bindgen:cparse" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:cparse", ptr %rv
  ret %"compiler/bindgen:cparse" %rr
}

define dso_local %"compiler/bindgen:ctp" @compiler_2fbindgen_3actp_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca %"compiler/bindgen:ctp"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue %"compiler/bindgen:ctp" undef, { i64, ptr } %a0, 0
  %t6 = insertvalue %"compiler/bindgen:ctp" %t4, i64 0, 1
  store %"compiler/bindgen:ctp" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:ctp", ptr %rv
  ret %"compiler/bindgen:ctp" %rr
}

define dso_local %"compiler/bindgen:ctype" @compiler_2fbindgen_3actype_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1, i64 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"compiler/bindgen:ctype"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/bindgen:ctype" undef, i32 %a0, 0
  %t14 = insertvalue %"compiler/bindgen:ctype" %t12, { i64, ptr } %a1, 1
  %t16 = insertvalue %"compiler/bindgen:ctype" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/bindgen:ctype" %t16, i1 %a3, 3
  %t20 = insertvalue %"compiler/bindgen:ctype" %t18, i64 %a4, 4
  %t22 = insertvalue %"compiler/bindgen:ctype" %t20, i64 0, 5
  store %"compiler/bindgen:ctype" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/bindgen:ctype", ptr %rv
  ret %"compiler/bindgen:ctype" %rr
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
declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [4 x { i64, ptr }] }> <{ i64 0, [4 x { i64, ptr }] [{ i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d172, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d173, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d174, i32 0, i32 1) }] }>, align 8
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
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"<<=" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c">>=" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d4 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<<" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">>" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<=" }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">=" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"==" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!=" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"||" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"##" }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"->" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"++" }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"--" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"||" }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"&&" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"^" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"==" }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"!=" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<=" }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">=" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"<<" }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">>" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"*" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
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
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acx_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d38 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(1 if " }>, align 8
@.d39 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" else 0)" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"its body is empty where an expression is wanted" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d44 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a ( with no )" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d45 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"it holds text where an expression is wanted" }>, align 8
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
define internal i1 @olang_lambda_46(ptr %env, ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %vc0, { i64, ptr } %a0, { i64, ptr } %cv0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"it calls " }>, align 8
@.d55 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c", which is no function of numbers here" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"," }>, align 8
@.d59 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"its call of " }>, align 8
@.d60 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" is not read" }>, align 8
@.d61 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d63 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d64 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"it names " }>, align 8
@.d65 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", which has no value here" }>, align 8
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [11 x { i64, ptr }] }> <{ i64 0, [11 x { i64, ptr }] [{ i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d175, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d176, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d177, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d178, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d179, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d180, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d181, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d182, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d183, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d184, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d185, i32 0, i32 1) }] }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d73 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d74 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d75 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"-fsyntax-only" }>, align 8
@.d76 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d77 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"-ferror-limit=0" }>, align 8
@.d78 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-Xclang" }>, align 8
@.d79 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"-ast-dump=json" }>, align 8
@.d80 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"clang could not be run" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3agen_2e25 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
declare void @__olang_errpay_pop()
@.d81 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"clang's tree could not be read" }>, align 8
@.d82 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d84 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a struct held in place that is not plain data (X11)" }>, align 8
@.d85 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"CStr?&" }>, align 8
@.d86 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d87 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"CVoid?&" }>, align 8
@.d88 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a field of this type, which has no olang form" }>, align 8
@.d89 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d90 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d92 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"it takes a variable number of arguments" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
@.d93 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d94 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d95 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"its text is no olang text literal" }>, align 8
@.d96 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" String = " }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3acparse_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fbindgen_3acparse_2e1 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"f" }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d99 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"f" }>, align 8
@.d100 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" F32 = " }>, align 8
@.d101 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" F64 = " }>, align 8
@.d102 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"its body is no constant" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fbindgen_3arecord(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/bindgen:record"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 216, i1 false)
  %t2 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 4
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 5
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 16
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/bindgen:record", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 216, i1 false)
  br label %ret
ret:
  ret void
}

@.d103 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d104 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3arecord_2e0 = weak hidden constant i1 false
@.d105 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d106 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c": a macro - " }>, align 8
@.d107 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d108 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d109 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d110 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d111 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"volatile" }>, align 8
@.d112 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"restrict" }>, align 8
@.d113 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"__restrict" }>, align 8
@.d114 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"signed" }>, align 8
@.d115 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"unsigned" }>, align 8
@.d116 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"long" }>, align 8
@.d117 = private constant <{ i64, [11 x { i64, ptr }] }> <{ i64 0, [11 x { i64, ptr }] [{ i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d179, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d175, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d180, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d181, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d182, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d186, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d183, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d187, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d188, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d189, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d190, i32 0, i32 1) }] }>, align 8
@.d118 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"int" }>, align 8
@.d119 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"struct" }>, align 8
@.d120 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d121 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"union" }>, align 8
@.d122 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@.d123 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d124 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d125 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d126 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@.d127 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d128 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d129 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fbindgen_3actype_2e1 = weak hidden constant i1 false
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d131 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d132 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"', a " }>, align 8
@.d133 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c" with no name of its own, or the C compiler's" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d136 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d137 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" with no name" }>, align 8
@.d138 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d139 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d140 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d142 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"', a type no declaration names" }>, align 8
@.d143 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c": a name olang cannot declare (a keyword, or beginning with '_')" }>, align 8
@.d144 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c": a name every olang module has already" }>, align 8
@.d145 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c": static or inline in the header - no symbol to link" }>, align 8
@.d146 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c": static in its file - C's own to that file" }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d148 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d149 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d150 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d151 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d152 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d153 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"# symbol " }>, align 8
@.d154 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d155 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d156 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d157 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"    type " }>, align 8
@.d158 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d159 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"\0Aextern {\0A" }>, align 8
@.d160 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}\0A" }>, align 8
@.d161 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d162 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d163 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d164 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d165 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"\0A# not declared:\0A" }>, align 8
@.d166 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"#   " }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d168 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"error: " }>, align 8
@.d169 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"CVoid?&" }>, align 8
@.d170 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"mut CVoid?&" }>, align 8
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@.d171 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d172 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d173 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"U" }>, align 8
@.d174 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"u8" }>, align 8
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
@.d175 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"int" }>, align 8
@.d176 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"unsigned" }>, align 8
@.d177 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"signed" }>, align 8
@.d178 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"long" }>, align 8
@.d179 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"short" }>, align 8
@.d180 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
@.d181 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d182 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"double" }>, align 8
@.d183 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_Bool" }>, align 8
@.d184 = private unnamed_addr constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"const" }>, align 8
@.d185 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"volatile" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 16
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 8
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

@.d186 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d187 = private unnamed_addr constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"bool" }>, align 8
@.d188 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_Float16" }>, align 8
@.d189 = private unnamed_addr constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"__bf16" }>, align 8
@.d190 = private unnamed_addr constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__int128" }>, align 8
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
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_4691cb288a833ba5_dfaa9dffbec0c2d9 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8de001e7a64c0b48_1a9d06562d43232c = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9f24fc1b10bf4163_f387df93e06eee97 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_760c7c7ac1a62521_16c6052ca99c0395 = external constant [0 x i8]
@G_2ecompiler_2fbindgen_2eKVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKType = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/bindgen:cx" @compiler_2fbindgen_2ecx_2elit(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
@G_2ecompiler_2fbindgen_2eKInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fbindgen_2eKBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eskip(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, %"compiler/bindgen:cx" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ecNumber(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @compiler_2fbindgen_2echarValue(ptr %v0, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eFindIndex_3cstd_2f_H0cdaf28864c9da4990596b1986b376a0(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"compiler/bindgen:cx" @compiler_2fbindgen_3acx_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fbindgen_2ectokens(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eparseType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/bindgen:ctype" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3actype_3e_2eAt_3ccompiler_2fbindgen_3actype_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/os:Output" } @compiler_2fbindgen_2eclangSays(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eholdable(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ename(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eisByte(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_582986fcdf40d11c_2a39a940a03de888 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eLen_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %a0)
declare %"compiler/bindgen:cMacro" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acMacro_3e_2eAt_3ccompiler_2fbindgen_3acMacro_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fbindgen_2eusable(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2eexpand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i64 @compiler_2fbindgen_2ebodyKind(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2emacroFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2fbindgen_2etextLiteral(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_588cbeac7c6acbe1_e04f9e86f435a7f5 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToLower(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRefMu_Hc21bcd245b67ffb6ee3e145838fcf2cf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eAt_3ccompiler_2fbindgen_3arecord_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2fbindgen_3arecord_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2ePush_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eLen_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_3dee357bb9e78e13_5fc101397bdf658f = external constant [0 x i8]
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enode(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, i1 %a4, i64 %a5)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enumType(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3)
declare i64 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2edeclarator(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3, i64 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eLen_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %a0)
declare %"compiler/bindgen:cFunc" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3acFunc_3e_2eAt_3ccompiler_2fbindgen_3acFunc_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2enoReturnOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2enameRecords(ptr %v0, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2efunction(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewrapper(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbindgen_3arecord_3e_2eRef_3ccompiler_2fbindgen_3arecord_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2ewantRecord(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fbindgen_2ecompiler_2fbindgen_3agen_2estructDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_b4f4b1f3947eb18f_4b11d328df759133 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fbindgen_2emember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_c89c4e9e31b29b9e_9d77991e4d65189a = external constant [0 x i8]
@G_2ecompiler_2fbindgen_2epreludeNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>

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
